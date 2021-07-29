! doublenum 

pure real(c_double) function doublenum(num) bind(c,name='doublenum')
    use :: iso_c_binding
    real(c_double), value, intent(in) :: num
    doublenum = 2.0*num
end function doublenum
