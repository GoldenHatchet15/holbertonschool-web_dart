int fact(int f){
    if(f <= 0 || f ==1){
        return 1;
    }
    return f * fact(f - 1);
}