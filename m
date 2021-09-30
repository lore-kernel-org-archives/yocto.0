Return-Path: <zangrc.fnst@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 852CCC433F5
	for <webhook@archiver.kernel.org>; Thu, 30 Sep 2021 02:22:38 +0000 (UTC)
Received: from esa11.fujitsucc.c3s2.iphmx.com (esa11.fujitsucc.c3s2.iphmx.com
 [216.71.156.121])
 by mx.groups.io with SMTP id smtpd.web08.6904.1632968556836369402
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Sep 2021 19:22:37 -0700
Authentication-Results: mx.groups.io;
 dkim=fail, err=mail: missing word in phrase: charset not supported: "gb2312";
 spf=pass (domain: fujitsu.com, ip: 216.71.156.121,
 mailfrom: zangrc.fnst@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1632968556; x=1664504556;
  h=from:to:cc:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=vCwR3ZgWeEnKhLaLr14ABqISH7n6UPYlGbm8eNPuVvE=;
  b=lG4g04L8ADeppAni64RAILRGwBKY7WM84Epk6IwnrnCW0DkX/wfhf5GO
   9d78eEgP4CWEsvgBQhJVnYpItWjae9ZhOULqMRGksB2jcuXCwyi2vSiWP
   AoD5xHZZaU19y2d7obn41tLp1FbwkuY26H8q9fA27wXVzxh5ThwUT2Sm3
   Z8Cq2wUo3n3oRqeUHrIxMTf3c0FxiYbaF/kWVXyvTgSDfK1xRO6XZJ+cb
   kL6CRs2FH4RGRa3sZnGfZ04B4tBBGMLWXaq+7TN8olypfz3M9tHU3Q8ec
   S/PcGyM1B+hnq6HXmuzKRQ+n3c6lfMDlUWJYZkulHKZoujktXroaj7xMl
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="40362904"
X-IronPort-AV: E=Sophos;i="5.85,334,1624287600";
   d="scan'208";a="40362904"
Received: from mail-os2jpn01lp2056.outbound.protection.outlook.com (HELO
 JPN01-OS2-obe.outbound.protection.outlook.com) ([104.47.92.56])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 11:22:32 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IEBaoXcQ7MgycgbWHVSXdxoQ38Am+7AIoPpUKkvWgY+91tyOI6/qRvTrM5ZecQnnxBumJwWG/gajS4AvX9C/Y9TPVjFqbiQd5Sal38ENADDv4PCSMhlk1ULFYddR4XVlD5ClMsCX+SfZnUxO4USSP/QD1zWawOyqSYuTqK0XtWaiaLFIDgqwEJxQcXjJBu5rX/axGj4CWGe5nq/DVmUL2DdafEYQJkjBsmoQCGU3VGLDGWOBc7ejW7G/lZ3lCvhE7F4VtHMS2/sCaKIN+vXGNicEUoNS49KHzfHyv4vPxJxCMahCebY9zlyb4Ssbs4ZUa7u9Jgzi2aAnvW3IuY1puA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=vCwR3ZgWeEnKhLaLr14ABqISH7n6UPYlGbm8eNPuVvE=;
 b=eG4l2VqRsQWJI9JUVVDspLyrJhHTJYe9FCgT7TjUS0J7D2sUJ0yKh1E4z31wggHWVSOUdvV1HDj4T1kxl889H/qd9sPcRAgw1fnsuxIrinZQlRXPgJbOmN0By/iY+TAQSlk6rxj/D1fOu2koH92lyQWj2UatoHMOeoZCoRxhWxynxgNaLzwS0lyRSaQ+WggpKhjVDD5w78fucInRZI8A/SXTJzWPGEuSvdicqlZ/SYyfxMfVEygD4deT4kNEv591YcPB4sDrWyVUeWNNfLobvf1nS984Nm1PzhhHiIV6pTBCsb8hSXdxP22YDO2+0nTNjyluPG4VdNxWw64y2Bch/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vCwR3ZgWeEnKhLaLr14ABqISH7n6UPYlGbm8eNPuVvE=;
 b=HsBtXlmApxmvlsXd/yyvO2TZIIfbWecuhY+nfX5hNA07wFuzMxpK4I39WDcDwC5BnB/EiAIgeFtwkyoLMHeJE2N5uVgPIwmOQONxYv46AYUU3MZNVeLLABhIevNZUV77vSrt6JxtHqrrdaj0Y9aiMmSx0lxtQjaJDxNBgEj8Oeg=
Received: from TYCPR01MB5792.jpnprd01.prod.outlook.com (2603:1096:400:45::9)
 by TY2PR01MB3819.jpnprd01.prod.outlook.com (2603:1096:404:d3::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.18; Thu, 30 Sep
 2021 02:22:28 +0000
Received: from TYCPR01MB5792.jpnprd01.prod.outlook.com
 ([fe80::340f:cc0:2b15:efe8]) by TYCPR01MB5792.jpnprd01.prod.outlook.com
 ([fe80::340f:cc0:2b15:efe8%8]) with mapi id 15.20.4544.022; Thu, 30 Sep 2021
 02:22:28 +0000
From: =?gb2312?B?WmFuZywgUnVvY2hlbi/qsCDI9LO+?= <zangrc.fnst@fujitsu.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "ross.burton@intel.com" <ross.burton@intel.com>,
	"peter.kjellerstedt@axis.com" <peter.kjellerstedt@axis.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Subject: [yocto] [meta-gplv2]grub-0.97 configure failed in x86
Thread-Topic: [yocto] [meta-gplv2]grub-0.97 configure failed in x86
Thread-Index: Ade1oH3VH6rtAj39T+u57ZST4HISPw==
Date: Thu, 30 Sep 2021 02:22:28 +0000
Message-ID: 
 <TYCPR01MB57922C876A769E5B748CEC61F5AA9@TYCPR01MB5792.jpnprd01.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6b954812-4cc9-487f-f0f7-08d983b9264e
x-ms-traffictypediagnostic: TY2PR01MB3819:
x-microsoft-antispam-prvs: 
 <TY2PR01MB38196B6048E359D847281BB9F5AA9@TY2PR01MB3819.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 d8LVzuqtFA4CQNX9x68TI5TsNSeV4rzdow7H+2Pm7JdR1vNDYIbivpwJkov6kb6pttExgbDq1vhgN+C8jSXjX8wgYUQ0CWxZksK2E2voPMUFkByBnUMGzndB85dflEixxXhrwmBwDIr1QA+B9Of+TmYGRpDeWKIweNlgdCS2jH2b2H9susJ9PRcyh2qaGfHpKTBm4nrwOZduwcBBGwkjJJZVOn1JChQe2UX/xBmgaXQgPfRhbgllEp/qip6BaGAMYH/0ed7D9z5IIfvgqeZ+59Naxaw6LYcIeTJP9ygBgUij+HaSJ1B0QpcTlgyR4zPiAjTcqi5lxwLquNV8Hxf2gLJ/bMSDwGqv5dnlroDu80RXgaBd8YEGzfC0mOMffFZi+9mQmf1KdaKr7aWomY1mMr74dO+28JbHjhLrTbZojVbJQ7VHKMt9+lpPXFIxRc/kcx16pnkM3QtbzBvo8QCqXtydtMSOpaZu2/3VFcnV/3QUR3pr/jl3Qvvns31OVy3PtoeirysxWihLo2X5g9HhcU86yxXlL7zjlwgNUAgJFIO1Om3vSWcfdGfLe3sbNbAoRjYCWaVz8tuQX5jxfA/aPT8G+lQDS3mF7kd2vFUc4JeyBWc/kNe5IjmlSxu203CTgjHBJkx9+OZ0+sN5Ypa0XI3vuQfDBz9vAj0j1v7Euk5sx/nPDyxtCJLvd6DUxq9q
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB5792.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(84040400005)(66946007)(7696005)(83380400001)(66446008)(9686003)(55016002)(85182001)(2906002)(186003)(6916009)(66476007)(26005)(64756008)(76116006)(66556008)(38100700002)(8936002)(122000001)(52536014)(316002)(86362001)(71200400001)(508600001)(33656002)(54906003)(4326008)(5660300002)(8676002)(38070700005)(6506007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?gb2312?B?OGNnbVpHQitnZWkxSjU3V2pvTlZRL09qcXZrYjRxQ3ZnZnZDVmYxVWYwR2FY?=
 =?gb2312?B?UTU5SlY3UVJUN1ppOHMzdUtWM0FMKzVkUTVNaXk2YmQydjhuaUpka2Fweks4?=
 =?gb2312?B?bWRrS1RZYVhwLzZXeUZERkVIaHBmME01SGRIVStkS0hHRXpMdjVPTkhQN0lM?=
 =?gb2312?B?Wk1YVkZ1TWt5NHJ1d2xKMUlnZVJXUmJoYWxpZldJUWRIdkYrS01VOEUvcFlC?=
 =?gb2312?B?ZzQ5RUJjeUpKSU5VOWdEcEJIQnozZ1htTUE4czlYRUxvMXNremUrcGR4cHZn?=
 =?gb2312?B?UGplZ0VuampZRFY4MS9NZ0ZaWEFac1lwb0FrczdCek1yVEM4eStUdW0rK2dh?=
 =?gb2312?B?Z05STEE3WENyTTN6dUtrYm8vanZoTXVJS21DbUdhb1pCa3B4M3BuZ1ZibGxr?=
 =?gb2312?B?MWsyaWs5OHhGNVZVT1grUTFiempKVk9WeUZ3dVphU1VLQitSUTJ2RFdVUDhv?=
 =?gb2312?B?NTk5TENNN21oYzIwTHNXbHJFMnFaclJmVXFkY0hpTDVrMlpVenp5aExJaDZt?=
 =?gb2312?B?MUphOUo5VExxU2VSVG91SHMweGl5cTJoMTNHZmJocEo0eW12L0xUbWJmQkNv?=
 =?gb2312?B?TDdBeFhxWWJRT2psaVVPaUp3SmE5N3hNTkl4TnpNQTVEbTVBTklTN3NrWGhQ?=
 =?gb2312?B?SmtNeU9aejhYa0xCVmg5ckFnZ1l4a1FPS0U4L3lzZmNITWYzUnRiV21xYmVU?=
 =?gb2312?B?Z2JIU1JkbndXKzVlVGE2d3UyZU8rZ2pkbGh4RkFKM2xucFlJTmxJWTNqUUtB?=
 =?gb2312?B?S3NyMTkrcVFCczRrNjVsNWlVNzAySjZlMVcweDVtNXUvdnhVVUdVRWtpOTJ3?=
 =?gb2312?B?ZXBzMVgrMFZxNlZJQ25zUlJ5NU9iR1M4K3NpS1p1ci9LVGVZRW5JVzJQeVBo?=
 =?gb2312?B?U0E2ZU9maWQ0TEZXaTY5clFsMXZ1TGlOQjBBWnRwRU8yb25FME9KanZpL2pV?=
 =?gb2312?B?Q0lWUmhzajRCTVlJcDdpeDJ2Y3BaTVlCZ0JuOXdmUFVBbGRoMzhkR3pYQm16?=
 =?gb2312?B?OGE2NXZxVGZPZzNZT1lQRlkyb1liN3B6NTVTcDExVHNxcnhxNmtlb3NPWFY5?=
 =?gb2312?B?OWUvYWNjUmVvUEdaRExoOWRFV3N5eFJ4R1ROczVCeWJpVUNGYmhVZllCWmQ2?=
 =?gb2312?B?eEE5dUU2azh6dmsxSnJmQ3IwNDBUQmw1R1ZlTG9MQUh3b3JudDhlYVVCMzI1?=
 =?gb2312?B?cXpFaEk4ZkJtUEhvZmJiVEQ5TW4wOGpXM21RK3FnZ1JzS0RleGlDMXFFQW0w?=
 =?gb2312?B?OXNraXYrcWJzMWN4M3FPK0RMSVRHNmdhdURHMFVWSjZOZkp5YWZJdWFQVzA4?=
 =?gb2312?B?bjlDSFBVNk51UCtkbUVZelo2a1ZINDY1cVFuODJZZ2lFWEtSVStUY29JaUNF?=
 =?gb2312?B?Wk1rckMvSEJIQ0V1NjJOT0c5SGpKRFB3Uk5MRWZOTll4U0EybEkrR3grMktO?=
 =?gb2312?B?SmJqYW9KL21maXBDbFIrOWRCaXI5N0pPaWNaN05kZmdmQWhOcW5yU0t4SzZY?=
 =?gb2312?B?Q0FGcUl5djhBdDF3YjV3NHdBY2NvbTB2V1djM00wK1F6K3Y5c2x0N25oZFRr?=
 =?gb2312?B?dGJVS2xnd2NlcmFxUnFoTUNnU0NBYTZWeXhqRUJ5cGRwc3phM1Rpc2JoVWdr?=
 =?gb2312?B?bnpFOXp5UEdRZnU4UWFXSGJtdVZ4RmlHYUlJRFlEWHpDV1JwaDR4VVBQZEdJ?=
 =?gb2312?B?NGhBdEdkMGlyZDIrU2xUVnBnUGhlV014eDFHcXhxT3VJU3JpM1pFU1E0cXMy?=
 =?gb2312?Q?ZSz2rAqrL69pwdvLYGmf8BX3DOiosCpnGRrfxIU?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB5792.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 6b954812-4cc9-487f-f0f7-08d983b9264e
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2021 02:22:28.3546
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 DUmH2jjMrhBSeATCQ+xMuX1sPIH0JutIn2vghxHCKNGUtr7oBtRLFaqC3IKdo0d4U97B1HRR3oSsL3Hd+7kLUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR01MB3819
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Sep 2021 02:22:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54913

SGVsbG8hDQpXaGVuIEkgY29tcGlsZWQgZ3J1Yi0wLjk3IG9mIG1ldGEtZ3BsdjIgb24gWDg2LCBJ
IGZhaWxlZCBpbiB0aGUgZG9fY29uZmlndXJlIHBoYXNlLiBDYW4geW91IGhlbHAgbWUgc29sdmUg
dGhpcyBwcm9ibGVtPyBUaGFuayB5b3UuDQpDaGVlcnMsDQpaYW5nIFJ1b2NoZW4NCg0KfCBjaGVj
a2luZyB3aGV0aGVyIGk2ODYtcG9reS1saW51eC1vYmpjb3B5IHdvcmtzIGZvciBhYnNvbHV0ZSBh
ZGRyZXNzZXMuLi4gY29uZmlndXJlOiBlcnJvcjogaTY4Ni1wb2t5LWxpbnV4LWdjYyAgLW0zMiAt
bWFyY2g9Y29yZTIgLW10dW5lPWNvcmUyIC1tc3NlMyAtbWZwbWF0aD1zc2UgIC1XZGF0ZS10aW1l
IC0tc3lzcm9vdD0vdWJpbnV4LWRldi91YmludXgwMDEvY29udHJpYnV0aW9uL2J1aWxkX3g4Ni90
bXAvd29yay9jb3JlMi0zMi1wb2t5LWxpbnV4L2dydWIvMC45Ny1yNi9yZWNpcGUtc3lzcm9vdCBj
YW5ub3QgbGluayBhdCBhZGRyZXNzIDIwMDANCnwgRVJST1I6IGNvbmZpZ3VyZSBmYWlsZWQNCg0K
dG1wL3dvcmsvY29yZTItMzItcG9reS1saW51eC9ncnViLzAuOTctcjYvYnVpbGQvY29uZmlnLmxv
ZzoNCmNvbmZpZ3VyZTo1NDY2OiBpNjg2LXBva3ktbGludXgtZ2NjICAtbTMyIC1tYXJjaD1jb3Jl
MiAtbXR1bmU9Y29yZTIgLW1zc2UzIC1tZnBtYXRoPXNzZSAgLVdkYXRlLXRpbWUgLS1zeXNyb290
PS91YmludXgtZGV2L3ViaW51eDAwMS9jb250cmlidXRpb24vYnVpbGRfeDg2L3RtcC93b3JrL2Nv
cmUyLTMyLXBva3ktbGludXgvZ3J1Yi8wLjk3LXI2L3JlY2lwZS1zeXNyb290ICAtTzIgLXBpcGUg
LWcgLWZlbGltaW5hdGUtdW51c2VkLWRlYnVnLXR5cGVzIC1mbWFjcm8tcHJlZml4LW1hcD0vdWJp
bnV4LWRldi91YmludXgwMDEvY29udHJpYnV0aW9uL2J1aWxkX3g4Ni90bXAvd29yay9jb3JlMi0z
Mi1wb2t5LWxpbnV4L2dydWIvMC45Ny1yNj0vdXNyL3NyYy9kZWJ1Zy9ncnViLzAuOTctcjYgICAg
ICAgICAgICAgICAgICAgICAgLWZkZWJ1Zy1wcmVmaXgtbWFwPS91YmludXgtZGV2L3ViaW51eDAw
MS9jb250cmlidXRpb24vYnVpbGRfeDg2L3RtcC93b3JrL2NvcmUyLTMyLXBva3ktbGludXgvZ3J1
Yi8wLjk3LXI2PS91c3Ivc3JjL2RlYnVnL2dydWIvMC45Ny1yNiAgICAgICAgICAgICAgICAgICAg
ICAtZmRlYnVnLXByZWZpeC1tYXA9L3ViaW51eC1kZXYvdWJpbnV4MDAxL2NvbnRyaWJ1dGlvbi9i
dWlsZF94ODYvdG1wL3dvcmsvY29yZTItMzItcG9reS1saW51eC9ncnViLzAuOTctcjYvcmVjaXBl
LXN5c3Jvb3Q9ICAgICAgICAgICAgICAgICAgICAgIC1mZGVidWctcHJlZml4LW1hcD0vdWJpbnV4
LWRldi91YmludXgwMDEvY29udHJpYnV0aW9uL2J1aWxkX3g4Ni90bXAvd29yay9jb3JlMi0zMi1w
b2t5LWxpbnV4L2dydWIvMC45Ny1yNi9yZWNpcGUtc3lzcm9vdC1uYXRpdmU9ICAtbm9zdGRsaWIg
LVdsLC1OIC1XbCwtVHRleHQgLVdsLDIwMDAgY29uZnRlc3QubyAtbyBjb25mdGVzdC5leGVjDQov
dWJpbnV4LWRldi91YmludXgwMDEvY29udHJpYnV0aW9uL2J1aWxkX3g4Ni90bXAvd29yay9jb3Jl
Mi0zMi1wb2t5LWxpbnV4L2dydWIvMC45Ny1yNi9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2Jp
bi9pNjg2LXBva3ktbGludXgvLi4vLi4vbGliZXhlYy9pNjg2LXBva3ktbGludXgvZ2NjL2k2ODYt
cG9reS1saW51eC8xMS4yLjAvbGQ6IHdhcm5pbmc6IGNhbm5vdCBmaW5kIGVudHJ5IHN5bWJvbCBf
c3RhcnQ7IGRlZmF1bHRpbmcgdG8gMDAwMDAwMDAwMDAwMjAwMA0KL3ViaW51eC1kZXYvdWJpbnV4
MDAxL2NvbnRyaWJ1dGlvbi9idWlsZF94ODYvdG1wL3dvcmsvY29yZTItMzItcG9reS1saW51eC9n
cnViLzAuOTctcjYvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9iaW4vaTY4Ni1wb2t5LWxpbnV4
Ly4uLy4uL2xpYmV4ZWMvaTY4Ni1wb2t5LWxpbnV4L2djYy9pNjg2LXBva3ktbGludXgvMTEuMi4w
L2xkOiBjb25mdGVzdC5leGVjOiBlcnJvcjogUEhEUiBzZWdtZW50IG5vdCBjb3ZlcmVkIGJ5IExP
QUQgc2VnbWVudA0KY29sbGVjdDI6IGVycm9yOiBsZCByZXR1cm5lZCAxIGV4aXQgc3RhdHVzDQpj
b25maWd1cmU6NTQ2OTogJD8gPSAxDQpjb25maWd1cmU6NTQ3MjogZXJyb3I6IGk2ODYtcG9reS1s
aW51eC1nY2MgIC1tMzIgLW1hcmNoPWNvcmUyIC1tdHVuZT1jb3JlMiAtbXNzZTMgLW1mcG1hdGg9
c3NlICAtV2RhdGUtdGltZSAtLXN5c3Jvb3Q9L3ViaW51eC1kZXYvdWJpbnV4MDAxL2NvbnRyaWJ1
dGlvbi9idWlsZF94ODYvdG1wL3dvcmsvY29yZTItMzItcG9reS1saW51eC9ncnViLzAuOTctcjYv
cmVjaXBlLXN5c3Jvb3QgY2Fubm90IGxpbmsgYXQgYWRkcmVzcyAyMDAwDQo=

