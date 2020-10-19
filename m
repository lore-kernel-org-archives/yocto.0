Received: from NAM12-BN8-obe.outbound.protection.outlook.com (NAM12-BN8-obe.outbound.protection.outlook.com [40.107.237.49])
 by mx.groups.io with SMTP id smtpd.web11.8358.1603089060239797564
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Oct 2020 23:31:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=SXye9I6I;
 spf=pass (domain: windriver.com, ip: 40.107.237.49, mailfrom: qi.chen@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T0wFrmwYCBMIPH4timWvQoCcB1QPoaRm5Tvk+saPhD9r+Rdq9/rQvo+va1g5iUAu398/y5+dFBK/PzNKZYPRU2xhmhyzQIt+Py/3tPPi6FDnCvyQeJfoowgg92xBxTTGqoTHPZ8ehBNYDDKVBfg3yRjARWMOVAoCNfiA0Iayn1rRHsNcmDiYiU0ou8gjYP9LFpZUGAZV74PKDtnurpylzT3S5YfAXs9gdwlXunyNccblKuUAgiIC9JYBJbbzpXcOMThiQo+dCf/+UJT2oNy6ksPjRB2pXGzHswx0WKUEJOFRMeSeP9+e9N9zQv4A314m4aESiuxxeZ0Ef9d1sucEng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fD/04ZiDhJirl3H0eL+NAYCK2A4Pdqt7StmhYf48IKU=;
 b=oD8s6VmNQHh5UUe7UZJiRjxyyePQgE+bkZQklCNEB/38+O++WwdjLk5iEzfmEDq683vzf/8pZ6OmRf9JsNHq9E+I69IARNNsZ9RlRFn2JHM1sCdhQhCuYmEE3cqTPIBVXyybQ+daoOgMn9zulrrR6eJXN3zWfP2q1CaIbKiwH1d7DdusivuMGwHWAjMipruBzEf27vCrpvMn9hWdawDC7ibQB3ioSw2lQ4bHavg7uRZde7l059Z7vf33POvo2Fjili2fWZVxDtReY46FMF2TWSizZwXmDYHVNSfAGxJPHfCkxEQGrhDxCCAIimDlz5rwF8SjD3Bp/3tcNz01TYn4iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fD/04ZiDhJirl3H0eL+NAYCK2A4Pdqt7StmhYf48IKU=;
 b=SXye9I6IyJ+3HwYLXHgroroQs2aHoNMHgkkAINucrtuFJ4y1pryfJz3b0HfzuIcaZC5FypVwP085nwtH3kPec6LNF/W3C2boUesj6d0TVgzMI3eG9pJbV3M4HWq08+DBDEgUjz970Fnto21JhXqCQ6kYaLpv397h2QI+bAOy1IU=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BYAPR11MB3480.namprd11.prod.outlook.com (2603:10b6:a03:79::27)
 by BYAPR11MB3399.namprd11.prod.outlook.com (2603:10b6:a03:79::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.21; Mon, 19 Oct
 2020 06:30:58 +0000
Received: from BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::c4a4:4e3d:3154:98e4]) by BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::c4a4:4e3d:3154:98e4%5]) with mapi id 15.20.3477.028; Mon, 19 Oct 2020
 06:30:58 +0000
From: "Chen Qi" <Qi.Chen@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-cgl][PATCH] resource-agents: use /run instead of /var/run in systemd service file
Date: Mon, 19 Oct 2020 14:30:43 +0800
Message-Id: <20201019063043.32986-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0086.apcprd04.prod.outlook.com
 (2603:1096:202:15::30) To BYAPR11MB3480.namprd11.prod.outlook.com
 (2603:10b6:a03:79::27)
Return-Path: Qi.Chen@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpg-core3.wrs.com (60.247.85.82) by HK2PR04CA0086.apcprd04.prod.outlook.com (2603:1096:202:15::30) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.20 via Frontend Transport; Mon, 19 Oct 2020 06:30:57 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: eb487c1f-f248-4638-14cf-08d873f88a48
X-MS-TrafficTypeDiagnostic: BYAPR11MB3399:
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB3399363CC57E712F8A38C84EED1E0@BYAPR11MB3399.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3631;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	SQu5pdKvUt3BRasaZFAEYsywDBK4s87392whS/Agm2jj5wpV9QimGmSM+6rlKis2r0msAEqG99TnFie7aXxYPO1XwImVYCBFeV7Qjr+z15DSQ5jsUy5RhyZ0NUA92tO9yYJ8AihC85DfbDLVUQeX5PQA4ofcKF0gIj20DRb2fr6J5AepKJ6w1GZFuEVw82IYKVgBX/vzzLH9uFHY3bDmm8dYtDNfmOtCkzgLiUH5JoI96HslpS7PAAa5CwmFxd/0cvTo2jc7n+0IX9/4Dh3K1fBrNjjwNojwEvpMglqEh5xkJuLJbLymKLme+gn9alrhRgtDMRa8O3E8cBbqjFbX7w==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3480.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(136003)(366004)(39840400004)(346002)(396003)(6916009)(2906002)(8676002)(8936002)(6486002)(86362001)(6506007)(186003)(16526019)(6666004)(2616005)(956004)(6512007)(26005)(316002)(36756003)(478600001)(5660300002)(1076003)(83380400001)(52116002)(66556008)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	FU6bcUYGadW/c6EyuvvQVuU10h00rvnDN+fzxPsqlZecKl1TQzs02hPqGz5nmZtaTAELILStMoiEkRsuz1tMep3GB6Ap0BgA0WVqKE3I/RRnmSlwPlMp9fV0EFoa/Z/aRzM0tIM6a59/BxC/IZsex+Hj19bL22kvd5AfpqigqprtSLLKZhiA4TJ/E6eKb0ZLqGTndC1o1XfNtcf6S34mVTX+Q5Hy7GlLrmzNQ+Vb/PPKkgJ7ALRBlFG2wkdpJXi5xgTSu0oyTWgBmDlOj/ap3bFHp2f/WDzhj7uxQQIe8hNH3Fak/fq0MT3RAFHDLYTMbaAfwUNPEwK/1UHa6OvrX4zutGn1S/nJkDFgZ2K54aOYE2TT+5XHOlp+unl9vqjwsW5cN1FhlWftdP8yWMVY83znoKpB/NjluwpV9v3DTwg5qn5bV0N+aH35Yxca+NN5u5VFD4DwtDrcCQRVgfI9Qgibm/lQaZ4cTl/HRVqJ3MZnrwYj0Cu7GFzmQ/egOxCPfAVuk63XFPOvW3Ddmr7UF8RFhXSuYzMRFvcounGJwhNMsC39r+BeS+qWbmiOL9IDP2+NxpeTzS76lxyqv+DsBonT1cPTlCWroijvbvk7JkPshkg7HT5HLtpOmGManQVPBqPxPdVZn5WO3i98LHOCYA==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb487c1f-f248-4638-14cf-08d873f88a48
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3480.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2020 06:30:58.4677
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PF1m999lV30nIDjt/IXFd7mpyrj07xpdvjx0bp0mTEOhcZf5AXSFirqHx3iXsSswEGVzgzyYJq5BP0yW657eBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3399
Content-Type: text/plain

/var/run has been deprecated by systemd, so use /run instead,
as suggested by systemd.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 ...ervice.in-use-run-instead-of-var-run.patch | 31 +++++++++++++++++++
 .../resource-agents_4.5.0.bb                  |  1 +
 2 files changed, 32 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/0001-ldirectord.service.in-use-run-instead-of-var-run.patch

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/0001-ldirectord.service.in-use-run-instead-of-var-run.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/0001-ldirectord.service.in-use-run-instead-of-var-run.patch
new file mode 100644
index 0000000..0045cee
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/0001-ldirectord.service.in-use-run-instead-of-var-run.patch
@@ -0,0 +1,31 @@
+From c739aa4fda8bae8e0aa7ed6af29c16392eb13a86 Mon Sep 17 00:00:00 2001
+From: Chen Qi <Qi.Chen@windriver.com>
+Date: Fri, 16 Oct 2020 16:24:24 +0800
+Subject: [PATCH] ldirectord.service.in: use /run instead of /var/run
+
+/var/run has been deprecated by systemd, so use /run instead,
+as suggested by systemd.
+
+Upstream-Status: Pending
+
+Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
+---
+ ldirectord/systemd/ldirectord.service.in | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/ldirectord/systemd/ldirectord.service.in b/ldirectord/systemd/ldirectord.service.in
+index 191f62af..7965b79f 100644
+--- a/ldirectord/systemd/ldirectord.service.in
++++ b/ldirectord/systemd/ldirectord.service.in
+@@ -8,7 +8,7 @@ ExecStartPost=/usr/bin/touch /var/lock/subsys/ldirectord
+ ExecStop=@sbindir@/ldirectord stop
+ ExecStopPost=@RM@ -f /var/lock/subsys/ldirectord
+ ExecReload=@sbindir@/ldirectord reload
+-PIDFile=/var/run/ldirectord.ldirectord.pid
++PIDFile=/run/ldirectord.ldirectord.pid
+ Type=forking
+ KillMode=none
+ 
+-- 
+2.17.1
+
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
index d9440d3..cc3ce89 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
@@ -19,6 +19,7 @@ SRC_URI = "git://github.com/ClusterLabs/resource-agents \
            file://02-set-OCF_ROOT_DIR-to-libdir-ocf.patch \
            file://03-fix-header-defs-lookup.patch \
            file://fix-install-sh-not-found.patch \
+           file://0001-ldirectord.service.in-use-run-instead-of-var-run.patch \
           "
 
 SRCREV = "fee181320547365d7f8c88cca2b32801412b933d" 
-- 
2.17.1

