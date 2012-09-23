Return-Path: <sean.liming@annabooks.com>
Received: from mail14c40.carrierzone.com (mail14c40.carrierzone.com
	[209.235.156.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37894E01430
	for <yocto@yoctoproject.org>; Sun, 23 Sep 2012 13:25:50 -0700 (PDT)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail14c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	q8NKPj4U027173
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Sun, 23 Sep 2012 20:25:46 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: <yocto@yoctoproject.org>
References: <CANwz6nwmFNbsTxYh8xvNUysk6ozWS48rchUpOyUPGSXDNYodBA@mail.gmail.com>
	<505DD60E.6010907@annabooks.com>
In-Reply-To: <505DD60E.6010907@annabooks.com>
Date: Sun, 23 Sep 2012 13:25:44 -0700
Message-ID: <000001cd99c9$9cccdc00$d6669400$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQKYAOh8yARaDNi6vffluiOF0frgjAHJ/u8dlfVAe4A=
X-Antivirus: avast! (VPS 120923-0, 09/23/2012), Outbound message
X-Antivirus-Status: Clean
X-CSC: 0
X-CHA: v=1.1 cv=mUt3W6B4LvpcKP45CZ7+aIBqpZW/FMsUEz+3hzUWKIo= c=1 sm=1
	a=DRpQnFnvsMEA:10 a=_DgR7O7FQkkA:10 a=RqNIojzclRO/fVsPhA7IgQ==:17
	a=iGHA9ds3AAAA:8 a=6MITth62HpsR00K5ORAA:9 a=CjuIK1q_8ugA:10
	a=FCaQVidmf_IA:10 a=nHK3ipOpxeAA:10 a=XDKM753qmDAA:10
	a=DwTllQO5cGad5IZ9:21
	a=DLTOYG9o3Kgfizhg:21 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8
	a=ntDyQzTkts-563AJPv4A:9 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10
	a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10 a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-Spam: Unknown
X-CTCH-RefID: str=0001.0A020206.505F704B.0013, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
Subject: Re: beagleboard uEnv.txt file
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 23 Sep 2012 20:25:50 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0001_01CD998E.F0707500"
Content-Language: en-us

------=_NextPart_000_0001_01CD998E.F0707500
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Ed,

 

I was able to build and successfully boot core-image-sato image on the
BeagleBoard Rev C4. There is no mouse or arrow keys to move things around
the screen, but I do get the GUI.

 

I am using Yocto 1.2.

 

Regards,

 

Sean Liming

Annabooks

Tel: 714-970-7523 / Cell: 858-774-3176

 

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Sean Liming
Sent: Saturday, September 22, 2012 8:15 AM
To: yocto@yoctoproject.org
Subject: Re: [yocto] beagleboard uEnv.txt file

 

On 09/22/2012 07:08 AM, Edward Vidal wrote:

Hello All,
Does anyone have a working uEnv.txt file for the core-image-sato for the
beagleoard?
Any help will be appreciated thanks in advance.






_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

Attached is one that worked for core-image-minimal.

Here are the contents:

bootfile=uImage
address_uimage=0x80300000

console=ttyO2,115200n8

mmcroot=/dev/mmcblk0p2 rw
mmcrootfstype=ext3 rootwait
optargs=console=tty0

mmc_load_uimage=fatload mmc 0:1 ${address_uimage} ${bootfile}

mmcargs=setenv bootargs console=${console} ${optargs} root=${mmcroot}
rootfstype=${mmcrootfstype}

loaduimage=run mmc_load_uimage; echo Booting from mmc ...; run mmcargs;
bootm ${address_uimage}





-- 
Regards,
 
Sean D. Liming
 
Annabooks
Cell: 858-774-3176

------=_NextPart_000_0001_01CD998E.F0707500
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Consolas","serif";
	color:black;}
span.EmailStyle19
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
</o:shapelayout></xml><![endif]--></head><body bgcolor=3Dwhite =
lang=3DEN-US link=3Dblue vlink=3Dpurple><div class=3DWordSection1><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Ed,<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>I was able to build and successfully boot core-image-sato image on =
the BeagleBoard Rev C4. There is no mouse or arrow keys to move things =
around the screen, but I do get the GUI.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>I am using Yocto 1.2.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><div><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Regards,<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Sean Liming<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Annabooks<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Tel: 714-970-7523 / Cell: 858-774-3176<o:p></o:p></span></p></div><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><div =
style=3D'border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt'><div><div style=3D'border:none;border-top:solid #B5C4DF =
1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";color:windowt=
ext'>From:</span></b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";color:windowt=
ext'> yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] <b>On Behalf Of </b>Sean =
Liming<br><b>Sent:</b> Saturday, September 22, 2012 8:15 =
AM<br><b>To:</b> yocto@yoctoproject.org<br><b>Subject:</b> Re: [yocto] =
beagleboard uEnv.txt file<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>On =
09/22/2012 07:08 AM, Edward Vidal wrote:<o:p></o:p></p></div><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p =
class=3DMsoNormal>Hello All,<br>Does anyone have a working uEnv.txt file =
for the core-image-sato for the beagleoard?<br>Any help will be =
appreciated thanks in =
advance.<br><br><br><br><br><o:p></o:p></p><pre>_________________________=
______________________<o:p></o:p></pre><pre>yocto mailing =
list<o:p></o:p></pre><pre><a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><o:p></o=
:p></pre><pre><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoct=
oproject.org/listinfo/yocto</a><o:p></o:p></pre></blockquote><p =
class=3DMsoNormal>Attached is one that worked for =
core-image-minimal.<br><br>Here are the =
contents:<br><br>bootfile=3DuImage<br>address_uimage=3D0x80300000<br><br>=
console=3DttyO2,115200n8<br><br>mmcroot=3D/dev/mmcblk0p2 =
rw<br>mmcrootfstype=3Dext3 =
rootwait<br>optargs=3Dconsole=3Dtty0<br><br>mmc_load_uimage=3Dfatload =
mmc 0:1 ${address_uimage} ${bootfile}<br><br>mmcargs=3Dsetenv bootargs =
console=3D${console} ${optargs} root=3D${mmcroot} =
rootfstype=3D${mmcrootfstype}<br><br>loaduimage=3Drun mmc_load_uimage; =
echo Booting from mmc ...; run mmcargs; bootm =
${address_uimage}<br><br><br><br><o:p></o:p></p><pre>-- =
<o:p></o:p></pre><pre>Regards,<o:p></o:p></pre><pre><o:p>&nbsp;</o:p></pr=
e><pre>Sean D. =
Liming<o:p></o:p></pre><pre><o:p>&nbsp;</o:p></pre><pre>Annabooks<o:p></o=
:p></pre><pre>Cell: =
858-774-3176<o:p></o:p></pre></div></div></body></html>

------=_NextPart_000_0001_01CD998E.F0707500--
