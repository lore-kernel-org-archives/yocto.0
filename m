Return-Path: <Aditya.Tayade@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6826FE00B8D; Mon,  2 Apr 2018 03:43:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.100.82 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 868 seconds by postgrey-1.32 at yocto-www;
	Mon, 02 Apr 2018 03:43:22 PDT
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-ma1ind01on0082.outbound.protection.outlook.com [104.47.100.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82B8CE00823
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2018 03:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpitc.onmicrosoft.com; 
	s=selector1-kpit-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=A1IOoihZVK8xEk1ywBLkXnpFwKqwRGbwdKvIkzpziUk=;
	b=Vni12hYOr+82DhtNJlEdSdBMcb2ffJP0VtlanRVTiGWu4PW13jfDsoEdt0C3DscuQ0fW2ilwIH8WV9O7xdG5gPvPZitA2aLoMNxYkNHUlmksn3i0/r2QjZi5641NnidmkEqBMoTs2aT1jprTVK+IK5XBi9ORFfOEqwgtK8vt/lY=
Received: from MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM (10.164.150.144) by
	MAXPR01MB0060.INDPRD01.PROD.OUTLOOK.COM (10.164.148.148) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.631.10; Mon, 2 Apr 2018 10:28:51 +0000
Received: from MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM
	([fe80::9933:6c3b:3ec:9197]) by MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM
	([fe80::9933:6c3b:3ec:9197%13]) with mapi id 15.20.0631.013;
	Mon, 2 Apr 2018 10:28:51 +0000
From: Aditya Tayade <Aditya.Tayade@kpit.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Thread-Topic: QEMU package list verification
Thread-Index: AQHTymyza+dHxudTokaxfx8F47ZMoA==
Date: Mon, 2 Apr 2018 10:28:51 +0000
Message-ID: <MAXPR01MB03488720F9BD6E615B6832BE91A60@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Aditya.Tayade@kpit.com; 
x-originating-ip: [115.112.39.238]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MAXPR01MB0060;
	7:C0v6wYC7Ec0rmzYcD/J1/QDdCzhE/UgJauTtEQSJYrKtddbQ/DJ1Ld7mkz6MUWFUAdFZ6U2A4EpJHD0khNFFa8QfDgybM5VafE4+ytjIpyfSoRo0m0ZZDdgTJx3DhaTnjlrQfWpqFrwnG9o8tlVPxHlzUdvTscVNycQaFKvrQiQmDx7pnoch+37a4g4NozBbCCm/Kn2zI3VJjFLGwpQv4VcSuwPFaJHXfUl4y23235BeNuB0GdH3YpJXlJXJUWJX
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d97bb736-56a9-4507-d831-08d59884871d
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(48565401081)(5600026)(4604075)(3008032)(4534165)(7168020)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:MAXPR01MB0060; 
x-ms-traffictypediagnostic: MAXPR01MB0060:
x-microsoft-antispam-prvs: <MAXPR01MB0060CB652CA521C93BFED44091A60@MAXPR01MB0060.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(10201501046)(93006095)(93001095)(3002001)(3231221)(944501327)(52105095)(6055026)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123564045)(20161123558120)(20161123562045)(6072148)(201708071742011);
	SRVR:MAXPR01MB0060; BCL:0; PCL:0; RULEID:; SRVR:MAXPR01MB0060; 
x-forefront-prvs: 0630013541
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(396003)(39860400002)(346002)(376002)(39380400002)(366004)(199004)(189003)(8936002)(19627405001)(68736007)(5660300001)(6606003)(86362001)(81156014)(81166006)(72206003)(25786009)(5250100002)(8676002)(186003)(55236004)(54896002)(3480700004)(6916009)(6506007)(6436002)(3660700001)(99286004)(316002)(14454004)(478600001)(102836004)(55016002)(2900100001)(26005)(6116002)(7736002)(53936002)(106356001)(9686003)(33656002)(7696005)(2906002)(74316002)(3280700002)(97736004)(3846002)(476003)(486005)(486005)(59450400001)(105586002)(15650500001)(66066001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MAXPR01MB0060;
	H:MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: jgRH1GScxxSn3uQCWfcE16AizdH5DdaC0g9+7FdsBRlTEaxu3q7hBsuLotHjhh7NLJRse0bs/gi3BUzXaSlUTWFQN62uubskOsxUpbFi7FGlA518c+bWQeanfUpa1VygwLa9vZrdRZEN6KdAA2PEI8u0juWxTulEGukdcaFEoiBa1CxyIdwKhQ/B62XfVqHKmvnTZwTDogZvvg6uMFlCV82yVY7pNEb910Dp0wCMSA/Cf6hc4VjN+aUcfLeEMeDzDgz8Upt0XBA0n3EPIq2cUEIqBYgB+YdsNo7CYrFxvomZs/20hpoREkKphxE/4dtz3N4HBTyNF9zlDdiuJb0+9GXgwUg1BErz8M6Rpw2iHlM31yqwkT4aNiZJpBAK9otPXXyqRh0egeWl8WIFBz0tVia9BABKG4hTD+4ZB7NUN0U=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d97bb736-56a9-4507-d831-08d59884871d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2018 10:28:51.1215 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB0060
X-Mailman-Approved-At: Wed, 04 Apr 2018 09:50:27 -0700
Subject: QEMU package list verification
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
X-List-Received-Date: Mon, 02 Apr 2018 10:43:25 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB03488720F9BD6E615B6832BE91A60MAXPR01MB0348INDP_"

--_000_MAXPR01MB03488720F9BD6E615B6832BE91A60MAXPR01MB0348INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi ,
Please refer to my below steps to understand how OS components are included=
 in the Qemu image for Yocto 2.5

1) Build core-image-sato for yocto 2.5 ( DISTRO_VERSION =3D 2.4+snapshot-20=
180402)
2) I used the bitbake-layers show-recipes to list down the packages .
3) Verify whether the packages are part of the image root fs
4) I use command find ./ -name*<package-name>*

If above command returns *<package-name>*.so or /var/lib/dnf/yumdb/*/*<pack=
age-name>* then i consider the the package successfully added to rootfs.
If not then i consider the package not present in the rootfs.

4) I found some packages not present in the rootfs that are listed in the s=
tep 2 . I assume that by default meta, meta-poky and meta-yocto-bsp layers =
are part of yocto 2.5 so  all the packages present in these layers should b=
e present in QEMU as well.

If my assumption is correct how do we ensure that all the packges of the la=
yers meta, meta-poky and meta-yocto-bsp layers are present in the qemu root=
 fs ?

Regards,
Aditya Tayade


This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

--_000_MAXPR01MB03488720F9BD6E615B6832BE91A60MAXPR01MB0348INDP_
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
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div>Hi ,<br>
Please refer to my below steps to understand how OS components are included=
 in the Qemu image for Yocto 2.5<br>
<br>
1) Build core-image-sato for yocto 2.5 ( DISTRO_VERSION =3D 2.4&#43;snapsho=
t-20180402)<br>
2) I used the bitbake-layers show-recipes to list down the packages .<br>
3) Verify whether the packages are part of the image root fs<br>
4) I use command <b>find ./ -name*&lt;package-name&gt;*</b><br>
&nbsp;<br>
If above command returns <b>*&lt;package-name&gt;*.so or /var/lib/dnf/yumdb=
/*/*&lt;package-name&gt;*</b> then i consider the the package successfully =
added to rootfs.<br>
If not then i consider the package not present in the rootfs.<br>
&nbsp;<br>
4) I found some packages not present in the rootfs that are listed in the s=
tep 2 . I assume that by default meta, meta-poky and meta-yocto-bsp layers =
are part of yocto 2.5 so&nbsp; all the packages present in these layers sho=
uld be present in QEMU as well.<br>
<br>
If my assumption is correct how do we ensure that all the packges of the la=
yers <b>
meta, meta-poky and meta-yocto-bsp</b> layers are present in the qemu root =
fs ?<br>
<br>
Regards,<br>
Aditya Tayade</div>
<br>
<p></p>
</div>
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print,
 retain copy, disseminate, distribute, or use this message or any part ther=
eof. If you receive this message in error, please notify the sender immedia=
tely and delete all copies of this message. KPIT Technologies Ltd. does not=
 accept any liability for virus
 infected mails.
</body>
</html>

--_000_MAXPR01MB03488720F9BD6E615B6832BE91A60MAXPR01MB0348INDP_--
