Return-Path: <LW@LWConsulting.com>
Received: from mout.perfora.net (mout.perfora.net [74.208.4.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0382E016CD
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2013 07:13:11 -0700 (PDT)
Received: from larry1 (ip68-108-244-202.sb.sd.cox.net [68.108.244.202])
	by mrelay.perfora.net (node=mrus3) with ESMTP (Nemesis)
	id 0LfTRR-1W2f9f2l4L-00pLoF; Fri, 25 Oct 2013 10:13:09 -0400
From: "Larry Weaver" <LW@LWConsulting.com>
To: "'Zhang, Jessica'" <jessica.zhang@intel.com>,
	"'Yocto discussion list'" <yocto@yoctoproject.org>
References: <006e01ced103$09001330$1b003990$@LWConsulting.com>
	<C6510F6D410BB64A8C15398EDC6B847C805205E0@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C805205E0@ORSMSX103.amr.corp.intel.com>
Date: Fri, 25 Oct 2013 07:13:06 -0700
Message-ID: <006601ced18c$54ece140$fec6a3c0$@LWConsulting.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
thread-index: AQIoEMbXoHGKQpN2/OrnFRoDOJOahwH32RaBmUM16JA=
X-Provags-ID: V02:K0:3dBNSl4q8vOafxV8VJGKeXCyi1zHPI4v8JBKnLxVxfu
	CjX2Y6VqG2FgTHyaqSYQLlaS7HGaWHZ8A8KeQ9tZPaGf/pAIl9
	WbfnYUqatL1GOJYCbbIA8ouXZFZL1lT2INL+M6lS912jUK54wk
	e8hqFTYck8/PDMCDK2iQjPOpeISH64g6ALUeKwtR5ejB56STZJ
	8sHo7T7GRX2kzmLPBtWZKVX++fytxOkeR0dLqlsSncHgVQHimu
	OdabN7ewajRnqfdM9ofqsULITlFZSSz2NzQ3bcZw2+My3azDjb
	LNVDi3MX4z+KuQl1lSynbAX7ab4YUrb4OMhbIvi7L90tl2s7gL
	+js5watF0BtkeXmfFh86B0oL+0vw0+WXlOJfZXRfv
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
X-List-Received-Date: Fri, 25 Oct 2013 14:13:12 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0067_01CED151.A8911680"
Content-Language: en-us

------=_NextPart_000_0067_01CED151.A8911680
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The system is the kepler release with the Yocto kepler 1.5 plugin (the =
Yocto manual says to use 1.6, but that doesn=E2=80=99t seem to exist).  =
I=E2=80=99m setting things up totally from the manual and  it says to =
use the tcf-agent with the Yocto plugin for eclipse kepler (also has =
some juno information, but says kepler is preferred).  Hopefully you saw =
my second email where I sorted out the tcf-agent by setting up the =
beagleboard to compile and then compiled it on the board.  It is now =
working except for one problem.  When I tell the system to start it on =
system start up, it only works for about 5 minutes.  Eclipse suddenly =
loses contact with it.  If I putty over and start it up again it works =
until I terminate the putty session.  I=E2=80=99m running the youto =
angstrom distribution on the beaglebone.

=20

Now the problem I have left is the build derived toolchain not finding =
any subdirectory with the meta-ide-support information in it.  I will =
figure out how to do the bugzilla later today.

=20

Thanks,

=20

Larry

=20

From: Zhang, Jessica [mailto:jessica.zhang@intel.com]=20
Sent: Thursday, October 24, 2013 11:43 PM
To: Larry Weaver; 'Yocto discussion list'
Subject: RE: [yocto] problems with yocto eclipse ADT and beaglebone

=20

Hi Larry,

=20

Is it latest eclipse plug-in you=E2=80=99re using is the 1.5 release?  =
I=E2=80=99d expect our QA should test the scenario of build derived =
toolchain usage case and reported issue.  Anyhow, I=E2=80=99m traveling =
atm and will try to reproduce the issue when I=E2=80=99m back in office =
next week.

=20

2nd issue for requirement of tcf-agent, I don=E2=80=99t think we require =
that to be mandatory, we=E2=80=99ve been supporting both ssh and tcf =
connection for remote debugging for quite some time.  My question is =
what eclipse version are you using? It=E2=80=99s not Yocto eclipse =
plug-in but the eclipse IDE itself, Juno or Kepler? If you install Yocto =
kepler plugin into Juno IDE, then that=E2=80=99ll definitely have some =
unpredictable behavior. Also, what is your remote target that you tried =
to debug against, real HW or qemu instance?  And what image are you =
booted remote target with? E.g. core-image-minimal or =
core-image-sato-sdk, etc.  You said you had previous success with =
eclipse plugin prior to upgrade to latest kepler release, what is the =
prior setup that has been working for you?

=20

The ML is the right venue to report issues and seek quick responses, but =
given the fact that the issues you=E2=80=99re reporting need some =
further investigation, could you please  file bugs in our bugzilla to =
better track these issues?

=20

Thanks,

Jessica

=20

From: yocto-bounces@yoctoproject.org =
<mailto:yocto-bounces@yoctoproject.org>  =
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


------=_NextPart_000_0067_01CED151.A8911680
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle21
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>The system is the kepler =
release with the Yocto kepler 1.5 plugin (the Yocto manual says to use =
1.6, but that doesn=E2=80=99t seem to exist).=C2=A0 I=E2=80=99m setting =
things up totally from the manual and=C2=A0 it says to use the tcf-agent =
with the Yocto plugin for eclipse kepler (also has some juno =
information, but says kepler is preferred).=C2=A0 Hopefully you saw my =
second email where I sorted out the tcf-agent by setting up the =
beagleboard to compile and then compiled it on the board.=C2=A0 It is =
now working except for one problem.=C2=A0 When I tell the system to =
start it on system start up, it only works for about 5 minutes.=C2=A0 =
Eclipse suddenly loses contact with it.=C2=A0 If I putty over and start =
it up again it works until I terminate the putty session.=C2=A0 =
I=E2=80=99m running the youto angstrom distribution on the =
beaglebone.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Now the problem I have =
left is the build derived toolchain not finding any subdirectory with =
the meta-ide-support information in it.=C2=A0 I will figure out how to =
do the bugzilla later today.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Thanks,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Larry<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> Zhang, Jessica =
[mailto:jessica.zhang@intel.com] <br><b>Sent:</b> Thursday, October 24, =
2013 11:43 PM<br><b>To:</b> Larry Weaver; 'Yocto discussion =
list'<br><b>Subject:</b> RE: [yocto] problems with yocto eclipse ADT and =
beaglebone<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Hi Larry,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Is it latest eclipse =
plug-in you=E2=80=99re using is the 1.5 release?&nbsp; I=E2=80=99d =
expect our QA should test the scenario of build derived toolchain usage =
case and reported issue.&nbsp; Anyhow, I=E2=80=99m traveling atm and =
will try to reproduce the issue when I=E2=80=99m back in office next =
week.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>2<sup>nd</sup> issue for =
requirement of tcf-agent, I don=E2=80=99t think we require that to be =
mandatory, we=E2=80=99ve been supporting both ssh and tcf connection for =
remote debugging for quite some time.&nbsp; My question is what eclipse =
version are you using? It=E2=80=99s not Yocto eclipse plug-in but the =
eclipse IDE itself, Juno or Kepler? If you install Yocto kepler plugin =
into Juno IDE, then that=E2=80=99ll definitely have some unpredictable =
behavior. Also, what is your remote target that you tried to debug =
against, real HW or qemu instance?&nbsp; And what image are you booted =
remote target with? E.g. core-image-minimal or core-image-sato-sdk, =
etc.&nbsp; You said you had previous success with eclipse plugin prior =
to upgrade to latest kepler release, what is the prior setup that has =
been working for you?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>The ML is the right =
venue to report issues and seek quick responses, but given the fact that =
the issues you=E2=80=99re reporting need some further investigation, =
could you please &nbsp;file bugs in our bugzilla to better track these =
issues?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Thanks,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Jessica<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
<a =
href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject=
.org</a> [<a =
href=3D"mailto:yocto-bounces@yoctoproject.org">mailto:yocto-bounces@yocto=
project.org</a>] <b>On Behalf Of </b>Larry Weaver<br><b>Sent:</b> =
Thursday, October 24, 2013 2:50 PM<br><b>To:</b> 'Yocto discussion =
list'<br><b>Subject:</b> [yocto] problems with yocto eclipse ADT and =
beaglebone<o:p></o:p></span></p></div></div><p =
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
style=3D'margin-left:33.75pt;text-indent:-.25in'><span =
style=3D'font-size:7.0pt;font-family:"Times New =
Roman","serif";color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; </span><span =
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
style=3D'margin-left:33.75pt;text-indent:-.25in'><span =
style=3D'font-size:7.0pt;font-family:"Times New =
Roman","serif";color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;|<o:p></o:p></span></p><p =
class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in'><span =
style=3D'font-size:7.0pt;font-family:"Times New =
Roman","serif";color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-info-<o:p></o:p></span></p><p =
class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in'><span =
style=3D'font-size:7.0pt;font-family:"Times New =
Roman","serif";color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;|<o:p></o:p></span></p><p class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in'><span =
style=3D'font-size:7.0pt;font-family:"Times New =
Roman","serif";color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;-run-postinsts.control<o:p></o:p></span></p><p =
class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in'><span =
style=3D'font-size:7.0pt;font-family:"Times New =
Roman","serif";color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-run-postinsts.list<o:p></o:p></span></p>=
<p class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in'><span =
style=3D'font-size:7.0pt;font-family:"Times New =
Roman","serif";color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-run-postinsts.postinst<o:p></o:p></span>=
</p><p class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in'><span =
style=3D'font-size:7.0pt;font-family:"Times New =
Roman","serif";color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-run-postinsts.postrm<o:p></o:p></s=
pan></p><p class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in'><span =
style=3D'font-size:7.0pt;font-family:"Times New =
Roman","serif";color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; </span><span =
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
style=3D'margin-left:33.75pt;text-indent:-.25in'><span =
style=3D'font-size:7.0pt;font-family:"Times New =
Roman","serif";color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'color:black'><o:p></o:p></span></p></div></body></html>

------=_NextPart_000_0067_01CED151.A8911680--
