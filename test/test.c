// complexity: 1
int c1_direct( int x ) {
    return x + 1;
}

int c1_redirect( int x ) {
	int const result = add( x, 1 );
	return result;
}

// complexity: 2
int c2_min( int x, int y ) {
    return y < x ? y : x;
}

// complexity: 3
int c3_min( int x, int y ) {
    if( y < x ) {
        return y;
    }
    else {
        return x;
    }
}

// complexity: 3
int c4_bothtrue( int x, int y ) {
    return (x && y) ? 1 : 0;
}

// BothNonZero: Approach 1, Complexity: 4
int bothNonZero_1( int x, int y ) {
	if( x ) {
		if( y ) {
			return 1;
		}
	}
	return 0;
}

// BothNonZero: Approach 2, Complexity: 4
int bothNonZero_2( int x, int y ) {
	if( x && y ) {
		return 1;
	}
	return 0;
}

// BothNonZero: Approach 3, Complexity: 2
int bothNonZero_3( int x, int y ) {
	return x && y;
}


