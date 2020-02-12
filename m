Received: from msgsrv3.atosorigin.de (msgsrv3.atosorigin.de [194.8.120.225])
 by mx.groups.io with SMTP id smtpd.web11.2441.1581498902953530218
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Feb 2020 01:15:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@zeiss.onmicrosoft.com header.s=selector2-zeiss-onmicrosoft-com header.b=c3PZMQcP;
 spf=pass (domain: zeiss.com, ip: 194.8.120.225, mailfrom: christian.lohr.ext@zeiss.com)
Received: from julia-mo2.my-it-solutions.net (HELO julia-mo2.ccsn.de.ao-srv.com) ([194.8.124.179])
  by msgsrv-out1.atosorigin.de with ESMTP; 12 Feb 2020 10:15:00 +0100
Received: from julia-mo2.ccsn.de.ao-srv.com (unknown [194.8.124.179]) by MCS02-MA1.atosorigin.de with smtp
	 id 1918_373a_011d7691_9f3e_435b_9856_a457c059450c;
	Wed, 12 Feb 2020 10:14:59 +0100
Received: from julia-mo2 (localhost [127.0.0.1])
	by julia-mo2.ccsn.de.ao-srv.com (Postfix) with ESMTP id 1FB34192AF7F;
	Wed, 12 Feb 2020 10:14:42 +0100 (CET)
Received: from ADEERL01IMS011.zeiss.org (ADEERL01IMS011.zeiss.org [10.193.156.178])
	by julia-mo2.ccsn.de.ao-srv.com (Postfix) with ESMTP id E4D46192AF7F;
	Wed, 12 Feb 2020 10:14:41 +0100 (CET)
Received: from ADEERL01IMS011 (localhost [127.0.0.1])
	by ADEERL01IMS011.zeiss.org (Postfix) with ESMTP id CBB88265DCA;
	Wed, 12 Feb 2020 09:14:59 +0000 (GMT)
Received: from ADEFUE01SMS004.cznet.zeiss.org (adefue01sms004.zeiss.org [10.167.4.49])
	by ADEERL01IMS011.zeiss.org (Postfix) with ESMTP id C1A17265CA1;
	Wed, 12 Feb 2020 09:14:59 +0000 (GMT)
Received: from ADEFUE01IUCC23.zeiss.org (10.167.12.168) by
 adefue01sms004.cznet.zeiss.org (10.167.4.49) with Microsoft SMTP Server (TLS)
 id 14.3.468.0; Wed, 12 Feb 2020 10:14:59 +0100
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (104.47.13.57) by
 hybrid.ext.smtp.zeiss.com (217.115.69.78) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
 15.1.845.34; Wed, 12 Feb 2020 10:14:59 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JEEOxV3unS2uN7AfzPfUIppIwq9cm4pk8ouu5nkj8Soy5iPnmaxvrs8mbQTr1+qFua9424WJIWHHcY5oULO48TfKhAN3wYJn3HeYg/LXrjZccrxSwMBCD2z1OPBFwLNsnpZROvQXqv04EpQkZVxhQwb4Tf0P38yKfE+/2Wz8cwBV1pqOQgVqeChizwvbEP/i1/IckDynA4tWozAxyKuZA89/XUY1bD9cwE2kwjSbCxc4B5Df2t0RXusfStpRkReuF6mEYBekCDVU74jD7aDkFpeIZ5HQM5008Rr+Du7niZ0ba56Ll0O3ySRunjsln7jQEZmA1/9+1LtcArgfMVZpug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P5ElsCVPgUnk9oMd/LXfW57gIOwFuFoh8CdlIbJI6pw=;
 b=M9/cxtHmvupSnJyAz9OQuNa/id7BkWmYGbcDq++7pyT4J38H5S9jYLMSDidTIYeLlWXL3OQspSZazS7gY8Qfgy38NgW/eB6BLtEpleRN2XsOj9Avr+T2i059x45bfNll03qW+Ef0uj0IL8ZZVEe5tNEyqGNXXnTK7jJHlp509USxZF76ziAYlVxuww12DBwMQeV8JLp26PfqmyBvLVhp2WLjaDCnNYx/KrrUbNiywJa7Tq/b+U1i2dZCYetaFRYnp/kRx01h7fec9jzUbKw0Od9+1AIzDZTzd17eajL8xjYo7x9YKGF94ujs7RTI1tKvYwbaiQCr7YX7bH6LXlDeTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=zeiss.com; dmarc=pass action=none header.from=zeiss.com;
 dkim=pass header.d=zeiss.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zeiss.onmicrosoft.com;
 s=selector2-zeiss-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P5ElsCVPgUnk9oMd/LXfW57gIOwFuFoh8CdlIbJI6pw=;
 b=c3PZMQcP020KwwYp2nP79/NnLYnr4PRgjBpbIKH9mhmKr8cUAXYN+QmyXGAG5bkESo9vRGICL38AkiSVJsP4Zt6UlH8A0xRk8AX3OeT5jG/ewROLUR6sphhouTPGwjM4dCcJFCAIegljzgtEoDiKo0QD9ZgE/A3auBA5AM2glQs=
Received: from AM0P190MB0770.EURP190.PROD.OUTLOOK.COM (10.186.130.84) by
 AM0P190MB0610.EURP190.PROD.OUTLOOK.COM (10.186.129.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23; Wed, 12 Feb 2020 09:14:58 +0000
Received: from AM0P190MB0770.EURP190.PROD.OUTLOOK.COM
 ([fe80::80ea:37a2:d08c:8e9e]) by AM0P190MB0770.EURP190.PROD.OUTLOOK.COM
 ([fe80::80ea:37a2:d08c:8e9e%6]) with mapi id 15.20.2729.021; Wed, 12 Feb 2020
 09:14:58 +0000
From: "Christian Lohr" <christian.lohr.ext@zeiss.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Creating a QEmu (x86-64) Image, which can execute binary applications from other x86-64 linux OSes
Thread-Topic: [yocto] Creating a QEmu (x86-64) Image, which can execute binary
 applications from other x86-64 linux OSes
Thread-Index: AdXhe7XXITfcuZjzRnOvXbaB5vpC8wABeHmAAAAvroA=
Date: Wed, 12 Feb 2020 09:14:58 +0000
Message-ID: <AM0P190MB07703F67D36E568E0AB7671CC21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
References: <AM0P190MB07705DB273CD954279B282F3C21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
 <CANNYZj-q2rFtyHGdJfTO6e=7C0RrokZwTcCoVd-nHw1=trd+_A@mail.gmail.com>
In-Reply-To: <CANNYZj-q2rFtyHGdJfTO6e=7C0RrokZwTcCoVd-nHw1=trd+_A@mail.gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=christian.lohr.ext@zeiss.com; 
x-originating-ip: [165.225.200.221]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 98815bc1-5ec9-4ab9-94d5-08d7af9c0816
x-ms-traffictypediagnostic: AM0P190MB0610:
x-microsoft-antispam-prvs: <AM0P190MB0610883C1E06F8312EF26A54C21B0@AM0P190MB0610.EURP190.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0311124FA9
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(396003)(366004)(39860400002)(376002)(136003)(346002)(199004)(189003)(19627235002)(71200400001)(2906002)(66446008)(9686003)(66574012)(55016002)(4326008)(86362001)(52536014)(66476007)(33656002)(64756008)(66556008)(316002)(76116006)(66946007)(478600001)(6506007)(966005)(7696005)(8676002)(8936002)(81166006)(81156014)(186003)(6916009)(26005)(45080400002)(5660300002)(55236004);DIR:OUT;SFP:1102;SCL:1;SRVR:AM0P190MB0610;H:AM0P190MB0770.EURP190.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: zeiss.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7+0FQrvnEfhn8dI+XwhgHe4K77lBo4Y24iIFa7pvX+MQYwq2gJm5Epvg4iM1LTu9rK0vM6nAo8NtUWWO7n/bo19OCCmJS9ibdcnwX8hBNQu1xzC/CjVOCBl6e2f44/UmRCVhsb2E2+DRg+yob7nEJOL8K7xv2iRlINHFj/FdEgRtFV3z1oRlH+QK1RVxMUWNaD8AwvgwX4NqeC4VvF/I8QUraYyZvSdeSicqvX0N6yNHp0QA3oX/wH39uKPnuruc4A9goRtmytSZtORIxdQt8iFJlf2K/WUj00KdeU0+p4D7I57zKftYlLPCizyrDEcb5OMrVhPb6PblI8SBaxY0x01IM5xet4dOkm19kDf3zF2fb3pX/6cj/ZPSpasSbkgwRwf4GleRa2H23Yp3DxN062qVHa6D4YMrMO7xSiiQU7KtHw7CAxCmVnhkTOI8oPlYgTTJKmpwuAL+hO0dcrP9I3H73dDokY/Xo9f9QXy9N/EgDvaJfDGlOr67k/dKgg0Pdw714qCUYrXKi5R8v9+7ZA==
x-ms-exchange-antispam-messagedata: OtGBACEDrN1bTGysg1E089HnSTDIs/qrOQJsKwcR2dMz3Kwcj7GMXxBj2qzxrcT340AjTRHTBj7Zo92hdGUrGjaNy510Ols2l6X8aZrHjRC1ZOY8AQQlsIdtIZ9Lrgm0s2GJHiFOOGGRIBH00KWVBQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 98815bc1-5ec9-4ab9-94d5-08d7af9c0816
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2020 09:14:58.0486
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 28042244-bb51-4cd6-8034-7776fa3703e8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gjna6cdsRijXAtYJVmiGDY2AoMkxUGMChOilgVxt11sW6p2NRogStL8Of4NDLIjIiV1IaBkg5hpobzjBq++vcPleRVg3rMKIfICq4MDFruw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0P190MB0610
X-OriginatorOrg: zeiss.com
X-NAI-Spam-Flag: NO
X-NAI-Spam-Level: 
X-NAI-Spam-Threshold: 8
X-NAI-Spam-Score: 0.7
X-NAI-Spam-Version: 2.3.0.9418 : core <6733> : inlines <7189> : streams
 <1847101> : uri <2986864>
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM0P190MB07703F67D36E568E0AB7671CC21B0AM0P190MB0770EURP_"

--_000_AM0P190MB07703F67D36E568E0AB7671CC21B0AM0P190MB0770EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Alex,

Thanks for replying. Yes, I know that this isn't the way it works on Yocto =
(and I told the managers it is a crappy idea to do that more than once). Bu=
t they need .NET Core in that company I work for, and Mono doesn't work (th=
at's what they told me). Compiling .NET Core through the Yocto process is u=
gly, because Microsoft used a mixture of shell scripts to compile it for so=
me platforms, it won't work this way on Yocto. Actually one already tried i=
t, but only until .NET Core 2.2: https://github.com/Tragetaschen/meta-aspne=
t
And despite this, I already managed to get the dotnet binaries for ARM32 an=
d ARM64 already working on a i.MX6 and i.MX8
There's a layer which just deploys the binaries: https://github.com/RDunkle=
y/meta-dotnet-core
This is currently the last step. I thought if it worked on i.MX6 and i.MX8 =
it shouldn't be a problem to get it running on Virtualbox with x86-64. It s=
hould only make the things easy for the developers. It isn't even our targe=
t platform.

Best regards,


Christian Lohr
Von: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> Im Auftrag=
 von Alexander Kanavin
Gesendet: Mittwoch, 12. Februar 2020 09:51
An: Lohr, Christian [ext] <christian.lohr.ext@zeiss.com>
Cc: yocto@lists.yoctoproject.org
Betreff: Re: [yocto] Creating a QEmu (x86-64) Image, which can execute bina=
ry applications from other x86-64 linux OSes

Yocto generally does not support this use case. The binary was compiled in =
a different environment and expects things in different places, and probabl=
y being different versions too. I could point out the specific problem why =
the executable doesn't even start, but it's really the wrong way to approac=
h it. Is the source code for it available?

Microsoft specifically lists which distributions are supported, and there i=
s nothing Yocto-based in it:
https://docs.microsoft.com/en-us/dotnet/core/install/dependencies?tabs=3Dne=
tcore31&pivots=3Dos-linux<https://eur01.safelinks.protection.outlook.com/?u=
rl=3Dhttps%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fdotnet%2Fcore%2Finstall%2Fd=
ependencies%3Ftabs%3Dnetcore31%26pivots%3Dos-linux&data=3D02%7C01%7C%7C888e=
6b4914864e22a1bb08d7af98d98a%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C6=
37170943326046135&sdata=3Dpc%2FsT2RL9SfOW5%2FigmZ8dkTS3UxmWbY5r120MPjeo2Y%3=
D&reserved=3D0>

For mono things you can use meta-mono layer, but I am not sure if it provid=
es exactly the item you're after.

Alex

On Wed, 12 Feb 2020 at 09:36, Christian Lohr <christian.lohr.ext@zeiss.com<=
mailto:christian.lohr.ext@zeiss.com>> wrote:
Hello,

I'm trying to create a normal QEmu (x86-64) Image, which I can let run in V=
irtualbox. As a addition I deployed .NET Core, which I got from this side:
https://dotnet.microsoft.com/download/dotnet-core/thank-you/runtime-aspnetc=
ore-3.1.1-linux-x64-binaries<https://eur01.safelinks.protection.outlook.com=
/?url=3Dhttps%3A%2F%2Fdotnet.microsoft.com%2Fdownload%2Fdotnet-core%2Fthank=
-you%2Fruntime-aspnetcore-3.1.1-linux-x64-binaries&data=3D02%7C01%7C%7C888e=
6b4914864e22a1bb08d7af98d98a%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C6=
37170943326056092&sdata=3DdIl3kSXN4AszmVdH1J0fc6I3QiB%2BLC%2BdYn6RJotnZW4%3=
D&reserved=3D0>

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





--_000_AM0P190MB07703F67D36E568E0AB7671CC21B0AM0P190MB0770EURP_
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.E-MailFormatvorlage18
	{mso-style-type:personal-reply;
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
<body lang=3D"DE" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;mso-fareast-language:EN-US">Hello Alex,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;mso-fareast-language:EN-US"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US">Thanks for =
replying. Yes, I know that this isn&#8217;t the way it works on Yocto (and =
I told the managers it is a crappy idea to do that more
 than once). But they need .NET Core in that company I work for, and Mono d=
oesn&#8217;t work (that&#8217;s what they told me). Compiling .NET Core thr=
ough the Yocto process is ugly, because Microsoft used a mixture of shell s=
cripts to compile it for some platforms, it
 won&#8217;t work this way on Yocto. Actually one already tried it, but onl=
y until .NET Core 2.2:
</span><a href=3D"https://github.com/Tragetaschen/meta-aspnet"><span lang=
=3D"EN-US">https://github.com/Tragetaschen/meta-aspnet</span></a><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-ser=
if;mso-fareast-language:EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US">And despite=
 this, I already managed to get the dotnet binaries for ARM32 and ARM64 alr=
eady working on a i.MX6 and i.MX8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">There&#8217;s a layer which jus=
t deploys the binaries:
<a href=3D"https://github.com/RDunkley/meta-dotnet-core">https://github.com=
/RDunkley/meta-dotnet-core</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US">This is cur=
rently the last step. I thought if it worked on i.MX6 and i.MX8 it shouldn&=
#8217;t be a problem to get it running on Virtualbox with
 x86-64. It should only make the things easy for the developers. It isn&#82=
17;t even our target platform.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US"><o:p>&nbsp;=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US">Best regard=
s,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-US"><o:p>&nbsp;=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;text-autospace:none"><=
span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif">Ch=
ristian Lohr<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b>Von:</b> yocto@lists.yoctoproject.org &lt;yocto@l=
ists.yoctoproject.org&gt;
<b>Im Auftrag von </b>Alexander Kanavin<br>
<b>Gesendet:</b> Mittwoch, 12. Februar 2020 09:51<br>
<b>An:</b> Lohr, Christian [ext] &lt;christian.lohr.ext@zeiss.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org<br>
<b>Betreff:</b> Re: [yocto] Creating a QEmu (x86-64) Image, which can execu=
te binary applications from other x86-64 linux OSes<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">Yocto generally does not support this use case. The =
binary was compiled in a different environment and expects things in differ=
ent places, and probably being different versions too. I could point out th=
e specific problem why the executable
 doesn't even start, but it's really the wrong way to approach it. Is the s=
ource code for it available?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Microsoft specifically lists which distributions are=
 supported, and there is nothing Yocto-based in it:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"https://eur01.safelinks.protection.outloo=
k.com/?url=3Dhttps%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fdotnet%2Fcore%2Fins=
tall%2Fdependencies%3Ftabs%3Dnetcore31%26pivots%3Dos-linux&amp;data=3D02%7C=
01%7C%7C888e6b4914864e22a1bb08d7af98d98a%7C28042244bb514cd680347776fa3703e8=
%7C1%7C0%7C637170943326046135&amp;sdata=3Dpc%2FsT2RL9SfOW5%2FigmZ8dkTS3UxmW=
bY5r120MPjeo2Y%3D&amp;reserved=3D0">https://docs.microsoft.com/en-us/dotnet=
/core/install/dependencies?tabs=3Dnetcore31&amp;pivots=3Dos-linux</a><o:p><=
/o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">For mono things you can use meta-mono layer, but I a=
m not sure if it provides exactly the item you're after.
<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Alex<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Wed, 12 Feb 2020 at 09:36, Christian Lohr &lt;<a =
href=3D"mailto:christian.lohr.ext@zeiss.com">christian.lohr.ext@zeiss.com</=
a>&gt; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans=
-serif">Hello,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans=
-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">I&#8217;m trying to create a normal QEmu (x86-64) Im=
age, which I can let run in Virtualbox. As a addition I
 deployed .NET Core, which I got from this side:</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><a href=3D"https://eur01.safelinks.protection.outlook.com/?url=3Dh=
ttps%3A%2F%2Fdotnet.microsoft.com%2Fdownload%2Fdotnet-core%2Fthank-you%2Fru=
ntime-aspnetcore-3.1.1-linux-x64-binaries&amp;data=3D02%7C01%7C%7C888e6b491=
4864e22a1bb08d7af98d98a%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C637170=
943326056092&amp;sdata=3DdIl3kSXN4AszmVdH1J0fc6I3QiB%2BLC%2BdYn6RJotnZW4%3D=
&amp;reserved=3D0" target=3D"_blank"><span lang=3D"EN-US">https://dotnet.mi=
crosoft.com/download/dotnet-core/thank-you/runtime-aspnetcore-3.1.1-linux-x=
64-binaries</span></a><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">But I can&#8217;t execute it:</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">----------------------------</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">root@qemux86-64:/usr/share/dotnet# ./dotnet
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">-sh: ./dotnet: No such file or directory</span><o:p>=
</o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">But it is there:</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">------------------</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">root@qemux86-64:/usr/share/dotnet# ls -lh</span><o:p=
></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">total 116K</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">-rw-r--r-- 1 root root 1.1K Feb 10 02:33 LICENSE.txt=
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">-rw-r--r-- 1 root root&nbsp; 31K Feb 10 02:33 ThirdP=
artyNotices.txt</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">-rwxr-xr-x 1 root root&nbsp; 72K Feb 10 02:33 dotnet=
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">drwxr-xr-x 3 root root 4.0K Feb 10 02:36 host</span>=
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">drwxr-xr-x 4 root root 4.0K Feb 10 02:36 shared</spa=
n><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">It tried to get more information about the dotnet-ex=
ecutable</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">----------------------------------------------------=
--------------------------</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">root@qemux86-64:/usr/share/dotnet# readelf -h dotnet
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">ELF Header:</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Magic:&nbsp;&nbsp; 7f 45 4c 46 02 01 01 00 00=
 00 00 00 00 00 00 00
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;&nbsp;Class:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ELF64</span><o:=
p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Data:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2's complement,=
 little endian</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 (current)</span><o:p></o:p><=
/p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; OS/ABI:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UNIX - System V</span><o:=
p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; ABI Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; 0</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;EXEC (Executabl=
e file)</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Machine:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Advanced Micro Devices X86-64<=
/span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x1</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Entry point address:&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x402f17</span>=
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Start of program headers:&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 64 (bytes into file)</span><o:p></o:p></=
p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Start of section headers:&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 71032 (bytes into file)</span><o:p></o:p=
></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Flags:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x0</span><o:p></o:p=
></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Size of this header:&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 64 (bytes)</spa=
n><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Size of program headers:&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 56 (bytes)</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Number of program headers:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Size of section headers:&nbsp; &nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;64 (bytes)</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Number of section headers:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 31</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Section header string table index: 30</span><=
o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">root@qemux86-64:/usr/share/dotnet# &nbsp;file dotnet=
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">dotnet: ELF 64-bit LSB executable, x86-64, version 1=
 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2,
 for GNU/Linux 2.6.32, BuildID[sha1]=3D28c244c1953bcbee994709a4b849086ee7cf=
0c99, stripped</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">I compared those values with that from Python, which=
 does run on this system</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">----------------------------------------------------=
---------------------------------------------------</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">root@qemux86-64:/opt/jre-8/bin# readelf -h /usr/bin/=
python3.7</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">ELF Header:</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Magic:&nbsp;&nbsp; 7f 45 4c 46 02 01 01 00 00=
 00 00 00 00 00 00 00
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;&nbsp;Class:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ELF64</span><o:=
p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Data:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2's complement,=
 little endian</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 (current)</span><o:p></o:p><=
/p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; OS/ABI:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UNIX - System V</span><o:=
p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; ABI Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; 0</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DYN (Shared obj=
ect file)</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Machine:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Advanced Micro Devices X86-64<=
/span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x1</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Entry point address:&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x1060</span><o=
:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Start of program headers:&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 64 (bytes into file)</span><o:p></o:p></=
p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Start of section headers:&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12568 (bytes into file)</span><o:p></o:p=
></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Flags:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x0</span><o:p></o:p=
></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Size of this header:&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 64 (bytes)</spa=
n><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Size of program headers:&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 56 (bytes)</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Number of program headers:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Size of section headers:&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 64 (bytes)</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Number of section headers:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 27</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp; Section header string table index: 26</span><=
o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans=
-serif">root@qemux86-64:/usr/share/dotnet# file /usr/bin/python3.7</span><o=
:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">/usr/bin/python3.7: ELF 64-bit LSB pie executable, x=
86-64, version 1 (SYSV), dynamically linked, interpreter
 /lib/ld-linux-x86-64.so.2, BuildID[sha1]=3Da455873f278466378405802b0e01713=
37e52a81c, for GNU/Linux 3.2.0, stripped</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">The only difference I found, is that Python is a &#8=
220;ELF 64-bit LSB pie executable&#8221; whereas dotnet is a &#8220;ELF
 64-bit LSB executable&#8221;. I tried to turn that PIE (seemed to be a gcc=
 option: --enable-default-pie) feature of, but that didn&#8217;t work well,=
 and I couldn&#8217;t find a way to remove it.</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">----</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">Best regards,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif=
">Christian Lohr</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif=
">Im Auftrag von:</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif=
">Carl Zeiss Meditec AG<br>
G=F6schwitzer Strasse 51-52</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif=
">07745 Jena, Deutschland</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif=
;color:black"><a href=3D"mailto:christian.lohr.ext@zeiss.com" target=3D"_bl=
ank">christian.lohr.ext@zeiss.com</a></span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans=
-serif">Tel: &#43;493641220206</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif=
;color:black">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t"><span style=3D"font-size:10.0pt;color:black">&nbsp;</span><o:p></o:p></p=
>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</blockquote>
</div>
</div>
</body>
</html>

--_000_AM0P190MB07703F67D36E568E0AB7671CC21B0AM0P190MB0770EURP_--
