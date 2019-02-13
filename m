Return-Path: <bhupendra.singh@ppsinternational.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D0EAE00950; Tue, 12 Feb 2019 23:22:48 -0800 (PST)
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
	*      [182.50.132.193 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from sg2nlshrout01.shr.prod.sin2.secureserver.net
	(sg2nlshrout01.shr.prod.sin2.secureserver.net [182.50.132.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32BAEE007B3
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2019 23:22:46 -0800 (PST)
Received: from sg2plcpnl0208.prod.sin2.secureserver.net ([148.72.232.109])
	by : HOSTING RELAY : with ESMTP
	id tosHgDH8R3Yo6tosHgBYuH; Wed, 13 Feb 2019 00:22:29 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ppsinternational.in; s=default;
	h=Content-Type:MIME-Version:Message-ID:Date
	:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=M3o7xtu6/r/tMYsW48GadgHU+c7xHpoStIf6xkO38jk=;
	b=pO0XNeqsz3OUvK2cJkXRTSXC1h
	Zldvt9MIzbWXbaslyGm4thvhCmgpp6b7w/Bx4QLYC/SdV5dPLauPExrqOW/RNn3UF80t6QfQM1vBL
	bxxPSnZsN0lqdfUUCoXR+NVFiSXAiH3FBKB0IEllDdZo07tC4b1kL+TJ/Plwu2Bv4JdPDq1DY7TQc
	LRjzg9C3uEznI3f/d7CEcOP1WBPo7H9SG1KV3KjlVRKJNj6s0JijxZgbiq1QKc1AS8/XSbb8S8QFm
	aq/T/EIJLINTKuDNWAfP3M2ZUNGdLeC22qPr6WwHrizpYQHChVCrmCFW95/5QoGTazmcMlVO4BcWS
	kTc6z40g==;
Received: from [103.76.136.42] (port=2605 helo=Bhupendra)
	by sg2plcpnl0208.prod.sin2.secureserver.net with esmtpsa
	(TLSv1:ECDHE-RSA-AES256-SHA:256) (Exim 4.91)
	(envelope-from <bhupendra.singh@ppsinternational.in>)
	id 1gtorY-00F1bm-0l
	for yocto@yoctoproject.org; Wed, 13 Feb 2019 00:21:44 -0700
From: "Bhupendra Singh" <bhupendra.singh@ppsinternational.in>
To: <yocto@yoctoproject.org>
Date: Wed, 13 Feb 2019 12:51:17 +0530
Message-ID: <000001d4c36c$b99aef10$2cd0cd30$@singh@ppsinternational.in>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdTDbLFz1UyFRsbYQYiFl3cMVxuMaQ==
x-cr-hashedpuzzle: A64= iLE= Bnmv CILM Cbkf Czw8 Du1A D4uD ETyS FiJF GGRy GcnJ
	G9xW HPO9 H0Tw I7Io; 1;
	eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {33C1FF8A-33BD-419E-9558-D9C2F649921B};
	YgBoAHUAcABlAG4AZAByAGEALgBzAGkAbgBnAGgAQABwAHAAcwBpAG4AdABlAHIAbgBhAHQAaQBvAG4AYQBsAC4AaQBuAA==;
	Wed, 13 Feb 2019 07:21:10 GMT;
	TQBhAGsAZQAgAG8AbgBlACAAZABpAHIAZQBjAHQAbwByAHkAIAB3AHIAaQB0AGUAYQBiAGwAZQA=
x-cr-puzzleid: {33C1FF8A-33BD-419E-9558-D9C2F649921B}
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
X-CMAE-Envelope: MS4wfJHEO0t+OCUHVhZ7TuZ5Z6mxRzfjMgYXBbDldsisAvOUXeHkijldyakFLljWIPNH7gihWKXLH0W3R27q5XzEkpg/Im5xZySJdVmupzKaRD29onjKz7hl
	ldJK044SzM3/lOW8EOuhLMLZu7Poh4qmJnG3l7kJg7FLqGeA8nS7h5pWU+4GJUYeLRWNIjHNAvqMU7ISJxU9s0vsw7kX9L+B9rVg7XeumDH1ak/wP2odJHKF
Subject: Make one directory writeable
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
X-List-Received-Date: Wed, 13 Feb 2019 07:22:48 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0001_01D4C39A.D3532B10"
Content-Language: en-us

------=_NextPart_000_0001_01D4C39A.D3532B10
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello 

I have built core-image-minimal  with read only rootfs  then now  I want to
make one directory (like /mnt) writable. 

Is it possible to make one directory writeable in read only rootfs if yes
,please tell me how can I do same.   

 

Bhupendra Singh

 


------=_NextPart_000_0001_01D4C39A.D3532B10
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
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

<p class=3DMsoNormal><b><span =
style=3D'font-size:12.0pt;color:#548DD4'>Hello =
<o:p></o:p></span></b></p>

<p class=3DMsoNormal><b><span style=3D'font-size:12.0pt;color:#548DD4'>I =
have built
core-image-minimal&nbsp; with read only rootfs&nbsp; then now &nbsp;I =
want to
make one directory (like /mnt) writable. <o:p></o:p></span></b></p>

<p class=3DMsoNormal><b><span =
style=3D'font-size:12.0pt;color:#548DD4'>Is it
possible to make one directory writeable in read only rootfs if yes =
,please
tell me how can I do same. &nbsp;&nbsp;<o:p></o:p></span></b></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

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

------=_NextPart_000_0001_01D4C39A.D3532B10--
