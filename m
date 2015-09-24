Return-Path: <colin.helliwell@LN-Systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A730E00F5E; Thu, 24 Sep 2015 04:52:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from lnsystems.lincoln.ln-systems.com (post.ln-systems.com
	[62.49.123.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72DDDE00BA1
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 04:52:11 -0700 (PDT)
Received: from LNSYSCH2 (firewall-ext.lincoln.ln-systems.com [62.49.123.65])
	by lnsystems.lincoln.ln-systems.com (8.13.1/8.13.1) with ESMTP id
	t8OBnIdR010388
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 12:49:20 +0100
From: "Colin Helliwell" <colin.helliwell@LN-Systems.com>
To: <yocto@yoctoproject.org>
Date: Thu, 24 Sep 2015 12:51:59 +0100
Organization: LN Systems Limited
Message-ID: <01de01d0f6bf$714d6b70$53e84250$@LN-Systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdD2vOKx3F9dJT84SCKldptcvyFvAg==
Subject: am335x-boneblack.dtb 'misnamed'? (Fido/BeagleBoneBlack)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@LN-Systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 24 Sep 2015 11:52:16 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_01DF_01D0F6C7.D31AFB30"
Content-Language: en-gb

------=_NextPart_000_01DF_01D0F6C7.D31AFB30
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

This may just be 'the way it is', but the stock Fido/BeagleBoneBlack BSP
[core-image-minimal] builds the am335x-boneblack dtb file, and creates in
build/tmp/deploy/images/beaglebone a symlink named
'zImage-am335x-boneblack.dtb'. However - and this is borne out by
README.hardware - uboot is set up to look for 'am335x-boneblack.dtb'.

I daresay I can do some sort of fixup, but I was curious why it's like this?

 


------=_NextPart_000_01DF_01D0F6C7.D31AFB30
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>This may =
just be &#8216;the way it is&#8217;, but the stock Fido/BeagleBoneBlack =
BSP [core-image-minimal] builds the am335x-boneblack dtb file, and =
creates in build/tmp/deploy/images/beaglebone a symlink named =
&#8216;zImage-am335x-boneblack.dtb&#8217;. However &#8211; and this is =
borne out by README.hardware &#8211; uboot is set up to look for =
&#8216;am335x-boneblack.dtb&#8217;.<o:p></o:p></p><p class=3DMsoNormal>I =
daresay I can do some sort of fixup, but I was curious why it&#8217;s =
like this?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_01DF_01D0F6C7.D31AFB30--
