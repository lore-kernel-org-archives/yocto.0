Return-Path: <Shrawan.Kumar@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B649AE00C76; Wed, 12 Jul 2017 01:25:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_20,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.82.251.16 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0700]
X-Greylist: delayed 426 seconds by postgrey-1.32 at yocto-www;
	Wed, 12 Jul 2017 01:25:03 PDT
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 484FDE00BD2
	for <yocto@yoctoproject.org>; Wed, 12 Jul 2017 01:25:03 -0700 (PDT)
Received: from [216.82.250.99] by server-16.bemta-12.messagelabs.com id
	E7/1C-23818-43BD5695; Wed, 12 Jul 2017 08:17:56 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrAKsWRWlGSWpSXmKPExsVySpdNU9f4dmq
	kwf/pahaTXq5hc2D0aD/RxxbAGMWamZeUX5HAmvFn2nzmgk3iFc+vXmNtYJws2sXIxSEksJVR
	4tC7BjYIZwujxIlr/5kgnIOMElumrWLvYuTkYBMwlLjSc5cRxBYRMJV4cewLG4gtLGArMWnLT
	DaIuJPE9O5LULaexKK1i8BsFgFVief/3rOA2LwC7hINj88zg9iMArISXxpXg9nMAuISt57MZw
	KxJQQEJJbsgaiREBCVePn4HyuEbSCxdek+FghbQWJldwMbhG0tsX/eUlaIOTkSf76vY4TYJSh
	xcuYTsHohoBu2LPzNMoFRZBaSdbOQtMxC0gIR15FYsPsTG4StLbFs4WtmGPvMgcdMyOILGNlX
	MWoUpxaVpRbpGprpJRVlpmeU5CZm5ugaGhrp5aYWFyemp+YkJhXrJefnbmIExlg9AwPjDsbG6
	V6HGCU5mJREeRdeSI0U4kvKT6nMSCzOiC8qzUktPsQow8GhJMG7/iZQTrAoNT21Ii0zBxjtMG
	kJDh4lEV65fUBp3uKCxNzizHSI1ClGS45NM35+Y+I49PvEdyaOYyBSiCUvPy9VSpx3G8g8AZC
	GjNI8uHGwhHSJUVZKmJeRgYFBiKcgtSg3swRV/hWjOAejkjDvC5ApPJl5JXBbXwEdxAR00Jrs
	FJCDShIRUlINjGvf3vls2Vl3SvPKvBta9lfevpbbOjtVaNdq94S9S08m7pC6MONKdXzV4md1X
	LYW/A8LQ1cmC0YoZh4OXvX/7IzqeC+mhnKbi9s3pD7caVoaNlPR4rzhtbDYvKufazPU+9JkGx
	PNer+fmRtp3+8//VjOMY3YfbvSpkkwRU1e/e6O3SXZ+ibjFUosxRmJhlrMRcWJANh+r6RDAwA
	A
X-Env-Sender: Shrawan.Kumar@harman.com
X-Msg-Ref: server-9.tower-126.messagelabs.com!1499847472!101599595!1
X-Originating-IP: [202.45.6.41]
X-StarScan-Received: 
X-StarScan-Version: 9.4.25; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 27889 invoked from network); 12 Jul 2017 08:17:55 -0000
Received: from unknown (HELO HIBDWSMB10.ad.harman.com) (202.45.6.41)
	by server-9.tower-126.messagelabs.com with DHE-RSA-AES256-GCM-SHA384
	encrypted SMTP; 12 Jul 2017 08:17:55 -0000
Received: from HIBDWSMB03.ad.harman.com (10.99.236.93) by
	HIBDWSMB10.ad.harman.com (10.99.236.101) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Wed, 12 Jul 2017 13:47:51 +0530
Received: from HIBDWSMB02.ad.harman.com (10.99.236.92) by
	HIBDWSMB03.ad.harman.com (10.99.236.93) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Wed, 12 Jul 2017 13:47:51 +0530
Received: from HIBDWSMB02.ad.harman.com ([fe80::1150:96d7:1a68:61f8]) by
	HIBDWSMB02.ad.harman.com ([fe80::1150:96d7:1a68:61f8%16]) with mapi id
	15.00.1263.000; Wed, 12 Jul 2017 13:47:51 +0530
From: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: setting security attributes to device file(/dev/ipc)
Thread-Index: AdL650DtxcQpB+kiRMawZevkp5bM2A==
Date: Wed, 12 Jul 2017 08:17:51 +0000
Message-ID: <240f3baeb6254d94be145b275091eb05@HIBDWSMB02.ad.harman.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.99.236.43]
x-exclaimer-md-config: 4a26c407-9f7b-4db1-94e4-bcbc87a799a8
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 12 Jul 2017 10:10:56 -0700
Subject: setting security attributes to device file(/dev/ipc)
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
X-List-Received-Date: Wed, 12 Jul 2017 08:25:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_240f3baeb6254d94be145b275091eb05HIBDWSMB02adharmancom_"

--_000_240f3baeb6254d94be145b275091eb05HIBDWSMB02adharmancom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Team ,

I want to set ACL and SMACK/SELinux rules to device files (line /dev/ipc2  =
/dev/galcore etc .. )   from the build system . But device files are dynami=
cally populated at runtime.

Do we have some way in "Yocto"  to achieve the goal  ?



Thanks & Regards
Shrawan

--_000_240f3baeb6254d94be145b275091eb05HIBDWSMB02adharmancom_
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
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello Team ,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I want to set ACL and SMACK/SELinux rules to device =
files (line /dev/ipc2 &nbsp;/dev/galcore etc .. )&nbsp;&nbsp; from the buil=
d system . But device files are dynamically populated at runtime.<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Do we have some way in &#8220;Yocto&#8221; &nbsp;to =
achieve the goal &nbsp;?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks &amp; Regards<o:p></o:p></p>
<p class=3D"MsoNormal">Shrawan<o:p></o:p></p>
</div>
</body>
</html>

--_000_240f3baeb6254d94be145b275091eb05HIBDWSMB02adharmancom_--
