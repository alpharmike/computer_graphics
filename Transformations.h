//
// Created by Sandman on 12/24/2020.
//

#ifndef TRANSFORMATIONS_TRANSFORMATIONS_H
#define TRANSFORMATIONS_TRANSFORMATIONS_H

#include "glm/glm.hpp"
#include "glm/gtc/type_ptr.hpp"

using namespace glm;

vec4 rotateAroundPoint(vec4 vertex, vec4 rotateRefPoint, float rotationAngle);

vec4 scaleAlongVector(vec4 vertex, vec3 scaleVector, vec3 scaleRefVector);

vec4 applyProjection(vec4 vertex, float far, float near, float fov, float aspectRatio, vec3 origin, vec3 lookAtVertex, vec3 upVector);

vec4 viewPortTransformation(vec4 vertex, int left, int bottom, int width, int height);

void testQuestions();

#endif //TRANSFORMATIONS_TRANSFORMATIONS_H
