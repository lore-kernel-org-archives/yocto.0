Return-Path: <sjolley.yp.pm@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 875BCE009EB; Mon,  4 Feb 2019 08:30:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sjolley.yp.pm[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
	[209.85.215.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2794EE00994
	for <yocto@yoctoproject.org>; Mon,  4 Feb 2019 08:30:55 -0800 (PST)
Received: by mail-pg1-f182.google.com with SMTP id y1so133871pgk.11
	for <yocto@yoctoproject.org>; Mon, 04 Feb 2019 08:30:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version:thread-index
	:content-language;
	bh=y203WKABMzFLr5lM8/GOvc+tJhRYgaVRGxmeRspGXMU=;
	b=fmojuBgRyXWwXLOhl43RVeUxHSDtq3Uq3OeoZHwEVBNsNp/yDmdNndvmKCF8xi352B
	HbHTJVJEYjPeDEcCxM7gTJnR4DqQDEXG47RZD/C3jvsu0zrMht/D13SmlIn+xlNbsscE
	ipPKqKw/k7q6IdzQBSavzq+feIO3l7+RoCoOggngQdAHtGZ6gJ9Jw+bdi/5io915wy6J
	HN72hVG91DwTxeQOb+j8mF2Nu+RFWSs/OaxDz1gBZOI4pQxRA8l17/zZGvai8YZT7eLb
	GL9bR4GQ39d3vPwn4HEetpC5WmisBp1Q9xiwn88Rkx6JwaM1hGdf/gJx383oGoCzjf5b
	6pXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:thread-index:content-language;
	bh=y203WKABMzFLr5lM8/GOvc+tJhRYgaVRGxmeRspGXMU=;
	b=fAUJFsZBms29pWaAeaYiG62YFfulJnCxeIl+pSQM4AOm+VhKlcXuMcq3fXGNpC2Clw
	THRzdmw/KWFGzsBzjgXSXlZedlIScAakGxHAKZoSWWx+mfvpExKvNedfSmnMpN6H+5Y1
	3XLA5MHESr3Fkss74eiS4zOBEH1hR2y+RCwEM+/lphz7vD1ZtbriSICzoas7ihoJIS51
	kxJvFBPQW5DIw0Rk0n+Y6mD6Pm+PrwbAAhNY4S8fAlwNcX6PcSam5Yy9mGS8t1Ly3S1P
	sM12gapRTIy/duaLDf9rCgjmPADYhFerNQn1vqJ6Y+7gRIKLkal7SeqDhJrGuDwAsUlq
	YduA==
X-Gm-Message-State: AHQUAuZPlS6eA3NkKm184GUYZZwDSL+YyNr8wJD9kxDAf1AN7gGpFZgZ
	1f8D8TxqN2lFFPxpaiVEawo=
X-Google-Smtp-Source: AHgI3IYJJr5Uwi0GTJ8inyWF0md3fL/vtOzbDsjwWWtnzwbV6CBhoV8qJEjkT/yhsNBpi6Bg36K53A==
X-Received: by 2002:a62:5003:: with SMTP id e3mr216866pfb.23.1549297855234;
	Mon, 04 Feb 2019 08:30:55 -0800 (PST)
Received: from sjolley (c-71-59-136-149.hsd1.or.comcast.net. [71.59.136.149])
	by smtp.gmail.com with ESMTPSA id
	m20sm617833pgb.56.2019.02.04.08.30.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Feb 2019 08:30:54 -0800 (PST)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>
Date: Mon, 4 Feb 2019 08:30:53 -0800
Message-ID: <009001d4bca7$00d69450$0283bcf0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdS8pkJSXJ/3y3hfTq+DNvBC2jt6Xw==
Subject: Reminder: Yocto Project Technical Team Meeting @ Monthly from 8am to 8:30am on the first Tuesday (PDT)
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
X-List-Received-Date: Mon, 04 Feb 2019 16:30:56 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0091_01D4BC63.F2B3F090"
Content-Language: en-us

------=_NextPart_000_0091_01D4BC63.F2B3F090
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

All,

 

Just a reminder we will hold the monthly Yocto Project Technical Meeting at
8am PDT tomorrow. (2/5)  

 

I will start tracking the minutes at:
<https://docs.google.com/document/d/1Y5IIuE-z0Ykdl-DwuzUJh52flOZuhN_TSAfw2td
U9pg/edit?ts=5c06b22d>
https://docs.google.com/document/d/1Y5IIuE-z0Ykdl-DwuzUJh52flOZuhN_TSAfw2tdU
9pg/edit?ts=5c06b22d  Please request access if you want to assist in editing
them.  The world should have view access. 

 

Yocto Project Technical Team Meeting: We encourage people attending the
meeting to logon and announce themselves on the Yocto Project IRC chancel
during the meeting (optional):

Yocto IRC:  <http://webchat.freenode.net/?channels=#yocto>
http://webchat.freenode.net/?channels=#yocto

 

Wiki:  <https://www.yoctoproject.org/public-virtual-meetings/>
https://www.yoctoproject.org/public-virtual-meetings/

 

When            Monthly from 8am to 8:30am on the first Tuesday Pacific Time

Where           Zoom Meeting:  <https://zoom.us/j/990892712>
https://zoom.us/j/990892712 

 

Thanks,

 

Stephen K. Jolley

Yocto Project Project Manager

*    Cell:                (208) 244-4460

* Email:               <mailto:sjolley.yp.pm@gmail.com>
sjolley.yp.pm@gmail.com

 


------=_NextPart_000_0091_01D4BC63.F2B3F090
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"MS Sans Serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
	font-family:"Calibri",sans-serif;}
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
class=3DMsoNormal><span style=3D'color:#1F497D'>All,</span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Just a reminder we will hold the monthly Yocto =
Project Technical Meeting at 8am PDT tomorrow. (2/5)&nbsp; =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>I will start tracking =
the minutes at: <a =
href=3D"https://docs.google.com/document/d/1Y5IIuE-z0Ykdl-DwuzUJh52flOZuh=
N_TSAfw2tdU9pg/edit?ts=3D5c06b22d"><span =
style=3D'color:#0563C1'>https://docs.google.com/document/d/1Y5IIuE-z0Ykdl=
-DwuzUJh52flOZuhN_TSAfw2tdU9pg/edit?ts=3D5c06b22d</span></a>&nbsp; =
Please request access if you want to assist in editing them.&nbsp; The =
world should have view access. </span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Yocto Project Technical Team Meeting: We =
encourage people attending the meeting to logon and announce themselves =
on the Yocto Project IRC chancel during the meeting =
(optional):</span><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Yocto IRC: <a =
href=3D"http://webchat.freenode.net/?channels=3D#yocto"><span =
style=3D'color:#0563C1'>http://webchat.freenode.net/?channels=3D#yocto</s=
pan></a></span><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Wiki: <a =
href=3D"https://www.yoctoproject.org/public-virtual-meetings/"><span =
style=3D'color:#0563C1'>https://www.yoctoproject.org/public-virtual-meeti=
ngs/</span></a></span><span style=3D'font-size:12.0pt;font-family:"Times =
New Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>When&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; Monthly from 8am to 8:30am on the first Tuesday =
Pacific Time</span><span style=3D'font-size:12.0pt;font-family:"Times =
New Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Where&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; Zoom Meeting: <a =
href=3D"https://zoom.us/j/990892712"><span =
style=3D'color:#0563C1'>https://zoom.us/j/990892712</span></a> =
</span><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Thanks,</span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal =
style=3D'page-break-after:avoid;text-autospace:none'><b><i><span =
style=3D'font-size:16.0pt;font-family:"Times New =
Roman",serif;color:purple'>Stephen K. Jolley</span></i></b><b><i><span =
style=3D'font-size:16.0pt;font-family:"Tahoma",sans-serif;color:purple'><=
o:p></o:p></span></i></b></p><p class=3DMsoNormal><b><span =
style=3D'font-size:8.0pt;font-family:"Courier New";color:blue'>Yocto =
Project Project Manager<o:p></o:p></span></b></p><p =
class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:Wingdings;color:black'>(</span><span=
 style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif",serif;color:teal'>&nbsp;&nbsp;&nbsp; </span><b><span =
style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Cell</span></b><span =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif",serif;color:teal'>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'font-size:9.0pt;font-family:"MS Sans Serif",serif'>(208) =
244-4460</span><span style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif",serif;color:black'><o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:Wingdings'>* </span><b><span =
lang=3DFR style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Email</span></b><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif",serif;color:teal'>:</span><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif",serif'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;<u><span style=3D'color:blue'><a =
href=3D"mailto:sjolley.yp.pm@gmail.com"><span =
style=3D'color:#0563C1'>sjolley.yp.pm@gmail.com</span></a></span></u></sp=
an><span lang=3DFR =
style=3D'font-size:12.0pt;font-family:"Arial",sans-serif'><o:p></o:p></sp=
an></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_0091_01D4BC63.F2B3F090--
