Return-Path: <peter.kjellerstedt@axis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3116AC77B76
	for <webhook@archiver.kernel.org>; Fri, 21 Apr 2023 23:16:05 +0000 (UTC)
Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web10.27122.1682118959244224825
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Apr 2023 16:15:59 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@axis.com header.s=axis-central1 header.b=Su4Y190V;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1682118960;
  x=1713654960;
  h=from:to:cc:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=rrOa5n39eHjNgymiwxAZu2Zg6mjP8HaIFCEcqj9p36o=;
  b=Su4Y190VWOMByhO/6EMjTcBmB2Dmc9tKUXvfTI97/AHZkGjgCMCyZj41
   MG43/tsEQreKDmfVKBtnm2Y5yEjVIfxueh7+NHKTS291+GWR0Dq6lfLCf
   Gjsirck9FELbGaGHfqay96WFkZL7NoqlGCVFm3TcI/xRvv9sTYSsitHni
   ZH1JV1GjEwSJJpVUkvxpbJwdwhSZ87S6j2u8m/Qx8+ZX2nqNC3JVXY/l9
   TZ6lIc9ewCDidOph1ztfDfvngPGXcQzsP4Th0fwV2Iq1TdMe9pPkcDeAV
   c+lpJQZK7/I78tR+pDbpLOYxEWcaNAl8AmJxTd2IAVFn1nYi0mPd63dgx
   g==;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WnIomvyqpkJNrfytre2xNnHRh/ns6LFvIWarYUs6e1pVlSze0oLcRGNcX+GT9JIKrmtUCnmiMdTuDJVo+nutRd4IMSaY1VCgaSSSAqMaL5gLVBwUZk4N/xqFhpTKgNGxiM7SIsRmVJYdPd1nG/UoykpvMiYijrbLDHo4Ql3afE+9LgcRvXs6AudZlXwsmurRqDcZFl+pZb3G6ZdQeekP8D8T4YKYAfbE6Z6t/MQFYF2GsaSWFwHyJ2bruDpqQ17a6Gt6jZu8ZDNZC5+19F1o4WrsyOa4GKwZXutdif+KqTwmXCPsgXRcOQayxameJ5F7Ew3KEXioTHWVIa7UhODiIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rrOa5n39eHjNgymiwxAZu2Zg6mjP8HaIFCEcqj9p36o=;
 b=EM9C0j78jE5ljBUEvYOvNuWopcmuBQMkxdwCOdyEkgpuowxrhlBxvDEf7pfAAq7n0bZ6OjXqomDZ6tt9ScyPmmn26S/EbjCmAYC2kFaws/qwWx9j1c//oPwDgknA6CTVzhSAFMWT6IbmGcSi7u+mO+MiKwCriVQfOTUoyd2+590HILArtuKOTX7npVFvkYCGDfYNmcsDF/J6k5yHu3N7PgVEwsgyC6ZStNZGKis23UlOlna9F9lkMzN5ZvXdvo9EdlN2by+flpnbXvnE6kHYvmlUu9b61uaZF9ic30Gmy85SLx6Mx8bfLbUobvizJYJKw18w7xpElg7mudzlUDQs8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axis.com; dmarc=pass action=none header.from=axis.com;
 dkim=pass header.d=axis.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=axis365.onmicrosoft.com; s=selector2-axis365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rrOa5n39eHjNgymiwxAZu2Zg6mjP8HaIFCEcqj9p36o=;
 b=ct74/YYAVla6knf/4ofh9QpzMyvn7pXgzPygrPSe9DWirbwAUJKQ/A03ll973zguliK95dJeAPIM0m85+a/F3rrA5hXUTD/zHVkmUl0tNkAXruzHzKCEdiLbKsPnhII5c5R+qKG7rAs6JXRf4W7gf9aSjaFUy05Uij4N0MRnRgY=
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Armin Kuster <akuster808@gmail.com>
CC: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Subject: [meta-security] Unnecessary/optional dependencies in tpm2-tools
Thread-Topic: [meta-security] Unnecessary/optional dependencies in tpm2-tools
Thread-Index: Adl0oqXsYzE/YoRmR1KFMoxuzcw8jA==
Date: Fri, 21 Apr 2023 23:15:52 +0000
Message-ID: <DB5PR02MB102133E92A506FE021382BDF5EF609@DB5PR02MB10213.eurprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axis.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB5PR02MB10213:EE_|DB9PR02MB9897:EE_
x-ms-office365-filtering-correlation-id: ba57b0a5-bfb7-4faa-d9d0-08db42be59f3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VokzesLBYLPzF/yBtr0t3cRCxuwITujEr/BOsmdkMqbY36ryhjrYvjfGBwf9AC5djFcVi3K6nWy02szrioB8wA29M8WbewYQ7fW6OvEQUSIbYGBIOV6ibDwyRc4bBgyjgSSqj4Tqj+HCoJc5njM9z5T0y/UFB0Rrnaz0qRPJkizKqISHM+gVZphXuslFMARC9u3URzidNolTiwEuGO1QgM/vjQKD0P66k45cfVsBK7aX31AXcN+ywP4m3iHuOC3OWn1+vgRtSuzNAzVYXTDUqfgHScbeGd5/Anrf2HHTiKWmyUVI4OXVu/gbHXhK21ROEOoLVoH3d3VP7VL/vRUQ+2YABSgkcdUHRFTq8voyIrjussviJf1Ouwbd66rdYTrWd4IFUTP2qNfJNsgTS9yWk6UuoQoYEE12J3pPXiz6aA/zPk4lCx7WSnFkiYhR1Ai09riZ5F9Td4ZEJJhU3NkjVBgyqOOcEx1ENXYErVeJ0CBBnZlkO/JbD7htpprdCmjlgVgc5qDQR+GYcd/wBrrYq/jFXcrUc9Q/h6QwB98/ktrfmc8PxJPxcKTywzWFW39ZnqigeotDLTzl/6k6IudSQ65opQ+ohnsxVmFmLqGkMtDRSjXtZVCEAZt5P4AhgRb7
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB5PR02MB10213.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(366004)(136003)(376002)(396003)(39860400002)(451199021)(33656002)(55016003)(478600001)(71200400001)(7696005)(83380400001)(8676002)(41300700001)(76116006)(38100700002)(122000001)(8936002)(66446008)(316002)(4326008)(6916009)(64756008)(66946007)(66556008)(66476007)(186003)(6506007)(26005)(9686003)(86362001)(5660300002)(15650500001)(38070700005)(2906002)(52536014)(44832011)(115813001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zKSxevdK+jK1MiI7ctVVseia/NfhXcqLIvPLdrlkoerGFVg4B5KWeOsYswP6?=
 =?us-ascii?Q?ZCh6MQ0nyOYjaP2QlLEi/1l4CwwwNyrqgZWwATHRAe1zu+5hbA8g5nbAEQ+y?=
 =?us-ascii?Q?WFOwccHNQ/Wgtuvr+lH3BWumxwThk0C4oQjBPngSoPVkzj42tXSUjFdzHWpN?=
 =?us-ascii?Q?wPyb26azoKeUUh8x+GD3cRSbe0LUOlo6P33rvUfc/ZMv7iGq9NYkAzqdnQQl?=
 =?us-ascii?Q?0MiTnBxhPjhyi5YOnlJlZvgOECJzCFNiyB+oe1atCT61W0aFpEOGxN6avgP/?=
 =?us-ascii?Q?NW0pY5KwpRkKQo5VB41CqjOv4CssKUC6NLEoMgCZJ101h+xldg3NoNX5maRy?=
 =?us-ascii?Q?mSaIqOdwA8K4cWOxxKPEm4wjHu8R3QE1ZVyZLST/JoUf+lNGVmg4xBo7CYzF?=
 =?us-ascii?Q?HrIsfvA/B2qxa4Tv0wRIEt5TTQ/+qNmpsDadLA9/0Na9K3O0HRCLvsZgsYKm?=
 =?us-ascii?Q?57l5eRagl2aguwYgEP8F6myGdDF9lm4JdJEkRTtYmVEITCCTETsl4uLrces9?=
 =?us-ascii?Q?d1bkx9Im9p3Ovyur/ddIfbOv9ihdmqftq6JsjN+C1vwybOHeQAeJoxDZKDX+?=
 =?us-ascii?Q?aayufpP4qeGF0jrpc2pQhCz25hhi8AuN1UitXhp77w3WFUeahBxM5ijtVMof?=
 =?us-ascii?Q?3iW4ZDARnBhlfsZue7NzWPHfBG0DqiAmtXVhKgIdiwOc2c2u/TPGN+pcEvpE?=
 =?us-ascii?Q?KAcXxERoaTvTMRqcLUvScmWZaEnbLlEJUZNIJpCQTTQqyfy+FYfNWSuerr9c?=
 =?us-ascii?Q?YvTUHIG4LR3WcewqY5tewx5C1a2ypxb1Z+igBZi62m9wciWF9fVaTnD+EpDX?=
 =?us-ascii?Q?NGpcDFuZ1IkPPIU8xF4VfaZL2wof4Ov6A/nTaPiNFKmwwWCsv7ML4nDwudUA?=
 =?us-ascii?Q?5G8ps+jVteE02PudqpjJdJbrFnohxK5lzVD9/uyTdV/6agBTVNxiKxBXn9DW?=
 =?us-ascii?Q?WepBLXpxSTQPcxi6Zv4pYfU8HYSeX2s9/hDzmpY5is0zDbdA5/7EnNaD30aj?=
 =?us-ascii?Q?eGMorpsiHROdUgGM1A92t3g72Ah/sftTviWHi+XPCK59h2zQ/f6Q8EgG+Zk1?=
 =?us-ascii?Q?kffMmugvqVTHkQ4t2oSmEggFmjsZCsYvs05ZXZ0bmDTVRiw6CeMlK1r2H9a4?=
 =?us-ascii?Q?lYeACvmRtvm9qNPjKwyI2FDSpeyU57Cqt866xVi2ieJPG1LsYRZiR0+sXOww?=
 =?us-ascii?Q?KgcgILub9H1bsS91JhNo6uDOdRwEGHXfWxM7EugRLDbXOSodT5IYtCTT7KLX?=
 =?us-ascii?Q?NEHAg2+jsV9IbHxbuT4I/0b27DY6ZX9ogafoQrTg89itM8IexDwTrj3P1w9D?=
 =?us-ascii?Q?LqPZ4Y2LuH87XMnWYVENwL+3G5OYmEDotdFU4BI1r00pQhB6fpkicyIPxw+3?=
 =?us-ascii?Q?/YONlEQxnUr7PaSPtRK6hH0keV4aOVQEALJKepwlvGqTUtpE5RYZekCxf4tr?=
 =?us-ascii?Q?xmOVqQWEv1W4go7qjUeUPW4jsMeCbQfgIg+pWxTeMbziR0QFgzQo0n6N7P4+?=
 =?us-ascii?Q?urLVGW9hgQtg6EFbM1Z1Y6Ztb4tHe8WrGQ1rrh1yJD4TuMFRuIhX5ZQ9DYPF?=
 =?us-ascii?Q?9n+J1R8BJj0srFlcA8s=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB5PR02MB10213.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba57b0a5-bfb7-4faa-d9d0-08db42be59f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2023 23:15:52.3086
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ALmOxZWw9ckYL1rTn6/vdIVAUFgdx0+HFoNuwWzNLI6+YXRz9ju7Pgmp71xei7ad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR02MB9897
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Apr 2023 23:16:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59758

I have a team that is looking at starting to use some of the=20
recipes from meta-security and I am currently reviewing their=20
changes to our layers. In a bbappend for tpm2-tools they=20
removed the build dependency on tpm2-abrmd, which got me=20
wondering why it was there in the first place. After doing=20
some experimentation, I came up with the following patch:

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.5.bb b/meta-tpm/=
recipes-tpm2/tpm2-tools/tpm2-tools_5.5.bb
index ef73238..8119bb1 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.5.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.5.bb
@@ -4,7 +4,7 @@ LICENSE =3D "BSD-3-Clause"
 LIC_FILES_CHKSUM =3D "file://docs/LICENSE;md5=3Da846608d090aa64494c45fc147=
cc12e3"
 SECTION =3D "tpm"

-DEPENDS =3D "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
+DEPENDS =3D "tpm2-tss openssl curl"

 SRC_URI =3D "https://github.com/tpm2-software/${BPN}/releases/download/${P=
V}/${BPN}-${PV}.tar.gz"

@@ -13,6 +13,3 @@ SRC_URI[sha256sum] =3D "1fdb49c730537bfdaed088884881a61e3=
bfd121e957ec0bdceeec02612
 UPSTREAM_CHECK_URI =3D "https://github.com/tpm2-software/${BPN}/releases"

 inherit autotools pkgconfig bash-completion
-
-# need tss-esys
-RDEPENDS:${PN} =3D "libtss2 tpm2-abrmd"

Motivation for the proposed changes above:

* The dependency on autoconf-archive is only needed when=20
  building from the Git repository (and it should really be=20
  autoconf-archive-native). This dependency can probably be=20
  removed from more recipes that now build from tar balls=20
  where they originally built from Git repositories.
* Removing the build dependency on tpm2-abrmd does not change=20
  the output in any way, i.e., nothing is used from it.
* The runtime dependency on libtss2 is added automatically by=20
  bitbake since /usr/bin/tpm2 is linked with libtss2-esys.so.0.
* The runtime dependency on tpm2-abrmd is AFAICT optional. And=20
  in my book such dependencies are better handled at a higher=20
  level, e.g., by depending on packagegroup-security-tpm2. If=20
  it is removed, the instructions in meta-parsec/README.md that=20
  references tpm2-tools may need to be complemented by a=20
  reference to tpm2-abrmd. Similar for the runtime dependencies=20
  in tpm2-pkcs11. An alternative to removing the runtime=20
  dependency would be to instead introduce a PACKAGECONFIG for=20
  it, but I do not like PACKAGECONFIGs that only add runtime=20
  dependencies.

Bear in mind that I know nothing about tpm2. I am looking at=20
this strictly from what is produced when building the recipe.

Comments?

//Peter


