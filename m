Return-Path: <michael.haener@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED24DC4332F
	for <webhook@archiver.kernel.org>; Fri,  4 Nov 2022 13:07:10 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.54])
 by mx.groups.io with SMTP id smtpd.web08.10912.1667567221262661556
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Nov 2022 06:07:01 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@siemens.com header.s=selector2 header.b=siAxLIQl;
 spf=pass (domain: siemens.com, ip: 40.107.105.54, mailfrom: michael.haener@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DqWSQUAYSBdgy0rRNjnhzqiMRtTb4WTyJqVyyIVHXeOlkvgRUrQ9N8Y5bpgWTEokyzmrkpd0Bjl7u3VKVIsKmnWWvcW8x4gmgYf0z2z7rjn/U/Z06IiTw78LXz9yDWkkNVUhvZr5evFgKo/EfNeWqbUNQYGvU+rowQ6zxgg1fVLJxF7A3xKlLTTuUU6i3cMVtX0E4EGAgljBl2F5yyQ2zTYf1JNKfNzlfSjpvpyVjd4onCvkMYn96Bo1uwUmdm27wpmQ8gG6R5VLwTEZwwPzQKrhb5TCe7wosynQ2u/29B0W90G9rNjvhz96z4FOGgBZp0MRoRhCQteIo1ay9r8SUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OD8pQ6egu3EZ+kC7zrNmP0rw7BKgXT4AXMrIOLXFT14=;
 b=Z8Mvs0HWSRR+6oHn9r/396FOKFnyrxONpd3iizGJQaitAiB3xAMBmVUAv7TqLCGv7l6DVTIW/3Vv/YUKhTbswQR5z0XdSRMQYYuou2Sg6MH64UvWns3faWAgyL9UCFk/y5fDycD5ptcg76aBTzkbNRtjHUg84HYjGHf+khgZHzMQ9QiwQHP9/mvsuPuP2ThjImglTNkdhIi3aM+2X609aTF/sGIxYnRw2Q6E403BN5h25vUBnLs2DDWW6LdFN46G4ykHS/5jUcn9MgZVCg2mcOXOtPrVLGmVymXoFP5q9pE0ltsCl6BZ5rvmSm4tohdnrkzmUS3BcdUgVsqk8oeQpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 194.138.21.75) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=siemens.com; dmarc=pass (p=none sp=none pct=100) action=none
 header.from=siemens.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OD8pQ6egu3EZ+kC7zrNmP0rw7BKgXT4AXMrIOLXFT14=;
 b=siAxLIQlL3JP7pJhTL4Zy6tz6UuvEjhtktTZygmxeYcpNhU0Jggh90tADYHbN5BIqTh+qojRo+Wmtq7LhQ7rWN/1S1J+lCp645FT+ReHkltc6OZonx79dp6XzpGXtIjUI+tlyPdnisdraMarDI6MeNDZEJW4T0YCPMIB77FX/qPg/m76YFPYdrxkALxI7PWWDU3c8foSPmDetSylS3mZNUEJrDIkKoyaY60/ca0ECWENvKrSPjIuqRQBBdyXyYCBHsh0GX2uO2o3P4hNXtTbzf8qcaN8FHIBbupIMcVQTsjgYmEk6E3BgNFQH4EV83y42NJLlFZpxVt88widDsRQ7w==
Received: from ZR0P278CA0054.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:1d::23)
 by GV1PR10MB6268.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:90::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Fri, 4 Nov
 2022 13:06:58 +0000
Received: from VE1EUR01FT010.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:910:1d:cafe::93) by ZR0P278CA0054.outlook.office365.com
 (2603:10a6:910:1d::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22 via Frontend
 Transport; Fri, 4 Nov 2022 13:06:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 194.138.21.75)
 smtp.mailfrom=siemens.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=siemens.com;
Received-SPF: Pass (protection.outlook.com: domain of siemens.com designates
 194.138.21.75 as permitted sender) receiver=protection.outlook.com;
 client-ip=194.138.21.75; helo=hybrid.siemens.com; pr=C
Received: from hybrid.siemens.com (194.138.21.75) by
 VE1EUR01FT010.mail.protection.outlook.com (10.152.2.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5791.20 via Frontend Transport; Fri, 4 Nov 2022 13:06:57 +0000
Received: from DEMCHDC8A0A.ad011.siemens.net (139.25.226.106) by
 DEMCHDC8VRA.ad011.siemens.net (194.138.21.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.15; Fri, 4 Nov 2022 14:06:57 +0100
Received: from md2v2rpc.fritz.box (139.22.134.225) by
 DEMCHDC8A0A.ad011.siemens.net (139.25.226.106) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.13; Fri, 4 Nov 2022 14:06:56 +0100
From: Michael Haener <michael.haener@siemens.com>
To: <yocto@lists.yoctoproject.org>
CC: Michael Haener <michael.haener@siemens.com>
Subject: [meta-security][PATCH] tpm2-tools: update to 5.3
Date: Fri, 4 Nov 2022 14:05:57 +0100
Message-ID: <20221104130557.149020-1-michael.haener@siemens.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-Originating-IP: [139.22.134.225]
X-ClientProxiedBy: DEMCHDC8WAA.ad011.siemens.net (139.25.226.104) To
 DEMCHDC8A0A.ad011.siemens.net (139.25.226.106)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VE1EUR01FT010:EE_|GV1PR10MB6268:EE_
X-MS-Office365-Filtering-Correlation-Id: 81ba8ec4-7b58-49f1-2dc0-08dabe657414
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	NiU8CVxMt2CqKSsXSdBOzgC9IZdwSdfMYkMiviMMeSbHfbg/tR9ZuHQA24DFLsST7oXRcqwavQk7zGVPVn1GTjkCak0y9w/EHrWHNALW13Afk4EAkPKCWNSiOzqqEBSS+7wqtlU1Uhcs1Hay4UkKEWpNHA35GC4azWTAxEUTBMRL3wi50yjhfoFHo04zRUxzhnJWLAG4d/23XoKTsxyl68IckT4QfWWK0/GRF+OiCJIn6hUhelE/V0R6NhpVJHfAJ8mi0KaCiaZMXnCRNmNqXjPXvqOgU23fTesU55iYMAnx+mK6qLxdrG8P9P15u2Padedvd6nDBSLVpSqjdrq+2CuC+IMLUnVEaft5fQf9+dezFLmqfzrSBx0X8uRKtGwKAWsnaCEG3fW3euO/C4wxx4z7+DZl2u7kHoXbnqW2dvjmdsZG6gbuRWOvd5qqOlY2iIdgLsmkoHi9UBnmnizqLPYAPFvb/GeimSVbKxDf4bEHtMIRfP6iUL23thizwVetCc7yrcyCdmrUnscHZn7lbhGsTD8jmrnx4zkEvERjBdhg60wUQoJB388wjvr7rcImHcFP5Neas2dH6ExWXMw/7Z4uaPKCNaR2CufJLEo/9vSTWeQi7m9cFV2DgohF3I4fAcSUZQPXolgC/Zflh6ZsMizbo51oFWEMHctxoeUBMZfSgxkpCQFLnryNv9Ikf6Q6kBBmJLNv+kFF0EZvtPnC13AxeS8HTq34M7GOG6CRed3Gf7Npvny+gFbWIZgs2tCkToxbUJMgOsECNHANoCGk2aklntLMOY2jShAb9mfCRNuy246XxNj0SYkBOJnYI1Pk22RhfEqL6/1BD+0QlPFuUA==
X-Forefront-Antispam-Report: 
	CIP:194.138.21.75;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:hybrid.siemens.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(396003)(136003)(376002)(346002)(451199015)(46966006)(36840700001)(40470700004)(40480700001)(5660300002)(478600001)(70206006)(47076005)(70586007)(4326008)(16526019)(186003)(1076003)(8676002)(336012)(44832011)(36860700001)(8936002)(6916009)(316002)(2906002)(40460700003)(82310400005)(41300700001)(81166007)(356005)(36756003)(2616005)(83380400001)(82740400003)(82960400001)(107886003)(956004)(86362001)(26005)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2022 13:06:57.4331
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 81ba8ec4-7b58-49f1-2dc0-08dabe657414
X-MS-Exchange-CrossTenant-Id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;Ip=[194.138.21.75];Helo=[hybrid.siemens.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR01FT010.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR10MB6268
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Nov 2022 13:07:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58488

---
 .../tpm2-tools/{tpm2-tools_5.2.bb =3D> tpm2-tools_5.3.bb}       | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-tpm/recipes-tpm2/tpm2-tools/{tpm2-tools_5.2.bb =3D> tpm2-tools=
_5.3.bb} (78%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb b/meta-tpm/=
recipes-tpm2/tpm2-tools/tpm2-tools_5.3.bb
similarity index 78%
rename from meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb
rename to meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.3.bb
index b82fb65..53d5abb 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.3.bb
@@ -1,14 +1,14 @@
 SUMMARY =3D "Tools for TPM2."
 DESCRIPTION =3D "tpm2-tools"
 LICENSE =3D "BSD-3-Clause"
-LIC_FILES_CHKSUM =3D "file://doc/LICENSE;md5=3Da846608d090aa64494c45fc147c=
c12e3"
+LIC_FILES_CHKSUM =3D "file://docs/LICENSE;md5=3Da846608d090aa64494c45fc147=
cc12e3"
 SECTION =3D "tpm"
=20
 DEPENDS =3D "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
=20
 SRC_URI =3D "https://github.com/tpm2-software/${BPN}/releases/download/${P=
V}/${BPN}-${PV}.tar.gz"
=20
-SRC_URI[sha256sum] =3D "c0b402f6a7b3456e8eb2445211e2d41c46c7e769e05fe4d890=
9ff64119f7a630"
+SRC_URI[sha256sum] =3D "e7ce2fd36ef5cdbd7872d823a442e8754a4f0ca7c54b60efcd=
b75c12a1f98f8f"
=20
 UPSTREAM_CHECK_URI =3D "https://github.com/tpm2-software/${BPN}/releases"
=20
--=20
2.38.1


