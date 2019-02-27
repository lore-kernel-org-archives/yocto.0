Return-Path: <bhupendra.singh@ppsinternational.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FADCE00D11; Wed, 27 Feb 2019 04:49:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED, HTML_MESSAGE, MSGID_MULTIPLE_AT,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 MSGID_MULTIPLE_AT Message-ID contains multiple '@' characters
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [182.50.132.200 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from sg2nlsmtp01.shr.prod.sin2.secureserver.net
	(sg2nlsmtp01.shr.prod.sin2.secureserver.net [182.50.132.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0A81E00D01
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 04:49:26 -0800 (PST)
Received: from sg2plcpnl0208.prod.sin2.secureserver.net ([148.72.232.109])
	by : HOSTING RELAY : with ESMTP
	id yyafgIdeCynSRyyafgNthv; Wed, 27 Feb 2019 05:45:37 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ppsinternational.in; s=default;
	h=Content-Type:MIME-Version:Message-ID:Date
	:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=cWyQn/SgONKp8gnCnrccAuZQOWMuL1j7PP67jPADtik=;
	b=p8CBpSRkcgWVX3iNTQw6gg+VBC
	H1fljnvJGt+3dndCGxcU/tAdNtGsIuqX0cI1Xq2mkdgZj0y5OpSDjJG+V8EkS2ghTm2zogpG7fjj0
	72S78LHvC32mv7kLdhe3WueVGu1mgwvzdyI8KcPYL2fwUdCCH/kDcSB8v9YEeKidX3t6e/d4gf4c3
	0hO6am0viIafdhRAz6YbYhMei+SIK8ZAGEfrQjPda3vDlxbIddwUE68Utj+FXkAHpBBEKPecLc9WS
	iQmaZh+tmsVj1YJtExCIA8UpvBALHh+8fOOmeLTP27HpcskoCmnCR6p39f7hd8kbRtyUGmUW9tiH5
	Toc/50nw==;
Received: from [103.76.136.42] (port=3853 helo=Bhupendra)
	by sg2plcpnl0208.prod.sin2.secureserver.net with esmtpsa
	(TLSv1:ECDHE-RSA-AES256-SHA:256) (Exim 4.91)
	(envelope-from <bhupendra.singh@ppsinternational.in>)
	id 1gyydM-00FHFO-En
	for yocto@yoctoproject.org; Wed, 27 Feb 2019 05:48:24 -0700
From: "Bhupendra Singh" <bhupendra.singh@ppsinternational.in>
To: <yocto@yoctoproject.org>
Date: Wed, 27 Feb 2019 18:18:03 +0530
Message-ID: <000001d4ce9a$b1816640$148432c0$@singh@ppsinternational.in>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdTOmquWN6CQ4FMCSQqVI5sZhZKR2A==
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
X-CMAE-Envelope: MS4wfE0YHtXPdgw/0TXg2mwEQ0D0MU6iiklPDk7GGLwbm3KjATmkcrw1fR7g+q7Y/1XdrtglHP8gU8K3P++qmUCKMLQbI+jMptlP4ZtLk05OVpfy71dLtrKE
	tqg0IYOJfXQUCw8RusfZw33UOzfqeEK3UuTgMk09TGZC/81dcsEqM36cJMg+j6b4L0UHMtUscWzUkskogJyVLMg3XRyAjtDd7Ptu2lo/VPMskfAZKfimXJ5J
Subject: alsa utility
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
X-List-Received-Date: Wed, 27 Feb 2019 12:49:28 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0001_01D4CEC8.CB39A240"
Content-Language: en-us

------=_NextPart_000_0001_01D4CEC8.CB39A240
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all

How can i add alsa utility in poky core-minimal-imege.

 

Thanks & Regards

Bhupendra Singh

 


------=_NextPart_000_0001_01D4CEC8.CB39A240
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
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal>Hi all<o:p></o:p></p>

<p class=3DMsoNormal>How can i add alsa utility in poky =
core-minimal-imege.<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

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

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

</body>

</html>

------=_NextPart_000_0001_01D4CEC8.CB39A240--
