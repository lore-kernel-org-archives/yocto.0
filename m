Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4439BE00546; Mon,  2 Feb 2015 06:06:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [135.11.29.13 listed in list.dnswl.org]
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Mon, 02 Feb 2015 06:06:05 PST
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1151E002F9
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 06:06:05 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: ApcFAKGDz1TGmAcV/2dsb2JhbABbgkMhIlJPCgTCP4IdhXkCgRhDAQEBAQEBfIQOAQEDEhteARUVViYBBBsaiAsBr1eEf6AiDAEfj0eDToETBY8Jg06HJIUGjAkiggMbgVBvBYE/fgEBAQ
X-IronPort-AV: E=Sophos;i="5.09,506,1418101200"; 
	d="scan'208,217";a="104963280"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	02 Feb 2015 09:04:59 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC03.global.avaya.com) ([135.64.58.13])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	02 Feb 2015 09:04:52 -0500
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC03.global.avaya.com ([135.64.58.13]) with mapi id
	14.03.0174.001; Mon, 2 Feb 2015 09:04:50 -0500
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Bipnesh, Abhinav
	(Abhinav)" <abhinavbipnesh@avaya.com>
Thread-Topic: Need help for custom recipe
Thread-Index: AdA+8SkgOgALgmf8QQaX6T3wuY5FbQ==
Date: Mon, 2 Feb 2015 14:04:49 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A33DC69@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.48]
MIME-Version: 1.0
Subject: Need help for custom recipe
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
X-List-Received-Date: Mon, 02 Feb 2015 14:06:08 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F38A866CD026F746A3BF0928A84397BE3A33DC69AZFFEXMB01globa_"

--_000_F38A866CD026F746A3BF0928A84397BE3A33DC69AZFFEXMB01globa_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to write an custom recipe for one of the application. In the do=
_install() I am using an external script for creating rpm of the applicatio=
n. Below is the recipe file which I have written.

SUMMARY =3D "Hello World"
DESCRIPTION =3D "A recipe for HelloWorld"

LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf=
8506ecda2f7b4f302<file:///\\$%7bCOMMON_LICENSE_DIR%7d\MIT;md5=3D0835ade698e=
0bcf8506ecda2f7b4f302>

# Upstream names releases after SVN revs
#SRCREV =3D "100"
SRCREV =3D "${AUTOREV}"
PV =3D "r${SRCREV}"
DEPENDS =3D "boost util-linux curl"

SRC_URI =3D "file://helloworld.c"
S =3D "${WORKDIR}

do_install () {
    sh ${WORKDIR}/ build.sh

}

Now as this is a makefile based project. Now when I fire bitbake helloworld=
 I am able to build the RPM of the package using build.sh file.

But when I try to check these RPM under <build_dir>/tmp/deploy it is not fo=
und.

Any thoughts how to fix the same.

Thanks,
Abhinav

--_000_F38A866CD026F746A3BF0928A84397BE3A33DC69AZFFEXMB01globa_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to write an custom recipe for one of the=
 application. In the do_install() I am using an external script for creatin=
g rpm of the application. Below is the recipe file which I have written.<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SUMMARY =3D &quot;Hello World&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DESCRIPTION =3D &quot;A recipe for HelloWorld&quot;<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">LICENSE =3D &quot;MIT&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">LIC_FILES_CHKSUM =3D <a href=3D"file:///\\$%7bCOMMON=
_LICENSE_DIR%7d\MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302">
file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302</a>=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># Upstream names releases after SVN revs<o:p></o:p><=
/p>
<p class=3D"MsoNormal">#SRCREV =3D &quot;100&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SRCREV =3D &quot;${AUTOREV}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">PV =3D &quot;r${SRCREV}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DEPENDS =3D &quot;boost util-linux curl&quot;<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SRC_URI =3D &quot;file://helloworld.c&quot;<o:p></o:=
p></p>
<p class=3D"MsoNormal">S =3D &quot;${WORKDIR}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">do_install () {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; sh ${WORKDIR}/ build.sh<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now as this is a makefile based project. Now when I =
fire bitbake helloworld I am able to build the RPM of the package using bui=
ld.sh file.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But when I try to check these RPM under &lt;build_di=
r&gt;/tmp/deploy it is not found.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any thoughts how to fix the same.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Abhinav<o:p></o:p></p>
</div>
</body>
</html>

--_000_F38A866CD026F746A3BF0928A84397BE3A33DC69AZFFEXMB01globa_--
