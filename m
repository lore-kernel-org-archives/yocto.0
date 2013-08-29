Return-Path: <B19537@freescale.com>
Received: from db9outboundpool.messaging.microsoft.com
	(mail-db9lp0252.outbound.messaging.microsoft.com [213.199.154.252])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24EBAE01570
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 19:33:33 -0700 (PDT)
Received: from mail73-db9-R.bigfish.com (10.174.16.246) by
	DB9EHSOBE025.bigfish.com (10.174.14.88) with Microsoft SMTP Server id
	14.1.225.22; Thu, 29 Aug 2013 02:33:32 +0000
Received: from mail73-db9 (localhost [127.0.0.1])	by mail73-db9-R.bigfish.com
	(Postfix) with ESMTP id 554BC1D400DB;
	Thu, 29 Aug 2013 02:33:32 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -1
X-BigFish: VS-1(zz9371Ic85fh4015Izz1f42h208ch1ee6h1de0h1fdah2073h1202h1e76h1d1ah1d2ah1fc6hzz1d7338h1de098h17326ah18c673h1c8fb4h186068h8275bh8275dh1de097hz2dh2a8h839h8e2h8e3hd25hf0ah1288h12a5h12bdh137ah1441h1504h1537h153bh15d0h162dh1631h1758h18e1h1946h19b5h1ad9h1b0ah1b2fh1bceh1fb3h1d0ch1d2eh1d3fh1dfeh1dffh1e1dh1fe8h1ff5hbe9i1155h)
Received: from mail73-db9 (localhost.localdomain [127.0.0.1]) by mail73-db9
	(MessageSwitch) id 1377743609190418_29222;
	Thu, 29 Aug 2013 02:33:29 +0000 (UTC)
Received: from DB9EHSMHS016.bigfish.com (unknown [10.174.16.231])	by
	mail73-db9.bigfish.com (Postfix) with ESMTP id 20F45130004A;
	Thu, 29 Aug 2013 02:33:29 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB9EHSMHS016.bigfish.com
	(10.174.14.26) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Thu, 29 Aug 2013 02:33:28 +0000
Received: from 039-SN2MPN1-023.039d.mgd.msft.net ([169.254.3.40]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.03.0146.002; Thu, 29 Aug 2013 02:33:27 +0000
From: Luo Zhenhua-B19537 <B19537@freescale.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Thread-Topic: [yocto] [meta-freescale] [meta-fsl-ppc] MPC8572 Machine with
	Dylan
Thread-Index: AQHOpAx/RLdDQmDDHkawmUHlmH7fO5mrdJ4g
Date: Thu, 29 Aug 2013 02:33:26 +0000
Message-ID: <CA452391058F6D4E9715FB2C29D9312A016C87D6@039-SN2MPN1-023.039d.mgd.msft.net>
References: <CA+gsK-ogYkoRW0RFgGveiB6oHM-FKhF_KLg7L5JEM-k7r0omUA@mail.gmail.com>
In-Reply-To: <CA+gsK-ogYkoRW0RFgGveiB6oHM-FKhF_KLg7L5JEM-k7r0omUA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.208.84]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] [meta-fsl-ppc] MPC8572 Machine with Dylan
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
X-List-Received-Date: Thu, 29 Aug 2013 02:33:35 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CA452391058F6D4E9715FB2C29D9312A016C87D6039SN2MPN102303_"

--_000_CA452391058F6D4E9715FB2C29D9312A016C87D6039SN2MPN102303_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Rudi,

Mpc85xx series is not supported and removed since FSL QorIQ SDK 1.4(QorIQ-S=
DK-V1.4-20130625-yocto) which is based on Yocto 1.4(dylan), the machine con=
figure files are removed from dylan/master of meta-fsl-ppc layer to avoid u=
nexpected issues.  http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/c=
ommit/?h=3Ddylan&id=3Dee9e6378f4f2651b78bb5ccc804f7dda627569d6

QorIQ SDK 1.3.2 uses denzil of Poky, you can use danny/denzil/edison for im=
age build of mpc85xx series.


Best Regards,

Zhenhua

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Rudolf Streif
Sent: Thursday, August 29, 2013 12:34 AM
To: Yocto Discussion Mailing List
Subject: [yocto] [meta-freescale] [meta-fsl-ppc] MPC8572 Machine with Dylan

I am looking to build for MPC8572 with Dylan and checked out the meta-fsl-p=
pc BSP layer. Seems like support for that machine was removed in May [1]. T=
he reason given was " *u-boot code base can not support mpc85xx for sdk 1.3=
.2". Howerver, that was contested in a follow-up e-mail. Interestingly, the=
 QorIQ-SDK-V1.3.2-20130325-yocto does contain meta-fsl-ppc with support for=
 that machine.

I grepped through the git log but could not even find the commit that remov=
ed it.

Could someone please comment on the status? Is the BSP layer contained in Q=
orIQ-SDK-V1.3.2-20130325-yocto compatible with Dylan?


Thanks,
Rudi


[1] https://lists.yoctoproject.org/pipermail/meta-freescale/2013-May/002679=
.html

--_000_CA452391058F6D4E9715FB2C29D9312A016C87D6039SN2MPN102303_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:m=3D"http://schema=
s.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html=
40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
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
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Rudi,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Mpc85xx series is not sup=
ported and removed since FSL QorIQ SDK 1.4(QorIQ-SDK-V1.4-20130625-yocto) w=
hich is based on Yocto 1.4(dylan), the machine configure
 files are removed from dylan/master of meta-fsl-ppc layer to avoid unexpec=
ted issues. &nbsp;</span><a href=3D"http://git.yoctoproject.org/cgit/cgit.c=
gi/meta-fsl-ppc/commit/?h=3Ddylan&amp;id=3Dee9e6378f4f2651b78bb5ccc804f7dda=
627569d6">http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/commit/?h=
=3Ddylan&amp;id=3Dee9e6378f4f2651b78bb5ccc804f7dda627569d6</a><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;=
;color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">QorIQ SDK 1.3.2 uses denz=
il of Poky, you can use danny/denzil/edison for image build of mpc85xx seri=
es.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Best Regards,<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Zhenhua<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Rudolf Streif<br>
<b>Sent:</b> Thursday, August 29, 2013 12:34 AM<br>
<b>To:</b> Yocto Discussion Mailing List<br>
<b>Subject:</b> [yocto] [meta-freescale] [meta-fsl-ppc] MPC8572 Machine wit=
h Dylan<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:#666666">I am looking to build for M=
PC8572 with Dylan and checked out the meta-fsl-ppc BSP layer. Seems like su=
pport for that machine was removed in May [1]. The reason
 given was &quot;</span><span style=3D"color:black"> *u-boot code base can =
not support mpc85xx for sdk 1.3.2&quot;. Howerver, that was contested in a =
follow-up e-mail. Interestingly, the QorIQ-SDK-V1.3.2-20130325-yocto does c=
ontain meta-fsl-ppc with support for that machine.</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:#666666">I grepped through the git l=
og but could not even find the commit that removed it.</span><o:p></o:p></p=
>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:#666666">Could someone please comment on the status? =
Is the BSP layer contained in QorIQ-SDK-V1.3.2-20130325-yocto compatible wi=
th Dylan?</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:#666666">Thanks,</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:#666666">Rudi</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:#666666">[1]&nbsp;</span><a href=3D"=
https://lists.yoctoproject.org/pipermail/meta-freescale/2013-May/002679.htm=
l">https://lists.yoctoproject.org/pipermail/meta-freescale/2013-May/002679.=
html</a><o:p></o:p></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_CA452391058F6D4E9715FB2C29D9312A016C87D6039SN2MPN102303_--
