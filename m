Return-Path: <LW@LWConsulting.com>
Received: from mout.perfora.net (mout.perfora.net [74.208.4.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01972E016E8
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2013 09:44:07 -0700 (PDT)
Received: from larry1 (ip68-108-244-202.sb.sd.cox.net [68.108.244.202])
	by mrelay.perfora.net (node=mrus3) with ESMTP (Nemesis)
	id 0M932L-1VQ93W1Gf7-00Ch75; Fri, 25 Oct 2013 12:44:05 -0400
From: "Larry Weaver" <LW@LWConsulting.com>
To: "'Larry Weaver'" <LW@LWConsulting.com>,
	"'Yocto discussion list'" <yocto@yoctoproject.org>
References: <006e01ced103$09001330$1b003990$@LWConsulting.com>
In-Reply-To: <006e01ced103$09001330$1b003990$@LWConsulting.com>
Date: Fri, 25 Oct 2013 09:43:59 -0700
Message-ID: <00aa01ced1a1$6a9e6b70$3fdb4250$@LWConsulting.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
thread-index: AQIoEMbXoHGKQpN2/OrnFRoDOJOah5lSMn3g
X-Provags-ID: V02:K0:2aJOglS8MoHEw7Wd4ZCMCiWSSLPvop1JGo+uKWCrEx8
	PrL5/VOXUCGIOAwBiPaeJ3ceZVBxkxXthSOq0X1FtNtYN5rr2k
	nDN+GDLP32OBe0WqkOLMw2N9MXevzA5DmY6AWD120NApdRHq+f
	RvKXEr2FVrDUQXBKklQOlCFHWqoCLPFPaGTUzQPFW4g/jDYuZz
	ojdV6+WagsUn0ZJi29C0PkN2x4y6mmdgcDs6Q1StcsBqYroGVv
	OvL2MqILRBqlBZc3EWiX9ezedVDFIutJ9sxRA+b10aNXjiYOn/
	mvL5WacE368EAONkb19GgzriwzSG3GOOuN7vsbq2kANX7vdGhP
	UOp7sBK/cyYE2C2TnO2ndz+W8b4loNF3BAaP3mzvk
Subject: Re: problems with yocto eclipse ADT and beaglebone
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 25 Oct 2013 16:44:08 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00AB_01CED166.BE42A0B0"
Content-Language: en-us

------=_NextPart_000_00AB_01CED166.BE42A0B0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have managed to answer one of my questions.  The tcf-agent from the =
beagleboard build is apparently not complete.  I set up a toolchain on =
the beaglebone and compiled the tcf-agent from the git.  The previous =
tcf-agent didn=E2=80=99t have terminal or shell capability.  The new one =
does. .

=20

So now if I can get the Build system derived toolchain directory figured =
out I will have a full beaglebone development system.  Any ideas?

=20

Thanks,

=20

Larry

=20

=20

From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Larry Weaver
Sent: Thursday, October 24, 2013 2:50 PM
To: 'Yocto discussion list'
Subject: [yocto] problems with yocto eclipse ADT and beaglebone

=20

I apologize in advance for my inexperience in this type of endeavor.  =
I've been a windows and microchip guy for some time, but the low cost =
machines like the beaglebone have all my clients moving over to linux so =
I need to become immersed in linux as well.

=20

I've spent the last month studying and working with linux and have =
reached something of an impasse (no forward progress for over 3 days =
now).  I'm not sure if this is the right platform to ask for eclipse ADT =
help or if there is a better mailing list, but hopefully you will let me =
know that.  I also need to know if this is considered for text only or =
can I include captured screen images (cut to only the info needed).

=20

I have reinstalled a virtual Ubuntu machine, downloaded the yocto =
angstrom scripts, compiled the kernel  (and uboot) too many times to =
count (and deployed to sd cards with success).  While doing this I tried =
various eclipse setups to do cross compiling and debugging with a lot of =
success.  A few days ago I saw that there was a new version of eclipse =
(kepler) with new ADT tools that should make the cross compiling and =
debugging much more elegant.  I installed a new Ubuntu virtual machine, =
got the angstrom scripts set up and the kernel compiled and then tried =
to get the eclipse setup going.  I've run into two problems that have me =
completely stopped. =20

=20

The first is a configuration problem that I hope will be easy to get =
past.  When I try to set up the Build system derived toolchain debug =
configuration (following the instructions in the Yocto Project =
Development Manual) I have been completely stumped.  I have run the =
meta-ide-support with no problem, and the build directory and tmp =
directory are there.  No matter what directory off of setup-scripts I =
use for a Toolchain Root Location it is rejected saying that the =
toolchain directory does not contain a toolchain generated with "bitbake =
meta-ide-support".  I've rerun meta-ide-support many times, but no =
subdirectory seems to contain the correct information when it is =
finished.  Where (and how) can I find the correct subdirectory that =
contains the correct meta-ide-suport data?

=20

Since that is a complete dead end for me at the moment, I bitbaked the =
meta-toolchain and ran the resultant shell to extract the toolchain into =
the /usr/local subdirectory.  I then changed the debug configuration to =
Standalone pre-built toolchain and selected the oecore-i686 directory =
created off /usr/local as the toolchain root and it's subdirectory =
sysroots as the sysroots directory.  Eclipse is quite happy with this so =
I thought I was finally to the next stage.  I started a Yocto ADT C++ =
project (again following the Yocto Project Development Manual), but ran =
into some warnings when I compile the hello world project.  These seem =
to be warnings so I kind of ignored them (still currently doing that) =
since I had other things I considered more important.  T

=20

Description         Resource             Path       Location             =
  Type

Missing PROG dlltool      HelloWorld                         -1          =
  Configure Problem

Missing PROG arm-angstrom-linux-gnueabi-dlltool          HelloWorld      =
                   -1            Configure Problem

Missing PROG arm-angstrom-linux-gnueabi-mt HelloWorld                    =
     -1            Configure Problem

=20

I then found that the new eclipse Yocto ADE setup requires the target to =
be running a tcf-agent.  According to the instructions I can add a =
definition to my conf/local.conf file that will cause the tcf-agent to =
be installed.  I added this to the local.conf and recompiled.  The =
scripts sensed something had changed and gave me a new kernel image =
file.  Thinking I had success I put that on an sd card and booted, but =
still no tcf-agent.  I extracted the images and checked the differences =
between them and it was very minimal.  The image that was supposed to =
have tcf-agent in it had some extra .sh files installed.  While not an =
expert on sh files these seem to have nothing to do with tcf-agent.  =
According to the Yocto Project Application Developers Guide the prebuilt =
images of e-image-sato-sdk have the tcf-agent in them so I downloaded =
the file for the beagleboard (if I compile using machine =3Dbeagleboard =
instead of beaglebone it works fine on the beaglebone board) and =
extracted the tcf-agent.  I put it on the beaglebone and started it up.  =
Suddenly the eclipse Yocto plugin found the tcf daemon and I thought all =
was good with the world.  When I actually tried the debug it copied the =
compiled program over to the beaglebone but then died with further =
problems see tcf problems below).  The program runs correctly on the =
beaglebone if I execute it by hand.  If I open up an eclipse remote =
systems perspective over tcf, it sees the drive, process, etc.  =
I=E2=80=99m not sure how the tcf-agent needs to be started, so that may =
be the problem. =20

=20

Any help on how to configure the Build System derived toolchain (what =
directory is it looking for) or help on how to properly use tcf-agent so =
that hostprocesses can start would be greatly appreciated. =20

=20

Thanks,

=20

Larry

=20

EXTRA_IMAGE_FEATURES =3D "tools-debug"

=20

etc-

       |

       -run-postinsts           =20

usr-

       |

         -share-

                        |

                       -run-postinsts        =20

var-

       |

        -lib-

               |

               -opkg-

                         |

                          -info-

                                    |

                                     -run-postinsts.control

                                      -run-postinsts.list

                                      -run-postinsts.postinst

                                       -run-postinsts.postrm

                                        -run-postinsts.prerm

=20

TCF problems

=20

Error during file upload.

Could not create the hostShellProcess.

=20

Could not create the hostShellProcess.

=20

An unexpected exception has occurred

An unexpected exception has occurred

An unexpected exception has occurred

Could not create the hostShellProcess.

=20

Could not create the hostShellProcess.

=20

An unexpected exception has occurred

An unexpected exception has occurred

An unexpected exception has occurred

Could not create the hostShellProcess.

=20

Could not create the hostShellProcess.

=20

Could not create the hostShellProcess.

=20

An unexpected exception has occurred

An unexpected exception has occurred

An unexpected exception has occurred

Could not create the hostShellProcess.

=20

Could not create the hostShellProcess.

=20

An unexpected exception has occurred

An unexpected exception has occurred

An unexpected exception has occurred

            =20


------=_NextPart_000_00AB_01CED166.BE42A0B0
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Courier;
	panose-1:2 7 4 9 2 2 5 2 4 4;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Ubuntu;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:989553462;
	mso-list-type:hybrid;
	mso-list-template-ids:-1016051632 174774324 67698691 67698693 67698689 =
67698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:"";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:33.75pt;
	text-indent:-.25in;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:69.75pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:105.75pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:141.75pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:177.75pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:213.75pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:249.75pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:285.75pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:321.75pt;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>I have managed to answer =
one of my questions.&nbsp; The tcf-agent from the beagleboard build is =
apparently not complete.&nbsp; I set up a toolchain on the beaglebone =
and compiled the tcf-agent from the git.&nbsp; The previous tcf-agent =
didn=E2=80=99t have terminal or shell capability.&nbsp; The new one =
does.&nbsp;.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>So now if I can get the =
Build system derived toolchain directory figured out I will have a full =
beaglebone development system.&nbsp; Any ideas?<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Thanks,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Larry<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> =
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] =
<b>On Behalf Of </b>Larry Weaver<br><b>Sent:</b> Thursday, October 24, =
2013 2:50 PM<br><b>To:</b> 'Yocto discussion list'<br><b>Subject:</b> =
[yocto] problems with yocto eclipse ADT and =
beaglebone<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>I =
apologize in advance for my inexperience in this type of endeavor.&nbsp; =
I've been a windows and microchip guy for some time, but the low cost =
machines like the beaglebone have all my clients moving over to linux so =
I need to become immersed in linux as well.<o:p></o:p></p><p =
class=3DMsoPlainText><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'color:black'>I've spent the last =
month studying and working with linux and have reached something of an =
impasse (no forward progress for over 3 days now).&nbsp; I'm not sure if =
this is the right platform to ask for eclipse ADT help or if there is a =
better mailing list, but hopefully you will let me know that.&nbsp; I =
also need to know if this is considered for text only or can I include =
captured screen images (cut to only the info =
needed).<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'color:black'>I have reinstalled a =
virtual Ubuntu machine, downloaded the yocto angstrom scripts, compiled =
the kernel&nbsp; (and uboot) too many times to count (and deployed to sd =
cards with success).&nbsp; While doing this I tried various eclipse =
setups to do cross compiling and debugging with a lot of success.&nbsp; =
A few days ago I saw that there was a new version of eclipse (kepler) =
with new ADT tools that should make the cross compiling and debugging =
much more elegant.&nbsp; I installed a new Ubuntu virtual machine, got =
the angstrom scripts set up and the kernel compiled and then tried to =
get the eclipse setup going.&nbsp; I've run into two problems that have =
me completely stopped.&nbsp; <o:p></o:p></span></p><p =
class=3DMsoPlainText><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'color:black'>The first is a =
configuration problem that I hope will be easy to get past.&nbsp; When I =
try to set up the Build system derived toolchain debug configuration =
(following the instructions in the Yocto Project Development Manual) I =
have been completely stumped.&nbsp; I have run the meta-ide-support with =
no problem, and the build directory and tmp directory are there.&nbsp; =
No matter what directory off of setup-scripts I use for a Toolchain Root =
Location it is rejected saying that the toolchain directory does not =
contain a toolchain generated with &quot;bitbake =
meta-ide-support&quot;.&nbsp; I've rerun meta-ide-support many times, =
but no subdirectory seems to contain the correct information when it is =
finished.&nbsp; Where (and how) can I find the correct subdirectory that =
contains the correct meta-ide-suport data?<o:p></o:p></span></p><p =
class=3DMsoPlainText><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'color:black'>Since that is a =
complete dead end for me at the moment, I bitbaked the meta-toolchain =
and ran the resultant shell to extract the toolchain into the /usr/local =
subdirectory.&nbsp; I then changed the debug configuration to Standalone =
pre-built toolchain and selected the oecore-i686 directory created off =
/usr/local as the toolchain root and it's subdirectory sysroots as the =
sysroots directory.&nbsp; Eclipse is quite happy with this so I thought =
I was finally to the next stage.&nbsp; I started a Yocto ADT C++ project =
(again following the Yocto Project Development Manual), but ran into =
some warnings when I compile the hello world project.&nbsp; These seem =
to be warnings so I kind of ignored them (still currently doing that) =
since I had other things I considered more important.&nbsp; =
T<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span =
style=3D'color:black'>Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; =
Resource&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; Path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
Location&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; Type<o:p></o:p></span></p><p =
class=3DMsoPlainText><span style=3D'color:black'>Missing PROG =
dlltool&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
HelloWorld&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; =
-1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
Configure Problem<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'>Missing PROG =
arm-angstrom-linux-gnueabi-dlltool&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =
HelloWorld&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; =
-1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
Configure Problem<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'>Missing PROG arm-angstrom-linux-gnueabi-mt =
HelloWorld&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; =
-1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
Configure Problem<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'color:black'>I then found that the =
new eclipse Yocto ADE setup requires the target to be running a =
tcf-agent.&nbsp; According to the instructions I can add a definition to =
my conf/local.conf file that will cause the tcf-agent to be =
installed.&nbsp; I added this to the local.conf and recompiled.&nbsp; =
The scripts sensed something had changed and gave me a new kernel image =
file.&nbsp; Thinking I had success I put that on an sd card and booted, =
but still no tcf-agent.&nbsp; I extracted the images and checked the =
differences between them and it was very minimal.&nbsp; The image that =
was supposed to have tcf-agent in it had some extra .sh files =
installed.&nbsp; While not an expert on sh files these seem to have =
nothing to do with tcf-agent.&nbsp; According to the Yocto Project =
Application Developers Guide the prebuilt images of </span><code><span =
lang=3DEN =
style=3D'font-size:13.5pt;font-family:Courier;color:#333333'>e-image-sato=
-sdk</span></code><span lang=3DEN style=3D'color:black'> </span><span =
style=3D'color:black'>have the tcf-agent in them so I downloaded the =
file for the beagleboard (if I compile using machine =3Dbeagleboard =
instead of beaglebone it works fine on the beaglebone board) and =
extracted the tcf-agent.&nbsp; I put it on the beaglebone and started it =
up.&nbsp; Suddenly the eclipse Yocto plugin found the tcf daemon and I =
thought all was good with the world.&nbsp; When I actually tried the =
debug it copied the compiled program over to the beaglebone but then =
died with further problems see tcf problems below).&nbsp; The program =
runs correctly on the beaglebone if I execute it by hand.&nbsp; If I =
open up an eclipse remote systems perspective over tcf, it sees the =
drive, process, etc.&nbsp; I=E2=80=99m not sure how the tcf-agent needs =
to be started, so that may be the problem.&nbsp; =
<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'color:black'>Any help on how to =
configure the Build System derived toolchain (what directory is it =
looking for) or help on how to properly use tcf-agent so that =
hostprocesses can start would be greatly appreciated.&nbsp; =
<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span =
style=3D'color:black'>Thanks,<o:p></o:p></span></p><p =
class=3DMsoPlainText><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span =
style=3D'color:black'>Larry<o:p></o:p></span></p><p =
class=3DMsoPlainText><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'color:black'>EXTRA_IMAGE_FEATURES =
=3D </span><span lang=3DEN =
style=3D'font-family:"Verdana","sans-serif";color:#333333'>&quot;tools-de=
bug&quot;<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN =
style=3D'font-family:"Verdana","sans-serif";color:#333333'><o:p>&nbsp;</o=
:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'>etc-<o:p></o:p></span></p><p =
class=3DMsoPlainText><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
|<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
-run-postinsts&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; <o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'>usr-<o:p></o:p></span></p><p =
class=3DMsoPlainText><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
|<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
-share-<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; |<o:p></o:p></span></p><p class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><span style=3D'color:black'><span =
style=3D'mso-list:Ignore'><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;-run-postinsts&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; <o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'>var-<o:p></o:p></span></p><p =
class=3DMsoPlainText><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
|<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
-lib-<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;|<o:p></o:p></span></p><p =
class=3DMsoPlainText><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -opkg-<o:p></o:p></span></p><p =
class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><span style=3D'color:black'><span =
style=3D'mso-list:Ignore'><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;|<o:p></o:p></span></p><p =
class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><span style=3D'color:black'><span =
style=3D'mso-list:Ignore'><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-info-<o:p></o:p></span></p><p =
class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><span style=3D'color:black'><span =
style=3D'mso-list:Ignore'><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;|<o:p></o:p></span></p><p class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><span style=3D'color:black'><span =
style=3D'mso-list:Ignore'><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;-run-postinsts.control<o:p></o:p></span></p><p =
class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><span style=3D'color:black'><span =
style=3D'mso-list:Ignore'><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-run-postinsts.list<o:p></o:p></span></p>=
<p class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><span style=3D'color:black'><span =
style=3D'mso-list:Ignore'><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-run-postinsts.postinst<o:p></o:p></span>=
</p><p class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><span style=3D'color:black'><span =
style=3D'mso-list:Ignore'><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-run-postinsts.postrm<o:p></o:p></s=
pan></p><p class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><span style=3D'color:black'><span =
style=3D'mso-list:Ignore'><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-run-postinsts.prerm<o:p></o:=
p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'color:black'>TCF =
problems<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'font-family:Ubuntu'>Error =
during file upload.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-indent:1.1pt;text-autospace:none'><span =
style=3D'font-family:Ubuntu'>Could not create the =
hostShellProcess.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-indent:1.85pt;text-autospace:none'><span =
style=3D'font-family:Ubuntu'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-indent:1.85pt;text-autospace:none'><span =
style=3D'font-family:Ubuntu'>Could not create the =
hostShellProcess.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-indent:2.6pt;text-autospace:none'><span =
style=3D'font-family:Ubuntu'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-indent:2.6pt;text-autospace:none'><span =
style=3D'font-family:Ubuntu'>An unexpected exception has =
occurred<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-indent:1.85pt;text-autospace:none'><span =
style=3D'font-family:Ubuntu'>An unexpected exception has =
occurred<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-indent:2.6pt;text-autospace:none'><span =
style=3D'font-family:Ubuntu'>An unexpected exception has =
occurred<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-indent:2.6pt;text-autospace:none'><span =
style=3D'font-family:Ubuntu'>Could not create the =
hostShellProcess.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-indent:3.35pt;text-autospace:none'><span =
style=3D'font-family:Ubuntu'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-indent:3.35pt;text-autospace:none'><span =
style=3D'font-family:Ubuntu'>Could not create the =
hostShellProcess.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-indent:1.1pt;text-autospace:none'><span =
style=3D'font-family:Ubuntu'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-indent:1.85pt;text-autospace:none'><span =
style=3D'font-family:Ubuntu'>An unexpected exception has =
occurred<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-indent:2.6pt;text-autospace:none'><span =
style=3D'font-family:Ubuntu'>An unexpected exception has =
occurred<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-indent:2.6pt;text-autospace:none'><span =
style=3D'font-family:Ubuntu'>An unexpected exception has =
occurred<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-indent:3.35pt;text-autospace:none'><span =
style=3D'font-family:Ubuntu'>Could not create the =
hostShellProcess.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-indent:3.35pt;text-autospace:none'><span =
style=3D'font-family:Ubuntu'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-indent:2.6pt;text-autospace:none'><span =
style=3D'font-family:Ubuntu'>Could not create the =
hostShellProcess.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-indent:3.35pt;text-autospace:none'><span =
style=3D'font-family:Ubuntu'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-indent:3.35pt;text-autospace:none'><span =
style=3D'font-family:Ubuntu'>Could not create the =
hostShellProcess.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-indent:4.1pt;text-autospace:none'><span =
style=3D'font-family:Ubuntu'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-indent:4.1pt;text-autospace:none'><span =
style=3D'font-family:Ubuntu'>An unexpected exception has =
occurred<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'font-family:Ubuntu'>An =
unexpected exception has occurred<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><span =
style=3D'font-family:Ubuntu'>An unexpected exception has =
occurred<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'font-family:Ubuntu'>Could =
not create the hostShellProcess.<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><span =
style=3D'font-family:Ubuntu'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><span =
style=3D'font-family:Ubuntu'>Could not create the =
hostShellProcess.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'font-family:Ubuntu'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><span =
style=3D'font-family:Ubuntu'>An unexpected exception has =
occurred<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'font-family:Ubuntu'>An =
unexpected exception has occurred<o:p></o:p></span></p><p =
class=3DMsoPlainText><span style=3D'font-family:Ubuntu'>An unexpected =
exception has occurred</span><span =
style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><span style=3D'color:black'><span =
style=3D'mso-list:Ignore'><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p></div></body></html>

------=_NextPart_000_00AB_01CED166.BE42A0B0--
