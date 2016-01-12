#lang scribble/text
@(require
  "templates.rkt")

<!DOCTYPE html>
<html lang="en">
  @(header "New Members")
  <body id="pn-top">
    @(navbar "New Members")
    @subpage-title{New Members}
    <div class="pn-main-wrapper">
      <div class="content">
        <div class="container">
          <div class="row">
            <div class="col-md-10 col-md-offset-1">
              <p>Welcome to the PRL! The instructions below will help you get situated in the lab.</p>
              <ol>
                <li>Get your student ID (a.k.a. Husky Card) from <a href="http://www.northeastern.edu/huskycard/about/locations.html">a pick-up location</a>. Your ID unlocks the door into the lab.</li>
                <li>Apply for a CCIS account using <a href="http://howto.ccs.neu.edu/howto/accounts-homedirs/how-to-sign-up-for-a-ccis-account/">these instructions</a>. This account comes with a ccs.neu.edu email address and allows you to access various computers around the college.</li>
                <li>Coordinate with the lab member in charge of <a href="people.html">the people page</a> (<a href="mailto:maxnew@"@"ccs.neu.edu">Max New</a> as of January 2016) to add your picture and bio, as well as to add yourself to the students or staff mailing list, as appropriate.</li>
                <li>Join the lab's IRC channel, #prl, on Freenode. Current lab members can help you get started on IRC if you've never used it before. <strong>Prospective students are welcome to ask questions here, too!</strong></li>
                <li>Sign up for the mailing lists for the PL Seminar and the PL Jr. seminar (links on the <a href="seminars.html">seminars page</a>).</li>
                <li><p>Finally, if you haven't already found a place to live, this map (compiled by Northeastern CS grad students) can help you narrow down where to live in Boston. Colors on shaded regions indicate roughly how good the area is for grad students (green = good, yellow = okay, red = bad), and you can click on the regions and pins for more information</p>
                  <iframe src="https://www.google.com/maps/d/u/0/embed?mid=zNp1Yae6mers.kT4sztNf9NgU" width="640" height="480"></iframe>
                </li>
              </ol>
              <p>More grad-student-specific information about Northeastern's College of Computer and Information Science can be found on <a href="https://wiki.ccs.neu.edu/display/GRADWIKI/Home">the grad wiki</a>.
            </div>
          </div>
        </div>
      </div>
    </div>
  @|footer|
  </body>
</html>
