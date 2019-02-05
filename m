Return-Path: <bhupendra.singh@ppsinternational.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E0E0E00AD5; Tue,  5 Feb 2019 04:30:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.9 required=5.0 tests=BAYES_00,DATE_IN_PAST_03_06,
	DEAR_SOMETHING, DKIM_INVALID, DKIM_SIGNED, HTML_MESSAGE,
	MSGID_MULTIPLE_AT, 
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 MSGID_MULTIPLE_AT Message-ID contains multiple '@' characters
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [182.50.132.193 listed in list.dnswl.org]
	*  1.6 DATE_IN_PAST_03_06 Date: is 3 to 6 hours before Received: date
	*  2.0 DEAR_SOMETHING BODY: Contains 'Dear (something)'
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
X-Greylist: delayed 450 seconds by postgrey-1.32 at yocto-www;
	Tue, 05 Feb 2019 04:30:29 PST
Received: from sg2nlshrout01.shr.prod.sin2.secureserver.net
	(sg2nlshrout01.shr.prod.sin2.secureserver.net [182.50.132.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06FC5E00546
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2019 04:30:29 -0800 (PST)
Received: from sg2plcpnl0208.prod.sin2.secureserver.net ([148.72.232.109])
	by : HOSTING RELAY : with ESMTP
	id qzkPgo5Zi3Yo6qzkPg1Gtk; Tue, 05 Feb 2019 05:22:41 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ppsinternational.in; s=default;
	h=Content-Type:MIME-Version:Message-ID:Date
	:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=X4HOGfFFJWyXzZx+Sp7KZCpI+ihhpZD6OR26EKyXLMA=;
	b=biLvnbLp9+1Uk5rilVcEB6RtPA
	n59Ddf8xXpohM3jrqFn+RAck1rixFhCUJKuLUI8wv9FO2tylIvLFQ48kmKCiSumtdo2vDIrDKjBvU
	izuRQMJTrMRQOKbPq/bPmhuebSmiK0RKI0otXDPUnKR+8gKtbZSyww1twPykonm5cEF8trxHmIKKN
	mjB5WTOnA1BPtlUjCRUG4kqLCkB0hQ85Da34/e5STKKMlcvBImSPjJR547xr9C7wY0L0hKRUpP36r
	VGzOuprboQZf3SM7ByT7tKcUi7bM0ZAZhHd98+c/L9VcGCEDkHtp9Bc5k65AZUbRXnoM2z/K+7MJ3
	tDXI1abA==;
Received: from [103.76.136.42] (port=4016 helo=Bhupendra)
	by sg2plcpnl0208.prod.sin2.secureserver.net with esmtpsa
	(TLSv1:ECDHE-RSA-AES256-SHA:256) (Exim 4.91)
	(envelope-from <bhupendra.singh@ppsinternational.in>)
	id 1gqzjh-0073Q3-3B
	for yocto@yoctoproject.org; Tue, 05 Feb 2019 05:21:57 -0700
From: "Bhupendra Singh" <bhupendra.singh@ppsinternational.in>
To: <yocto@yoctoproject.org>
Date: Tue, 5 Feb 2019 12:21:50 +0530
Message-ID: <000001d4bd1f$49158550$db408ff0$@singh@ppsinternational.in>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdS9H0JNpiETfmUwRnuJk7wIIms86w==
x-cr-hashedpuzzle: AQe0 AUN+ BvxK ByEK B80K CYnz C+aZ DVQx EWz+ E2pX E6/q F761
	GG0y HdZt ILwZ IhIN; 1;
	eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {364F894B-7105-42C9-B53A-ECDA18A2BE05};
	YgBoAHUAcABlAG4AZAByAGEALgBzAGkAbgBnAGgAQABwAHAAcwBpAG4AdABlAHIAbgBhAHQAaQBvAG4AYQBsAC4AaQBuAA==;
	Tue, 05 Feb 2019 06:51:45 GMT;
	SABvAHcAIAB0AG8AIABhAGQAZAAvAG0AbwBkAGkAZgB5ACAAZgBpAGwAZQBzACAAaQBuACAAdABoAGUAIAByAG8AbwB0ACAAZgBpAGwAZQAgAHMAeQBzAHQAZQBtAHMAIABpAG4AIABZAG8AYwB0AG8A
x-cr-puzzleid: {364F894B-7105-42C9-B53A-ECDA18A2BE05}
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - sg2plcpnl0208.prod.sin2.secureserver.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - ppsinternational.in
X-Get-Message-Sender-Via: sg2plcpnl0208.prod.sin2.secureserver.net: authenticated_id:
	bhupendra.singh@ppsinternational.in
X-Authenticated-Sender: sg2plcpnl0208.prod.sin2.secureserver.net: bhupendra.singh@ppsinternational.in
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4wfHLi28XF/W0vSzquQlGiEYWx93pCITJ1C/d+LN775ExGY/y1oeI+QbeEMtdYg1kOejjda6m8Qzgu/WW0x899mcMZR+aEyZfKu6XKK36B8WhSMGAZeswM
	lgK90m/uIJjHcmuMScEKGu23mPvQl+jKwD3Jk0H6JKxTFyfgZJros4ioykWndrIapQ8sPRT6HwbnDauTy1epccN7ucnvwDQXGuQXkfOczQn6JxcUJ+1023Lq
Subject: How to add/modify files in the root file systems in Yocto
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
X-List-Received-Date: Tue, 05 Feb 2019 12:30:32 -0000
X-Groupsio-MsgNum: 44012
Content-Type: multipart/related;
	boundary="----=_NextPart_000_0001_01D4BD4D.62CDC150"
Content-Language: en-us

------=_NextPart_000_0001_01D4BD4D.62CDC150
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0002_01D4BD4D.62CDC150"

------=_NextPart_001_0002_01D4BD4D.62CDC150
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

 

Dear sir,

Are there any examples on how to add startup scripts and other files to the
target root file system using yocto? ie placing shell scripts into the
etc/init.d directory.

 

 

Thanks & Regards

Bhupendra Singh

Mob.+919599502188

 cid:image001.png@01CC0B4C.B6F26260

 PT Communication Systems Pvt. Ltd.

 32,Udyog Kendra, Echotech III,Greater Noida (U.P.) 201308  India

 


------=_NextPart_001_0002_01D4BD4D.62CDC150
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"2050" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><span style=3D'font-family:"Times New =
Roman","serif";
color:#548DD4'>Dear sir,<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-family:"Times New =
Roman","serif";
color:#548DD4;background:white'>Are there any examples on how to add =
startup
scripts and other files to the target root file system using yocto? ie =
placing
shell scripts into the etc/init.d directory.<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-family:"Times New =
Roman","serif";
color:#548DD4;background:white'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-family:"Times New =
Roman","serif";
color:#548DD4'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal style=3D'background:white'><span =
style=3D'font-size:12.0pt;
font-family:"Times New Roman","serif";color:#4F81BD'>Thanks &amp; =
Regards</span><span
style=3D'font-size:9.5pt;font-family:"Arial","sans-serif";color:#4F81BD'>=
<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'background:white'><span =
style=3D'font-size:12.0pt;
font-family:"Times New Roman","serif";color:#4F81BD'>Bhupendra =
Singh</span><span
style=3D'font-size:9.5pt;font-family:"Arial","sans-serif";color:#4F81BD'>=
<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'background:white'><span =
style=3D'font-size:12.0pt;
font-family:"Times New =
Roman","serif";color:#4F81BD'>Mob.+919599502188</span><span
style=3D'font-size:9.5pt;font-family:"Arial","sans-serif";color:#4F81BD'>=
<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'background:white'><span =
style=3D'font-size:12.0pt;
font-family:"Times New Roman","serif";color:#1F497D'>&nbsp;</span><span
style=3D'color:#1F497D'><img width=3D75 height=3D56 =
id=3D"Picture_x0020_1"
src=3D"cid:image001.png@01D4BD4D.5BFAC6C0"
alt=3D"cid:image001.png@01CC0B4C.B6F26260"></span><span =
style=3D'font-size:9.5pt;
font-family:"Arial","sans-serif";color:#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'background:white'><span =
style=3D'font-size:12.0pt;
font-family:"Times New Roman","serif";color:#4F81BD'>&nbsp;PT =
Communication
Systems Pvt. Ltd.<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'background:white'><span =
style=3D'color:#4F81BD'>&nbsp;</span><span
style=3D'font-size:12.0pt;font-family:"Times New =
Roman","serif";color:#4F81BD'>32,Udyog
Kendra, Echotech III,Greater Noida (U.P.) 201308&nbsp; India</span><span
style=3D'font-size:12.0pt;font-family:"Times New =
Roman","serif";color:#4F81BD'><o:p></o:p></span></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

</body>

</html>

------=_NextPart_001_0002_01D4BD4D.62CDC150--

------=_NextPart_000_0001_01D4BD4D.62CDC150
Content-Type: image/png;
	name="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <image001.png@01D4BD4D.5BFAC6C0>

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

------=_NextPart_000_0001_01D4BD4D.62CDC150--
