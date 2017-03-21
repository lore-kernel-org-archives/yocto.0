Return-Path: <richard.zhang@pica8.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBDE9E007AA; Tue, 21 Mar 2017 00:48:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.37.129 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1048 seconds by postgrey-1.32 at yocto-www;
	Tue, 21 Mar 2017 00:48:55 PDT
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-cys01nam02on0129.outbound.protection.outlook.com
	[104.47.37.129])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E0E0E00524
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 00:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pica8com.onmicrosoft.com; s=selector1-pica8-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=P5J7ksRRiHFkVkgcqY51gRmnPLGIihU6WBql9sZD+Us=;
	b=LnO5Cffu2eR9RCjsMmiHRHdmZvJgMhMHMwrPqc/4qfo7VbJqb7l1AQAOiaUJwpTrv4fgBuBu9UDCpWcv6H8YuWtvfYcHiLbBfXAg8ffi/skU3naCEvgXaYaVliBxjGPIl8kxca63QGl75vGbgPt44+84zmSK7h8g0c34hWdpAvs=
Received: from CY4PR12MB1880.namprd12.prod.outlook.com (10.175.81.23) by
	CY4PR12MB1877.namprd12.prod.outlook.com (10.175.63.23) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.961.17; Tue, 21 Mar 2017 07:15:29 +0000
Received: from CY4PR12MB1880.namprd12.prod.outlook.com ([10.175.81.23]) by
	CY4PR12MB1880.namprd12.prod.outlook.com ([10.175.81.23]) with mapi id
	15.01.0947.020; Tue, 21 Mar 2017 07:15:29 +0000
From: Richard Zhang <richard.zhang@pica8.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to use *.bb file to select different kernel config/feature?
Thread-Index: AQHSohF8n9HjvPSKZEaoEOwM846FJg==
Date: Tue, 21 Mar 2017 07:15:29 +0000
Message-ID: <CY4PR12MB1880C1DA0123AF0A0A2211B2A53D0@CY4PR12MB1880.namprd12.prod.outlook.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=pica8.com; 
x-originating-ip: [116.216.128.235]
x-ms-office365-filtering-correlation-id: cad4c629-52a0-48dc-38e2-08d4702a0e45
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001)(2017030254075);
	SRVR:CY4PR12MB1877; 
x-microsoft-exchange-diagnostics: 1; CY4PR12MB1877;
	7:2O70i6kMGBDVwM1dB5TNp8DzYo/f9B+iimt+yaAVAx1OCb1GfryfuSmrWAYmwto4sxpYAoIqqsZi7+is6EVbU9HFnO2UUeLhQryE7xocAA9QE5ezgzh0zcWpu43MaPJoWJvvk6Qk1yUJ8WTPKlh19jOcRPnJK7aiZQiTmW0+L3nhZo+/TSHOn6mtbfNqcxyYa3h88y5C22Ja54odAwf4JAZTVltASriqb9Kdt7DHYFlisckzzRM4eIdzFEF3L9PC/RcB6uQv/JPj7l3fQ3GGCZZm42J6GjBbmzmiHaeR0yGztFkcasw56GNvZbamcWQvLdu3RJYRo2wZiQEVMdMDmg==
x-microsoft-antispam-prvs: <CY4PR12MB1877A0E09B86F8F96ABD33A9A53D0@CY4PR12MB1877.namprd12.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041248)(20161123560025)(20161123562025)(20161123555025)(20161123564025)(20161123558025)(6072148);
	SRVR:CY4PR12MB1877; BCL:0; PCL:0; RULEID:; SRVR:CY4PR12MB1877; 
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39450400003)(53754006)(33656002)(6916009)(2351001)(55016002)(54896002)(5660300001)(189998001)(77096006)(50986999)(8676002)(99286003)(2900100001)(53936002)(66066001)(2906002)(9686003)(8936002)(19627405001)(3280700002)(7736002)(86362001)(2501003)(25786008)(74316002)(6606003)(81166006)(38730400002)(110136004)(3660700001)(7696004)(6506006)(54356999)(6116002)(122556002)(102836003)(1730700003)(3846002)(6436002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR12MB1877;
	H:CY4PR12MB1880.namprd12.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: pica8.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2017 07:15:29.3645 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1649697f-e494-4b71-8227-3f383d0979ad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR12MB1877
Subject: How to use *.bb file to select different kernel config/feature?
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
X-List-Received-Date: Tue, 21 Mar 2017 07:48:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR12MB1880C1DA0123AF0A0A2211B2A53D0CY4PR12MB1880namp_"

--_000_CY4PR12MB1880C1DA0123AF0A0A2211B2A53D0CY4PR12MB1880namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all


I want   to use one linux-kernel-myown.bb file to select different config f=
or several boxes.

I think when I give MACHINE to box1\box2\box3, the kernel config and featur=
es select can be done.


Is it correct :


when use MACHINE=3Dbox1\box2\box3 and so on:


KERNEL_FEATURES_append_box1=3D" cfg/box1.scc"

KERNEL_CONFIG_box1=3D" cfg/box1_defconfig.cfg"


this instruction could work?or any suggestion.



Regards

Richard

--_000_CY4PR12MB1880C1DA0123AF0A0A2211B2A53D0CY4PR12MB1880namp_
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
<p>Hi all</p>
<p><br>
</p>
<p>I want &nbsp; to use one linux-kernel-myown.bb file to select different =
config for several boxes.</p>
<p>I think when I give MACHINE to&nbsp;<span>box1\box2\box3</span>, the ker=
nel config and features select can be done.<br>
</p>
<p><br>
</p>
<p>Is it correct :</p>
<p><br>
</p>
<p>when use MACHINE=3Dbox1\box2\box3 and so on:</p>
<p><br>
</p>
<p><span>KERNEL_FEATURES_append_box1=3D&quot; cfg/box1.scc&quot;</span></p>
<p><span><span>KERNEL_CONFIG_box1=3D&quot; cfg/box1_defconfig.cfg&quot;</sp=
an></span><br>
</p>
<p><br>
</p>
<p>this instruction could work?or any suggestion.<br>
</p>
<p><br>
</p>
<p><br>
</p>
<p>Regards</p>
<p>Richard<br>
</p>
</div>
</body>
</html>

--_000_CY4PR12MB1880C1DA0123AF0A0A2211B2A53D0CY4PR12MB1880namp_--
