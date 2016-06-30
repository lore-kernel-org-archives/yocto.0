Return-Path: <hgujulan@visteon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77D1AE00E75; Thu, 30 Jun 2016 05:16:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.147 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0147.outbound.protection.outlook.com [157.56.112.147])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FDDDE00DA4
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 05:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=visteon.onmicrosoft.com; s=selector1-visteon-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=1B1VYbMRh6VFqSdJz/vw2On2ta4usIdcj04EoHqLM+s=;
	b=xtSCSATyp7HTu/8VQKJ9ZO8GrxCSzy6NPW7J5WnM3I7VeRDlUjvwcZ82wPaX30tEyCjLkmpbutnFDdK7NXyfhXGx6WDO5XK3XFlMmTct4UW5T/j9mxErT4TgfapegEudg+F+6XK0fDfPN84Tnb6l13ISqna28VjIgck3W9qhiXg=
Received: from DB5PR06MB1573.eurprd06.prod.outlook.com (10.164.41.11) by
	DB5PR06MB1574.eurprd06.prod.outlook.com (10.164.41.12) with Microsoft
	SMTP Server (TLS) id 15.1.528.8; Thu, 30 Jun 2016 12:15:57 +0000
Received: from DB5PR06MB1573.eurprd06.prod.outlook.com ([10.164.41.11]) by
	DB5PR06MB1573.eurprd06.prod.outlook.com ([10.164.41.11]) with mapi id
	15.01.0534.010; Thu, 30 Jun 2016 12:15:57 +0000
From: "Gujulan Elango, Hari Prasath (H.)" <hgujulan@visteon.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Package build files not getting copied to sysroots
	directory
Thread-Index: AQHR0qPFx36SXbSwl0SHZWZBztB2eqABt2yAgAAJBkuAABBTAIAAG9DP
Date: Thu, 30 Jun 2016 12:15:57 +0000
Message-ID: <DB5PR06MB15736DF15287DFD47AB734BACF240@DB5PR06MB1573.eurprd06.prod.outlook.com>
References: <DB5PR06MB157369E58A396E97FE19504FCF240@DB5PR06MB1573.eurprd06.prod.outlook.com>
	<CAEjjRe+E3-yR1dbg2tRn1JF1KNPFqk9q7vL+WVj42-JOiJm8Pg@mail.gmail.com>
	<DB5PR06MB157388E96AD38C53FEB34989CF240@DB5PR06MB1573.eurprd06.prod.outlook.com>,
	<CAJTo0LYPjZtScomnbNvcT0CjnxBhWmP3AN3Dv4hVWY5Sbzo5DQ@mail.gmail.com>
In-Reply-To: <CAJTo0LYPjZtScomnbNvcT0CjnxBhWmP3AN3Dv4hVWY5Sbzo5DQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=hgujulan@visteon.com; 
x-originating-ip: [25.164.34.4]
x-ms-office365-filtering-correlation-id: 35010f06-896c-41d9-212b-08d3a0e04aaa
x-microsoft-exchange-diagnostics: 1; DB5PR06MB1574;
	6:m9kd5fsdWQ7ztXkpFwwnEInaHoZcmQMDFvLjdO32u8LJmQ8CQwrQO9LJ2xLyCw3BH71nFpxoc0AQ8NVB5mXQw8wTSmhQ0OiDJAOmBvEwg0GhZsupUDZhGBcSkZGWvYa8oazFR++EaoZZhORA+tsmom9hTsISwIYhwyhphV4p5gAZkgOnDroPEm8ABGrC+iYW1BFzV0KXR52eeHctCMO0C3pw4wJ73CsdhEPk4eWzcJ1pktZOQkxBMQLRiMk/hnlp5iEUr9mxnlVSELyW23FrZGTPJm8df0UF5obu9BU7K8fo4s7QmSRwJOAos7g3mz75Bx1v9nj/vbwF6SIXrTBxog==;
	5:nV8y+kZNwqIxIC1ybWy01UWCTX9ZK1NccTN9Ynjm/N0hKHTXvjZKDZTWcaLA+7fkAniMlVMY4BLmBSpSj13kTGN2u90Q/nobCmsbl4RCtRyK3l2KKz2DCfZBWzenAHIz7CJ+j4wQoydhY0KMGLZ2mw==;
	24:EAxElIyL+BFqG1pIT6kNGHiq0kd4+XI5hk9y9QfKBtj8x4ExVUEuPH9ncADJerCr3dOyfe1/JM+DbaPVoYwtnZqZCNtsHiM4W6m7qQDXKmk=;
	7:TQYzguE0igcYEd+khvz54RQKencyt0AbsX+pdh2sJ7D0HztKw4jMmlO/vcPhnk24khB1gynWntgyQqgn1v6uIYDq7/mCu3GF9NcW1IzmQBQQeXr9+WKytp/9XgaV8jSD9wD0yw8ocGmibdKSoDJ60VWM4J9NRrPmD47V16z9bLFIWI0P+F4QPvaje7zvX2F10rbSiZ1+k/E9bSoDRRp/RF4xDGSREbYvdQ4G/VF6hNGww2/Pc6VsAE+y5m/l3q0M
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB5PR06MB1574;
x-microsoft-antispam-prvs: <DB5PR06MB1574ADE43D7FB0BB3F9E3BFBCF240@DB5PR06MB1574.eurprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(208512329853888)(228905959029699);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6055026);
	SRVR:DB5PR06MB1574; BCL:0; PCL:0; RULEID:; SRVR:DB5PR06MB1574; 
x-forefront-prvs: 0989A7979C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(7916002)(199003)(24454002)(377454003)(189002)(10400500002)(2900100001)(74316001)(122556002)(6116002)(54356999)(76176999)(50986999)(7846002)(3846002)(102836003)(101416001)(586003)(8676002)(81156014)(81166006)(66066001)(15975445007)(86362001)(5002640100001)(3900700001)(77096005)(2950100001)(106356001)(93886004)(106116001)(3660700001)(9686002)(4326007)(19625215002)(68736007)(110136002)(16236675004)(19617315012)(87936001)(2906002)(92566002)(97736004)(33656002)(3280700002)(105586002)(76576001)(19580395003)(19580405001)(8936002)(5003600100003)(11100500001)(7906003)(7696003)(19627405001)(189998001)(7736002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB5PR06MB1574;
	H:DB5PR06MB1573.eurprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: visteon.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: visteon.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2016 12:15:57.3742 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a147aaf-01ec-498c-80a1-e34a8c63c548
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR06MB1574
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package build files not getting copied to sysroots directory
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
X-List-Received-Date: Thu, 30 Jun 2016 12:16:04 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB5PR06MB15736DF15287DFD47AB734BACF240DB5PR06MB1573eurp_"

--_000_DB5PR06MB15736DF15287DFD47AB734BACF240DB5PR06MB1573eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I have found the issue. The dlt-daemon package has to install it's packages=
 in lib64 directory. There was a upstream patch available that did the tric=
k. It has some modifications to its CMake related files.


http://git.projects.genivi.org/?p=3Ddlt-daemon.git;a=3Dcommit;h=3D7f3b86141=
0374effbba07ad71c1f1af7d922b713


Thanks & Regards,

Hari Prasath


________________________________
From: Burton, Ross <ross.burton@intel.com>
Sent: Thursday, June 30, 2016 4:04 PM
To: Gujulan Elango, Hari Prasath (H.)
Cc: Chris Z.; yocto@yoctoproject.org
Subject: Re: [yocto] Package build files not getting copied to sysroots dir=
ectory


On 30 June 2016 at 10:40, Gujulan Elango, Hari Prasath (H.) <hgujulan@viste=
on.com<mailto:hgujulan@visteon.com>> wrote:

The dlt-daemon package build directory at tmp/work/aarch64-poky-linux/dlt-d=
aemon/2.11.1-r0/image has the following build output where I couldn't see a=
ny directory named lib64. Probably this is the reason I am getting the QA w=
arning as well.

Yes.  The recipe isn't passing to the build what libdir should be, or the b=
uild isn't listening.  Either way, everything apart from the dlt-daemon bui=
ld thinks libdir is /usr/lib64.

Ross

--_000_DB5PR06MB15736DF15287DFD47AB734BACF240DB5PR06MB1573eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>I have found the issue. The dlt-daemon package has to install it's packa=
ges in lib64 directory. There was a upstream patch available that did the t=
rick. It has some modifications to its CMake related files.<br>
</p>
<p><br>
</p>
<p><a id=3D"LPlnk154174" href=3D"http://git.projects.genivi.org/?p=3Ddlt-da=
emon.git;a=3Dcommit;h=3D7f3b861410374effbba07ad71c1f1af7d922b713" class=3D"=
OWAAutoLink">http://git.projects.genivi.org/?p=3Ddlt-daemon.git;a=3Dcommit;=
h=3D7f3b861410374effbba07ad71c1f1af7d922b713</a><br>
</p>
<p><br>
</p>
<div id=3D"Signature">Thanks &amp; Regards,
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; ba=
ckground-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<p style=3D"margin-top:0px; margin-bottom:0px">Hari Prasath<br>
</p>
</div>
</div>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Burton, Ross &lt;ro=
ss.burton@intel.com&gt;<br>
<b>Sent:</b> Thursday, June 30, 2016 4:04 PM<br>
<b>To:</b> Gujulan Elango, Hari Prasath (H.)<br>
<b>Cc:</b> Chris Z.; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Package build files not getting copied to sysro=
ots directory</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On 30 June 2016 at 10:40, Gujulan Elango, Hari P=
rasath (H.)
<span dir=3D"ltr">&lt;<a href=3D"mailto:hgujulan@visteon.com" target=3D"_bl=
ank">hgujulan@visteon.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
<p>The dlt-daemon package build directory at <span>tmp/work/aarch64-poky-li=
nux/dlt-daemon/2.11.1-r0/image has the following build output</span> where =
I couldn't see any directory named lib64. Probably this is the reason I am =
getting the QA warning as well.</p>
<p></p>
</blockquote>
</div>
<br>
Yes.&nbsp; The recipe isn't passing to the build what libdir should be, or =
the build isn't listening.&nbsp; Either way, everything apart from the dlt-=
daemon build thinks libdir is /usr/lib64.</div>
<div class=3D"gmail_extra"><br>
</div>
<div class=3D"gmail_extra">Ross</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_DB5PR06MB15736DF15287DFD47AB734BACF240DB5PR06MB1573eurp_--
