Return-Path: <aaron.solochek@sri.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70E8BE00DAE; Fri,  1 Nov 2019 09:36:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_SPF_HELO, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.91.49 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from GCC02-DM3-obe.outbound.protection.outlook.com
	(mail-dm3gcc02on2049.outbound.protection.outlook.com [40.107.91.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30B50E0097D
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2019 09:36:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=d/+y1djkHVgw8k0lsBa+KVoRqTSzpoO1+8MWmfdhgYIP6Q7vdE/Ox1wV5F695aabiSMw/VlzXgNdTntpe78iy/r7e+bweB4JbsMiGbwlgxEGcEbVajRdUBB9vgGIg9tQjFY8sUt+2Dj5JU6pNcnmKkLsSzYx3k2QztWN5U5EzNB+VI9uwS6o6CIukbCS8EC2LLiu3GS8UDiNeyMZlbL1DalNfEuuIDNaYN5bcufLCy42Qq5tcGrpUShr6A8FKxExW+kUShjgmDcaFrRfyORB89ePikyZ2UO8FwYE3EPpxL85/Sepq3Ap7p9Fo2JqfH52xZrPHFeU9PiiDhfq0cr+Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=XJb4drjTlQyMO9l9x9+sM3dR+7Q7UVBzPTD9grjPU/w=;
	b=JKkkbWMZJJrOYyRKKh21Ukp1xk/+Av87/Sc1+1mKoqmmL8rR3YA+YNlDptnaHReMw9DKEkG15jmLuegV/1thnyQngX6AwaFtwT2u1jx2h8Tck9C4L0stIXOS0Pp5uv76ZANYqQSiwkaYJNzewjJB+IXznA6VANDeRUebMKI0lDPWMimi7iWelVYkG+8OMBJRxe1b2n4oVJfYu74vs6gcmn6/xlF3fke/WzeaInm4uFCT7vsMWy1d0/QhUjq5Lhi/JIW6mK9plYaVAHiUoF6A5LzD0xmwI8yrXAGT+soPDCedW2qnlKQDhOnBOXaSDXzgFiPugVWC6g+kyqJ+GCcAaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=sri.com; dmarc=pass action=none header.from=sri.com;
	dkim=pass header.d=sri.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sri.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=XJb4drjTlQyMO9l9x9+sM3dR+7Q7UVBzPTD9grjPU/w=;
	b=fQ67qqjCPYKSqnQ485dxMo2O5AR32YxXAIgG1vqS+y0oBcgyQLC6EOOS3Iw9BD6FAbGYdIuf9DVImRG/DK3hGzb2Zp3wmOh/icnE9Og1kjKSmOpZ3cH1TeVe8gE1RHExD5WAyEfMizbj4+Bgs1O9sdTU+EDUkEbK4XcpJAA/AL8=
Received: from CY4PR09MB1207.namprd09.prod.outlook.com (10.172.67.9) by
	CY4PR09MB1286.namprd09.prod.outlook.com (10.172.68.139) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2408.17; Fri, 1 Nov 2019 16:35:59 +0000
Received: from CY4PR09MB1207.namprd09.prod.outlook.com
	([fe80::f5b3:800b:7d27:a182]) by
	CY4PR09MB1207.namprd09.prod.outlook.com
	([fe80::f5b3:800b:7d27:a182%9]) with mapi id 15.20.2408.024;
	Fri, 1 Nov 2019 16:35:59 +0000
From: Aaron Solochek <aaron.solochek@sri.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: visual studio code packages or building instructions?
Thread-Index: AQHVkNJxq60l0pshNUiBBjrXMXQ9Dw==
Date: Fri, 1 Nov 2019 16:35:59 +0000
Message-ID: <2d1e4508-35e4-3754-3592-6c555e01a177@sri.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BL0PR02CA0004.namprd02.prod.outlook.com
	(2603:10b6:207:3c::17) To CY4PR09MB1207.namprd09.prod.outlook.com
	(2603:10b6:910:6::9)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=aaron.solochek@sri.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [209.23.209.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 25064f43-f481-46e3-e25e-08d75ee99369
x-ms-traffictypediagnostic: CY4PR09MB1286:
x-microsoft-antispam-prvs: <CY4PR09MB128660911F0DD215570A14D49A620@CY4PR09MB1286.namprd09.prod.outlook.com>
x-safelist: Domain-whitelisted
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 020877E0CB
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(39860400002)(366004)(396003)(346002)(136003)(199004)(189003)(305945005)(6486002)(36756003)(2351001)(558084003)(31696002)(71190400001)(71200400001)(478600001)(64756008)(66946007)(66556008)(66476007)(66446008)(316002)(5660300002)(86362001)(256004)(7736002)(66066001)(81166006)(6116002)(186003)(26005)(99286004)(8676002)(31686004)(14454004)(5640700003)(52116002)(2501003)(8936002)(6512007)(102836004)(81156014)(44832011)(2616005)(476003)(25786009)(386003)(486006)(3846002)(1730700003)(6436002)(6506007)(6916009)(2906002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR09MB1286;
	H:CY4PR09MB1207.namprd09.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: sri.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qPelI79qo/68c/gFeTT5MxakwRQqtHoll0PicCx0xyhqCtqZoKloIpS3OlC4MycEx4ilrTGbkWTXhyA2/JjqxW16fWR3bvdQy1maU3cfAoE1EgihiB4tWAnlGf7B923+XCHH1y1E1GhZurwU/7oX1z9Lks4Cai3av2E7N0YBdR0ZGNBElR8Ryfr+yaK7DtH3xjUbrgjOmK3yWiQGFRDW5HD8JC0G0m7GkVEhbvJUW+mTGcMXMbmZJ+BuDJVgYdbUtAFpOlIXy5MBJlk+5mvWqY2v46Rys580UhLlVn5o1YCpxHUS8Ikznw6mRtdUaZJpTGL+VS6l/7MNgjbdjJxRuEPWiLm+w+x2ngWFd/xF0WGCfk7L2YHgVf8VSqz4U6udxK/Zh43LAJKFfKYj6zrp0Zf0fzUMRbM+8Qnj86ryjaDVEc00wUv7jA+1vsIidrRK
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: sri.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25064f43-f481-46e3-e25e-08d75ee99369
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2019 16:35:59.2274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40779d33-79c4-4626-b8bf-140c4d5e9075
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2128/Wn7hSrO4G9P3E+lohYbfMgZe20xVWLDZeM9inu5mOItPnHX89+UDofNwUczYqukEb/hejxNcLF9Q1lLag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR09MB1286
Subject: visual studio code packages or building instructions?
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
X-List-Received-Date: Fri, 01 Nov 2019 16:36:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <C098F135AFF39644BDE91629596B25AC@namprd09.prod.outlook.com>
Content-Transfer-Encoding: base64

SSB3b3VsZCBsaWtlIHRvIGdldCB2aXN1YWwgc3R1ZGlvIGNvZGUgb24gbXkgTlhQIGkuTVg4LiBJ
ZiBzb21lb25lIGlzDQphd2FyZSBvZiBhIGFhcmNoNjQgcnBtIG9mIGl0LCB0aGF0IHdvdWxkIGJl
IHRoZSBlYXNpZXN0LiBBbHRlcm5hdGl2ZWx5LA0KaWYgYW55b25lIGtub3dzIGhvdyB0byBidWls
ZCBpdCB1c2luZyBiaXRiYWtlLCBJIGNhbiBidWlsZCBpdCBteXNlbGYuDQoNClRoYW5rIHlvdS4N
Cg0KLUFhcm9uDQo=

