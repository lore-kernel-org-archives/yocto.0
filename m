Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11723E00EBF; Tue,  3 Jul 2018 23:41:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rksyeung[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [40.92.5.20 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 68490 seconds by postgrey-1.32 at yocto-www;
	Tue, 03 Jul 2018 23:41:55 PDT
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-oln040092005020.outbound.protection.outlook.com [40.92.5.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A3A4E00D20
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2018 23:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=smVl7y5sF2e2SR7/VOzx59qi4CJnrxERApdkOTwVE08=;
	b=G3Kxa2RcWFtA4wUUYCu1zlcLNX9TT2fymP3E/+cPmze0PFELAcPQZAXLGWRjclhqiHDOIjY4OkfsxQVqUp3jIqnot6Ns6roIjae8ne+lRg33RCfRs7AUH64KLmOP13g2/aQbAsHZnFIcYbXNNDQiCLeNj+qS475APYNOsaYBGwIRLGgUniIGxkkOlphxiJ9RILqfqQeKLPMafn77ITstNZv7zCXbWkkAD81hq1mzAzt5zVMAMW4QN422ZepKc5fUOhF6h42OoHnGbOp2nO0tc0LK8BdOnHLu/eMP0W/ig3pe4vvD+jpJl/kt+KlAc4Ge5j10n7kdATrk5/zWaK595w==
Received: from BL2NAM02FT058.eop-nam02.prod.protection.outlook.com
	(10.152.76.51) by BL2NAM02HT143.eop-nam02.prod.protection.outlook.com
	(10.152.77.111) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.906.15;
	Tue, 3 Jul 2018 06:05:34 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.76.59) by
	BL2NAM02FT058.mail.protection.outlook.com (10.152.76.176) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.906.15 via Frontend Transport; Tue, 3 Jul 2018 06:05:34 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::641a:8a85:b9d5:1bcd]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::641a:8a85:b9d5:1bcd%4]) with mapi id 15.20.0906.026;
	Tue, 3 Jul 2018 06:05:34 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to remove a package from a build
Thread-Index: AQHUEpPbKPwLKrq3JEyo9Zfaj4Iw1A==
Date: Tue, 3 Jul 2018 06:05:34 +0000
Message-ID: <MWHPR19MB118319929EC2DAFB0F1281A5C5420@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <mailman.87211.1530587331.15860.yocto@yoctoproject.org>
In-Reply-To: <mailman.87211.1530587331.15860.yocto@yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:0901068CC96E4C50B4387B6E1D2DC895969C4306792122E809222688DEB2A2E0;
	UpperCasedChecksum:56CB223B5F2A00488EC7236A74717449130D9E383E2DBC5708E74294E41602FB;
	SizeAsReceived:7127; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [TaweZr7LbHCWXG22uPQn833lvaFFCXcDYm1jflolik5UxFWnCjZkOOgfm4aJt9Vh]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BL2NAM02HT143;
	7:H17ucYZlASHQnHydKSMvo4HO/KkZA2XI3YPzZC9XHzIvC5QG1P4quIAiY0uLmfyeS2QYYPYEl+qirVDD/gG0cAWVrwjhO2n2rmnfPxoN6VmXp6RiRozutLbgZ7D0e2mJpEnjVHmJKLG5kN7molEF8fH0TReRwelJIFFkSBSdcOYYxGzwv2SVYnBW6o9zyaBAPHHXS7ydplhIYfe9dDf+Ysw+hDammituXkycvbcr1wiJqLVwL8Puihxa562ptUKW
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125500)(1701031045);
	SRVR:BL2NAM02HT143; 
x-ms-traffictypediagnostic: BL2NAM02HT143:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:BL2NAM02HT143; BCL:0; PCL:0; RULEID:; SRVR:BL2NAM02HT143; 
x-forefront-prvs: 0722981D2A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(7070007)(199004)(189003)(54896002)(46003)(14454004)(102836004)(5250100002)(87572001)(2501003)(97736004)(486006)(476003)(2900100001)(256004)(6916009)(104016004)(83332001)(76176011)(1730700003)(81156014)(25786009)(6346003)(8676002)(7696005)(6506007)(446003)(33656002)(106356001)(74316002)(82202002)(8936002)(6606003)(20460500001)(5640700003)(73972006)(55016002)(68736007)(86362001)(99286004)(11346002)(9686003)(2351001)(19627405001)(5660300001)(6436002)(105586002)(15852004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:BL2NAM02HT143;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:; 
received-spf: None (protection.outlook.com: hotmail.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=rksyeung@hotmail.com; 
x-microsoft-antispam-message-info: /fRUmOeZcatTNa1JmqxwcNHYNAIcOZAgNuCI8tisL4Erggh0FCie3QoWpbXwfZtRqAb1X2xQ9CM9MqkI7ktYt0CRyYeqjDRKYy/DNu3FRPaOnlE/zVcbKD81ZRCkeD0+6MQm3tFRmvYkaEUhhPBnDr++qAWHpMrSyxw1IvRGJoj1fIxJ0YqQuDuq1GsSsVV472tXiHqQyNBn191LAXEGbRunUbmVJNZz+HVVIj6YDVc=
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: 76cef079-fbb6-44bd-b228-08d5e0aafd90
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2018 06:05:34.5333 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2NAM02HT143
Subject: How to remove a package from a build
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
X-List-Received-Date: Wed, 04 Jul 2018 06:41:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB118319929EC2DAFB0F1281A5C5420MWHPR19MB1183namp_"

--_000_MWHPR19MB118319929EC2DAFB0F1281A5C5420MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

We've our own non-yocto openssl that we want to use.  At the moment, we're =
using "sato" image, rather than "minimal" and includes its openssl that is =
out-of-date.  What is the best way to exclude it from our image (and from s=
ysroots)?


We have thought about two ideas -


  1.  Use smaller image like core-image-base, or core-image-full-cmdline (b=
ut not -minimal that may remove too much functionality).
  2.  Use INSTALL_IMAGE_remove +=3D " openssl"


Would either one work?  Also, how do I follow the .bb files etc (e.g. start=
ing from the one for sato) to trace down which sub-package includes openssl=
?


Thanks,

Raymond

--_000_MWHPR19MB118319929EC2DAFB0F1281A5C5420MWHPR19MB1183namp_
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
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">We've our own non-yocto&nbsp;open=
ssl that we want to use. &nbsp;At the moment, we're using &quot;sato&quot; =
image, rather than &quot;minimal&quot; and includes its openssl that is out=
-of-date. &nbsp;What is the best way to exclude it&nbsp;from our image (and
 from sysroots)?</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">We have thought about two ideas -=
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<ol style=3D"margin-bottom: 0px; margin-top: 0px;">
<li><span style=3D"font-size: 12pt;"></span><span style=3D"font-size: 12pt;=
"></span>Use smaller image like core-image-base, or core-image-full-cmdline=
 (but not -minimal that may remove too much functionality).</li><li>Use INS=
TALL_IMAGE_remove &#43;=3D &quot;&nbsp;openssl&quot;</li></ol>
<br>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0">Would either one work? &nbsp;Also=
, how do I follow the .bb files etc (e.g. starting from the one for sato) t=
o trace down which sub-package includes openssl?</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Thanks,</p>
<p style=3D"margin-top:0;margin-bottom:0">Raymond</p>
</div>
</body>
</html>

--_000_MWHPR19MB118319929EC2DAFB0F1281A5C5420MWHPR19MB1183namp_--
