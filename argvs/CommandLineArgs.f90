program CommandLineArgs
  implicit none
  
  integer :: i, argCount, argLength
  character(len=:), allocatable :: argValue(:)
  
  ! Get the number of command-line arguments
  argCount = COMMAND_ARGUMENT_COUNT()
  
  ! Allocate an array to store the argument values
  allocate(character(len=100) :: argValue(argCount))
  
  ! Retrieve the command-line arguments
  do i = 1, argCount
    argLength = LEN(argValue(i))
    call GET_COMMAND_ARGUMENT(i, argValue(i))
  end do
  
  ! Print the command-line arguments
  do i = 1, argCount
    write(*, '(A)') trim(adjustl(argValue(i)))
  end do
  
  ! Deallocate the array
  deallocate(argValue)
  
end program CommandLineArgs

