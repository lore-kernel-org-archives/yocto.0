Return-Path: <ramatekd@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBAD8E00BD5; Sun,  1 Nov 2015 21:20:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ramatekd[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35782E00BD0
	for <yocto@yoctoproject.org>; Sun,  1 Nov 2015 21:20:34 -0800 (PST)
Received: by pasz6 with SMTP id z6so136820766pas.2
	for <yocto@yoctoproject.org>; Sun, 01 Nov 2015 21:20:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:mime-version:content-type
	:thread-index:content-language;
	bh=yGaZ9Peeuj5vOr2HwYomFlmOmVlLI4hvGjiE4o+/7qk=;
	b=jacxD1XoO6K2ybNKZqCDTlO/ubSEBVblH08twGk9mfNgrqWKdGm8VyBaqDP8vty2gB
	B+RyOam2nBylQfhNy338CZ+8vPA2onv7uAtFmvJmwwKlH1abOBifBtI1p26OeuPzdCT9
	8vbAkRokxKdpneV122uEMbatOTcMYg0Zt7yePVYb5KAyRaRpQQkAXawljiqB/fGWKRRu
	CrrtoJiqBrtO72bhkkdBl/eCsZp2nI6UMQZibqZCBMcDw6YpOhf8SNchuFpu1hoUq14m
	ms1j1zHmdHvBGAQ5lm1a0GtpW/SpaEiqWgExnHnSgo8RRkzEG7DipRkmx1aiva6bbDWZ
	Xk4w==
X-Received: by 10.66.199.40 with SMTP id jh8mr24952070pac.123.1446441634181;
	Sun, 01 Nov 2015 21:20:34 -0800 (PST)
Received: from DEVWS2 (203-206-220-195.perm.iinet.net.au. [203.206.220.195])
	by smtp.gmail.com with ESMTPSA id
	bn1sm21414335pad.17.2015.11.01.21.20.32 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 01 Nov 2015 21:20:33 -0800 (PST)
From: "Roberto" <ramatekd@gmail.com>
To: <yocto@yoctoproject.org>
Date: Mon, 2 Nov 2015 16:20:34 +1100
Message-ID: <03d201d1152e$359dada0$a0d908e0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdEVLjMSNjEcBkSaQBKPEUqSdSCVcg==
Subject: Create uncompressed rootfs
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
X-List-Received-Date: Mon, 02 Nov 2015 05:20:35 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_03D3_01D1158A.690EC1E0"
Content-Language: en-au

------=_NextPart_000_03D3_01D1158A.690EC1E0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

I apologise if this is not the right channel for asking the following
question. If so, please advise me on a more appropriate support channel.

 

I am looking for the quickest workflow for debugging a recipe. I basically
need to modify a recipe, deploy the entire distribution to the target board
and test it.

 

have come to the conclusion that the quickest way is to boot the target
board through TFTP for the kernel and then mount the rootfs via NFS.

 

In my view, the only issue of this workflow is that when I bitbake the image
it creates a compressed rootfs that then I have to uncompress in order to
provide the rootfs to the target board via NFS.

 

Is there any way to avoid bitbake compressing the rootfs but rather having
it uncompressed in some folders under tmp/deploy ?

 

Regards,

 

Roberto


------=_NextPart_000_03D3_01D1158A.690EC1E0
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
vlink=3Dpurple><div class=3DWordSection1><p =
class=3DMsoNormal>Hi,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I apologise =
if this is not the right channel for asking the following question. If =
so, please advise me on a more appropriate support =
channel.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>I am looking for the quickest workflow for debugging a =
recipe. I basically need to modify a recipe, deploy the entire =
distribution to the target board and test it.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>have come to =
the conclusion that the quickest way is to boot the target board through =
TFTP for the kernel and then mount the rootfs via NFS.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>In my view, =
the only issue of this workflow is that when I bitbake the image it =
creates a compressed rootfs that then I have to uncompress in order to =
provide the rootfs to the target board via NFS.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Is there any =
way to avoid bitbake compressing the rootfs but rather having it =
uncompressed in some folders under tmp/deploy ?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Regards,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Roberto<o:p></o:p></p></div></body></html>

------=_NextPart_000_03D3_01D1158A.690EC1E0--
