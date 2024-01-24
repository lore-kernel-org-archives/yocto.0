Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C6D5C47422
	for <webhook@archiver.kernel.org>; Wed, 24 Jan 2024 21:00:31 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.53])
 by mx.groups.io with SMTP id smtpd.web10.35496.1706130029090390478
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jan 2024 13:00:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=k7MOFVPf;
 spf=pass (domain: siemens.com, ip: 40.107.104.53, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RZMOayeox5nQbH6S0BlnpLUpSY0AeSHAYlhjSh+HxDKx4OK/UuMa+uVnRRjoe0zh1pel2RSfPzmGte8VhowqabTpXNf4SCb4rK77YwbhGmoSe9IQ+NEyVLMrv1NelH1nZ7SDAFfN2/cDfZNwifHlmEQiHFIlVcUW1xOMpEtJobXWCuKGud8DPAqBKj61QKpa7BRTyZAxlBmWcaOlkkzy/Tp66YRJSICWiigmM88JPCW+WB9Ama2JQ27Lo6R4VPkmSKJb8YVtMJ1wm9DGI3HZfirfAVYwv3HN+OdYj15cp1LSikWhr1YikkSZKoYRcG1nh45BoQHp3hVA/Xcpdx0D+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yXsgNO4Ibc23m4TlirCWcT6ib+6WJ3XlGQtY/JObqoo=;
 b=fHfbddRBjtwduibXHo2+3rRoUFEN624fE7C8b6QurhKXvk+bGUI6kWachNXnO0LCp8p5xZ4NswU5U9JggSOKdSLKW77dzVDqfEBtFj7WXXdaZ+TN4DyaqZEQEjzsQ9VzbPRYMXqWc8U+VbYNnlMJbSyLDnuPY1BIZdAsbw6lckpWfM8QCQRwz7FFPiB8hi+VaFd7bmS1j1p+lrwNi7yi5TfmNavg3YRJ8zRQwJyRQRmCvXOPotik1044sjCdYT8YAOJseBMjLuLijFFMA8c4rmfjz0fmeCWNAWkHosCNL8rLznQnCWhavxpueQdp5BVOOTvyW7k4lvkKXPdHkW8AQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yXsgNO4Ibc23m4TlirCWcT6ib+6WJ3XlGQtY/JObqoo=;
 b=k7MOFVPffxHxU4BDrGuDFvxmjMLGEYzGq1Pnn1ZUlLgDm6vd52FnRfcdKKrFkatRj8mP+eqCkQWsPBJ6R5dnpOkc8j83PWni4kQOIIQHG7gcDtMm3e90CvF5IDDcDgjOr0SWQ+TKemchb6jT6ixmNkAqFpSYZ4q7vPXfA1nE7PENMgCzctuKW5iohxuaZ14YTsN1sUAdA1qm/1BsrDC0/rxNs9j8+y+GWURkeR35YJbjl/r7i2WhTtcgVYdtE8CMvpPekyjdx4k3rnuPjYYKnFQL/RirxmKmO92D41TnwR4Rvd7HMENuKFo+xWaHUvSUAoDKRCyXuvkt1fbwp3L9rQ==
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:479::20)
 by GV2PR10MB6720.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:b6::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.37; Wed, 24 Jan
 2024 21:00:25 +0000
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::c496:afda:bc34:6b5e]) by AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::c496:afda:bc34:6b5e%7]) with mapi id 15.20.7228.022; Wed, 24 Jan 2024
 21:00:25 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "Marko, Peter" <Peter.Marko@siemens.com>
Subject: RE: [yocto] [meta-virtualization][PATCH] netavark: correct PV
Thread-Topic: [yocto] [meta-virtualization][PATCH] netavark: correct PV
Thread-Index: AQHaTwIuik0DdhfsfUysen3UD5SIY7Dpcn9g
Date: Wed, 24 Jan 2024 21:00:25 +0000
Message-ID: 
 <AS1PR10MB5697F63BE2AD7DF6C3157AF1FD7B2@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: <17AD61CD276437E0.23445@lists.yoctoproject.org>
In-Reply-To: <17AD61CD276437E0.23445@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=93fd41e9-ec5d-49e3-bd44-04eaddba1477;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2024-01-24T20:59:44Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5697:EE_|GV2PR10MB6720:EE_
x-ms-office365-filtering-correlation-id: 1d7371ea-d643-4c3e-4af2-08dc1d1f7ca5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Zc7y4bByy8lonYI7UU8lprITnsEEcGZvhzqOk85memshU827G1DTCLU6JlJUu4Csu3e30At+M/QhDZLN+4FlzD46AWDgL4Zf9l2zM+DtN6pWMZZ/GsacTHpzL9buLCH6UfxFi4p6kv54c3hzAHpAysUzLeUkx8WJkfyPA47X+5Z2HgZ1fd+panSaAHUgEHRetCbkfwAGKTlwFnkARgfkgDIOR6OfrGqOE3Xu6aHMiRM/05M2piNRpr78HApzBihDDB1+5UvoqIAbmCvIIyCUw1cDu4o2opRc/701w6CaiMuTrIM4+8bXDrRkYVdbu8EBzvaAQDSP7Y/+QdSYcwr/rA61HUUcA+4Qik38LayZBUhzSmyGUWGoN2buZNkgzkYnsw5Zp/icrrXDmosY9QbLBqYOmU3QdFjNlATvTzjAneDPDRaHnI6IdhXB6PgKLnlNyDx/teHeTGyCRsAfhqbb20bzhf70HwplPe+pein0/xKJn2QZsrd/1wQFnXiWO3Sz0byH1D3xbcSCMjSg58OjmeKYXT9oxV01bHxBr9jkDFNa5Iaa0wuoZt/CeXBx8hxztQwquHwew4RUZhELEYxSKg4gcZRmwjfsB/gJWV39QKtPoIyxxK+CqZsSi3KC3JFx
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(136003)(396003)(39860400002)(376002)(346002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(86362001)(33656002)(82960400001)(38070700009)(8936002)(316002)(8676002)(64756008)(66476007)(6916009)(66446008)(66556008)(76116006)(9686003)(53546011)(6506007)(83380400001)(66946007)(107886003)(478600001)(41300700001)(26005)(55016003)(7696005)(2906002)(5660300002)(38100700002)(122000001)(71200400001)(4326008)(52536014);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?a5pHx6CbXN7lPCw69fBcxfYbHGndgRoof99N3tUITVxDP4h9iIYsxRAaYCTR?=
 =?us-ascii?Q?juoP2rJX/CsLvSjAtmqSTk4eDQdS6MzcycSpTJaUQXEBJc4JsFCNczExpllD?=
 =?us-ascii?Q?jVQknlBMRPEgpbzOnjiDavh+OVFqZ/0jcOeKOkioIKPv29gyo2Kb5GAXJhpw?=
 =?us-ascii?Q?U4CVAHfdwy/pGoPg9vgbO8oXutXjJAGpPlJesaYE6AYgDFghkjl8isZWAFsJ?=
 =?us-ascii?Q?YFwGdVjUhtO6imLJqpyBQ6b7sPSCymHIXrD1inTvtlDokKe3UjCJGJ824dvY?=
 =?us-ascii?Q?MKsnlIap7+bfPHju7mr2UjRfx3HkHgJFwsXSg/nfD+fEqgIpdfnazOGyew4F?=
 =?us-ascii?Q?Vi3FA3p6dvvvpxW9r+g8FvFtDTmD7EJxcPj4Q0+/KjFJDvlqPTAaq80mqQ6h?=
 =?us-ascii?Q?1Mkl+GAMnVYwqyRMIWGUlGcjhtVpUhwO3v7PA9YrbgYCsLLxfPYoDFiIqfRj?=
 =?us-ascii?Q?7r3i0exDyv+4FY2U7S7+t/1F/1czIWJb5C5vZPJ6wAiVgE0H8U2FntbULxxk?=
 =?us-ascii?Q?hrpH1E45C1gzJvsPTyT6LkefpLA4NH3EMlPkfy5Kduop9Kyaie1GMQshbmh1?=
 =?us-ascii?Q?OyOfyGfJ4hrzIlB6vXrAmqth5KCaYg2PrKf5pI0exWhGgQJJUIfV7TOgXrsB?=
 =?us-ascii?Q?aiGl5FjYji/TdrMdiS06RqSDlGBmtZOtXPjElPiur/WTe6j66MtwmDbqCpqn?=
 =?us-ascii?Q?azC/ouS1QyF8fcimDILA4+U1JbI0fP2KaMPSZkMP+JdfccBlAPEyR77HMg7Q?=
 =?us-ascii?Q?YScawJU58S5FTfLefILJrGzVV9/EeVXGeS0LyQsEVVKflGV1NCMSNB7mxpK5?=
 =?us-ascii?Q?Clbo1i20zsHser67FvD60W5BS+WTSJrKR+sxnIZa8NsAI9P9v7ruVm/E2R/e?=
 =?us-ascii?Q?OfE1M2RyBKcf4HFrmemB5zmer2zqDoy6QXDv+MgIWNxghDUtIlNDpf3WqPOL?=
 =?us-ascii?Q?/LBsSpu8hQ2OE3OC+Qd51GQJ22wOHvdVNR3DSNE3niIlPWrgBYkLWHA7MAWY?=
 =?us-ascii?Q?hgM/MaHqHDiojCadRV9VXXPdsSjdVRI9m64Y1QQVLqEfNG9CNgYTegDeQqu9?=
 =?us-ascii?Q?fB0hWcNFluYlTzFO44J1y5sgDE4NwZHG0Cdob2hABw2TgOUbxCL/uGLk/aJN?=
 =?us-ascii?Q?tNzUg+siB4uscN+KuJ3qj3YAYROn4Y1ILWcf51jaLazU8n1jcOU2KosKXU6i?=
 =?us-ascii?Q?eWuzFhFgLMswl1oE4uTaOknGUx7xOUtcN1QB694JFtn+j/k11oLA3Sb4HkcO?=
 =?us-ascii?Q?U7p8qw63bukxeNT1LHQHdiRbMW9mu9ZYh0D4i27VdsIoImytK+4KWT5fzokE?=
 =?us-ascii?Q?ENdZX4/oC2dsfPmqBtiZKVMjIHOG5Cr/YthDZdQi9b7DZyg8iGAKvZy/G2v2?=
 =?us-ascii?Q?k+l4OEOlMchiB1fHJRXDPTt72hPdBRlexqvGmf5GsslnyMgtjWdiNnWhyfKm?=
 =?us-ascii?Q?Qwkbyf4Gf3FpthLxnBmyTf6+b3dwoqFUOafI+xHA3ePRjcdk6W88lpswGzsI?=
 =?us-ascii?Q?1waZ98jA2kYmS1BOLjdhlkUbDrmnOSIDUsa4zIg6ucaQxLZgjKdJ5Vjtbq4b?=
 =?us-ascii?Q?IASB7zZm075HgGi02+Ie8QUS3M+ib6tiTzoKs3EO?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d7371ea-d643-4c3e-4af2-08dc1d1f7ca5
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2024 21:00:25.1633
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +KE/g6KuKqZtycw/oXu9l+SZRIJB6a/1kdydkSPutV5gPQjD3v1stThXdkyOkJVLT1aRLVRAIDFzqHFrY03stg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR10MB6720
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 21:00:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62271

Ignore this one, I had notes on an old version.
Peter

-----Original Message-----
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf=
 Of Peter Marko via lists.yoctoproject.org
Sent: Wednesday, January 24, 2024 21:15
To: yocto@lists.yoctoproject.org
Cc: Marko, Peter (ADV D EU SK BFS1) <Peter.Marko@siemens.com>
Subject: [yocto] [meta-virtualization][PATCH] netavark: correct PV

From: Peter Marko <peter.marko@siemens.com>

Current hash is 10 commits after tag, so add +git to PV.

Signed-off-by: Peter Marko <peter.marko@siemens.com>
---
 .../netavark/{netavark_1.9.0.bb =3D> netavark_git.bb}              | 1 +
 1 file changed, 1 insertion(+)
 rename recipes-containers/netavark/{netavark_1.9.0.bb =3D> netavark_git.bb=
} (99%)

diff --git a/recipes-containers/netavark/netavark_1.9.0.bb b/recipes-contai=
ners/netavark/netavark_git.bb
similarity index 99%
rename from recipes-containers/netavark/netavark_1.9.0.bb
rename to recipes-containers/netavark/netavark_git.bb
index 5249acee..9d3a1172 100644
--- a/recipes-containers/netavark/netavark_1.9.0.bb
+++ b/recipes-containers/netavark/netavark_git.bb
@@ -5,6 +5,7 @@ LICENSE =3D "Apache-2.0"
 LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D86d3f3a95c324c9479bd8986968f432=
7"
=20
 SRCREV =3D "167e2e4f167cadc635bbacb5331674b67787d08e"
+PV =3D "1.9.0+git"
=20
 # It is possible to fetch the source using the crate fetcher instead:
 #SRC_URI =3D "crate://crates.io/${BPN}/${PV}"
--=20
2.30.2


