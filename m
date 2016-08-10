Return-Path: <chandrasekhar@evolute-sys.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D91AEE00F04; Wed, 10 Aug 2016 05:05:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [202.137.237.130 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.5000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 393 seconds by postgrey-1.32 at yocto-www;
	Wed, 10 Aug 2016 05:05:09 PDT
Received: from rediffmail.com (pro237-130.rediffmailpro.com [202.137.237.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7982E00EF6
	for <yocto@yoctoproject.org>; Wed, 10 Aug 2016 05:05:09 -0700 (PDT)
X-REDIFF-Delivered-Remotely-To: yocto@yoctoproject.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rediffmailpro.com;
	s=epro; t=1470830305;
	bh=+onSvFU0fUqtAVbR1PDKJVOx1lPSvkTgBJmgUbmw8vY=;
	h=MIME-Version:From:Date:Message-ID:Subject:To;
	b=cl1lpOkhpPq59K3lydDJYwFxiHN99JcFTQO+IfQ8pdTMkILMR+wv8z+JYftlf3+Un
	ZdaSppxrEceLhjoA3dZKxPm8CyD2fVXX6GVykJeGllzv/iikwcsjwdrOu1N7GxhTLk
	5sCyddrXXmrn7fwOwtsB9AAB6PGr0ZQ4lt+i2QnI=
Received: (qmail 32405 invoked from network); 10 Aug 2016 11:58:25 -0000
x-m-msg: asd54ad564ad7aa6sd5as6d5; a6da7d6asas6dasd77; 5dad65ad5sd;
X-OUT-VDRT-SpamState: 0\LEGIT
X-OUT-VDRT-SpamScore: 0
X-OUT-VDRT-SpamCause: gggruggvucftvghtrhhoucdtuddrfeeluddrtdeggddvudculddtuddrfeeltddrtddtmdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkfggtgfothesrgdtghepvddtvdenucfhrhhomhepfdevhhgrnhgurhgrshgvkhhhrghrucfufdcuoegthhgrnhgurhgrshgvkhhhrghrsegvvhholhhuthgvqdhshihsrdgtohhmqeenucfrrghrrghmpehmohguvgepshhmthhpohhuth
Received: from unknown (HELO chandruPC)
	(chandrasekhar@evolute-sys.com@122.166.233.11)
	by mailserver with SMTP; 10 Aug 2016 11:58:24 -0000
From: "Chandrasekhar S" <chandrasekhar@evolute-sys.com>
To: <yocto@yoctoproject.org>
Date: Wed, 10 Aug 2016 17:28:23 +0530
Message-ID: <003f01d1f2fe$7fdf7160$7f9e5420$@evolute-sys.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdHy/lg4oDbuKjCJSfqtCb3BPUnHFQ==
Subject: Adding autologin to yocto
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
X-List-Received-Date: Wed, 10 Aug 2016 12:05:14 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0040_01D1F32C.9997AD60"
Content-Language: en-us

------=_NextPart_000_0040_01D1F32C.9997AD60
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi, 

How to remove login prompt after booting completes. I am using 3.14.38
kernel version and using poky version 1.8. 

 

Thanks and Regards,

Chandrasekhar


------=_NextPart_000_0040_01D1F32C.9997AD60
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Hi, <o:p></o:p></p><p class=3DMsoNormal>How to remove =
login prompt after booting completes. I am using 3.14.38 kernel version =
and using poky version 1.8. <o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Thanks and =
Regards,<o:p></o:p></p><p =
class=3DMsoNormal>Chandrasekhar<o:p></o:p></p></div></body></html>

------=_NextPart_000_0040_01D1F32C.9997AD60--
