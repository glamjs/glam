#pragma glslify: Fog = require('./struct.glsl')

#ifdef FOG
	float calculateFog(
		const float cameraDistance,
		const float near,
		const float far
	) {
		return 1.0 - clamp((far - cameraDistance) / (far - near), 0.0, 1.0);
	}

	void applyFog(
		inout vec4 fragment,
		Fog fog,
		cameraDistance
	) {
		fragment.rgb = mix(
			fragment.rgb,
			fog.color,
			calculateFog( cameraDistance, fog.near, fog.far)
		);
	}
#else
	void applyFog(inout vec4 fragment, Fog fog, cameraDistance ) { }
#endif

#pragma glslify: export(applyFog)