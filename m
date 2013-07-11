Return-Path: <briank@RUSSOUND.COM>
Received: from Pegasus.RUSSOUND.COM (pegasus.russound.com [64.223.142.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C0EAE01514
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 07:20:43 -0700 (PDT)
Received: from Powerhog.RUSSOUND.COM (10.0.0.8) by pegasus.RUSSOUND.COM
	(10.0.0.15) with Microsoft SMTP Server (TLS) id 8.3.298.1;
	Thu, 11 Jul 2013 10:20:42 -0400
Received: from Powerhog.RUSSOUND.COM ([127.0.0.1]) by powerhog ([127.0.0.1])
	with mapi; Thu, 11 Jul 2013 10:20:41 -0400
From: Brian Karcz <briank@RUSSOUND.COM>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 11 Jul 2013 10:20:39 -0400
Thread-Topic: only -dbg and -dev packages being built
Thread-Index: Ac5+P/UHW6aBCmIFSY2zbS191p1hoQ==
Message-ID: <7941E07E1E020448937ACA7D4279E632018398AF5C63@powerhog>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: only -dbg and -dev packages being built
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
X-List-Received-Date: Thu, 11 Jul 2013 14:20:44 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7941E07E1E020448937ACA7D4279E632018398AF5C63powerhog_"

--_000_7941E07E1E020448937ACA7D4279E632018398AF5C63powerhog_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I created a recipe (xyz) to assemble together an externally built executabl=
e and some configuration files that are local to recipe. It consists of a f=
ew SRC_URI specifications for the files and a do_install function to place =
all the pieces in the root filesystem. When I bitbake the recipe, the only =
packages that show up in the tmp/deploy/ipk area are the xyz-dbg and xyz-de=
v versions and not the plain xyz version. Because of this, when I add xyz t=
o the POKY_EXTRA_INSTALL variable of my image recipe, the do_rootfs task fa=
ils because it can't find the xyz package.

Is this a common issue? Is there a set of rules that determine which versio=
ns of a package get created?

I should also note that this work is being done with the Edison version of =
poky/yocto.

Thanks,
Brian

--_000_7941E07E1E020448937ACA7D4279E632018398AF5C63powerhog_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 14 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Lucida Console";
	panose-1:2 11 6 9 4 5 4 2 2 4;}
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
	font-family:"Lucida Console";
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span style=3D'f=
ont-size:10.0pt;font-family:"Lucida Console"'>Hi,<o:p></o:p></span></p><p c=
lass=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Lucida Consol=
e"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-si=
ze:10.0pt;font-family:"Lucida Console"'>I created a recipe (xyz) to assembl=
e together an externally built executable and some configuration files that=
 are local to recipe. It consists of a few SRC_URI specifications for the f=
iles and a do_install function to place all the pieces in the root filesyst=
em. When I bitbake the recipe, the only packages that show up in the tmp/de=
ploy/ipk area are the xyz&#8211;dbg and xyz&#8211;dev versions and not the =
plain xyz version. Because of this, when I add xyz to the POKY_EXTRA_INSTAL=
L variable of my image recipe, the do_rootfs task fails because it can&#821=
7;t find the xyz package.<o:p></o:p></span></p><p class=3DMsoNormal><span s=
tyle=3D'font-size:10.0pt;font-family:"Lucida Console"'><o:p>&nbsp;</o:p></s=
pan></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"L=
ucida Console"'>Is this a common issue? Is there a set of rules that determ=
ine which versions of a package get created?<o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Lucida Console"'>=
<o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:1=
0.0pt;font-family:"Lucida Console"'>I should also note that this work is be=
ing done with the Edison version of poky/yocto.<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Lucida Console"=
'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size=
:10.0pt;font-family:"Lucida Console"'>Thanks,<o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Lucida Console"'>=
Brian &nbsp;<o:p></o:p></span></p></div></body></html>=

--_000_7941E07E1E020448937ACA7D4279E632018398AF5C63powerhog_--
