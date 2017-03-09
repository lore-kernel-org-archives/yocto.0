Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24782E007BA; Wed,  8 Mar 2017 21:07:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.73 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0073.outbound.protection.outlook.com [104.47.41.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E8DDE00519
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 21:07:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=ScjwHlZpACAVHkxyodJjkjzf4wyvRHUVr0Dkh89f9oE=;
	b=pLQJiHCmIqqRZ+3AQoUe/Fu9Hiq7lrNB7czb3d1TqgRjaAthlYEBNDplWzcQznr4pKb56umZe8JcPFp2BMdMacMw9sNBWlVp/iAhDb+wlPPtQzCRp3YlAoXN+U3IKLl6B72+eA0FXIPpU52z+tzKM3P1n0BFD6bV10jZTSxYrGY=
Received: from DM5PR0101MB2953.prod.exchangelabs.com (10.174.181.143) by
	DM5PR0101MB2955.prod.exchangelabs.com (10.174.181.145) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.947.12; Thu, 9 Mar 2017 04:51:37 +0000
Received: from DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) by
	DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) with mapi id
	15.01.0947.020; Thu, 9 Mar 2017 04:51:36 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: hddimg 4GB limit?
Thread-Index: AQHSmI6wAkgqHRn5FkGO07UmiSttYA==
Date: Thu, 9 Mar 2017 04:51:36 +0000
Message-ID: <DM5PR0101MB2953A7BCD17DDE333B00C2CAB6210@DM5PR0101MB2953.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=xevo.com; 
x-originating-ip: [25.174.180.132]
x-ms-office365-filtering-correlation-id: 53b1d11d-f922-49a1-772d-08d466a7f7c5
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:DM5PR0101MB2955; 
x-microsoft-exchange-diagnostics: 1; DM5PR0101MB2955;
	7:4QqFc3pTEqj1Vg8NCpju/cvjpZKbJWICF9nDNqpTrIzLBIpX/KOtFlNihYnt6DK2pU1PsYUiTd8vR9urKKaPtewzYkNWoMJncQJfnJ7jy3PRlJxyIggxl33OYTuUoh0kCmX4NEyXPH0CcDjIuWcNrNXbMYCEywNBdUqn/HwmIQ7uLA1/pHB1ZeZWIjctn+6X1c24Me0x3WactJh4bWS5+9sU+QUynGHUBiKby3D0WAlhDQ08mlGFFa1+jiWcJHuuzd5hU45Pwollc27t0pUDCL6eHbA3rjrLPzbrSqm5sQv4dBI9b9rY+Mx91jK0Zm3AFIOYMXZN8zktoHMlAIbo+g==
x-microsoft-antispam-prvs: <DM5PR0101MB29555CC3405474C1422F3935B6210@DM5PR0101MB2955.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6041248)(20161123560025)(20161123562025)(20161123555025)(20161123558025)(20161123564025)(6072148);
	SRVR:DM5PR0101MB2955; BCL:0; PCL:0; RULEID:;
	SRVR:DM5PR0101MB2955; 
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39450400003)(55016002)(3660700001)(106116001)(6606003)(189998001)(2501003)(53936002)(99286003)(66066001)(19627405001)(2906002)(25786008)(3846002)(102836003)(2351001)(3280700002)(7736002)(86362001)(6916009)(74316002)(5660300001)(7696004)(54356999)(6506006)(6436002)(50986999)(8676002)(5640700003)(122556002)(77096006)(6116002)(2900100001)(110136004)(8936002)(54896002)(38730400002)(33656002)(1730700003)(81166006)(9686003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR0101MB2955;
	H:DM5PR0101MB2953.prod.exchangelabs.com; FPR:; SPF:None; MLV:sfv;
	LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2017 04:51:36.6848 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0101MB2955
Subject: hddimg 4GB limit?
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
X-List-Received-Date: Thu, 09 Mar 2017 05:07:24 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR0101MB2953A7BCD17DDE333B00C2CAB6210DM5PR0101MB2953_"

--_000_DM5PR0101MB2953A7BCD17DDE333B00C2CAB6210DM5PR0101MB2953_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello, Yocto.


I have looked into hddimg file.

According to image-live.bbclass, it is hardcoded to maximum 4GB size.

But should not this more large?

hddimg is generated by mkdosfs -F 32 that means the filesystem capacity is =
larger than 4GB.


I just hit this limit when generating an image that exceeds 4GB size.


I think I am look into using hdddirect instead (hopefully it does not have =
this limit?),

but I also want to check if hddimg 4GB limitation has some practical reason=
 (other than above image-live.bbclass checking).


--_000_DM5PR0101MB2953A7BCD17DDE333B00C2CAB6210DM5PR0101MB2953_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hello, Yocto.</p>
<p><br>
</p>
<p>I have looked into hddimg file.</p>
<p>According to image-live.bbclass, it is hardcoded to maximum&nbsp;4GB siz=
e.</p>
<p>But should not this more large?</p>
<p><span style=3D"font-size: 12pt;">hddimg is generated by mkdosfs -F 32 th=
at means the filesystem capacity is larger than 4GB.</span><br>
</p>
<p><br>
</p>
<p>I just hit this limit when generating an image that exceeds 4GB size.</p=
>
<p><br>
</p>
<p>I think I am look into using hdddirect instead (hopefully it does not ha=
ve this limit?),</p>
<p>but I also want to check if hddimg 4GB limitation has some practical rea=
son (other than above&nbsp;image-live.bbclass checking).</p>
<p><br>
</p>
</div>
</body>
</html>

--_000_DM5PR0101MB2953A7BCD17DDE333B00C2CAB6210DM5PR0101MB2953_--
