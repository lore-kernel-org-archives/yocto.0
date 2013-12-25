Return-Path: <rohit2.jindal@aricent.com>
Received: from jaguar.aricent.com (jaguar.aricent.com [121.241.96.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31178E0083F
	for <yocto@yoctoproject.org>; Wed, 25 Dec 2013 03:37:56 -0800 (PST)
Received: from jaguar.aricent.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 3FB6436BDE;
	Wed, 25 Dec 2013 17:07:34 +0530 (IST)
Received: from GUREXHT01.ASIAN.AD.ARICENT.COM (gurexht01.asian.ad.aricent.com
	[10.203.171.136]) (using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(No client certificate requested)
	by jaguar.aricent.com (Postfix) with ESMTP id 29E4F36BDC;
	Wed, 25 Dec 2013 17:07:34 +0530 (IST)
Received: from GUREXMB01.asian.ad.aricent.com ([10.203.171.132]) by
	GUREXHT01.ASIAN.AD.ARICENT.COM ([10.203.171.136]) with mapi;
	Wed, 25 Dec 2013 17:07:34 +0530
From: Rohit2 Jindal <rohit2.jindal@aricent.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Date: Wed, 25 Dec 2013 17:07:32 +0530
Thread-Topic: Passing more than one md5sum in yocto
Thread-Index: Ac8BZbMiiiVE9KFpQpiMxjd2ghWaMw==
Message-ID: <17797116383D4341B029FDF34C22BF6A72C5687008@GUREXMB01.ASIAN.AD.ARICENT.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-TM-AS-MML: No
Subject: Passing more than one md5sum in yocto
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
X-List-Received-Date: Wed, 25 Dec 2013 11:38:02 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_17797116383D4341B029FDF34C22BF6A72C5687008GUREXMB01ASIA_"

--_000_17797116383D4341B029FDF34C22BF6A72C5687008GUREXMB01ASIA_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Can u suggest me a way that we can pass more than one md5sum in yocto for t=
wo different sources to be downloaded.

SRC_URI =3D "\
     http://ftp.gnu.org/gnu/glibc/glibc-ports-2.13.tar.gz\
        http://ftp.gnu.org/gnu/glibc/glibc-2.13.tar.gz\
"
SRC_URI[md5sum] =3D "094e3c9b57da605917a780ab24575187"
SRC_URI[sha256sum] =3D "41cbdc05bd7b233464d649b59b34405e5bf3998522640b9f98f=
2c4eb91e87322"
SRC_URI[md5sum] =3D "fafabe01cb9748acb0a11a6879ebaa7e"
SRC_URI[sha256sum] =3D "bd90d6119bcc2898befd6e1bbb2cb1ed3bb1c2997d5eaa6fdbc=
a4ee16191a906"

I want to do like this but everytime it gives error due to glibc-ports it s=
ay mismatch of md5sum as it consider md5sum as fafb...


I tried to make it separated but that also doesnot work


SRC_URI =3D "\
     https://launchpad.net/glibc/head/2.13/+download/glibc-ports-2.13.tar.g=
z"


SRC_URI[md5sum] =3D "094e3c9b57da605917a780ab24575187"
SRC_URI[sha256sum] =3D "41cbdc05bd7b233464d649b59b34405e5bf3998522640b9f98f=
2c4eb91e87322"

SRC_URI +=3D "https://launchpad.net/glibc/head/2.13/+download/glibc-2.13.ta=
r.gz"
SRC_URI[md5sum] +=3D "fafabe01cb9748acb0a11a6879ebaa7e"
SRC_URI[sha256sum] +=3D "bd90d6119bcc2898befd6e1bbb2cb1ed3bb1c2997d5eaa6fdb=
ca4ee16191a906"


Please help me out suggesting the proper way.

Regards,
Rohit Jindal




=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
Please refer to http://www.aricent.com/legal/email_disclaimer.html
for important disclosures regarding this electronic communication.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

--_000_17797116383D4341B029FDF34C22BF6A72C5687008GUREXMB01ASIA_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
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
<p class=3D"MsoNormal">Can u suggest me a way that we can pass more than on=
e md5sum in yocto for two different sources to be downloaded.<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SRC_URI =3D &quot;\<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; http://ftp.gnu.org/gnu/glib=
c/glibc-ports-2.13.tar.gz\<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; http://ft=
p.gnu.org/gnu/glibc/glibc-2.13.tar.gz\<o:p></o:p></p>
<p class=3D"MsoNormal">&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SRC_URI[md5sum] =3D &quot;094e3c9b57da605917a780ab24=
575187&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SRC_URI[sha256sum] =3D &quot;41cbdc05bd7b233464d649b=
59b34405e5bf3998522640b9f98f2c4eb91e87322&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SRC_URI[md5sum] =3D &quot;fafabe01cb9748acb0a11a6879=
ebaa7e&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SRC_URI[sha256sum] =3D &quot;bd90d6119bcc2898befd6e1=
bbb2cb1ed3bb1c2997d5eaa6fdbca4ee16191a906&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I want to do like this but everytime it gives error =
due to glibc-ports it say mismatch of md5sum as it consider md5sum as fafb&=
#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I tried to make it separated but that also doesnot w=
ork<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SRC_URI =3D &quot;\<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; https://launchpad.net/glibc=
/head/2.13/&#43;download/glibc-ports-2.13.tar.gz&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SRC_URI[md5sum] =3D &quot;094e3c9b57da605917a780ab24=
575187&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SRC_URI[sha256sum] =3D &quot;41cbdc05bd7b233464d649b=
59b34405e5bf3998522640b9f98f2c4eb91e87322&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SRC_URI &#43;=3D &quot;https://launchpad.net/glibc/h=
ead/2.13/&#43;download/glibc-2.13.tar.gz&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal">SRC_URI[md5sum] &#43;=3D &quot;fafabe01cb9748acb0a11=
a6879ebaa7e&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SRC_URI[sha256sum] &#43;=3D &quot;bd90d6119bcc2898be=
fd6e1bbb2cb1ed3bb1c2997d5eaa6fdbca4ee16191a906&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please help me out suggesting the proper way.<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Rohit Jindal<o:p></o:p></p>
</div>
<br>
<font face=3D"Arial" color=3D"Gray" size=3D"2"><br>
<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
Please refer to http://www.aricent.com/legal/email_disclaimer.html<br>
for important disclosures regarding this electronic communication.<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
</font>
</body>
</html>

--_000_17797116383D4341B029FDF34C22BF6A72C5687008GUREXMB01ASIA_--
