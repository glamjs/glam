
#if defined(DIRECTIONAL_LIGHT_COUNT) && DIRECTIONAL_LIGHT_COUNT > 0
	struct DirectionalLight {
		vec3 direction;
		vec3 color;
	};
	uniform DirectionalLight uDirectionalLights[ DIRECTIONAL_LIGHT_COUNT ];
#endif