Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.967.1578604566719077872
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 13:16:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intusurgops.onmicrosoft.com header.s=selector2-intusurgops-onmicrosoft-com header.b=YGI2Sagb;
 spf=permerror, err=parse error for token &{10 18 spf-001e7101.pphosted.com}: limit exceeded (domain: intusurg.com, ip: 140.211.169.56, mailfrom: daniel.wang@intusurg.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92078E014DE; Thu,  9 Jan 2020 13:16:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_SPF_HELO,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.107.236.101 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2101.outbound.protection.outlook.com [40.107.236.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D68AE00BB3
	for <yocto@yoctoproject.org>; Thu,  9 Jan 2020 13:16:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A+ZsnVIvkcICL+Kxy25EGmfRbiBv1oAdN2JdiJhD0p6VpkXDiCUA7S+RUxUErYmo9/7OtRDdmpCi3jO7l1CGkSOcz8prAt84XA7vwJA3UJgiroKp71HvA+bjLRMAICNwMaD6eyPrztN7BZhE52tkAd1lu7bG7MyEwwuAUmbD8gCmDOdb1YAXaxsx1riyRFdi5unKrLm+iYuzWdA34RGSLUh0ZlH0qK4Tg7TVY+7HQ4e+CV9U0tU7w6ZZ2bjx+4KE1GAcm0z72iIiVxqi/IAO8MyTOsvUCulbDeNn3F9wJ0FeylG3Ivxc1qNNKg7Uz/y4mmsfR0o0chD+aPYbqoi0Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lbEi8XlC7ci5x6G1nUK9ZzQPrRkHW1/QvPTTEDVo24Y=;
 b=YouGUBYnl49tbXii9nStjypRpmHqKBQtsT7dNC9YffctV35TfziWQLw1ApKAPRaBi86K/BgvKcyfjN7o+6Xj9vZdTh80O3WmfqlF4UYEypGMc6nSE/Zfnwao3Y7LsvBlw0dV4XQB0t74UPXFy3ubLur3e/KwGOJpBJ1Z15bbMX194Oqwop8r7mWL3kocQF0LU83AeS+k7GYZphOKhTBd5ju502P+glxlGRsu8NPMCBli0JsqcH4Is8HXjhUIZOfuzStd6bGZwlcKWqS0mQcXwT6gxoUIa0xbL4myWphg2/NPnb/UFzH+/HcH3umojJEYeXjc/N5Lq/DMrv9YvVSBUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intusurg.com; dmarc=pass action=none header.from=intusurg.com;
 dkim=pass header.d=intusurg.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=IntusurgOps.onmicrosoft.com; s=selector2-IntusurgOps-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lbEi8XlC7ci5x6G1nUK9ZzQPrRkHW1/QvPTTEDVo24Y=;
 b=YGI2SagbkDU+pdk2Ep3DkzCyrgMgUUtbEuR2s60Li+EDryHcCk4xw4s77idyisu7wpctsnfLi7SpGzLQzAdbnVLH450PV7ZDerBZ1M03AiNK7Lu/SZh9EbPMnSsOHvEC8lXKmNBp0D+iT9jWjRAc+LdB02A/EX1FwRkh9C95FW8=
Received: from CY4PR01MB2328.prod.exchangelabs.com (10.169.252.16) by
 CY4PR01MB2342.prod.exchangelabs.com (10.173.41.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.15; Thu, 9 Jan 2020 21:16:05 +0000
Received: from CY4PR01MB2328.prod.exchangelabs.com
 ([fe80::e08e:9a14:332e:580b]) by CY4PR01MB2328.prod.exchangelabs.com
 ([fe80::e08e:9a14:332e:580b%8]) with mapi id 15.20.2623.010; Thu, 9 Jan 2020
 21:16:05 +0000
From: "Daniel" <daniel.wang@intusurg.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Recall: [meta-security][PATCH 3/3] added tpm2tss.so to tpm2-tss-engine package
Thread-Topic: [meta-security][PATCH 3/3] added tpm2tss.so to tpm2-tss-engine
 package
Thread-Index: AQHVxzIAr2Z9H4z9IUutBpJ5kBjLBA==
X-CallingTelephoneNumber: IPM.Note
X-VoiceMessageDuration: 1
X-FaxNumberOfPages: 0
Date: Thu, 9 Jan 2020 21:16:04 +0000
Message-ID: 
 <CY4PR01MB2328725CE2E07BE73A25770D9A390@CY4PR01MB2328.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Daniel.Wang@intusurg.com; 
x-originating-ip: [204.27.197.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 785a9d49-d417-4900-3fbb-08d795492320
x-ms-traffictypediagnostic: CY4PR01MB2342:
x-microsoft-antispam-prvs: 
 <CY4PR01MB23427DF6280F7AE01C20A3049A390@CY4PR01MB2342.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(366004)(346002)(39860400002)(396003)(136003)(376002)(199004)(189003)(186003)(52536014)(6506007)(5660300002)(26005)(2906002)(8676002)(33656002)(8936002)(7696005)(9686003)(15650500001)(81166006)(6916009)(55016002)(81156014)(66556008)(66446008)(478600001)(76116006)(64756008)(66946007)(66476007)(316002)(558084003)(86362001)(71200400001);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR01MB2342;H:CY4PR01MB2328.prod.exchangelabs.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: intusurg.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 /GUvtn3Sh5zuow3QQEzRq4cUjiuOUFoOrpjRn/hbFDQ+uwtK4sMra7w5TcnMYam6zQwWU2lKxZ/bIpNX0iU7Q0zZK/Fe5dTcaAiXNmcFP/pqGXdJMI06Q6UGvLzxYU2iXtFQ3bDJFEnOw79fFxspW1p9rKznPm+hazhCS43001LlmUVnlzl8e6Kfcxb9cvnY7RaTeEbuL/dXthl0REHg6Ex1ffymPU5QlSz9mQI7rHjQCyrIUxbTC43/vJdccKvCdrzwqN5wwkyjiCB8Pp3cbFvldDQejkaRZvHyM5QWxovEvrDyeaLWO+01mvd+wL5F0ba6yR8sW/ipvipuN7Tb/q8HkLap6I/eRF4pqphx2jM9+QPoqb5fnlvx4d76C3331zvOvFgvABUEQHE2pm10/K56b3KObHfBDwuCP1ccxuj+nwXL5SJ9zRTqBoH3xcaB
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: intusurg.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 785a9d49-d417-4900-3fbb-08d795492320
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 21:16:04.9612
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 039caf84-d3e9-4cb9-8b4a-2c2e17a80c19
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xZzc9rerlPASTfBq8vfzMooyp4uzNvfrdN1Zb5TcKFtbi+GuXzJxrpmocZgHsemMkxORHUJ6soIVJsjM4bJWAWB4naKhBMe2+rSmf9tyaNg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR01MB2342
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Daniel Wang would like to recall the message, "[meta-security][PATCH 3/3] a=
dded tpm2tss.so to tpm2-tss-engine package".=
