Return-Path: <alexan3@vt.edu>
Received: from lennier.cc.vt.edu (lennier.cc.vt.edu [198.82.162.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82BB3E0054B
	for <yocto@yoctoproject.org>; Sat, 20 Apr 2013 06:47:40 -0700 (PDT)
Received: from mail-yh0-x246.google.com (mail-yh0-x246.google.com
	[IPv6:2607:f8b0:4002:c01::246])
	by lennier.cc.vt.edu (8.13.8/8.13.8) with ESMTP id r3KDldZG002856
	for <yocto@yoctoproject.org>; Sat, 20 Apr 2013 09:47:39 -0400
Received: by mail-yh0-f70.google.com with SMTP id b41so8746865yha.1
	for <yocto@yoctoproject.org>; Sat, 20 Apr 2013 06:47:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:from:to:subject:date:message-id:mime-version
	:content-type:x-mailer:thread-index:content-language
	:x-gm-message-state;
	bh=uQWYuXtv2JgnaxHQTNn82J1bsnbdJByLkT5ISBgOIKw=;
	b=l0tZsIkeW+SunwQH61L0DQKCEhgwsEaFtcvBnPgEOw/anPIkPJvju/85oxfTUJaR90
	Fg1mesc7IJ+8C+1hIp1vA0kVmcXl+w/u7JAG/DSljGaRruKWZO9K+04knq+oOmeJN2PL
	h9HossNQcDv9j4etkziBhVHDPbC6PblimBUgBoJRveSQCPFCg4Q/W13EaPJ8CcaY24Th
	bh4P3+l4yp5u2Eq1qV2OnmzaEvn1onDwLjRnrqB5ZquCwMdmnD7V+u49nGfz7Kt2zC0f
	i+Djp3z7aVcI8A+PAbLlNtW5GaImUPqM7eQnEKloCNKcr3q6KR0jeR9Hy/f6qP6oFmvj
	h4sA==
X-Received: by 10.52.116.130 with SMTP id jw2mr12252879vdb.69.1366465659114;
	Sat, 20 Apr 2013 06:47:39 -0700 (PDT)
X-Received: by 10.52.116.130 with SMTP id jw2mr12252871vdb.69.1366465658949;
	Sat, 20 Apr 2013 06:47:38 -0700 (PDT)
Received: from KellerPC (c-98-249-5-179.hsd1.va.comcast.net. [98.249.5.179])
	by mx.google.com with ESMTPS id 13sm1098775vdg.4.2013.04.20.06.47.37
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Sat, 20 Apr 2013 06:47:38 -0700 (PDT)
From: "Alexander Keller" <alexan3@vt.edu>
To: <yocto@yoctoproject.org>
Date: Sat, 20 Apr 2013 09:47:30 -0400
Message-ID: <006701ce3dcd$9b10c2c0$d1324840$@vt.edu>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: Ac49zVcLptGuw8EJRRKSOMOtSEgdlw==
X-Gm-Message-State: ALoCoQlFzS4uukq/P4wV3RSnZaLsFSYqmwntR0Adq1C4wllMnAGY5A68GN+yK9D9ljAQ0C8uIIUvn8tYWiyF0QJzk9GAG+QQZHgefL0qH4TJNck3E094tI8zTg9hN6KdQoMx5KP+HHkRLzM6Jwu0VtLNTE4xpLMtdw==
Subject: busy Box error
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
X-List-Received-Date: Sat, 20 Apr 2013 13:47:40 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0068_01CE3DAC.13FF97F0"
Content-Language: en-us

------=_NextPart_000_0068_01CE3DAC.13FF97F0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello, 

 

When I was trying to build yocto for the i.mx6, there was an error building
busybox. The error when building busbox was

 

| DEBUG: Executing python function sysroot_cleansstate

| DEBUG: Python function sysroot_cleansstate finished

| DEBUG: Executing shell function do_configure

| trap: 80: SIGHUP: bad trap

 

Does anyone have any ideas to fix this error?

 

-Alexander 


------=_NextPart_000_0068_01CE3DAC.13FF97F0
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
	font-family:"Calibri","sans-serif";}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Hello, <o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>When I was =
trying to build yocto for the i.mx6, there was an error building =
busybox. The error when building busbox was<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>| DEBUG: =
Executing python function sysroot_cleansstate<o:p></o:p></p><p =
class=3DMsoNormal>| DEBUG: Python function sysroot_cleansstate =
finished<o:p></o:p></p><p class=3DMsoNormal>| DEBUG: Executing shell =
function do_configure<o:p></o:p></p><p class=3DMsoNormal>| trap: 80: =
SIGHUP: bad trap<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Does anyone =
have any ideas to fix this error?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>-Alexander =
<o:p></o:p></p></div></body></html>

------=_NextPart_000_0068_01CE3DAC.13FF97F0--
