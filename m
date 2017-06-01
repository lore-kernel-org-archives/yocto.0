Return-Path: <Brett.R.Nicholas.TH@dartmouth.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A943E00B45; Thu,  1 Jun 2017 11:13:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.45 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1976 seconds by postgrey-1.32 at yocto-www;
	Thu, 01 Jun 2017 11:13:19 PDT
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0045.outbound.protection.outlook.com [104.47.41.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C737FE00AE4
	for <yocto@yoctoproject.org>; Thu,  1 Jun 2017 11:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dartmouth.edu;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=Mx4+44LlsFqgDDit0kMC8CbROlZ3kRZTY+09fVcRPKk=;
	b=NILsTQMkGdM5MvWRz3hklrJJTkOyOVn3lzIRZVyAJFj2KoMyJNMvpRComypJiwUcNf1jL4CmPzj6L3hbO+hTLDRuD4JgWbuGxILGPfJL6Fe+jjw6WF7gJ42NEG4UK8zLQDHMDfr5Sf7VZaEERxKJCGjxFiAtsLvNDUo4yDSVYKw=
Received: from BN3PR03MB1462.namprd03.prod.outlook.com (10.163.35.13) by
	BN3PR03MB1463.namprd03.prod.outlook.com (10.163.35.139) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1143.10; Thu, 1 Jun 2017 17:40:21 +0000
Received: from BN3PR03MB1462.namprd03.prod.outlook.com ([10.163.35.13]) by
	BN3PR03MB1462.namprd03.prod.outlook.com ([10.163.35.13]) with mapi id
	15.01.1143.013; Thu, 1 Jun 2017 17:40:21 +0000
From: "Brett R. Nicholas" <Brett.R.Nicholas.TH@dartmouth.edu>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Including TUN/TAP kernel drivers for openVPN
Thread-Index: AQHS2v1ZbUbWZVnkTEid7ZhcLOrffQ==
Date: Thu, 1 Jun 2017 17:40:21 +0000
Message-ID: <BN3PR03MB14620876D0329AD7256F7FB2E0F60@BN3PR03MB1462.namprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=dartmouth.edu;
x-originating-ip: [2a01:111:e400:4820:cafe::8]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN3PR03MB1463;
	7:+Nkk736/BV6YDHl6b5wKCeRFAs9oOHgJhNpnF9k/4LtojePhPPrVGxYqCXkhVIxOo9xblBpz5VLnyASgVhO7WBCKyY47kzmHQAVt+G++gzw/xYyCHKi+Ekb/q+BNAs2rc2cjX0/5gid42gnYnRkRhqWn28m0oGCoN862s1NZjqKU8ceJ/C1LgskwhU4FesikgEWldHUJtcjH2dU5sOyMjObrowpIiP6xX58bFyDKK6EpxON2oB6EWiR2ad/RpSGwNXxzsSE0eXoUOLKWHEym7nbggWMXIAaYiCzR/vvftreoZPit0KWqDjpEZcFX3zpNzKZXUGMWTM1hVBIJGIy43g==
x-ms-traffictypediagnostic: BN3PR03MB1463:
x-ms-office365-filtering-correlation-id: 639ea007-4c2d-4057-0e2c-08d4a91546d0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(201703131423075)(201703031133081);
	SRVR:BN3PR03MB1463; 
x-microsoft-antispam-prvs: <BN3PR03MB14637EC9E5C2331B0F3D7298E0F60@BN3PR03MB1463.namprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(5005006)(8121501046)(10201501046)(100000703101)(100105400095)(3002001)(93006095)(93001095)(6041248)(20161123558100)(20161123555025)(20161123562025)(20161123564025)(201703131423075)(201702281529075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:BN3PR03MB1463; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:BN3PR03MB1463; 
x-forefront-prvs: 0325F6C77B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39410400002)(39860400002)(39840400002)(39450400003)(39400400002)(39850400002)(236005)(38730400002)(122556002)(7736002)(74316002)(50986999)(54356999)(33656002)(6506006)(75432002)(6436002)(2900100001)(110136004)(6916009)(7906003)(7696004)(606005)(53336002)(6116002)(77096006)(102836003)(6606003)(8936002)(3280700002)(1730700003)(8676002)(2906002)(19627405001)(9686003)(55016002)(72206003)(3660700001)(2351001)(81166006)(5640700003)(88552002)(14454004)(99286003)(5660300001)(2501003)(189998001)(53936002)(6306002)(86362001)(54896002)(478600001)(25786009);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BN3PR03MB1463;
	H:BN3PR03MB1462.namprd03.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: dartmouth.edu
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2017 17:40:21.1811 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 995b0936-48d6-40e5-a31e-bf689ec9446f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR03MB1463
X-Mailman-Approved-At: Sat, 10 Jun 2017 06:58:52 -0700
Subject: Including TUN/TAP kernel drivers for openVPN
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
X-List-Received-Date: Thu, 01 Jun 2017 18:13:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN3PR03MB14620876D0329AD7256F7FB2E0F60BN3PR03MB1462namp_"

--_000_BN3PR03MB14620876D0329AD7256F7FB2E0F60BN3PR03MB1462namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi there,


I'm using Yocto (morty) to build a custom linux image for a Zedboard. I nee=
d  the image to run openVPN, which requires access to the TUN/TAP virtual n=
etwork interface. I successfully incorporated openVPN and all its dependenc=
ies into my image using the meta-networking layer, but it appears that the =
necessary TUN/TAP kernel drivers are not present in the image.


How can I ensure that the TUN/TAP kernel drivers are included in my image?


I have the following two lines in my conf/local.conf file:

IMAGE_INSTALL_append =3D " kernel-modules"

CORE_IMAGE_EXTRA_INSTALL +=3D "openssl openvpn docker tunctl


I don't know how I could include them in my image. I tried adding kernel-mo=
dule-tun to my IMAGE_INSTALL_append as mentioned here (https://lists.yoctop=
roject.org/pipermail/yocto/2014-September/021698.html)<https://lists.yoctop=
roject.org/pipermail/yocto/2014-September/021698.html>, but it does not app=
ear this is a valid package provided by any of my layers. Maybe I am doing =
this part incorrectly?


I also tried using bitbake -c menuconfig virtual/kernel to manual include t=
he modules in the image, however after doing this and rerunning bitbake cor=
e-image-minimal I still did not see tun.ko appear in either of the two loca=
tions below that I would expect them to be installed to:

${BUILDDIR}/tmp/work/zedboard_zynq7-poky-linux-gnueabi/core-image-minimal/1=
.0-r0/rootfs/lib/modules/4.6.0-xilinx-v2016.3/kernel/net/

or

${BUILDDIR}/tmp/work/zedboard_zynq7-poky-linux-gnueabi/linux-xlnx/4.6-xilin=
x-v2016.3+gitAUTOINC+0e4e407149-r0/image/lib/modules/4.6.0-xilinx-v2016.3/k=
ernel/net

I should note that I'm using the meta-xilinx and meta-xilinx-tools layers i=
n addition to a few custom layers of my own. None of these should affect th=
is problem, AFAIK.

Any help appreciated, thanks!
- Brett

--_000_BN3PR03MB14620876D0329AD7256F7FB2E0F60BN3PR03MB1462namp_
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
<p></p>
<div class=3D"post-text" itemprop=3D"text">
<p>Hi there,</p>
<p><br>
</p>
<p>I'm using Yocto (morty) to build a custom linux image for a&nbsp;Zedboar=
d. I need&nbsp; the image to run openVPN, which requires access to the TUN/=
TAP virtual network interface. I successfully incorporated openVPN and all =
its dependencies into my image using the meta-networking
 layer, but it appears that the necessary TUN/TAP kernel drivers are not pr=
esent in the image.</p>
<p><br>
</p>
<p><strong>How can I ensure that the TUN/TAP kernel drivers are included in=
 my image?</strong></p>
<p><strong><br>
</strong></p>
<p>I have the following two lines in my conf/local.conf file: <br>
</p>
<p><code>IMAGE_INSTALL_append =3D &quot; kernel-modules&quot; <br>
</code></p>
<p><code>CORE_IMAGE_EXTRA_INSTALL &#43;=3D &quot;openssl openvpn docker tun=
ctl <br>
</code></p>
<p><code><br>
</code></p>
<p>I don't know how I could include them in my image. I tried adding <code>=
kernel-module-tun</code> to my
<code>IMAGE_INSTALL_append</code> as mentioned here (<a href=3D"https://lis=
ts.yoctoproject.org/pipermail/yocto/2014-September/021698.html" class=3D"OW=
AAutoLink" id=3D"LPlnk927257" previewremoved=3D"true">https://lists.yoctopr=
oject.org/pipermail/yocto/2014-September/021698.html</a>)<a href=3D"https:/=
/lists.yoctoproject.org/pipermail/yocto/2014-September/021698.html" rel=3D"=
nofollow noreferrer"></a>,
 but it does not appear this is a valid package provided by any of my layer=
s. Maybe I am doing this part incorrectly?</p>
<p><br>
</p>
<p>I also tried using bitbake -c menuconfig virtual/kernel to manual includ=
e the modules in the image, however after doing this and rerunning
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">bitbake cor=
e-image-minimal</span> I still did not see tun.ko appear in either of the t=
wo locations below that I would expect them to be installed to:<code><br>
</code></p>
<p><code>${BUILDDIR}/tmp/work/zedboard_zynq7-poky-linux-gnueabi/core-image-=
minimal/1.0-r0/rootfs/lib/modules/4.6.0-xilinx-v2016.3/kernel/net/
</code></p>
<p>or</p>
<code>${BUILDDIR}/tmp/work/zedboard_zynq7-poky-linux-gnueabi/linux-xlnx/4.6=
-xilinx-v2016.3&#43;gitAUTOINC&#43;0e4e407149-r0/image/lib/modules/4.6.0-xi=
linx-v2016.3/kernel/net<br>
<br>
</code>I should note that I'm using the meta-xilinx and meta-xilinx-tools l=
ayers in addition to a few custom layers of my own. None of these should af=
fect this problem, AFAIK.<br>
<br>
Any help appreciated, thanks!<code></code> </div>
- Brett<br>
<p></p>
</div>
</body>
</html>

--_000_BN3PR03MB14620876D0329AD7256F7FB2E0F60BN3PR03MB1462namp_--
