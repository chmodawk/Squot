I am a replacement for SquitUnitOfWork if FileSystem-Git is set to not use the unit of work interface. This avoids messages being sent to a GitRepository that it does not understand because they are meant for a GitUnitOfWork.