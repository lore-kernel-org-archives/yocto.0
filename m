Return-Path: <rasmus.villemoes@prevas.dk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3DF3E936E6
	for <webhook@archiver.kernel.org>; Wed,  4 Oct 2023 20:51:30 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.107])
 by mx.groups.io with SMTP id smtpd.web11.5902.1696452686020847680
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Oct 2023 13:51:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@prevas.dk header.s=selector1 header.b=QZia8ccw;
 spf=pass (domain: prevas.dk, ip: 40.107.7.107, mailfrom: rasmus.villemoes@prevas.dk)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SNVYEVgMVPtGXmwNL4kxmXdFR2ZuXi+3OhsiwyhuGlCBDyXx7G3PufRlrkaPuwXYTgAGAaThTFzglFZAfrnSopppVljfsekVf3r+/3hSTdc8lIF+68ZFq2uKiOGDYyId/Hefmu90M3wU+8xElTlvDhjYtnGLWlqlGWRBx1iVBdMLIWVC0DnOQ1iTwZA/oRt9CnTPUKluTZR/QCaJb3mdz1ysxflOeAJXB4vJfC9FoJz80ZrKEXsQ2aMDA+kUGucJpcJKUsRFsyInSD1cOpJD+lFd9HshkKCoAFjesDcRaoGWGLNC6ET01rhweaCgIc8Am4+pi9V8BhkUEDuNmX5FfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eSbu3mmuz1Eu9InnX7zX7DYo2HP5sGSRJAbolZZlxs8=;
 b=ZC3d2/wOHw5vUqSW1THxZvaFFkN03saOPfOCwwuMtTTPKUu7Es/NT2S2Vg3cgl5Op+mGv96N4rchGjv35qnDbXQLykQW+9jnvOGtv12o+wTJ7lheG6IEkiV0/xYVCIvSRT/92CAsGIAycBK5sC9GRZ0HDwsDM0UwP2pIg9Vq73S/MK44FidBnGP5etWR6gCcdSm54gt/kjVNxB8u28LdjaIuLF4eXgOo4mE711tw9ZsTtl+5OZT/deL97cpzUMj9NV/j/a+hv2cHahYVR8xeL070oe1WrPND8q+i+3gCtvWtus7o843daYkcSQ6g2sOsAi4Oy2HNJHizyyx/FfhjPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=prevas.dk; dmarc=pass action=none header.from=prevas.dk;
 dkim=pass header.d=prevas.dk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.dk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eSbu3mmuz1Eu9InnX7zX7DYo2HP5sGSRJAbolZZlxs8=;
 b=QZia8ccw4nj+tDu6f4gsazSKFw9sTQOyNsZTQeumCKeYXb/9tyOvtXgQXdOWu5XBS7v2o73so2YgmyLWSUdR1CQGsUXNPkyws9zkoLPFkICCQFzoD1oDbqqk7V5VBWVvcRQrCnzXqJt1HOEyais4BByKxAJ+OurATx6JTtg8XmQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=prevas.dk;
Received: from DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:45a::14)
 by DU0PR10MB7566.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:402::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.33; Wed, 4 Oct
 2023 20:51:21 +0000
Received: from DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::52ba:4d74:6ab:aa5]) by DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::52ba:4d74:6ab:aa5%7]) with mapi id 15.20.6838.033; Wed, 4 Oct 2023
 20:51:21 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: yocto@lists.yoctoproject.org,
	akuster808@gmail.com
CC: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
Subject: [meta-security][PATCH 1/3] fail2ban: add systemd support
Date: Wed,  4 Oct 2023 22:51:09 +0200
Message-ID: <20231004205111.443943-2-rasmus.villemoes@prevas.dk>
X-Mailer: git-send-email 2.40.1.1.g1c60b9335d
In-Reply-To: <20231004205111.443943-1-rasmus.villemoes@prevas.dk>
References: <20231004205111.443943-1-rasmus.villemoes@prevas.dk>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-ClientProxiedBy: MM0P280CA0019.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:190:a::11) To DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:10:45a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9PR10MB7100:EE_|DU0PR10MB7566:EE_
X-MS-Office365-Filtering-Correlation-Id: b12f57de-3563-4483-e5e5-08dbc51baa3d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	OIt9pfKCFQEIP0L8BA4rVXm8Yq398U1iQWRzPxd8l+CzPgK1Boz6z5cCJsbs9AJZv13VLPvV+6ppB7LvSaV1BtASJ6ivHEpAGW8QeZg43EEULW3zWRBDUi1yM1oOOyBKXEOeudXQTy7wa75cxjy2jF5LsjWer8e3kfszci85JOZRW39maGudvbecbSs+oE1sLj0HzMV1NzzyS/0+RR8Ak8ba5ZeWajNH64qanKLTQ8ZqPvdVvZcp0B+wPtC40hJTU3W046TLpuiopQWgDF3pLjwvJXDf1R8CEMLCXnCiX+lJOT4V4p98RhDkADTE4OxXk98kyIBNc0TN1NRZ2iwuiXEu3OE1DrT1URCWOcq4DigFf2LN9spOnlmIyc/P3xiMXe9APRqusHzzUJZAXdrbAyqwpTiTpoBM49zBnvhcv0eoIKweYXe9cIy2LJJFXUK8ivzDSrtEgPsNZckwTI9oXZY6mud59Shj9fyZMaZDg5N4DsRjrQOIshMxrjt7KqSBUo0wlDaNb8vjRrwtltTx326lVksGVOjQMp5De2btTPJNJHM59TioCIShTNZkR2cq6VoBf+DOzsAbYod82XTK/9XT2s80h2e9tvJidb5VA/M=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(136003)(376002)(346002)(39850400004)(366004)(396003)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(26005)(2616005)(1076003)(2906002)(107886003)(38100700002)(38350700002)(8976002)(52116002)(8936002)(4326008)(8676002)(41300700001)(6512007)(478600001)(316002)(6506007)(86362001)(6486002)(5660300002)(44832011)(66946007)(66476007)(15650500001)(36756003)(83380400001)(66556008)(6666004);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?AXEu0tg29yYB1GX+I4NMV7i15U+pX8KcYdUJXXReRwLLXRu+M7V11AeqmXjz?=
 =?us-ascii?Q?TWgQOh6LzzFOgSg3LTGJsYPLXGyxY7lP65lN4/c9hToCw+eRjx1AUC1RjbXK?=
 =?us-ascii?Q?dut7zV55RUNMcNDzQwdi2IRNVXa1YYrZtqN2PyEauzoNQCph0gHlwuh36z09?=
 =?us-ascii?Q?23aohZO5/kA3V+M/CCjJrqu3v7ry1geg63CMvcXvUhDKmj/4Lx0fTAJmQo71?=
 =?us-ascii?Q?uMUP+dH89mZIBHwh9ZMkBmQTjx4y3948DmzmuA3u7KX+Ylt0eKuXgCeeuVtS?=
 =?us-ascii?Q?yyscAVlmqDsHpGssn2tUO/EMv0t3Y43BU36VC7slgrayc2CAIh3TF3RvVN6U?=
 =?us-ascii?Q?zp4YvGN0c5xqw5R2u2sErFbk5mOLHBA9X4joNLZZ826Ij30thvm8lrV2gNca?=
 =?us-ascii?Q?L9Cyzz94trGwHX+QWQr5jzjze2+8Mm7gjmjxIP4GhplG4YAIPsD+4ZcoU/4O?=
 =?us-ascii?Q?4dkkbn9tavJikKfDU7kF23Iwl3fUcSl1tSg/65Dqh7n9CA+cEShrTiiueUdf?=
 =?us-ascii?Q?Upni1rfw8JwZlUSHRiQUFmM/kMTVplQpknLbcLA6qKRFkc5P306nOtAcnnZ/?=
 =?us-ascii?Q?fJPVYKT5aqYeJIUCr7XU3KF3rBhLDU1jNsIB1Z7ngYcNWsBxn/XsddlWbUb2?=
 =?us-ascii?Q?0sa/iDbI36BrVXdDv5XZgqcK0o33/eimYPjeVRJJKSy4e59Z/w5ty8X6k05a?=
 =?us-ascii?Q?+hQVUGcdxB/Q2GoWkLHqCiihChAh7HszrEKn+Zy+pmPm6XRGNPpHZtL/8F+9?=
 =?us-ascii?Q?pToqBvlCRP7mjIhjhds+1gMZb/PfHK+vLLVroEHFTgTLvYPOeCdUtREVgxI+?=
 =?us-ascii?Q?OFs/iivGM0nVy6UI9JLwgCJ9MfEoIZBic5tjwktX+QGptWlZxu2RY23R44JY?=
 =?us-ascii?Q?xL6+8E131PJWvsLt60QdGIObtz7oiloo86WRZyXJmQ7fGgoklMivLAXSJ6mp?=
 =?us-ascii?Q?c+jMyqS+YNtU5VPbnfEEUhdYQ3c0bB79oyzEZBRDi/7RtiTgF/aAWq52b1Rw?=
 =?us-ascii?Q?oH4lGM5QwnsH84gVhVgmgOb9epjITkxeQedkbJGhPUpmME0FdkgdAyyA4PYE?=
 =?us-ascii?Q?lKRNlRfl/iUZUSFZxGewnoBCDQwF20enT6FH0+9+QTQWOGJcMDYpBOpp20Ov?=
 =?us-ascii?Q?6r+rC4iF2I4SDQoYW/4mrHpziAxUan/i+D5/RP5RhYxo+Ke6szCUkD+mfdPN?=
 =?us-ascii?Q?opwNPSxSezKSbMqkFt/nNEXW/I4JnYcL5R0P1zN1XlRqxlmR8dnG8kwvwqFe?=
 =?us-ascii?Q?B1vyOCBTwGMZOB6q7W62w1fvuA3juI45Nir6dWT0SYcuAnbOe+5Z0958DuAS?=
 =?us-ascii?Q?dsdbRDIcgPEDiAl4Irdyk+CJ2Q3YwaiO+qjWsObBoJqi75JGFxjVrYBF6AUp?=
 =?us-ascii?Q?STlxtzNmDTSK/vjU3O3IzDkUQ1nZoDVr2+57msDlkRf6K7ocTFHbQoGDDbdf?=
 =?us-ascii?Q?kUgJZN7DgLoLgOYXAd1Rrq3p4z7YbCTM3IVpgQOvIxTjlFDvKWdg4qszhFLL?=
 =?us-ascii?Q?B78c1R5NXU25kFEvfqs4NMiGj7/gydfaUoc7kAtk4+MSJRpxLI8EAeo77FQZ?=
 =?us-ascii?Q?cM8PNA3lCLVqKvE4u6DpsXnUhCjMwe5E+jje6oR/WgfkWx6JphFjmMKwp7AI?=
 =?us-ascii?Q?2w=3D=3D?=
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: b12f57de-3563-4483-e5e5-08dbc51baa3d
X-MS-Exchange-CrossTenant-AuthSource: DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2023 20:51:21.4761
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AOcgjgCYRixjg07/frFqht1lQuk1NVS/ZhoO0XeoUeFI+tH5qNVLoDHnExk3fcJvEDWPjPC5ACut3sBeEbRs0HRgsTRt/V0EpxdXu74GU+4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR10MB7566
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Oct 2023 20:51:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61244

From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>

fail2ban ships with a suitable .service file, so install that if
systemd is in DISTRO_FEATURES. The logic in rm_sysvinit_initddir in
systemd.bbclass will then take care of removing the sysvinit script if
sysvinit is not in DISTRO_FEATURES.

Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
---
 .../fail2ban/python3-fail2ban_1.0.2.bb                 | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-f=
ail2ban_1.0.2.bb b/dynamic-layers/meta-python/recipes-security/fail2ban/pyt=
hon3-fail2ban_1.0.2.bb
index 9379494..81fa00d 100644
--- a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban=
_1.0.2.bb
+++ b/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban=
_1.0.2.bb
@@ -20,6 +20,9 @@ SRC_URI =3D "git://github.com/fail2ban/fail2ban.git;branc=
h=3Dmaster;protocol=3Dhttps \
 UPSTREAM_CHECK_GITTAGREGEX =3D "(?P<pver>\d+(\.\d+)+)"
=20
 inherit update-rc.d ptest setuptools3_legacy
+inherit systemd
+
+SYSTEMD_SERVICE:${PN} =3D "fail2ban.service"
=20
 S =3D "${WORKDIR}/git"
=20
@@ -38,6 +41,12 @@ do_install:append () {
     install -d ${D}/${sysconfdir}/fail2ban
     install -d ${D}/${sysconfdir}/init.d
     install -m 0755 ${WORKDIR}/initd ${D}${sysconfdir}/init.d/fail2ban-ser=
ver
+
+    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false',=
 d)}; then
+        install -d ${D}${systemd_system_unitdir}
+        install -m 0644 ${B}/fail2ban.service ${D}${systemd_system_unitdir=
}
+    fi
+
     chown -R root:root ${D}/${bindir}
     rm -rf ${D}/run
 }
@@ -60,3 +69,4 @@ INSANE_SKIP:${PN}:append =3D "already-stripped"
 RDEPENDS:${PN} =3D "${VIRTUAL-RUNTIME_base-utils-syslog} iptables sqlite3 =
python3-core python3-pyinotify"
 RDEPENDS:${PN} +=3D " python3-logging python3-fcntl python3-json"
 RDEPENDS:${PN}-ptest =3D "python3-core python3-io python3-modules python3-=
fail2ban"
+
--=20
2.40.1.1.g1c60b9335d


