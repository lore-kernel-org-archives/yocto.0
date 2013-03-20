Return-Path: <sipke.vriend@xilinx.com>
Received: from db8outboundpool.messaging.microsoft.com
	(mail-db8lp0189.outbound.messaging.microsoft.com [213.199.154.189])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDF25E01469;
	Tue, 19 Mar 2013 21:08:29 -0700 (PDT)
Received: from mail202-db8-R.bigfish.com (10.174.8.254) by
	DB8EHSOBE024.bigfish.com (10.174.4.87) with Microsoft SMTP Server id
	14.1.225.23; Wed, 20 Mar 2013 04:08:28 +0000
Received: from mail202-db8 (localhost [127.0.0.1])	by
	mail202-db8-R.bigfish.com (Postfix) with ESMTP id 5514DC00099;
	Wed, 20 Mar 2013 04:08:28 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:149.199.60.83; KIP:(null); UIP:(null); IPV:NLI;
	H:xsj-gw1; RD:unknown-60-83.xilinx.com; EFVD:NLI
X-SpamScore: 0
X-BigFish: VPS0(zzc85fh14ffIdb82hzz1f42h1ee6h1de0h1202h1e76h1d1ah1d2ahzz17326ah8275dh18c673h8275bhz2fh95h668h839hd24hf0ah119dh1288h12a5h12bdh137ah1441h14ddh1504h1537h153bh162dh1631h1758h18e1h1946h19b5h1b0ah906i1155h)
Received-SPF: pass (mail202-db8: domain of xilinx.com designates 149.199.60.83
	as permitted sender) client-ip=149.199.60.83;
	envelope-from=sipke.vriend@xilinx.com; helo=xsj-gw1 ;
	helo=xsj-gw1 ; 
Received: from mail202-db8 (localhost.localdomain [127.0.0.1]) by mail202-db8
	(MessageSwitch) id 1363752506366491_15407;
	Wed, 20 Mar 2013 04:08:26 +0000 (UTC)
Received: from DB8EHSMHS025.bigfish.com (unknown [10.174.8.240])	by
	mail202-db8.bigfish.com (Postfix) with ESMTP id 56C8E5C004F;
	Wed, 20 Mar 2013 04:08:26 +0000 (UTC)
Received: from xsj-gw1 (149.199.60.83) by DB8EHSMHS025.bigfish.com
	(10.174.4.35) with Microsoft SMTP Server id 14.1.225.23;
	Wed, 20 Mar 2013 04:08:25 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]
	helo=xsj-smtp1.xilinx.com)	by xsj-gw1 with esmtp (Exim
	4.63)	(envelope-from <sipke.vriend@xilinx.com>)	id 1UIAK8-0001cg-Qt;
	Tue, 19 Mar 2013 21:08:24 -0700
From: Sipke Vriend <sipke.vriend@xilinx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: TUNE_PKGARCH for Microblaze
Thread-Index: Ac4lGvRWCMgC7lCzQ3WJMTlC0IRu/Q==
Date: Wed, 20 Mar 2013 04:08:23 +0000
Accept-Language: en-AU, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.162.153]
MIME-Version: 1.0
X-RCIS-Action: ALLOW
Message-ID: <3c725a86-09c2-4c5a-b9c8-541e4a70ee5f@DB8EHSMHS025.ehs.local>
X-OriginatorOrg: xilinx.com
Cc: "meta-xilinx@yoctoproject.org" <meta-xilinx@yoctoproject.org>
Subject: TUNE_PKGARCH for Microblaze
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
X-List-Received-Date: Wed, 20 Mar 2013 04:08:30 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_013C21CBE857074E966A9022D6B61ED3509DE2XSJPSEXMBX01xlnxx_"

--_000_013C21CBE857074E966A9022D6B61ED3509DE2XSJPSEXMBX01xlnxx_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,



We are seeking some feedback regarding common practices for defining TUNE_P=
KGARCH within Yocto.



We need to define a unique TUNE_PKGARCH for the possible configuration of M=
icroblaze architecture.

Our proposal is short unique string for each HW feature which is enabled in=
 Microblaze.



For 'extensive hardware usage' architecture, this would result in something=
 like:

mbebv730-bs-mh-div-fb-cmp

mbebv840-bs-mh-div-fb-cmp-re

mbelv840-bs-ml-div-fe-cmp-re

and for architecture with no 'hardware usage':

mbebv730

mbebv840

mbelv840



The table below details the unique strings and their relation to compiler a=
nd hardware flags, and a couple of versions of Microblaze architecture.

(If this table does not show cleanly switch to fixed width font)

-------------------

String Compiler Flag        Hardware Flag         CPU versions

       -mcpu=3DvX.YY.Z                              v7.30.a v8.40.a



mbel   -mlittle-endian      C_ENDIANNESS (LITTLE) -       o

mbeb   -mbig-endian         C_ENDIANNESS (BIG)    x       o



bs     -mxl-barrel-shift    C_USE_BARREL          o       o



ml     -mnoxl-soft-mul      C_USE_HW_MUL (MUL32)  o       o

mh     -mxl-multiply-high   C_USE_HW_MUL (MUL64)  o       o



div    -mnoxl-soft-div      C_USE_DIV             o       o



fb     -mhard-float         C_USE_FPU (BASIC)     o       o

fe     -mxl-float-convert   C_USE_FPU (EXTENDED)  o       o

fe     -mxl-float-sqrt      C_USE_FPU (EXTENDED)  o       o



cmp   -mxl-pattern-compare  C_USE_PCMP_INSTR      o       o



re    -mxl-reorder          C_USE_REORDER_INSTR   -       o



Where '-' means unavailable 'x' is only option and 'o' is optional.

-------------------



Note the table rows have hardware feature 'groupings', which means only one=
 of the strings should be present within the TUNE_PKGARCH. For example the =
Floating Point Unit hardware feature can be defined by either fb (for basic=
 mode) or fe (for extended mode).



Regards

Sipke


--_000_013C21CBE857074E966A9022D6B61ED3509DE2XSJPSEXMBX01xlnxx_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-AU" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">Hi all,<o:p></o:p=
></span></font></p>
<p class=3D"MsoPlainText"><font face=3D"Courier New"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">We are seeking so=
me feedback regarding common practices for defining TUNE_PKGARCH within Yoc=
to.<o:p></o:p></span></font></p>
<p class=3D"MsoPlainText"><font face=3D"Courier New"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">We need to define=
 a unique TUNE_PKGARCH for the possible configuration of Microblaze archite=
cture.<o:p></o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">Our proposal is s=
hort unique string for each HW feature which is enabled in Microblaze.
<o:p></o:p></span></font></p>
<p class=3D"MsoPlainText"><font face=3D"Courier New"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">For &#8216;extens=
ive hardware usage&#8217; architecture, this would result in something like=
:<o:p></o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">mbebv730-bs-mh-di=
v-fb-cmp<o:p></o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">mbebv840-bs-mh-di=
v-fb-cmp-re<o:p></o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">mbelv840-bs-ml-di=
v-fe-cmp-re<o:p></o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">and for architect=
ure with no &#8216;hardware usage&#8217;:<o:p></o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">mbebv730<o:p></o:=
p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">mbebv840<o:p></o:=
p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">mbelv840<o:p></o:=
p></span></font></p>
<p class=3D"MsoPlainText"><font face=3D"Courier New"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">The table below d=
etails the unique strings and their relation to compiler and hardware flags=
, and a couple of versions of Microblaze architecture.<o:p></o:p></span></f=
ont></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">(If this table do=
es not show cleanly switch to fixed width font)<o:p></o:p></span></font></p=
>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">-----------------=
--<o:p></o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">String Compiler F=
lag&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hardware Flag&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;CPU versions<o:p></o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; &nbsp;-mcpu=3DvX.YY.Z&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; v7.30.a v8.40.a=
<o:p></o:p></span></font></p>
<p class=3D"MsoPlainText"><font face=3D"Courier New"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">mbel&nbsp; &nbsp;=
-mlittle-endian&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C_ENDIANNESS (LITTLE) -&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; o<o:p></o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">mbeb&nbsp; &nbsp;=
-mbig-endian&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C_ENDIANNESS (=
BIG)&nbsp;&nbsp;&nbsp; x&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; o<o:p></o:p></=
span></font></p>
<p class=3D"MsoPlainText"><font face=3D"Courier New"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">bs&nbsp;&nbsp;&nb=
sp; &nbsp;-mxl-barrel-shift&nbsp;&nbsp;&nbsp; C_USE_BARREL&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; o&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 o<o:p></o:p></span></font></p>
<p class=3D"MsoPlainText"><font face=3D"Courier New"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">ml&nbsp;&nbsp;&nb=
sp; &nbsp;-mnoxl-soft-mul&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C_USE_HW_MUL (MUL32=
)&nbsp; o&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; o<o:p></o:p></span></font></p=
>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">mh&nbsp;&nbsp;&nb=
sp; &nbsp;-mxl-multiply-high&nbsp;&nbsp; C_USE_HW_MUL (MUL64)&nbsp; o&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; o<o:p></o:p></span></font></p>
<p class=3D"MsoPlainText"><font face=3D"Courier New"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">div&nbsp;&nbsp; &=
nbsp;-mnoxl-soft-div&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C_USE_DIV&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; o&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; o<o:p></o:p></span></font></p>
<p class=3D"MsoPlainText"><font face=3D"Courier New"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">fb&nbsp;&nbsp;&nb=
sp; &nbsp;-mhard-float&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C_US=
E_FPU (BASIC)&nbsp;&nbsp;&nbsp;&nbsp; o&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 o<o:p></o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">fe&nbsp;&nbsp;&nb=
sp; &nbsp;-mxl-float-convert&nbsp;&nbsp; C_USE_FPU (EXTENDED)&nbsp; o&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; o<o:p></o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">fe&nbsp;&nbsp;&nb=
sp; &nbsp;-mxl-float-sqrt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C_USE_FPU (EXTENDED=
)&nbsp; o&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; o<o:p></o:p></span></font></p=
>
<p class=3D"MsoPlainText"><font face=3D"Courier New"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">cmp&nbsp;&nbsp; -=
mxl-pattern-compare&nbsp; C_USE_PCMP_INSTR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; o&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; o<o:p></o:p></span></font></p>
<p class=3D"MsoPlainText"><font face=3D"Courier New"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">re&nbsp;&nbsp;&nb=
sp; -mxl-reorder&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C_US=
E_REORDER_INSTR&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; o<o:p></o=
:p></span></font></p>
<p class=3D"MsoPlainText"><font face=3D"Courier New"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">Where &#8216;&#82=
11;&#8216; means unavailable &#8216;x&#8217; is only option and &#8216;o&#8=
217; is optional.<o:p></o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">-----------------=
--<o:p></o:p></span></font></p>
<p class=3D"MsoPlainText"><font face=3D"Courier New"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">Note the table ro=
ws have hardware feature &#8216;groupings&#8217;, which means only one of t=
he strings should be present within the TUNE_PKGARCH. For example
 the Floating Point Unit hardware feature can be defined by either fb (for =
basic mode) or fe (for extended mode).<o:p></o:p></span></font></p>
<p class=3D"MsoPlainText"><font face=3D"Courier New"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">Regards<o:p></o:p=
></span></font></p>
<p class=3D"MsoPlainText"><font size=3D"2" face=3D"Courier New"><span style=
=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;">Sipke<o:p></o:p><=
/span></font></p>
<p class=3D"MsoPlainText"><font face=3D"Courier New"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoPlainText"><font face=3D"Courier New"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoPlainText"><font face=3D"Courier New"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></font></p>
</div>
<br clear=3Dall> =

</body>
</html>


--_000_013C21CBE857074E966A9022D6B61ED3509DE2XSJPSEXMBX01xlnxx_--
