Received: from msgsrv3.atosorigin.de (msgsrv3.atosorigin.de [194.8.120.225])
 by mx.groups.io with SMTP id smtpd.web10.2072.1581496591123218677
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Feb 2020 00:36:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@zeiss.onmicrosoft.com header.s=selector2-zeiss-onmicrosoft-com header.b=rTG6MZNn;
 spf=pass (domain: zeiss.com, ip: 194.8.120.225, mailfrom: christian.lohr.ext@zeiss.com)
Received: from julia-mo2.my-it-solutions.net (HELO julia-mo2.ccsn.de.ao-srv.com) ([194.8.124.179])
  by msgsrv-out1.atosorigin.de with ESMTP; 12 Feb 2020 09:36:28 +0100
Received: from julia-mo2.ccsn.de.ao-srv.com (unknown [194.8.124.179]) by MCS02-MA1.atosorigin.de with smtp
	 id 329f_555f_0ea86d03_db11_4187_9f40_b0a3ffc39a3c;
	Wed, 12 Feb 2020 09:36:28 +0100
Received: from julia-mo2 (localhost [127.0.0.1])
	by julia-mo2.ccsn.de.ao-srv.com (Postfix) with ESMTP id B7FD4192AF83
	for <yocto@lists.yoctoproject.org>; Wed, 12 Feb 2020 09:36:10 +0100 (CET)
Received: from ADEERL01IMS011.zeiss.org (ADEERL01IMS011.zeiss.org [10.193.156.178])
	by julia-mo2.ccsn.de.ao-srv.com (Postfix) with ESMTP id 95949192AF81
	for <yocto@lists.yoctoproject.org>; Wed, 12 Feb 2020 09:36:10 +0100 (CET)
Received: from ADEERL01IMS011 (localhost [127.0.0.1])
	by ADEERL01IMS011.zeiss.org (Postfix) with ESMTP id 7BF3A265DC9
	for <yocto@lists.yoctoproject.org>; Wed, 12 Feb 2020 08:36:28 +0000 (GMT)
Received: from ADEFUE01SMS004.cznet.zeiss.org (adefue01sms004.zeiss.org [10.167.4.49])
	by ADEERL01IMS011.zeiss.org (Postfix) with ESMTP id 732F6265CA1
	for <yocto@lists.yoctoproject.org>; Wed, 12 Feb 2020 08:36:28 +0000 (GMT)
Received: from ADEERL01IUCC23.zeiss.org (10.167.12.169) by
 adefue01sms004.cznet.zeiss.org (10.167.4.49) with Microsoft SMTP Server (TLS)
 id 14.3.468.0; Wed, 12 Feb 2020 09:36:28 +0100
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (104.47.14.58) by
 hybrid.ext.smtp.zeiss.com (217.115.69.79) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
 15.1.845.34; Wed, 12 Feb 2020 09:36:28 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XepjGsUR7LeAgW6uk9GDI5gh+3AW9I16EyhtgAfpwufPAPffaZOuPKSF3W3Z/uRtxIE/ydcrEk8N3VwMT247lDqPKmth6Pa+Wn7AKDo7eHJaP5y2e/6N3hpW4LaLb7T7i1QVKJj5g3eD9QQMXUfQNoehjv4Xi/z/phah18I8BL93G5kuu2SLO5+9T5MZV4AVhnqaEt6E1+SwS206l16pI1k2mbVWWus5Q+Oe4QujlKya5TucyDZWC5n/DQ1znGWifP1TlML6TgJ2VAbDcvgUdLSIi1GILVeBII+SmNZDfFFxW3U0Aylt/CL7Zj/SOCAEDONJpsxvbD+UnWUR3Ncyeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XDHpbHs+1mr/o1HLGgRux1vu21sap4GHCSu1LHSVDLk=;
 b=Ksd1eVWYbp+c3uHHn7GcXTsgburoBoA2pHUk2zv9q7E0F8intySJpVeWKQ9oEW5cnOu9FZNgkNzd2WRKSXSPgV6K3NCr1pkC6nULAyqhPUM5Z+1fNf5YIzdWgWeGDsytXwL3Rn/zZYss4bUZNm/IKecFy1IPan5OUH0fqGPlnD7SyCpDLMTr8aQuWP8tpa3bO7tY+8gOZP+rpO1lV6rFNGUfbqo9agC1xT+5Ld1/f5QNrku7Fnf3sZBmlDGYzJrBmL4kjbl/mjMVfQUOW2nFUiagdE+bRpMcIMWFh+nSWkvB/4wuggM1YMck8F9qrASU0alAzxQFPVEAlNfIjU7wEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=zeiss.com; dmarc=pass action=none header.from=zeiss.com;
 dkim=pass header.d=zeiss.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zeiss.onmicrosoft.com;
 s=selector2-zeiss-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XDHpbHs+1mr/o1HLGgRux1vu21sap4GHCSu1LHSVDLk=;
 b=rTG6MZNnuql/kRWWDfkPJur5av4vK3HREK/6eHUnqjXtPC0Y04iBI089wgmj049fce5+UCPuqiy/0Fnu4fTHFReA8upzjBKdrf0M1djmk2aWHOj4XwpDXttto5we/KaOcbgoFIT1DEZxaA/VIY25c7RI8lAmHfhtcKTcXyRTnmI=
Received: from AM0P190MB0770.EURP190.PROD.OUTLOOK.COM (10.186.130.84) by
 AM0P190MB0756.EURP190.PROD.OUTLOOK.COM (10.186.131.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23; Wed, 12 Feb 2020 08:36:26 +0000
Received: from AM0P190MB0770.EURP190.PROD.OUTLOOK.COM
 ([fe80::80ea:37a2:d08c:8e9e]) by AM0P190MB0770.EURP190.PROD.OUTLOOK.COM
 ([fe80::80ea:37a2:d08c:8e9e%6]) with mapi id 15.20.2729.021; Wed, 12 Feb 2020
 08:36:26 +0000
From: "Christian Lohr" <christian.lohr.ext@zeiss.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Creating a QEmu (x86-64) Image, which can execute binary applications from other x86-64 linux OSes
Thread-Topic: Creating a QEmu (x86-64) Image, which can execute binary
 applications from other x86-64 linux OSes
Thread-Index: AdXhe7XXITfcuZjzRnOvXbaB5vpC8w==
Date: Wed, 12 Feb 2020 08:36:26 +0000
Message-ID: <AM0P190MB07705DB273CD954279B282F3C21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=christian.lohr.ext@zeiss.com; 
x-originating-ip: [165.225.200.221]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b7561b7e-03f1-498e-651d-08d7af96a628
x-ms-traffictypediagnostic: AM0P190MB0756:
x-microsoft-antispam-prvs: <AM0P190MB07560AE0BD9822C330AAFB76C21B0@AM0P190MB0756.EURP190.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0311124FA9
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(396003)(39860400002)(366004)(346002)(136003)(376002)(199004)(189003)(8936002)(7696005)(81166006)(81156014)(6506007)(33656002)(478600001)(9686003)(19627235002)(186003)(55016002)(8676002)(966005)(2906002)(86362001)(64756008)(5660300002)(316002)(6916009)(76116006)(66476007)(66446008)(66556008)(71200400001)(66946007)(26005)(52536014)(55236004);DIR:OUT;SFP:1102;SCL:1;SRVR:AM0P190MB0756;H:AM0P190MB0770.EURP190.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: zeiss.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yuVeguk9P0NW26xMg+PgCxM6p+EnD6JQKWukXFlAyib6+zvRrAsLgkRC7hkR13foDdEASkn3lydFBaBIeqa0HhYwJm4/fSs97mvWcbC7v1UkWGW8qWN3n44Tx9f2SY5DZ5s7UB5E4ZuHFkgUyqEyCdJ3QftrKHBmNa5baWQmzmCDoM53S1Mb+IsSK9tcgdVjsdakWvdCu3mkjwYrMaIJcigzT4quzEuR+jIh4y5S+LGPsvj8cQsVGITeTeOj7ZxgFcZyMxmULLgB9kngj/VaVT4SlUOlmIEVf62cl25CRcfKEJHDrSlX/bwNEFxDFrtAyFCm/8LMTi5pfwcPY6+6xgkwS+8zydmmMUlrk9RkuHgtg3/rnz3UNQTtcAge2GULveyI4aJqH4pF6X3wjW5gRhT0KAgdi22SacT741mq1auh3gOpTdV4QjuxeqGxKGLxp8Kbcpc9ZCbGsMbGiEP4ebcKXOLbB2NXf8nbTqTjos4drh+Ua+es+lSysYWh+/h6kauKgDbdzPgee05UskEHww==
x-ms-exchange-antispam-messagedata: HEW7e6k2QxBztN+7TYaPTys3jPDaxdlYgMTp0GNifN50WIgUMGWn3ghDjFSwdJkmHrp8JVbEWtQQL8AudjNK+25e1SHVnDbj/8jSuMZr0ICIRTcElKBmJIzdqGJFUNB3+OYk2iaCItgFDMOdsmQMFg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b7561b7e-03f1-498e-651d-08d7af96a628
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2020 08:36:26.3058
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 28042244-bb51-4cd6-8034-7776fa3703e8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZbUX5/gYCGuBSioNrOjSk4Ny6E83V0ZoTgUt54oTlMSZnYQQAuyfA22BgDOEOjiAfPoxM7niuGfL7iyzyabWvQ0rYgjauEKfxcd3xs9BTHw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0P190MB0756
X-OriginatorOrg: zeiss.com
X-NAI-Spam-Flag: NO
X-NAI-Spam-Level: 
X-NAI-Spam-Threshold: 8
X-NAI-Spam-Score: 0.6
X-NAI-Spam-Version: 2.3.0.9418 : core <6733> : inlines <7189> : streams
 <1847099> : uri <2986853>
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM0P190MB07705DB273CD954279B282F3C21B0AM0P190MB0770EURP_"

--_000_AM0P190MB07705DB273CD954279B282F3C21B0AM0P190MB0770EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm trying to create a normal QEmu (x86-64) Image, which I can let run in V=
irtualbox. As a addition I deployed .NET Core, which I got from this side:
https://dotnet.microsoft.com/download/dotnet-core/thank-you/runtime-aspnetc=
ore-3.1.1-linux-x64-binaries

But I can't execute it:
----------------------------
root@qemux86-64:/usr/share/dotnet# ./dotnet
-sh: ./dotnet: No such file or directory


But it is there:
------------------
root@qemux86-64:/usr/share/dotnet# ls -lh
total 116K
-rw-r--r-- 1 root root 1.1K Feb 10 02:33 LICENSE.txt
-rw-r--r-- 1 root root  31K Feb 10 02:33 ThirdPartyNotices.txt
-rwxr-xr-x 1 root root  72K Feb 10 02:33 dotnet
drwxr-xr-x 3 root root 4.0K Feb 10 02:36 host
drwxr-xr-x 4 root root 4.0K Feb 10 02:36 shared


It tried to get more information about the dotnet-executable
---------------------------------------------------------------------------=
---
root@qemux86-64:/usr/share/dotnet# readelf -h dotnet
ELF Header:
  Magic:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00
  Class:                             ELF64
  Data:                              2's complement, little endian
  Version:                           1 (current)
  OS/ABI:                            UNIX - System V
  ABI Version:                       0
  Type:                              EXEC (Executable file)
  Machine:                           Advanced Micro Devices X86-64
  Version:                           0x1
  Entry point address:               0x402f17
  Start of program headers:          64 (bytes into file)
  Start of section headers:          71032 (bytes into file)
  Flags:                             0x0
  Size of this header:               64 (bytes)
  Size of program headers:           56 (bytes)
  Number of program headers:         10
  Size of section headers:           64 (bytes)
  Number of section headers:         31
  Section header string table index: 30

root@qemux86-64:/usr/share/dotnet#  file dotnet
dotnet: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically li=
nked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 2.6.32, BuildI=
D[sha1]=3D28c244c1953bcbee994709a4b849086ee7cf0c99, stripped


I compared those values with that from Python, which does run on this syste=
m
---------------------------------------------------------------------------=
----------------------------
root@qemux86-64:/opt/jre-8/bin# readelf -h /usr/bin/python3.7
ELF Header:
  Magic:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00
  Class:                             ELF64
  Data:                              2's complement, little endian
  Version:                           1 (current)
  OS/ABI:                            UNIX - System V
  ABI Version:                       0
  Type:                              DYN (Shared object file)
  Machine:                           Advanced Micro Devices X86-64
  Version:                           0x1
  Entry point address:               0x1060
  Start of program headers:          64 (bytes into file)
  Start of section headers:          12568 (bytes into file)
  Flags:                             0x0
  Size of this header:               64 (bytes)
  Size of program headers:           56 (bytes)
  Number of program headers:         11
  Size of section headers:           64 (bytes)
  Number of section headers:         27
  Section header string table index: 26

root@qemux86-64:/usr/share/dotnet# file /usr/bin/python3.7
/usr/bin/python3.7: ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV)=
, dynamically linked, interpreter /lib/ld-linux-x86-64.so.2, BuildID[sha1]=
=3Da455873f278466378405802b0e0171337e52a81c, for GNU/Linux 3.2.0, stripped

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

The only difference I found, is that Python is a "ELF 64-bit LSB pie execut=
able" whereas dotnet is a "ELF 64-bit LSB executable". I tried to turn that=
 PIE (seemed to be a gcc option: --enable-default-pie) feature of, but that=
 didn't work well, and I couldn't find a way to remove it.


----

Best regards,

Christian Lohr
Im Auftrag von:
Carl Zeiss Meditec AG
G=F6schwitzer Strasse 51-52
07745 Jena, Deutschland
christian.lohr.ext@zeiss.com<mailto:christian.lohr.ext@zeiss.com>
Tel: +493641220206




--_000_AM0P190MB07705DB273CD954279B282F3C21B0AM0P190MB0770EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">I&#8217;m trying to create a normal QE=
mu (x86-64) Image, which I can let run in Virtualbox. As a addition I deplo=
yed .NET Core, which I got from this side:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><a href=3D"https://dotnet.microsoft.com/download/dot=
net-core/thank-you/runtime-aspnetcore-3.1.1-linux-x64-binaries"><span lang=
=3D"EN-US">https://dotnet.microsoft.com/download/dotnet-core/thank-you/runt=
ime-aspnetcore-3.1.1-linux-x64-binaries</span></a><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">But I can&#8217;t execute it:<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">----------------------------<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">root@qemux86-64:/usr/share/dotnet# ./d=
otnet
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">-sh: ./dotnet: No such file or directo=
ry<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">But it is there:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">------------------<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">root@qemux86-64:/usr/share/dotnet# ls =
-lh<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">total 116K<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">-rw-r--r-- 1 root root 1.1K Feb 10 02:=
33 LICENSE.txt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">-rw-r--r-- 1 root root&nbsp; 31K Feb 1=
0 02:33 ThirdPartyNotices.txt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">-rwxr-xr-x 1 root root&nbsp; 72K Feb 1=
0 02:33 dotnet<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">drwxr-xr-x 3 root root 4.0K Feb 10 02:=
36 host<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">drwxr-xr-x 4 root root 4.0K Feb 10 02:=
36 shared<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">It tried to get more information about=
 the dotnet-executable<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">--------------------------------------=
----------------------------------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">root@qemux86-64:/usr/share/dotnet# rea=
delf -h dotnet
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">ELF Header:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Magic:&nbsp;&nbsp; 7f 45 4c 46 =
02 01 01 00 00 00 00 00 00 00 00 00
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp;&nbsp;Class:&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E=
LF64<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Data:&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2=
's complement, little endian<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Version:&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 (current)<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; OS/ABI:&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UNIX - Syst=
em V<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; ABI Version:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Type:&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E=
XEC (Executable file)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Machine:&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Advanced Micro D=
evices X86-64<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Version:&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x1<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Entry point address:&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0=
x402f17<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Start of program headers:&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 64 (bytes into file)<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Start of section headers:&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 71032 (bytes into file)<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Flags:&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x0<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Size of this header:&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6=
4 (bytes)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Size of program headers:&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 56 (bytes)<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Number of program headers:&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Size of section headers:&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;64 (bytes)<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Number of section headers:&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 31<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Section header string table ind=
ex: 30<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">root@qemux86-64:/usr/share/dotnet# &nb=
sp;file dotnet<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">dotnet: ELF 64-bit LSB executable, x86=
-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-=
64.so.2, for GNU/Linux 2.6.32, BuildID[sha1]=3D28c244c1953bcbee994709a4b849=
086ee7cf0c99,
 stripped<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">I compared those values with that from=
 Python, which does run on this system<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">--------------------------------------=
-----------------------------------------------------------------<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">root@qemux86-64:/opt/jre-8/bin# readel=
f -h /usr/bin/python3.7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">ELF Header:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Magic:&nbsp;&nbsp; 7f 45 4c 46 =
02 01 01 00 00 00 00 00 00 00 00 00
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp;&nbsp;Class:&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; E=
LF64<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Data:&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2=
's complement, little endian<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Version:&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 (current)<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; OS/ABI:&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UNIX - Syst=
em V<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; ABI Version:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Type:&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D=
YN (Shared object file)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Machine:&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Advanced Micro D=
evices X86-64<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Version:&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x1<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Entry point address:&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0=
x1060<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Start of program headers:&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 64 (bytes into file)<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Start of section headers:&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12568 (bytes into file)<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Flags:&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x0<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Size of this header:&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6=
4 (bytes)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Size of program headers:&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 56 (bytes)<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Number of program headers:&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Size of section headers:&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 64 (bytes)<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Number of section headers:&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 27<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp; Section header string table ind=
ex: 26<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">root@qemux86-64:/usr/share/dotnet# file /usr/bin/pyth=
on3.7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">/usr/bin/python3.7: ELF 64-bit LSB pie=
 executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib=
/ld-linux-x86-64.so.2, BuildID[sha1]=3Da455873f278466378405802b0e0171337e52=
a81c,
 for GNU/Linux 3.2.0, stripped<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">The only difference I found, is that P=
ython is a &#8220;ELF 64-bit LSB pie executable&#8221; whereas dotnet is a =
&#8220;ELF 64-bit LSB executable&#8221;. I tried to turn that PIE (seemed
 to be a gcc option: --enable-default-pie) feature of, but that didn&#8217;=
t work well, and I couldn&#8217;t find a way to remove it.<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">----<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Best regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;text-autospace:none"><=
span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;mso=
-fareast-language:DE">Christian Lohr<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;text-autospace:none"><=
span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;mso=
-fareast-language:DE">Im Auftrag von:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;text-autospace:none"><=
span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;mso=
-fareast-language:DE">Carl Zeiss Meditec AG<br>
G=F6schwitzer Strasse 51-52<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;text-autospace:none"><=
span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;mso=
-fareast-language:DE">07745 Jena, Deutschland<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;text-autospace:none"><=
span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:black;mso-fareast-language:DE"><a href=3D"mailto:christian.lohr.ext@zeis=
s.com">christian.lohr.ext@zeiss.com</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;mso-fareast-language:DE">Tel: &#43;493641220206</span>=
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif"><=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;text-autospace:none"><=
span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:black;mso-fareast-language:DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;text-autospace:none"><=
span style=3D"font-size:10.0pt;color:black;mso-fareast-language:DE"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_AM0P190MB07705DB273CD954279B282F3C21B0AM0P190MB0770EURP_--
