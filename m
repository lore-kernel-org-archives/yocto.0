Return-Path: <sjolley.yp.pm@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E818E009EB; Mon,  4 Feb 2019 09:39:42 -0800 (PST)
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
	*      [209.85.215.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
	[209.85.215.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33EA0E00754
	for <yocto@yoctoproject.org>; Mon,  4 Feb 2019 09:39:39 -0800 (PST)
Received: by mail-pg1-f170.google.com with SMTP id m1so221705pgq.8
	for <yocto@yoctoproject.org>; Mon, 04 Feb 2019 09:39:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version:thread-index
	:content-language;
	bh=Dg0Dog23ec13oHY4u0UUVs+P9FAVrss/ab+H+EMlRlE=;
	b=iFmDydjV4ICqvyLPtMlyDhQvc+Y7agttSOus5uo9ADAZtyDzt5VHwmoWiUHmdeX9Of
	g+SYUsjMJJbrbAuIZ/ATOFbRJhT0s1vVYh8hKutJFj/4vWzYtbF4GKjHrzHTlppdRkyl
	ZMP/CYjHBuAvmuLJ3zGBF2MANqxk7Z/4cFDPnT/NA4YT4eM5X99LJl/Jn1YwSe1k0gYz
	EaieTRBUmhPfMyKVIGSeew+mzUKwNHJqVSKF6owxh7p4JalaeJPbyx8vd7+C5reQ7vUu
	VKne1aB8MZitTUb/EiTptOoyCWArU1J7C1kTKAjs/hcXYTR18CUCgOjnpz3SxcnALjGA
	1K1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:thread-index:content-language;
	bh=Dg0Dog23ec13oHY4u0UUVs+P9FAVrss/ab+H+EMlRlE=;
	b=j96bxBHByyC7c+UwxqJBovI4DTK0WZ7mTNwlBbTCnr/oclch9B09nI2AFfM4fDcnyB
	Gw6ZbSibg+yZa0aJXKATwBufL3kegHZLUqQTx1pUjD8MtcKYoEGYfmqSues7ccDhi62M
	1+cTF9ndt+En2x4kOo8oApMo1+N6TdDXToajQ4fT79RqUl0rwYoE/QhZMp28wxYMxejb
	/JnhyMoDLG0grkb44ApL05x4/E0+OTwS2T8acQVAomh8p6mH5U4jL8dacit2aiTyHysG
	dFYNyfOkGVWwnMXRlMWLtlJDRPqxq829dNPayurlEqH1MZUIOmW7MLrP5+QYQQvAw+p8
	tQgQ==
X-Gm-Message-State: AHQUAuaS9K30/nDD2d/EPSV2l0AS+1v4Uh/5ik2FjS+3tijlRo0MzEJM
	H/DJB8ZsDDd5hegG7iimqxs=
X-Google-Smtp-Source: AHgI3IaHRfN9RmCx+bWh/BlhmojbUlX6fRIAoDY7eflWpaHJQT6fy3kG+tELq98VRUZwMebagorlOQ==
X-Received: by 2002:a63:4706:: with SMTP id u6mr439153pga.95.1549301979390;
	Mon, 04 Feb 2019 09:39:39 -0800 (PST)
Received: from sjolley (c-71-59-136-149.hsd1.or.comcast.net. [71.59.136.149])
	by smtp.gmail.com with ESMTPSA id
	z127sm903608pfb.80.2019.02.04.09.39.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Feb 2019 09:39:38 -0800 (PST)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>,
	<openembedded-core@lists.openembedded.org>
Date: Mon, 4 Feb 2019 09:39:38 -0800
Message-ID: <012401d4bcb0$9af37720$d0da6560$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQEH/Hq/OEvaPvCLRbF3yyqIf+TTAQ==
Subject: Yocto Project Unassigned Bugs - Help Needed
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
X-List-Received-Date: Mon, 04 Feb 2019 17:39:42 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0125_01D4BC6D.8CD0D360"
Content-Language: en-us

------=_NextPart_000_0125_01D4BC6D.8CD0D360
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

All,

 

The triage team meets weekly and does its best to handle the bugs reported
into the Bugzilla. The number of people attending that meeting has fallen,
as have the number of people available to help fix bugs. One of the things
we hear users report is they don't know how to help. We (the triage team)
are therefore going to start reporting out the currently 294 unassigned
bugs.

 

We're hoping people may be able to spare some time now and again to help out
with these.

 

Bugs are split into two types, "true bugs" where things don't work as they
should and "enhancements" which are features we'd want to add to the system.

 

There are also roughly four different "priority" classes right now, "2.7",
"2.8", "2.99" and "Future", the more pressing/urgent issues being in "2.7"
and then "2.8".

 

Please review this link and if a bug is something you would be able to help
with either take ownership of the bug, or send me
(Stephen.k.jolley@intel.com <mailto:Stephen.k.jolley@intel.com> ) an e-mail
with the bug number you would like and I will assign it to you (please make
sure you have a Bugzilla account).

 

The list is at:
https://wiki.yoctoproject.org/wiki/Bug_Triage#Unassigned_Bugs

 

Thanks,

 

Stephen K. Jolley

Yocto Project Program Manager

INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124 

*    Cell:                (208) 244-4460

* Email:                             stephen.k.jolley@intel.com

 


------=_NextPart_000_0125_01D4BC6D.8CD0D360
Content-Type: text/html;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155EEA6E7D14fmsmsx123amrcor_";
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
span.EmailStyle20
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
class=3DMsoPlainText>All,<o:p></o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>The =
triage team meets weekly and does its best to handle the bugs reported =
into the Bugzilla. The number of people attending that meeting has =
fallen, as have the number of people available to help fix bugs. One of =
the things we hear users report is they don't know how to help. We (the =
triage team) are therefore going to start reporting out the currently =
294 unassigned bugs.<o:p></o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>We're =
hoping people may be able to spare some time now and again to help out =
with these.<o:p></o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>Bugs =
are split into two types, &quot;true bugs&quot; where things don't work =
as they should and &quot;enhancements&quot; which are features we'd want =
to add to the system.<o:p></o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>There =
are also roughly four different &quot;priority&quot; classes right now, =
&#8220;2.7&#8221;, &#8220;2.8&#8221;, &quot;2.99&quot; and =
&quot;Future&quot;, the more pressing/urgent issues being in =
&quot;2.7&quot; and then &#8220;2.8&#8221;.<o:p></o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>Please =
review this link and if a bug is something you would be able to help =
with either take ownership of the bug, or send me (<a =
href=3D"mailto:Stephen.k.jolley@intel.com">Stephen.k.jolley@intel.com</a>=
) an e-mail with the bug number you would like and I will assign it to =
you (please make sure you have a Bugzilla account).<o:p></o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>The =
list is at: <a =
href=3D"https://wiki.yoctoproject.org/wiki/Bug_Triage#Unassigned_Bugs">ht=
tps://wiki.yoctoproject.org/wiki/Bug_Triage#Unassigned_Bugs</a><o:p></o:p=
></p><p class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal =
style=3D'page-break-after:avoid;text-autospace:none'><b><i><span =
style=3D'font-size:16.0pt;font-family:"Times New =
Roman",serif;color:purple'>Stephen K. Jolley</span></i></b><b><i><span =
style=3D'font-size:16.0pt;font-family:"Tahoma",sans-serif;color:purple'><=
o:p></o:p></span></i></b></p><p class=3DMsoNormal><b><span =
style=3D'font-size:8.0pt;font-family:"Courier New";color:blue'>Yocto =
Project Program Manager<o:p></o:p></span></b></p><p class=3DMsoNormal =
style=3D'page-break-after:avoid;text-autospace:none'><b><span =
style=3D'font-size:10.0pt;font-family:"Courier =
New";color:fuchsia'>INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, =
OR 97124 <o:p></o:p></span></b></p><p class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:Wingdings;color:black'>(</span><span=
 style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif",serif;color:teal'>&nbsp;&nbsp;&nbsp; </span><b><span =
style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Cell</span></b><span =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif",serif;color:teal'>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'font-size:9.0pt;font-family:"MS Sans Serif",serif'>(208) =
244-4460<span style=3D'color:black'><o:p></o:p></span></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:Wingdings'>* </span><b><span =
lang=3DFR style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Email</span></b><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif",serif;color:teal'>:</span><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif",serif'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <u><span =
style=3D'color:blue'>stephen.k.jolley@intel.com</span></u></span><span =
lang=3DFR =
style=3D'font-size:12.0pt;font-family:"Arial",sans-serif'><o:p></o:p></sp=
an></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_0125_01D4BC6D.8CD0D360--
