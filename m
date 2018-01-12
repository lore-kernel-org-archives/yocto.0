Return-Path: <stephen.lawrence@renesas.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F08BCE00D1C; Fri, 12 Jan 2018 10:44:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [210.160.252.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Fri, 12 Jan 2018 10:44:26 PST
Received: from relmlie1.idc.renesas.com (relmlor2.renesas.com
	[210.160.252.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D66C2E006CA
	for <yocto@yoctoproject.org>; Fri, 12 Jan 2018 10:44:26 -0800 (PST)
Received: from unknown (HELO relmlir3.idc.renesas.com) ([10.200.68.153])
	by relmlie1.idc.renesas.com with ESMTP; 13 Jan 2018 03:39:23 +0900
Received: from relmlii1.idc.renesas.com (relmlii1.idc.renesas.com
	[10.200.68.65])
	by relmlir3.idc.renesas.com (Postfix) with ESMTP id 3087740EA0;
	Sat, 13 Jan 2018 03:39:23 +0900 (JST)
X-IronPort-AV: E=Sophos;i="5.46,350,1511794800"; d="scan'208";a="268097787"
Received: from mail-hk2apc01lp0216.outbound.protection.outlook.com (HELO
	APC01-HK2-obe.outbound.protection.outlook.com) ([65.55.88.216])
	by relmlii1.idc.renesas.com with ESMTP/TLS/AES256-SHA256;
	13 Jan 2018 03:39:22 +0900
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=renesasgroup.onmicrosoft.com; s=selector1-renesas-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=ryxNMueFMbgGPEGTTAtorLz6HeltEotrEktydVAevXA=;
	b=HJBCfbn84nY/xJmg9dpG9Q2Ljn8hCGUiThslQmDPUXiryJlreHPHUaYf2gC8LKSZEfUM2qm1RaoLNpPn9pjK5H40ApT7mm7XAehy9HPNDSlOGnmbyjn913YmAui9Gqua5giCr2SZH1xDQyWoaKrbtkI6OF48Fbi2uVniEbV4arU=
Received: from HK2PR0601MB2020.apcprd06.prod.outlook.com (10.170.151.17) by
	HK2PR0601MB2019.apcprd06.prod.outlook.com (10.170.151.16) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.386.5; Fri, 12 Jan 2018 18:39:21 +0000
Received: from HK2PR0601MB2020.apcprd06.prod.outlook.com
	([fe80::c5d6:4bcb:a63:c74a]) by
	HK2PR0601MB2020.apcprd06.prod.outlook.com
	([fe80::c5d6:4bcb:a63:c74a%18]) with mapi id 15.20.0386.009;
	Fri, 12 Jan 2018 18:39:21 +0000
From: Stephen Lawrence <stephen.lawrence@renesas.com>
To: Peter Spierenburg <peter.spierenburg@nautel.com>
Thread-Topic: What is the procedure for creating a board support package?
Thread-Index: AQHTiXfFeRFwFm8k+UqsqeyHh7zOG6NwlWIQ
Date: Fri, 12 Jan 2018 18:39:21 +0000
Message-ID: <HK2PR0601MB20208272162DE2EC9D4B1EB992170@HK2PR0601MB2020.apcprd06.prod.outlook.com>
References: <MWHPR13MB1584B447167EE2B7AE940AC49E100@MWHPR13MB1584.namprd13.prod.outlook.com>
In-Reply-To: <MWHPR13MB1584B447167EE2B7AE940AC49E100@MWHPR13MB1584.namprd13.prod.outlook.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=stephen.lawrence@renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HK2PR0601MB2019;
	7:1Om0MgtYBBUfBMr5DkCl2yfAaOfSruXSKN+UNRfd9bh7go7MZSp2Ly0B5TDd6LDWXywyWQasjKoQa2hp7/dZLxMaegr9lV3/MPM3MIdvhhYgdiSC6ILeeMqNNIngT2JJOA6iELZ4uFIr1Lc/IwJgghu8cLrLVN0veWY25ZOGGm6L1+s/fyqsD15bYynPIZlU/l5rTRKEaAlEuUEh0f8C2Y2g52J8k2jq71VD7YGN1MYSRFUlEGub8KdQffxa1pEa;
	20:RlTeTrCmab85CCrByTiD3z30P0PEMNJksAK7JYIeVpUfXnue+EgnXN1K+CFsAO9bzDrGV1WfiDt4RovovbPU5QAy3+l8nSZsmYIynY7I/5oT6NFsDovAqzLkUc7vCUEtnxRa83Za2NNr6x02f+/orOFWC5S0KjuhErW/CJArkUs=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 9d6eaf1a-4210-4d13-129b-08d559ebcbf8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020085)(4652020)(5600026)(4604075)(3008032)(48565401081)(4534115)(4602075)(4627211)(201703031133081)(201702281549075)(2017052603307)(7153060)(7193020);
	SRVR:HK2PR0601MB2019; 
x-ms-traffictypediagnostic: HK2PR0601MB2019:
x-microsoft-antispam-prvs: <HK2PR0601MB20193045050EC8FF990F169C92170@HK2PR0601MB2019.apcprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(209352067349851);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040470)(2401047)(5005006)(8121501046)(93006095)(93001095)(3002001)(3231023)(944501146)(10201501046)(6055026)(6041268)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123562045)(20161123564045)(20161123560045)(6072148)(201708071742011);
	SRVR:HK2PR0601MB2019; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:HK2PR0601MB2019; 
x-forefront-prvs: 0550778858
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39380400002)(366004)(346002)(376002)(396003)(39860400002)(189003)(199004)(6506007)(59450400001)(5250100002)(99286004)(5890100001)(25786009)(7736002)(305945005)(76176011)(7696005)(55016002)(6246003)(2900100001)(6116002)(86362001)(68736007)(8656006)(2950100002)(102836004)(4326008)(6916009)(3846002)(6306002)(97736004)(229853002)(8676002)(14454004)(2906002)(3660700001)(9686003)(33656002)(53936002)(3280700002)(53546011)(74316002)(316002)(8936002)(81166006)(478600001)(6436002)(5660300001)(81156014)(966005)(106356001)(105586002)(66066001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HK2PR0601MB2019;
	H:HK2PR0601MB2020.apcprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: renesas.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: oePkNcAffvRbgfnSiDMNLnqgnWhZXaqSbYDziDk3wbxkZytFV1S6JC9RM+JcyzXJaQYO3BKIZUFNqVtxsheFjQ==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d6eaf1a-4210-4d13-129b-08d559ebcbf8
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2018 18:39:21.6699 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR0601MB2019
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What is the procedure for creating a board support package?
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
X-List-Received-Date: Fri, 12 Jan 2018 18:44:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Peter,

As Petter said your MACHINE variable might not be set correctly.

As an aside the Yocto Project used to maintain a BSP tutorial alongside the=
 documentation. I've not looked at it for some versions but if that is stil=
l true you might find that useful in your education. An online search shoul=
d turn it up.

Cheers

Steve

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Peter Spierenburg
Sent: 09 January 2018 18:39
To: yocto@yoctoproject.org
Subject: [yocto] What is the procedure for creating a board support package=
?

I'm trying to follow the instructions at:

http://www.yoctoproject.org/docs/current/bsp-guide/bsp-guide.html#creating-=
a-new-bsp-layer-using-the-yocto-bsp-script

I followed the prompts exactly as specified (although the SMP support promp=
t did not appear), and I chose the default 4.12 kernel (presumably the guid=
e is slightly out of date).

I=A0included the generated bsp in bblayers.conf as indicated.

I invoked:
bitbake core-image-minimal
However, the resulting build was intel based, and not arm as one might expe=
ct since I asked for ARM when prompted by the yocto-bsp script.
Is there a more hands-on document that I could be following?
Peter.

This communication, including any attached documentation, is intended only =
for the person or entity to which it is addressed, and may contain confiden=
tial, personal, and/or privileged information. Any unauthorized disclosure,=
 copying, or taking action on the contents is strictly prohibited. If you h=
ave received this message in error, please contact us immediately so we may=
 correct our records. Please then delete or destroy the original transmissi=
on and any subsequent reply. Thank you.=20

