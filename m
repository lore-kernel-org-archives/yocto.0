Return-Path: <desai@uni-bremen.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12DDEE00BBF; Mon, 29 Oct 2018 09:41:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_MED autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.102.50.17 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtp.uni-bremen.de (gabriel-vm-2.zfn.uni-bremen.de
	[134.102.50.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97D3FE00718
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 09:41:15 -0700 (PDT)
Received: from uni-bremen.de (webmail-1.zfn.uni-bremen.de [134.102.50.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.uni-bremen.de (Postfix) with ESMTPSA id 0AF9126FE6
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 17:41:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=uni-bremen.de; s=dkim;
	t=1540831274; bh=sftZElT0AqObLsWNqWgXrXoa8QrAa+U5b4RVAWksGig=;
	h=To:Date:From;
	b=Ajm4NENntBowjn8Xs3JzPdqK9o6rqSncyMOgoTVpzFgWylckjmqOREU5X7OR3YR5W
	oxsIc9guESh6wXlkSEPMCgNL9nyhs0ACqqJnM8869q5BkwBx7mkgWdZ+pkgap7elfm
	3quaGb5aYSsvrMH3XYeGQZmplFplqVLwtquw++L4=
To: yocto@yoctoproject.org
Date: Mon, 29 Oct 2018 17:41:13 +0100
Message-ID: <003001d46fa6$3438d0e0$9caa72a0$@uni-bremen.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdRvpZw73kQ55XEXSbm0Z5z67zVy1A==
User-Agent: Horde Application Framework 5
From: Shantanoo Desai <desai@uni-bremen.de>
Subject: How to create a golang recipe using devtool
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
X-List-Received-Date: Mon, 29 Oct 2018 16:41:17 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0031_01D46FAE.95FE9870"
Content-Language: de

------=_NextPart_000_0031_01D46FAE.95FE9870
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

How do I create a recipe for golang open-source repositories using devtool?

 

Does it require having Golang installed on the Host machine?

 

I understand that one needs to add `inherit go` within the recipe but I am
looking for a more concrete example as a reference.

 

Initial Steps:

 

Devtool add [recipe-url]

Devtool edit-recipe recipename

 

>> add inherit go in the recipe

 

And then what?

 

 

Regards,

 

Shan


------=_NextPart_000_0031_01D46FAE.95FE9870
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span lang=3DEN-US>How do I create a recipe for golang =
open-source repositories using devtool?<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Does it require having Golang =
installed on the Host machine?<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>I understand that one needs to add =
`inherit go` within the recipe but I am looking for a more concrete =
example as a reference.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Initial Steps:<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><i><span lang=3DEN-US>Devtool add =
[recipe-url]<o:p></o:p></span></i></p><p class=3DMsoNormal><i><span =
lang=3DEN-US>Devtool edit-recipe recipename<o:p></o:p></span></i></p><p =
class=3DMsoNormal><i><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></i></p><p =
class=3DMsoNormal><i><span lang=3DEN-US>&gt;&gt; add inherit go in the =
recipe<o:p></o:p></span></i></p><p class=3DMsoNormal><i><span =
lang=3DEN-US> <o:p></o:p></span></i></p><p class=3DMsoNormal><i><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></i></p><p =
class=3DMsoNormal><i><span lang=3DEN-US>And then =
what?<o:p></o:p></span></i></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Regards,<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Shan<o:p></o:p></span></p></div></body></html>

------=_NextPart_000_0031_01D46FAE.95FE9870--
