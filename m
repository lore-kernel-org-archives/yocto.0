Received: from NAM12-MW2-obe.outbound.protection.outlook.com (NAM12-MW2-obe.outbound.protection.outlook.com [40.107.244.68])
 by mx.groups.io with SMTP id smtpd.web09.7485.1603259769529001524
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Oct 2020 22:56:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=JlyyuXDs;
 spf=pass (domain: windriver.com, ip: 40.107.244.68, mailfrom: mingli.yu@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n/8C0Tgl878ZUN+MTiTZEvzKhXv/zCODUdNUrctKiHoU4vZAG0W7sed0ukN9ounkKY3/2vKFQeML3Oac6usZ1uxEbsR5N4soLkkW5OF+wrLz4OlNgsj4evsRhP5gxaaCwB+34CSzNQmvHqSyDhv0ibWKxtmBki//ZUR98WCX8lxd+U8TNVxVYxYxeBH0jRC3lw7XqIfCok2MN0Iwuqp2oIYjQynBKShL5rRpWap3YbooA+lMiPFFKsSzsRK8Gy9gqaWorOL2L2Elu7YlD1YUUCQcr8t7wDKeRYSYqIn2j0Elo9seRw+OUQYvPixdWuP2L8CJq4IfwnekthSqs91QfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JXe5kvq4jyRlxbd4DRSw9lEQdbDFSLFPa6iXD6hbpn4=;
 b=lE3cK+XrbPn5IwU4Tpre9SKe49Dmvi1SMqEQPHGRknaXk/f22BetDnOKY/S9/+6LZwc1YYi6HpPmbD17/jwQwB8aSUdMF/fom/az0Eo3n8I+FlxvMQfRTfdRusumjETn4GZyQ3/Gl7TNa9Cjf6VFVJSOCwNX8XmOqNAESy7u1MJR07q177yTobAicLAI6huM9n6LnqwnxjOchXD5OehBAoIjQkwTYITpQjT//Br6/CfGokApJ/Ek2T1nDojt7CBJi+0JTWymhZneZOiog9nUIc1w3BTBQJnzQyM3RHSZMGicJAFeENRiIBQmP1qBwQ8hqIpnmG9FfMrv04KI056PxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JXe5kvq4jyRlxbd4DRSw9lEQdbDFSLFPa6iXD6hbpn4=;
 b=JlyyuXDsJ2iWzXGQW2pHEurOfecWmNUF3IkOSbYruMIASk5cpp09oVS4bFqfz+eyOuezYbzY6SyEMubPMO24va1RNBnIZKVvLTHjVkO/Ncu/2ZuF14meu5JRd+Njpk1Zndark24saJIosmdUFfU4MbDOqNkkmADzxowdR5m29yI=
Authentication-Results: mvista.com; dkim=none (message not signed)
 header.d=none;mvista.com; dmarc=none action=none header.from=windriver.com;
Received: from BYAPR11MB2598.namprd11.prod.outlook.com (2603:10b6:a02:cb::17)
 by SJ0PR11MB4814.namprd11.prod.outlook.com (2603:10b6:a03:2d8::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18; Wed, 21 Oct
 2020 05:56:07 +0000
Received: from BYAPR11MB2598.namprd11.prod.outlook.com
 ([fe80::c400:8b2e:c0f8:55bc]) by BYAPR11MB2598.namprd11.prod.outlook.com
 ([fe80::c400:8b2e:c0f8:55bc%7]) with mapi id 15.20.3477.028; Wed, 21 Oct 2020
 05:56:07 +0000
From: "Yu, Mingli" <mingli.yu@windriver.com>
To: jpuhlman@mvista.com,
	yocto@lists.yoctoproject.org
Subject: [meta-cgl][PATCH] heartbeat: don't use trailing slash in S
Date: Wed, 21 Oct 2020 13:54:17 +0800
Message-Id: <20201021055417.32601-1-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: YTOPR0101CA0035.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00:15::48) To BYAPR11MB2598.namprd11.prod.outlook.com
 (2603:10b6:a02:cb::17)
Return-Path: mingli.yu@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpg-core2.corp.ad.wrs.com (60.247.85.82) by YTOPR0101CA0035.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b00:15::48) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18 via Frontend Transport; Wed, 21 Oct 2020 05:56:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6bfab538-f04a-4c4a-4669-08d875860092
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4814:
X-Microsoft-Antispam-PRVS: 
	<SJ0PR11MB48144176E612C9B72B8ACFC7F11C0@SJ0PR11MB4814.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:341;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	QRjM6xHONj7gRLpLaHJEzk20f7UbTFnDB5MEFlOCNb3eQy0IfXu1ONYKd+NuGjQzokuc0zwEMqzdlFHoKl6yHI91TcCn1EJBOcPh6q4gxS5KBb2hZIO9R5mCvGOQzCwK+p69ogRk5NutRanPu0kdE3U+AliU9hsBmwmk2elXe0zTyC7BgOCdKgIQELnuEyDopdY4VNss3WJX5UnWFu4giuEDEi1UtKIK/s6UVY/FG0esgqzs1031em1ADdabr9himrHTVL3VaAjxi6vk9AlAefZG/6EJNXmZz4qSeWmsI2RnNqdZZgJWSpX4uEIqCSRIHJkXuaEZIUqRw8lBPr7VEUQ+nRoOm2wX1PeoLMKW9c/iR/qZ5/0vC4oQYAh6GHZwqWMR1iAYJOIVGFqPI/73Zw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2598.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(39840400004)(376002)(366004)(136003)(1076003)(83380400001)(186003)(316002)(16526019)(2906002)(52116002)(6486002)(86362001)(8676002)(478600001)(6506007)(966005)(5660300002)(8936002)(9686003)(6512007)(66556008)(26005)(36756003)(956004)(66476007)(2616005)(66946007)(6666004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	2GtzBU6e1+P+0Fn22aJEKadfA18ai+TRy4aTJuB9HnhjvwhKpxGnUn6oV4BVw0ey69ztLp8VP5Be/+hhOcVJ4YSCIu/9Aq/hSbp6uzwREqCjUdz0NeIVRyw7bKZUpT1j6iQSWW/jSlwWVycw4GYZv3K2pOOgUpfCYGQmYiopHtJoEDXveM1wg7EaBeFel84xofsAXQu2cz4/NGjGPWw3dlW3xuLYAsl4Z90AAMtls8riU95Fin3UvAtF5tx4rdeWsTqX18mQMiA6O5SF6lNIMddurWMTsje2ROT2LT0fZAOPDhYbsf5EgcKt7h6jNX/hSAjEbDqK2SNYmBkxSWkKKKDa2EQwK7xRDFwRD4qIx2PF1GC/TrMy3lBsypnMPIryvC0RvAHdu1uQrrH26BpGb+TZZ7HvnwrxtDhPO3wHwRxwwi4ZPpNRbmcYgGADZO3xXM8gPpKw3ho1mb/xSrazKO0k8JqCMxnSgWpk7IcM4fAB0YXoZ23bjIbCVPX5ZraHtzNDERPegQP48gXN3JogLCeNR87pdyyg/8FqmLmpGAvef2KW/lwoqFxehOplpwHr0nBqJmTNjz+Zs4OF3pMrAbz7kkW9kuG8aXJFbfwqTialmEPo4wN9nJToiz3ZAZo3UTs05J3/Oh/ypocxbGkh5w==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bfab538-f04a-4c4a-4669-08d875860092
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2598.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2020 05:56:07.3696
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H9SeM90vUOLDif7LzHylqr1OWo2sahm5yDS0/rzTVvtvXJuoR5Q9LfW6jL1YEh6AdKvboNVh5aRM9EAYq4VbuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4814
Content-Type: text/plain

From: Mingli Yu <mingli.yu@windriver.com>

* see oe-core base.bbclass changes from:
  https://lists.openembedded.org/g/openembedded-core/message/143159
  https://lists.openembedded.org/g/openembedded-core/message/143161

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
index 35fee43..5031c64 100644
--- a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
@@ -38,7 +38,7 @@ SRC_URI = " \
 "
 SRC_URI[md5sum] = "101c8f507b1f407468d5ef15ae6719da"
 SRC_URI[sha256sum] = "851d2add2c129fef9fede764fec80229e1f6e7295e0e979950d10258648b462c"
-S = "${WORKDIR}/Heartbeat-3-0-958e11be8686/"
+S = "${WORKDIR}/Heartbeat-3-0-958e11be8686"
 DEPENDS = "cluster-glue corosync gnutls libxslt-native xmlto-native docbook-xml-dtd4-native docbook-xsl-stylesheets-native intltool"
 RDEPENDS_${PN} += "python"
 inherit autotools-brokensep pkgconfig useradd
-- 
2.17.1

