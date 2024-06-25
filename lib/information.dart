/*
Shared preferance :Allow data to store in database for timebeing but cannot access data in your phone
Session Management: let's Say user login Once and the next time app doesn't ask user to login it directly 
                    gives access

Splash Screen : initstate() Function runs before calling the splash Screen.
In splash screen we use initstate and Timer
               
TYPES OF FUNCTIONS:
1) Future Function:
                    Future<void> talha() async{
                    await Future.delayed(Duration(seconds:10));
                    }
                    when async is used await must be used in order to work properly


Shared Preferance : In order to store data on shared preferance we need to initialize it.
sp.clear(): In order to log out the users
*/