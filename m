Received: from EUR03-DB5-obe.outbound.protection.outlook.com (EUR03-DB5-obe.outbound.protection.outlook.com [40.107.4.88])
 by mx.groups.io with SMTP id smtpd.web12.6464.1630587300254885058
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Sep 2021 05:55:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=icW+v1ua;
 spf=pass (domain: optimeas.de, ip: 40.107.4.88, mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eqei1+iLiaZZXL0NmbqqXJs/+Xvd1PSRrd20TCwYUZufMAuFM0TRIHTJ8giK/x3jnfzTSCvaDB06VBgGysbf8ufsvk/jYvswcevI8W+ZRENUabcDjHgstix6uGBvh4pBH0XE0Vdo+nv4RdvcuS3cry7DNWqFU4hHi+Vs85jeBvZ8ta/t9CsCsEDK3XTd+pJkoeyBkqDYXNXBA1zG8LhH9C/2ak+Jt1+M1UqirqWF9m30AW2jJqtElZbZLJy6mL6QQSU5UJkVTOyuS2oMzvd6rHQeJHOSlX+oRycNAQjHkXnsev6wCS+mEeUxeJiQ79EldXK6v31WBKUCu2GrcHOYXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=RARYVUZAPTRlBK58kR9BERCaZGJbIzm2KdI+1l0LkII=;
 b=girvJbhSLh50ZMoZJKKf3PuQv48fwhSAwsR2qeq0wGk9IPm1TgWz/NaUJ7dy38PlpjR7908gkm+jLabNXtaQecjf339OGsB2cZ1vaJpHLOELU49Fqq6Nt4puy++Q2plBoF15zar3QuV5Rz64550V2QPb9VywxgfQLXm0f3+AeW7WIxcw9VEQbPfjK2KMDVPaCNqBfirCYBJr3D6YOgLOcFCG/yOTl8dAJyWBza0vP4ULzTvyERCup9rk/qlGn3tSDKNLe63EGKs293gZ2ytKL0oylofKFgQLXqZvDUe+jHZ2MhRCtgHiO+lYHoLcUeEGw+FS8Cj/fFuFMX/ekyFTpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RARYVUZAPTRlBK58kR9BERCaZGJbIzm2KdI+1l0LkII=;
 b=icW+v1ua8yCfZ2eg24wVOznddFpmH7++TdQtdTExCchtbeZoFy36DY8JREa7STPBVnp5u832bWGOPMR0o409SpddGhKmK2sG3+8+7Ta9FKyB+U8x/5KmQSSyqL7G1ijM0pR6Pd/ZOH4s0132gFaE4RhM9ywIrM4cuBtf2Z5WWig=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AM9PR10MB4887.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:41c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.21; Thu, 2 Sep
 2021 12:54:57 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1df1:442d:d6:9a54]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1df1:442d:d6:9a54%6]) with mapi id 15.20.4478.019; Thu, 2 Sep 2021
 12:54:57 +0000
From: "Matthias Klein" <matthias.klein@optimeas.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Bug in dunfell branch because of commit "sdk: fix relocate symlink failed"?
Thread-Topic: Bug in dunfell branch because of commit "sdk: fix relocate
 symlink failed"?
Thread-Index: Adef+bsvtxR1FwGdQnCwxf3KYliKuw==
Date: Thu, 2 Sep 2021 12:54:57 +0000
Message-ID: 
 <AM0PR10MB3107CEBBE29A9972AAD796D799CE9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 760581be-66f2-4a82-d0d1-08d96e10de51
x-ms-traffictypediagnostic: AM9PR10MB4887:
x-microsoft-antispam-prvs: 
 <AM9PR10MB4887AB36CF605A7FC5D61E5699CE9@AM9PR10MB4887.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:1060;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 UZ3B4EQY1MZxs47mEyBlgIDFIZDgi1qVmLDwiPKyku03up5XFUGIrnXWgI5LGoBUOt1aypqlAI2/gctXjY4jE0vXX0a4doriKNtnxJF2XUoS3KKu5zpProLZeDgecqnYi65BOFWMQaixp/cDp05ivsniD9Lis9T1Wcs6cv3urjNNibzjMbgllqt6+aKXVYPWNyxjgYWfoWf2bntVc9O5vSxYX6ZDBP5tr8dCSvXos0jONYghxTS4kxZt54Q4TMZVC4UX4aNBssIQSYowwHv+V/6kn0Vadl7qUI4JwQLNtqdesDbIK0EAkNd7XDdk3WnMbiNBTqPe7P/7fx7231RekodI+gZLNqZCTCdi0/l6XUviwKi37lJ4xzLDlaZHFrEBe39wW3BztV+aPCzdkNqNIKEIAS11vaE6Bm1RcXLYYBA8MyYyTJ7m3/EBgzhMwgv8ZYO9dy8zq8+K98aPI/gQF7rNIqXU9Rh3vCDYoxdffc43WrvpZkUwVxvvsQcQT4zm2VOFO/Y74ecJXS9t2iAmVg+LvCD2an+acaR+LngicXnNNHv1ClRk5CY7PZBE0+yz1YDrH20s0H5N87QreaAbimViVGiQnm0wNrBZemnh4XDilfJHPeAc5GJYv4bnzTtJjBgd3z1dojZNnWD2Fr2VwmlDMHK9Fp3wXjsUNnPPZlUSjs+g+FH5OGov2DevQsCrS7omICprIFRcvFxtCsB2sjDZlaJc5zLCkBVxzpwsceA08+6D1eU749lkMf1hh+IsG+StwTd1ILBWONPmxKj54NoFgESQCQYOGh5A3SFAtQE=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(346002)(39830400003)(136003)(366004)(376002)(396003)(9686003)(8936002)(66946007)(64756008)(66446008)(6506007)(4744005)(5660300002)(7696005)(76116006)(86362001)(66476007)(66556008)(2906002)(8676002)(52536014)(478600001)(55016002)(38070700005)(44832011)(6916009)(122000001)(316002)(33656002)(966005)(38100700002)(186003)(83380400001)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?NcVuaB1bfsxMpbnuNpj8urJpnexWVbr58IqNJ+4qnYLS6Z28GDA5M9tXlsx/?=
 =?us-ascii?Q?vArxEVEoA/1jKgySyWUp8dGDptklZnFzlEqbl3UiPGZz1CYZeZHzXfeDlnfJ?=
 =?us-ascii?Q?Z9In+B+4m2E1PzggDzzF8ad0rAqukkeX3AnPFbxEN3tsE2L/shrlnk2yTqIG?=
 =?us-ascii?Q?oKDEkBLbmcbU2FpB26B6bMfSLtNtoG78a5WzJBs6ru3LUh1wymGIup2kP7me?=
 =?us-ascii?Q?kR2PkX+qXtNBsJzijyoE3RGHCuahqKOCsUiRhZHqhTu60+Kt+7pHMc07da0R?=
 =?us-ascii?Q?7qAP1XeADs/l3eH22ubdTL/MWsY2Pk7DGyp1A02F38CFRL0b++Cv7e2MwY+y?=
 =?us-ascii?Q?Qwzzuq7LU2MDPHKWkfOi80ba1EnM6cVPNatjFFKB5wF0qMB/jsygLMoXSvJo?=
 =?us-ascii?Q?HtGSKxGPL8E+OP8QywdPwgYdx2Gm0W3N9W08yMLFNL11xjTGVWCToEUzuybn?=
 =?us-ascii?Q?ZcGRCibYimg8U+QQNPcb4Csqu4BX2wwPLfnHu8BoF4s1eaiEyhOXlGqxex/D?=
 =?us-ascii?Q?deJQoP0ksgT3NxMMfxf5yuWwCXXrmGCqWQvIQ/dfIKCapBabqNZcmBKHEo6z?=
 =?us-ascii?Q?VS2KeUcmfWIcFNBteS5ERTC31/u1rN6MKWSUCKWTiAuE6IofDFSmoFBX13TU?=
 =?us-ascii?Q?HMVcJ0NObvNjtNVrAqrZp57Urlmd8x+mi0ZA8fgXRPeDpfO4hhjQ6glsmZoh?=
 =?us-ascii?Q?oTCXxLAvisTYQpbXBbVa7v2/t03Rizp/dEUxaPTbq3WmIzpOa9ag/OJp7e2F?=
 =?us-ascii?Q?of35bN3UhEwd9wV4//d6dFnQZvm0lhyyqZpEq99QzUZSW5pYQbVfL0fGVQ68?=
 =?us-ascii?Q?KY/s2ShvJ9d7nq8FY7MtMxQadrTBxrgH5G5BAiI+0b99iMHiZhPApsHOwQ1l?=
 =?us-ascii?Q?v0JdGrD4iiwomVeAEYLJjz+TX8GXPI4D6WkWAwSkq8iuW3Ncw02Yp3ZHD2FU?=
 =?us-ascii?Q?1oZoksEY4EL25JdZlEMVgImFHg+3B6TgqJ0twvb+Ii9PdmXIyrGPrtCZrNMy?=
 =?us-ascii?Q?/O2JZsTQEBRJgZd8rl2ABlSjioa4djZKjRcE7e7r/6c/YDCfzy3o7owzIa7Q?=
 =?us-ascii?Q?qtsM6dvm0LIn/1y4OXVbm4HBjm0O/J9nJXGRd16eKB5JHfIJPK8s5bDViFrZ?=
 =?us-ascii?Q?r51hERdhMKOje8QYldDcfX/8bmKUrakc+97ZyZQSW+dVXTh4FcQ9xd9I+0u6?=
 =?us-ascii?Q?psGXSfn3A358nGO8oMWphmYC/1NBKoyHRC1MIbTjY/dJzYRjNnXz6NsWzs9J?=
 =?us-ascii?Q?hFdO1ABrZKXHqXQVv1jD3mvOzav2BROOmQFaOrMbP79kLcRN2QhmjI4f8Lsw?=
 =?us-ascii?Q?FvSZJx5ga7YlLuQ9mQbrPo719geda0b5c7aVGZuEtr9VA1jdSSVT1rwDBFzA?=
 =?us-ascii?Q?A5DlOdXHZ1tbP2MUtzoT7ERek2yt?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 760581be-66f2-4a82-d0d1-08d96e10de51
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2021 12:54:57.7322
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k7e7IcK2tBr6WOSqM57Amsobj3t63EfkCboyYybxw8B3GqCfv3lUAu+tU4bMfw56vU61AbkLOoGF7OLPQaBwcMafJwK1s3dxqu0hYKcKZac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR10MB4887
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

the following commit needs the variable SDK_BUILD_PATH which doesn't seem t=
o exist in the dunfell branch: https://git.yoctoproject.org/cgit/cgit.cgi/p=
oky/commit/meta/files/toolchain-shar-relocate.sh?h=3Ddunfell&id=3Dd6f40be29=
bf56a835f5825692a22365f04aeb6c3
This leads to countless messages being displayed during the installation:

sed: -e expression #1, char 0: no previous regular expression

Shouldn't the process be aborted with an error message at the first problem=
?

Many greetings,
Matthias

