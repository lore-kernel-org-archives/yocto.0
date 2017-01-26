Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9720EE00942; Thu, 26 Jan 2017 07:47:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.17.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27EBEE008D7
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 07:47:22 -0800 (PST)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue104
	[212.227.15.179]) with ESMTPSA (Nemesis) id 0MY6Nc-1d1f6P0mmG-00UvSV
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 16:47:21 +0100
From: <colin.helliwell@ln-systems.com>
To: "'Yocto discussion list'" <yocto@yoctoproject.org>
References: <123e01d277df$9629cd60$c27d6820$@ln-systems.com>
In-Reply-To: <123e01d277df$9629cd60$c27d6820$@ln-systems.com>
Date: Thu, 26 Jan 2017 15:47:20 -0000
Organization: LN Systems Limited
Message-ID: <12b901d277eb$7b0cebf0$7126c3d0$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJzLXaG43/wsQkn47E4tf5Tdsf9V6AJe9qA
X-Provags-ID: V03:K0:3wYUVAinHCgv932wQO+w7AumsjQGGJLxvmi3bAfW8ieabDhVU9t
	WMOPdRGSIthnbsB/8ziWLy8u/EMB/ltk6x+osG4UzY3yuWzIr0Yvr8a6JdG9OgU0zZAzGwz
	FGJGd1NKJI9zm+t7d2/X9A0Un8a7jNvBVdCV/FdVZA7FPYp1s3cIFGPdIqZT6lYzY9u422H
	PDV4BrPYJ6BbpwsAvrZBw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:ThykwP6kZzM=:NSGsNXuSN6WYPvjwhY4Exb
	vaHgPEc99+ZhXex2ozMoODCGxW7yI1eJuMR92aJPrxMlL0ysAGVKufJRVwpeJYDjBwEt3RkGS
	1wCdFOI++51THNsvgujeEFQIbl/x2CgmQa8mEui6icb1l/VM1c7ARfDA5dpmAkUJuWAZoTowi
	VQYBFj9RZlEk9zVBUJWKXqOjzSo5jNTu/bMLnuyr5AStEsAovcJGU2AJaL2/ZmnOmpSj86Q74
	sZRiF5ErC1h3K2s5PafgXY+EnrQLasfHrEJ3XJ603E+sVX9k0qMcgQagIMg55InMQ60ZFQJ//
	vt+MLoeYSOhKzSgSmyIvuyC5Uk4x23yLXpPVZ9oLb6Vp4wX5ld8etuRwQ3oCnGxmNFCmcrnmX
	ld3YuNGuXpNrSs4Nu2RSJzB/ZP6KwdVsBPL5bjuKRlGf0KGljf52c4AHZJQe+7K8OWjUBR9PW
	ba60+7+jVBz+iiLAZYzgtTSkvTBTyptv0bdzGrITLgzp/9opHC6kZpOYorE0dctrYdY0FUagK
	fONBdKkAQwwNYtuOACuP9xxgjMK0c/fPsJ+fbEBMQvG5k3uOpBC1yht7NZLrqMoJiZMzXgErF
	/7QMJC2LSSP143tB5hV5UI81X05JSlgQqh02wwUgj9KNhPTwnONCnmTWXqIMRuV0R8kWyxlqz
	SW3vV2BJYOqIdwr2ihmKIxu09nKBRMA7x+5ezWPV82drzoMqC84hIGkn4NPBHW2SQDor41k+I
	py0zuBrw4ls4xdvO
Subject: Re: QEMU with host USB serial
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@ln-systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 26 Jan 2017 15:47:26 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_12BA_01D277EB.7B0E99A0"
Content-Language: en-gb

------=_NextPart_000_12BA_01D277EB.7B0E99A0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

'chown' that is, not 'chmod'!

 

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of colin.helliwell@ln-systems.com
Sent: 26 January 2017 14:22
To: 'Yocto discussion list' <yocto@yoctoproject.org>
Subject: [yocto] QEMU with host USB serial

 

.. I've done a 'chmod me:me' on the relevant /dev/bus/usb/xxx/yyy node.

 

 


------=_NextPart_000_12BA_01D277EB.7B0E99A0
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
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>&#8216;chown&#8217; that =
is, not &#8216;chmod&#8217;!<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm'><p class=3DMsoNormal><b><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-GB'>From:</span></b><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-GB'> yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] <b>On Behalf Of =
</b>colin.helliwell@ln-systems.com<br><b>Sent:</b> 26 January 2017 =
14:22<br><b>To:</b> 'Yocto discussion list' =
&lt;yocto@yoctoproject.org&gt;<br><b>Subject:</b> [yocto] QEMU with host =
USB serial<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&#8230;</span>. I&#8217;ve done a &#8216;chmod =
me:me&#8217; on the relevant /dev/bus/usb/xxx/yyy node.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_12BA_01D277EB.7B0E99A0--
