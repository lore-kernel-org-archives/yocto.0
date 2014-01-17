Return-Path: <rohit2.jindal@aricent.com>
Received: from jaguar.aricent.com (jaguar.aricent.com [121.241.96.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC0D0E00876
	for <yocto@yoctoproject.org>; Thu, 16 Jan 2014 20:35:04 -0800 (PST)
Received: from jaguar.aricent.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 7FA9036B44;
	Fri, 17 Jan 2014 10:04:42 +0530 (IST)
Received: from GUREXHT01.ASIAN.AD.ARICENT.COM (gurexht01.asian.ad.aricent.com
	[10.203.171.136]) (using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(No client certificate requested)
	by jaguar.aricent.com (Postfix) with ESMTP id 69E6336B36;
	Fri, 17 Jan 2014 10:04:42 +0530 (IST)
Received: from GUREXMB01.asian.ad.aricent.com ([10.203.171.134]) by
	GUREXHT01.ASIAN.AD.ARICENT.COM ([10.203.171.136]) with mapi;
	Fri, 17 Jan 2014 10:04:42 +0530
From: Rohit2 Jindal <rohit2.jindal@aricent.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Date: Fri, 17 Jan 2014 10:04:41 +0530
Thread-Topic: Issue in combining configure options in different tunes
Thread-Index: Ac8Q9ce2aS6tlS+qTcWoWwD/HHopRQA0xmVgAC0ionAAL/wNcA==
Message-ID: <17797116383D4341B029FDF34C22BF6A72FEFCDF64@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <177AAA8C9A6604498BA86410157A63C95D7B680878@GUREXMB01.ASIAN.AD.ARICENT.COM>
In-Reply-To: <177AAA8C9A6604498BA86410157A63C95D7B680878@GUREXMB01.ASIAN.AD.ARICENT.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-TM-AS-MML: No
Cc: 'Paul Eggleton' <paul.eggleton@linux.intel.com>
Subject: Re: Issue in combining configure options in different tunes
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
X-List-Received-Date: Fri, 17 Jan 2014 04:35:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_17797116383D4341B029FDF34C22BF6A72FEFCDF64GUREXMB01ASIA_"

--_000_17797116383D4341B029FDF34C22BF6A72FEFCDF64GUREXMB01ASIA_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Please help me out!!!!!

From: Rohit2 Jindal
Sent: Thursday, January 16, 2014 11:10 AM
To: yocto@yoctoproject.org; Paul Eggleton; Marko Lindqvist
Subject: Issue in combining configure options in different tunes

Hi,

Actually I am able to build both elf(for xloader uboot) and linux toolchain=
(linux and userspace components) using tune mips32 and tune mips64-n32 with=
 the required libgcc libraries and other required headers.

Glibc libraries were also build using tune-mips64-n32 with different combin=
ations of abi arch and endianness.

Now my issue is to combine both the toolchain in single meta-xtoolchain lay=
er so that both can be build in one yocto workspace using single meta-xtool=
chain layer by just changing a variable in local.conf and all is done.

Example say Toolchain_var =3D"elf"
               DEFAULTTUNE=3D"mips32"
Build using the same gcc recipes the elf toolchain

Toolchain_var=3D"linux"
DEFAULTTUNE=3D"mips64-n32"
Build using the same gcc recipes the linux toolchain


EXTRA_OECONF_append_mips32=3D "${@bb.utils.contains(<mailto:$%7b@bb.utils.c=
ontains(>"Toolchain_var ", "elf", "put elf related extra_oeconf", "put linu=
x related extra_oeconf", d)}"

Is this type of thing possible to put EXTRA_OECONF configure options on the=
 basis of toolchian variable ?????? and this EXTRA_OECONF_append_mips32 or =
EXTRA_OECONF_append_mips64-n32 works???

Or tell me the way that I can add specific Configure options for gcc on the=
 basis of tune passed?????????????

Please help me out on the issue.

Thanks in advance!!!!

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

--_000_17797116383D4341B029FDF34C22BF6A72FEFCDF64GUREXMB01ASIA_
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
	panose-1:0 0 0 0 0 0 0 0 0 0;}
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle22
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Please help me out!!!!=
!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Rohit2 J=
indal
<br>
<b>Sent:</b> Thursday, January 16, 2014 11:10 AM<br>
<b>To:</b> yocto@yoctoproject.org; Paul Eggleton; Marko Lindqvist<br>
<b>Subject:</b> Issue in combining configure options in different tunes<o:p=
></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Actually I am able to build both elf(for xloader ubo=
ot) and linux toolchain(linux and userspace components) using tune mips32 a=
nd tune mips64-n32 with the required libgcc libraries and other required he=
aders.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Glibc libraries were also build using tune-mips64-n3=
2 with different combinations of abi arch and endianness.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now my issue is to combine both the toolchain in sin=
gle meta-xtoolchain layer so that both can be build in one yocto workspace =
using single meta-xtoolchain layer by just changing a variable in local.con=
f and all is done.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Example say Toolchain_var =3D&#8221;elf&#8221;<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DEFAULTTUNE=3D&#8221;mips32&#8221;<o:p></o=
:p></p>
<p class=3D"MsoNormal">Build using the same gcc recipes the elf toolchain <=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Toolchain_var=3D&#8221;linux&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal">DEFAULTTUNE=3D&#8221;mips64-n32&#8221;<o:p></o:p></p=
>
<p class=3D"MsoNormal">Build using the same gcc recipes the linux toolchain=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">EXTRA_OECONF_append_mips32=3D &#8220;<a href=3D"mail=
to:$%7b@bb.utils.contains(">${@bb.utils.contains(</a>&quot;Toolchain_var &q=
uot;, &#8220;elf&quot;, &quot;put elf related extra_oeconf&quot;, &quot;put=
 linux related extra_oeconf&quot;, d)}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is this type of thing possible to put EXTRA_OECONF c=
onfigure options on the basis of toolchian variable ?????? and this EXTRA_O=
ECONF_append_mips32 or EXTRA_OECONF_append_mips64-n32 works???<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Or tell me the way that I can add specific Configure=
 options for gcc on the basis of tune passed?????????????<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please help me out on the issue.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks in advance!!!!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Rohit Jindal<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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

--_000_17797116383D4341B029FDF34C22BF6A72FEFCDF64GUREXMB01ASIA_--
