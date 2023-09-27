Return-Path: <holger.sebert.ext@karlstorz.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9F42E810BB
	for <webhook@archiver.kernel.org>; Wed, 27 Sep 2023 10:14:09 +0000 (UTC)
Received: from mx07-0040c702.pphosted.com (mx07-0040c702.pphosted.com [205.220.184.135])
 by mx.groups.io with SMTP id smtpd.web11.14169.1695809642897695642
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Sep 2023 03:14:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@karlstorz.com header.s=S-DKIM-20210427 header.b=TJl54en4;
 spf=pass (domain: karlstorz.com, ip: 205.220.184.135, mailfrom: holger.sebert.ext@karlstorz.com)
Received: from pps.filterd (m0267679.ppops.net [127.0.0.1])
	by mx07-0040c702.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38R3pYpc019197
	for <yocto@lists.yoctoproject.org>; Wed, 27 Sep 2023 10:14:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=karlstorz.com;
	 h=from:to:subject:date:message-id:references:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	S-DKIM-20210427; bh=5JF4C1lgl478Td6MCFRXdnaEdZeo10tjBZcV0V1R3DU=; b=
	TJl54en4GDxY1LYHDyNN7NKthQPX/AAK52b5KlsUcZJsErc9Xx2ud9cAO/8hcszU
	CCJbNaO1Eiv6O/Y20Bmk0f47zCiXaUeuYAeSjTyzE4OiEvuWRy99wqVFR9HeHkPy
	QGTZrqAcXmBmNoPP7BXEcy+rsbEadsx5xWPuXR1Abkn1wTaZ98sUKY7pjokCtUIF
	xdGeWMD2kAg2k3vMnqgB1cRGz03twWyvwkJy07OI8DZY35OWcDUIfuAb3M6JOIsg
	irfg2UpTjR9PVJ2W6dq5ZkrBUn623lFZqEIsF1BixntT5ijD/CJWFV0U6kU9Fpm7
	0eiNwbFSJlz68vi7yAx0cw==
Received: from eur01-he1-obe.outbound.protection.outlook.com (mail-he1eur01lp2053.outbound.protection.outlook.com [104.47.0.53])
	by mx07-0040c702.pphosted.com (PPS) with ESMTPS id 3tccf2h3dj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 27 Sep 2023 10:13:59 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ijWsXGVF6sJtH3OJ/JDN5vb4GnL1aJwSjG09n0iJn2tEqU9kilIA1yIyUyiTO/f7huDAsWBKKos2t3bEmb2OF85N2+2SDahCpsj5tDUEdk/TndjvLkq55wWYK0sM96eMRtS2ZCW4TpqO0+603Olz3vxxyeCUMPeLkSfrtz949rrR42ezg5v8St+fpZMTA6IS/acmpjc+GysL3Umn+PURGAwPFaUQ4Uq3ICLbQB7jUqLze04AkPVgVoucMjW7ZykyOjrMQUPn37dGJZzXpeXR/4BV3AoDyRzTGI8PVvVTNGbSCyA7wFfHYVF3+oehfLCW7rb72jW8CaDBdf+61sbqkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5JF4C1lgl478Td6MCFRXdnaEdZeo10tjBZcV0V1R3DU=;
 b=PtjVOLF08OWL2aYtvdvUplBH5GdUtHPWNksxD1Z+SckjgVsW0KjxMVFvQ6FOPZR3QIMKYkInu2Dz4F4ypqwdsV6t+1PdjaIVVF+GkFN2I5Z/a7eLfkNc7IY0PLrTrH57KoS8J8Ch00FEUwUiDhvEk9l3+bgSLwAPdUA5YsocFdH8WtkA8cnakDeSq5PaH+K8lKnt24o320uT78u74QhvXKACGzwj05xpG9b5m5ibEQrEtI4RUzgSzdGwTLLyDzzj98ttXUF0t2hPb+TPOPmTdirZ3wvKdKcgx4xaIBMPZbkpdZ9bQfWRhK9WBrtB9yYYlt6We7YeSHMjHw1iGPreng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=karlstorz.com; dmarc=pass action=none
 header.from=karlstorz.com; dkim=pass header.d=karlstorz.com; arc=none
Received: from DB6PR01MB3736.eurprd01.prod.exchangelabs.com
 (2603:10a6:6:4b::33) by PA4PR01MB7262.eurprd01.prod.exchangelabs.com
 (2603:10a6:102:fb::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.18; Wed, 27 Sep
 2023 10:13:56 +0000
Received: from DB6PR01MB3736.eurprd01.prod.exchangelabs.com
 ([fe80::91fe:d06c:d05e:e7fc]) by DB6PR01MB3736.eurprd01.prod.exchangelabs.com
 ([fe80::91fe:d06c:d05e:e7fc%4]) with mapi id 15.20.6838.016; Wed, 27 Sep 2023
 10:13:56 +0000
From: "Sebert, Holger.ext" <Holger.Sebert.ext@karlstorz.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: AW: overlayroot: When is the RW layer unmounted?
Thread-Topic: overlayroot: When is the RW layer unmounted?
Thread-Index: AQHZ6xpmuQInreqH5EC4nAe13oOXT7AugEsy
Date: Wed, 27 Sep 2023 10:13:56 +0000
Message-ID: 
 <DB6PR01MB373613693A82E5A0EF49522EA4C2A@DB6PR01MB3736.eurprd01.prod.exchangelabs.com>
References: <17865B58732D1B87.28522@lists.yoctoproject.org>
In-Reply-To: <17865B58732D1B87.28522@lists.yoctoproject.org>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB6PR01MB3736:EE_|PA4PR01MB7262:EE_
x-ms-office365-filtering-correlation-id: df264948-bf48-4a60-1f1c-08dbbf427562
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 63WMngEz06h+ITqwE5YxkSD1JfCAWhA6rd4Tn92kID6azmmSOawUGwpfi1UYXkF8bbp3gOLvbwDbw4LRNUafVBRr52wb4E1ixFQev+Yg8hcsD7ckZGPAY4atQihglyuaNRcswOZ/V1xn71/8Tg/3V2iQ2gP+T9D0oSEyoHUsW9espP3ZGdy+Xijjar5EpoekupkqbeXqqTXx3KJMmPJL/y/71qwhP5eolKtYW+ujhaYmOtCJUImdp8jYK3Ev6QvB/FGOzZW09ibhrPclExZEOYT5YAE0IzlD3g78wQcdYdKxnc3k6ImqVxtKpOWXVal9J2L4WbmA+U9mKAJQXlq93bcmQ4CwO84UhYy7DWRqNXOTQuxHaWW0nIJ3EX2HifwDbQsYnM0TKS3lylZJms8BYiTm6HanRYdCgijW4UJq5gzOH34QdyCHAZlV0UGauSm8sYIzxQcsnqJxPghAHg4wlWERHw5tWhNUHrahJkbE0jBs4dcg/Mo2Qg1btR5Jvx/LxsaKvRdYVwpxTLOpIdVdaHZ6wzpuwdup6iWVcITJ3aj//InAkOuCmb5isKJOiu3ipcz9Z+EWUP0tqsTgve+YHB1A3s7jpic9Lqo8Zb1RWImn48M5DNhPLDGkX+ODh5YS
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR01MB3736.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(366004)(136003)(39860400002)(396003)(346002)(230922051799003)(451199024)(1800799009)(186009)(66476007)(66556008)(52536014)(66946007)(64756008)(5660300002)(66446008)(76116006)(91956017)(41300700001)(316002)(6916009)(8936002)(8676002)(2906002)(55016003)(38100700002)(122000001)(478600001)(38070700005)(26005)(71200400001)(33656002)(86362001)(6506007)(83380400001)(7696005)(9686003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?V1NQCpL5VtqZ1eLYk/ibP6WbxQKLanYYmv34QZzKT8b9v27z0T9f0WbRkw?=
 =?iso-8859-1?Q?N6BxQCr3n+Rz5CA0fIajdAAbzihTt4U9AICSld+Z5k+oJyfurlJDwsIa+h?=
 =?iso-8859-1?Q?cQgKw+l8AZpn1KxHULFGU28kWrOcbSGxdxfHMry4NpnZdPrAYVsttieKxR?=
 =?iso-8859-1?Q?4ASiSHuoMKnMyUhoK7Ok5wxwy5Oq7QhBF2ZNaTVSd23zc6mM1YHbk4vPAV?=
 =?iso-8859-1?Q?4Q1DC6e2qe+3ySPk7mLWFLlKOVtuEl9V4m3rY681ddLxjBEf1wDrdlCUcA?=
 =?iso-8859-1?Q?yU6Z2/vLzxUE3KPgY1YnDDK3qVpYIDss4YsAcopMfJTBiu2YX6EaVOX55g?=
 =?iso-8859-1?Q?kVYlJBskzQPMvH9Yb5O8KaLJ0RsXNU+ysFV1qh9N40K7d/aJwIMD9vqJ/7?=
 =?iso-8859-1?Q?gqSLiJli7CAVoQYp9JQs6L5wkGdQsIV8yqxaCxFIfToH16U+kK1MnMWTx8?=
 =?iso-8859-1?Q?KFjPB+fy/f8ILVALohLzXs5bnyeFagH23msPgb9LUM3v1lSyY928oMbwXe?=
 =?iso-8859-1?Q?kZFedJQjygalO/KfQi+jpaRfaXel2LnH+hjv5WpoYyApRZ1GBA+EX49JFX?=
 =?iso-8859-1?Q?HOsJrICHK+AZXmeyY33mRJn93tUyInSWXfNa0BA9ApRU/EZtdQpxKL8sa2?=
 =?iso-8859-1?Q?9+hbi+Xz5ulHyPN5opgBj8cue08rttds6a94uHucLVGfx/XrxmnbvaxoTL?=
 =?iso-8859-1?Q?0gIGQNyfQDcuKKK10Ll/ylRZFXAGiXw3xHvSuHmJDrFmG7228P0RB5uv6J?=
 =?iso-8859-1?Q?9+VD8etp++EoY6E0r/oz+2/tqLRl+Xf86etD3uMZHj6gbWEEnG88uP/jsh?=
 =?iso-8859-1?Q?L74WKKpb0scru93yRy/6nqNSyzD0CZhxCju1X6BMUEhl7jqBhp9afqQ0LC?=
 =?iso-8859-1?Q?1hA/e5ehtkCF/exL80lT/7u2yb6zQMDyRoa0Jzv+GCOSjwUdCm9HIEP1kM?=
 =?iso-8859-1?Q?wZbX/O0+M6DQRMIX3wZXCuCU2ScrHDVmM0LyRaEqYsodVvxxSDjKLZIIb/?=
 =?iso-8859-1?Q?AoctX6v528ZMJKDXLJPby/p2UEoTh5VrpfjJPXubOhtwZ1wOX/+W96OyWm?=
 =?iso-8859-1?Q?NvZAqiI67SdGNC7ZUOTC4JWVBwu4EgwX66K9MJcvD8/sntnp6zud+eJ+wj?=
 =?iso-8859-1?Q?am+qTYimzGZXyp+5uMR1/fSnJSeuBzvU17Gc06YF1rX9R3Ax7rToyehld1?=
 =?iso-8859-1?Q?yXu+65XJe7jeCxezPm0ZzVFXyFCmnik5zFuqaqeU8nlHqnUEZMq7PTcUt1?=
 =?iso-8859-1?Q?MR5VtIFo6qPmVDUgk6gg69yOsqM0MWI0tNgHcFnzZfk0JHW+1vzHo8L3o3?=
 =?iso-8859-1?Q?i6mFIrnRB7JTDnSP5FrkYbzUo/OVBgVAhNYsrTCAmnvzid8yddizBx+HA6?=
 =?iso-8859-1?Q?nxmnF2IaYF+rjObCGgLfeVHNlctqCQj1u6qKVKcz2LolhtGwajiKiAxZ+I?=
 =?iso-8859-1?Q?+SwPrWWeqk8RYkuZh+C7YIjQbj/mdTtb5Ri9NZPBQUoI5Ym4kX7OvlKdC9?=
 =?iso-8859-1?Q?FzyzZo5FXV/F6ZPKI52sSxkcC8AVYQPySzvhg4vwg0fp9QdKn0jOZOiN8W?=
 =?iso-8859-1?Q?Ma7sP4m12qdOmkabwcajeuKcN5MdDoUpCVD2UXN5dMywfoFENWyseX8K4D?=
 =?iso-8859-1?Q?WSox6dACwMszl2/EOJ2NzMYmcioBMiDKh6jeVevZ3jjmzZT8LiWyDfUw?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: karlstorz.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB6PR01MB3736.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df264948-bf48-4a60-1f1c-08dbbf427562
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2023 10:13:56.1154
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4a0b6f21-e6e1-4ed6-9dcf-e60e7190f648
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k7nlrdFt25J3XftPyFdqZg1SmLfe/gLmrvgszRc5dttB21Ax2enVVMVqC/td556WDlRNEgEOTCh3V5cFSpb0JuW24fWwdc08fWmUm9fA62U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR01MB7262
X-Proofpoint-GUID: hgYAZAlKc3Lucos2stOPm3zBp79tB1ig
X-Proofpoint-ORIG-GUID: hgYAZAlKc3Lucos2stOPm3zBp79tB1ig
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-27_05,2023-09-27_01,2023-05-22_02
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Sep 2023 10:14:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61139

Has anyone an idea? (see below)=0A=
=0A=
Best,=0A=
Holger=0A=
=0A=
________________________________________=0A=
Von: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> im Auftrag=
 von Sebert, Holger.ext <holger.sebert.ext@karlstorz.com>=0A=
Gesendet: Dienstag, 19. September 2023 18:58=0A=
An: yocto@lists.yoctoproject.org=0A=
Betreff: [Ext] [yocto] overlayroot: When is the RW layer unmounted?=0A=
=0A=
Hi,=0A=
=0A=
I am using the OverlayFS-feature from Poky by enabling it as follows:=0A=
=0A=
    DISTRO_FEATURES:append =3D " overlayrootfs"=0A=
=0A=
In the image this results in the following init-script:=0A=
=0A=
    /init.d/91-overlayroot=0A=
=0A=
In this init-script the RW overlay is mounted as follows:=0A=
=0A=
    mount -t overlay overlay -o lowerdir=3D${ROMOUNT},upperdir=3D${UPPER_DI=
R},workdir=3D${WORK_DIR} ${NEWROOT} |=0A=
| exit_gracefully "initramfs-overlayroot: Mounting overlay failed"=0A=
=0A=
So far, so good. I have two questions:=0A=
=0A=
* Where and when is the RW overlay unmounted, especially when the system=0A=
  is shut down? I did not find any umount command corresponding to the=0A=
  one above.=0A=
=0A=
* I would like to enable quotas in the RW overlay. I tried appending=0A=
  the corresponding mount options usrquota and grpquota to the above=0A=
  command, but they did not have any effect, the quota tools keep=0A=
  telling me that quotas are not enabled on that filesystem. This makes=0A=
  me wonder whether quotas are supported by OverlayFS at all?=0A=
=0A=
Thanks!=0A=
-Holger=0A=

