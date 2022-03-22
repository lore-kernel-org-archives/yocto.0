Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79039C433EF
	for <webhook@archiver.kernel.org>; Tue, 22 Mar 2022 17:46:04 +0000 (UTC)
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (EUR02-AM5-obe.outbound.protection.outlook.com [40.107.0.78])
 by mx.groups.io with SMTP id smtpd.web09.13267.1647971161216048711
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Mar 2022 10:46:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=ZQU9JuGf;
 spf=pass (domain: optimeas.de, ip: 40.107.0.78,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I86ulGjvMZaQxRp1Vjnm9MPAPiJvCCCyC9pTMBTElGCqS3P3ajpE6vlJo41JeecvCsq8xPfiFV6tJORHLsp5VNgne1sBRRFarCxj7cf0W2eWAnsuf1SmLk3hiEJ5WIzEUngdQhFyIBEJSGa8qyNmuHsjkp3wC+rsAfLm1eVsQoALdxuMoBEQwapkSUs7BOdQKo94r6dibJnkUATYosYosAtnP+ja++NPVnHAao+gdn/qekJy3njmEqv3gt5BqdPjz5BbZtpM1w1Q4XZ0mwZ+FJbRMcBKj3wYwOJ+OwsRsiKK7Bx0FgH6WWPTL69v6wlnvF2/jeb66jCNurL+e82D5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8LvML30A8UsJhf+xhDrSj6wMjrXlt/cSfnTHTS3Zkrg=;
 b=eI37hT2IKwrUM+Yiyspz1k9Bcnnp0aca2bp88OvCYyxf4Fi9i4YxXOXm3QIKshXPobKD8SW2Ay1CsJB3LXSrgekhOIWz79ML52Q2XlWwm1NlUwTjhMPauvvUBKUXIRWGiJZyCv7fZF8krsaXird1SCgsIamy3nhR6qXPW6LQGtc28VrkKFkH8QUKnhFdfbpmSiwz+MDEYgLPkwS8VT5iNylIHDqvbizlCoxtUYiqPqUKHSKgesHXHAeDkWM19g1dyPNlaY7SrXNz0uqOHD+hAKrREq+ts3FJh/1hPckS/g+oz/9rzj9Q4++SQGwFLziKQMT1Dstf5cEksTv5lmtBTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8LvML30A8UsJhf+xhDrSj6wMjrXlt/cSfnTHTS3Zkrg=;
 b=ZQU9JuGfASastPN4VPN2O9SJn9RN+/0OyWIdq2YeMOSbWczLlpLnF+B+aramHL7vQ+t2on/sKPmSq0CKUiaSFKgAuBu5wndJ7QLX61zEuWJ3NxukXrPABJB44gbXpak+k4R4k/uSYhn/5Wpe7meIhWNa7SQGBZz6H9ivZ2Tlv2A=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AM9PR10MB4403.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:264::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.15; Tue, 22 Mar
 2022 17:45:52 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::e5f9:550e:18dd:7fa]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::e5f9:550e:18dd:7fa%7]) with mapi id 15.20.5081.022; Tue, 22 Mar 2022
 17:45:52 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: AW: [yocto] KERNEL_DEVICETREE cannot be appended?
Thread-Topic: [yocto] KERNEL_DEVICETREE cannot be appended?
Thread-Index: Adg+Dcaej/XHVB/ERiqo18lugU1b2wABJVMAAACLNHA=
Date: Tue, 22 Mar 2022 17:45:52 +0000
Message-ID: 
 <AM0PR10MB31071FB689A7C510191949F899179@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <AM0PR10MB310724144326400F7BA0A04599179@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <YjoHbsir2x08qfzp@piout.net>
In-Reply-To: <YjoHbsir2x08qfzp@piout.net>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 15d25f7d-bcdc-4bd3-2d5f-08da0c2bcf05
x-ms-traffictypediagnostic: AM9PR10MB4403:EE_
x-microsoft-antispam-prvs: 
 <AM9PR10MB4403A7977D804C631A5C3A3A99179@AM9PR10MB4403.EURPRD10.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 donhujqBgLgisb2SKF2c01CXUMYEIyBKsBRy4fGobR3o2TcJRUfRBFgLn2crgT/DEvei2I6j2aL/V2Q43ORzjeMyjBq+i62Zd3oGsDoCicgpE6zX6HLJh3QuTubMRglENsbHXmYBlQjfwSvIyRpgmABBSCxbKZb6/DccaYjqgdHk/gF4CqXJsPY4W+a2Lxsr6mL7jwGbcXoY1KM/gne41Et9dXlcTtZynAS7WQZGXXtKnvWgBg678jzvz2LJfiu2Eg9G8UQXxHc5oX/AscCkX3N9LSCQEGl4C20FbBiIzae6OtI6pNtzGUXVB8s3qkL7oTPprLfVdz7viezEEveYXmc8flkCO0bSyelmt/K5s7Y+jdaX7a9URYrglwJ2p8Ur0l9QbAlpmNm0td1nzbpMCYw20GxwLwG+nEJsvLbBb4fhUqa+cU7mrhz4T+bCtQZFfL2TkpTPNJqXviyLv5nxdHWpocmhLPpDgBrPdXyUeYxpYdjODe4UIM+o6XPiZiAK+grqt/EMbZ1s73tWQ4fvq9ImkS1JlDMXDn/etFqwd/FlVYCeXGB7PKJ5W8RNtWJijRpWpZdj5sgMnAeYCTVYNy2rxFuSbV1KEY4g4YsK+OR6pCzamMduvSKrMaQ/0p+wwTZH2qJyIl2Ib2qJNwZ+uAxBRHGmxnseVrm1MsSATcj7fKHRTZZKHCKalzKW89z+EhwB6lSG5JOuG9PE8vIEVA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(396003)(376002)(366004)(39830400003)(346002)(136003)(2906002)(6916009)(122000001)(6506007)(7696005)(558084003)(33656002)(8936002)(5660300002)(55016003)(44832011)(52536014)(38070700005)(186003)(66446008)(4326008)(8676002)(66556008)(76116006)(66946007)(64756008)(66476007)(86362001)(316002)(9686003)(38100700002)(71200400001)(508600001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?0+9TkU6fSaXsazEdB2msK3lIr+pnO+HHSBOQHRDPfPkZR9TTNavH+xt5G259?=
 =?us-ascii?Q?saL6sZF+4yeyonE6Nfpr3sj/l8aVUGQe8t8ByXfVrnaeRs7Qud8sCvhqwrfw?=
 =?us-ascii?Q?xObPL9YLpMIgqR9Y6K4f36+PBrIS9qWc1UzMVc9MrCE8Um9NWk8guhg+GaF4?=
 =?us-ascii?Q?sbNl01ChRmxcUfEWZHZsug/Rpc1e9WmGDQR0eRv6wwsQRwdl2/UWJ8xoGZEZ?=
 =?us-ascii?Q?fSMY5eia/hYPWIm0A+ZF6PhKyww89jCdDDZfEcurv4lLA8fyoaLP1Ouskc+q?=
 =?us-ascii?Q?r7eQBtIyqsco1e6u3VhtpaMSdhJqmP+L8RQykevmhUUT+yuud3fsujmEPOuV?=
 =?us-ascii?Q?xqd3lr2P98SOfpGWQ5Fjea3PhHnQOlQIj0iYXUMepX3zg+6/Dr/hsBdBaqrv?=
 =?us-ascii?Q?pjs3zANnGPxGHRCHW8EdQlCiP+UUosZ1oaUAweOc6f43SJPBk8TGBkAPk7DF?=
 =?us-ascii?Q?kJDvyM1YKbe2I21ZqY4e7mJG0zYyTs1og8s3Ua95imnfwTLG7oCd1k6vbUjh?=
 =?us-ascii?Q?sbLBS1sZ91YbeufCWf/gCdxz3Mr76tpHgFXUjpCmHfMiPqbfm564gbIYnNNp?=
 =?us-ascii?Q?DrajR1+2JyqAFRNivpWi5VDBN3r9Jrs/+Jx1LFSFJPRkKfIUb5xxGoFz3Pd4?=
 =?us-ascii?Q?pWwKflW9kGclKdGCCQutdJ/q5gc9aKQncKmrTnmKcjjUArAiJLTp3ul+g2Al?=
 =?us-ascii?Q?sQ1OLYIQ6uzHInmWWcSMZ9JTwWdIQ6g27Gc1MDaCDJIWg5wNseMfHA7FUbcI?=
 =?us-ascii?Q?OJXlcUElVl0Ggltq6zyAYdyrDPPFSgQPEL12aCiMjvTk1Vym5Wd7l+O2P6RW?=
 =?us-ascii?Q?Z4WjrnciWGwcm1dZBhHSjEfJ9qdwwozx+G8QDrKdEf2psAm3uJiBR1fjHelE?=
 =?us-ascii?Q?p7Hv50kASRKvESfqr4vNMjPfD756S6TibWvD5PgkQEpsg47ULXTdjhh6Jeag?=
 =?us-ascii?Q?NaELK0hoykJm3JWa7meedBpK9a7Y3lH0qojM6rRknHEzvkaRxoKmQ8LtbdaP?=
 =?us-ascii?Q?RtxjLOxEjvhvTQjLkiYsR6gq6o7xerwGnqJZHr5SagRl/riRbcWj6wfATIQa?=
 =?us-ascii?Q?nVnFg/6CVB/ZN50EdFatOGwTvTtTdpEFyI2MC5HYv8SMDkAZbT3J4xo5JYU4?=
 =?us-ascii?Q?+Ivbk3MABJ79pQUwWZ7E916XbgNpvSdm429JXdSSm6FK2Ns/DbkhVXnAKuoj?=
 =?us-ascii?Q?C2XVP5Mpd2wXLzWwImq3EEnIwC6vu8p8lNbABKSzBlO9M4vIZo4YTp/ViNWA?=
 =?us-ascii?Q?LuSZoObeja3q7EZ3LMpBvHgnJn1klUpIhCuDt4R79XDixrtQ+YuMeQj81Aox?=
 =?us-ascii?Q?X3H6j6YGQhSpd3lHXahPu8W5ENINrW8GW5yZwtoDlT6KXPycPwyn8ikkXexm?=
 =?us-ascii?Q?p6had9hTLwyvCDa+o8tnLOVgjUGqrRJ3p0I6m4l64Rd6S4zjDjzEa59llgbA?=
 =?us-ascii?Q?YuUE1QT0yXqgdCQzTCxPt6iH6e1dIrx/OcNeITZ69A19Kh8XQLDvDsXLQWXB?=
 =?us-ascii?Q?kVF/Jhw+8+e1WNE9WoSsqm+EpEPIGfU5sdoIK9EkI+ZZJK3XWMzhujjlqQ?=
 =?us-ascii?Q?=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 15d25f7d-bcdc-4bd3-2d5f-08da0c2bcf05
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2022 17:45:52.1915
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 o7o2YcWhPk6Epq7NMBE4XQyL9qii7+oAbhHLDyyx/Smsdq5q4LpeoDNOnKdp4nMbbHqYGPNawtyuqWBZY5wlDM/+lUW97L+yYoyEw+8VUV0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR10MB4403
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Mar 2022 17:46:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56531

Hello Alexandre,

> Did you try RPI_KERNEL_DEVICETREE:append?

Thank you, that works.

> You should probably create a new machine, it is a bad practice to change =
KERNEL_DEVICETREE from local.conf

OK.

Best regards,
Matthias


