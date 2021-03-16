Received: from thsbbfxrt01p.thalesgroup.com (thsbbfxrt01p.thalesgroup.com [192.54.144.131])
 by mx.groups.io with SMTP id smtpd.web09.916.1615910008873237241
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Mar 2021 08:53:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thalesgroup.com header.s=xrt20181201 header.b=rTd2jgY/;
 spf=pass (domain: thalesgroup.com, ip: 192.54.144.131, mailfrom: krzysztof.dudziak@thalesgroup.com)
Received: from thsbbfxrt01p.thalesgroup.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 4F0HrR3P2Wz482D
	for <yocto@lists.yoctoproject.org>; Tue, 16 Mar 2021 16:53:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thalesgroup.com;
	s=xrt20181201; t=1615910007;
	bh=LZ7AkRL4cNSvYmAFtMwFIR8hEbwgxpW1jqeYzaLmmx4=;
	h=From:To:Subject:Date:Message-ID:Content-Transfer-Encoding:
	 MIME-Version:From;
	b=rTd2jgY/hoBK5fNPuLbf1UjAK6jDsroMWsYfU8yF+oVKWrerKVvhEZoGRf9ND+vXp
	 bFWb9lP+CRnS1zlr/DkAfcaeVdtbvos9kHciCky0T9kgyKpNg4LvpdzrygKLR5UaWh
	 eERoXjFxNXr8/vlsoqpxB/xHhBMxop26P9AjX2YaKPlr+rKJmIxXNNfUCg3rMJhukP
	 m82rBfM6F/1OtRgRpFqu8YF87O7YZFLujd599RWIhMoWFUMEPrgAhK9l+lml7wHNmD
	 8WoGdoC4Y2Fo2muiXxQF6k0c+1aldOd2UJcCkEmafZt4KRnuO2ju1ydvFL5RNaqJT1
	 VlUtYw4tryJgQ==
X-MTA-CheckPoint: {6050D453-1-C42F090A-5C46}
Authentication-Results: thsbbfxss01p.thalesgroup.com;
	dkim=pass (1024-bit key; unprotected) header.d=thalesgroup.onmicrosoft.com header.i=@thalesgroup.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-thalesgroup-onmicrosoft-com header.b=r0F+ZY5m;
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VoOwHSYQfomP/Ivn+p+pIcNQCjZ/J+FU5bwECa+91V/Ly6wXUCmuAstSE3EGVLY9E+2VFHikwd+cVh8viblHiXnQaA4osPFnj0Ra5JayBE/pBo3vkD/IXIM2t5wCetD/pAiQWk7EYx3u1pdekbKU272LkSc+X1h/moDHEJ5sukHxHyaAeWo646BaFy0au/CuOJSebqtNrKuF8uGNn3c4IAHmIuob2OYyR0rgiVqy+eS4yTUZHkBoVrmLv8N5N/dMJWs3mVTGiC4Z0QsCzqAUl8g62uF/1ClkfljJ02rArGnt2iuSfdCFS/F3TMm4SaBrmJjywBer4pC8SOnzZN3gAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LZ7AkRL4cNSvYmAFtMwFIR8hEbwgxpW1jqeYzaLmmx4=;
 b=kjmDwUVyf0zOzdvs0F16XAioT6jn+vQekDS9v5YcJMfYTbATQE/83P9giMd40cuPY9H6wZ3AZYEbd/IfPWCIFs89EyIbhj5U/ad01J327CC7it7U1vPoqHU1rLO6sC8OLUS+7LpwkvA4tStbkhcYPr1jTuvx5Zy7j/VpjlkWHDyK1RDLUwo40zppVRpyii40TIvQDj0CADWIeL6MAeOdtICE777/JVd0tpJGmFCx9AyLWYkgV/QHbKLC5AV9BUWvFsFWYl9jmOOKYAz6M56GcCfW9Yy72Gd+LHLCyh7cMQd7lfFUFwgLX1jr86GYZq+75NxRBEV9bXGnrjEJmo0nGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=thalesgroup.com; dmarc=pass action=none
 header.from=thalesgroup.com; dkim=pass header.d=thalesgroup.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thalesgroup.onmicrosoft.com; s=selector2-thalesgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LZ7AkRL4cNSvYmAFtMwFIR8hEbwgxpW1jqeYzaLmmx4=;
 b=r0F+ZY5mKpgTlhzh9b2WWWbyacV0HnROR/UXEpH7vDUBDtx+AqtTbwpXKD3O6yJbh0zUYvvs6le6rwhYko+1+tt6tlVDUIfmUXUXjjiSZUZmmmi4Mg9XHCAKvbf0fJ6SBo0BQtlS9P3IkcqxukmawOlxh7/dsv1TZlxnXqzb5+s=
From: "keydi" <krzysztof.dudziak@thalesgroup.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: =?UTF-8?B?c3VidHJlZSDigKYvdG1wL2RlcGxveS/igKYgLCBmaWxlcyBuYW1lZCBQYWNrYWdlcw==?=
Thread-Topic: 
 =?Windows-1252?Q?subtree_=85/tmp/deploy/=85_,_files_named_Packages?=
Thread-Index: AdcafD4bRpPIMNaYRS+mqeIwJLsNZw==
Date: Tue, 16 Mar 2021 15:53:25 +0000
Message-ID: 
 <PR0P264MB08893A9AFD28BBED215F58C5E16B9@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=thalesgroup.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7955abe2-a7c5-45d3-89f2-08d8e893a2b2
x-ms-traffictypediagnostic: PR0P264MB2073:
x-microsoft-antispam-prvs: 
 <PR0P264MB20733154786FE7595B18FC6CE16B9@PR0P264MB2073.FRAP264.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 TdnqjKsGgXqYJ8rVouW7gJCWJVTi3av9HNsnNGYUXaqVZEpxnQBYVkhS5gYo3uL4q3Ebjzy+zUewpZYtRjM0rGXv1J94fev50HEbvaQiyi0vCwQYZmOX0/pKgGx/+ls8klpV1STxU3bcqp++XG9zPSBqLLJQEoHkwMVlDGwVCJczfWGknfejIm87G3zu3fuYJXBczB2Q4SzZSDELG6W51JYMlOHwVGznRMYt7/gXf43Hq0tMLNW1OAYOfCIsnMpsyylCIVC2S7pAoIjx0le48CokfCkAPUeYY5sMxNtNMwsPj8BPdX8ZAF0PBzSUO/Ut9MC/nJxVTVhBp0nPYPEGFF1Le4enAYLnJS90zya+HuCmzHtZ+ddfAhmpxbHBbb1rOGOHq0yMOtm5mSO3lah4fiqWs15BZuS1ZAQaqCb30EHMfr8hDmzt9vE7lhO2ZQfTYwOFYEAVvqm+gPc2plLBrDTVWLJWRkhb3J94OVutgP23SBG/cVB96sOE1qF4W0w2cWTq4ii/sUh3SONuiS3/gULhaVhZlJ5yuKcHYlrP2+6+q549xBdpm+woRyu/8vQe
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(396003)(376002)(136003)(39860400002)(66556008)(5660300002)(52536014)(86362001)(76116006)(64756008)(4744005)(66946007)(66476007)(83380400001)(6506007)(6916009)(8936002)(316002)(478600001)(71200400001)(26005)(33656002)(2906002)(186003)(9686003)(55016002)(7696005)(66446008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?Windows-1252?Q?TAnPP4NKIP4Qv2890bQ9knKOXDOyCPtzK4Ef1ApwWxf7U2i1e/Q//fu0?=
 =?Windows-1252?Q?3BxUUf4I8SjS5h00A/Ko8B/AUqsBgdgEbXx3n5kXVrMyQpKUAw5bU8xZ?=
 =?Windows-1252?Q?4uQQ5mjwj9sgzKeRKI6gpaGBI6hTmkV7yhL4WhFrztTwWWnuH4wrz6AT?=
 =?Windows-1252?Q?wqIgeM98cMngAX6LHJp+gRvxK9rbL8wF6bO/6qLAwl1jhJ8uCEQ7h2WX?=
 =?Windows-1252?Q?oDBySnh/cizOaU/8OGcSJALxydKIdi3bmZxSiL/rdWX83oRYrhnpMnOD?=
 =?Windows-1252?Q?Z6Xw/fZTgX2v4cJh1/8OLSBa36Yip5NaWeEl/lwRwd+afGX8l/THkqmr?=
 =?Windows-1252?Q?eNQtRCUGw2Ct1zTRRFsxkqPr0j8AlL9sI19In8qy1KMSdwj1woqqhlu8?=
 =?Windows-1252?Q?GIwmDg6jtx6wFgLGqnUOsRAj3ao4GsBZ2XpYffeQfRpv6PPvwC5DXa15?=
 =?Windows-1252?Q?KvkxXHHI2XjCwET/qkQZG1Y4BAGBSf7UhaeE9zi86eP5K32abzRKhxrd?=
 =?Windows-1252?Q?ruOGXfgQhkxn/HzCmbh75YWgK4CzKyXAiUabBoY3o5jk6Wv6dbWp6M7R?=
 =?Windows-1252?Q?pzlMTOkcDbz36BCyDLykdOJIOKnIhLi+hY1Ntzhljpz6+Vt+yPqpJ3NJ?=
 =?Windows-1252?Q?SYFs7PJoXo4kNbpZxaFMch9EFoO8la05mUVZKcJOAtk+MtO2WQOTGFQ9?=
 =?Windows-1252?Q?3nVYZ4aY2JYEDGcQQHUKTDtshDxLvK9KIfKbKk3VzHcOn1nGXNN9aRjZ?=
 =?Windows-1252?Q?ShZtyqdHvGzC0kJjxB6qAVion1T24YHWGgdJfFP4pp/1anUWD75BizKC?=
 =?Windows-1252?Q?SYZq4kePGmXCQR0AkYAGgG9nPb6dfPzCcSTCaJLTr99PrdUlBukTt/Kj?=
 =?Windows-1252?Q?jbEkmbNYtS3MDER7e5NNrRG2HUOUe8jJomgn9uTkSDxfftVX2tB1M6rM?=
 =?Windows-1252?Q?/MARMTcyS1CCDLjQGop1XsHpW+S3+rzwEnl83351UFx7fsP2oN1z/ujk?=
 =?Windows-1252?Q?GUptLVDSUVFnTtYKDWTc6j9539ilxRtOjAzQVDeWY042lyjBuoJbt48p?=
 =?Windows-1252?Q?1UgPy6d+/gLAE0I6Sr8W0h1WhkQdrTfLI8Lw0+6VmyPGt59FCFkxe8jK?=
 =?Windows-1252?Q?QL+l9yakMMOzpOCma8wF1uKf4/ZIioekkiN7F18VKyxkZR1DKZn94NM2?=
 =?Windows-1252?Q?kZqMEg3eQi/zU/AKG8yum3Kj1Zchjc9p7hup/S2nKDmKymXeMiZCTkZ2?=
 =?Windows-1252?Q?C8D4gZld3aGeVKsSdc5cvxgA7W5R93b9PjTM2dYrn0Mcgko/mMNhn8+Z?=
 =?Windows-1252?Q?m4gudjucf9/ntacVoWffEVhfaII5yFyiHImJJp61WHquO64+qdnsCa87?=
 =?Windows-1252?Q?zYLIAzNIhXRUOX1y+RCaGKnIOxzEqKQ+ziNScKZjqoVsyCl7CPkYtrGy?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Thalesgroup.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 7955abe2-a7c5-45d3-89f2-08d8e893a2b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2021 15:53:25.9352
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6e603289-5e46-4e26-ac7c-03a85420a9a5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u6KMOTVUdt5/p0tMoHHtVzGue6m+puKHu3T2sBz12sGJ4L6uYpD10f3nRx+Uho3Wg4vx6LtfdljUAEAwYE3lkpEqdIOKklVcgyUuLi5FXx0L85nNeXsAW5eALt70kXSQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR0P264MB2073
X-PMX-Version: 6.4.8.2820816, Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2021.3.16.154515, AntiVirus-Engine: 5.80.0, AntiVirus-Data: 2021.3.16.5800001
X-Sophos-SenderHistory: ip=104.47.24.103,fs=312488,da=64624537,mc=4046,sc=1,hc=4045,sp=0,fso=64473647,re=162,sd=0,hd=30
X-PMX-Spam: Gauge=IIIIIIII, Probability=8%, Report='
 HTML_00_01 0.05, HTML_00_10 0.05, SUPERLONG_LINE 0.05, BODYTEXTP_SIZE_3000_LESS 0, BODY_SIZE_1000_1099 0, BODY_SIZE_2000_LESS 0, BODY_SIZE_5000_LESS 0, BODY_SIZE_7000_LESS 0, DKIM_SIGNATURE 0, DQ_S_H 0, KNOWN_MTA_TFX 0, NO_CTA_FOUND 0, NO_CTA_URI_FOUND 0, NO_URI_FOUND 0, NO_URI_HTTPS 0, SPF_SOFTFAIL 0, SXL_IP_TFX_WM 0, WEBMAIL_SOURCE 0, WEBMAIL_XOIP 0, WEBMAIL_X_IP_HDR 0, __ARCAUTH_DKIM_PASSED 0, __ARCAUTH_DMARC_PASSED 0, __ARCAUTH_PASSED 0, __ARC_SEAL_MICROSOFT 0, __ARC_SIGNATURE_MICROSOFT 0, __AUTH_RES_DKIM_PASS 0, __BODY_NO_MAILTO 0, __COURIER_PHRASE 0, __CP_MEDIA_BODY 0, __CT 0, __CTE 0, __CT_TEXT_PLAIN 0, __DQ_IP_FSO_LARGE 0, __DQ_NEG_HEUR 0, __DQ_NEG_IP 0, __DQ_S_HIST_1 0, __DQ_S_HIST_2 0, __DQ_S_IP_1MO 0, __DQ_S_IP_MC_100_P 0, __DQ_S_IP_MC_10_P 0, __DQ_S_IP_MC_1K_P 0, __DQ_S_IP_MC_1_P 0, __DQ_S_IP_MC_5_P 0, __DQ_S_IP_RE_100_P 0, __DQ_S_IP_SC_1_P 0, __DQ_S_IP_SP_0_P 0,
 __FROM_DOMAIN_NOT_IN_BODY 0, __FROM_NAME_NOT_IN_BODY 0, __FUR_RDNS_OUTLOOK 0, __HAS_FROM 0, __HAS_MSGID 0, __HAS_XOIP 0, __MIME_TEXT_ONLY 0, __MIME_TEXT_P 0, __MIME_TEXT_P1 0, __MIME_VERSION 0, __NO_HTML_TAG_RAW 0, __RDNS_WEBMAIL 0, __SANE_MSGID 0, __SUBJ_ALPHA_END 0, __SUBJ_ALPHA_END2 0, __SUBJ_ALPHA_START 0, __SUBJ_HIGHBIT 0, __TO_MALFORMED_2 0, __TO_NAME 0, __TO_NO_NAME 0, __URI_NO_MAILTO 0'
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello,

This is about two projects Projects A and B. Both use Yocto to build embedd=
ed-Linux distribution. However different Yocto release each. Also different=
 target platform each. One puts Linux software packages to RPM, another one=
 to IPK. For only one of those two Yocto generates plain-text files named '=
Packages' and places it to image subdirectories of /tmp/deploy/rpm or /tmp/=
deploy/ipk subtree. The another one doesn't. Is this (files 'Packages' to b=
e generated or not) any configuration point platform vendor can had set for=
 its code-base to non-standard setting? Any means available for project Pac=
kages files (as of time being) not being generated to activate these files =
generation?

Background: Tool-chain used here to generate software bill of materials and=
 all artifacts needed for fulfillment of used software license terms proces=
ses these files. Might it be good/bad idea to use files addressed in this m=
essage for software composition evaluation?

