Received: from NAM10-BN7-obe.outbound.protection.outlook.com (NAM10-BN7-obe.outbound.protection.outlook.com [40.107.92.76])
 by mx.groups.io with SMTP id smtpd.web11.10108.1602834556312465398
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Oct 2020 00:49:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=l7WZjsVf;
 spf=pass (domain: windriver.com, ip: 40.107.92.76, mailfrom: qi.chen@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IJftIU0tgPoXAx5fjaxtGXlyGOsLIuBiV4lt0S0UuTOYsYygDZ09I1PgP1WAZL3TbKHgkFffBtrUSactRhoWMcLBW+7nHEMw967jiZ7xKvrQkqpSsY0LdOR+dqUA+xn3RR5t4IBxLYhVML8xXu5hR/B7aZSg4ThO5PrdxSNPyQDBI4Y8FWjdmb3F1pa404B0qcwt1bC6ImfuG85t86NgCnl3SIoEjTJDtT+rVdcv8QIZMaMTG9pK2X2uEp9mr7woMX4heYb8E9GivneHaMJpi/W4xk61+RkwxxgDhm5V6Wuy8mO8DzukT6i7AIlmH/9lJo7khWFoQIv+QpshKkPKvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PPFtwQm0wLy6aROsVbDwuzo0o2XkvWbZYxMzf53GkX8=;
 b=Xdql/VlIqmeZUblrR3YApGH62KDXyhrkABEcU+Bs7ii7XSrry9GJ8b3gjeqp4b2/21rUnW4V42qmVpsgXplwPOECqZxktlyRFlrBiby67f8Mq+LVuDszW8MrL5VSw6LDUcqgkzmp82uGdjMee6732MHZnX6h92WaFHGTdysE+BYrTpgQ2KPTt4Weld0SsgnOXdX0zdJ+ZXGAXUkqDFtRF7mpgESlEPb8B6L6xGVm9l+zOMboBiTQV660c1jT9bl0iZeZL8pDiHQegVb2a0G1+zu4MLqwS1aQgWlaT5P6T6T4xzM6XzSZ4f/ozMUfMbi6JxLFEkoZZUkAxa7sqwlrww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PPFtwQm0wLy6aROsVbDwuzo0o2XkvWbZYxMzf53GkX8=;
 b=l7WZjsVf9hWtAE+O1LW9YDOIXmDXQesoJl76BnKP7wz8fkJFMdPpkXLGt/PrJUGtrnKywAbqdXoFmK+XnWVUif2tjwY1OY3BSfZs+srKrwqUL06X93lBm8dU9l+HQIEtuW59Td7m1ZQQBFH/hU9U1g5RG4aMW453QXZIxbAAg/o=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BYAPR11MB3480.namprd11.prod.outlook.com (2603:10b6:a03:79::27)
 by SJ0PR11MB4813.namprd11.prod.outlook.com (2603:10b6:a03:2df::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.24; Fri, 16 Oct
 2020 07:49:14 +0000
Received: from BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::4c97:65e4:a822:4cc1]) by BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::4c97:65e4:a822:4cc1%7]) with mapi id 15.20.3455.031; Fri, 16 Oct 2020
 07:49:14 +0000
From: "Chen Qi" <Qi.Chen@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] sssd: use /run instead of /var/run in systemd service file
Date: Fri, 16 Oct 2020 15:49:00 +0800
Message-Id: <20201016074900.36692-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR06CA0001.apcprd06.prod.outlook.com
 (2603:1096:202:2e::13) To BYAPR11MB3480.namprd11.prod.outlook.com
 (2603:10b6:a03:79::27)
Return-Path: Qi.Chen@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpg-core3.wrs.com (60.247.85.82) by HK2PR06CA0001.apcprd06.prod.outlook.com (2603:1096:202:2e::13) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.21 via Frontend Transport; Fri, 16 Oct 2020 07:49:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2dc5f544-4969-4839-1cbe-08d871a7f9ec
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4813:
X-Microsoft-Antispam-PRVS: 
	<SJ0PR11MB48134D523DF1B9A54281B951ED030@SJ0PR11MB4813.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:843;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	MYq4Tdj9icvrRJNh0ZL4O8cncWLnzQvvUDZT/EVPyJGpXeVsnD/rtaCOGYh1Oz35mfYK8Ao33mgeEtkKkAfD0qqPrLPVNNXCq1P1WwqKfvywjVWgbzBAa/JmN+Z4qmMaPYZyryqDh3ZarcXno8CZ2t3SRJ+bzJoNGevzzaWmWGp+sKgRHGS6OLV8UdILS3OEh7d10Yjvs0tUsYaqW94qiiUkfY/cymdg82cu3MFwyuZfH1I8ZIIFsVCQuIlwPKoZ1R99UnPnGQRsVYPHI1ayv0jXMfDmSbQmx53YpjXeV/ENMPg9SdxA9vtWI+NP6tyz0SAREtV0A/UDnpk5pH26fZX0kFJt4FdfSfKEU3NbiKrwtgNixBc7Zwxk9EriPW4fKVnYIxkRqNu7nufPcdt5TxQ8bx+VTPaMasvFXFoSkv6/8Uoc4yRhtLI9ic65U3Adyhge3ji1gbNvN/iuLPOljg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3480.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(136003)(39850400004)(346002)(376002)(366004)(83380400001)(5660300002)(956004)(66476007)(316002)(8936002)(66556008)(66946007)(6486002)(1076003)(6916009)(6666004)(34490700002)(86362001)(15650500001)(52116002)(2906002)(6512007)(2616005)(478600001)(8676002)(16526019)(36756003)(186003)(26005)(6506007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	/Z3p+JoZ8PAEpQlQmHDtyw9MEHzxobCiQ9tLcApIiWrl6kohNzYHOclTIV2WmVdCuGO75caAFp9NOOMWo2scy+JMinbwlDXy1QBWX5dVCfyyKQDXXKeK4+eGC754ma+MaVGlN8Urj5ApwIBmTDXD4ZVix6Kck/rUBQaX+mHOC7+2FsxlVynwJd3eTpMsOuNz6EaLuKedj8/OWboKUqLeali4R3jBSy+MM2RgyDCA4kROkzQ5pHTunC87PBb/ymGcr7fWlil8heE1DOOV9Z6XCfc2A0Q5O2/24HHCIKRnMpiQEiETQMcv/ilNeIOnbmv5NMXYuVSmuBLD8RWmqF+kupXu/nkImPNE/KvrZ8xNlZ1BDjMoIeYaGM6cZc54ZY9BHB8e9U/8D3ph4t/MUbV6JSU0pkhfDo3o965rlFn6d9VsYQ/O4EKxZRVBdkOhubnODgZc6/KORmIstOt7CloixuKM6ZVha73IwjKlDOyqeBkn2wHb2uAZyWmSz1Ic+CHnHXZ3O6nBWiuDawzttylq6c1ws1kb5pZZrl9FYN8IWU/TrTzZYh8GLO1tTBBAxIlhQJ/3vZdR6ZLEpNPHxnygsvo5hrsZ+RiVh9Igj7SYMdslEd1muUkAII+wBvYUg6uYMpgLSBCo2+T0QfGuqYRlUA==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2dc5f544-4969-4839-1cbe-08d871a7f9ec
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3480.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2020 07:49:14.1301
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JgUi+tls00qDt9d0zkiSN6ZDmKOsBToBPVecH4ptIAeegRnZUsfzqmqg/keJ962dm/m9fMG76yjb7R/JlDRCLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4813
Content-Type: text/plain

/var/run has been deprecated by systemd, so use /run instead,
as suggested by systemd.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 ...ervice.in-use-run-instead-of-var-run.patch | 28 +++++++++++++++++++
 recipes-security/sssd/sssd_1.16.5.bb          |  1 +
 2 files changed, 29 insertions(+)
 create mode 100644 recipes-security/sssd/files/0001-sssd.service.in-use-run-instead-of-var-run.patch

diff --git a/recipes-security/sssd/files/0001-sssd.service.in-use-run-instead-of-var-run.patch b/recipes-security/sssd/files/0001-sssd.service.in-use-run-instead-of-var-run.patch
new file mode 100644
index 0000000..694dc1a
--- /dev/null
+++ b/recipes-security/sssd/files/0001-sssd.service.in-use-run-instead-of-var-run.patch
@@ -0,0 +1,28 @@
+From 5d3ea263fbc19df41998a9ac725286453fdf7b3a Mon Sep 17 00:00:00 2001
+From: Chen Qi <Qi.Chen@windriver.com>
+Date: Fri, 16 Oct 2020 15:39:41 +0800
+Subject: [PATCH] sssd.service.in: use /run instead of /var/run
+
+Upstream-Status: Pending
+
+Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
+---
+ src/sysv/systemd/sssd.service.in | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/sysv/systemd/sssd.service.in b/src/sysv/systemd/sssd.service.in
+index 0c515d3..8224b24 100644
+--- a/src/sysv/systemd/sssd.service.in
++++ b/src/sysv/systemd/sssd.service.in
+@@ -10,7 +10,7 @@ EnvironmentFile=-@environment_file@
+ ExecStart=@sbindir@/sssd -i ${DEBUG_LOGGER}
+ Type=notify
+ NotifyAccess=main
+-PIDFile=@localstatedir@/run/sssd.pid
++PIDFile=/run/sssd.pid
+ 
+ [Install]
+ WantedBy=multi-user.target
+-- 
+2.17.1
+
diff --git a/recipes-security/sssd/sssd_1.16.5.bb b/recipes-security/sssd/sssd_1.16.5.bb
index 9784ec7..cf4cd2c 100644
--- a/recipes-security/sssd/sssd_1.16.5.bb
+++ b/recipes-security/sssd/sssd_1.16.5.bb
@@ -22,6 +22,7 @@ SRC_URI = "https://releases.pagure.org/SSSD/${BPN}/${BP}.tar.gz \
            file://0001-build-Don-t-use-AC_CHECK_FILE-when-building-manpages.patch \
            file://0001-nss-Collision-with-external-nss-symbol.patch \
            file://0002-Provide-missing-defines-which-otherwise-are-availabl.patch \
+           file://0001-sssd.service.in-use-run-instead-of-var-run.patch \
            "
 
 SRC_URI[sha256sum] = "2e1a7bf036b583f686d35164f2d79bdf4857b98f51fe8b0d17aa0fa756e4d0c0"
-- 
2.17.1

