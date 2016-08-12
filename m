Return-Path: <Shrawan.Kumar@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F5B6E012F3; Fri, 12 Aug 2016 05:39:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.16 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 393 seconds by postgrey-1.32 at yocto-www;
	Fri, 12 Aug 2016 05:39:55 PDT
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6580BE00F5B
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2016 05:39:55 -0700 (PDT)
Received: from [216.82.250.83] by server-16.bemta-12.messagelabs.com id
	2D/45-14081-212CDA75; Fri, 12 Aug 2016 12:33:22 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupmleJIrShJLcpLzFFi42LxThM+pitwaG2
	4wYPP+haTXq5hc2D0aD/RxxbAGMWamZeUX5HAmnFnbTdTwT3/ih8dE5gbGDs9uhi5OIQEtjBK
	tP87xA7nbNn7mBHCOcgosWHlNOYuRk4ONgFDiSs9dxlBbBEBU4kXx76wgdjCAtES1xesZIKIJ
	0isXLCRFcLWkzjcuoMFxGYRUJW4e3gDWJxXwF1izrav7CA2o4CsxJfG1WDzmQXEJW49mQ82R0
	JAQGLJnvPMELaoxMvH/1ghbAOJrUv3sUDYChIruxvYIHpzJOZ3b2WDmC8ocXLmE7AaIaC9Wxb
	+ZpnAKDwLyYpZSFpmIWmBiOtJ3Jg6hQ3C1pZYtvA1M4StKzHj3yEWZPEFjOyrGNWLU4vKUot0
	zfWSijLTM0pyEzNzdA0NjfRyU4uLE9NTcxKTivWS83M3MQIjiQEIdjBunuR8iFGSg0lJlPfKr
	rXhQnxJ+SmVGYnFGfFFpTmpxYcYZTg4lCR4RQ4C5QSLUtNTK9Iyc4AxDZOW4OBREuENAknzFh
	ck5hZnpkOkTjEqSonzcoIkBEASGaV5cG2wNHKJUVZKmJcR6BAhnoLUotzMElT5V4ziHIxKwrx
	SIFN4MvNK4Ka/AlrMBLT4hNkakMUliQgpqQbGdan3Sn6rz+aZ8VyWvyT3rRi/n7zlmePGv5kU
	k7b/Ov1O6kOn9LPkxCiXi1mXznTr1D+y3dy7e8XF9bHBKx67KJZZcn7zPdl4d8VTibalovKxz
	Ec0NvtOWuB35t36CiXZdbZJjg9ns29KMupWPGniWCp8IrHRUePGhiey+3hcnxceVLG7JPFGia
	U4I9FQi7moOBEAD36N3R4DAAA=
X-Env-Sender: Shrawan.Kumar@harman.com
X-Msg-Ref: server-14.tower-120.messagelabs.com!1471005199!65476283!1
X-Originating-IP: [75.102.19.198]
X-StarScan-Received: 
X-StarScan-Version: 8.77; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 27305 invoked from network); 12 Aug 2016 12:33:20 -0000
Received: from unknown.ord.scnet.net (HELO HICGWSEXHC02.ad.harman.com)
	(75.102.19.198)
	by server-14.tower-120.messagelabs.com with AES128-SHA encrypted SMTP;
	12 Aug 2016 12:33:20 -0000
Received: from HIBDWSMB05.ad.harman.com (10.99.236.95) by
	HICGWSEXHC02.ad.harman.com (10.10.23.73) with Microsoft SMTP Server
	(TLS) id 14.3.235.1; Fri, 12 Aug 2016 07:33:19 -0500
Received: from HIBDWSMB02.ad.harman.com (10.99.236.92) by
	HIBDWSMB05.ad.harman.com (10.99.236.95) with Microsoft SMTP Server
	(TLS) id 15.0.1130.7; Fri, 12 Aug 2016 18:03:16 +0530
Received: from HIBDWSMB02.ad.harman.com ([fe80::5058:c273:dbeb:fa1b]) by
	HIBDWSMB02.ad.harman.com ([fe80::5058:c273:dbeb:fa1b%16]) with mapi id
	15.00.1130.005; Fri, 12 Aug 2016 18:03:16 +0530
From: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Access Control List (ACL)  permissions attributes not getting
	preserved in rootfs
Thread-Index: AdH0lbJLCU4V6LiVT3ua3Ni6EEpdCA==
Date: Fri, 12 Aug 2016 12:33:15 +0000
Message-ID: <9eea2233da3d4fbd8722005093c1311d@HIBDWSMB02.ad.harman.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.99.236.43]
MIME-Version: 1.0
Subject: Access Control List (ACL) permissions attributes not getting preserved in rootfs
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
X-List-Received-Date: Fri, 12 Aug 2016 12:39:59 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9eea2233da3d4fbd8722005093c1311dHIBDWSMB02adharmancom_"

--_000_9eea2233da3d4fbd8722005093c1311dHIBDWSMB02adharmancom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello All,

I am  using  poky " jethro"  , and  though  one of my recipe, I have create=
d user1 & user2 and then trying to set ACL rules  on "helloworld" bin as be=
low :


do_install() {
                    install -d ${D}${bindir}
                    install -m 0700 helloworld ${D}${bindir}
                    install -d ${D}/lib/systemd/system
                    install -m 0700 hello.service ${D}/lib/systemd/system/
                    chown    user1:group1 ${D}${bindir}/helloworld
                   setfacl -m u:user2:r-- ${D}${bindir}/helloworld
}



=E8 When I see   on the devshell ( bitbake HelloWorld -c devshell)  : poky/=
build_qemux86/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/=
usr/bin# getfacl helloworld    , I could see that ACL permissions are set c=
orrectly as below :

-        # file: helloworld

-        # owner: user1

-        # group: group1

-        user::rwx

-        user:user2:r--

-        group::---

-        mask::r--

-        other::---

However, It does not seems to be getting preserved in rootfs. :
/poky/build_qemux86/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/r=
ootfs/usr/bin# getfacl helloworld
# file: helloworld
# owner: user1
# group: group1
user::rwx
group::---
other::---

quick help  here would be highly appreciated


Thanks & Regards
Shrawan

--_000_9eea2233da3d4fbd8722005093c1311dHIBDWSMB02adharmancom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:639193884;
	mso-list-type:hybrid;
	mso-list-template-ids:-220421728 1217326338 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:Calibri;}
@list l1
	{mso-list-id:650987086;
	mso-list-type:hybrid;
	mso-list-template-ids:-1868037082 1310900932 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F0E8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am &nbsp;using &nbsp;poky &#8220; jethro&#8221; &n=
bsp;, and &nbsp;though &nbsp;one of my recipe, I have created user1 &amp; u=
ser2 and then trying to set ACL rules &nbsp;on &#8220;helloworld&#8221; bin=
 as below :
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">do_install() {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; install -d ${D}${=
bindir}<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; install -m 0700 h=
elloworld ${D}${bindir}<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; install -d ${D}/l=
ib/systemd/system<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; install -m 0700 h=
ello.service ${D}/lib/systemd/system/<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; chown&nbsp;&nbsp;=
&nbsp; user1:group1 ${D}${bindir}/helloworld<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;setfacl -m u:user2=
:r-- ${D}${bindir}/helloworld<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo2"><![if !supportLists]><span style=3D"font-family:Wingdings"><span st=
yle=3D"mso-list:Ignore">=E8<span style=3D"font:7.0pt &quot;Times New Roman&=
quot;">
</span></span></span><![endif]>When I see&nbsp; &nbsp;on the devshell ( bit=
bake HelloWorld &#8211;c devshell) &nbsp;: poky/build_qemux86/tmp/work/qemu=
x86-poky-linux/core-image-minimal/1.0-r0/rootfs/usr/bin#
<b>getfacl helloworld&nbsp;&nbsp;&nbsp; </b>, I could see that ACL permissi=
ons are set correctly as below :<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;
</span></span><![endif]># file: helloworld<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;
</span></span><![endif]># owner: user1<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;
</span></span><![endif]># group: group1<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;
</span></span><![endif]>user::rwx<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;
</span></span><![endif]>user:user2:r--<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;
</span></span><![endif]>group::---<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;
</span></span><![endif]>mask::r--<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;
</span></span><![endif]>other::---<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">However, It does not seems to be getting preserved i=
n rootfs. :
<o:p></o:p></p>
<p class=3D"MsoNormal">/poky/build_qemux86/tmp/work/qemux86-poky-linux/core=
-image-minimal/1.0-r0/rootfs/usr/bin# getfacl helloworld
<o:p></o:p></p>
<p class=3D"MsoNormal"># file: helloworld<o:p></o:p></p>
<p class=3D"MsoNormal"># owner: user1<o:p></o:p></p>
<p class=3D"MsoNormal"># group: group1<o:p></o:p></p>
<p class=3D"MsoNormal">user::rwx<o:p></o:p></p>
<p class=3D"MsoNormal">group::---<o:p></o:p></p>
<p class=3D"MsoNormal">other::---<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">quick help &nbsp;here would be highly appreciated <o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks &amp; Regards<o:p></o:p></p>
<p class=3D"MsoNormal">Shrawan<o:p></o:p></p>
</div>
</body>
</html>

--_000_9eea2233da3d4fbd8722005093c1311dHIBDWSMB02adharmancom_--
