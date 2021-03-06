#include "Matrix3.h"

#include <stdexcept>
#include <cmath>

#include "../Util/MathUtil.h"

namespace metalwalrus
{
	const Matrix3 Matrix3::IDENTITY = Matrix3();
	
	Matrix3::Matrix3()
	{
		this->identity();
	}

	Matrix3::Matrix3(float values[MATRIX_VALS])
	{
		this->set(values);
	}

	// copy constructor
	Matrix3::Matrix3(const Matrix3& other)
	{
		this->val = other.val;
	}

	// copy assignment operator
	Matrix3 Matrix3::operator=(const Matrix3& other)
	{
		if (this != &other) 
		{
			this->val = other.val;
		}

		return *this;
	}

	float Matrix3::operator[](unsigned i) const
	{
		if (i >= MATRIX_VALS)
			throw std::runtime_error("Cannot access matrix element past length!");
		return val[i];
	}

	float& Matrix3::operator[](unsigned i)
	{
		if (i >= MATRIX_VALS)
			throw std::runtime_error("Cannot access matrix element past length!");
		return val[i];
	}

	Matrix3 Matrix3::operator+(const Matrix3 & other) const
	{
		float newVals[MATRIX_VALS];
		newVals[M00] = val[M00] + other[M00];
		newVals[M01] = val[M01] + other[M01];
		newVals[M02] = val[M02] + other[M02];
		newVals[M10] = val[M10] + other[M10];
		newVals[M11] = val[M11] + other[M11];
		newVals[M12] = val[M12] + other[M12];
		newVals[M20] = val[M20] + other[M20];
		newVals[M21] = val[M21] + other[M21];
		newVals[M22] = val[M22] + other[M22];
		return Matrix3(newVals);
	}

	Matrix3 Matrix3::operator-() const
	{
		float newVals[MATRIX_VALS];
		newVals[M00] = -val[M00];
		newVals[M01] = -val[M01];
		newVals[M02] = -val[M02];
		newVals[M10] = -val[M10];
		newVals[M11] = -val[M11];
		newVals[M12] = -val[M12];
		newVals[M20] = -val[M20];
		newVals[M21] = -val[M21];
		newVals[M22] = -val[M22];
		return Matrix3(newVals);
	}

	Matrix3 Matrix3::operator-(const Matrix3 & other) const
	{
		return *this + -other;
	}

	Matrix3 Matrix3::operator*(const Matrix3 & other) const
	{
		float newVals[MATRIX_VALS];
		newVals[M00] = val[M00] * other[M00] + val[M01] * other[M10] + val[M02] * other[M20];
		newVals[M01] = val[M00] * other[M01] + val[M01] * other[M11] + val[M02] * other[M21];
		newVals[M02] = val[M00] * other[M02] + val[M01] * other[M12] + val[M02] * other[M22];
		newVals[M10] = val[M10] * other[M00] + val[M11] * other[M10] + val[M12] * other[M20];
		newVals[M11] = val[M10] * other[M01] + val[M11] * other[M11] + val[M12] * other[M21];
		newVals[M12] = val[M10] * other[M02] + val[M11] * other[M12] + val[M12] * other[M22];
		newVals[M20] = val[M20] * other[M00] + val[M21] * other[M10] + val[M22] * other[M20];
		newVals[M21] = val[M20] * other[M01] + val[M21] * other[M11] + val[M22] * other[M21];
		newVals[M22] = val[M20] * other[M02] + val[M21] * other[M12] + val[M22] * other[M22];
		return Matrix3(newVals);
	}

	Matrix3 Matrix3::operator*(const float scalar) const
	{
		float newVals[MATRIX_VALS];
		newVals[M00] = val[M00] * scalar;
		newVals[M01] = val[M01] * scalar;
		newVals[M02] = val[M02] * scalar;
		newVals[M10] = val[M10] * scalar;
		newVals[M11] = val[M11] * scalar;
		newVals[M12] = val[M12] * scalar;
		newVals[M20] = val[M20] * scalar;
		newVals[M21] = val[M21] * scalar;
		newVals[M22] = val[M22] * scalar;
		return Matrix3(newVals);
	}

	void Matrix3::set(float values[MATRIX_VALS])
	{
		this->val.assign(values, values + MATRIX_VALS);
	}

	Matrix3 *Matrix3::identity()
	{
		float newVals[MATRIX_VALS] = {};
		newVals[M00] = 1;
		newVals[M11] = 1;
		newVals[M22] = 1;
		val.assign(newVals, newVals+MATRIX_VALS);
		return this;
	}

	float Matrix3::det() const
	{
		return val[M00] * (val[M11] * val[M22] - val[M21] * val[M12])
			- val[M01] * (val[M10] * val[M22] - val[M12] * val[M20])
			+ val[M02] * (val[M10] * val[M21] - val[M11] * val[M20]);
	}

	Matrix3 Matrix3::inv() const
	{
		float det = this->det();
		if (det == 0)
			throw std::runtime_error("Cannot invert a singular matrix!");

		return (1 / det) * this->adj();
	}

	Matrix3 Matrix3::trans() const
	{
		float newVals[MATRIX_VALS];
		newVals[M00] = val[M00];
		newVals[M01] = val[M10];
		newVals[M02] = val[M20];
		newVals[M10] = val[M01];
		newVals[M11] = val[M11];
		newVals[M12] = val[M21];
		newVals[M20] = val[M02];
		newVals[M21] = val[M12];
		newVals[M22] = val[M22];
		return Matrix3(newVals);
	}

	Matrix3 Matrix3::cofactor() const
	{
		float cofactors[MATRIX_VALS];
		cofactors[M00] = val[M11] * val[M22] - val[M12] * val[M21];
		cofactors[M01] = val[M10] * val[M22] - val[M12] * val[M20];
		cofactors[M02] = val[M10] * val[M21] - val[M11] * val[M20];
		cofactors[M10] = val[M01] * val[M22] - val[M02] * val[M21];
		cofactors[M11] = val[M00] * val[M22] - val[M02] * val[M20];
		cofactors[M12] = val[M00] * val[M21] - val[M01] * val[M20];
		cofactors[M20] = val[M01] * val[M12] - val[M02] * val[M11];
		cofactors[M21] = val[M00] * val[M12] - val[M02] * val[M10];
		cofactors[M22] = val[M00] * val[M11] - val[M01] * val[M10];
		return Matrix3(cofactors);
	}

	Matrix3 Matrix3::adj() const
	{
		return this->cofactor().trans();
	}

	// postmultiplies this matrix with a rotation matrix
	Matrix3& Matrix3::rotate(float degrees)
	{
		float rad = utilities::MathUtil::degToRad(degrees);
		return rotateRad(rad);
	}

	// postmultiplies this matrix with a rotation matrix
	Matrix3& Matrix3::rotateRad(float radians)
	{
		Matrix3 rotMat = Matrix3();
		float cosine = cosf(radians);
		float sine = sinf(radians);
		rotMat[M00] = cosine;
		rotMat[M01] = -sine;
		rotMat[M10] = sine;
		rotMat[M11] = cosine;

		Matrix3 rotated = *this * rotMat;
		this->set(&rotated.val[0]);
		return *this;
	}

	Matrix3& Matrix3::scale(float x, float y)
	{
		return scale(Vector2(x, y));
	}

	Matrix3& Matrix3::scale(Vector2 scale)
	{
		Matrix3 scaleMat = Matrix3();
		scaleMat[M00] = scale.x;
		scaleMat[M11] = scale.y;

		Matrix3 scaled = *this * scaleMat;
		this->set(&scaled.val[0]);
		return *this;
	}

	Matrix3& Matrix3::translate(float x, float y)
	{
		return translate(Vector2(x, y));
	}

	Matrix3& Matrix3::translate(Vector2& translate)
	{
		Matrix3 transMat = Matrix3();
		transMat[M02] = translate.x;
		transMat[M12] = translate.y;

		Matrix3 translated = *this * transMat;
		this->set(&translated.val[0]);
		return *this;
	}

	Matrix3 Matrix3::translation(float x, float y)
	{
		Matrix3 transMat = Matrix3();
		transMat[M02] = x;
		transMat[M12] = y;
		return transMat;
	}

	Matrix3 Matrix3::translation(Vector2 v)
	{
		return translation(v.x, v.y);
	}

	std::vector<float> Matrix3::glMatrix() const
	{
            std::vector<float> glMat(16);
            glMat[0] = val[M00];
            glMat[1] = val[M10];
            glMat[2] = 0;
            glMat[3] = val[M20];
            glMat[4] = val[M01];
            glMat[5] = val[M11];
            glMat[6] = 0;
            glMat[7] = val[M21];
            glMat[8] = 0;
            glMat[9] = 0;
            glMat[10] = 1;
            glMat[11] = 0;
            glMat[12] = val[M02];
            glMat[13] = val[M12];
            glMat[14] = 0;
            glMat[15] = val[M22];
            return glMat;
	}

	Matrix3 operator*(const float scalar, const Matrix3& other)
	{
		return other * scalar;
	}
}