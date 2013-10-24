Return-Path: <LW@LWConsulting.com>
Received: from mout.perfora.net (mout.perfora.net [74.208.4.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09BEDE01764
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2013 14:50:22 -0700 (PDT)
Received: from larry1 (ip68-108-244-202.sb.sd.cox.net [68.108.244.202])
	by mrelay.perfora.net (node=mrus2) with ESMTP (Nemesis)
	id 0MO7O0-1VewRD0j9o-005Uz2; Thu, 24 Oct 2013 17:50:20 -0400
From: "Larry Weaver" <LW@LWConsulting.com>
To: "'Yocto discussion list'" <yocto@yoctoproject.org>
Date: Thu, 24 Oct 2013 14:50:18 -0700
Message-ID: <006e01ced103$09001330$1b003990$@LWConsulting.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: Ac7RAYhG2f8sdXezQGyJ5UOfL4nezw==
X-Provags-ID: V02:K0:MASaYGSO5AtFg9THCJStMJvuowLaUH3+oqH+v+rzki0
	70d9CGEnVYrm5VgiI7cbHtfXT2PYzCPB1M9gBrJjBQvdP2VAPf
	jPbtwy2tgmR62vJyJtY+Q0sqVh2KVdFdi623IpyPSod9Vrqx+x
	tW0X/tEe5SFEwkMiJ16H5SJ5L3rY0jUO6dKmt41vkv+2W2pXNv
	EwVnvDQYEkOub6QKE6mWpukriQ2iAFszaWOutQZ30wOhx4ueJt
	qON6ZG7aOGz7uzpjnco9alxvu4oqbuNWyaTOrsRiKPqzoxFFXf
	RlAuAPDv7PTaRttAMbrmNFTBlPxY0KD+lf31vpl3mnkyA5It16
	i06IJ5xoULEtzCX0y+lF6Lm8U1M1gKsbK4jeR7O6c
Subject: problems with yocto eclipse ADT and beaglebone
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
X-List-Received-Date: Thu, 24 Oct 2013 21:50:25 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_006F_01CED0C8.5CA13B30"
Content-Language: en-us

------=_NextPart_000_006F_01CED0C8.5CA13B30
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

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


------=_NextPart_000_006F_01CED0C8.5CA13B30
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3DUTF-8">
<meta name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Courier;
	panose-1:2 7 4 9 2 2 5 2 4 4;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Ubuntu;
	panose-1:0 0 0 0 0 0 0 0 0 0;}
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
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:617955335;
	mso-list-type:hybrid;
	mso-list-template-ids:1082803692 -922312506 67698691 67698693 67698689 =
67698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1
	{mso-list-id:989553462;
	mso-list-type:hybrid;
	mso-list-template-ids:-1016051632 174774324 67698691 67698693 67698689 =
67698691 67698693 67698689 67698691 67698693;}
@list l1:level1
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
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:69.75pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:105.75pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:141.75pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:177.75pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:213.75pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:249.75pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:285.75pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:321.75pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2
	{mso-list-id:1640568508;
	mso-list-type:hybrid;
	mso-list-template-ids:962864536 -953147184 67698691 67698693 67698689 =
67698691 67698693 67698689 67698691 67698693;}
@list l2:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:33.75pt;
	text-indent:-.25in;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:69.75pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:105.75pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:141.75pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:177.75pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:213.75pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:249.75pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:285.75pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level9
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
class=3DMsoPlainText>I apologize in advance for my inexperience in this =
type of endeavor.=C2=A0 I've been a windows and microchip guy for some =
time, but the low cost machines like the beaglebone have all my clients =
moving over to linux so I need to become immersed in linux as =
well.<o:p></o:p></p><p class=3DMsoPlainText><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'color:black'>I've spent the last =
month studying and working with linux and have reached something of an =
impasse (no forward progress for over 3 days now).=C2=A0 I'm not sure if =
this is the right platform to ask for eclipse ADT help or if there is a =
better mailing list, but hopefully you will let me know that.=C2=A0 I =
also need to know if this is considered for text only or can I include =
captured screen images (cut to only the info =
needed).<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'color:black'>I have reinstalled a =
virtual Ubuntu machine, downloaded the yocto angstrom scripts, compiled =
the kernel=C2=A0 (and uboot) too many times to count (and deployed to sd =
cards with success).=C2=A0 While doing this I tried various eclipse =
setups to do cross compiling and debugging with a lot of success.=C2=A0 =
A few days ago I saw that there was a new version of eclipse (kepler) =
with new ADT tools that should make the cross compiling and debugging =
much more elegant.=C2=A0 I installed a new Ubuntu virtual machine, got =
the angstrom scripts set up and the kernel compiled and then tried to =
get the eclipse setup going.=C2=A0 I've run into two problems that have =
me completely stopped.=C2=A0 <o:p></o:p></span></p><p =
class=3DMsoPlainText><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'color:black'>The first is a =
configuration problem that I hope will be easy to get past.=C2=A0 When I =
try to set up the Build system derived toolchain debug configuration =
(following the instructions in the Yocto Project Development Manual) I =
have been completely stumped.=C2=A0 I have run the meta-ide-support with =
no problem, and the build directory and tmp directory are there.=C2=A0 =
No matter what directory off of setup-scripts I use for a Toolchain Root =
Location it is rejected saying that the toolchain directory does not =
contain a toolchain generated with &quot;bitbake =
meta-ide-support&quot;.=C2=A0 I've rerun meta-ide-support many times, =
but no subdirectory seems to contain the correct information when it is =
finished.=C2=A0 Where (and how) can I find the correct subdirectory that =
contains the correct meta-ide-suport data?<o:p></o:p></span></p><p =
class=3DMsoPlainText><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'color:black'>Since that is a =
complete dead end for me at the moment, I bitbaked the meta-toolchain =
and ran the resultant shell to extract the toolchain into the /usr/local =
subdirectory.=C2=A0 I then changed the debug configuration to Standalone =
pre-built toolchain and selected the oecore-i686 directory created off =
/usr/local as the toolchain root and it's subdirectory sysroots as the =
sysroots directory.=C2=A0 Eclipse is quite happy with this so I thought =
I was finally to the next stage.=C2=A0 I started a Yocto ADT C++ project =
(again following the Yocto Project Development Manual), but ran into =
some warnings when I compile the hello world project.=C2=A0 These seem =
to be warnings so I kind of ignored them (still currently doing that) =
since I had other things I considered more important.=C2=A0 =
T<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span =
style=3D'color:black'>Description=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =
Resource=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Path=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
Location=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Type<o:p></o:p></span></p><p =
class=3DMsoPlainText><span style=3D'color:black'>Missing PROG =
dlltool=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
HelloWorld=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =
-1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
Configure Problem<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'>Missing PROG =
arm-angstrom-linux-gnueabi-dlltool=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =
HelloWorld=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =
-1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
Configure Problem<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'>Missing PROG arm-angstrom-linux-gnueabi-mt =
HelloWorld=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =
-1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
Configure Problem<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'color:black'>I then found that the =
new eclipse Yocto ADE setup requires the target to be running a =
tcf-agent.=C2=A0 According to the instructions I can add a definition to =
my conf/local.conf file that will cause the tcf-agent to be =
installed.=C2=A0 I added this to the local.conf and recompiled.=C2=A0 =
The scripts sensed something had changed and gave me a new kernel image =
file.=C2=A0 Thinking I had success I put that on an sd card and booted, =
but still no tcf-agent.=C2=A0 I extracted the images and checked the =
differences between them and it was very minimal.=C2=A0 The image that =
was supposed to have tcf-agent in it had some extra .sh files =
installed.=C2=A0 While not an expert on sh files these seem to have =
nothing to do with tcf-agent.=C2=A0 According to the Yocto Project =
Application Developers Guide the prebuilt images of </span><code><span =
lang=3DEN =
style=3D'font-size:13.5pt;font-family:Courier;color:#333333'>e-image-sato=
-sdk</span></code><span lang=3DEN style=3D'color:black'> </span><span =
style=3D'color:black'>have the tcf-agent in them so I downloaded the =
file for the beagleboard (if I compile using machine =3Dbeagleboard =
instead of beaglebone it works fine on the beaglebone board) and =
extracted the tcf-agent.=C2=A0 I put it on the beaglebone and started it =
up.=C2=A0 Suddenly the eclipse Yocto plugin found the tcf daemon and I =
thought all was good with the world.=C2=A0 When I actually tried the =
debug it copied the compiled program over to the beaglebone but then =
died with further problems see tcf problems below).=C2=A0 The program =
runs correctly on the beaglebone if I execute it by hand.=C2=A0 If I =
open up an eclipse remote systems perspective over tcf, it sees the =
drive, process, etc.=C2=A0 I=E2=80=99m not sure how the tcf-agent needs =
to be started, so that may be the problem.=C2=A0 =
<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span style=3D'color:black'>Any help on how to =
configure the Build System derived toolchain (what directory is it =
looking for) or help on how to properly use tcf-agent so that =
hostprocesses can start would be greatly appreciated.=C2=A0 =
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
style=3D'color:black'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
|<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
-run-postinsts=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 <o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'>usr-<o:p></o:p></span></p><p =
class=3DMsoPlainText><span =
style=3D'color:black'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
|<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
-share-<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 |<o:p></o:p></span></p><p class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><span style=3D'color:black'><span =
style=3D'mso-list:Ignore'><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span =
style=3D'color:black'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0-run-postinsts=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 <o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'>var-<o:p></o:p></span></p><p =
class=3DMsoPlainText><span =
style=3D'color:black'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
|<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
-lib-<o:p></o:p></span></p><p class=3DMsoPlainText><span =
style=3D'color:black'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0|<o:p></o:p></span></p><p =
class=3DMsoPlainText><span =
style=3D'color:black'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -opkg-<o:p></o:p></span></p><p =
class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><span style=3D'color:black'><span =
style=3D'mso-list:Ignore'><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span =
style=3D'color:black'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0|<o:p></o:p></span></p><p =
class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><span style=3D'color:black'><span =
style=3D'mso-list:Ignore'><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span =
style=3D'color:black'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0-info-<o:p></o:p></span></p><p =
class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><span style=3D'color:black'><span =
style=3D'mso-list:Ignore'><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span =
style=3D'color:black'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0|<o:p></o:p></span></p><p class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><span style=3D'color:black'><span =
style=3D'mso-list:Ignore'><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span =
style=3D'color:black'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0-run-postinsts.control<o:p></o:p></span></p><p =
class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><span style=3D'color:black'><span =
style=3D'mso-list:Ignore'><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span =
style=3D'color:black'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0-run-postinsts.list<o:p></o:p></span></p><p=
 class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><span style=3D'color:black'><span =
style=3D'mso-list:Ignore'><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span style=3D'color:black'> =
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0-run-postinsts.postinst<o:p></o:p></span></p><p =
class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><span style=3D'color:black'><span =
style=3D'mso-list:Ignore'><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span =
style=3D'color:black'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0-run-postinsts.postrm<o:p></o:p></spa=
n></p><p class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><span style=3D'color:black'><span =
style=3D'mso-list:Ignore'><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span =
style=3D'color:black'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0-run-postinsts.prerm<o:p></o:p>=
</span></p><p class=3DMsoPlainText><span =
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
style=3D'margin-left:33.75pt;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><span style=3D'color:black'><span =
style=3D'mso-list:Ignore'><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p></div></body></html>

------=_NextPart_000_006F_01CED0C8.5CA13B30--
