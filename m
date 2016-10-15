Return-Path: <josejuancalvo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1789FE00A1A; Sat, 15 Oct 2016 05:38:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (josejuancalvo[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.42 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0009]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F28B3E00A08
	for <yocto@yoctoproject.org>; Sat, 15 Oct 2016 05:38:29 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id c78so27917790wme.0
	for <yocto@yoctoproject.org>; Sat, 15 Oct 2016 05:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:mime-version:thread-index
	:content-language;
	bh=IDmWHBhtnDeWvd6uaVGeic7X05cz2ifhkh+VjrOeQAs=;
	b=EIDWkvj3gQpGjxLiPMLnVoRrxgRfoOiBZvbl9/+8Cn1I3i9Ixj585KrRw/+hFCJdwb
	BlLj6ktBXrBqHF9eejn1zlJobabmu9lrfPRwAVAAFEQ97vDOzFz/J3qfDY+MSMxchiXj
	zd6gen6IlWCAmFJqUjQtLiJKYoI0cqx0icQrqp1xddF1T1PMCqoeo1ja3zbqNyNe9HZe
	w9GM4eKjm605oVAiQR00DVr/ML03JJ1VCjq9G9eu//5UDSgC1CqP+PdMm6sQLoQ2Nr4M
	H0/LNuD19wFnc6K+dZryc3d799B+jeyxGQyNzJ4oBSsjdhMjigGNHek6WH3qUlJmOAZw
	JOYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:thread-index:content-language;
	bh=IDmWHBhtnDeWvd6uaVGeic7X05cz2ifhkh+VjrOeQAs=;
	b=fwXIy2S2ThIHfZNCZVamvO0QQIomonQZWj0OGMbknywPpu0Qg10Q+ImykDmnK3OlKR
	+HhB/xsMpAtj+ga3mZxG0t7+pyyOrzHndtlbharqlYrGxM3BznEq6uE4xEmSqpIkcgOj
	+jMAVw4WU2yg+PU/GzKSi5CxLUtXSWAYOvZfYHYkHyJptwJOiEtCGvu3MJoMYIGGD5f8
	Myofje4PdesvD5jtxLcduMdkf75NkL4TeAAkzC0nuTKqJ8FkXkymIqShPbGSHkroHn4A
	r53ZroZ36RtwYoqpCWgnns4zAzVvTVOC5x6Wr01hxUpcaLw4UhqdOncVEiaUJE3WPZea
	Z45Q==
X-Gm-Message-State: AA6/9RlktDwP+3Q9pgfeRbIhV9toaACqkcNwPgP5oYfx6f9XfAZS+jv/6GNLGjtBqFzZIw==
X-Received: by 10.194.119.162 with SMTP id kv2mr5423226wjb.182.1476535108263; 
	Sat, 15 Oct 2016 05:38:28 -0700 (PDT)
Received: from DESKTOP898H7QA (92.pool80-103-148.dynamic.orange.es.
	[80.103.148.92]) by smtp.gmail.com with ESMTPSA id
	p3sm36765910wjr.31.2016.10.15.05.38.27 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 15 Oct 2016 05:38:27 -0700 (PDT)
From: <josejuancalvo@gmail.com>
To: <yocto@yoctoproject.org>
Date: Sat, 15 Oct 2016 14:38:25 +0200
Message-ID: <001e01d226e1$06996920$13cc3b60$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdIm4J/RVr/MsuzgQFKKQ+adF5LWmw==
Subject: Power button
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
X-List-Received-Date: Sat, 15 Oct 2016 12:38:32 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_001F_01D226F1.CA22FC70"
Content-Language: es

------=_NextPart_000_001F_01D226F1.CA22FC70
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

 

I add to the bbb an external button in pin 9.9. I add to the image the acpid
package to the IMAGE_INSTALL.

 

When I press the power down button nothing happens. No power down message in
the console.

 

I'm sure the button is right connected because if I press button during more
or less 8 seconds, the bbb powers off.

 

When I enter in /dev/input/ there isn't any event0 or event1. Only mice.

 

Why does not exits this events like beaglebone official image? How can I add
this events?

 

I'm using Krogoth with kernel 4.4

 

Thanks in advance


------=_NextPart_000_001F_01D226F1.CA22FC70
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
span.EstiloCorreo17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DES =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Hello,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>I add to the bbb an external button in pin 9.9. I add to =
the image the acpid package to the =
IMAGE_INSTALL.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>When I press the power down button nothing happens. No =
power down message in the console.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>I'm sure the button is right =
connected because if I press button during more or less 8 seconds, the =
bbb powers off.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>When I enter in /dev/input/ there isn't any event0 or =
event1. Only mice.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Why does not exits this events like beaglebone official =
image? How can I add this events?<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>I&#8217;m using Krogoth with kernel =
4.4<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Thanks in advance<o:p></o:p></span></p></div></body></html>

------=_NextPart_000_001F_01D226F1.CA22FC70--
