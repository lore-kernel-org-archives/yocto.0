Return-Path: <desai@uni-bremen.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AC8DE00B3E; Thu,  4 Oct 2018 02:35:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_MED autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.102.50.17 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp.uni-bremen.de (gabriel-vm-2.zfn.uni-bremen.de
	[134.102.50.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5836E00ADD
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2018 02:35:48 -0700 (PDT)
Received: from uni-bremen.de (autodiscover.zfn.uni-bremen.de [134.102.50.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
	bits)) (No client certificate requested)
	by smtp.uni-bremen.de (Postfix) with ESMTPSA id 7FFCB22A2A;
	Thu,  4 Oct 2018 11:35:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=uni-bremen.de; s=dkim;
	t=1538645747; bh=tM3d/y8925tFdENgF8FDngTYeVulUbkx922viEctjCM=;
	h=To:Cc:Date:From;
	b=bI9WPPczXN3cjKo7Xon5lWM+YtFQxxK7Uf96xDdv5EoqzZdBh41ixnByFpvrkwZ/P
	uWJz5pBT5rxhyWRgcSrvIaMVVxxkVesWNv0Ciy6ig/hGSSddXSrrnWcuPsSA4cGn0F
	FnyvwGY5exhkQLrX8sWqGUEhnw/vpB95FBy3aT8s=
To: yocto@yoctoproject.org
Date: Thu, 4 Oct 2018 11:35:45 +0200
Message-ID: <000d01d45bc5$a002f3e0$e008dba0$@uni-bremen.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdRbw3zMlR2XKSIUT5m9wAJyUpsEZQ==
User-Agent: Horde Application Framework 5
From: Shantanoo Desai <desai@uni-bremen.de>
Subject: [python][Wiki] Creating Custom Python Application Recipe
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
X-List-Received-Date: Thu, 04 Oct 2018 09:35:50 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_000E_01D45BD6.638D4A80"
Content-Language: de

------=_NextPart_000_000E_01D45BD6.638D4A80
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello BrianZ and all in the list,

 

I answered the StackExchange Query
https://stackoverflow.com/questions/50436413/write-a-recipe-in-yocto-for-a-p
ython-application/52643185#52643185

 

This is just my shot at creating custom python application in Yocto. There
is clearly a lack of documentation or examples for python apps in yocto as
opposed to NPM/Javascript.

 

I hope this helps someone. Please feel free to answer or edit the answer.

 

(P.S. this is no advertising for reps on SE but a genuine attempt to help)

 

Thanks,

 

Shan


------=_NextPart_000_000E_01D45BD6.638D4A80
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
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
class=3DMsoNormal><span lang=3DEN-US>Hello BrianZ and all in the =
list,<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>I answered the StackExchange Query <a =
href=3D"https://stackoverflow.com/questions/50436413/write-a-recipe-in-yo=
cto-for-a-python-application/52643185#52643185">https://stackoverflow.com=
/questions/50436413/write-a-recipe-in-yocto-for-a-python-application/5264=
3185#52643185</a><o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>This is just my shot at creating custom python application =
in Yocto. There is clearly a lack of documentation or examples for =
python apps in yocto as opposed to =
NPM/Javascript.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>I hope this helps someone. Please feel free to answer or =
edit the answer.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>(P.S. this is no advertising for reps on SE but a genuine =
attempt to help)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Thanks,<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Shan<o:p></o:p></span></p></div></body></html>

------=_NextPart_000_000E_01D45BD6.638D4A80--
