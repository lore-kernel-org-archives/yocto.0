Return-Path: <DILIP.KUMARB@lnttechservices.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F59EE0095D; Tue, 19 May 2015 21:46:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [203.199.60.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Tue, 19 May 2015 21:45:53 PDT
Received: from mailout2.ltindia.com (mailout2.ltindia.com [203.199.60.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58451E004F6
	for <yocto@yoctoproject.org>; Tue, 19 May 2015 21:45:53 -0700 (PDT)
Received: from unknown (HELO POCITMSEXHUB04.LntUniverse.com) ([10.2.1.69])
	by mailout2.ltindia.com with ESMTP; 20 May 2015 10:14:26 +0530
Received: from POCITMSEXMB08.LntUniverse.com ([fe80::9445:cfb3:b5b:f4c9]) by
	POCITMSEXHUB04.LntUniverse.com ([fe80::8c5f:9589:e5d5:ce78%11]) with
	mapi id 14.03.0181.006; Wed, 20 May 2015 10:14:25 +0530
From: Dilip Basavaraju <DILIP.KUMARB@LNTTECHSERVICES.COM>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Modify configuration via bb file
Thread-Index: AdCStkEPQuy72T8GSTSEstYEZP+5TQ==
Date: Wed, 20 May 2015 04:44:25 +0000
Message-ID: <AA6EBB22527ED441A9B86C56F43F6DD82012EDDA@POCITMSEXMB08.LntUniverse.com>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.2.1.199]
MIME-Version: 1.0
Subject: Modify configuration via bb file
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
X-List-Received-Date: Wed, 20 May 2015 04:46:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AA6EBB22527ED441A9B86C56F43F6DD82012EDDAPOCITMSEXMB08Ln_"

--_000_AA6EBB22527ED441A9B86C56F43F6DD82012EDDAPOCITMSEXMB08Ln_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dear All,

                I am compiling coreutils package with the coreutils.bb file=
 and its compiling  successfully, now I need to modify the arguments passed=
 to ./configure command I tried to modify in the bb file but I did not get =
the proper results.

                Please suggest me where to modify parameters to ./configure=
 via bb file or if any other way.

Thanks and regards
DILIP KUMAR B

L&T Technology Services Ltd

www.LntTechservices.com<http://www.lnttechservices.com/>

This Email may contain confidential or privileged information for the inten=
ded recipient (s). If you are not the intended recipient, please do not use=
 or disseminate the information, notify the sender and delete it from your =
system.

--_000_AA6EBB22527ED441A9B86C56F43F6DD82012EDDAPOCITMSEXMB08Ln_
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
<p class=3D"MsoNormal">Dear All,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I am compiling coreutils package wit=
h the coreutils.bb file and its compiling &nbsp;successfully, now I need to=
 modify the arguments passed to ./configure command I tried to modify in th=
e bb file but I did not get the proper
 results.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please suggest me where to modify pa=
rameters to ./configure via bb file or if any other way.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks and regards<o:p></o:p></p>
<p class=3D"MsoNormal">DILIP KUMAR B<o:p></o:p></p>
</div>
<p><strong>L&amp;T Technology Services Ltd</strong></p>
<p><a href=3D"http://www.lnttechservices.com/" target=3D"_blank">www.LntTec=
hservices.com</a></p>
<p>This Email may contain confidential or privileged information for the in=
tended recipient (s). If you are not the intended recipient, please do not =
use or disseminate the information, notify the sender and delete it from yo=
ur system.</p>
</body>
</html>

--_000_AA6EBB22527ED441A9B86C56F43F6DD82012EDDAPOCITMSEXMB08Ln_--
