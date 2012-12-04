Return-Path: <B38951@freescale.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe001.messaging.microsoft.com [213.199.154.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A87FE0075A
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2012 23:20:00 -0800 (PST)
Received: from mail69-am1-R.bigfish.com (10.3.201.252) by
	AM1EHSOBE005.bigfish.com (10.3.204.25) with Microsoft SMTP Server id
	14.1.225.23; Tue, 4 Dec 2012 07:19:58 +0000
Received: from mail69-am1 (localhost [127.0.0.1])	by mail69-am1-R.bigfish.com
	(Postfix) with ESMTP id 313C02A0110;
	Tue,  4 Dec 2012 07:19:54 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzc85fh1521Izz1de0h1202h1d1ah1d2ahzz17326ah8275bh8275dh18c673hz2dh2a8h668h839h8e2h8e3hd25hf0ah1288h12a5h12bdh137ah1441h1504h1537h153bh15d0h162dh1631hbe9i1155h)
Received: from mail69-am1 (localhost.localdomain [127.0.0.1]) by mail69-am1
	(MessageSwitch) id 1354605592562822_17163;
	Tue,  4 Dec 2012 07:19:52 +0000 (UTC)
Received: from AM1EHSMHS021.bigfish.com (unknown [10.3.201.228])	by
	mail69-am1.bigfish.com (Postfix) with ESMTP id 872D93C004B;
	Tue,  4 Dec 2012 07:19:52 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS021.bigfish.com
	(10.3.207.150) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 4 Dec 2012 07:19:48 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.213]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0318.003; Tue, 4 Dec 2012 07:19:46 +0000
From: Jia Hongtao-B38951 <B38951@freescale.com>
To: "kai.kang@windriver.com" <kai.kang@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: ghostscript running error on powerpc
Thread-Index: Ac3R77vhnIKqXjTmRemGXQxTbSMVgw==
Date: Tue, 4 Dec 2012 07:19:45 +0000
Message-ID: <412C8208B4A0464FA894C5F0C278CD5D01B43F75@039-SN1MPN1-003.039d.mgd.msft.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.193.20.51]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-Mailman-Approved-At: Tue, 04 Dec 2012 07:11:17 -0800
Cc: Jia Hongtao-B38951 <B38951@freescale.com>
Subject: ghostscript running error on powerpc
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
X-List-Received-Date: Tue, 04 Dec 2012 07:20:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_412C8208B4A0464FA894C5F0C278CD5D01B43F75039SN1MPN100303_"

--_000_412C8208B4A0464FA894C5F0C278CD5D01B43F75039SN1MPN100303_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Kai,

I got some running errors using ghostscript built by yocto on powerpc.
Note that this log is for ghostscript 9.04 and the current version on yocto
is 9.05 which has the same issue as 9.04.

Here is the log:

root@p1022ds:/usr/tmp/lm90plots# ps2pdf temps.ps temps.pdf

*** Warning: GenericResourceDir doesn't point to a valid resource directory=
.
               the -sGenericResourceDir=3D... option can be used to set thi=
s.

Error: /invalidaccess in /findfont
Operand stack:
   Helvetica
Execution stack:
   %interp_exit   .runexec2   --nostringval--   --nostringval--   --nostrin=
gval--   2   %stopped_push   --nostringval--   --nostringval--   --nostring=
val--   false   1   %stopped_push   1862   1   3   %oparray_pop   1861   1 =
  3   %oparray_pop   --nostringval--   1845   1   3   %oparray_pop   1739  =
 1   3   %oparray_pop   --nostringval--   %errorexec_pop   .runexec2   --no=
stringval--   --nostringval--   --nostringval--   2   %stopped_push   --nos=
tringval--   1820   1   4   %oparray_pop
Dictionary stack:
   --dict:1154/1684(ro)(G)--   --dict:0/20(G)--   --dict:82/200(L)--   --di=
ct:182/256(L)--
Current allocation mode is local
Last OS error: 2
Current file position is 16962
GPL Ghostscript 9.04: Unrecoverable error, exit code 1


I did some investigations on google but got nothing helpful.
So I wonder if you could help me to find out the reason?
I hope I'm not interrupting and looking forward to your message.

Thanks.


---
Best Regards,
Hongtao


--_000_412C8208B4A0464FA894C5F0C278CD5D01B43F75039SN1MPN100303_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
<p class=3D"MsoNormal">Hi Kai,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I got some running errors using ghostscript built by=
 yocto on powerpc.<o:p></o:p></p>
<p class=3D"MsoNormal">Note that this log is for ghostscript 9.04 and the c=
urrent version on yocto<o:p></o:p></p>
<p class=3D"MsoNormal">is 9.05 which has the same issue as 9.04.<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the log:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">root@p1022ds:/usr/tmp/lm90plots# ps2pdf temps.ps tem=
ps.pdf<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">*** Warning: GenericResourceDir doesn't point to a v=
alid resource directory.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the -sGenericResourceDir=3D... option can =
be used to set this.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Error: /invalidaccess in /findfont<o:p></o:p></p>
<p class=3D"MsoNormal">Operand stack:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; Helvetica<o:p></o:p></p>
<p class=3D"MsoNormal">Execution stack:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; %interp_exit&nbsp;&nbsp; .runexec2&nbsp=
;&nbsp; --nostringval--&nbsp;&nbsp; --nostringval--&nbsp;&nbsp; --nostringv=
al--&nbsp;&nbsp; 2&nbsp;&nbsp; %stopped_push&nbsp;&nbsp; --nostringval--&nb=
sp;&nbsp; --nostringval--&nbsp;&nbsp; --nostringval--&nbsp;&nbsp; false&nbs=
p;&nbsp; 1&nbsp;&nbsp; %stopped_push&nbsp;&nbsp; 1862&nbsp;&nbsp; 1&nbsp;&n=
bsp; 3&nbsp;&nbsp; %oparray_pop&nbsp;&nbsp; 1861&nbsp;&nbsp; 1&nbsp;&nbsp; =
3&nbsp;&nbsp; %oparray_pop&nbsp;&nbsp;
 --nostringval--&nbsp;&nbsp; 1845&nbsp;&nbsp; 1&nbsp;&nbsp; 3&nbsp;&nbsp; %=
oparray_pop&nbsp;&nbsp; 1739&nbsp;&nbsp; 1&nbsp;&nbsp; 3&nbsp;&nbsp; %oparr=
ay_pop&nbsp;&nbsp; --nostringval--&nbsp;&nbsp; %errorexec_pop&nbsp;&nbsp; .=
runexec2&nbsp;&nbsp; --nostringval--&nbsp;&nbsp; --nostringval--&nbsp;&nbsp=
; --nostringval--&nbsp;&nbsp; 2&nbsp;&nbsp; %stopped_push&nbsp;&nbsp; --nos=
tringval--&nbsp;&nbsp; 1820&nbsp;&nbsp; 1&nbsp;&nbsp; 4&nbsp;&nbsp; %oparra=
y_pop<o:p></o:p></p>
<p class=3D"MsoNormal">Dictionary stack:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; --dict:1154/1684(ro)(G)--&nbsp;&nbsp; -=
-dict:0/20(G)--&nbsp;&nbsp; --dict:82/200(L)--&nbsp;&nbsp; --dict:182/256(L=
)--<o:p></o:p></p>
<p class=3D"MsoNormal">Current allocation mode is local<o:p></o:p></p>
<p class=3D"MsoNormal">Last OS error: 2<o:p></o:p></p>
<p class=3D"MsoNormal">Current file position is 16962<o:p></o:p></p>
<p class=3D"MsoNormal">GPL Ghostscript 9.04: Unrecoverable error, exit code=
 1<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I did some investigations on google but got nothing =
helpful.<o:p></o:p></p>
<p class=3D"MsoNormal">So I wonder if you could help me to find out the rea=
son?<o:p></o:p></p>
<p class=3D"MsoNormal">I hope I'm not interrupting and looking forward to y=
our message.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">---<o:p></o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Hongtao<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_412C8208B4A0464FA894C5F0C278CD5D01B43F75039SN1MPN100303_--
