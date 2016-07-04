Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BCF3E00D5E; Mon,  4 Jul 2016 16:29:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.73 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0073.outbound.protection.outlook.com [104.47.32.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1526EE00D55
	for <yocto@yoctoproject.org>; Mon,  4 Jul 2016 16:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=1T884tXHbRKt/opvxzWTD0vPIbCJ9VfA6OLUS6YRsq4=;
	b=6Fbd8trov6f6iFVa1GfgFWHsY6aec27cI/00zYqU5Pzvbgpsgfvl1O1iVMrxhJV35X2W61kfVdzy24uQP/nRi8tTl4US0CsYVeFecGBicDt7zKqbhsI0VtXPAE+HbHqpSiMjnBryVv8cL43sGgIeRDxGZoWxuo2KqWTxzlb3AUw=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1596.prod.exchangelabs.com (10.163.139.14) with Microsoft
	SMTP Server (TLS) id 15.1.523.12; Mon, 4 Jul 2016 23:14:53 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0523.025; Mon, 4 Jul 2016 23:14:52 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: "Burton, Ross" <ross.burton@intel.com>, "Marcelo E. Magallon"
	<marcelo.magallon@hpe.com>
Thread-Topic: [yocto] Shorter build time?
Thread-Index: AQHR0zfz8t/RS5a5ckC5nKnzjXT7MaADxyWAgAAG+QCAAAMsgIAAjX4hgABq8wCAA86NgIAACyUAgABJQx0=
Date: Mon, 4 Jul 2016 23:14:52 +0000
Message-ID: <CY1PR0101MB1594E7914C1DF5636EA0F22BD7380@CY1PR0101MB1594.prod.exchangelabs.com>
References: <CY1PR0101MB1594413BBE9700E6A3EFC6E9D7250@CY1PR0101MB1594.prod.exchangelabs.com>
	<CAF3SDA4+AzfPjKDgxisVjdT_Guvujr6KLvXRVRZuTNZyOwTGpg@mail.gmail.com>
	<CAJTo0LbhtsE_bMdiVWrVkZWkHTero5Z+TDn0iuPzGivSH8239Q@mail.gmail.com>
	<CAF3SDA5CF1ihp3W6Lx1WpLpyiJ0v4ed14Aa1vTLWFyiHmdkZFw@mail.gmail.com>
	<CY1PR0101MB15943BB45183B750D36E8B60D7260@CY1PR0101MB1594.prod.exchangelabs.com>
	<CAJTo0LaQn3Yr0tp-eu92jSQ-UP=+qCopcKTXYOBcTa-4s7wnAQ@mail.gmail.com>
	<20160704181034.GE7411@nyx.americas.hpqcorp.net>,
	<CAJTo0LbrpVBaagVA2ZuRCq8=LAY00=_TB1+az-wd23wyyi5K2w@mail.gmail.com>
In-Reply-To: <CAJTo0LbrpVBaagVA2ZuRCq8=LAY00=_TB1+az-wd23wyyi5K2w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@uievolution.com; 
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: 180c6ecf-17b8-4be6-c309-08d3a461013f
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1596;
	6:r4aeAifsIahMTksbgehVIRsXlPHuWh+ZzU1KHgTMEAMOXdVldQcG1O94O7C8MYcYHuk6h/U4bUOAU1e2n8dZqCRJV1hMMvMg0VorIF2kP/bmNQdoK3f3YAGt0KsI3uaWkVSDGFq+j/SqQO2yWC+ZRgmriO+tWm2c47bta5a9teaTSx5Zwl2O/sS1nZOCGtqLKx60xxro1ZGssW2WAkqepyil/IsNi5jb5jVhUXrkTJnvTGCXoQlQuzQsWokCCIfn9I762hBkPCqVwNQLGmfHhDAKelZ/5uYJv4zNUoz81apouAEbzSjoaTmkhC3Sjvfe;
	5:WMqJCTrFNTo2LlFxVbVSd50gluyLzA9RLD6qCdxiBqEvK+yifMu8+yaOLPukgrCEOntUl+2fSYPJHXMKgkzqn3O32IQYBRDBKdERnc42HcHWyPdWuptkqFosmtH67f9NUazzHk6y2k10COZ9Y6cyUw==;
	24:EHnvrkbP1e6r7Q+YpIRO+A0neCyHj/QDLveGzbF4Qq5mbgchlGB13MlSrenKcCWmMzQlHzNDIdoNwa7UiJa3yjrQ9FMiaoOEHX1zF3DScKs=;
	7:/FN7hxqPdMu5FqiNAroZg+J0Oauu9FQz3ReN90reM8G//2SCZtBipGDWoQUa5xCyUlJbC5M3xRQTWYSplT2i4bn8XWW2aE+VekcONRQx0tCg12mDi+FRCSmY3En4wdva+Gw1y1kIJqUW9rZbnqgTFSzetG0V8CiCIYgDmFnGkV3A9lhjw9jW0lUaZZTsWXxnH4gsrl5yPPJUKqkRbnigHvg3w1Oi5IYFXsbCm5Lp1hZnBFu/+rFXxN7BZX7WKYTVJ69rfskHkkUG9pJQK8FG+g==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0101MB1596;
x-microsoft-antispam-prvs: <CY1PR0101MB15969CC9796B059A5595C87ED7380@CY1PR0101MB1596.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(227479698468861)(228905959029699);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(2401047)(5005006)(8121501046)(10201501046)(3002001);
	SRVR:CY1PR0101MB1596; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1596; 
x-forefront-prvs: 0993689CD1
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(7916002)(199003)(377454003)(24454002)(189002)(101416001)(8936002)(9686002)(81166006)(4326007)(93886004)(102836003)(7696003)(5003600100003)(3846002)(6116002)(3900700001)(7846002)(122556002)(92566002)(7736002)(10400500002)(586003)(2906002)(8676002)(19580405001)(19580395003)(81156014)(74316002)(68736007)(77096005)(66066001)(76176999)(105586002)(2900100001)(19625215002)(19627405001)(87936001)(106116001)(106356001)(2950100001)(16236675004)(33656002)(5002640100001)(5001770100001)(97736004)(189998001)(86362001)(50986999)(54356999)(3280700002)(3660700001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1596;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: uievolution.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: uievolution.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2016 23:14:52.6968 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1596
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Shorter build time?
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
X-List-Received-Date: Mon, 04 Jul 2016 23:29:25 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB1594E7914C1DF5636EA0F22BD7380CY1PR0101MB1594_"

--_000_CY1PR0101MB1594E7914C1DF5636EA0F22BD7380CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

By the way, PyPy seems to have some restriction that is not fully compatibl=
e with CPyhon and bitbake scripts may not run as they are.  I tried it yest=
erday and learned that it is not a simple in-place replacement.


________________________________
From: Burton, Ross <ross.burton@intel.com>
Sent: Tuesday, July 5, 2016 3:50 AM
To: Marcelo E. Magallon
Cc: Takashi Matsuzawa; yocto@yoctoproject.org
Subject: Re: [yocto] Shorter build time?


On 4 July 2016 at 19:10, Marcelo E. Magallon <marcelo.magallon@hpe.com<mail=
to:marcelo.magallon@hpe.com>> wrote:
That is true, but I've seen cases where the start up time of Python (or
the time it takes bitbake to start "doing work") is *perceptually* much
larger than the work done by the recipe, or at least it looks like it
represents a sigficant fraction of the total work. That's where PyPy
might help.

Measuring that overhead should be fairly simple, and if it's true then havi=
ng a pool of workers would be a good optimisation.

Ross


--_000_CY1PR0101MB1594E7914C1DF5636EA0F22BD7380CY1PR0101MB1594_
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
<p>By the way, PyPy seems to have some restriction that is not fully compat=
ible with CPyhon and bitbake scripts may not run as they are. &nbsp;I tried=
 it yesterday and learned that it is not a simple in-place&nbsp;replacement=
.</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Burton, Ross &lt;ross=
.burton@intel.com&gt;<br>
<b>Sent:</b> Tuesday, July 5, 2016 3:50 AM<br>
<b>To:</b> Marcelo E. Magallon<br>
<b>Cc:</b> Takashi Matsuzawa; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Shorter build time?</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On 4 July 2016 at 19:10, Marcelo E. Magallon <sp=
an dir=3D"ltr">
&lt;<a href=3D"mailto:marcelo.magallon@hpe.com" target=3D"_blank">marcelo.m=
agallon@hpe.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
<div id=3D":29t" class=3D"a3s aXjCH m155b71b971f7af76">That is true, but I'=
ve seen cases where the start up time of Python (or<br>
the time it takes bitbake to start &quot;doing work&quot;) is *perceptually=
* much<br>
larger than the work done by the recipe, or at least it looks like it<br>
represents a sigficant fraction of the total work. That's where PyPy<br>
might help.<br>
</div>
</blockquote>
<div><br>
</div>
<div>Measuring that overhead should be fairly simple, and if it's true then=
 having a pool of workers would be a good optimisation.</div>
<div><br>
</div>
<div>Ross&nbsp;</div>
</div>
<br>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_CY1PR0101MB1594E7914C1DF5636EA0F22BD7380CY1PR0101MB1594_--
