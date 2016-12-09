Return-Path: <alankar.dhobale@renuelectronics.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93F7DE00C5B; Fri,  9 Dec 2016 05:00:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, RCVD_IN_SORBS_SPAM,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.208.4.196 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.208.4.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mout.perfora.net (mout.perfora.net [74.208.4.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65FCCE00B96
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2016 05:00:42 -0800 (PST)
Received: from Alankard ([58.68.32.82]) by mrelay.perfora.net (mreueus002
	[74.208.5.2]) with ESMTPA (Nemesis) id 0MRELZ-1c5Bko2ulz-00UeRD;
	Fri, 09 Dec 2016 14:00:39 +0100
From: "Alankar Dhobale" <alankar.dhobale@renuelectronics.com>
To: "'Burton, Ross'" <ross.burton@intel.com>
References: <02e201d25213$77eea330$67cbe990$@renuelectronics.com>
	<CAJTo0LaXozB7S1XJbWv1jzutoLWQPQ-QHMhB2x6mEBqDuTvm-A@mail.gmail.com>
In-Reply-To: <CAJTo0LaXozB7S1XJbWv1jzutoLWQPQ-QHMhB2x6mEBqDuTvm-A@mail.gmail.com>
Date: Fri, 9 Dec 2016 18:34:34 +0530
Message-ID: <02f901d2521c$cb62d6e0$622884a0$@renuelectronics.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQHLzPqrt13MCjx7jE7049VqMg5LHQI8Gr5BoPq8w9A=
X-Provags-ID: V03:K0:NazTNHZ+Z7+E1oYU1kz3qTfyDYRrXfRtN9jg51I8Ml029MT7UeR
	V81MROnzV96yFYaNQYjpa1T8Wk5IgYxY06jJmqxuWqAoMSvpnbQeGSoRCexAQmTRO+FM8cm
	zaoa+mhnPY1K8wvRnXQ7WtExRlNEEjxpPJZCAwVGe6y7hXRP8ouOLgiYQk+kUCEqj/Sk6ql
	LL+KzaumpX2Y935ErmgnQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:DRMzwqz6jKo=:VUskeU/uXrncAerwKoFeiJ
	d8VtAQJQz2k//F1ODbMsc5ieQR4JZAe+QFt1Izpfp1sgiQN4ADHzCnbCQMZ72EITQV3H942bk
	67GY/rPk42P1APn6icpgMuLoiSvKVWuzB0mMCQR+QwOyR6NIjpLdpvksZwbPM8IKe8D1k6P78
	oA5hVY5CRXsiN1INsX+FW7RtioocJRgai9NJmyM4lKrS5T1V+GdnvgyVNqjBgAK++Vol/BICk
	prEyFCntFL0pzGbrmqxMd5ouap+lVSTnONrA6yzklPeUQNAH++V6ClcTqW+FZpvyBmmHjHut+
	AaMZnuVPSdF82thVb4QDvF9Vd71pZCfhkEa71oOFCzLH9vXwz5u7MPGzO3314iWBmU96qRgYv
	gcljUYViCOUQ1lcK/SlE5b6jPqJRJwpdN4kifh6cdBEBAh8yObhyEAYvEZ9K8erndad2pUDgB
	EMuHg1IkFaxOP8FnLX9GzoHHU4Y7oynruFvQklnKUXofcmy7yqBr7AZokK4ophffNrUWFz/sb
	kT9MeaJ3v9XPOTJ7c9HQjz5eKAMsAaqEWgF7Q9McvuQBGdJsVWatZabjH14006jvsyk0Bbdkz
	e7ayLJUkp3Z8fLN8JDr/XDM+nBtSntcYbzuQmSJgJ83AQ4/HHH6Q/tqKXDgwHV8TWm8bgTmvs
	XvmU53bdkQ8EKn49NR8AcoGJWFleNfHQyLoCDmwAWJ5aij4Xq0ld55iGX2YPYm5puQu5J702q
	ytHkKScUAarnKpUiOh9vuDL0EJ/zZUSPSoxo6A==
Cc: yocto@yoctoproject.org
Subject: Re: Qt make: g++: Command not found issue with SDK generated for soloX
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
X-List-Received-Date: Fri, 09 Dec 2016 13:00:47 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_02FA_01D2524A.E51CE7A0"
Content-Language: en-us

------=_NextPart_000_02FA_01D2524A.E51CE7A0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Ross,

=20

Thanks for your reply, but I did not get you, I actually sourced the =
setup script for the sdk toolchain installed at path =
/opt/poky/2.1.1/=E2=80=A6

=20

But I think =E2=80=9Cmake=E2=80=9D is somehow calling g++ instead of =
calling arm-poky-linux-gnueabi-g++. I am not sure about the generated =
sdk is correct?

=20

Alankar

=20

=20

From: Burton, Ross [mailto:ross.burton@intel.com]=20
Sent: 09/12/2016 6:05 PM
To: Alankar Dhobale
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Qt make: g++: Command not found issue with SDK =
generated for soloX

=20

As per the documentation, the compiler isn't just "gcc" but has the full =
platform triple in:

=20

http://www.yoctoproject.org/docs/2.1/sdk-manual/sdk-manual.html#makefile-=
based-projects

=20

One you've sourced the setup script these are set as $CC and so on, so =
your makefile should be using $CC instead of 'gcc'.

=20

Ross

=20

On 9 December 2016 at 11:57, Alankar Dhobale =
<alankar.dhobale@renuelectronics.com> wrote:

i have used following steps to get and build the BSP for soloX sabre =
board. i am using Krogoth branch to build the bsp and populate sdk

=20

https://github.com/Freescale/fsl-community-bsp-platform

=20

=20

then i added qt support in the build by following=20

=20

http://wiki.wandboard.org/index.php/Building_Qt5_using_yocto_on_Wandboard=


=20

=20

after that i bitbaked toolchain for this using following

$ bitbake meta-toolchain-qt5

=20

after this i generated sdk using following command

=20

$ bitbake <image-name> -c populate_sdk

=20

and then i installed the sdk on my development machine, it is installed =
under

/opt/poky/2.1.1/

=20

now i installed and setup latest Qt by using following steps

=20

https://community.nxp.com/thread/309578

=20

=20

After all this setup done, i created a simple console application and =
trying to build it, and i get an error as

=20

14:10:10: Running steps for project HelloWorld...
14:10:10: Configuration unchanged, skipping qmake step.
14:10:10: Starting: "/usr/bin/make"=20
g++ -c -pipe -O2 -std=3Dgnu++0x -Wall -W -D_REENTRANT -fPIC =
-DQT_NO_DEBUG -DQT_CORE_LIB -I../HelloWorld -I. =
-I/opt/poky/2.1.1/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include=
/qt5 =
-I/opt/poky/2.1.1/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include=
/qt5/QtCore -I. =
-I/opt/poky/2.1.1/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/qt5=
/mkspecs/linux-g++ -o main.o ../HelloWorld/main.cpp
make: g++: Command not found
make: *** [main.o] Error 127
14:10:10: The process "/usr/bin/make" exited with code 2.
Error while building/deploying project HelloWorld (kit: mx6solox)
The kit mx6solox has configuration issues which might be the root cause =
for this problem.
When executing step "Make"
14:10:10: Elapsed time: 00:00.

=20

i have googled a lot but could not find any solution on this.

=20

Can somebody please help on this...

=20

=20

Kind Regards,

Alankar Dhobale


--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

=20


------=_NextPart_000_02FA_01D2524A.E51CE7A0
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 14 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.m-7176079680622200282apple-converted-space
	{mso-style-name:m_-7176079680622200282apple-converted-space;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Hello Ross,<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Thanks for your reply, but I did not get you, I actually sourced the =
setup script for the sdk toolchain installed at path =
/opt/poky/2.1.1/=E2=80=A6<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>But I think =E2=80=9Cmake=E2=80=9D is somehow calling g++ instead of =
calling arm-poky-linux-gnueabi-g++. I am not sure about the generated =
sdk is correct?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Alankar<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
Burton, Ross [mailto:ross.burton@intel.com] <br><b>Sent:</b> 09/12/2016 =
6:05 PM<br><b>To:</b> Alankar Dhobale<br><b>Cc:</b> =
yocto@yoctoproject.org<br><b>Subject:</b> Re: [yocto] Qt make: g++: =
Command not found issue with SDK generated for =
soloX<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>As per =
the documentation, the compiler isn't just &quot;gcc&quot; but has the =
full platform triple in:<o:p></o:p></p><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal><a =
href=3D"http://www.yoctoproject.org/docs/2.1/sdk-manual/sdk-manual.html#m=
akefile-based-projects">http://www.yoctoproject.org/docs/2.1/sdk-manual/s=
dk-manual.html#makefile-based-projects</a><o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>One you've sourced the setup script these are set as =
$CC and so on, so your makefile should be using $CC instead of =
'gcc'.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Ross<o:p></o:p></p></div></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>On 9 =
December 2016 at 11:57, Alankar Dhobale &lt;<a =
href=3D"mailto:alankar.dhobale@renuelectronics.com" =
target=3D"_blank">alankar.dhobale@renuelectronics.com</a>&gt; =
wrote:<o:p></o:p></p><div><div><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>i have used following steps to get and build&nbsp;the BSP for soloX =
sabre board. i am using Krogoth branch to build the bsp and populate =
sdk</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;min-height:8pt;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'><a href=3D"https://github.com/Freescale/fsl-community-bsp-platform" =
target=3D"_blank">https://github.com/Freescale/fsl-community-bsp-platform=
</a></span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>then i added qt support in the build by =
following&nbsp;</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;min-height:8pt;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'><a =
href=3D"http://wiki.wandboard.org/index.php/Building_Qt5_using_yocto_on_W=
andboard" =
target=3D"_blank">http://wiki.wandboard.org/index.php/Building_Qt5_using_=
yocto_on_Wandboard</a></span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>after that i bitbaked toolchain for this using =
following</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>$ bitbake meta-toolchain-qt5</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;min-height:8pt;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>after this i generated sdk using following =
command</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;min-height:8pt;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>$ bitbake &lt;image-name&gt; -c =
populate_sdk</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;min-height:8pt;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>and then i installed the sdk on my development machine, it is =
installed under</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>/opt/poky/2.1.1/</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;min-height:8pt;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>now i installed and setup latest Qt by using following =
steps</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;min-height:8pt;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'><a href=3D"https://community.nxp.com/thread/309578" =
target=3D"_blank">https://community.nxp.com/thread/309578</a></span><o:p>=
</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>After all this setup done, i created a simple console application =
and trying to build it, and i get an error as</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;min-height:8pt;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>14:10:10: Running steps for project HelloWorld...<br>14:10:10: =
Configuration unchanged, skipping qmake step.<br>14:10:10: Starting: =
&quot;/usr/bin/make&quot;<span =
class=3Dm-7176079680622200282apple-converted-space>&nbsp;</span><br>g++ =
-c -pipe -O2 -std=3Dgnu++0x -Wall -W -D_REENTRANT -fPIC -DQT_NO_DEBUG =
-DQT_CORE_LIB -I../HelloWorld -I. =
-I/opt/poky/2.1.1/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include=
/qt5 =
-I/opt/poky/2.1.1/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include=
/qt5/QtCore -I. =
-I/opt/poky/2.1.1/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/qt5=
/mkspecs/linux-g++ -o main.o ../HelloWorld/main.cpp<br>make: g++: =
Command not found<br>make: *** [main.o] Error 127<br>14:10:10: The =
process &quot;/usr/bin/make&quot; exited with code 2.<br>Error while =
building/deploying project HelloWorld (kit: mx6solox)<br>The kit =
mx6solox has configuration issues which might be the root cause for this =
problem.<br>When executing step &quot;Make&quot;<br>14:10:10: Elapsed =
time: 00:00.</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;min-height:8pt;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>i have googled a lot but could not find any solution on =
this.</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;min-height:8pt;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>Can somebody please help on this...</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-size:10.0pt;color:black'>Kind =
Regards,</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><span =
style=3D'color:black'>Alankar =
Dhobale</span></b><o:p></o:p></p></div></div><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><br>--<br>________________________________=
_______________<br>yocto mailing list<br><a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><o:p><=
/o:p></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></div></body></html>

------=_NextPart_000_02FA_01D2524A.E51CE7A0--
