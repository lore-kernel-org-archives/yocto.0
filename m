Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79F44E009F3; Wed, 21 Oct 2015 02:02:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [135.11.29.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Wed, 21 Oct 2015 02:02:49 PDT
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 101C7E009D9
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 02:02:49 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2ADBQA3Q8ZV/yYyC4dbGQSCMSEsVG/CWoJWAoEmPBABAQEBAQEBfwuEJQEBAxIbXgEVBRBWFw8BBBsaiAwBp2qFC6A6AQoBAQEekCmDUIEUBZULAW2UbpEEFw+DfYF2JRyBBAEBAQ
X-IPAS-Result: A2ADBQA3Q8ZV/yYyC4dbGQSCMSEsVG/CWoJWAoEmPBABAQEBAQEBfwuEJQEBAxIbXgEVBRBWFw8BBBsaiAwBp2qFC6A6AQoBAQEekCmDUIEUBZULAW2UbpEEFw+DfYF2JRyBBAEBAQ
X-IronPort-AV: E=Sophos;i="5.15,634,1432612800"; 
	d="scan'208,217";a="147656828"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	21 Oct 2015 05:01:45 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC03.global.avaya.com) ([135.64.58.13])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	21 Oct 2015 05:01:44 -0400
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC03.global.avaya.com ([135.64.58.13]) with mapi id
	14.03.0174.001; Wed, 21 Oct 2015 05:01:43 -0400
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Meta layer for Cavium CNS3xxx ARM processor
Thread-Index: AdEL3xYoNN3E5psjSRmFZHbh5y6QcQ==
Date: Wed, 21 Oct 2015 09:01:43 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A4C9977@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.47]
MIME-Version: 1.0
Subject: Meta layer for Cavium CNS3xxx ARM processor
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
X-List-Received-Date: Wed, 21 Oct 2015 09:02:51 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F38A866CD026F746A3BF0928A84397BE3A4C9977AZFFEXMB01globa_"

--_000_F38A866CD026F746A3BF0928A84397BE3A4C9977AZFFEXMB01globa_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am looking for an meta layer which provide support for Cavium CNS3xxx SOC=
 as need to build some application on that platform. Below is the output fr=
om the board when I check for the release and CPU information

$ cat /etc/*release
MontaVista Linux 6, (.dev-snapshot-20130726)



$ cat /proc/cpuinfo

Processor       : ARMv6-compatible processor rev 4 (v6l)

BogoMIPS        : 279.34

Features        : swp half thumb fastmult vfp edsp java

CPU implementer : 0x41

CPU architecture: 7

CPU variant     : 0x0

CPU part        : 0xb02

CPU revision    : 4



Hardware        : Cavium Networks CNS3420 Validation Board

Revision        : 0000

Serial          : 0000000000000000


So is there any meta layer which supports above SOC.

Thanks,
Abhinav

--_000_F38A866CD026F746A3BF0928A84397BE3A4C9977AZFFEXMB01globa_
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
code
	{mso-style-priority:99;
	font-family:"Courier New";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am looking for an meta layer which provide support=
 for Cavium CNS3xxx SOC as need to build some application on that platform.=
 Below is the output from the board when I check for the release and CPU in=
formation<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"background:#EEEEEE"><span style=3D"font-siz=
e:10.0pt;font-family:Consolas;color:#222222;border:none windowtext 1.0pt;pa=
dding:0in;background:#EEEEEE">$ cat /etc/*release<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#EEEEEE"><span style=3D"font-siz=
e:10.0pt;font-family:Consolas;color:#222222;border:none windowtext 1.0pt;pa=
dding:0in;background:#EEEEEE">MontaVista Linux 6, (.dev-snapshot-20130726)<=
/span><span style=3D"font-size:10.0pt;font-family:Consolas;color:#222222"><=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<pre style=3D"background:#EEEEEE"><code><span style=3D"font-family:Consolas=
;color:#222222;border:none windowtext 1.0pt;padding:0in;background:#EEEEEE"=
>$ cat /proc/cpuinfo<o:p></o:p></span></code></pre>
<pre style=3D"background:#EEEEEE"><code><span style=3D"font-family:Consolas=
;color:#222222;border:none windowtext 1.0pt;padding:0in;background:#EEEEEE"=
>Processor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : ARMv6-compatible processor=
 rev 4 (v6l)<o:p></o:p></span></code></pre>
<pre style=3D"background:#EEEEEE"><code><span style=3D"font-family:Consolas=
;color:#222222;border:none windowtext 1.0pt;padding:0in;background:#EEEEEE"=
>BogoMIPS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 279.34<o:p></o:p></sp=
an></code></pre>
<pre style=3D"background:#EEEEEE"><code><span style=3D"font-family:Consolas=
;color:#222222;border:none windowtext 1.0pt;padding:0in;background:#EEEEEE"=
>Features&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : swp half thumb fastmu=
lt vfp edsp java<o:p></o:p></span></code></pre>
<pre style=3D"background:#EEEEEE"><code><span style=3D"font-family:Consolas=
;color:#222222;border:none windowtext 1.0pt;padding:0in;background:#EEEEEE"=
>CPU implementer : 0x41<o:p></o:p></span></code></pre>
<pre style=3D"background:#EEEEEE"><code><span style=3D"font-family:Consolas=
;color:#222222;border:none windowtext 1.0pt;padding:0in;background:#EEEEEE"=
>CPU architecture: 7<o:p></o:p></span></code></pre>
<pre style=3D"background:#EEEEEE"><code><span style=3D"font-family:Consolas=
;color:#222222;border:none windowtext 1.0pt;padding:0in;background:#EEEEEE"=
>CPU variant&nbsp;&nbsp;&nbsp;&nbsp; : 0x0<o:p></o:p></span></code></pre>
<pre style=3D"background:#EEEEEE"><code><span style=3D"font-family:Consolas=
;color:#222222;border:none windowtext 1.0pt;padding:0in;background:#EEEEEE"=
>CPU part&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 0xb02<o:p></o:p></spa=
n></code></pre>
<pre style=3D"background:#EEEEEE"><code><span style=3D"font-family:Consolas=
;color:#222222;border:none windowtext 1.0pt;padding:0in;background:#EEEEEE"=
>CPU revision&nbsp;&nbsp;&nbsp; : 4<o:p></o:p></span></code></pre>
<pre style=3D"background:#EEEEEE"><code><span style=3D"font-family:Consolas=
;color:#222222;border:none windowtext 1.0pt;padding:0in;background:#EEEEEE"=
><o:p>&nbsp;</o:p></span></code></pre>
<pre style=3D"background:#EEEEEE"><code><span style=3D"font-family:Consolas=
;color:#222222;border:none windowtext 1.0pt;padding:0in;background:#EEEEEE"=
>Hardware&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Cavium Networks CNS34=
20 Validation Board<o:p></o:p></span></code></pre>
<pre style=3D"background:#EEEEEE"><code><span style=3D"font-family:Consolas=
;color:#222222;border:none windowtext 1.0pt;padding:0in;background:#EEEEEE"=
>Revision&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 0000<o:p></o:p></span=
></code></pre>
<pre style=3D"background:#EEEEEE"><code><span style=3D"font-family:Consolas=
;color:#222222;border:none windowtext 1.0pt;padding:0in;background:#EEEEEE"=
>Serial&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 00000000000=
00000</span></code><span style=3D"font-family:Consolas;color:#222222"><o:p>=
</o:p></span></pre>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So is there any meta layer which supports above SOC.=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Abhinav<o:p></o:p></p>
</div>
</body>
</html>

--_000_F38A866CD026F746A3BF0928A84397BE3A4C9977AZFFEXMB01globa_--
