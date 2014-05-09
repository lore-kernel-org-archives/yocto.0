Return-Path: <PMcGougan@topcon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13098E00B67; Thu,  8 May 2014 22:25:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=HTML_MESSAGE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 609 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 May 2014 22:25:06 PDT
Received: from smtpca.topcon.com (unknown [12.107.178.112])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B633BE00B62
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 22:25:06 -0700 (PDT)
X-ASG-Debug-ID: 1399612496-0526480f281af5e0001-yzSStA
Received: from LIV-EXCHCAS1.TOPCON.com (liv-exchcas1.topcon.com [10.1.4.56])
	by smtpca.topcon.com with ESMTP id mRm3pCK0lD3hUaBe for
	<yocto@yoctoproject.org>; Thu, 08 May 2014 22:14:56 -0700 (PDT)
X-Barracuda-Envelope-From: PMcGougan@topcon.com
Received: from ADL-EXCHCAS2.TOPCON.com (10.48.4.103) by
	LIV-EXCHCAS1.TOPCON.com (10.1.4.56) with Microsoft SMTP Server (TLS) id
	14.3.123.3; Thu, 8 May 2014 22:14:55 -0700
Received: from ADL-EXCHMBX1.TOPCON.com ([169.254.1.232]) by
	ADL-EXCHCAS2.TOPCON.com ([10.48.4.103]) with mapi id 14.03.0123.003;
	Fri, 9 May 2014 14:44:53 +0930
From: Paul McGougan <PMcGougan@topcon.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Question / issue
X-ASG-Orig-Subj: Question / issue
Thread-Index: Ac9rQ7UAhL6Gq3gDT7KT8K1XExAUWA==
Date: Fri, 9 May 2014 05:14:53 +0000
Message-ID: <C7589FE7B0DE58488F2B9BF79840E9D90D66F51F@ADL-EXCHMBX1.TOPCON.com>
Accept-Language: en-GB, en-AU, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.49.1.46]
MIME-Version: 1.0
X-Barracuda-Connect: liv-exchcas1.topcon.com[10.1.4.56]
X-Barracuda-Start-Time: 1399612496
X-Barracuda-URL: http://10.1.4.69:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at topcon.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.5661
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Subject: Question / issue
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
X-List-Received-Date: Fri, 09 May 2014 05:25:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C7589FE7B0DE58488F2B9BF79840E9D90D66F51FADLEXCHMBX1TOPC_"

--_000_C7589FE7B0DE58488F2B9BF79840E9D90D66F51FADLEXCHMBX1TOPC_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all.

We are currently using Poky 1.5.0.

We have created our own custom layer for our powerpc-based board.

We are running u-boot as our bootloader and want to use the new FIT (FDT) s=
tyle kernel/dtb image blob.

To that end, in our custom layer we have a file poky/meta-OURS/recipes-kern=
el/linux/linux-yocto_3.10.bbappend, and in that file I have a function do_i=
nstall_append() in which I call u-boot's mkimage passing it the kernel and =
DTB files that we want stored in the FIT image that we will use to boot fro=
m u-boot.

My first question is, is there a better place to be making the FIT image?

As a side-question to that, I was surprised that there isn't native support=
 already for creating this type of u-boot image considering how useful it i=
s, does anyone know if there is a specific reason no one has done this yet?

Secondly, (and this is our main issue) I have found that by adding the do_i=
nstall_append function, even if it is completely empty, whenever I try to b=
itbake anything that depends on the kernel, that bitbake always re-runs the=
 kernel install stage, even when there have been no changes. Literally I ca=
n run a bitbake, then run the same bitbake command again, and both times th=
e kernel install stage gets run (this is a problem because it takes a long =
time to run). It appears to be happening because the stampfile is not found=
 every time (the hash appears to be wrong). Is this a bug? Is there a fix o=
r work-around for this problem?

Thanks.

Paul.

Confidentiality Notice:  This message (including attachments) is a private =
communication solely for use of the intended recipient(s).  =0D
If you are not the intended recipient(s) or believe you received this messa=
ge in error, notify the sender immediately and then delete this =0D
message.  Any other use, retention, dissemination or copying is prohibited =
and may be a violation of law, including the Electronic =0D
Communication Privacy Act of 1986."

--_000_C7589FE7B0DE58488F2B9BF79840E9D90D66F51FADLEXCHMBX1TOPC_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
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
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
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
<body lang=3D"EN-AU" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are currently using Poky 1.5.0.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We have created our own custom layer for our powerpc=
-based board.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are running u-boot as our bootloader and want to =
use the new FIT (FDT) style kernel/dtb image blob.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">To that end, in our custom layer we have a file poky=
/meta-OURS/recipes-kernel/linux/linux-yocto_3.10.bbappend, and in that file=
 I have a function do_install_append() in which I call u-boot&#8217;s mkima=
ge passing it the kernel and DTB files that
 we want stored in the FIT image that we will use to boot from u-boot.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My first question is, is there a better place to be =
making the FIT image?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As a side-question to that, I was surprised that the=
re isn&#8217;t native support already for creating this type of u-boot imag=
e considering how useful it is, does anyone know if there is a specific rea=
son no one has done this yet?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Secondly, (and this is our main issue) I have found =
that by adding the do_install_append function, even if it is completely emp=
ty, whenever I try to bitbake anything that depends on the kernel, that bit=
bake always re-runs the kernel install
 stage, even when there have been no changes. Literally I can run a bitbake=
, then run the same bitbake command again, and both times the kernel instal=
l stage gets run (this is a problem because it takes a long time to run). I=
t appears to be happening because
 the stampfile is not found every time (the hash appears to be wrong). Is t=
his a bug? Is there a fix or work-around for this problem?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Paul.<o:p></o:p></p>
</div>
<br>Confidentiality Notice:  This message (including attachments) is a priv=
ate communication solely for use of the intended recipient(s).  =0D
If you are not the intended recipient(s) or believe you received this messa=
ge in error, notify the sender immediately and then delete =0D
this message.  Any other use, retention, dissemination or copying is prohib=
ited and may be a violation of law, including the Electronic =0D
Communication Privacy Act of 1986."
&nbsp;&nbsp;&shy;&shy;&nbsp;&nbsp;</body>
</html>

--_000_C7589FE7B0DE58488F2B9BF79840E9D90D66F51FADLEXCHMBX1TOPC_--
