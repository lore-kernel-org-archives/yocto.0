Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19AD3C433FE
	for <webhook@archiver.kernel.org>; Tue, 24 May 2022 15:53:18 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.11227.1653407595654851723
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 May 2022 08:53:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=bA8arVkn;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=214377301e=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 24ODqCBJ011672;
	Tue, 24 May 2022 08:53:14 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=LBUnWAMmrTaPzDG//z5qdtJd/gNRlZgOQuY9GLOjvD4=;
 b=bA8arVknAY7IpziLovTLZL+ViJLye1sRTCaD6RB5NuACExD4mS9p+dkBNfBBNqX6jYDe
 SAoV9HpMC+nTPyXtoFRFBOeUA0n9UK6/ZvuhzRMwnymGPCD6+kzmgIaOHL1XBsXujmme
 baUC/Bj0bruT0GujZUqne6N2rVfTx9OwycBlF+pHx+HBzBPTapA6uHWoyatz2p6WAZi3
 i37JhJZY0dwgI3Tf8iS4aHsYredqi8don+ub2/+b5jfexyZYVAVoK06PRQqpQuCF1zOb
 gtPGLNIqPUedRR/Y34k5dNBBsGRp/qvNmfvzNDCAbQkTq/rn555jY3eny93nHAERN4LC 3g==
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2171.outbound.protection.outlook.com [104.47.58.171])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3g6ykht6ty-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 May 2022 08:53:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hUwaPGXbp4Ud7x8PXOqPhHns13LaGzZ6ICiSM5CETvLB3fHkwACgjr5UkA9nddzSq2h/w0YjJwRQ6i4kXWUEhLEGqU87dKjPhUwHa/+hOec7pwHiwHbkkijxaUDVwy9L0EHYT09dEfP0lNY0OoyyR/50/w6SlAeq/14Jsn3bSXANX6bei2F/xowTsiVvzeNPEWVqaxLwftvKxS3XYwyIndAlvKC3Rno6+nqW1rcv0MF4e8YcwcOrZOtYOmsfoqVif2etBcdh5PHSEKJ/O+nee8ywceBawn3VTRKEW9xoG3KQFXR6vVFO5XpUvjFSjEBmF1qLOIB3ZF3jijU33gBshw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LBUnWAMmrTaPzDG//z5qdtJd/gNRlZgOQuY9GLOjvD4=;
 b=ew1UAGAS++6sVX+jYzK/EZa7AvZus9B7Kzfc/oWS3IcLdZkFdkO7SKmkSF4Fho2ssjZxGZFLZ95aJT/qz6CNWbNYus7doD9KolDl+byMam3u3y2UMq0GBd+qksvmzfScMAlOcq5L4nhBpcn7s2EflLGKp54S3WopQBr1OP/U7CDo/1mjSvHfH3fyjpxr+7T7IiHF2gRH4g4nCksjCb+bNXmtjdBvr38kKBdfXqQk4EC1sdd0MdTt8sNAd6chhrFdtUpC4cy5+RXn7PU/nIoJOVjEU+iXujzBOsMaLCBAXOY+inzvVK3oJQMZ505va/lwETqJhFdseP5HJ0zgCPfvBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CH2PR11MB4309.namprd11.prod.outlook.com (2603:10b6:610:44::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Tue, 24 May
 2022 15:53:11 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::887b:8092:7a51:e202]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::887b:8092:7a51:e202%7]) with mapi id 15.20.5273.023; Tue, 24 May 2022
 15:53:11 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][master][kirkstone][PATCH 2/2] refpolicy: add file
 context for findfs alternative
Date: Tue, 24 May 2022 23:52:54 +0800
Message-Id: <20220524155254.2161000-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220524155254.2161000-1-yi.zhao@windriver.com>
References: <20220524155254.2161000-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SL2P216CA0011.KORP216.PROD.OUTLOOK.COM
 (2603:1096:100:18::21) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6caef4b0-acda-42c9-ace9-08da3d9d8150
X-MS-TrafficTypeDiagnostic: CH2PR11MB4309:EE_
X-Microsoft-Antispam-PRVS: 
	<CH2PR11MB4309295DBB1DF9DA34BDCE64F9D79@CH2PR11MB4309.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5H8tqzWE37e+ZEXLlvmgIA5B+NLDZlnO7Nqlm1qZqqZtXM9RlK7+5o8aiDwaKgySKnJ102bKb4iP4eetGNEDUrchzivVd9w+381Y2dIqyNZTQPssrA4K5N+Kiaut/0b5ogBSoVET0aQVdAOIZ25Ka8UfsNKSyKeeRhF2nPBITvU1hR3Qbb2w0frW97Of0yeLfNEIWtK+Ac0+dMs2yRlweHp+69039AuBFK7A5L0scbxOYfRLK2oIazDuazfZmApp4cn61k3qEpDUaBTamieh0kc5YWuZQoZso/29SNtrUXK0vb1qUuPrg6T9wZqnSZ5Y1/g2hKXOaXW5qUIoJAt3GCxNmaGEfr6oIMyZNIKAVsDQbhz0/PF5fjkuFvAqQAknHmaR6AitnhClK0SD9EEOEO6ZrtawPzBefC1aU0Ezp9KVsZK+MQN4B3ITr3ivJlEDMwXMPtSMN9ITxSoQryBU0/ZEF/tmlz0zO+9IMdVlQA43P6Y9aJPYC4C5HlYsT3rb1ni23k9XeD2xcGeBM5wTC0s+gKMme6QP0BoSQXANxVQQa4x2SGPlBGA4msrL6UYlyj49Uy2QScJ6AMxKPHGCUi9H5+LNsrWqAbUtulRH2MNubchJxo+ThKfC/rPiXGdF1TPMde7ySJi5BFW8Dm+jNHpyRPSRfC+bcsfx+8NLiEJpvNTYvO/pp3RDZxsH3mMZfvjikzqDlSmJGs3dAEdJjA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(44832011)(316002)(52116002)(26005)(6512007)(2616005)(6506007)(86362001)(38350700002)(38100700002)(2906002)(66556008)(8676002)(66946007)(66476007)(6486002)(8936002)(508600001)(6666004)(5660300002)(83380400001)(36756003)(186003)(1076003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?MyC3QwwOviEHDAydsdd8qYFplDn+VZZAnrN2m6u196Jke+IcslpeNwriHQZA?=
 =?us-ascii?Q?y48iZbb2aiSQG8UsVj7+QgJp0sf6EbARSoy3rq4G8ai+giVsAA9FMMmnaim8?=
 =?us-ascii?Q?AKxVqDGhsKFOLIJ5TOzaZxhupVh8nMjjtXkPR4HBTKSvVnNvbPvbDcDWIwme?=
 =?us-ascii?Q?q2Q/Vzm1ccS8teUE7zjJ8VXwF3SI+1EgKxj4FBc2V2mlwVBsZZSrDRujVL9p?=
 =?us-ascii?Q?xTJm7fjRZGm2avfkDiTBwjQEtJX2hynRN8wnoqZ3o7yoaP36UsRlgYkxezgD?=
 =?us-ascii?Q?ZaJoz4lqo3krL4JR79G4In6lyhoVyvuwuuHLF6b6Kk51wXxHD17qz8Jx6uLz?=
 =?us-ascii?Q?aifMo967o0kTtf+mx2cv3WItXOKoV9E0o5/tTCGduRcJJKlT6FFJcU4O7CQx?=
 =?us-ascii?Q?WdpweWryR57nm6BGi0Y+biaIKnmbsChIerYdh5958TbBLr3ZTaoyH1Z0q14M?=
 =?us-ascii?Q?c1L+M1qVHtgqVR/1e+1GAfGsA559bz/49k9mlnQfeOHZWHbFQ1qbP2pyikzP?=
 =?us-ascii?Q?up0zydCVo9G6iSsfx+YX2ANlHx5KSVCXRcP5g0RyMfjEB4nP2oW1q7u8Qt+f?=
 =?us-ascii?Q?r7vv7MIRrS/HWU58VGnUwOrPo1BeotbeC0IYiRSlYXDKUFqxkre5YNNzhUgX?=
 =?us-ascii?Q?1crcoPpJW7tobX73SI+tdL4wPSY73nGZwGLMlelntF+g4GCg8p3NN9R4jcgG?=
 =?us-ascii?Q?6ZAnXtkUpO1bTbMRz2QugzMfxP04sD91omcBhbE65jfXUXw1tft/SLCsoKp1?=
 =?us-ascii?Q?0DseUwIRRr2zbyIHoqXpGXaJpDvFjTUSVuIeFTm+rOkzMHrsPNGoAtmsVtaV?=
 =?us-ascii?Q?UXhMH5M4/XsfkApT8M0Cr2tJjdY4yEJDgApF4RwdZPM9pa8+PB50C9d7q8Yc?=
 =?us-ascii?Q?U+g7noyy3RYJF2ccOt+vfTbhR4kBZLGc8b1UUxVnOBHvCGLyST3nx2t+pMG4?=
 =?us-ascii?Q?NbRRjuPMIpXITuVcmttRkhgBGyf8AyLoRUqhXuXoVNNOVXh2vK9UNQKMl7Vn?=
 =?us-ascii?Q?/iGKhySUAmQEIaVJ0JDNzb5OqwGaJICBKVYxngLK6C43abTh2HPqcu+KvUQT?=
 =?us-ascii?Q?p3AtY5KgjaW+NVP1yLS66GCsIkrHhSJP69OjYw45mv7Cb9U3EkTGxd8PJtp5?=
 =?us-ascii?Q?w6sY7DbcoeVgYEHFC4n7erWE4a9YGkV89jBqCEQqgdmEXuDgniH8L+2lZ3mk?=
 =?us-ascii?Q?kKJcGYUP19j7vaExp7Ngt4LIqiiGGwRiW9GQD5mL5gOtd2a5UsiFjfNGWWC7?=
 =?us-ascii?Q?hNCyzwKfCuvX164gHrf70Rg08yKP6PqOWBHXn0tewno+M+8ZbxiBF+1MKo26?=
 =?us-ascii?Q?0WBshfhp0LXzpvX9JizPvPWer+/fns4YXpV2LkwJhBzda8sROYIpXUwoQgNf?=
 =?us-ascii?Q?wN0BDTGidczscLD1Sxa+A+IhAaT1ZsRdDp8yQ9k7u0x2SHVd2k9Zg1C2HPsq?=
 =?us-ascii?Q?Ko2D9nYAnOVS295+fv6EQCallI92UeXDEHLiJIktY4nYCKe9005HDxjfqCeL?=
 =?us-ascii?Q?29uSPWYuHyZ/FSbCTPfreJti68pas8GZFFPqdp/JVtciDtIBGJywOsEOn6JS?=
 =?us-ascii?Q?t287uegCrO7xfYs5Ujsj1kfh0F/gBj90Jxq5fArlwa1GYZUvjwmtHGSY7NKF?=
 =?us-ascii?Q?4s51pcNRQNdJXvQbn1VXQaWxyFuH57B/rBusaEyjJWSa15rlsI3Z2ATcTChm?=
 =?us-ascii?Q?XmqwO1N7RKGxexupp8K0McFlvd2VlukpDv6dSadWKdmSXMqbrGmaFNUG3AkP?=
 =?us-ascii?Q?ciWoYjjGBg=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 6caef4b0-acda-42c9-ace9-08da3d9d8150
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2022 15:53:11.7241
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 NIEuqoifzJS3YgXU+6i2Pw6tS37uiG5Rt7LJ8T123DpWZHlroTLdqeukkGx61VD9IE69u/TmfFagKdOyNt9DOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4309
X-Proofpoint-GUID: I1Va7tCwkeXyFOXzjlPSpCT06gvbEuwO
X-Proofpoint-ORIG-GUID: I1Va7tCwkeXyFOXzjlPSpCT06gvbEuwO
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57180

Add file context for findfs alternative which is provided by util-linux.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...s-apply-policy-to-findfs-alternative.patch | 29 +++++++++++++++++++
 .../refpolicy/refpolicy_common.inc            |  1 +
 2 files changed, 30 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy/0069-fc-fstools-apply-policy-to-findfs-alternative.patch

diff --git a/recipes-security/refpolicy/refpolicy/0069-fc-fstools-apply-policy-to-findfs-alternative.patch b/recipes-security/refpolicy/refpolicy/0069-fc-fstools-apply-policy-to-findfs-alternative.patch
new file mode 100644
index 0000000..6535a4b
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0069-fc-fstools-apply-policy-to-findfs-alternative.patch
@@ -0,0 +1,29 @@
+From 3e3ec39659ae068d20efbb5f13054d90960c3c3f Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Thu, 19 May 2022 16:51:49 +0800
+Subject: [PATCH] fc/fstools: apply policy to findfs alternative
+
+Add file context for findfs alternative which is provided by util-linux.
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/fstools.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/fstools.fc b/policy/modules/system/fstools.fc
+index bef711850..91be0ef3d 100644
+--- a/policy/modules/system/fstools.fc
++++ b/policy/modules/system/fstools.fc
+@@ -77,6 +77,7 @@
+ /usr/sbin/fdisk			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/fdisk\.util-linux			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/findfs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/findfs\.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/fsck.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/gdisk			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/hdparm		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+-- 
+2.25.1
+
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 1d5a5c0..bb0c0dd 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -84,6 +84,7 @@ SRC_URI += " \
         file://0066-systemd-add-missing-file-context-for-run-systemd-net.patch \
         file://0067-systemd-add-file-contexts-for-systemd-network-genera.patch \
         file://0068-systemd-udev-allow-udev-to-read-systemd-networkd-run.patch \
+        file://0069-fc-fstools-apply-policy-to-findfs-alternative.patch \
         "
 
 S = "${WORKDIR}/refpolicy"
-- 
2.25.1


