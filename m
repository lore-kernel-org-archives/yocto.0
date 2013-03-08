Return-Path: <dmulder@lasx.com>
Received: from omx.cbeyond.com (omx.cbeyond.com [50.20.30.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C41EE014A9
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 14:37:09 -0800 (PST)
X-SBRS: 5.3
X-HAT: Sender Group CBEYOND_SYSTEMS, Policy $CBEYOND_RELAY applied.
X-Hostname: omx02bay.sys.cbeyond.net
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AuIAADVnOlEyFB4LmWdsb2JhbABDhBUjwBiBcw4BAQEBAQgLCwcUIQeCLgUtXgEqViYBBBuICwGbAaEKjluDF2EDqk+CJw
X-IronPort-AV: E=Sophos;i="4.84,810,1355115600"; d="scan'208,217";a="13237445"
Received: from mts.cbeyond.com (HELO EXHUB101.mmeprod.cbeyond) ([50.20.30.11])
	by omx.cbeyond.com with ESMTP; 08 Mar 2013 17:37:07 -0500
Received: from EXHUB104.mmeprod.cbeyond (10.128.38.103) by
	EXHUB101.mmeprod.cbeyond (10.128.38.100) with Microsoft SMTP Server
	(TLS) id 14.2.298.4; Fri, 8 Mar 2013 17:36:37 -0500
Received: from EXMBX202A.mmeprod.cbeyond ([fe80::b0ca:4d9b:ba7c:8227]) by
	EXHUB104.mmeprod.cbeyond ([::1]) with mapi id 14.02.0298.004;
	Fri, 8 Mar 2013 17:36:37 -0500
From: David Mulder <dmulder@lasx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Can I disable RT throttling?
Thread-Index: Ac4cTWBMCcKVjca/TdSAdJObHV69ZQ==
Date: Fri, 8 Mar 2013 22:36:36 +0000
Message-ID: <19F0379280417C4A8FE3BD23AA7298E501347DE7@EXMBX202A.mmeprod.cbeyond>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [69.198.178.141]
MIME-Version: 1.0
Subject: Can I disable RT throttling?
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
X-List-Received-Date: Fri, 08 Mar 2013 22:37:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_19F0379280417C4A8FE3BD23AA7298E501347DE7EXMBX202Ammepro_"

--_000_19F0379280417C4A8FE3BD23AA7298E501347DE7EXMBX202Ammepro_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi.

I'm running a 10us control loop by (under vxWorks) setting one thread's pri=
ority to max and not yielding ever (letting other tasks run on other cores)=
, but Linux seems to thwart that capability: Ubuntu swaps out my thread occ=
asionally for hundreds of microseconds; Yocto prints a "[sched_delayed] sch=
ed: RT throttling activated" message as soon as I start my thread, so it se=
ems likely that it will swap out my thread periodically (I'm not quite able=
 to confirm that yet), and even the fastest thread swap that I've heard of =
is too slow.

I tried changing the kernel's Preemption Model to "No Forced Preemption (Se=
rver)", but that didn't remove the RT throttling message.  I browsed the re=
st of menuconfig but nothing looked related.  I read an article from 2008 t=
hat talked about the kernel reserving 5% of the CPU for non-SCHED_FIFO task=
s, so that's the direction and terminology I looked for in menuconfig.

So maybe disabling RT throttling is all I need to do, maybe some other appr=
oach is needed.  Hopefully someone will know more than I do.

Thanks!
Dave Mulder


--_000_19F0379280417C4A8FE3BD23AA7298E501347DE7EXMBX202Ammepro_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m running a 10us control loop by (under vxWo=
rks) setting one thread&#8217;s priority to max and not yielding ever (lett=
ing other tasks run on other cores), but Linux seems to thwart that capabil=
ity: Ubuntu swaps out my thread occasionally for
 hundreds of microseconds; Yocto prints a &#8220;[sched_delayed] sched: RT =
throttling activated&#8221; message as soon as I start my thread, so it see=
ms likely that it will swap out my thread periodically (I&#8217;m not quite=
 able to confirm that yet), and even the fastest thread
 swap that I&#8217;ve heard of is too slow.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I tried changing the kernel&#8217;s Preemption Model=
 to &#8220;No Forced Preemption (Server)&#8221;, but that didn&#8217;t remo=
ve the RT throttling message.&nbsp; I browsed the rest of menuconfig but no=
thing looked related. &nbsp;I read an article from 2008 that talked
 about the kernel reserving 5% of the CPU for non-SCHED_FIFO tasks, so that=
&#8217;s the direction and terminology I looked for in menuconfig.<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So maybe disabling RT throttling is all I need to do=
, maybe some other approach is needed.&nbsp; Hopefully someone will know mo=
re than I do.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
<p class=3D"MsoNormal">Dave Mulder<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_19F0379280417C4A8FE3BD23AA7298E501347DE7EXMBX202Ammepro_--
