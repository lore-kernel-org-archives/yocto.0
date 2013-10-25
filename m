Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63D17E01719
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2013 23:42:55 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Oct 2013 23:42:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; 
	d="p7s'?scan'208,217";a="379820106"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by azsmga001.ch.intel.com with ESMTP; 24 Oct 2013 23:42:53 -0700
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 24 Oct 2013 23:42:53 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.216]) by
	ORSMSX112.amr.corp.intel.com ([169.254.12.221]) with mapi id
	14.03.0123.003; Thu, 24 Oct 2013 23:42:53 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Larry Weaver <LW@LWConsulting.com>, 'Yocto discussion list'
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] problems with yocto eclipse ADT and beaglebone
Thread-Index: Ac7RAYhG2f8sdXezQGyJ5UOfL4nezwASlm+g
Date: Fri, 25 Oct 2013 06:42:52 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C805205E0@ORSMSX103.amr.corp.intel.com>
References: <006e01ced103$09001330$1b003990$@LWConsulting.com>
In-Reply-To: <006e01ced103$09001330$1b003990$@LWConsulting.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
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
X-List-Received-Date: Fri, 25 Oct 2013 06:43:01 -0000
X-Groupsio-MsgNum: 16692
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0000_01CED112.BDE0B5C0"

------=_NextPart_000_0000_01CED112.BDE0B5C0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0001_01CED112.BDE0B5C0"

------=_NextPart_001_0001_01CED112.BDE0B5C0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

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


------=_NextPart_001_0001_01CED112.BDE0B5C0
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 14 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Courier;
	panose-1:2 7 4 9 2 2 5 2 4 4;}
@font-face
	{font-family:=E5=AE=8B=E4=BD=93;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:=E5=AE=8B=E4=BD=93;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Ubuntu;}
@font-face
	{font-family:"\@=E5=AE=8B=E4=BD=93";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
	margin:0cm;
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
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Hi =
Larry,<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Is it latest eclipse =
plug-in you=E2=80=99re using is the 1.5 release?=C2=A0 I=E2=80=99d =
expect our QA should test the scenario of build derived toolchain usage =
case and reported issue.=C2=A0 Anyhow, I=E2=80=99m traveling atm and =
will try to reproduce the issue when I=E2=80=99m back in office next =
week.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>2<sup>nd</sup> issue for =
requirement of tcf-agent, I don=E2=80=99t think we require that to be =
mandatory, we=E2=80=99ve been supporting both ssh and tcf connection for =
remote debugging for quite some time.=C2=A0 My question is what eclipse =
version are you using? It=E2=80=99s not Yocto eclipse plug-in but the =
eclipse IDE itself, Juno or Kepler? If you install Yocto kepler plugin =
into Juno IDE, then that=E2=80=99ll definitely have some unpredictable =
behavior. Also, what is your remote target that you tried to debug =
against, real HW or qemu instance?=C2=A0 And what image are you booted =
remote target with? E.g. core-image-minimal or core-image-sato-sdk, =
etc.=C2=A0 You said you had previous success with eclipse plugin prior =
to upgrade to latest kepler release, what is the prior setup that has =
been working for you?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>The ML is the right =
venue to report issues and seek quick responses, but given the fact that =
the issues you=E2=80=99re reporting need some further investigation, =
could you please =C2=A0file bugs in our bugzilla to better track these =
issues?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Thanks,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Jessica<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] =
<b>On Behalf Of </b>Larry Weaver<br><b>Sent:</b> Thursday, October 24, =
2013 2:50 PM<br><b>To:</b> 'Yocto discussion list'<br><b>Subject:</b> =
[yocto] problems with yocto eclipse ADT and =
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
style=3D'margin-left:33.75pt;text-indent:-18.0pt'><span =
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
style=3D'margin-left:33.75pt;text-indent:-18.0pt'><span =
style=3D'font-size:7.0pt;font-family:"Times New =
Roman","serif";color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;|<o:p></o:p></span></p><p =
class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-18.0pt'><span =
style=3D'font-size:7.0pt;font-family:"Times New =
Roman","serif";color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-info-<o:p></o:p></span></p><p =
class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-18.0pt'><span =
style=3D'font-size:7.0pt;font-family:"Times New =
Roman","serif";color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;|<o:p></o:p></span></p><p class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-18.0pt'><span =
style=3D'font-size:7.0pt;font-family:"Times New =
Roman","serif";color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;-run-postinsts.control<o:p></o:p></span></p><p =
class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-18.0pt'><span =
style=3D'font-size:7.0pt;font-family:"Times New =
Roman","serif";color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-run-postinsts.list<o:p></o:p></span></p>=
<p class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-18.0pt'><span =
style=3D'font-size:7.0pt;font-family:"Times New =
Roman","serif";color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-run-postinsts.postinst<o:p></o:p></span>=
</p><p class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-18.0pt'><span =
style=3D'font-size:7.0pt;font-family:"Times New =
Roman","serif";color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-run-postinsts.postrm<o:p></o:p></s=
pan></p><p class=3DMsoPlainText =
style=3D'margin-left:33.75pt;text-indent:-18.0pt'><span =
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
style=3D'margin-left:33.75pt;text-indent:-18.0pt'><span =
style=3D'font-size:7.0pt;font-family:"Times New =
Roman","serif";color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'color:black'><o:p></o:p></span></p></div></body></html>

------=_NextPart_001_0001_01CED112.BDE0B5C0--

------=_NextPart_000_0000_01CED112.BDE0B5C0
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIh7DCCAyAw
ggKJoAMCAQICBDXe9M8wDQYJKoZIhvcNAQEFBQAwTjELMAkGA1UEBhMCVVMxEDAOBgNVBAoTB0Vx
dWlmYXgxLTArBgNVBAsTJEVxdWlmYXggU2VjdXJlIENlcnRpZmljYXRlIEF1dGhvcml0eTAeFw05
ODA4MjIxNjQxNTFaFw0xODA4MjIxNjQxNTFaME4xCzAJBgNVBAYTAlVTMRAwDgYDVQQKEwdFcXVp
ZmF4MS0wKwYDVQQLEyRFcXVpZmF4IFNlY3VyZSBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkwgZ8wDQYJ
KoZIhvcNAQEBBQADgY0AMIGJAoGBAMFdsVhnCGLuoJotHwhtkRRomAoe/toEbxOEYiHD0XzOnwXg
uAHwTjTs4oqVBGSs8WtTXwWzy2eAv0ICjv7dAQns4QAUT/z78AzdQ7pbK+EfgHCZFVeTFvEPl2q3
wmgjHMxNWTCsUR47ryvW7mNFe8XZX1DS41APOojnvxT94Me5AgMBAAGjggEJMIIBBTBwBgNVHR8E
aTBnMGWgY6BhpF8wXTELMAkGA1UEBhMCVVMxEDAOBgNVBAoTB0VxdWlmYXgxLTArBgNVBAsTJEVx
dWlmYXggU2VjdXJlIENlcnRpZmljYXRlIEF1dGhvcml0eTENMAsGA1UEAxMEQ1JMMTAaBgNVHRAE
EzARgQ8yMDE4MDgyMjE2NDE1MVowCwYDVR0PBAQDAgEGMB8GA1UdIwQYMBaAFEjmaPkr0rKV10fY
IyAQTzOYkJ/UMB0GA1UdDgQWBBRI5mj5K9KylddH2CMgEE8zmJCf1DAMBgNVHRMEBTADAQH/MBoG
CSqGSIb2fQdBAAQNMAsbBVYzLjBjAwIGwDANBgkqhkiG9w0BAQUFAAOBgQBYzinq/Pfetc4CuRe1
hdG54+CVzCUxDQCmkm5/tpJjnlCV0Zpv5BHeY4VumO6o/1rI01WyZnFX3sAh6z0qpyNJAQSGQnv8
7n+iFlK1Z2fTQNs7JliyKHc9rhR3Ydb6KmYnoA36p3Nc6nDxlCFlRF/6/O8paKmih3nvee9PrAd3
ODCCAz0wggKmoAMCAQICAwWw/zANBgkqhkiG9w0BAQUFADBOMQswCQYDVQQGEwJVUzEQMA4GA1UE
ChMHRXF1aWZheDEtMCsGA1UECxMkRXF1aWZheCBTZWN1cmUgQ2VydGlmaWNhdGUgQXV0aG9yaXR5
MB4XDTA2MDIxNjE4MDEzMFoXDTE2MDIxOTE4MDEzMFowUjELMAkGA1UEBhMCVVMxGjAYBgNVBAoT
EUludGVsIENvcnBvcmF0aW9uMScwJQYDVQQDEx5JbnRlbCBFeHRlcm5hbCBCYXNpYyBQb2xpY3kg
Q0EwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDBpd/XOb9QVqEZ8mQ1042TdOIq3ATD
IsV2xDyt30yLyMR5Wjtus0bn3B+he89BiNO/LP6+rFzEwlD55PlX+HLGIKeNNG97dqyc30FElEUj
ZzTZFq2N4e3kVJ/XAEEgANzV8v9qp7qWwxugPgfc3z9BkYot+CifozexHLb/hEZj+yISCU61kRZv
uSQ0E11yYL4dRgcglJeaHo3oX57rvIckaLsYV5/1Aj+R8DM1Ppk965XQAKsHfnyT7C4S50T4lVn4
lz36wOdNZn/zegG1zp41lnoTFfT4KuKVJH5x7YD1p6KbgJCKLovnujGuohquBNfdXKpZkvz6pGv+
iC1HawJdAgMBAAGjgaAwgZ0wDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBQaxgxKxEdvqNutK/D0
Vgaj7TdUDDA6BgNVHR8EMzAxMC+gLaArhilodHRwOi8vY3JsLmdlb3RydXN0LmNvbS9jcmxzL3Nl
Y3VyZWNhLmNybDAfBgNVHSMEGDAWgBRI5mj5K9KylddH2CMgEE8zmJCf1DAPBgNVHRMBAf8EBTAD
AQH/MA0GCSqGSIb3DQEBBQUAA4GBABMQOK2kVKVIlUWwLTdywJ+e2O+PC/uQltK2F3lRyrPfBn69
tOkIP4SgDJOfsxyobIrPLe75kBLw+Dom13OBDp/EMZJZ1CglQfVV8co9mT3aZMjSGGQiMgkJLR3j
Mfr900fXZKj5XeqCJ+JP0mEhJGEdVCY+FFlksJjV86fDrq1QMIIENjCCAx6gAwIBAgIBATANBgkq
hkiG9w0BAQUFADBvMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsT
HUFkZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5h
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
BgEFBQcBAQQuMCwwKgYIKwYBBQUHMAGGHmh0dHA6Ly9vY3NwLnRydXN0LXByb3ZpZGVyLmNvbTA1
BgNVHR4ELjAsoCowC4EJaW50ZWwuY29tMBugGQYKKwYBBAGCNxQCA6ALDAlpbnRlbC5jb20wDQYJ
KoZIhvcNAQEFBQADggEBACnCzaP9kqNSZ6IvBu1uUOhUj6tX5silt7Eg39Wpr8h5IxIHduZ+zCkR
xhJkccaM4jyqXJm312FPidIOetJwqOYDxe/Fne2Zs3JgnJtVBRXyMX8OkANfW0aUwvGzDGkkhJfM
t/T4MGvhxDZqD2bDOtw3Wes4g5z6nEm3H2LPKnf5uXdtq6V6uSBlVLV+i1+0f4UksP97HwE5wS4I
ibYpVcmOzhhpmCggEtiNOIrb0ktVrXnF07fTmQ8jW5ey7Tmwa4DC4WZKSVvqTkfX94eVRtkubipA
O04fTQvRKEnHcEAgCMPlFim0kNCLI9lBS+3xyr5qlilUy/fLEc7yN7HjQuAwggWKMIIEcqADAgEC
AgphHoC3AAAAAAAHMA0GCSqGSIb3DQEBBQUAMFIxCzAJBgNVBAYTAlVTMRowGAYDVQQKExFJbnRl
bCBDb3Jwb3JhdGlvbjEnMCUGA1UEAxMeSW50ZWwgRXh0ZXJuYWwgQmFzaWMgUG9saWN5IENBMB4X
DTA5MDUxNTE5MjUxM1oXDTE1MDUxNTE5MzUxM1owVjELMAkGA1UEBhMCVVMxGjAYBgNVBAoTEUlu
dGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5nIENB
IDNBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwY+AYuc47kg7OUdF+vVd8JVv3tXg
FHZBWk9nsKtwhD4UZrYocP/p0+PDE4iu0VN19bgFiKR0WbFRlUFZFZnlXJ7ZwJ0bMVaogQ4TV7Xu
c3HWMzxnoZkSpsNRL68G4+UEUcpChWbkFo0genKfZdnGrCNX2Pn9ysh8+sIay2T7bO1SFVLw4cSD
M7vzg+AP2k6AGecBtkeYQzUVhiZDqJtL6BUIfOhsNgb5hF5GIekUpYHGlS4/5fRZgXD8lrUlbs3y
kQsAUPDRQUFYWCK/VAi6x0u9LLyZywsnnDLTnQ5VzFKGqhTGHD/C/K66hDG+YQ+OFFrULahIKYY3
TTTcYyFBYwIDAQABo4ICXDCCAlgwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUqhZmr7c9VlNg
rg3C7fPuB8tRYH4wCwYDVR0PBAQDAgGGMBIGCSsGAQQBgjcVAQQFAgMBAAEwIwYJKwYBBAGCNxUC
BBYEFMIrCFPH6F0ywoKA6ZbAuCNCwBX5MBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMB8GA1Ud
IwQYMBaAFBrGDErER2+o260r8PRWBqPtN1QMMIG9BgNVHR8EgbUwgbIwga+ggayggamGTmh0dHA6
Ly93d3cuaW50ZWwuY29tL3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUy
MFBvbGljeSUyMENBLmNybIZXaHR0cDovL2NlcnRpZmljYXRlcy5pbnRlbC5jb20vcmVwb3NpdG9y
eS9DUkwvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwUG9saWN5JTIwQ0EuY3JsMIHjBggrBgEF
BQcBAQSB1jCB0zBjBggrBgEFBQcwAoZXaHR0cDovL3d3dy5pbnRlbC5jb20vcmVwb3NpdG9yeS9j
ZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwUG9saWN5JTIwQ0EuY3J0MGwG
CCsGAQUFBzAChmBodHRwOi8vY2VydGlmaWNhdGVzLmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRp
ZmljYXRlcy9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBQb2xpY3klMjBDQS5jcnQwDQYJKoZI
hvcNAQEFBQADggEBAJRj/V3QxLpU9OUhw6GjVdaHX3c8PmQkMlI92mEsdB0zWgoD7CEx0gGhjVXN
MMMr4L4TLglzKdrt+kLy5Waf9HP+L0xm3Jzup7M+1lOf1TI5G8mZ10f47H9HJwbB7dqCzyNR2ykQ
Kitg6QnJmSycMiVNVS9tHvDJj6AYlirFZeqtxUUSIyxa7z84iV/sXaABgwHDWRnnl2fiVYEgzRaq
9F5ak++Fh43tj7cwoR1IyRDtNmI1t91nkP/wp9Y0xMnhUeW06AIvWUDm3H8XhHX3bSySkvl67dKP
rnRFR7es5expXk3InMHAHfX7XOyaV5V0UPST8XD0fFdsBATfm5w3/sIwggZWMIIFPqADAgECAgoU
k1n3AAEAAF9GMA0GCSqGSIb3DQEBBQUAMFYxCzAJBgNVBAYTAlVTMRowGAYDVQQKExFJbnRlbCBD
b3Jwb3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWluZyBDQSAzQTAe
Fw0xMTA0MTAwNDUwMTVaFw0xNDAzMjUwNDUwMTVaMEExFzAVBgNVBAMTDlpoYW5nLCBKZXNzaWNh
MSYwJAYJKoZIhvcNAQkBFhdqZXNzaWNhLnpoYW5nQGludGVsLmNvbTCCASIwDQYJKoZIhvcNAQEB
BQADggEPADCCAQoCggEBAKa+dkoJ3IOg6wNoxQfo4QUiQ1Swy03i5fy/G2dZf1QUeTX7TRE0YxH5
ddI5+3R012JQawhHDtAZTtCjH4vTGMYI9QqOQcHUUVTROJqgOm/Gww6PWZrw6pPtI6BioyqNROjU
iYCncRh72Q7DApt/Xal90yLhU2rrgtxM87Ak5cKPdRJ7W6NcxI14KCO70pHMf7nOq+0EEweWrnz2
fzdf+lwPmYG68J+2MrVlWZ8HtC3bFU8x5nxhbkAguWzn+5V/4uMigQoO/7XTY9FbeKzydZcz3qAe
tA7tz2ghJHBdigr24h+aFUJb5smXhKlJbI3Lx8EofmXyyla0JCjpLId6XGcCAwEAAaOCAzkwggM1
MAsGA1UdDwQEAwIEMDBEBgkqhkiG9w0BCQ8ENzA1MA4GCCqGSIb3DQMCAgIAgDAOBggqhkiG9w0D
BAICAIAwBwYFKw4DAgcwCgYIKoZIhvcNAwcwHQYDVR0OBBYEFFrRoBxGtuFe0cjYeTjWaC8mdRUc
MD0GCSsGAQQBgjcVBwQwMC4GJisGAQQBgjcVCIbDjHWEmeVRg/2BKIWOn1OCkcAJZ4S52UGHhP9O
AgFkAgEMMB8GA1UdIwQYMBaAFKoWZq+3PVZTYK4Nwu3z7gfLUWB+MIHPBgNVHR8EgccwgcQwgcGg
gb6ggbuGV2h0dHA6Ly93d3cuaW50ZWwuY29tL3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJu
YWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUyMDNBKDEpLmNybIZgaHR0cDovL2NlcnRpZmljYXRl
cy5pbnRlbC5jb20vcmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNz
dWluZyUyMENBJTIwM0EoMSkuY3JsMIH1BggrBgEFBQcBAQSB6DCB5TBsBggrBgEFBQcwAoZgaHR0
cDovL3d3dy5pbnRlbC5jb20vcmVwb3NpdG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5h
bCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIwM0EoMSkuY3J0MHUGCCsGAQUFBzAChmlodHRwOi8v
Y2VydGlmaWNhdGVzLmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRpZmljYXRlcy9JbnRlbCUyMEV4
dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQSgxKS5jcnQwHwYDVR0lBBgwFgYIKwYB
BQUHAwQGCisGAQQBgjcKAwQwKQYJKwYBBAGCNxUKBBwwGjAKBggrBgEFBQcDBDAMBgorBgEEAYI3
CgMEMEsGA1UdEQREMEKgJwYKKwYBBAGCNxQCA6AZDBdqZXNzaWNhLnpoYW5nQGludGVsLmNvbYEX
amVzc2ljYS56aGFuZ0BpbnRlbC5jb20wDQYJKoZIhvcNAQEFBQADggEBAAVrYvg2/Qva9YsjRnEm
1ln0HxGtId6+oDLfa3iUD15fTM9WndhkFX5/RsKk0kQAknBr/DlzDs2h73gsfLvF4M/VHqfVJ5NM
102Tja28805aat0rtarzs7QklHvfvlPj+nSmKJSLr0NyydaGKXqoftEKuhnyhVHLNBXTHcCTiitg
WCUqnVibR+ezs3BRj3HELY6qmKnKt92ZRpzMldEfbj/Qn6ZdMteaq8Cd5jZlosNdvDd7+zRV5Wo4
lFXwKeG+f4X/H6gTVxY79lK002Xz3RG7vsOIW6DdrvXc07W7oNS1ZsVz8tcG5H5LxniPeqR4Nwb9
NeI/PbPwMgo4ETM4W5wwggZyMIIFWqADAgECAgofzX8BAAIAABdlMA0GCSqGSIb3DQEBBQUAMHkx
CzAJBgNVBAYTAlVTMQswCQYDVQQIEwJDQTEUMBIGA1UEBxMLU2FudGEgQ2xhcmExGjAYBgNVBAoT
EUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5n
IENBIDRBMB4XDTEzMDcyMjIyMzYyOVoXDTE2MDcwNjIyMzYyOVowQTEXMBUGA1UEAxMOWmhhbmcs
IEplc3NpY2ExJjAkBgkqhkiG9w0BCQEWF2plc3NpY2EuemhhbmdAaW50ZWwuY29tMIIBIjANBgkq
hkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAus8+rXFM8Hk6niQ3hvGG0u4Scg0bT919KmcyohSpUB5c
21TwlRzLyVPF91DX2dRBMuLK3RS52f/UC/FmP8PUehjLJUUQVhvdyb8PeqcSc203mX8IZgrEOIJj
P88qNxDvey6DU8db4aKW2Gl3AHQFEY+9ewujp28NvxCB0rAea+B83CIqGjyk2gSizmBs8zR99cnw
E76r3eiDUEa0PTjLRSUkvhGOpeesdqkbzJv1V2Zpf5UqIKcZ6Y482GpA5dv89CyWbAwQ4x2ezEEP
2EjlWlyaqF3Eg+ecCOVr5ScUAGgqisjDh6Asi8US2jX6GIgZSxCqYxo4+v67QVGYhXgqwQIDAQAB
o4IDMjCCAy4wRAYJKoZIhvcNAQkPBDcwNTAOBggqhkiG9w0DAgICAIAwDgYIKoZIhvcNAwQCAgCA
MAcGBSsOAwIHMAoGCCqGSIb3DQMHMB0GA1UdDgQWBBRqasYYBj1SFQNYkQLBh9HD6hYU1DALBgNV
HQ8EBAMCB4AwHwYDVR0jBBgwFoAUHmkqtNwo/kcYTiELP7ysES/wmPUwgckGA1UdHwSBwTCBvjCB
u6CBuKCBtYZUaHR0cDovL3d3dy5pbnRlbC5jb20vcmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRl
cm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIwNEEuY3Jshl1odHRwOi8vY2VydGlmaWNhdGVz
LmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1
aW5nJTIwQ0ElMjA0QS5jcmwwgfUGCCsGAQUFBwEBBIHoMIHlMGwGCCsGAQUFBzAChmBodHRwOi8v
d3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRpZmljYXRlcy9JbnRlbCUyMEV4dGVybmFsJTIw
QmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjA0QSgyKS5jcnQwdQYIKwYBBQUHMAKGaWh0dHA6Ly9jZXJ0
aWZpY2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJu
YWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUyMDRBKDIpLmNydDA8BgkrBgEEAYI3FQcELzAtBiUr
BgEEAYI3FQiGw4x1hJnlUYP9gSiFjp9TgpHACWeB3r05lfBDAgFkAgEIMB8GA1UdJQQYMBYGCCsG
AQUFBwMEBgorBgEEAYI3CgMMMCkGCSsGAQQBgjcVCgQcMBowCgYIKwYBBQUHAwQwDAYKKwYBBAGC
NwoDDDBLBgNVHREERDBCoCcGCisGAQQBgjcUAgOgGQwXamVzc2ljYS56aGFuZ0BpbnRlbC5jb22B
F2plc3NpY2EuemhhbmdAaW50ZWwuY29tMA0GCSqGSIb3DQEBBQUAA4IBAQCF84CjyCAe8e3a2LDc
2s/FMs5/f3/n9XBhyufKMFbl69YKSGHzjR+nA3M3oS6CRJUyKk02WovgcnSu1OUcHb5aARn2f7He
wLwHRatdtUD2QzDjOEbtn5vrvxHEY28cAmrQBgdg4FhjO2z7/eiAoUrj96P0cqeNfxHTu+ku24Jl
5FSbr2YpSQdIoDCaLlMz4M349n/semekzJN00AjxGW6rls77R81ktfmJhcpBVLQdWjpJm2yJ0t5s
NdiwigbAOfAtRmbyHPEpmQ0Z3enZWiYrw+VXNzCW4WL1WADt/9c4aAdfGcY75bI3oEK3oG8InWmZ
2MfdADgxJxW1ZokJsHxiMYIDcDCCA2wCAQEwgYcweTELMAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNB
MRQwEgYDVQQHEwtTYW50YSBDbGFyYTEaMBgGA1UEChMRSW50ZWwgQ29ycG9yYXRpb24xKzApBgNV
BAMTIkludGVsIEV4dGVybmFsIEJhc2ljIElzc3VpbmcgQ0EgNEECCh/NfwEAAgAAF2UwCQYFKw4D
AhoFAKCCAb0wGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTMxMDI1
MDY0MjQ2WjAjBgkqhkiG9w0BCQQxFgQUwdI64RDoKVRDKlVP2zw1JD4VvmEwcgYJKoZIhvcNAQkP
MWUwYzALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAoGCCqGSIb3DQMHMAsGCWCGSAFlAwQBAjAH
BgUrDgMCGjALBglghkgBZQMEAgMwCwYJYIZIAWUDBAICMAsGCWCGSAFlAwQCATBzBgkrBgEEAYI3
EAQxZjBkMFYxCzAJBgNVBAYTAlVTMRowGAYDVQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UE
AxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWluZyBDQSAzQQIKFJNZ9wABAABfRjB1BgsqhkiG
9w0BCRACCzFmoGQwVjELMAkGA1UEBhMCVVMxGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSsw
KQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5nIENBIDNBAgoUk1n3AAEAAF9GMA0G
CSqGSIb3DQEBAQUABIIBAEnAQbJvsP0PtudWHwjV3tZ/uIh0ktr5Sq1LSc2V4TtSQTx3TXBhpKnL
JMzfGuqudjkmwtzU9oK+jEZIJ/X3yeMuEzIN6AKz/vRqxyR6Bsbyh9tMVGbZmV0rfmBi0u4s1p7S
qDpSb8CrYgO5BrftQHOPDXj/jqIBnoTY0q4Av9GvmgxdJEAkSZTOzgGIe0/VUlWT+eO+3Fm9BAx3
3fb7xzdmVHP1sCkSdESPCJ01FgieK554xWxSFN6BxS2ljFfV5FZ+k8rx2IXgV6aTWy5HUQsSOn/Q
7tZtY10lr1Y37u4mYKk5+FOF3Puturn6SOpKPWoTVtV4qluAF/dKUruFlLUAAAAAAAA=

------=_NextPart_000_0000_01CED112.BDE0B5C0--
