Return-Path: <sjolley.yp.pm@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 792BCE00BAF; Tue,  5 Feb 2019 08:36:24 -0800 (PST)
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
	*      [209.85.214.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F370E00BAB
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2019 08:36:23 -0800 (PST)
Received: by mail-pl1-f169.google.com with SMTP id z23so1731625plo.0
	for <yocto@yoctoproject.org>; Tue, 05 Feb 2019 08:36:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version:thread-index
	:content-language;
	bh=sPwBp9tI7mKaaeuJe3NN1l8uFAyPJZAEXswkzg43sWU=;
	b=aEEImXwf+lec3Q2AfM2RBK/p3XTUkjkm8fe+0nXeroAHtQc+qp3jwgfHbPMYg6/jOt
	ctgF40iLeHQdjReOxabkyJ6g69BaoE+6XF4yv/S7tiewBxL3iF7ov8cFAtEpixlodgeL
	YE61c9fX1NveIKbwvmtAxd8rJ88QBXJQWpB4cHUm6vqMQ+h5OKqrxMZv0rXRgB02tDMg
	qU7RRrj21N78JWV6X2VxLlIDnzvSI6v+ZMENORfIvm7bPUyAoKDMLp0JbVCJT9nSJ/5O
	ULsrdCAC7sWcV2krLPEUC4elb1do/w3EAsN46M9pS0TxraMBZYlVE8bCK8a52olm62a8
	J5nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:thread-index:content-language;
	bh=sPwBp9tI7mKaaeuJe3NN1l8uFAyPJZAEXswkzg43sWU=;
	b=STVdA/lMxaqU1zj2mDc755ZpgdpvBam0xxrYbfDcSdvu4RjvhXzH/uNSJKseKI9eRP
	vPIguGOSx93PLQz6X+rmELkLjGP2VwCRDMGK46INa7onWJhfiOjvKxss9b6GOvahuQJc
	LahtpfInhx9fHqS3mror0wgfGA7b8T6IeBI9xIcJG3FYy7AFCg+52go9FVjoZF+0qmX6
	2D9yT4q7NyFXa07OLFKapQZwfQ9LYg+92ThHmNyLvP/IxX97tSUkexRwMTyGi5LtFXbt
	FecamEKV0DlntXrYF/tlOCDa1byKOpxqGKP4lwZ6V8CdT/acqkCQw1/f7kkEq7i5Qq0E
	Pprw==
X-Gm-Message-State: AHQUAubK9DYZIgIMUMl53faNhMroYrAbCIe7BJmfFKF/5qNbkpsOtaW3
	jKx18o2/NlcHw63fco7cbQc=
X-Google-Smtp-Source: AHgI3Ias/nJ8c9AuSaVd0HOEv4dqDh9JyWZphHHl6lsEhnE1/EGRW7kZxMPCKNFB7P8sXmuPT/fhsQ==
X-Received: by 2002:a17:902:6a4:: with SMTP id 33mr5859128plh.99.1549384582799;
	Tue, 05 Feb 2019 08:36:22 -0800 (PST)
Received: from sjolley (c-71-59-136-149.hsd1.or.comcast.net. [71.59.136.149])
	by smtp.gmail.com with ESMTPSA id
	q199sm7358642pfc.97.2019.02.05.08.36.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 05 Feb 2019 08:36:22 -0800 (PST)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>
Date: Tue, 5 Feb 2019 08:36:23 -0800
Message-ID: <052201d4bd70$eea45180$cbecf480$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdS9cNy0cPMGHjIGQ/iiC1CWsnmsew==
Subject: YPTM minutes
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
X-List-Received-Date: Tue, 05 Feb 2019 16:36:24 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0523_01D4BD2D.E082BF30"
Content-Language: en-us

------=_NextPart_000_0523_01D4BD2D.E082BF30
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yocto Technical Team Minutes for Feb. 5, 2019.

 

Attendees: Armin, David, Joshua, Randy, Tim, Richard G., Stephen, Jan-Simon,
Manjukum, Tracey, Trevor, Nick, Richard P, Mark, Kate, Michael, 

 

YP 2.6.1 was released on Feb. 4, 2019.

YP 2.7 M2 was built and is in QA and is 79% done.  See:
<https://wiki.yoctoproject.org/wiki/2.7_QA_Status>
https://wiki.yoctoproject.org/wiki/2.7_QA_Status

 

Armin agreed to add Ubuntu 18.4 to YP 2.6 series and we will use in for YP
2.7 

We discussed that the YP 2.6 manual doesn't have an upgrading to YP 2.6.
Tracey will look into this.

 

We discussed the status of YP 2.7 upgrades and we are doing OK there.  We
are struggling on new features YP 2.7.  Richard is primarily working to
stabilize the autobuilder to produce an automated QA report to allow QA to
transition from Intel. 

 

Richard discussed maintainers of OE-Core.  AUH is sending requests but not
getting feedback. 

 

Richard discussed that we have issues with some products and need support
from the community to fix.

 

Tim discussed ptest issues Richard has identified.

 

Richard asked if there were ideas about how to better communicate with the
community. No specific suggestions.

 

Thanks,

 

Stephen K. Jolley

Yocto Project Project Manager

*    Cell:                (208) 244-4460

* Email:               <mailto:sjolley.yp.pm@gmail.com>
sjolley.yp.pm@gmail.com

 


------=_NextPart_000_0523_01D4BD2D.E082BF30
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
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
style=3D'margin:0in;margin-bottom:.0001pt'><b><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Yocto Technical =
Team Minutes for Feb. 5, 2019.</span></b><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Attendees: Armin, =
David, Joshua, Randy, Tim, Richard G., Stephen, Jan-Simon, Manjukum, =
Tracey, Trevor, Nick, Richard P, Mark, Kate, Michael, =
</span><o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>YP 2.6.1 was =
released on Feb. 4, 2019.</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>YP 2.7 M2 was built =
and is in QA and is 79% done. &nbsp;See: </span><a =
href=3D"https://wiki.yoctoproject.org/wiki/2.7_QA_Status"><span =
style=3D'font-family:"Arial",sans-serif;color:#1155CC'>https://wiki.yocto=
project.org/wiki/2.7_QA_Status</span></a><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Armin agreed to add =
Ubuntu 18.4 to YP 2.6 series and we will use in for YP 2.7 =
</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>We discussed that =
the YP 2.6 manual doesn&#8217;t have an upgrading to YP 2.6. =
&nbsp;Tracey will look into this.</span><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>We discussed the =
status of YP 2.7 upgrades and we are doing OK there. &nbsp;We are =
struggling on new features YP 2.7.&nbsp; Richard is primarily working to =
stabilize the autobuilder to produce an automated QA report to allow QA =
to transition from Intel. </span><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Richard discussed =
maintainers of OE-Core. &nbsp;AUH is sending requests but not getting =
feedback. </span><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Richard discussed =
that we have issues with some products and need support from the =
community to fix.</span><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Tim discussed ptest =
issues Richard has identified.</span><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Richard asked if =
there were ideas about how to better communicate with the community. No =
specific suggestions.</span><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p><p =
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

------=_NextPart_000_0523_01D4BD2D.E082BF30--
