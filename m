Return-Path: <Jeremy.Overesch@millerwelds.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83517E00DFD; Wed, 18 Jul 2018 09:55:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [206.197.156.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1108 seconds by postgrey-1.32 at yocto-www;
	Wed, 18 Jul 2018 09:55:12 PDT
Received: from mailcuda.itwwelds.com (mailcuda.itwwelds.com [206.197.156.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD117E00972
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2018 09:55:12 -0700 (PDT)
X-ASG-Debug-ID: 1531931803-08979511bb513ab0001-yzSStA
Received: from webmail.itwwelds.com (exch13mb01.itwwelds.com [10.52.121.20])
	by mailcuda.itwwelds.com with ESMTP id IAvoLB2w6h6EXMhV for
	<yocto@yoctoproject.org>; Wed, 18 Jul 2018 11:36:43 -0500 (CDT)
X-Barracuda-Envelope-From: Jeremy.Overesch@millerwelds.com
X-ASG-Whitelist: Client
Received: from EXCH13MB02.itwwelds.com (10.52.121.21) by
	EXCH13MB01.itwwelds.com (10.52.121.20) with Microsoft SMTP Server (TLS)
	id 15.0.1104.5; Wed, 18 Jul 2018 11:36:43 -0500
Received: from EXCH13MB02.itwwelds.com ([fe80::994c:a14b:1d78:3bd3]) by
	EXCH13MB02.itwwelds.com ([fe80::994c:a14b:1d78:3bd3%20]) with mapi id
	15.00.1104.000; Wed, 18 Jul 2018 11:36:43 -0500
From: Jeremy Overesch <Jeremy.Overesch@millerwelds.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: journald logs "lost" between firmware updates
X-ASG-Orig-Subj: journald logs "lost" between firmware updates
Thread-Index: AdQetIvkiL/kyrF7QK6eL6rGAd7/uw==
Date: Wed, 18 Jul 2018 16:36:42 +0000
Message-ID: <bdb6157bbe1e42ae8f6877d418e4404b@EXCH13MB02.itwwelds.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.46.101.16]
MIME-Version: 1.0
X-Barracuda-Connect: exch13mb01.itwwelds.com[10.52.121.20]
X-Barracuda-Start-Time: 1531931803
X-Barracuda-URL: https://mailcuda.itwwelds.com:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 4872
X-Virus-Scanned: by bsmtpd at itwwelds.com
X-Barracuda-BRTS-Status: 1
Subject: journald logs "lost" between firmware updates
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
X-List-Received-Date: Wed, 18 Jul 2018 16:55:14 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_bdb6157bbe1e42ae8f6877d418e4404bEXCH13MB02itwweldscom_"

--_000_bdb6157bbe1e42ae8f6877d418e4404bEXCH13MB02itwweldscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

In my embedded system, I've created persistent storage on a separate filesy=
stem for log files in /var/log.  This works well, until I do a firmware upd=
ate.  When the firmware is updated, the entire root filesystem is rewritten=
.  This means that the /etc/machine-id is also rewritten to a new, random n=
umber.  As journald stores everything in /var/log/journal/<machine-id>, I g=
et old logs that are no longer accessible and not purged, taking up disk sp=
ace.  Is there any way to make the machine-id persistent across firmware up=
dates?

My initial thought would be to make /etc/machine-id into a symlink pointing=
 to /var/log/machine-id.  However, that results in a new problem.  On first=
 boot, the file wouldn't exist, making an invalid symlink.

What is the proper way to go about keeping the machine-id consistent across=
 firmware updates?

Thanks,
Jeremy


________________________________

This message (including any attachments) is intended for the sole use of th=
e intended recipient/s and may contain material that is CONFIDENTIAL AND PR=
IVATE COMPANY INFORMATION. If you are not the intended recipient of this me=
ssage, you are hereby notified that you must delete the message without dis=
seminating, copying or taking any action in reliance upon it. If you have r=
eceived this message in error, please notify the sender via return e-mail. =
Thank you.

--_000_bdb6157bbe1e42ae8f6877d418e4404bEXCH13MB02itwweldscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">In my embedded system, I&#8217;ve created persistent=
 storage on a separate filesystem for log files in /var/log.&nbsp; This wor=
ks well, until I do a firmware update.&nbsp; When the firmware is updated, =
the entire root filesystem is rewritten.&nbsp; This means
 that the /etc/machine-id is also rewritten to a new, random number.&nbsp; =
As journald stores everything in /var/log/journal/&lt;machine-id&gt;, I get=
 old logs that are no longer accessible and not purged, taking up disk spac=
e.&nbsp; Is there any way to make the machine-id
 persistent across firmware updates?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My initial thought would be to make /etc/machine-id =
into a symlink pointing to /var/log/machine-id.&nbsp; However, that results=
 in a new problem.&nbsp; On first boot, the file wouldn&#8217;t exist, maki=
ng an invalid symlink.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What is the proper way to go about keeping the machi=
ne-id consistent across firmware updates?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Jeremy<b><span style=3D"font-size:9.0pt;font-family:=
&quot;Arial&quot;,sans-serif;color:#0F55A0"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
This message (including any attachments) is intended for the sole use of th=
e intended recipient/s and may contain material that is CONFIDENTIAL AND PR=
IVATE COMPANY INFORMATION. If you are not the intended recipient of this me=
ssage, you are hereby notified that
 you must delete the message without disseminating, copying or taking any a=
ction in reliance upon it. If you have received this message in error, plea=
se notify the sender via return e-mail. Thank you.<br>
</font>
</body>
</html>

--_000_bdb6157bbe1e42ae8f6877d418e4404bEXCH13MB02itwweldscom_--
