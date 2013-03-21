Return-Path: <Peter.Bergin@qmatic.com>
Received: from mail.qmatic.com (mail.q-matic.se [194.236.6.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F4AEE006D6
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 08:09:59 -0700 (PDT)
From: Peter Bergin <Peter.Bergin@qmatic.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 21 Mar 2013 16:09:51 +0100
Thread-Topic: Creating tailored image without standard rootfs files
Thread-Index: Ac4mRiKhBjbno248Qga8Ak589kv21A==
Message-ID: <65D9329CA2AF94438F542D48F2A42E8317717841FB@GOT-SRV-005.QMATIC.local>
Accept-Language: sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: sv-SE
MIME-Version: 1.0
Subject: Creating tailored image without standard rootfs files
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
X-List-Received-Date: Thu, 21 Mar 2013 15:10:00 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_65D9329CA2AF94438F542D48F2A42E8317717841FBGOTSRV005QMAT_"

--_000_65D9329CA2AF94438F542D48F2A42E8317717841FBGOTSRV005QMAT_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

for my Yocto build I want to create two separate images as output because i=
n my system I have two separate partitions. One partition containing the ro=
ot file system and one partition containing configuration and application d=
ata. What I want is to create an image only containing data and application=
s from my recipes that I can apply to my data partition.

I have tried this approach:

my-data-image.bb
-------------------------------------------------------------------
IMAGE_INSTALL =3D "my-application1-data \
                              my-application2-data"
IMAGE_FEATURES =3D ""
IMAGE_LINGUAS =3D ""
IMAGE_TYPES =3D "tar.gz"

inherit image
------------------------------------------------------------------

When building this image the rootfs will contain /etc /dev /lib /var and in=
it, directories that I do not want. I only want an output with my files fro=
m 'my-application1-data' and 'my-application2-data'. Can anyone suggest me =
the best way forward?

Thanks,
/Peter


--_000_65D9329CA2AF94438F542D48F2A42E8317717841FBGOTSRV005QMAT_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 12 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
	font-family:"Arial","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DSV link=3Dblue vlink=
=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-US=
 style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Hi,<o:p></o:p>=
</span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3D=
MsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif"'>for my Yocto build I want to create two separate images as ou=
tput because in my system I have two separate partitions. One partition con=
taining the root file system and one partition containing configuration and=
 application data. What I want is to create an image only containing data a=
nd applications from my recipes that I can apply to my data partition.<o:p>=
</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p cl=
ass=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif"'>I have tried this approach:<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>my-=
data-image.bb<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>---------------=
----------------------------------------------------<o:p></o:p></span></p><=
p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif"'>IMAGE_INSTALL =3D &quot;my-application1-data \<o:p>=
</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;my-appli=
cation2-data&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>IMAGE_FEAT=
URES =3D &quot;&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>IMAGE_=
LINGUAS =3D &quot;&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>IMAG=
E_TYPES =3D &#8220;tar.gz&#8221;<o:p></o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>inherit image<o:p>=
</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif"'>---------------------------------=
---------------------------------<o:p></o:p></span></p><p class=3DMsoNormal=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>When building thi=
s image the rootfs will contain /etc /dev /lib /var and init, directories t=
hat I do not want. I only want an output with my files from &#8216;my-appli=
cation1-data&#8217; and &#8216;my-application2-data&#8217;. Can anyone sugg=
est me the best way forward?<o:p></o:p></span></p><p class=3DMsoNormal><spa=
n lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>=
<o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Thanks,<o:p></o:p></=
span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif"'>/Peter<o:p></o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'><o:p>&nbsp;</o:p></span></p></div></body></html>=

--_000_65D9329CA2AF94438F542D48F2A42E8317717841FBGOTSRV005QMAT_--
