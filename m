Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1876CC433EF
	for <webhook@archiver.kernel.org>; Tue, 24 May 2022 15:53:18 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.11123.1653407595144086548
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 May 2022 08:53:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=cvNTR5bL;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=214377301e=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 24ODqCBI011672;
	Tue, 24 May 2022 08:53:14 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=C91JxVMXexH5byHBXD+e5+EG9MareBoJa62dAyVZkSk=;
 b=cvNTR5bLy9on1G0tfaC93VMAEUuuqCXBQ7i5D8QFC/tjJ+k7wqdYEnyr2nOWo04d2wPA
 2h9z2H0tbR4Hn9iXqp7SfDiOisn9dfUeld2KY/UyMUZljuhbCs7ZKHY5p4Bq97cFUNil
 r7q5ow0cvjQQl8IUp02AOENDn1WB9PInQTA7gQO/vpGX4xeQ2IU0w9S6D6qbzY3bI/q5
 BWmS9OhGg5SyYQWDfyrO1+zgFIHFOyTArotX6bu/BQrV/uK4rPpdW8qmiv0jo5ukCxbO
 FSIl9v7gaV7ou5k84MsQq/G3R3LwDK+GUeafyGTaOD509q5djm6PE1vr8PHOxsTmbu8x Ug==
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2171.outbound.protection.outlook.com [104.47.58.171])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3g6ykht6ty-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 May 2022 08:53:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BVeNPA9+LjS4cRoDYHMvVPpd2wFKmiu75UuymR0tVzn7/toUezXsRXKHGI55SN3yzbTIAUml3+29lJmciU1iAVWja7x9/tQjGkPntQ5x8RdZdJvQ7m0IZIgyoS5htatYvJ7Vd2+KSbsCRq6/ByY0/F34Hy6sCf6cl9sHIJlJP8uCKgrRtVyq/pFSLdb89Cfopzfb4Utu+ZBnPmDK5m5f77rv8bZgZKwWRYFOxUdSp8sj/ynsWCdfoirqQPoOdLTpzxfPYXYXBybVsMNnPs6RiDnGMZ7WPK2NHCiJUg7LPAxxYOevEHLV/8Ou2Qj0cIMimuu/GDZYJPsh+9SR7IJsTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C91JxVMXexH5byHBXD+e5+EG9MareBoJa62dAyVZkSk=;
 b=dZLzVM8vjYwFHeMfYiAnHGmQLPlc1jL6+aGvAeWPYrBlABpb43s9q+abgioU4vK66EaQ5A+WlMvP/F4OM4UOmtJntcZ9FlkrL6acdGO0FHv7F6+zR1FYBAEU8F6m/HaAOrw5Sqeo8rV41a6Z5DO43RQxeM6vOuu0yHVekskB9JMEfzvSnNmxrVocI0ohednjZsvlJjRRsv4IAo9zkz18AgrdvmCMdaW8Ox9NuynZ+FxprPYwt/0twsmy1NQYQdGtSD4Nku0AJHrefc5B5YZNTXLpJZUMnWO5kTThSc9RJH12awYWXvJNFocDXaFq9hT2EXf/C6x+9QyB5P4UvIymTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CH2PR11MB4309.namprd11.prod.outlook.com (2603:10b6:610:44::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Tue, 24 May
 2022 15:53:10 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::887b:8092:7a51:e202]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::887b:8092:7a51:e202%7]) with mapi id 15.20.5273.023; Tue, 24 May 2022
 15:53:10 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][master][kirkstone][PATCH 1/2] refpolicy: backport
 patches to fix policy issues for systemd 250
Date: Tue, 24 May 2022 23:52:53 +0800
Message-Id: <20220524155254.2161000-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SL2P216CA0011.KORP216.PROD.OUTLOOK.COM
 (2603:1096:100:18::21) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 51ce2521-8a21-4d27-a411-08da3d9d8045
X-MS-TrafficTypeDiagnostic: CH2PR11MB4309:EE_
X-Microsoft-Antispam-PRVS: 
	<CH2PR11MB430940EB8A6488B5526F52AFF9D79@CH2PR11MB4309.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	4qJR40aC30OXrtggppvCzJ+14ZggVUvh9S96BiaSBj/P7hrz9SgyKtg1JZsFoeRKF06gJQNSRJg79Jzp2wrGtPkZmryH3+Rm1sQ0xygKeMJHMsvmks/7cWwnsuJUCGv30TYgDA9M8BtL/5E+Uxx0lJkRNF6jqlpDWi0YJHkY48WDe2JA0ef6KCIwlWs07tdmgTCZJ5OWjou6x3umvoPBWNy3LfDq3+ylFLs42XzmNRjtAzpPFu4LTapk0D0HVNAeeIwnCZpfHh14lo3UxGL6aFrykXbyIvQadmBu3XxW0UvrqLW2pJ9aLZAXTjplCKdd8Kv5duXG/3FQooTGyiBL3cxc11IFRgXSgqOdTdnEWHmSbco6ERKKbT9TRRKWx8vJPnVmNquTq+vQWdn/hdTDdkHF+QSYMfRMjjVjd5YgHq42Ku+4iOQkH95RE4SqO/DH3EOgsmNGTpXZ33chHn7AOq2H6yhEBBQReRGAE5aEnRyAxuWpohWDvVYoO+OKtYrv7KButFvIVYuCUFY5xmDLwgsF3A3Z7kP83CeNnIpb6rDdpuqDDRnpJ6ZalAOj296tL7gJEbGMHwN6qdWmygMJTt3FKeohNp+pYmQa/JgdCZUnWxLmyJ/r9qbOHVped4XAhgavm/E23xa10GIWJAjkk1E22GR3yf75hYCixI072dhaZhm2ULN5su2uuDLqJv6ThEYSfOxIVJZbnsibMGAuOTdt0TDZwfIaKPYBYAnr20bdYcbSjVyRs2xUQc90C8peavvEbWs94nvUV1HHuGwkPvz5HAI7WoqnAP1km//BqyJpeaCR1tNp2kyzBXAmEcedglgFa+6zFRLt2KjP+bKHtQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(44832011)(316002)(52116002)(30864003)(26005)(6512007)(2616005)(6506007)(86362001)(38350700002)(38100700002)(2906002)(66556008)(8676002)(66946007)(66476007)(6486002)(8936002)(508600001)(6666004)(5660300002)(83380400001)(36756003)(186003)(1076003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?iPg5OOzGg+iACqzjh5E6iEGu2C6VLVUnTxibUCogUtVumrBQNoFfdezN1Fvy?=
 =?us-ascii?Q?hf2wqrERpbKBvOzjLroDmlWns98U7avNpjpynBlblhwyqv653RV0E1kDVgqN?=
 =?us-ascii?Q?HjAHbBSkcTcGbYnbciQaea6m3kdXAp83p03S7tUs/4GOaGOa9t/WgoWbkKdG?=
 =?us-ascii?Q?OFtKCZb8F/oR0gc439GvM01ejiPgFt0WNoSU6qcGH5O9BXc1DjXpIsagGtDR?=
 =?us-ascii?Q?CU9POjfQLYlIsukPxbOs+14V2BJd31ckgmZzicywnN5tjZTUALhX4qPnZUwY?=
 =?us-ascii?Q?eQ5DSFRzDYH57dg+jrCNxCRDJ0jmrMVR29jeCmlqWVqhg6OmQ8lXMctMALVw?=
 =?us-ascii?Q?Q2lv4fuOYNSJkmUSxbIaqqTdsVVCeyyqquYKvZ5ktCKBF2ZGgoRZZhpwM//q?=
 =?us-ascii?Q?YIKECxvRNwVXEqX8xUhsgbI3YqfZibk2ac2WPZbdp50+qVIuYq3RsX3v072D?=
 =?us-ascii?Q?5sHGLrytrKY5xIP1IODUr3FZcC04C1phHHcPCYwf98wJnlga0GPWejbt9ZwC?=
 =?us-ascii?Q?1TVlisDCE446ylVWivAhbXcc4XsnF/GSsgDLLYVt6q3LwQ4XPv7tJvl7RKwD?=
 =?us-ascii?Q?qRwLBdd3tgOGUuldOQs4OVnYnX2q2cX/7TrAMD/jzR/qbuERL/rBGD6ZestD?=
 =?us-ascii?Q?nnfl2UJ0RaRq0rF2/HKMdPV5Y7cdpRvdyvHloh+xatf9QKaSnTB57PWYVSIM?=
 =?us-ascii?Q?XAaSHKAygfectlQa4ON/cyRHm1IW4v3B2n6nmR5Lj8uWB9/jwMncD0McSOPr?=
 =?us-ascii?Q?/ILdUH4EhuzDoyDysFrJxyZPcvk1Vs4ns0vtYxChMjahjyoHjmIcBP4XmoZC?=
 =?us-ascii?Q?EiThwEeTM+FrcrMR+a4lxLDKc35AQUzT4exzjqCbR+0yOTI1DqAOGYCFihYP?=
 =?us-ascii?Q?Q12tiCWlifb5jz+cavrrMBG5AD+mEpnPmCx0VKOkJr1EFNNtTsyZ9QGOKW0N?=
 =?us-ascii?Q?gUWaZMR+43SJjTu7cdhPfc01zTxZR4buqDftCu9RqKjhNpZMnbAVNQ3UR9U2?=
 =?us-ascii?Q?7+qYWGzU8RMJrAe91FnBh2y23q9y4oviE8Tsr2oNd7hprVKYb8EM0uYPZC25?=
 =?us-ascii?Q?e6NSjt9QHumHP0HXMCpPSWM4p2B/drdcCTy1Av1uls7WbKwy3lV/nyPuRGty?=
 =?us-ascii?Q?xikS3DAi8328A+ftPW3oDejB7d9XCm1XYpU7pN22NMShBiJlwMtzYpb4PjnH?=
 =?us-ascii?Q?eq31YAJ0SsTCOjhAiK3zb1bnM2X4JUnNN4qsEjfTmjw+iEFqVs60F3fATIgf?=
 =?us-ascii?Q?EQXwvPoLxTdNSD0fTQC3S2MUYDXbXiaLe26PWrG2ZOY6ZwhPcszvydhfK/kV?=
 =?us-ascii?Q?bQmHUcrvmLDPC9MonmXUYJhnh3PKNZBzmNyC2KFVVOh8E+Z9XhAsomDcIM35?=
 =?us-ascii?Q?qseyMCvrUAv74B30NuCfa7vXaej6DWGfeewe8sh60uUslg8irrqpRH7AaNrQ?=
 =?us-ascii?Q?Y7XGR2f9aC28w1A5nXei55Dnoc/Maajz3EcmUtH2TBxGHHb+f6OHNDXnlq/a?=
 =?us-ascii?Q?nuCikaho2VDGSiTD5P3kG2HL9wtA3OVBhlmxFphHuV3EcD9n9JlHoqC7Hbi2?=
 =?us-ascii?Q?Pd6aKcqyTc7TNT0DOmI/A7MVt460kP18ZGwKCEdfVB+tJxWfCSlDig45wXsY?=
 =?us-ascii?Q?sND3UK0e7Cxc/2tT3ieHfQ+B2vVjhbT/0K1a5FejoqsvApVg47xhuJDkXhm6?=
 =?us-ascii?Q?DaXrKmXWQfnQrn4K86MNxvakIRKm9ebYOj3F7wISZ+7AczjyNKrpR25hjSBj?=
 =?us-ascii?Q?kMBxMQ38wQ=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 51ce2521-8a21-4d27-a411-08da3d9d8045
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2022 15:53:10.0366
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 JGqWFReQiZIa49EIw+wBD8Kyk3lYE96pUp7ibU3NIkeYguQQlDu++ZgIMufhXoUIXATXB6HrC8dYsc+FhCW4Yw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4309
X-Proofpoint-GUID: -caFtN5HlZb5MGv2oS29nN3ZT1qqeEbQ
X-Proofpoint-ORIG-GUID: -caFtN5HlZb5MGv2oS29nN3ZT1qqeEbQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.874,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-05-24_08,2022-05-23_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0
 priorityscore=1501 adultscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 mlxscore=0 suspectscore=0 impostorscore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2205240082
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 May 2022 15:53:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57179

Backport the following patches to fix systemd-resolved and
systemd-netowrkd policy issues:
  systemd-systemd-resolved-is-linked-to-libselinux.patch
  sysnetwork-systemd-allow-DNS-resolution-over-io.syst.patch
  term-init-allow-systemd-to-watch-and-watch-reads-on-.patch
  systemd-add-file-transition-for-systemd-networkd-run.patch
  systemd-add-missing-file-context-for-run-systemd-net.patch
  systemd-add-file-contexts-for-systemd-network-genera.patch
  systemd-udev-allow-udev-to-read-systemd-networkd-run.patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...emd-resolved-is-linked-to-libselinux.patch | 33 +++++++
 ...md-allow-DNS-resolution-over-io.syst.patch | 63 +++++++++++++
 ...systemd-to-watch-and-watch-reads-on-.patch | 94 +++++++++++++++++++
 ...-transition-for-systemd-networkd-run.patch | 32 +++++++
 ...ing-file-context-for-run-systemd-net.patch | 29 ++++++
 ...-contexts-for-systemd-network-genera.patch | 38 ++++++++
 ...ow-udev-to-read-systemd-networkd-run.patch | 34 +++++++
 .../refpolicy/refpolicy_common.inc            |  7 ++
 8 files changed, 330 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy/0062-systemd-systemd-resolved-is-linked-to-libselinux.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0063-sysnetwork-systemd-allow-DNS-resolution-over-io.syst.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0064-term-init-allow-systemd-to-watch-and-watch-reads-on-.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0065-systemd-add-file-transition-for-systemd-networkd-run.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0066-systemd-add-missing-file-context-for-run-systemd-net.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0067-systemd-add-file-contexts-for-systemd-network-genera.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0068-systemd-udev-allow-udev-to-read-systemd-networkd-run.patch

diff --git a/recipes-security/refpolicy/refpolicy/0062-systemd-systemd-resolved-is-linked-to-libselinux.patch b/recipes-security/refpolicy/refpolicy/0062-systemd-systemd-resolved-is-linked-to-libselinux.patch
new file mode 100644
index 0000000..e0db7d3
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0062-systemd-systemd-resolved-is-linked-to-libselinux.patch
@@ -0,0 +1,33 @@
+From 52a4222397f5d3b28ca15a45bb2ace209a4afc3e Mon Sep 17 00:00:00 2001
+From: Kenton Groombridge <me@concord.sh>
+Date: Thu, 31 Mar 2022 13:09:10 -0400
+Subject: [PATCH] systemd: systemd-resolved is linked to libselinux
+
+systemd-resolved as of systemd 250 fails to start with this error:
+
+Failed to initialize SELinux labeling handle: No such file or directory
+
+Upstream-Status: Backport
+[https://github.com/SELinuxProject/refpolicy/commit/3a22db2410de479e5baa88f3f668a7a4ac198950]
+
+Signed-off-by: Kenton Groombridge <me@concord.sh>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
+index 8cea6baa1..beb301cc6 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -1261,6 +1261,7 @@ fs_getattr_cgroup(systemd_resolved_t)
+ 
+ init_dgram_send(systemd_resolved_t)
+ 
++seutil_libselinux_linked(systemd_resolved_t)
+ seutil_read_file_contexts(systemd_resolved_t)
+ 
+ systemd_log_parse_environment(systemd_resolved_t)
+-- 
+2.25.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0063-sysnetwork-systemd-allow-DNS-resolution-over-io.syst.patch b/recipes-security/refpolicy/refpolicy/0063-sysnetwork-systemd-allow-DNS-resolution-over-io.syst.patch
new file mode 100644
index 0000000..63da7cd
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0063-sysnetwork-systemd-allow-DNS-resolution-over-io.syst.patch
@@ -0,0 +1,63 @@
+From 1ba0911e157c64ea15636c5707f38f1bdc9a46c8 Mon Sep 17 00:00:00 2001
+From: Kenton Groombridge <me@concord.sh>
+Date: Wed, 27 Apr 2022 01:09:52 -0400
+Subject: [PATCH] sysnetwork, systemd: allow DNS resolution over
+ io.systemd.Resolve
+
+Upstream-Status: Backport
+[https://github.com/SELinuxProject/refpolicy/commit/1a0acc9c0d8c7c49ad4ca2cabd44bc66450f45e0]
+
+Signed-off-by: Kenton Groombridge <me@concord.sh>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/sysnetwork.if |  1 +
+ policy/modules/system/systemd.if    | 21 +++++++++++++++++++++
+ 2 files changed, 22 insertions(+)
+
+diff --git a/policy/modules/system/sysnetwork.if b/policy/modules/system/sysnetwork.if
+index 8664a67c8..140d48508 100644
+--- a/policy/modules/system/sysnetwork.if
++++ b/policy/modules/system/sysnetwork.if
+@@ -844,6 +844,7 @@ interface(`sysnet_dns_name_resolve',`
+ 	ifdef(`init_systemd',`
+ 		optional_policy(`
+ 			systemd_dbus_chat_resolved($1)
++			systemd_stream_connect_resolved($1)
+ 		')
+ 		# This seems needed when the mymachines NSS module is used
+ 		optional_policy(`
+diff --git a/policy/modules/system/systemd.if b/policy/modules/system/systemd.if
+index 5f2038f22..9143fb4c0 100644
+--- a/policy/modules/system/systemd.if
++++ b/policy/modules/system/systemd.if
+@@ -1835,6 +1835,27 @@ interface(`systemd_tmpfilesd_managed',`
+ 	')
+ ')
+ 
++#######################################
++## <summary>
++##	Connect to systemd resolved over
++##	/run/systemd/resolve/io.systemd.Resolve .
++## </summary>
++## <param name="domain">
++##	<summary>
++##	Domain allowed access.
++##	</summary>
++## </param>
++#
++interface(`systemd_stream_connect_resolved',`
++	gen_require(`
++		type systemd_resolved_t;
++		type systemd_resolved_runtime_t;
++	')
++
++	files_search_runtime($1)
++	stream_connect_pattern($1, systemd_resolved_runtime_t, systemd_resolved_runtime_t, systemd_resolved_t)
++')
++
+ ########################################
+ ## <summary>
+ ##   Send and receive messages from
+-- 
+2.25.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0064-term-init-allow-systemd-to-watch-and-watch-reads-on-.patch b/recipes-security/refpolicy/refpolicy/0064-term-init-allow-systemd-to-watch-and-watch-reads-on-.patch
new file mode 100644
index 0000000..88f070d
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0064-term-init-allow-systemd-to-watch-and-watch-reads-on-.patch
@@ -0,0 +1,94 @@
+From 50670946f04257cc2110facbc61884e2cf0d8327 Mon Sep 17 00:00:00 2001
+From: Kenton Groombridge <me@concord.sh>
+Date: Fri, 6 May 2022 21:16:29 -0400
+Subject: [PATCH] term, init: allow systemd to watch and watch reads on
+ unallocated ttys
+
+As of systemd 250, systemd needs to be able to add a watch on and watch
+reads on unallocated ttys in order to start getty.
+
+systemd[55548]: getty@tty1.service: Failed to set up standard input: Permission denied
+systemd[55548]: getty@tty1.service: Failed at step STDIN spawning /sbin/agetty: Permission denied
+
+time->Fri May  6 21:17:58 2022
+type=PROCTITLE msg=audit(1651886278.452:1770): proctitle="(agetty)"
+type=PATH msg=audit(1651886278.452:1770): item=0 name="/dev/tty1" inode=18 dev=00:05 mode=020620 ouid=0 ogid=5 rdev=04:01 obj=system_u:object_r:tty_device_t:s0 nametype=NORMAL cap_fp=0 cap_fi=0 cap_fe=0 cap_fver=0 cap_frootid=0
+type=CWD msg=audit(1651886278.452:1770): cwd="/"
+type=SYSCALL msg=audit(1651886278.452:1770): arch=c000003e syscall=254 success=no exit=-13 a0=3 a1=60ba5c21e020 a2=18 a3=23 items=1 ppid=1 pid=55551 auid=4294967295 uid=0 gid=0 euid=0 suid=0 fsuid=0 egid=0 sgid=0 fsgid=0 tty=(none) ses=4294967295 comm="(agetty)" exe="/lib/systemd/systemd" subj=system_u:system_r:init_t:s0 key=(null)
+type=AVC msg=audit(1651886278.452:1770): avc:  denied  { watch watch_reads } for  pid=55551 comm="(agetty)" path="/dev/tty1" dev="devtmpfs" ino=18 scontext=system_u:system_r:init_t:s0 tcontext=system_u:object_r:tty_device_t:s0 tclass=chr_file permissive=0
+
+Upstream-Status: Backport
+[https://github.com/SELinuxProject/refpolicy/commit/308ab9f69a4623f5dace8da151e70c6316f055a8]
+
+Signed-off-by: Kenton Groombridge <me@concord.sh>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/kernel/terminal.if | 38 +++++++++++++++++++++++++++++++
+ policy/modules/system/init.te     |  2 ++
+ 2 files changed, 40 insertions(+)
+
+diff --git a/policy/modules/kernel/terminal.if b/policy/modules/kernel/terminal.if
+index e8c0735eb..6e9f654ac 100644
+--- a/policy/modules/kernel/terminal.if
++++ b/policy/modules/kernel/terminal.if
+@@ -1287,6 +1287,44 @@ interface(`term_dontaudit_use_unallocated_ttys',`
+ 	dontaudit $1 tty_device_t:chr_file rw_chr_file_perms;
+ ')
+ 
++########################################
++## <summary>
++##	Watch unallocated ttys.
++## </summary>
++## <param name="domain">
++##	<summary>
++##	Domain allowed access.
++##	</summary>
++## </param>
++#
++interface(`term_watch_unallocated_ttys',`
++	gen_require(`
++		type tty_device_t;
++	')
++
++	dev_list_all_dev_nodes($1)
++	allow $1 tty_device_t:chr_file watch;
++')
++
++########################################
++## <summary>
++##	Watch reads on unallocated ttys.
++## </summary>
++## <param name="domain">
++##	<summary>
++##	Domain allowed access.
++##	</summary>
++## </param>
++#
++interface(`term_watch_reads_unallocated_ttys',`
++	gen_require(`
++		type tty_device_t;
++	')
++
++	dev_list_all_dev_nodes($1)
++	allow $1 tty_device_t:chr_file watch_reads;
++')
++
+ ########################################
+ ## <summary>
+ ##	Get the attributes of all tty device nodes.
+diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
+index 5a19f0e43..24cef0924 100644
+--- a/policy/modules/system/init.te
++++ b/policy/modules/system/init.te
+@@ -518,6 +518,8 @@ ifdef(`init_systemd',`
+ 	term_create_devpts_dirs(init_t)
+ 	term_create_ptmx(init_t)
+ 	term_create_controlling_term(init_t)
++	term_watch_unallocated_ttys(init_t)
++	term_watch_reads_unallocated_ttys(init_t)
+ 
+ 	# udevd is a "systemd kobject uevent socket activated daemon"
+ 	udev_create_kobject_uevent_sockets(init_t)
+-- 
+2.25.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0065-systemd-add-file-transition-for-systemd-networkd-run.patch b/recipes-security/refpolicy/refpolicy/0065-systemd-add-file-transition-for-systemd-networkd-run.patch
new file mode 100644
index 0000000..1029490
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0065-systemd-add-file-transition-for-systemd-networkd-run.patch
@@ -0,0 +1,32 @@
+From 6f8a8ecd8bafd6e8a3515b53db2a2982a02ff254 Mon Sep 17 00:00:00 2001
+From: Kenton Groombridge <me@concord.sh>
+Date: Thu, 31 Mar 2022 13:22:37 -0400
+Subject: [PATCH] systemd: add file transition for systemd-networkd runtime
+
+systemd-networkd creates the /run/systemd/network directory which should
+be labeled appropriately.
+
+Upstream-Status: Backport
+[https://github.com/SELinuxProject/refpolicy/commit/663b62f27cb12c22f056eba9326cf3f7f78d8a9e]
+
+Signed-off-by: Kenton Groombridge <me@concord.sh>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
+index beb301cc6..654c6a42a 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -917,6 +917,7 @@ auth_use_nsswitch(systemd_networkd_t)
+ 
+ init_dgram_send(systemd_networkd_t)
+ init_read_state(systemd_networkd_t)
++init_runtime_filetrans(systemd_networkd_t, systemd_networkd_runtime_t, dir)
+ 
+ logging_send_syslog_msg(systemd_networkd_t)
+ 
+-- 
+2.25.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0066-systemd-add-missing-file-context-for-run-systemd-net.patch b/recipes-security/refpolicy/refpolicy/0066-systemd-add-missing-file-context-for-run-systemd-net.patch
new file mode 100644
index 0000000..f84eb4a
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0066-systemd-add-missing-file-context-for-run-systemd-net.patch
@@ -0,0 +1,29 @@
+From 2e3f371b59bee343c42e4c69495df0f3719b6e24 Mon Sep 17 00:00:00 2001
+From: Kenton Groombridge <me@concord.sh>
+Date: Sat, 2 Apr 2022 15:44:01 -0400
+Subject: [PATCH] systemd: add missing file context for /run/systemd/network
+
+Upstream-Status: Backport
+[https://github.com/SELinuxProject/refpolicy/commit/f2fe1ae15485da7b6269b7d0d7dbed9a834f1876]
+
+Signed-off-by: Kenton Groombridge <me@concord.sh>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/systemd.fc b/policy/modules/system/systemd.fc
+index 34db8c034..d21914227 100644
+--- a/policy/modules/system/systemd.fc
++++ b/policy/modules/system/systemd.fc
+@@ -85,6 +85,7 @@ HOME_DIR/\.local/share/systemd(/.*)?		gen_context(system_u:object_r:systemd_data
+ 
+ /run/systemd/ask-password(/.*)?	gen_context(system_u:object_r:systemd_passwd_runtime_t,s0)
+ /run/systemd/ask-password-block(/.*)?	gen_context(system_u:object_r:systemd_passwd_runtime_t,s0)
++/run/systemd/network(/.*)?  gen_context(system_u:object_r:systemd_networkd_runtime_t,s0)
+ /run/systemd/resolve(/.*)?  gen_context(system_u:object_r:systemd_resolved_runtime_t,s0)
+ /run/systemd/seats(/.*)?	gen_context(system_u:object_r:systemd_sessions_runtime_t,s0)
+ /run/systemd/sessions(/.*)?	gen_context(system_u:object_r:systemd_sessions_runtime_t,s0)
+-- 
+2.25.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0067-systemd-add-file-contexts-for-systemd-network-genera.patch b/recipes-security/refpolicy/refpolicy/0067-systemd-add-file-contexts-for-systemd-network-genera.patch
new file mode 100644
index 0000000..0aaf096
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0067-systemd-add-file-contexts-for-systemd-network-genera.patch
@@ -0,0 +1,38 @@
+From 143d339b2e6611c56cd0210279757ebee9632731 Mon Sep 17 00:00:00 2001
+From: Kenton Groombridge <me@concord.sh>
+Date: Thu, 19 May 2022 11:42:51 -0400
+Subject: [PATCH] systemd: add file contexts for systemd-network-generator
+
+Upstream-Status: Backport
+[https://github.com/SELinuxProject/refpolicy/commit/73adba0a39b7409bc4bbfa0e962108c2b1e5f2a5]
+
+Thanks-To: Zhao Yi
+Signed-off-by: Kenton Groombridge <me@concord.sh>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.fc | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/systemd.fc b/policy/modules/system/systemd.fc
+index d21914227..1a35bd65c 100644
+--- a/policy/modules/system/systemd.fc
++++ b/policy/modules/system/systemd.fc
+@@ -35,6 +35,7 @@
+ /usr/lib/systemd/systemd-machined	--	gen_context(system_u:object_r:systemd_machined_exec_t,s0)
+ /usr/lib/systemd/systemd-modules-load	--	gen_context(system_u:object_r:systemd_modules_load_exec_t,s0)
+ /usr/lib/systemd/systemd-networkd	--	gen_context(system_u:object_r:systemd_networkd_exec_t,s0)
++/usr/lib/systemd/systemd-network-generator	--	gen_context(system_u:object_r:systemd_networkd_exec_t,s0)
+ /usr/lib/systemd/systemd-pstore		--	gen_context(system_u:object_r:systemd_pstore_exec_t,s0)
+ /usr/lib/systemd/systemd-resolved	--	gen_context(system_u:object_r:systemd_resolved_exec_t,s0)
+ /usr/lib/systemd/systemd-rfkill		--	gen_context(system_u:object_r:systemd_rfkill_exec_t,s0)
+@@ -60,6 +61,7 @@ HOME_DIR/\.local/share/systemd(/.*)?		gen_context(system_u:object_r:systemd_data
+ /usr/lib/systemd/system/systemd-backlight.*	--	gen_context(system_u:object_r:systemd_backlight_unit_t,s0)
+ /usr/lib/systemd/system/systemd-binfmt.*	--	gen_context(system_u:object_r:systemd_binfmt_unit_t,s0)
+ /usr/lib/systemd/system/systemd-networkd.*		gen_context(system_u:object_r:systemd_networkd_unit_t,s0)
++/usr/lib/systemd/system/systemd-network-generator.*		gen_context(system_u:object_r:systemd_networkd_unit_t,s0)
+ /usr/lib/systemd/system/systemd-rfkill.*	--	gen_context(system_u:object_r:systemd_rfkill_unit_t,s0)
+ /usr/lib/systemd/system/systemd-socket-proxyd\.service	--	gen_context(system_u:object_r:systemd_socket_proxyd_unit_file_t,s0)
+ 
+-- 
+2.25.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0068-systemd-udev-allow-udev-to-read-systemd-networkd-run.patch b/recipes-security/refpolicy/refpolicy/0068-systemd-udev-allow-udev-to-read-systemd-networkd-run.patch
new file mode 100644
index 0000000..259863c
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0068-systemd-udev-allow-udev-to-read-systemd-networkd-run.patch
@@ -0,0 +1,34 @@
+From 6508bc8a3440525384fcfcd8ad55a4cd5c79b912 Mon Sep 17 00:00:00 2001
+From: Kenton Groombridge <me@concord.sh>
+Date: Thu, 19 May 2022 11:43:44 -0400
+Subject: [PATCH] systemd, udev: allow udev to read systemd-networkd runtime
+
+udev searches for .link files and applies custom udev rules to devices
+as they come up.
+
+Upstream-Status: Backport
+[https://github.com/SELinuxProject/refpolicy/commit/998ef975f38c70d57e7220b88ae5e62c88ebb770]
+
+Thanks-To: Zhao Yi
+Signed-off-by: Kenton Groombridge <me@concord.sh>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/udev.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/udev.te b/policy/modules/system/udev.te
+index 4c5a690fb..8e243c0f2 100644
+--- a/policy/modules/system/udev.te
++++ b/policy/modules/system/udev.te
+@@ -270,6 +270,8 @@ ifdef(`init_systemd',`
+ 	systemd_read_hwdb(udev_t)
+ 	systemd_read_logind_sessions_files(udev_t)
+ 	systemd_read_logind_runtime_files(udev_t)
++	# udev searches for .link files and applies custom udev rules
++	systemd_read_networkd_runtime(udev_t)
+ 
+ 	optional_policy(`
+ 		init_dbus_chat(udev_t)
+-- 
+2.25.1
+
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 96d0da1..1d5a5c0 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -77,6 +77,13 @@ SRC_URI += " \
         file://0059-policy-modules-system-setrans-allow-setrans_t-use-fd.patch \
         file://0060-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch \
         file://0061-policy-modules-system-logging-make-syslogd_runtime_t.patch \
+        file://0062-systemd-systemd-resolved-is-linked-to-libselinux.patch \
+        file://0063-sysnetwork-systemd-allow-DNS-resolution-over-io.syst.patch \
+        file://0064-term-init-allow-systemd-to-watch-and-watch-reads-on-.patch \
+        file://0065-systemd-add-file-transition-for-systemd-networkd-run.patch \
+        file://0066-systemd-add-missing-file-context-for-run-systemd-net.patch \
+        file://0067-systemd-add-file-contexts-for-systemd-network-genera.patch \
+        file://0068-systemd-udev-allow-udev-to-read-systemd-networkd-run.patch \
         "
 
 S = "${WORKDIR}/refpolicy"
-- 
2.25.1


