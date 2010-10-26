Return-Path: <lianhao.lu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id DC3904C81016
	for <yocto@yoctoproject.org>; Mon, 25 Oct 2010 20:16:43 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 25 Oct 2010 18:16:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,238,1286175600"; 
	d="scan'208,217";a="340381116"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by azsmga001.ch.intel.com with ESMTP; 25 Oct 2010 18:16:42 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 26 Oct 2010 09:16:40 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 26 Oct 2010 09:16:40 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 26 Oct 2010 09:16:39 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Tue, 26 Oct 2010 09:16:37 +0800
Thread-Topic: [yocto] Did not find big problems for today's Rc4 (x86/arm)
	toolchain sdk related images
Thread-Index: Act0QZnde/eg/2owSm28TgLxKMmP1wAZI1vAAAE5TEA=
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F186AA3427A@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D0B8DF549@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D0B8DF549@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: Did not find big problems for today's Rc4 (x86/arm) toolchain sdk related images
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 26 Oct 2010 01:16:44 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C10D3FB0CD45994C8A51FEC1227CE22F186AA3427Ashsmsx502ccrc_"

--_000_C10D3FB0CD45994C8A51FEC1227CE22F186AA3427Ashsmsx502ccrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I did the SDK part test of RC4a images on qemuppc, qemumips, and BlackSand.=
 No new bugs found compared to the test of RC3.

Best Regards,
-Lianhao

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Tian, Kevin
Sent: Tuesday, October 26, 2010 8:39 AM
To: yocto@yoctoproject.org
Subject: [yocto] Did not find big problems for today's Rc4 (x86/arm) toolch=
ain sdk related images

FYI. SDK/toolchain part behaves well from RC4.

Thanks
Kevin

From: Wu, Tong
Sent: Monday, October 25, 2010 8:39 PM
To: Ke, Liping; Tian, Kevin; Yu, Ke; Lu, Lianhao
Subject: On behalf of Liping {Did not find big problems for today's Rc4 (x8=
6/arm) toolchain sdk related images]

Hi, all
I did not bring my laptop, and can't connect webmail, so use this mail box =
to report the result.

X86 sdk image, sdk toolchain, ide-support has been built successfully from =
clean-up folder at last.

X86/arm qemu run successfully.

Crosstool chain could compile the c/c++ project successfully in the host.

Qemu arm/x86 could compile c/c++ project successfully.

Thanks& Regards,
criping

--_000_C10D3FB0CD45994C8A51FEC1227CE22F186AA3427Ashsmsx502ccrc_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:p=3D"urn:schemas-m=
icrosoft-com:office:powerpoint" xmlns:a=3D"urn:schemas-microsoft-com:office=
:access" xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"=
uuid:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsof=
t-com:rowset" xmlns:z=3D"#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-co=
m:office:publisher" xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadshee=
t" xmlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" xmlns=
:odc=3D"urn:schemas-microsoft-com:office:odc" xmlns:oa=3D"urn:schemas-micro=
soft-com:office:activation" xmlns:html=3D"http://www.w3.org/TR/REC-html40" =
xmlns:q=3D"http://schemas.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://m=
icrosoft.com/officenet/conferencing" xmlns:D=3D"DAV:" xmlns:Repl=3D"http://=
schemas.microsoft.com/repl/" xmlns:mt=3D"http://schemas.microsoft.com/share=
point/soap/meetings/" xmlns:x2=3D"http://schemas.microsoft.com/office/excel=
/2003/xml" xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" xmlns:ois=
=3D"http://schemas.microsoft.com/sharepoint/soap/ois/" xmlns:dir=3D"http://=
schemas.microsoft.com/sharepoint/soap/directory/" xmlns:ds=3D"http://www.w3=
.org/2000/09/xmldsig#" xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint=
/dsp" xmlns:udc=3D"http://schemas.microsoft.com/data/udc" xmlns:xsd=3D"http=
://www.w3.org/2001/XMLSchema" xmlns:sub=3D"http://schemas.microsoft.com/sha=
repoint/soap/2002/1/alerts/" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#"=
 xmlns:sp=3D"http://schemas.microsoft.com/sharepoint/" xmlns:sps=3D"http://=
schemas.microsoft.com/sharepoint/soap/" xmlns:xsi=3D"http://www.w3.org/2001=
/XMLSchema-instance" xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/so=
ap" xmlns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" xmlns:udc=
p2p=3D"http://schemas.microsoft.com/data/udc/parttopart" xmlns:wf=3D"http:/=
/schemas.microsoft.com/sharepoint/soap/workflow/" xmlns:dsss=3D"http://sche=
mas.microsoft.com/office/2006/digsig-setup" xmlns:dssi=3D"http://schemas.mi=
crosoft.com/office/2006/digsig" xmlns:mdssi=3D"http://schemas.openxmlformat=
s.org/package/2006/digital-signature" xmlns:mver=3D"http://schemas.openxmlf=
ormats.org/markup-compatibility/2006" xmlns:m=3D"http://schemas.microsoft.c=
om/office/2004/12/omml" xmlns:mrels=3D"http://schemas.openxmlformats.org/pa=
ckage/2006/relationships" xmlns:spwp=3D"http://microsoft.com/sharepoint/web=
partpages" xmlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/20=
06/types" xmlns:ex12m=3D"http://schemas.microsoft.com/exchange/services/200=
6/messages" xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/Sli=
deLibrary/" xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortal=
Server/PublishedLinksService" xmlns:Z=3D"urn:schemas-microsoft-com:" xmlns:=
st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Verdana","sans-serif";
	color:blue;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DZH-CN link=3Dblue vlink=3Dpurple style=3D'text-justify-trim:pu=
nctuation'>

<div class=3DWordSection1>

<div>

<p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN=
-US
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#1F497D'>I=
 did
the SDK part test of RC4a images on qemuppc, qemumips, and BlackSand. No ne=
w
bugs found compared to the test of RC3.<o:p></o:p></span></p>

<p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN=
-US
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#1F497D'><=
o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN=
-US
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#1F497D'>B=
est Regards,<o:p></o:p></span></p>

<p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN=
-US
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#1F497D'>-=
Lianhao<o:p></o:p></span></p>

</div>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'><o:p>&nbsp;=
</o:p></span></p>

<div style=3D'border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt'>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm'>

<p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><b><span lang=
=3DEN-US
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span></=
b><span
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] <b>O=
n
Behalf Of </b>Tian, Kevin<br>
<b>Sent:</b> Tuesday, October 26, 2010 8:39 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Did not find big problems for today's Rc4 (x86/arm)
toolchain sdk related images<o:p></o:p></span></p>

</div>

</div>

<p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN=
-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Verdana","sans-serif";
color:blue'>FYI. SDK/toolchain part behaves well from RC4.<o:p></o:p></span=
></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Verdana","sans-serif";
color:blue'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Verdana","sans-serif";
color:blue'>Thanks<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Verdana","sans-serif";
color:blue'>Kevin<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Verdana","sans-serif";
color:blue'><o:p>&nbsp;</o:p></span></p>

<div style=3D'border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt'>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm'>

<p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><b><span lang=
=3DEN-US
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span></=
b><span
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
Wu, Tong
<br>
<b>Sent:</b> Monday, October 25, 2010 8:39 PM<br>
<b>To:</b> Ke, Liping; Tian, Kevin; Yu, Ke; Lu, Lianhao<br>
<b>Subject:</b> On behalf of Liping {Did not find big problems for today's =
Rc4
(x86/arm) toolchain sdk related images]<o:p></o:p></span></p>

</div>

</div>

<p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN=
-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Hi, all<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>I did not bring my laptop, and can&=
#8217;t
connect webmail, so use this mail box to report the result.<o:p></o:p></spa=
n></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>X86 sdk image, sdk toolchain, ide-s=
upport
has been built successfully from clean-up folder at last.<o:p></o:p></span>=
</p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>X86/arm qemu run successfully.<o:p>=
</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Crosstool chain could compile the c=
/c++
project successfully in the host.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Qemu arm/x86 could compile c/c++ pr=
oject
successfully.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Thanks&amp; Regards,<o:p></o:p></sp=
an></p>

<p class=3DMsoNormal><span lang=3DEN-US>criping<o:p></o:p></span></p>

</div>

</div>

</div>

</body>

</html>

--_000_C10D3FB0CD45994C8A51FEC1227CE22F186AA3427Ashsmsx502ccrc_--
