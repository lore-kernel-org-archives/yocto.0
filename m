Return-Path: <Qianjun.Zhang@alcatel-lucent.com>
Received: from cnshjsmin03.alcatel-sbell.com.cn
	(cnshjsmin03.alcatel-sbell.com.cn [211.144.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68F94E01624
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 20:23:20 -0700 (PDT)
X-AuditID: ac189297-b7f1b6d000002f2e-7b-5243a8a53988
Received: from CNSHJCASHUB02.ad4.ad.alcatel.com
	(CNSHJCASHUB02.ad4.ad.alcatel.com [135.251.50.72])
	by cnshjsmin03.alcatel-sbell.com.cn (Symantec Messaging Gateway) with
	SMTP id B7.46.12078.5A8A3425; Thu, 26 Sep 2013 11:23:18 +0800 (HKT)
Received: from CNSHJMBX02.ad4.ad.alcatel.com ([169.254.2.224]) by
	CNSHJCASHUB02.ad4.ad.alcatel.com ([135.251.50.72]) with mapi id
	14.03.0123.003; Thu, 26 Sep 2013 11:23:17 +0800
From: ZHANG Qianjun <Qianjun.Zhang@alcatel-lucent.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: why alsa cannot be supported by libsdl
Thread-Index: Ac66Z7vlVK9hsJR0TGqM6WGNmQudEg==
Date: Thu, 26 Sep 2013 03:23:16 +0000
Message-ID: <29D7627EB179634FB9F1BA6EB7828B211C5437@CNSHJMBX02.ad4.ad.alcatel.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: A2S8 BFJd Bmfc CNOn C4RJ C8jm DhoW E0/K Ffk+ GUF6 IL6c
	I6fG JHQW Jqyl Loe7
	MNWx; 1; eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {FFB580AC-EE1A-42F7-8324-08263F519471};
	cQBpAGEAbgBqAHUAbgAuAHoAaABhAG4AZwBAAGEAbABjAGEAdABlAGwALQBsAHUAYwBlAG4AdAAuAGMAbwBtAA==;
	Thu, 26 Sep 2013 03:23:14 GMT;
	dwBoAHkAIABhAGwAcwBhACAAYwBhAG4AbgBvAHQAIABiAGUAIABzAHUAcABwAG8AcgB0AGUAZAAgAGIAeQAgAGwAaQBiAHMAZABsAA==
x-cr-puzzleid: {FFB580AC-EE1A-42F7-8324-08263F519471}
x-originating-ip: [135.251.222.177]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsXS/ltRSnfZCucgg7PnuSwmvVzD5sDo0X6i
	jy2AMYrLJiU1J7MstUjfLoErY3FjO3PBT+OKJxeOszYwXtTvYuTkkBAwkbh8Yj8bhC0mceHe
	eiCbi0NI4B2jRPecj8wQzlZGiZeznzODVLEJmEn83PqWBcQWETCVeHHsC1i3sIC+xPnf1xgh
	4iYSG1qXsUPYehJbbnwHi7MIqErcvfKRtYuRg4NXIEji+8YEkDCjgKzE1ZZtYGOYBcQlbj2Z
	zwRxkIDEkj3nmSFsUYmXj/+xgtwjIbCHWeJA101WiISpRPvSLVBFyhITpz5mgRiUL/F7/yaw
	obwCghInZz5hgaiRlDi44gbLBEbRWUj2zULSMgtJC0RcR2LB7k9sELa2xLKFr5lh7DMHHjMh
	iy9gZF/FqJCcV5yRVZybmWdgqJeYk5xYkpqjW5yUmpOjl5yfq5ect4kRGHNrJCZN38G4a7/l
	IUYBDkYlHt6GYOcgIdbEsuLK3EOMEhzMSiK834yAQrwpiZVVqUX58UWlOanFhxilOViUxHkf
	2OQFCgmkA83OTk0tSC2CyTJxcEo1MEb+So3sufS8dssKfsMpaiX9m60sJ58QWXDiyYbsjRU8
	IobhV89uf/c3cnF2sMV/DvcXi5cserZVMF6qLKPRXb7w7nGJoyvnCBswLpp4fPm+TsOFDqsX
	WR40Ki+ZffeMriD7RqOdD69cYghw4L6zK+3j1YdvLS9bfFhX/PV6jegp/4kzRbk3m/9WYinO
	SDTUYi4qTgQA1aDYCrUCAAA=
Subject: why alsa cannot be supported by libsdl
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
X-List-Received-Date: Thu, 26 Sep 2013 03:23:24 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_29D7627EB179634FB9F1BA6EB7828B211C5437CNSHJMBX02ad4adal_"

--_000_29D7627EB179634FB9F1BA6EB7828B211C5437CNSHJMBX02ad4adal_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi
   I noticed that patch in ..\meta\recipes-graphics\libsdl\libsdl-1.2.15\ c=
onfigure_tweak.patch
It seems make option of "enable-alsa" unavailable.
   Do anyone know why and what can I do if I want to use ALSA in libSDL?

Thanks
Best Regards

Qianjun


--_000_29D7627EB179634FB9F1BA6EB7828B211C5437CNSHJMBX02ad4adal_
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
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.Section1
	{page:Section1;}
-->
</style><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"Section1">
<p class=3D"MsoNormal">Hi <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; I noticed that patch in ..\meta\recipes=
-graphics\libsdl\libsdl-1.2.15\ configure_tweak.patch<o:p></o:p></p>
<p class=3D"MsoNormal">It seems make option of &#8220;enable-alsa&#8221; un=
available. <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; Do anyone know why and what can I do if=
 I want to use ALSA in libSDL?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;text-justify:inter-ideog=
raph"><b><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&qu=
ot;sans-serif&quot;;color:#1F497D">Best Regards<o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;text-justify:inter-ideog=
raph"><b><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&qu=
ot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;text-justify:inter-ideog=
raph"><b><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&qu=
ot;sans-serif&quot;;color:#1F497D">Qianjun</span></b><span lang=3D"FR" styl=
e=3D"font-size:10.5pt;color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_29D7627EB179634FB9F1BA6EB7828B211C5437CNSHJMBX02ad4adal_--
