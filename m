Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59135C38161
	for <webhook@archiver.kernel.org>; Fri, 22 Apr 2022 16:52:00 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.68])
 by mx.groups.io with SMTP id smtpd.web10.5274.1650608931690923093
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Apr 2022 23:28:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=RPoA5/tb;
 spf=pass (domain: optimeas.de, ip: 40.107.20.68,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cSGmjmf7JUIsXxxNhhhYHxVOslNX6DmUJk5lh+FUGBaGLQmEUtO8HzkcLvEaCuj6Zqo9AoVD5IAwzaZaIJLegvKqQoEiSA/ChauZxym4s4G61ZyX4rzUZ8IJJUfqApOKwBIgcOZDl9cvPvNkt2vtqYRUv1U945M+Yj5nxjmpsH1cwKT6RWVv3lxxP7gaVPfHvhT0Nli4Wle6sHGgQxB0BrRRk1yfc27c1ehOFG1KEQYEkmuLDStxxiqzypyTuEnDAp8Lfcew4ufu9h6SqcBqHea3ZIo7TIGyNbIC6e65umNPtfrUwxxo5xkoNYl3v+frtnPglmQ6cPir4d1/mkGt0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UfH41nc7VtijN7ifda7dndw/GNNvHjazV3OAI34vytU=;
 b=ZFAaMBoxPrCxnMC3vHQahrjK9vLoMJne7jSUt3p9ryp7tHgSxf2u4Yai93nLmiRSbHuMwOkRG3ghnD0x57QKU38yPd1U0ayeSEvbqg4Ad9qtlJXF94owV2WaIaz2W5G6Cc/yYvEffiLUlW+LjTq3CFH8u86qOimIhBu/RdHQ9nij8Z2LNY0qNoy4g8bkkH5nxpKDSwUOLDjJUzzuZthMAGlGirRhOLicC20KUjQ5o8H/W9DUZvTlKjd02QkXJorlnsvWVAa0ArslB0QWgmrfav8R5lm8b9q13VbvEXvREHgnakXpAYTJR1IVHs4YYUeZTY/3JTHjaqGgqfWINFfgLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UfH41nc7VtijN7ifda7dndw/GNNvHjazV3OAI34vytU=;
 b=RPoA5/tb2qJmsibtawEAYBZ50O+9WLIZ7KpOmt5Z8c2GWX2SsDFh80OppKsL+cKRV8FrfxCp+FoVLSNPqpq9VchTnLaWC4HtlkWM5FaHOXRV4LFZv/C5Ymg4sdEgMhiTHQghX0CJiXff6IZ7Nt0F70Z8siVnSB3bScN3cfeuUvk=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AS8PR10MB5878.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:526::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.25; Fri, 22 Apr
 2022 06:28:48 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5161:e54b:ac17:72c]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5161:e54b:ac17:72c%5]) with mapi id 15.20.5186.014; Fri, 22 Apr 2022
 06:28:48 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: master/kirkstone: ERROR: Nothing RPROVIDES 'gps-utils-python' (this
 happens since tonight)
Thread-Topic: master/kirkstone: ERROR: Nothing RPROVIDES 'gps-utils-python'
 (this happens since tonight)
Thread-Index: AdhWEcmaxdyqAh8QTjq9eN9vOhZu6A==
Date: Fri, 22 Apr 2022 06:28:48 +0000
Message-ID: 
 <AM0PR10MB3107E178E69B3D58484BA29A99F79@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1abaae94-2a91-45aa-7b2d-08da24295c2d
x-ms-traffictypediagnostic: AS8PR10MB5878:EE_
x-microsoft-antispam-prvs: 
 <AS8PR10MB5878461C45D941EF1E33721799F79@AS8PR10MB5878.EURPRD10.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 DtXbRK3P1so9gGqqMNxW2qqqhkJPQgzTJo4OU7NmRKodiOmW739kS0H4b1OitOPn5WDikKeCXOWoxGiN4L44pHOf6T0OrspIy1YPzeWFDxzIjWgKy4X1JY0I2dBairXI9K2djvyCd5Jn4yrE2cuogA+xSFyW5/QcOs+kQBA9p2kVkGiQZ6oR2HfYU9YugjjLo3f8AvUYahbjeE2wi8lhrZXQVuFK6ZsWOAAs1GpJSuylKHcJY4166lxxuf+mO4NXj4/vfXgdezVa+m3J7qqEi4xvbw8AIcW63b2lEHmuISBaNzZZrd8dv2N5P2LdeYNYLfCTDDyx3JfPePv6yKXOcWaGjS/wcN7yDCVFYf+pCi6PBkDwKKzx+J5cfkwCMPPdmkbq1qk+Bkaa0jeg4laFetQuzmyz/S4I8/Hfy12IAsDV4Q+jRWtETKK7sAvuWgpvSfPEPGwTtc2QvSUCofCP4yKBJqOILmAnfBzicMf4fhMq//M/E9R2/Z+BWWQoeoVvowTNbQy198qAdRHkPhFCQqvKCcHmaK2Mo7CGQvVx+BxrCHPSUX7lg92aOWz+D2Rbs992Xrc+6Qg8smHQvyYRK3CQDEKuZ4wCS0O75NVKTIZpnJB7S+w6gR+736fsF9X56UoC8v5Bp97vAM63lVi8A72Fv+0/m7vEdX6JIxahTFTIVjcGei2/gdK5Xs9s3uRPCTm4sWJ4Ldhjc/Ctfbql4htb0bF5L4WAI1hCmd9LYL196QV0LzrnKNwZTUTn4jD1rwVJOLj/NcM5ZyyHwg4j/q8p4vVIgJ30P/YoBhI3q7o=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(366004)(376002)(396003)(39830400003)(136003)(346002)(71200400001)(64756008)(66556008)(38070700005)(8676002)(66446008)(122000001)(66946007)(316002)(66476007)(7696005)(6916009)(86362001)(508600001)(966005)(186003)(83380400001)(55016003)(38100700002)(9686003)(2906002)(6506007)(5660300002)(76116006)(4744005)(44832011)(8936002)(52536014)(33656002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?TYI54KPy8YsK7Rz91Lq732bgsertmMo9zBn/ExTHin0PVkC4Pw7l40Hpgsk0?=
 =?us-ascii?Q?l2pQbdSDDbf04+Mf+yFnjekKteKB0QGmFfzSVHnKEwu/Vl9kBmz6okzG8zbI?=
 =?us-ascii?Q?a+E+pZevld0/UvFC6NVEQM3f+l5Ab/p7xu+W/YeCGSjFU8ayPX/IZi8NOfPs?=
 =?us-ascii?Q?9Ks315RA8N5LJgGWDJryKew3gxHv0mpZIrdW1Hy2TTmHUIkEgqW/NWqmj97C?=
 =?us-ascii?Q?CqkarcX0x+sg9Lyz9/2X23nHO+P4kPMuvlAJ0Yt2VHye2fqCyAwldQ8DaO0w?=
 =?us-ascii?Q?vTyqnmYGrgEUbijJ9mh0RDTPpoL6J75iSSq2h0pJ+gm3TkH5as1nTk8oj4Kr?=
 =?us-ascii?Q?Ds+3Q9zshmHqjDVIUzlTyNdJ1srzwyPy+Fzl7bXWPenAIYbRtfKD8z1KhRyC?=
 =?us-ascii?Q?7CLLD4IEELKiyZBwo9JW5i1T3rgVwaKBNIq/riRbWoOjpiWEt1GnrubjCeLA?=
 =?us-ascii?Q?aay9Pygk/G4A4MmaKItyq6ZDG9yQb6bjEVssTaIqJf7dc3dDF4KDCZrrPXp3?=
 =?us-ascii?Q?jH7CZBUJLUNGf7IfnPG4qda4as/7cPBHfWEVKajmJt63USOF86+2EjUT5WB7?=
 =?us-ascii?Q?DeC977QykuhLZwkh9FEXHwxd+qa94swf8tPD2xLL4Xmj1Zhqn4x8sKoji4Ks?=
 =?us-ascii?Q?Ii0eDwnpDQLXdEA6Dkvdh7VhiQs1tbRVMenL8fUgYDdPhUE7QG6dhC8WWeje?=
 =?us-ascii?Q?FMoYuOSUDTH8egLxxnxzva+/hrK/baKIhHvOdk8/j17KB9vnnDBlcTo7MXBP?=
 =?us-ascii?Q?BmtvvBuilRiZzw4vi8rhL5t0BKVeXNKJMtnVnkUeB2id/IEkY8iQw+vN2zLR?=
 =?us-ascii?Q?96YrgEod4E3VlSHlTJtwoju8YCKpaSCkAhUmD+eAGC+9cBUbFdgPzqSc/mLw?=
 =?us-ascii?Q?AvDoEQZtPrKQdVXCH3uCpaxN5y2OpVusotASlrLngpAbpePm3Ldp0B2ROTVE?=
 =?us-ascii?Q?yYrVeyC0HzNXmXiA91+rEuNurGG/3zEmt0B9KM1o53t4xejZshP1KYVq0Gdi?=
 =?us-ascii?Q?VTqeyJOkAZlN7DLkb7pTH7G+5N8xix5U2lNyKQjcqRlovRDV7pnvp0NIHfe/?=
 =?us-ascii?Q?lRJFrN+0o3xL3hE7oxyHL9CWHR9ByJxSy6QXSyQlv6xcidtcL7YDgaK8uxKo?=
 =?us-ascii?Q?0RYQ5BCBL5GiyD1TzClfyEKYGonsJpds5t7RF38c5sQL3zrr+X0FjdBTA+L2?=
 =?us-ascii?Q?r5QejP0BOcOsUpEI4nZ0WKBi5bg4SYFpHv3xncnACyqNkyhigXUaSndDI5Nw?=
 =?us-ascii?Q?WNq8+yr6TekoYLTI22yY9IsKOwrABaRoGsfADmpRMSDOSG86gBEp2sukrYly?=
 =?us-ascii?Q?ikyUt7EGE/Ux7nR8RIFvD/jYYkbuz5GUIvwXDaWB1F+mccEqpL6NSJU9tLMU?=
 =?us-ascii?Q?/5+h2w5WBvW3GAxFJ+egOrpUthdl1lRAxAIECQsbwc22RaKEKCdzZgp4YMII?=
 =?us-ascii?Q?G987Y9sGSgMxTucbv7RWMsrrhFVvoyRaRICFCGxRKWOqRiZ4NgAWRuG4Swhg?=
 =?us-ascii?Q?TY2034GWfTADx/bUo4KKAeklLaTIgTah9+YTCNBUWWKkoVVUA4pUVZPYTuur?=
 =?us-ascii?Q?VMyOjlbqdy+jEn2j7q7MngjPfu7dbIfNQnSPgJdmXP+yFL3JOejeNiDI41f9?=
 =?us-ascii?Q?diOOYrDpGLkASPvXookgAHM1QQ9dh1zQrztCoSDMahtX4/NlAge/8MIiwSOb?=
 =?us-ascii?Q?e/32wfExhYqAtdS3fBInyjDrwY9ZRUuy9bZ1J5bv8vBglEuUMkBw8OD3B6Pv?=
 =?us-ascii?Q?Vbf3alkuB2dCWiVniQCNzB/AQr05hX/zAy6ZN8MgAjd33X5RJRxmAf5ZhVBq?=
x-ms-exchange-antispam-messagedata-1: Fe2Ah1c1S2d8KkoY293r9ta87hdx5T6yBWk=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 1abaae94-2a91-45aa-7b2d-08da24295c2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2022 06:28:48.4465
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 PrQoIgowd6KRPCALy4yqiyaJ7yFwxFsZvTSFR8P1tKpVv3wxTNEjL6eWPJ9W15xp9Bir5nwGb6elCQ+l1weoUJctwTqGB9h5EgPOWwB2eCA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR10MB5878
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Apr 2022 16:52:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56839

Hello,

in our image we request the following packages: gpsd gps-utils libgps

Since tonight there is the error:=20

ERROR: Nothing RPROVIDES 'gps-utils-python' (but .../yocto/meta-openembedde=
d/meta-oe/recipes-navigation/gpsd/gpsd_3.23.1.bb RDEPENDS on or otherwise r=
equires it)
NOTE: Runtime target 'gps-utils-python' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['gps-utils-python']
NOTE: Runtime target 'gpsd' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['gpsd', 'gps-utils-python']

Apparently it is related to the following commit: https://github.com/openem=
bedded/meta-openembedded/commit/667219409fffaf3690d5e7c9b60d17d2b6783d6f

Does anyone have an idea where the error is?

Many greetings,
Matthias


