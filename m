Return-Path: <kexin.hao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D1F2C7EE23
	for <webhook@archiver.kernel.org>; Thu,  8 Jun 2023 10:02:28 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.5288.1686218541064350799
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jun 2023 03:02:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=UhQ0etZ4;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=55232d1a4a=kexin.hao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3588U2EK022031;
	Thu, 8 Jun 2023 10:02:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=HtMYoBlj0FgXTo67YeK3jzOK1U5whKUPIewpZRBcsp8=;
 b=UhQ0etZ4SQH0w577nyrroYDFWoDiFtCyCv1abkfmZ/HKPjKAJGMNcxLbR0/zgVxOHPlJ
 MP3iO/3gVmocLziWODuJqCyKwWC+jIktOlTo9fxLSxw6f5B+o1x4Y7VL6Ik9JaMy4vfi
 b/MrNqq1gtOxnP5R6qgYbNg+UqHzaxble9R2LDbBJTl9WFgY86zz/7ObGoX3MN7F8SYP
 yFfWLikkDg9259d/kyWT5A62Uy/N8g2l1t2sCga+7nHw8XupxN/D+HwAKzh5GoWrz1W9
 ari+K0vG/d4MlC6Rwr1M1nYQcwLPzJN9a+uk6fS9Gu46DqGK5EMchyYu7A8Vagr8x3T3 KA== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2042.outbound.protection.outlook.com [104.47.66.42])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3r2aafskph-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 08 Jun 2023 10:02:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CnshyQWqDIOY9AgjXSldlwJcGpEeEmjCLVjJTUt8Ks7Fa0pWqCt+wTVrtio2JEuK0myWjV31xxrmoz0Psc8EDoABEmXGLBsnfEvMT/T8vPX6eJjas0DEvqOe+Uh02c7RinmaCZqGafV5pmlc/r5aTG78KWIOaHspEYjzRGgIg7maT8sWKC2qy+k9QpUfIT2TYmCUNBSyNeTAFQDjY1YXCR7lejqy9Jg84OSV0xSJ6IsClstxubu+YSdP1wDT/b+p6v/zN6SPYdF+OV1G8gzXi6GIv+V8I4HErGAn804F5nq0QhUr+QeRddfUla3D5/gX4lnxi6LMfN7fexLvSBjmbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HtMYoBlj0FgXTo67YeK3jzOK1U5whKUPIewpZRBcsp8=;
 b=HLq9FI4uJ+dZXyVSLONvIPakaoXhcURlrGzD0na/Rq5t0/NUOkaCgEI94vpjIbRJSkZSg+vGmoflmqeuFDY/jYp2vp2Y091GcklretnhevfJ4c9WuTyh7KSshnrnbgCV4ujE8qC7n8Vt8VSdD/8IQXz9weIRGiCIrR3WobLU2fjiuo4NSwMfmQ+ud1vknK4bCaA0HL29v7q/o2cL3XsVoKlqP9hK3YHlIeVXkXU5rtySVd/1Q7LlnnyGFdQm8CrlRAWQhBw8P1hoL3VXqpsCLbpV8LaI1mw/X1EZymxp9po0ryMzThKHC2lSodFPhMTvmNTWN0cecKqNho3OsyKjAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SJ0PR11MB8270.namprd11.prod.outlook.com (2603:10b6:a03:479::15)
 by DM4PR11MB5296.namprd11.prod.outlook.com (2603:10b6:5:393::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Thu, 8 Jun
 2023 10:02:16 +0000
Received: from SJ0PR11MB8270.namprd11.prod.outlook.com
 ([fe80::7f82:e88d:5163:7ce3]) by SJ0PR11MB8270.namprd11.prod.outlook.com
 ([fe80::7f82:e88d:5163:7ce3%6]) with mapi id 15.20.6455.030; Thu, 8 Jun 2023
 10:02:17 +0000
From: Kevin Hao <kexin.hao@windriver.com>
To: Yocto Project <yocto@lists.yoctoproject.org>
Cc: Armin Kuster <akuster808@gmail.com>
Subject: [meta-security][PATCH] dmverity: Suppress the realpath errors
Date: Thu,  8 Jun 2023 17:59:35 +0800
Message-Id: <20230608095935.2325304-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.39.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TY2PR04CA0016.apcprd04.prod.outlook.com
 (2603:1096:404:f6::28) To SJ0PR11MB8270.namprd11.prod.outlook.com
 (2603:10b6:a03:479::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB8270:EE_|DM4PR11MB5296:EE_
X-MS-Office365-Filtering-Correlation-Id: a8abadd9-ba2b-4c2f-ceb1-08db680770c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	VjPbFzyTRiIbyjQ9VzqTXbytbBiOMakAUOUn07hn2BCGlRT6y9BlAR1chk6Ont8T0JNt9lXLO7QsNAzGObMl12QODcfaFQOH3kFUTtmfQdolldephvkzokGWNBNytQ2uSTtDbskehZJ19eJeIuE/MrkCYN8o7b1+OHJO+3enA/BH0VQ7OpGhYf/45hdI7oeTg9lKxVnq61c+5vU9en+vt6CDbVIjPSOzzKPavV4wO1TDM+tB2C7wYpbhxoznQQhfoYTVQI/L+PtVL/Hl3/ek1K2+QSulIO44hLwuFXPRveOm8ntooNp02eaWxJNszHAuYNpBO06GTdM8Xd4ezQKw3bgR5zfyrABOX9u1r/3KEzpA+mPC3DVKaQ0FdxZ8j2VtfhIOoNQfDIejqoEZE3T55vrPfklkGfeRrB6D407zfPCsyqysbA1e/KW6ypnBu9Xo1bfhIr2u9eRZhmC1M8ph1sLbLASjrICfHRdPb3y+bBOFoeie31HNG+uLjLP9ZYQGmslOH1gMRoqBolHid1wDBFs6Qw+ggPC5K59QHwrEZun8VRw2Hj1hGSoD1lKKrEaVbcC7/F4HNxtgaNZZxxne7s51aAtASuzCTXzP6mp+G4ltHlv+vh3gN/IvAW5Wy/id
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB8270.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(366004)(39850400004)(376002)(136003)(396003)(451199021)(26005)(1076003)(6512007)(186003)(41300700001)(5660300002)(6506007)(36756003)(4326008)(316002)(66476007)(66946007)(6666004)(66556008)(8936002)(83380400001)(2616005)(478600001)(8676002)(86362001)(2906002)(38100700002)(6916009)(6486002)(52116002)(38350700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?p4zdVVLShgm5HUoVFXmH69iFmaQA0yTc2EORbH2rOF6lHG0JVj5gKmj+w0m5?=
 =?us-ascii?Q?wZ4BN90NhU+A5n2vbkJMLcwyhQU7ELWQb2GL5T/U3cRYpZ0sXQzESOtzhW8E?=
 =?us-ascii?Q?EdsPtST2KrNyaNEFbgVAuhy4eNj2ajjroSJ95ygVufT+hFPRvSKwwW0mJCpk?=
 =?us-ascii?Q?ixobdDDfYvoQgMfPTZE03NZFg7GlJ7fxjAgCaeZqpbIQZ0buR+Ol6y5iIKp4?=
 =?us-ascii?Q?BkCjnGq2CKKTHXgDawLqcwMNHS3fcNqk8a8aap8IGMVGzVOm63NixRnzNvZo?=
 =?us-ascii?Q?gj33+hBpFB1b0lhUItmDLFL9w71XSGrNnR9FHocWQWTOsXbR49v5OMOrfQAa?=
 =?us-ascii?Q?U6DYti5VcQuPmFj1r2g666LsDxPaZ5d6gU1hG33ivmw+s2fg7QWvWRTJ09eC?=
 =?us-ascii?Q?Z5XgM80kY0qOhgMqTq8GqBdNYwssjwEl/rwiLpy4uon5f7AjZwTxO6VzEmLV?=
 =?us-ascii?Q?v5kiWE6fAI2fQATy5lnJ1dcmWrQ6hUODMeoAed+tbzumBg9JhpS1Km/+y+Z/?=
 =?us-ascii?Q?x1opA1WAG0kpLk9kxH9G0pPvu3vVtCVBp/OXypvwJ2qPU5svodngxstwxs95?=
 =?us-ascii?Q?+Ynv2yqqLIc2qeIJGm0TXXPMOEDJYtUnCt0l3OE42iNASEzcHSevwfobNI/m?=
 =?us-ascii?Q?s4EN2ihV6vgTlaslAwLyhooBT7bdQW0zCNBsyIEGaHqtHwtp/FPZ1V180HRx?=
 =?us-ascii?Q?VOm92IDrP6vsc7xFyaFbffaDvWEPZ/OPvvSwkyK67uym/bgKk9Gbt75yKouS?=
 =?us-ascii?Q?e5ZDIKF4D35LdncqoFLIXK6IrZdrh10h1jto9tkgT70/Ft+hiJuT8uvmJDHa?=
 =?us-ascii?Q?IpD3u+2MR6DPJk1Pf/+HiLAq+h0/wfbnkcotgr3jCtlByAY51po1y7TmW7/N?=
 =?us-ascii?Q?x8tQyigvoYtM8ptQoP9xR6AAktGiU6zDcqbufr2Qq8qyrBmW4R8AmbrYou+Z?=
 =?us-ascii?Q?dtZioJLliXg2onQHNuwxBMn2opZKqfy097K10yy7jYH+G0sMGVFpw4LR9KJg?=
 =?us-ascii?Q?RE1Lk51Fo0m7ojdoIXi6HoHOqqoLGVHbidfUmismTsRfwXaZBPl16o/XII4c?=
 =?us-ascii?Q?ZF71r3aKqPBFI7bTVsUoqR22Avkf4MYQ2Y1FmiTd0vCKDV77YB9j+5lo8Oop?=
 =?us-ascii?Q?5o0OPvs8/DlyQQwfDy6LOV7+/f3fIkKq8uvWr0vqUJzQEp1/rLJNx4PYJZ6v?=
 =?us-ascii?Q?p3hteOyAbzPWpQ/gDcZZn17aY3gOd5d3k1zNxyDkaBPXve/fk7aLYF8K4pX9?=
 =?us-ascii?Q?4VeUZxVvDfT0RzlIn0sK+F+l8CTgmLIeRjSosB0YvLJMwarpPz/PFPMieQd/?=
 =?us-ascii?Q?j+dugrWhlggIhT+t0YcocoiVinPVP9UDoYxBKR71kP5K62YRplRFaudJzli5?=
 =?us-ascii?Q?3/y/2OIYmDKga8P6uAN640t6T9eS3373bkszMHjrmZ7VkKnzIfIgX0eiLhz0?=
 =?us-ascii?Q?UuzwJZp2bofwoMj+TeBuxdK7nHUu/MboVUNpvvN+VOeXii/8IfLDPBLreZ6S?=
 =?us-ascii?Q?QfELLiTUMl1dgr2qRPUsmHsHpdGzb3IrZ3zhyL+CNPia6HuG1R/n6CVWoUPQ?=
 =?us-ascii?Q?RNCkJ+E2VnMVwrmdCl8nopVd0p46lWreby0b1vLw7w8DrkPx5sAjOxlX7Ov9?=
 =?us-ascii?Q?Fg=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8abadd9-ba2b-4c2f-ceb1-08db680770c7
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB8270.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2023 10:02:17.1805
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DLyH+/+q+3SgQfN+EYiNh4IrQIQYRdu4LkjLqHeKKRXp6JCHExmDdLv4h4hUxyxGCmpA0fcIjHqToSwG4bj9qQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5296
X-Proofpoint-ORIG-GUID: 5-u_6O5nkxYKHx5AA85fXyjGSEcsp1ro
X-Proofpoint-GUID: 5-u_6O5nkxYKHx5AA85fXyjGSEcsp1ro
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-08_06,2023-06-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 clxscore=1011 impostorscore=0 mlxlogscore=753 suspectscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2305260000 definitions=main-2306080085
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 10:02:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60228

If we use a non PARTUUID root parameter, we would always get a error
like below:
  realpath: /dev/disk/by-partuuid//dev/mmcblk0p2: No such file or directory

This seems pretty confusion and it also seems no need to emit this kind
of error when we are waiting for the root device. So suppress all the
realpath errors.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../initrdscripts/initramfs-framework-dm/dmverity  | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/recipes-core/initrdscripts/initramfs-framework-dm/dmverity b/recipes-core/initrdscripts/initramfs-framework-dm/dmverity
index c815940fbbef..71afc9172d5a 100644
--- a/recipes-core/initrdscripts/initramfs-framework-dm/dmverity
+++ b/recipes-core/initrdscripts/initramfs-framework-dm/dmverity
@@ -14,7 +14,7 @@ dmverity_run() {
     C=0
     delay=${bootparam_rootdelay:-1}
     timeout=${bootparam_roottimeout:-5}
-    RDEV="$(realpath /dev/disk/by-partuuid/${bootparam_root#PARTUUID=})"
+    RDEV="$(realpath /dev/disk/by-partuuid/${bootparam_root#PARTUUID=} 2>/dev/null)"
     while [ ! -b "${RDEV}" ]; do
         if [ $(( $C * $delay )) -gt $timeout ]; then
             fatal "Root device resolution failed"
@@ -23,22 +23,22 @@ dmverity_run() {
 
         case "${bootparam_root}" in
             ID=*)
-                RDEV="$(realpath /dev/disk/by-id/${bootparam_root#ID=})"
+                RDEV="$(realpath /dev/disk/by-id/${bootparam_root#ID=} 2>/dev/null)"
                 ;;
             LABEL=*)
-                RDEV="$(realpath /dev/disk/by-label/${bootparam_root#LABEL=})"
+                RDEV="$(realpath /dev/disk/by-label/${bootparam_root#LABEL=} 2>/dev/null)"
                 ;;
             PARTLABEL=*)
-                RDEV="$(realpath /dev/disk/by-partlabel/${bootparam_root#PARTLABEL=})"
+                RDEV="$(realpath /dev/disk/by-partlabel/${bootparam_root#PARTLABEL=} 2>/dev/null)"
                 ;;
             PARTUUID=*)
-                RDEV="$(realpath /dev/disk/by-partuuid/${bootparam_root#PARTUUID=})"
+                RDEV="$(realpath /dev/disk/by-partuuid/${bootparam_root#PARTUUID=} 2>/dev/null)"
                 ;;
             PATH=*)
-                RDEV="$(realpath /dev/disk/by-path/${bootparam_root#PATH=})"
+                RDEV="$(realpath /dev/disk/by-path/${bootparam_root#PATH=} 2>/dev/null)"
                 ;;
             UUID=*)
-                RDEV="$(realpath /dev/disk/by-uuid/${bootparam_root#UUID=})"
+                RDEV="$(realpath /dev/disk/by-uuid/${bootparam_root#UUID=} 2>/dev/null)"
                 ;;
             *)
                 RDEV="${bootparam_root}"
-- 
2.39.2


