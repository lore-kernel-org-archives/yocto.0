Return-Path: <alankar.dhobale@renuelectronics.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3573E00CC8; Fri,  9 Dec 2016 03:59:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, RCVD_IN_SORBS_SPAM,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.208.4.197 listed in dnsbl.sorbs.net]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.208.4.197 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0082]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 304 seconds by postgrey-1.32 at yocto-www;
	Fri, 09 Dec 2016 03:58:57 PST
Received: from mout.perfora.net (mout.perfora.net [74.208.4.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E690E00C4B
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2016 03:58:57 -0800 (PST)
Received: from Alankard ([58.68.32.82]) by mrelay.perfora.net (mreueus002
	[74.208.5.2]) with ESMTPA (Nemesis) id 0Ludx0-1cfgKt0Z9c-00zrBa for
	<yocto@yoctoproject.org>; Fri, 09 Dec 2016 12:53:52 +0100
From: "Alankar Dhobale" <alankar.dhobale@renuelectronics.com>
To: <yocto@yoctoproject.org>
Date: Fri, 9 Dec 2016 17:27:48 +0530
Message-ID: <02e201d25213$77eea330$67cbe990$@renuelectronics.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdJSE3TuZlTFTJjsR7CR3aOKEMELfQ==
X-Provags-ID: V03:K0:TUlIfQSEwS7XNL8ECFt25DHJhXrtGNmDgbpS3vwygzKLFaJPsoF
	G3ryroCq4/eTnfFB9msU1fN+WdHXbIo/wqLtl3xoPszzFM84G2irNbF+T8W0Pa4Gg40HYY8
	dkkrBHouQ0TfQ/wEof2CgFsxDnqQ+4ZRJnrKfgBIirNMut1ToU3wvzpwYQe6LYxNQcVrGwA
	8t9djBuRXs1JWvZqrT3BQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:/ymcj0xHAlI=:gxT76RYwX16Ehz97Zd49wp
	8JC/CZFv+vRVDmLrpkE+UhFBuqHP7895e9UMpzXW0ij7jvAHbHQdUifZxdAK1wA6xySENneEU
	UawwvrmlcA/O40rOdT15QbGrTY3q7fpSt4Zy0JSFn4sV2rACgmCAkn3lWgksGEqllsDK0Uanh
	jOOaX6i+k/0UXiA8oXDVRHSzG8Z/PCTO2sBAf+WN+e2KfF6QjVUITT2ZIThBTXgubhlSjykU4
	GW6o/ZeCdWyu9yaICVuIBrgQJlQhdfYmYUWVTJSupNY2ubELnm21vsoo6Vd0SpKhO4spuDtrJ
	79nC0InX6zAZV5hs55ANapp8B3CU1uMWv6ZG5JfvIt/xcDo4BYQPKChTSy20CNwEHA/EmdeJ8
	Dv9iU1YqZGu33KTjgN4izPhUvIE4Jyp1XrxJ3TBN9Nom/pryLM9y19YFFXiDc+Yv+Eb/hhMqv
	TQLG9AgVWJULTkHKrRK3C8gWV8CNv4DUlmmWpb63wIAs8kWt26QinG5Wlq8r1BSYYl3qu+xRU
	WvYX/DPz8IAwd/qK/BbyX9c4td0yz4Zi5Lk+m6xryml0nY/kQd9zPfo78t4GOr0B/J+TAUyC1
	6jWBx+hxpmE+tMAZ8EvEJ4bbZoCFQpLUfY7+885wC7CPlLvZ160nFSbs/Wdv5T+t316w/iL8M
	PnmCQRX6HGU3dy7d7iLFGBuAcflkn4cvDvHobEczrTTlxULF85gKfRPrVN+PL4Rv0LrWxfUjX
	qzBGfjQkgbUvT5vqyfLPjhTk2Kcg4ytN/p94Sg==
Subject: Qt make: g++: Command not found issue with SDK generated for soloX
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
X-List-Received-Date: Fri, 09 Dec 2016 11:59:00 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_02E3_01D25241.91A817B0"
Content-Language: en-us

------=_NextPart_000_02E3_01D25241.91A817B0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

i have used following steps to get and build the BSP for soloX sabre board.
i am using Krogoth branch to build the bsp and populate sdk

 

https://github.com/Freescale/fsl-community-bsp-platform

 

 

then i added qt support in the build by following 

 

http://wiki.wandboard.org/index.php/Building_Qt5_using_yocto_on_Wandboard

 

 

after that i bitbaked toolchain for this using following

$ bitbake meta-toolchain-qt5

 

after this i generated sdk using following command

 

$ bitbake <image-name> -c populate_sdk

 

and then i installed the sdk on my development machine, it is installed
under

/opt/poky/2.1.1/

 

now i installed and setup latest Qt by using following steps

 

https://community.nxp.com/thread/309578

 

 

After all this setup done, i created a simple console application and trying
to build it, and i get an error as

 

14:10:10: Running steps for project HelloWorld...
14:10:10: Configuration unchanged, skipping qmake step.
14:10:10: Starting: "/usr/bin/make" 
g++ -c -pipe -O2 -std=gnu++0x -Wall -W -D_REENTRANT -fPIC -DQT_NO_DEBUG
-DQT_CORE_LIB -I../HelloWorld -I.
-I/opt/poky/2.1.1/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt
5
-I/opt/poky/2.1.1/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt
5/QtCore -I.
-I/opt/poky/2.1.1/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/qt5/mk
specs/linux-g++ -o main.o ../HelloWorld/main.cpp
make: g++: Command not found
make: *** [main.o] Error 127
14:10:10: The process "/usr/bin/make" exited with code 2.
Error while building/deploying project HelloWorld (kit: mx6solox)
The kit mx6solox has configuration issues which might be the root cause for
this problem.
When executing step "Make"
14:10:10: Elapsed time: 00:00.

 

i have googled a lot but could not find any solution on this.

 

Can somebody please help on this...

 

 

Kind Regards,

Alankar Dhobale


------=_NextPart_000_02E3_01D25241.91A817B0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 =
(filtered medium)"><style><!--
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
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
vlink=3Dpurple><div class=3DWordSection1><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>i have used following steps to get and build&nbsp;the BSP for soloX =
sabre board. i am using Krogoth branch to build the bsp and populate =
sdk<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;min-height: 8pt;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'><a =
href=3D"https://github.com/Freescale/fsl-community-bsp-platform">https://=
github.com/Freescale/fsl-community-bsp-platform</a><o:p></o:p></span></p>=
<p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'><o:p>&nbsp;</o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>then i added qt support in the build by =
following&nbsp;<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;min-height: 8pt;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'><a =
href=3D"http://wiki.wandboard.org/index.php/Building_Qt5_using_yocto_on_W=
andboard">http://wiki.wandboard.org/index.php/Building_Qt5_using_yocto_on=
_Wandboard</a><o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'><o:p>&nbsp;</o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>after that i bitbaked toolchain for this using =
following<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>$ bitbake meta-toolchain-qt5<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;min-height: 8pt;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>after this i generated sdk using following =
command<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;min-height: 8pt;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>$ bitbake &lt;image-name&gt; -c =
populate_sdk<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;min-height: 8pt;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>and then i installed the sdk on my development machine, it is =
installed under<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>/opt/poky/2.1.1/<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;min-height: 8pt;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>now i installed and setup latest Qt by using following =
steps<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;min-height: 8pt;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'><a =
href=3D"https://community.nxp.com/thread/309578">https://community.nxp.co=
m/thread/309578</a><o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'><o:p>&nbsp;</o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>After all this setup done, i created a simple console application =
and trying to build it, and i get an error as<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;min-height: 8pt;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>14:10:10: Running steps for project HelloWorld...<br>14:10:10: =
Configuration unchanged, skipping qmake step.<br>14:10:10: Starting: =
&quot;/usr/bin/make&quot;<span =
class=3Dapple-converted-space>&nbsp;</span><br>g++ -c -pipe -O2 =
-std=3Dgnu++0x -Wall -W -D_REENTRANT -fPIC -DQT_NO_DEBUG -DQT_CORE_LIB =
-I../HelloWorld -I. =
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
time: 00:00.<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;min-height: 8pt;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>i have googled a lot but could not find any solution on =
this.<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;min-height: 8pt;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>&nbsp;<o:p></o:p></span></p><p =
style=3D'margin:0in;margin-bottom:.0001pt;background:white;vertical-align=
:baseline;word-wrap: break-word;font-variant-ligatures: =
normal;font-variant-caps: normal;orphans: 2;text-align:start;widows: =
2;-webkit-text-stroke-width: 0px;word-spacing:0px'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#516=
26F'>Can somebody please help on this...<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>Kind =
Regards,<o:p></o:p></span></p><p class=3DMsoNormal><b><span =
style=3D'color:black'>Alankar Dhobale</span></b><span =
style=3D'font-family:"Times New =
Roman","serif"'><o:p></o:p></span></p></div></body></html>

------=_NextPart_000_02E3_01D25241.91A817B0--
