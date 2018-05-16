The Odin Project project
[https://www.theodinproject.com/courses/ruby-on-rails/lessons/associations]
---------------------------------------------------------------------------
I finished Event Attendance up to point 4 (didn't want to bother with the rest)
NB: I didn't set mi data bases like they suggested,
I made a 
* User who has_many Events and Attendments
* Event which belongs_to a User(creator) and has_many Attendments
* Attendment which belongs_to a User(attendee) and an Event

and it worked just as I thought it would so I didn't even try to do it their way
