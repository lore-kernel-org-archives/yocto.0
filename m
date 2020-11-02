Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.28735.1604308302238714247
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Nov 2020 01:11:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=YdkaZzrs;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2081.outbound.protection.outlook.com [40.107.220.81])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2FA8738C08E4
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2020 01:11:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ln6zpxGuvHngyAeFQu764bDSoSqzRmxQFsO03PKrKglGoJtQq+o1ldIN9RJX4i1MPTU98/n81BWvcZvKDH7l8VqqC2toMTY4RBFQABn6a9I16PdLnnk5POEQpfrRvOpmEL/93mNZFgIqaLpFxf89nJ2pnXBE4d2CR60kniA/tZWsaZ103frytUEar0+GUGDcdbImGhuVABznBdU4AnvXrYQRpz4GZjwKeDk48KTeiqd3PIXe0Z0kP5zVl5BvVS2MiVtJ599EXSaiaY6ui5DDPVkTAmvxeLtqz6PXmrhWAruKEhrQeQ1Ccn5o21WYRwa8i3XQm5a/DEqcTFMqQg4k3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WKx5rZw3pvD/aKFXAJnlIFbngLMKcZYYY+rAx3Ostoc=;
 b=cYIzycR/L6NnOrito4u+kdjeMxMzwguuIDXLJj4P9XetW3peW7qHkkS53n53Xhe+MnfulSIxByD3SSaENWnAZ+Wrg876Xs89pKqBb4+xhyD9sYU50lUv6qZ/PUW+PM5WJgkwxVxVJDZRD5Ev/g78PgqeLwLr/NRFvS7wVKikue31FN2nuNZvImkVEm3mKGY9H+s4QTSlqF7jZrCQg7k1M9NSg/XDFbbWqL+yibJOkdyIYQkjuXFhFDPPA0QMWhlb31xDbniKAM2M47O5rmBgdNEhA1Y36jQFU9wswBphf07jpMIbBXQwgzqMZSJcdJTx+K7qNRhgY/lH45euNV1ECw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WKx5rZw3pvD/aKFXAJnlIFbngLMKcZYYY+rAx3Ostoc=;
 b=YdkaZzrsDrRRQwmM548HyKK1myHkRhFGfKpTar3r2P2BY2fwi9M3avSuF4G7TTIOJQv3qLJsamgHeW18kwmHtaqUoDPcKYo9c5b23dSMd4LD22VtD9rNzQeHav7KetM2sz0z/EcX5EA991qWCXAUAr15SiTytVDPb6Gd4/bgOjg=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1856.namprd11.prod.outlook.com (2603:10b6:300:10f::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.29; Mon, 2 Nov
 2020 09:11:39 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::d844:ac89:6b05:ed98]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::d844:ac89:6b05:ed98%6]) with mapi id 15.20.3499.030; Mon, 2 Nov 2020
 09:11:39 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org
Subject: [meta-security][PATCH 1/2] suricata: unify volatiles file name
Date: Mon,  2 Nov 2020 17:11:18 +0800
Message-Id: <20201102091119.15649-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0186.apcprd02.prod.outlook.com
 (2603:1096:201:21::22) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0186.apcprd02.prod.outlook.com (2603:1096:201:21::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18 via Frontend Transport; Mon, 2 Nov 2020 09:11:38 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fcfe1faf-347f-45b3-65f0-08d87f0f4e4b
X-MS-TrafficTypeDiagnostic: MWHPR11MB1856:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB185602776508425F229EAA65F9100@MWHPR11MB1856.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:626;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	3YUCEtYtK+e1FrLnGTfCFgEfRyJq1LFlexvr6rvXuyvo0H9RPmLkQhVUyWNj1IwbJJIZIKHCbXH9n9Nmo9XVGc2FphQWXEso+SdW2mgnHLuvBEsTB7bbjnl5eKENbp+OJUaxVhhEQKNKUqbZFkBB0m94WGqI11V+zZKKVTnaU/6sv4vFDh3Z7FglmMia6GOs8vzoNAEG3sswAQgdDGlk/nnLoZVDsAD/QoLV3WYguMlAyJloWEhT7DsUtAGoTLikQQJDjyeGlhd7WLAS9WNd3DemCl/uOtfq6+BNOM4SjEotstnwcQ/Yj62LnrKzY7XMV28jr3Rs7p74tf4RqG3udw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(39840400004)(346002)(376002)(136003)(396003)(6486002)(5660300002)(26005)(6666004)(8936002)(36756003)(316002)(44832011)(1076003)(4744005)(2906002)(86362001)(16526019)(186003)(6512007)(8676002)(66946007)(66476007)(66556008)(478600001)(83380400001)(2616005)(52116002)(6916009)(956004)(6506007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	K8R/+w/Z/9CG7xQ1v2vCcfKCZRsqWVpGzwcLFQ1y/Md/h4C31UJ1gGrVwLJ8Hqc8h9n/Vfku5hQyl8rUS3QREr75/nM61bGw8ESZRSRM+rmM+0jhoVpLm4BWYJRbSaaOdHYPN/YPbshV+je3E0v3YrDa4AKuORe9muemngL55h5/XsHa0kNxI3y7UjEM38DUBHPB7PC5XOMaFG4as4Sa4MU4piX7NK3JpddSujKHzNZKixTdWCALfnG+sGP/Y3IN5blOU5IPKw0qdkZxA4wR1r1E0cbc/36WdBLRUcP5dvJTYx++CGn74dCFDrCtDiDxmjss5Eeqo+PX1/46/xtldtqtTnpJwJWiojaJszI4yfS8FtnqpOQx/ZpGv3qMTikAdPFxirBndKF2z06ZllmimypXR+yGtxwm+7kH2oehf4rX8U7IvHlZtaeTNRTSfR3P2GZPmKVnP8qxrpGh+xXP0w9RDgVvt09kqRzrNEmxCXSeyTPBdEBgF/q2W1u4j3yh5vV//q2dMhYS99sC3Rwa9Wi8bPlgQqatXtJzQYJAqWBWy7o0LP2WRRfOaxQ4eZ+dgR4JedKBF/fwH3hm+gNVyGn6swPqVtbmS7iKRJTmgZs1ex3PhyToVg3w3QASqBTFtXFvTIFEk32vsJgI+Ut6cA==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcfe1faf-347f-45b3-65f0-08d87f0f4e4b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2020 09:11:39.1270
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KXSZrvKaEatQ7cgycdTUQJANgLlnRjl/daMMPIRpr0nu3pJ01izF64j8F0hUmJ1yxZ7LXBYgV5LSbREc1OUYfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1856
Content-Type: text/plain

Make the volatiles file name starts with digital.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-ids/suricata/suricata_4.1.9.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-ids/suricata/suricata_4.1.9.bb b/recipes-ids/suricata/suricata_4.1.9.bb
index 135871c..3f7beaa 100644
--- a/recipes-ids/suricata/suricata_4.1.9.bb
+++ b/recipes-ids/suricata/suricata_4.1.9.bb
@@ -55,7 +55,7 @@ do_install_append () {
     oe_runmake install-rules DESTDIR=${D}
 
     install -d ${D}${sysconfdir}/suricata ${D}${sysconfdir}/default/volatiles
-    install -m 0644 ${WORKDIR}/volatiles.03_suricata  ${D}${sysconfdir}/default/volatiles/volatiles.03_suricata
+    install -m 0644 ${WORKDIR}/volatiles.03_suricata  ${D}${sysconfdir}/default/volatiles/03_suricata
 
     install -m 0644 ${S}/threshold.config ${D}${sysconfdir}/suricata
 
-- 
2.17.1

