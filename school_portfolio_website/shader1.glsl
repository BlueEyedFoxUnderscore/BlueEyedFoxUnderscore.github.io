


struct particle{
    vec2 pos;
    vec2 vel;
};

bool renderPoint(vec2 pos, vec2 renderPos, float rad){
    if(distance(pos, renderPos) < rad){
        return true;
    }
    return false;
}

void iterParticle(particle ptcl){
    ptcl.pos += ptcl.vel;
}


void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    particle[5] particleList;
    
    for (int index=0;index<5; index++) {
        particle p = particleList[index];
        p.vel = vec2(0, 0);
        p.pos = vec2(rand(0, iResolution.x), rand(0, iResolution.y));
    }
    
    for(particle p: particleList{
        iterParticle(p);
        fragColor=vec4(1, 1, 1, 1);
        if(renderPoint(p.pos, fragCoord, 10){
            fragColor=vec4(0, 0, 0, 1);
        }
    }
    
    
}


