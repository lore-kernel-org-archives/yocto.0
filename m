Return-Path: <nick.wareing@aranzmedical.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54DCBE00A21; Tue, 18 Oct 2016 15:42:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.126.89 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 934 seconds by postgrey-1.32 at yocto-www;
	Tue, 18 Oct 2016 15:42:11 PDT
Received: from APC01-PU1-obe.outbound.protection.outlook.com
	(mail-pu1apc01on0089.outbound.protection.outlook.com [104.47.126.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F224E009DF
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 15:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ARANZMedical.onmicrosoft.com; s=selector1-aranzmedical-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=23SuJejSdXZ+kDmcmLBkS2eb41SbWPgSJezFw9BWl9w=;
	b=fOnYazDRmCOr6un5Ai+62MccBIop/izGjaxsscfG4DgGmPFe+24hezaNxmCIfV9kdApxuiutWqRiKPDnbWGTNZJuqONgtv2RecxnyCm5OGoO9/R9ap9iRGt/T2RbduHZq8cFPvBxJeLRW/Wc8HjOtXEW9Yr1o5rjMLEbOpw3qKE=
Received: from KL1PR0601MB1317.apcprd06.prod.outlook.com (10.169.68.139) by
	KL1PR0601MB1320.apcprd06.prod.outlook.com (10.169.68.142) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.669.16; Tue, 18 Oct 2016 22:26:34 +0000
Received: from KL1PR0601MB1317.apcprd06.prod.outlook.com ([10.169.68.139]) by
	KL1PR0601MB1317.apcprd06.prod.outlook.com ([10.169.68.139]) with
	mapi id 15.01.0669.018; Tue, 18 Oct 2016 22:26:34 +0000
From: Nick Wareing <nick.wareing@aranzmedical.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Install mozroot-certdata package on a read only root file system
Thread-Index: AQHSKY4lLaoACLikp0CCZvIM+yn+bg==
Date: Tue, 18 Oct 2016 22:26:33 +0000
Message-ID: <KL1PR0601MB13175BBDFAD7F68C9822C148F8D30@KL1PR0601MB1317.apcprd06.prod.outlook.com>
Accept-Language: en-NZ, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=nick.wareing@aranzmedical.com; 
x-originating-ip: [25.165.63.4]
x-ms-office365-filtering-correlation-id: 5a80f592-334a-4b65-c38e-08d3f7a5d1a6
x-microsoft-exchange-diagnostics: 1; KL1PR0601MB1320;
	7:wXCdxvpwCS0EF2/6WkonB0nuMvv7ZdohLW0Qp7pYcAkLmTd1N1rsfWYQUa2lRYPz9NVRAb9GWuDrxeWu/HuUhV0YY585YiRcMPYGKOpb4piz57kID6obVrqWL3w03ZnpgpKs/nOcLCbQjmqkM7DFngisj+YSuplrNrdQ4VOAzwCY+uaUEjcNWcRR6hhE33CBlq2uHnU32omy9Y1T0nXxk8z6YHtrqcdCCS7YK9X8i7jxRuF02BYaH8pbxJouMLrWNnMl1NIukN3RQDCCdsUEdVzvz4nqWxFxk77E6XWIbkeUin0JQVy2SgfceatBk1Vhg/m96UbsSWoyEiGplIiYeDU/LWgeExrzSMD9TRSv6Y8=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:KL1PR0601MB1320;
x-microsoft-antispam-prvs: <KL1PR0601MB1320A17E1617D97A48E43F52F8D30@KL1PR0601MB1320.apcprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6043046)(6042046);
	SRVR:KL1PR0601MB1320; BCL:0; PCL:0; RULEID:;
	SRVR:KL1PR0601MB1320; 
x-forefront-prvs: 00997889E7
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(7916002)(199003)(189002)(77096005)(105586002)(19625215002)(15975445007)(107886002)(106116001)(11100500001)(76576001)(92566002)(189998001)(97736004)(3660700001)(19617315012)(586003)(19580395003)(3846002)(33656002)(2906002)(9686002)(10400500002)(7846002)(86362001)(3280700002)(16236675004)(66066001)(8936002)(6606003)(6916009)(87936001)(6116002)(102836003)(7736002)(5640700001)(2900100001)(7696004)(54356999)(5660300001)(229853001)(81166006)(74316002)(81156014)(1730700003)(50986999)(19627405001)(5002640100001)(2351001)(101416001)(110136003)(8676002)(122556002)(450100001)(7906003)(68736007)(106356001)(2501003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:KL1PR0601MB1320;
	H:KL1PR0601MB1317.apcprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: aranzmedical.com does not
	designate permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: aranzmedical.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2016 22:26:33.1007 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 94829a09-ec16-4fed-bd09-30dec66f48c2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR0601MB1320
X-Mailman-Approved-At: Wed, 19 Oct 2016 10:23:07 -0700
Subject: Install mozroot-certdata package on a read only root file system
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
X-List-Received-Date: Tue, 18 Oct 2016 22:42:16 -0000
Content-Language: en-NZ
Content-Type: multipart/alternative;
	boundary="_000_KL1PR0601MB13175BBDFAD7F68C9822C148F8D30KL1PR0601MB1317_"

--_000_KL1PR0601MB13175BBDFAD7F68C9822C148F8D30KL1PR0601MB1317_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I have an established yocto build which I'm now trying to switch over to ha=
ving a root file system (eg. EXTRA_IMAGE_FEATURES +=3D "read-only-rootfs").


However I'm running into an issue with a recipe in the meta-mono layer: moz=
root-certdata. I see the culprit is the pkg_postint script (http://git.yoct=
oproject.org/cgit/cgit.cgi/meta-mono/tree/recipes-mono/mozroot-certdata/moz=
root-certdata_1.0.0.bb) which needs to modify the root file system on first=
 boot which the build system is correctly flagging as impossible with a rea=
d only root file system:


ERROR: The following packages could not be configured offline and rootfs is=
 read-only: ['mozroot-certdata']


My question is: is their a way to get these mozroot certs installed and con=
figured with mono during the build process, such that the root file system =
does not need to be modified at boot/run time?


Cheers,

Nick


--_000_KL1PR0601MB13175BBDFAD7F68C9822C148F8D30KL1PR0601MB1317_
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
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>I have an established yocto build which I'm now trying to switch over to=
 having&nbsp;a root file system (eg.&nbsp;<span>EXTRA_IMAGE_FEATURES &#43;=
=3D &quot;read-only-rootfs&quot;).</span></p>
<p><span><br>
</span></p>
<p><span>However I'm running into an issue with a recipe&nbsp;in the meta-m=
ono layer: mozroot-certdata. I see the&nbsp;culprit&nbsp;is the pkg_postint=
 script (<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-mono/tre=
e/recipes-mono/mozroot-certdata/mozroot-certdata_1.0.0.bb" class=3D"OWAAuto=
Link" id=3D"LPlnk425284" previewremoved=3D"true">http://git.yoctoproject.or=
g/cgit/cgit.cgi/meta-mono/tree/recipes-mono/mozroot-certdata/mozroot-certda=
ta_1.0.0.bb</a>)&nbsp;which
 needs to modify the root file system on first boot which the build system =
is correctly flagging as impossible with a read only root file system:</spa=
n></p>
<p><br>
</p>
<p><span></p>
<div>ERROR: The following packages could not be configured offline and root=
fs is read-only: ['mozroot-certdata']</div>
<div><br>
</div>
</span>
<p></p>
<p><span>My question is: is their a way to get these mozroot certs installe=
d and configured with mono during the build process, such that the root fil=
e system does not need to be modified at boot/run time?</span></p>
<p><span><br>
</span></p>
<p><span>Cheers,</span></p>
<p><span>Nick</span></p>
<p><span><br>
</span></p>
</div>
</body>
</html>

--_000_KL1PR0601MB13175BBDFAD7F68C9822C148F8D30KL1PR0601MB1317_--
