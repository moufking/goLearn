fun Division(a int, b int) (error, int) {
	if b ==0 {
		return errors.new("Divison impossible par 0 "), 0

	}else {
		return nil, a/b;
	}
}