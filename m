Return-Path: <sebastien.fabre@actia.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7009C433FE
	for <webhook@archiver.kernel.org>; Wed, 23 Nov 2022 12:41:04 +0000 (UTC)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com (FRA01-MR2-obe.outbound.protection.outlook.com [40.107.9.71])
 by mx.groups.io with SMTP id smtpd.web11.19159.1669207257557680324
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Nov 2022 04:40:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@actia.fr header.s=selector1 header.b=GTtLESkL;
 spf=pass (domain: actia.fr, ip: 40.107.9.71, mailfrom: sebastien.fabre@actia.fr)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BVn1KivZ7vz4hVa8Oge4RVG3j7f3QOWWDK7LCU4TmCSUX0t0dnhUgPpsdv8uAMoyvB35d7kJAz/QQQqaXjqMwIYLsUtr+/9gB5adCjtWG34x+SBUtIqt+U26aER4oTN21atPUhFXi8VbGD2x1+F8OeI9D96a93GsrhA/UMvox/sMeZNdld1p5fdNScIxMrAFCktVh81sACTyELITOeVlg4kgDGghCNqpRG1ah/1uOko/tDe6ac8NKWPdC/d0X086QANFnfIMJ6wjz3SKByAaHtuQgQUgBGPVhAXWsSmD4v4+d88zGUZBfu1YTa7hI9a85O1yIfe0EknBucP10tqp+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nxhulKCEFFnRwt20VngBEWSrONw062kAYe1saMBUV5w=;
 b=mdtuU/JtxGl9cLXShWS+rDm3cWhPkjLVmf6xlrzMrC9+KKXm4ssJ/F3EEufptKkmtBCTpLyldmqjutbecquxFQPUSENO3275K/8RTnPXBBsCryymfQCkgY1l71bG0o3lMFKNWyFYkegd8+10+KXa+WJyZ66/KqtPRoVNi0vzbJ3UT3QvkD0I40IJopgovpD2SeHY5ogwUcixQpFoQx/zNb2TIy73XKlwbeeV5x08id2ksIJpXnLl2IJJO+bj8GKeaG2IrZmNdq3xnmaqRLifKYYpTxPWz3tJTXodo4b8zOUBLUrkIdJ92DUNW8pL39+DVF4GKhMvZkUZHFvR9mPKNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=actia.fr; dmarc=pass action=none header.from=actia.fr;
 dkim=pass header.d=actia.fr; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=actia.fr; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nxhulKCEFFnRwt20VngBEWSrONw062kAYe1saMBUV5w=;
 b=GTtLESkLMjOXukIS2VhUJZUO1v/E+He0f7V3X9fQyyfog/6GDkw+MssfXcYCWmBzdHWsWR+Q1nafO7ujMJoJzvgFgTmhculYD6z+qcgwBiDfy9YJ2NCyG8dQfsyLQbpmgRr0I597kIj2ev0ik0tnVh0vzCygmkVQEhQfWZSFLgw=
Received: from PR0P264MB2309.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1e0::12)
 by PR0P264MB2105.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:16b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.17; Wed, 23 Nov
 2022 12:40:54 +0000
Received: from PR0P264MB2309.FRAP264.PROD.OUTLOOK.COM
 ([fe80::c1b7:804c:4441:dac7]) by PR0P264MB2309.FRAP264.PROD.OUTLOOK.COM
 ([fe80::c1b7:804c:4441:dac7%6]) with mapi id 15.20.5857.017; Wed, 23 Nov 2022
 12:40:54 +0000
From: Sebastien FABRE <sebastien.fabre@actia.fr>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [PATCH] u-boot: Add /boot in SYSROOT_DIRS
Thread-Topic: [PATCH] u-boot: Add /boot in SYSROOT_DIRS
Thread-Index: Adj/ODZI6WJBZcHNSrGEyhnh2pk8zA==
Date: Wed, 23 Nov 2022 12:40:53 +0000
Message-ID: 
 <PR0P264MB230931E7523196BACD64E47C920C9@PR0P264MB2309.FRAP264.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=actia.fr;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR0P264MB2309:EE_|PR0P264MB2105:EE_
x-ms-office365-filtering-correlation-id: d2fd7635-c321-4c0f-c4f5-08dacd4ff602
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 k3kHSp9PfxNlNDfhzQRsZalc4X9HHliYnCzhz7iHw+fiQWNHh69cdrlEynAFka6y/0hYKQcuUbRFHoI3AzQpfwSHH6L/+b1vMQst1DbsNIIYXrswyAAM6tbm5Iz1bonAramMGHboJGrGhe7oPPh7zP/dtnjPQDarUqXYS3TPjFRVd8O0a2zSL4FJEENVNAYWRT+durQRt0Z8hGJrEHF56snsIW+jazgUzCgETuS/JgARICfWpgcSy/QdABmvRvrFSecJKMAaom67d5fA/GfeP4prmzqWl4mfYR8y6bXhDkB1o9qkR3wRKcqJ1zzP4IrWZ8xUVPSqTCgc6vmoKUhN6NYooLaPvc1X9ik1OwaE6yj0YoWp0qL7TMIb3Mb5mlcoi3YQ6cCsP9B9k5W7eKXjs+sIfe0YBlQIy0qIihjXGZn5IAPOd8lIvi2EDqsiJ7LsWhCHMiz5pVBvAWg4EHNSmuzRvvnuLH4W8sK4TVnDkk+p/vhhPJ1WXYYMcysIlT8ZfT+4Dm7oDhHEU8Urqu/eYj8R0LgLY/f8sWb8+b62iuyTlAFICz1gTRlhkPmSlFTIwmbGApd5itlHdqoxZtQIXEcMfINDGG/jZCPTCS+8XbWLLUXP5zZAdD3qA6DkCgfImhLw2jsGqlBCpRSC5mgYHa7Srs8I87RvknabxAdh1Yn9xA/7JnxTaLF8ic4V7eZPToqsRSelBdkzY0hdMNjYNQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB2309.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(396003)(346002)(376002)(136003)(366004)(39860400002)(451199015)(52536014)(6916009)(38070700005)(316002)(76116006)(5660300002)(8936002)(186003)(66446008)(64756008)(66556008)(66476007)(86362001)(66946007)(8676002)(26005)(478600001)(9686003)(71200400001)(7696005)(6506007)(41300700001)(38100700002)(55016003)(122000001)(2906002)(4744005)(33656002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?juDZ+n/XK78H9bpVsKyDbOYBDCs8kHV+096Wgw/pP1v7sj7sI1/JRdy6ZN?=
 =?iso-8859-1?Q?A8VVBHFbimsNPWIClxuvC9v9WfDr/AyXNQlazUQ1npKy9A4wn9u7jDM/r0?=
 =?iso-8859-1?Q?GklUgvokh0c5Mke/z3pKdsWdCYmdAHJv4SYqMZSU5yfDIM5tWhXed7Ud0V?=
 =?iso-8859-1?Q?JfMensL2C3CFUlP7YxTjpRLbNZ5cF8E7M5kJ/nAsOfWeo6InKUEr0gpan3?=
 =?iso-8859-1?Q?ECcT0AS5rVXRA0SPcc06vJu2XrRmaP81UJgnCU9QoNXvFxBkDT1eTxWFRK?=
 =?iso-8859-1?Q?3Pr+vqKvwHUpduja48WWodCu8GKXFB8+rAck7zulGHsDVQzp8qM1wNdHQg?=
 =?iso-8859-1?Q?jFXI84JCOjVu1llgICVlN8op5LhtueNeBvXsinmHpHcujEoGNxM/XnebPD?=
 =?iso-8859-1?Q?Y8xuj88kb3fzm4ufNhAeMw/C0utKlBHB9PJ2533ezuA2GQeIB9nJxv16Jq?=
 =?iso-8859-1?Q?W6XfrIKnQgB7ChhzIY/78xgAuEBe5z9R5JzSf/znFOB2UaVPeDl1e+kGls?=
 =?iso-8859-1?Q?jFi15te3huKLwKOAs7h6PgoPuvUMglKcCKerFAArIJ+Z7iljlmOjMift1y?=
 =?iso-8859-1?Q?Za15vXMG84Hcv5zsPN/thznePF6YfrQES95OVNaQLRFQLX6wiTqhqroaOg?=
 =?iso-8859-1?Q?NaSxH6r7gTvza3ucKdh96UvkZkKeJ9XKWt+Oas1Q36HjuJKmST9hYD+xWr?=
 =?iso-8859-1?Q?m8XKldd3IxoxlQZaK9Lts7roUjYJeuk69Kl24G3j8WsCtbKFdfo/O2cNO2?=
 =?iso-8859-1?Q?GH5LntiJQFKda99PZUXftuU0FUS3TOmceJIwdbF9NTN+CpXEYeYvfP33Ka?=
 =?iso-8859-1?Q?R/orDrvYD0qVENEoQVNbNf/aSwQP0mSRjA/iRBWdzkmp/Xdj0Kru/xo1LZ?=
 =?iso-8859-1?Q?CVdMXP0QEvW+B2pGCDKHPo6XDA2kPgadwscjtCwU6wsMQIHIzHotDiG1Ef?=
 =?iso-8859-1?Q?D/ifyrSgTHgjtKvWsNeeIVmmOD8jcmtc80WcDRlKLLfQVcNTjI8WCO/y4X?=
 =?iso-8859-1?Q?52hgKolKv3EBDJnd/i63KK20dszQ5WslRV1//CyhyU7mgbacUrHSQG4JxZ?=
 =?iso-8859-1?Q?Ah85EM5+89Vxs2eD3gstwlUw2qs/SPRhWs1GdG6WgH8nQ50tz7K7ON/K4f?=
 =?iso-8859-1?Q?rsbknUcehRNI7LExGQmJZS+H948l7WOcqwf28v2wLnYKCoOB7lmuxriDz/?=
 =?iso-8859-1?Q?FZe+TttBv983O2EUNJLKpXFFDhZGZuf+y7pRTcHh4OksxllLAwyop2YCqp?=
 =?iso-8859-1?Q?TcuE8vSWM1QrUK6WqWyHereWjU2qwVDsEPgZJl4nmEG0LMk3Lbo/jLmHHh?=
 =?iso-8859-1?Q?rqUkGTLw+be5R49u73/haY92WizJYC0Vzcl41KfrNfJx6XBsFbtBqGJ8x0?=
 =?iso-8859-1?Q?0ZuE0ZqafdyHb4aXEMkK0znrGHYBc+2KGviyDaInYQmISBFPT0LXa5rqID?=
 =?iso-8859-1?Q?Y8//TSYRNTPAZYKmU6Yp1RtsnIY9gR/An/KWYzhcsdEHMp6qXqAwgyUJAK?=
 =?iso-8859-1?Q?KA2NsXc6/6xGwXnFeq8b2jiJVgKmptKZ2/TE0s42gbuLFs0UILDHyi2Pk4?=
 =?iso-8859-1?Q?P8KWo7cqI/LV6iwnjMx7Vtq7tdvlRfLKjg1KNqJwtdOEZVR1BtuL605ha+?=
 =?iso-8859-1?Q?BUx/MixG9dJYqoPahdrtA1WJXyppROeV/A?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: actia.fr
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB2309.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: d2fd7635-c321-4c0f-c4f5-08dacd4ff602
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2022 12:40:53.9677
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 86314f06-03e8-4460-82f3-a44f992a19c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pYvNVr4URDFzx3dMocywaolE3X0sE6gCEBfGHrrjzUBWtBcg7hgs7pYdLrkuTWnEuShTUxsccm3DOBrUQyuj2bzB5evfy7KeugwFzpZL5Xo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR0P264MB2105
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Nov 2022 12:41:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58626

To be able to use /boot files, like UBOOT_ENV_BINARY, in other
recipes, like kernel-fitimage.bbclass.

Signed-off-by: Fabre S=E9bastien <sebastien.fabre@actia.fr>
---
 meta/recipes-bsp/u-boot/u-boot.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta/recipes-bsp/u-boot/u-boot.inc b/meta/recipes-bsp/u-boot/u=
-boot.inc
index 15e949b8b4..4636dd733b 100644
--- a/meta/recipes-bsp/u-boot/u-boot.inc
+++ b/meta/recipes-bsp/u-boot/u-boot.inc
@@ -206,6 +206,7 @@ FILES:${PN}-env =3D " \
 FILES:${PN}-extlinux =3D "${UBOOT_EXTLINUX_INSTALL_DIR}/${UBOOT_EXTLINUX_C=
ONF_NAME}"
 RDEPENDS:${PN} +=3D "${@bb.utils.contains('UBOOT_EXTLINUX', '1', '${PN}-ex=
tlinux', '', d)}"
=20
+SYSROOT_DIRS +=3D "/boot"
 FILES:${PN} =3D "/boot ${datadir}"
 RDEPENDS:${PN} +=3D "${PN}-env"
=20
--=20
2.30.2

