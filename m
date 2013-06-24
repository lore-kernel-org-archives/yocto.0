Return-Path: <briank@RUSSOUND.COM>
Received: from Pegasus.RUSSOUND.COM (pegasus.russound.com [64.223.142.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6812E0141F
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 08:01:35 -0700 (PDT)
Received: from Powerhog.RUSSOUND.COM (10.0.0.8) by pegasus.RUSSOUND.COM
	(10.0.0.15) with Microsoft SMTP Server (TLS) id 8.3.298.1;
	Mon, 24 Jun 2013 11:01:34 -0400
Received: from Powerhog.RUSSOUND.COM ([127.0.0.1]) by powerhog ([127.0.0.1])
	with mapi; Mon, 24 Jun 2013 11:01:33 -0400
From: Brian Karcz <briank@RUSSOUND.COM>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 24 Jun 2013 11:01:31 -0400
Thread-Topic: Image recipes in Yocto 1.4 (dylan-9.0.0)
Thread-Index: Ac5w6dAe228h6kVaRke87KD6OowjBw==
Message-ID: <7941E07E1E020448937ACA7D4279E632018398AF5AA8@powerhog>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 24 Jun 2013 08:02:43 -0700
Subject: Image recipes in Yocto 1.4 (dylan-9.0.0)
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
X-List-Received-Date: Mon, 24 Jun 2013 15:01:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7941E07E1E020448937ACA7D4279E632018398AF5AA8powerhog_"

--_000_7941E07E1E020448937ACA7D4279E632018398AF5AA8powerhog_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I apologize in advance if I'm not posting this to correct place or in the c=
orrect manner.

I have a question regarding the shared state code optimizations in yocto 1.=
4. I'm in the process of upgrading one of our projects from Edison (6.0) to=
 Dylan (9.0.0) and am running into an issue with our existing image recipe.

The recipe brings in files from a "files" directory in the image area. It a=
lso adds an image preprocess command that takes action on those files in th=
e work area. After reading the version 1.4 migration guidelines and examini=
ng both the old and new builds, it looks like the do_unpack task has been o=
ptimized out of the way images are built in the new release. The files list=
ed in the SRC_URI variable don't get populated in the work directory, and a=
ctions taken in the image preprocess command fail.

Is there a way to stop this optimization and have the image build populate =
the work directory as it has in the past?

Thank you,
Brian

--_000_7941E07E1E020448937ACA7D4279E632018398AF5AA8powerhog_
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
ze:10.0pt;font-family:"Lucida Console"'>I apologize in advance if I&#8217;m=
 not posting this to correct place or in the correct manner.<o:p></o:p></sp=
an></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Lu=
cida Console"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=
=3D'font-size:10.0pt;font-family:"Lucida Console"'>I have a question regard=
ing the shared state code optimizations in yocto 1.4. I&#8217;m in the proc=
ess of upgrading one of our projects from Edison (6.0) to Dylan (9.0.0) and=
 am running into an issue with our existing image recipe.<o:p></o:p></span>=
</p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Lucid=
a Console"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D=
'font-size:10.0pt;font-family:"Lucida Console"'>The recipe brings in files =
from a &#8220;files&#8221; directory in the image area. It also adds an ima=
ge preprocess command that takes action on those files in the work area. Af=
ter reading the version 1.4 migration guidelines and examining both the old=
 and new builds, it looks like the do_unpack task has been optimized out of=
 the way images are built in the new release. The files listed in the SRC_U=
RI variable don&#8217;t get populated in the work directory, and actions ta=
ken in the image preprocess command fail.<o:p></o:p></span></p><p class=3DM=
soNormal><span style=3D'font-size:10.0pt;font-family:"Lucida Console"'><o:p=
>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0p=
t;font-family:"Lucida Console"'>Is there a way to stop this optimization an=
d have the image build populate the work directory as it has in the past?<o=
:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;fo=
nt-family:"Lucida Console"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNorma=
l><span style=3D'font-size:10.0pt;font-family:"Lucida Console"'>Thank you,<=
o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;f=
ont-family:"Lucida Console"'>Brian<o:p></o:p></span></p></div></body></html=
>=

--_000_7941E07E1E020448937ACA7D4279E632018398AF5AA8powerhog_--
