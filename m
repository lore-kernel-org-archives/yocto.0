Return-Path: <holger.sebert.ext@karlstorz.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EAE78C47DD9
	for <webhook@archiver.kernel.org>; Mon, 22 Jan 2024 13:34:00 +0000 (UTC)
Received: from mx07-0040c702.pphosted.com (mx07-0040c702.pphosted.com [205.220.184.135])
 by mx.groups.io with SMTP id smtpd.web10.73667.1705930430973121794
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jan 2024 05:33:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@karlstorz.com header.s=S-DKIM-20210427 header.b=EmSnT+nI;
 spf=pass (domain: karlstorz.com, ip: 205.220.184.135, mailfrom: holger.sebert.ext@karlstorz.com)
Received: from pps.filterd (m0267679.ppops.net [127.0.0.1])
	by mx07-0040c702.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40M5gwWl032326;
	Mon, 22 Jan 2024 13:33:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=karlstorz.com;
	 h=from:to:subject:date:message-id:references:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	S-DKIM-20210427; bh=n4sIBdtCdfx8t6Xa5EdEYvnPnUExR/M1jh00lPwC5oE=; b=
	EmSnT+nIuDv5C+yXPVz4bsNgUfwTZp+7UxKaFGStP1yETJwtxPa+nXWiTZHIHxew
	ugf+bVoOSlU1Fl5uEYKERuXNTLjB6ftXXOTZzKUSw8kZE36ZUJDh/j+e/z2OMykx
	YorJiuGnWsyUYUUTPy+N9jrg+BOX8szgEzYLhFFOPUp/BDjeio8K1omiFnufbzJT
	9LQh7FozAvhOO+3cPp+5km/oaDa/8xTJKe0QX5fhXNRpHR2GtHEOIqciHZPNDFPQ
	NP6qgqcO4WIpsoTPFO9JV+Z/Ex5w2JunIzvAGxTXtQe6CDH7pbmp/JvwAyWYAfKL
	2ZfeT3yTxNV/RLj0vY3Rsw==
Received: from eur04-he1-obe.outbound.protection.outlook.com (mail-he1eur04lp2050.outbound.protection.outlook.com [104.47.13.50])
	by mx07-0040c702.pphosted.com (PPS) with ESMTPS id 3vr4a15udw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 22 Jan 2024 13:33:46 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mB5XwQQpK7J3fyJ87rTahv8ZEe8UznV2wT+8YvqTdOFO68Jfe/1vvPCDJoCACECoZHg9JENekHPo4jg75DSZ9L1PaYL7nUzOqGU/C+rfp1rSaoiiQVIbRVZrKsjS42+30BYu73Rk6FMr7tVPZntqb/xfNctrlb5dSglsG5bNksEeOh2uW6bsG2i3kFkj0RNwug0cA3ctvawsl34GaUl79Jz9QMNqXKO55IVmVVRTuT9l2RVVhrf662YGMRaaJOnRlTPJQKUM8Hj1WkWiT6JoMnM+h9ARky0RUjWzLv5+35szYHNEBRgq1a3jfhjh5ZXaBpegY+bf2EEs1n4a/gDW4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n4sIBdtCdfx8t6Xa5EdEYvnPnUExR/M1jh00lPwC5oE=;
 b=Cy7S6ddDiOqq+mfRpCA+uQCimytr8BTeuZZvsBnOiWCitVvrGFit6P73JtPWLI+om2tTHI1D/SS5WsZrbWcKM5PFBcFR3QAalgixrv/X8x1fh0TDUW2Kb0xc2CyqD5LysYokcxEbKH/5bzMGLO30kLCopVFUJMc3cXXAXtPdCEavEcev9fvmhuZEPA9uzYvtiMH6bP10LtE8EqM1qoj1wCr+rLDIwxTzsp1OODAeKD6UZLGe0/f319QJ5RKj0vAfNumMay87Zn3w1qs9CTqPr5eC7m9t2FO1M/QwY2x+lxlJM/g5qmUMR55a8pRr6xdn4v+9qCdUihy6TsodxB9FlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=karlstorz.com; dmarc=pass action=none
 header.from=karlstorz.com; dkim=pass header.d=karlstorz.com; arc=none
Received: from DU2PR01MB8717.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2f8::19) by DU5PR01MB10579.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:51b::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.31; Mon, 22 Jan
 2024 13:33:40 +0000
Received: from DU2PR01MB8717.eurprd01.prod.exchangelabs.com
 ([fe80::c1b4:fc12:b79:3081]) by DU2PR01MB8717.eurprd01.prod.exchangelabs.com
 ([fe80::c1b4:fc12:b79:3081%3]) with mapi id 15.20.7202.031; Mon, 22 Jan 2024
 13:33:40 +0000
From: "Sebert, Holger.ext" <Holger.Sebert.ext@karlstorz.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Remove Python dependency from target package only
Thread-Topic: [yocto] Remove Python dependency from target package only
Thread-Index: AQHaTTecl1bCseQXP0KzwQqhlRFQag==
Date: Mon, 22 Jan 2024 13:33:39 +0000
Message-ID: 
 <DU2PR01MB87178F9BB04E6D84F03AFE1CA4752@DU2PR01MB8717.eurprd01.prod.exchangelabs.com>
References: 
 <DU2PR01MB871782D4F3B6384568F20F99A4762@DU2PR01MB8717.eurprd01.prod.exchangelabs.com>
 <07856f5e06ff5c9fc1ffa903b682426de2a32a65.camel@linuxfoundation.org>
In-Reply-To: 
 <07856f5e06ff5c9fc1ffa903b682426de2a32a65.camel@linuxfoundation.org>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU2PR01MB8717:EE_|DU5PR01MB10579:EE_
x-ms-office365-filtering-correlation-id: 7a60248e-a5db-417d-f268-08dc1b4ebeac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 qYGyfw0J88JFG86QopRMRC3/Bd3zLPGXjMZPir+4aYwoVWejbjrj6tEPIUCngjmDYvCq9mp90iHJYckIHavTau1O7esUAlA35Ti4JdcvmApjRNONq3bdRP81tIvMgTBVcPYmBZ+SFtKh0DbhDfVvjdSBsswO5V/OhWc5kHw/hnYwHZvkhzvrkQY1plGlB3s5fz+X89+VlNytU9OrvAiTjX4XDRpkMRN4zuesB51sTsGm3p+RMwZ6ZWoxfH7Ck7ULcbJYz8YkziaNza8zoCKUCtyaG1qUuXbXpHjumovHwwbCUuJONDtqwPdAbKRP1dlz6dWKp04ml7xV3vdEKOjKRbBhm7MAW3wJ+XGn5jURZEr0oI17UZik6pVlqw0x0QsqxFEhtAOgXOQc6HsyzMh0oq28A4D/IRv6uxDiZrBm6g7df7bP7MesE3DUWHm6jyVxJ3qd2qhdnAEIl/Pk4WaaCxzS8jeIlELgefY9WjW5BhlUrF7BFp6nouv7PXnpyvB1ugsCTCzca2HcLpx7QA6h0Wv1HMH3KraFCcjjw0GmGPLoLeYNa7Y4gZ2uVDUep4BGULaRFu9szHT7S7HJuizM30C2z7qQqxVnQ5JpTrGta0AnBNCnirKnQDa5HbC+mF2P
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR01MB8717.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(346002)(396003)(366004)(136003)(39860400002)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(55016003)(7696005)(558084003)(71200400001)(9686003)(26005)(6506007)(38100700002)(86362001)(122000001)(38070700009)(33656002)(52536014)(66556008)(2906002)(5660300002)(41300700001)(8936002)(66446008)(66476007)(110136005)(64756008)(91956017)(8676002)(478600001)(76116006)(316002)(66946007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?ZMx8GMwheLD4hZiWTKHGAYxzbrqvKj90mLs8GKJeS5UW0Cd9U1ae2azY?=
 =?Windows-1252?Q?kPk8vqczDNjOWqmbMw2UwrB2ExdrGrFYb8IfPPCwjp3EDiHXVSVUQrbq?=
 =?Windows-1252?Q?holEwbvKfS04g6vGYSXDizIXQYejV5HJ81H27NpvvdOrm8jyAbNIGtHR?=
 =?Windows-1252?Q?Dv8TkN8T8ajcCrp1O9fc42GF8eS+twNDmAW7Sj8M5uR0BwD9lDqUcKEd?=
 =?Windows-1252?Q?zK7P2PzLy9NIKsCKwMeh+2CWjGIUOGnpGWCB2ZAkLjnSxtOyifRGOK29?=
 =?Windows-1252?Q?PXvxUnKFJPbr6yaJfGL5R7xB9S26Pq/0REg04pRYq8HmY2G2UK5Ux1Gr?=
 =?Windows-1252?Q?3NBlzAuOXGvbLpfeAj+FtYqc5rZuOWSgpD290TkYzvgSQGOS61j2IVBC?=
 =?Windows-1252?Q?1jx/r4ptwovzK28hEg9BQye7JpJdLhc7N57rYD9tbMnx0O+gOroot+l5?=
 =?Windows-1252?Q?bMvSGjN8lIup0X14j6kyVAfm/emhHdqJrgVVB+L4VMsarlAdTEZPxAuD?=
 =?Windows-1252?Q?uT3OSVSx59xtPKT5Q4gH9RBfdHMrLvUJ2cIBQx4xKw9seM+K+XhaCXMz?=
 =?Windows-1252?Q?j0nGV5BiLSTgaXXUW/m+xzyitXY4yioeeR2NZpjwX0bM15iqA9BbR2X5?=
 =?Windows-1252?Q?SBjq4cMdy6IO++FuclXxo90UA8Bk7WO0nl0Algc5ZFz9A0axdsuFpeBZ?=
 =?Windows-1252?Q?HJZRfLUxxnI0euRBGbJ9LsUS58CoyHEd3+Q6kGCnAMns15RBh+EPYAg4?=
 =?Windows-1252?Q?F3fkGWCQuYnfj5ixKOly7fCmjQEetxTToNdG4sWvV5WxQP7dQ9xyMjKe?=
 =?Windows-1252?Q?Ak9/SywC37UE0xKIpZD5oHGulgchdkaJl211WsaSoDLtWN+qU04Uf74m?=
 =?Windows-1252?Q?07u74QR35myeOPqK5CoN3Uzgs8kxZtgfmEJ7ctpWYDD8BT+AEIcC+ve2?=
 =?Windows-1252?Q?e0PUX1CclaHSGu7GDWhp2IeBEFyE6NmO2tlFIAQgcHkQamH45r0pwIgz?=
 =?Windows-1252?Q?3UTfOyhMy1qtW/8md6jN779CWOJHMF0mCnsk1zIRK3Idfo8WP+8vdJ/j?=
 =?Windows-1252?Q?xYmSUDtmcwnF80vYfwnoSy5loPuG/spHzm5djg4UyWmVIcksfJfbHSv9?=
 =?Windows-1252?Q?uowzUFzyfGEsz4bca2//6j7cobR14cvVRoLdLUP0/RZXMSC3djagYt1R?=
 =?Windows-1252?Q?m0QP+Asp1jS8sMrOB90rqYKz5RfaBLPqkRVEd49R4+z3RLSKlN0hhQsg?=
 =?Windows-1252?Q?HpLUiSwb4Ji0Bbz1RTOSp+0IBoQFiTn9MK+sVdxoaKTxBDrhdBg3SL5I?=
 =?Windows-1252?Q?ePk50anF+vgi/Lzdxb5H2gD5unOt2nTLXDNHaZXQ3/hN7x6c8YILkiDn?=
 =?Windows-1252?Q?K2mD1x02GFLIiIdkrVs20DbFP9lbjDpfKpd+Z98jTZ0aKfA7yEp82FYA?=
 =?Windows-1252?Q?PJk+0hYla7Gy7Gl6Fu9JI2FbCd4+/3xyBmp+m31yRbGdkaRpydTvBt7K?=
 =?Windows-1252?Q?XSfKz2Qtac+9l1WKii8E6QygAQfEBQaE2cD3Z4Y60JNsFDi/LNNgHaUN?=
 =?Windows-1252?Q?5jrkJk+F3bOhsIs+nqtTdRPt6SMYoEkZuaaLhvAU4BDERYVqA0TbDdMF?=
 =?Windows-1252?Q?J9Nt1be4axwLgzlDGWcL2TVz0N7rrcG/8T5YC8qh7Mlv7vbwxoK9nvu4?=
 =?Windows-1252?Q?LwgDTsCFu9scVVlYTm7x+hUjTeq4bGKkOxX/eIy8/+ZDztjGQ0T+aw?=
 =?Windows-1252?Q?=3D=3D?=
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: karlstorz.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU2PR01MB8717.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a60248e-a5db-417d-f268-08dc1b4ebeac
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2024 13:33:39.9622
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4a0b6f21-e6e1-4ed6-9dcf-e60e7190f648
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d93qkqFu4DeK/qqSBtDyGwoKUN1XMPc+YfrEjJ3OPvAHIS5r2/Ib+IiE6x5OwbZRwCwC5kEEZ7Z5U/5FoFlpCmL5YeVMWHrNMVa4qHdgY8w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU5PR01MB10579
X-Proofpoint-ORIG-GUID: UJXCrPWeWVFSaV4zwbE1-Bql4y8JHSut
X-Proofpoint-GUID: UJXCrPWeWVFSaV4zwbE1-Bql4y8JHSut
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-22_04,2024-01-22_01,2023-05-22_02
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Jan 2024 13:34:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62219

Hi Richard,=0A=
=0A=
Von: Richard Purdie <richard.purdie@linuxfoundation.org>=0A=
> Try:=0A=
> =0A=
> PACKAGECONFIG:remove:class-target:pn-libxml2 =3D "python"=0A=
> =0A=
=0A=
Tried it, but same error appears (=93Python not found=94 in libxml2-native)=
.=

