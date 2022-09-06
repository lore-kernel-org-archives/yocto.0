Return-Path: <d.antliff@unsw.edu.au>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37A39ECAAA1
	for <webhook@archiver.kernel.org>; Tue,  6 Sep 2022 00:11:46 +0000 (UTC)
Received: from AUS01-ME3-obe.outbound.protection.outlook.com
 (AUS01-ME3-obe.outbound.protection.outlook.com [40.107.108.107])
 by mx.groups.io with SMTP id smtpd.web09.31462.1662423103256917154
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Sep 2022 17:11:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@unsw.edu.au header.s=selector1 header.b=ZeKhXSNY;
 spf=pass (domain: unsw.edu.au, ip: 40.107.108.107,
 mailfrom: d.antliff@unsw.edu.au)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AyBgqd9twIBZvQ9qP23Ga5xSl7GbGdsNdcmZcVYEqiy+5728B2kueKc55dJOdVYqIq0WWJms91P56qRx4Kz8th0vHmNFOgz30zAv2CD3NpaWZ+mw0o0r0hGSiG/q83vVsUQ4WE58n3twECKopjw4UCXuKoWC0LvLkAS1ICBxDGJ+xdq/B8OCYuWO2B4x+/ifxSGGN315ZhKNxTDFW0nNbO0jdr4090ga051QkCJgM6vwF3d5VHcD9xqFKB1fpR02hH8ztgaYWG9pL1ofsH7TefqLCT197Vlrr0FS7d+PaJOaFJVf0EbVv7PabbLWIP+k9UrpWYtM3uq7pw0LDDP4ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g8RxsMlIe1+QfxXFuATjFk1hrx53e117aTqdCVvU9EY=;
 b=XtW1vd3IZ8IUk0BPY298Uvf230MZGpeRc66CzamuAI12cKXGOsf3rJL3PVKR4dk5HZBxOnsSW/DqTofsIDoVjxkODfNJE6pgEZTHTWV07Vozre5xiUM8hmgOrCDc68ewNlnDNRz6HGMbYFhshvWa5WJcgyg/WBnlkYKqMixvlQhi6x0xQLifu4E4y+VW0hEOkMObRW4xpZpBy36EUuls3iJPWmnSDzeTMNzc9+UJaHgFNJWBi2Djneh9j/IWINhdNdOVYghUBZhB4V4NwtCi3nivVKHiqS8yK7L/77mu1XP0fIYcL7YMO33rjOxdf1us1hbhRtYNWQknUM8n9cCpBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=unsw.edu.au; dmarc=pass action=none header.from=unsw.edu.au;
 dkim=pass header.d=unsw.edu.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=unsw.edu.au;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g8RxsMlIe1+QfxXFuATjFk1hrx53e117aTqdCVvU9EY=;
 b=ZeKhXSNYQdlqnhMELDFNuXXOddOEscW0aRoQ8Th/XPd9zRP4+goX/s9trXolRFIVr/U5a+sDW5ZM7U5kw7hRVb+MLqjo45/lz1xEw0uGpLW/VFXEUlqoPUl0+PobjmIxtGQazQWbd/15A+Q+BbX4YwSJM1SCx1FoNZRMS1/lBAE=
Received: from SY4PR01MB6797.ausprd01.prod.outlook.com (2603:10c6:10:136::13)
 by SYBPR01MB7978.ausprd01.prod.outlook.com (2603:10c6:10:17a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.12; Tue, 6 Sep
 2022 00:11:38 +0000
Received: from SY4PR01MB6797.ausprd01.prod.outlook.com
 ([fe80::9d8a:6314:6455:9567]) by SY4PR01MB6797.ausprd01.prod.outlook.com
 ([fe80::9d8a:6314:6455:9567%5]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 00:11:38 +0000
From: David Antliff <d.antliff@unsw.edu.au>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [yocto] Failing EXTERNALSRC and dangling symlinks
Thread-Topic: [yocto] Failing EXTERNALSRC and dangling symlinks
Thread-Index: AQHYwYRkbQhltqO/ME6SHPdmykQsVw==
Date: Tue, 6 Sep 2022 00:11:38 +0000
Message-ID: 
 <SY4PR01MB67973904CFDABE0D2F038ABFB17E9@SY4PR01MB6797.ausprd01.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=unsw.edu.au;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 894cf3d1-2229-421d-6373-08da8f9c5e7a
x-ms-traffictypediagnostic: SYBPR01MB7978:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 hIzV5CvUAVRaiSj1W7EIjYfcxdszscWyNxjmLn50MRj9uEY1PnqTc/OMLroV12/NqbpJqjyaibGV+BSiJ7bwtwfTiJfLbxcPlS3qz1wkoMIo9XhPfjin27mM28NbV30dSMl0w6NC5+zIFLsoRcr5SSL4olUktkfwMCvYw/857J+D5bT/UeukMNw2At3BK++h2S+dE5ta7ZIg3Z+hO3/Rsf2w645U2cgAkq96/E0ggQvayUsoGiF8DjG/7lkRaJI7yVxivgC5ZbTdEVpGWggVX120aMCa6+CbtYPB96hdP4tDxzAfoWmjziYNdvjNd37Zz/vWpxrKiV9ot9w1jTIgSms9WSNo510AbOee4ODXH2Txaz8iXgzdT2tMHDVnfSZtxk7X7OM7DSYeDSd4sK/EL9AzIshvENAogN0kDzY1tafOv6l1c22gscMSnTfQw1YPuQXIy+ukx85x3WWhPsFWIJPCOeDs5Ytm/dMXDXFqpiIP4xHciJ2nclu+wXGkqO56YvGGV8XeqxHX3P1IIN89ZCNY+9die1+ydp950hd+RiJsxLY4CIC1UTM3Tye155rMKehRbo8fKfbCsowxaTvCnoiEggktrw4nsMc0GuA5qoUex07XdeGHrlG7OdEkCl8buxt6S4jK0NwgpAhHAbAnRMQ3IMTBlXnOABghw5WoY2h7E/ugr5aF4jzHFmSVSA4XSTr8OfQLZReM7APSEovccIFg+XTzFKVQB2PhwVa+djZMcEDfQPDcOAa/vlMcvCnrTlbeKUNiP7LqyReqyL85POCIhCDWKf6CCyY1AdCvHp4=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SY4PR01MB6797.ausprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(39860400002)(346002)(136003)(366004)(396003)(71200400001)(66556008)(122000001)(66446008)(66946007)(66476007)(64756008)(76116006)(8676002)(86362001)(966005)(478600001)(316002)(6916009)(38070700005)(786003)(38100700002)(41320700001)(2906002)(4744005)(186003)(33656002)(5660300002)(41300700001)(52536014)(8936002)(55016003)(7696005)(26005)(6506007)(83380400001)(9686003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?tyDtFqlDExzOfUuSa4LgjwFGBb9OqXfM0s4cc+M7AexTARpN1KQ6HHhcCb?=
 =?iso-8859-1?Q?sv8IxswLoIn3SKNMXGXtwhwbR+gtWKngAnnzJ/51GEBMbWV3XoNWsRmsep?=
 =?iso-8859-1?Q?RMYGA4cUpzgltNmPvqmXU2TCU2IpOkDfBL9zboAJyr4kC9cUsNJ6Z8yEYc?=
 =?iso-8859-1?Q?gBODp/DkpFA3TYbJrjV3D5MFUd1S11v0ABxCswkHb86i81b43TeDDoilZm?=
 =?iso-8859-1?Q?C/8Mfa93UUeordXwlEMn5b9lNIWdfSkZ7WwQaTGtCWYVOCh7KftxXJNxOc?=
 =?iso-8859-1?Q?Lh+kBgbqHGyXvW6D8yIaW/B0KIoA/peIjf5UwjbmRuTMePPEUG21Pb2Gdx?=
 =?iso-8859-1?Q?ufSRmWmHkt0gKZqZQxd6zLpftXYzy+YTMIRZ1xy2CGWYeiw2f7aX+y5ngV?=
 =?iso-8859-1?Q?VJkHas49Id8ZJUqZ2j1AYOQ4BfK3ZKdZ+CSgf9oYYQheQsnc7vzSa8yJYx?=
 =?iso-8859-1?Q?vabrA6w4iOBYE1GSy/1KEWlrBCvNt9R7pZsOw87FzWsf7Ycz1G0YbNJJaQ?=
 =?iso-8859-1?Q?rq4C0ljvrN2yqkRj/jxUWk627te2W4i0FAYWNOpZUWNtOIiim4tYH6EJCy?=
 =?iso-8859-1?Q?fIkHzdinnh6WREL8McXbITS7FU9co/WhmXwOv8m20uRwVSGy8Obgdx6cpa?=
 =?iso-8859-1?Q?jhF4jeZ2Zt+JNMH4Gm2RSJKOvH+z2Su+HK2azhpuKClZyCvEaZfEDnHZUr?=
 =?iso-8859-1?Q?reuGDtJxRYBtrddib83SKMXBg+2vHkwAz2F7mL3Do51tgs/+AWXbcY6f81?=
 =?iso-8859-1?Q?jY61LV/CcIzNrvfSPN1U0iXo+NZrwRXlVykgwZ1lfDiCeZPY1uktSXYOE0?=
 =?iso-8859-1?Q?/NDBIG7bnYoGSMod85q/q7KLI9ItOB8qiTcjpz8ZzBKPWMbsJqnxU24t+0?=
 =?iso-8859-1?Q?LexoJTk7CuYplhCkhOOzYHs0xus4HlfKme1NV9takDWV8sJMrEmNW26BCj?=
 =?iso-8859-1?Q?rj6peiXx0e8cO3M8kWYfkKiuuil+/UMgiSwZ4VlPIlen7nduXCVNBJtEiL?=
 =?iso-8859-1?Q?pAVanMS4DdyVV9LLJTquT0895vJgpABqXgWIbK5c/1c8Nwk+/ICAWM2OwC?=
 =?iso-8859-1?Q?+dKJUAUBW8eQgnQwmPDIhN6UUc2aTrsQtyZVPm8odAgOiT9fOye/T5itv7?=
 =?iso-8859-1?Q?WneFKYpyNFoGUUyn3cuWaN76iWPJc2qG6O+Y3M5POEjuhT9HC0+jTgiNeA?=
 =?iso-8859-1?Q?z5rXDj3Bxtg+oaCnT0cQ5Rb8r8rFw7VWCcnB+Vu9jfmwGm8ICxtkSZ+Raz?=
 =?iso-8859-1?Q?CppDZO8e+X3G+KE6mD6nrSvAB8O5vmBZ9ogPPFU/Y3/UwWHtxxhDeJ4ZNa?=
 =?iso-8859-1?Q?HcX3ZnNmLS0EJNgE04HEXXDtrhXqKSEQJKk1tIP4K2RthdZD7mtYrTl6e3?=
 =?iso-8859-1?Q?hyCdw0BCg7P1rEiK8C2UWWVRIaQv7rvmD0AchcCCoiBGKmAuEGEXAa56xw?=
 =?iso-8859-1?Q?9yg1+uDz41BDqKo5IK5926Ig3rtr3g2rpuohVbbRLjf3rmd+M0h5C7x4RC?=
 =?iso-8859-1?Q?fvoRAJ5yL/f+tYA9DkO3pxyvOhObi8+VZBGOrDBjalAkXSlLMfMJtty8JA?=
 =?iso-8859-1?Q?9l0Ie5wzuYPjdr24VUDwDKvhCQwYUxEx8a70AMsJghHHDE2tSM5Pwu50CT?=
 =?iso-8859-1?Q?Fq72pe1mMCzI/c+dyJOcAjyH/a0CKY8EdI?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: unsw.edu.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SY4PR01MB6797.ausprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 894cf3d1-2229-421d-6373-08da8f9c5e7a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2022 00:11:38.8783
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3ff6cfa4-e715-48db-b8e1-0867b9f9fba3
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 j4KbuMZ5wKsLoB1qBThMQZPhy7uSYQugtaTHYRSdV+5neh3fI3biY6/dl2W4kSSMPK3ZQILgLafw6XJLb4ZWkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SYBPR01MB7978
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Sep 2022 00:11:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57981

Hi,=0A=
=0A=
I don't know how to reply to list messages from a thread I wasn't subscribe=
d to at the time, but I'd like to follow up on this thread from August 2016=
:=0A=
=0A=
https://www.yoctoproject.org/pipermail/yocto/2016-August/031671.html=0A=
=0A=
I can confirm that the referenced patch to checksum.py is part of my Yocto =
distribution (gatesgarth), yet I continue to see this issue with broken sym=
links created by EXTERNALSRC rules.=0A=
=0A=
WARNING: Unable to get checksum for my-recipe SRC_URI entry oe-workdir: [Er=
rno 2] No such file or directory: '/.../my-recipe/oe-workdir'=0A=
WARNING: Unable to get checksum for my-recipe SRC_URI entry oe-logs: [Errno=
 2] No such file or directory: '/.../my-recipe/oe-logs'=0A=
=0A=
As mentioned in the original message, this occurs when the symlinks created=
 by EXTERNALSRC are broken by, say, a removal of the build directory.=0A=
=0A=
It's not a big deal because it doesn't break the build, but the original th=
read was left hanging, so I hope this info helps.=0A=
=0A=
-- David.=0A=

