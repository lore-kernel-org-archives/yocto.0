Return-Path: <ramatekd@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E113BE00AE4; Wed,  4 Nov 2015 19:32:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ramatekd[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0018]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.41 listed in list.dnswl.org]
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7763E00AC1
	for <yocto@yoctoproject.org>; Wed,  4 Nov 2015 19:32:06 -0800 (PST)
Received: by pasz6 with SMTP id z6so75492886pas.2
	for <yocto@yoctoproject.org>; Wed, 04 Nov 2015 19:32:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:mime-version:content-type
	:thread-index:content-language;
	bh=/T39jOx0BaLcBf3NQT+pJvdCJPDoV0X2VUIXQkSLYIg=;
	b=Vnl6DA3QxywTuiU25HwpsnKKmI1kXT0z7w0w78Sa4XI3Yx99pCFLSkUmnXBPZKABMt
	lWYClsUfiEjIT+abkjf965A9xhIhxIgfsDqPSQGoC3V22fGvaZ5LzjD95wuGTvL4Vs1H
	OohTx541cT6u5+UXQUhsVAoGsUSIv6PsNUcmXKoinjIsLa9GU6YAMJZTVX1W0hr58Mdd
	tzr4B81LgJyoE/PJkpJsrtEH4B5ReoHcAdq5s2K6Sd4qjdffF0RW2QhnhPAujPgJb2C6
	czu+Ts4jdsWvvFoJJRNtOpXVODrHIg1HIR2QB6z3SspaUWuky+81nvOxpCTSW5L2jxDT
	1cXg==
X-Received: by 10.66.155.162 with SMTP id vx2mr6299951pab.133.1446694325879;
	Wed, 04 Nov 2015 19:32:05 -0800 (PST)
Received: from DEVWS2 (203-206-220-195.perm.iinet.net.au. [203.206.220.195])
	by smtp.gmail.com with ESMTPSA id yp9sm4790710pab.1.2015.11.04.19.32.03
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 04 Nov 2015 19:32:04 -0800 (PST)
From: "Roberto" <ramatekd@gmail.com>
To: <yocto@yoctoproject.org>
Date: Thu, 5 Nov 2015 14:32:05 +1100
Message-ID: <062201d1177a$8de30750$a9a915f0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdEXekzkBbya2nqpSyKYIcuwu7AzwQ==
Subject: sdcard image does not get updated when I clean u-boot
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
X-List-Received-Date: Thu, 05 Nov 2015 03:32:10 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0623_01D117D6.C156DAB0"
Content-Language: en-au

------=_NextPart_000_0623_01D117D6.C156DAB0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi All,

 

I have just noticed that if I execute

bitbake u-boot -c clean

 

and then

bitbake fsl-image-x11 

 

The u-boot file in tmp/deploy/images/xxxx/ gets updated, but the .sdcard
image file does not get updated.

 

How can I generate the new .sdcard image file that contains the new u-boot
image file?

 

Regards,

Roberto.


------=_NextPart_000_0623_01D117D6.C156DAB0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 =
(filtered medium)"><style><!--
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-AU link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>Hi =
All,<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>I have just noticed that if I execute<o:p></o:p></p><p =
class=3DMsoNormal>bitbake u-boot &#8211;c clean<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>and =
then<o:p></o:p></p><p class=3DMsoNormal>bitbake fsl-image-x11 =
<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>The u-boot file in tmp/deploy/images/xxxx/ gets =
updated, but the .sdcard image file does not get =
updated.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>How can I generate the new .sdcard image file that =
contains the new u-boot image file?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Regards,<o:p></o:p></p><p =
class=3DMsoNormal>Roberto.<o:p></o:p></p></div></body></html>

------=_NextPart_000_0623_01D117D6.C156DAB0--
