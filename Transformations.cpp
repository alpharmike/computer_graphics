#include <glm/gtx/string_cast.hpp>
#include "Transformations.h"
#include <iostream>
#include <vector>

using namespace std;

vec4 rotateAroundPoint(vec4 vertex, vec4 rotateRefPoint, float rotationAngle) {
    float radAngle = rotationAngle * glm::pi<float>() / 180;

    vec3 refPoint = vec3(rotateRefPoint[0], rotateRefPoint[1], rotateRefPoint[2]);
    mat4x4 translationMatrix = translate(mat4(1.0), refPoint);

    mat4x4 rotateMatrix = rotate(mat4(1.0), radAngle, vec3(0, 0, 1));

    vec3 transInverse = vec3(-rotateRefPoint[0], -rotateRefPoint[1], -rotateRefPoint[2]);
    mat4x4 translationMatrixInverse = translate(mat4(1.0), transInverse);

    return translationMatrix * rotateMatrix * translationMatrixInverse * vertex;
}

vec4 scaleAlongVector(vec4 vertex, vec3 scaleVector, vec3 scaleRefVector) {
    float theta = acos(scaleRefVector[2] /
                       sqrt(pow(scaleRefVector[0], 2) + pow(scaleRefVector[1], 2) + pow(scaleRefVector[2], 2)));

    mat4x4 rotationMatrix = rotate(mat4(1.0), theta, vec3(0, 0, 1));

    mat4x4 scaleMatrix = scale(mat4(1.0), vec3(scaleVector[0], scaleVector[1], scaleVector[2]));

    mat4x4 rotateInverse = inverse(rotate(mat4(1.0), theta, vec3(0, 0, 1)));

    mat4x4 finalMatrix = rotationMatrix * scaleMatrix * rotateInverse;

    return finalMatrix * vertex;

}

vec4 applyProjection(vec4 vertex, float far, float near, float fov, float aspectRatio, vec3 origin, vec3 lookAtVertex,
                     vec3 upVector) {
    float fovAngleRad = fov * glm::pi<float>() / 360;
    float f = 1 / tan(fovAngleRad);

    mat4x4 A = mat4x4(vec4(f / aspectRatio, 0, 0, 0),
                      vec4(0, f, 0, 0),
                      vec4(0, 0, (far + near) / (near - far), -1),
                      vec4(0, 0, (2 * far * near) / (near - far), 0)
    );


    vec3 d = lookAtVertex - origin;
    vec3 az = normalize(d);

    vec3 vPrime = normalize(upVector);

    vec3 ax = cross(vPrime, az);

    vec3 ay = cross(az, ax);

    mat3x3 Ra = mat3x3(ax, ay, az);

    mat3x3 RaTranspose = transpose(Ra);

    vec3 RaTransC = -RaTranspose * origin;

    mat4x4 tInv = mat4x4(vec4(RaTranspose[0][0], RaTranspose[0][1], RaTranspose[0][2], 0),
                         vec4(RaTranspose[1][0], RaTranspose[1][1], RaTranspose[1][2], 0),
                         vec4(RaTranspose[2][0], RaTranspose[2][1], RaTranspose[2][2], 0),
                         vec4(RaTransC[0], RaTransC[1], RaTransC[2], 1)
    );


    return A * tInv * vertex;

}

vec4 viewPortTransformation(vec4 vertex, int left, int bottom, int width, int height) {
    mat4x4 finalMatrix = mat4x4(vec4(width / 2, 0, 0, 0),
                                vec4(0, height / 2, 0, 0),
                                vec4(0, 0, 0.5, 0),
                                vec4((left + left + width) / 2, (bottom + bottom + height) / 2, 0.5, 1)

    );


    return finalMatrix * vertex;
}

void testQuestions() {
    vec4 p1 = vec4(0, 0, -1, 1);
    vec4 p2 = vec4(0, 1, 0, 1);
    vec4 p3 = vec4(0, 0, 1, 1);
    vec4 p4 = vec4(1, 1, 1, 1);
    vec4 p5 = vec4(1, 0, 0, 1);

    vector<vec4> vertices;
    vertices.push_back(p1);
    vertices.push_back(p2);
    vertices.push_back(p3);
    vertices.push_back(p4);
    vertices.push_back(p5);

    // for Question 1.1
    cout << "Point Rotation Around P1 = (2, 2, 2), With Angle 45 Degrees:" << endl;
    vec4 refPoint = vec4(2, 2, 2, 1);
    for (vec4 vertex: vertices) {
        cout << glm::to_string(rotateAroundPoint(vertex, refPoint, 45)) << endl;
    }

    // for Question 1.2
    cout << "Scaling Points With Respect to Vector V1 = (1, 2, 3), With Scale Value = 3 for All Directions:" << endl;
    for (glm::vec4 vertex : vertices) {
        cout << glm::to_string(scaleAlongVector(vertex, vec3(3, 3, 3), vec3(1, 2, 3))) << endl;
    }

    // for Question 1.3
    cout << "Applying Projections, With Camera at P2 = (5, 5, -5), UpVector Along Y Axis:" << endl;
    for (glm::vec4 vertex : vertices) {
        cout << glm::to_string(
                applyProjection(vertex, 1000, 0.1, 60.0, 2.0, vec3(5, 5, -5), vec3(0, 0, 0), vec3(0, 1, 0))) << endl;
    }

    // for Question 1.4
    cout << "Viewport Transformation, With Origin of the Monitor at (0, 0):" << endl;
    for (glm::vec4 vertex: vertices) {
        cout << glm::to_string(viewPortTransformation(vertex, 0, 0, 800, 600)) << endl;
    }
}