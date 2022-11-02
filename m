Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 770BEC4332F
	for <webhook@archiver.kernel.org>; Wed,  2 Nov 2022 07:31:23 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.3557.1667374277858597356
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Nov 2022 00:31:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=QrHzTTGY;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=83050761c3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2A26darE014054;
	Wed, 2 Nov 2022 00:31:16 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=vUhZ1c9emuCrLuYxwLhoydc3t+dYXkvH728earZ3NcY=;
 b=QrHzTTGYHwGm7zkUxd5cz2oOwQQvYRdgApBm0ISckLEXbk4/9ef7pCIL9zGpAVmK1VuN
 8gRVoopSi6DvPKExnpQNCVFOMFtFRJQh38MpBr1yjRarfBj5aXGr48DPCI3I7tsyQNQx
 8l47quZ1ie61OsoG5uRdX/6b/h24v4QehWL2HJB/iGhXG86UV+F7DqpVXAJQoTKo6si7
 SoJJBgSY4PsuKHWqzYHiTq+nDE7akHxKJICBzImXptrtn9ohvPjR3bGcOfiIdrjCwudc
 UOA31DaXBoMXb0hR/UCU94Eo6e5UoDN4MOm+4cmZ4HbZFbHgBWy297V7U5LAD6t3ZyXx Fg== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2173.outbound.protection.outlook.com [104.47.57.173])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3kj2gsa4tu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 02 Nov 2022 00:31:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WxS+JIMdVH1JO8gRzssHF3jluUOwORZYW+C75WQkFO/+0MNVzw/SKam4CXsdG7vLzX4c/vUgONi/k2S0zfbd1QTCKXUaST6DikvI1fnGlipl2H2b3vc1KB6Kk5LKtAc9QRv8OuB/bbvyREsRSCMUn9aKCCExkgEbfICcCEJszdpUrVs7TjPbW0SLajbClTvyRMHAGu35dSx3ZCvzHFn0tgjbP1OogN9L1TQV3/BFbrzr2QoQCwmr6jdOXGDqMAcq44yIjJbj7/Mp1RbkT02FguvAuDJEVS/rEQjYgvupd3N0PqzEyFN0dBEZDCU9LydkO/KjlVkXf/JzojRH66oryA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vUhZ1c9emuCrLuYxwLhoydc3t+dYXkvH728earZ3NcY=;
 b=WAH61Uv3d8dB/XzZCxIqEAwnkHsxAsela7YscPTgkG2gEJsqSMp5Er0NeV0bE9RE1Ts41AIOgCgpdOxvAGD9CDcQOailt4yJ108KnROzG2yOZFVM3ZhywuV7V65WdcJeH27KDFw+nym7G7W2Ib++o+GmI9//HLBl6jdNZFns9jGLgtsDEfMGwYY4KTXuqDVyIy/J2zyDwgpqMb7dzd2IZ1Oo0rXVOHwpz391VpeHnODmgXkTIh+AJs81QXRMrAs5o6v46J+/KNFT6lwao3vymWB2g/2aGFCW5uT1lHKYjcJWVpay2tA72u/AQMloIcABbm/XhNSTWHjzE5JK/x5vIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by DS0PR11MB7333.namprd11.prod.outlook.com (2603:10b6:8:13e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Wed, 2 Nov
 2022 07:31:11 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::6ad2:95fb:73d5:35ae]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::6ad2:95fb:73d5:35ae%8]) with mapi id 15.20.5769.021; Wed, 2 Nov 2022
 07:31:11 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 4/4] refpolicy: upgrade 20210908+git -> 20221101+git
Date: Wed,  2 Nov 2022 15:30:52 +0800
Message-Id: <20221102073052.1567876-4-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221102073052.1567876-1-yi.zhao@windriver.com>
References: <20221102073052.1567876-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TYAPR01CA0108.jpnprd01.prod.outlook.com
 (2603:1096:404:2a::24) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|DS0PR11MB7333:EE_
X-MS-Office365-Filtering-Correlation-Id: 99a88b18-7359-4bfd-5a61-08dabca435e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ZMVZKp/Ui1eKWLpqOj3/8EBx6z9JnGVWHnFMjogJIR+tlDjFx/PZ0YqX5Y9tk5DrbXVV1e//3Vm2GhhRds7EGHVGgkFDEYMDURzyHq+5+/CzXLhJLx+GSfxs/Gj1fdR33nbsoaQpsG7mrvp2CtZvDrHb4A2T1Oqs08dfDAYXEnaDKfEB2gwDki0/dWSJb5c8t8w95e5Sb0Nvql089e04ewY9ac7GKRI/qWd+W3TF6+/O2j9E0GZLCIhfH57tx9HetTL8zZIT76J49sZq2sAvWnUfQ1knSKweD64NjlRATd9r/PU1wIOH5jbNkyb2jF2GFRLnaXxqkErDZ+GVzwIJWq8hR7zF+3VE8Ppyko7tFLTgSjc7P2aTEQLXXgVhsXt/EPrK6hhqJks3NW8Zba7WQQkbtPptzejXk7NWQ26uAPmkeS6KDq9SJ69vXqW9xPY1Wx2dC2bTcGyj8BA4+26iZt760EqLx+bhR85wprR0/bqQ9vEpLEIUL4FOVRhT1oI2TdcuWuaQYWRcRa93nny58V9lvdYJqTw0ce4v1uiHdG6uzcG7R7hzD7e0xuunF8ppPIHlfdq5YG+Su1s4PsrOq8Wx1OjjGu3HYt3JNgxKlmcIXBk21vkpuEBIY3Pj444LE2thb1hjXA+2O24HJiK/cY7YjheTjAatg++C6uAjTxFmSa4VbUDVPtCHixrIujNGPi5C1vDpERz1fzjEccfiw8hBNHTsGl1/V8Hu9/bQFMUoMJ+QA0OW2cl+0UPHtpnuoPXLW186gxEmHyCmKE0huFKnMhG+uflMiUH6XiFctoLI/85+CMsJWEI3hr86qE7P6z/YsGoACuPpx0Y50QbcSg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(136003)(39850400004)(346002)(396003)(376002)(451199015)(1076003)(316002)(38350700002)(41300700001)(5660300002)(6506007)(8676002)(53546011)(66476007)(66556008)(86362001)(38100700002)(26005)(966005)(6512007)(478600001)(2616005)(83380400001)(66946007)(186003)(6486002)(52116002)(6666004)(8936002)(2906002)(44832011)(30864003)(36756003)(559001)(579004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?fi1/TJ++gSiuYuDjs21HE6zXbVOvCtUK8QD/bWO/KIZnjA+K0RYfYS217XaT?=
 =?us-ascii?Q?ymwkQxM/7zaossfSWxA4yjeZLcg/ZhaiIUuSKYH13FXvMdFAGenjG/stkRfG?=
 =?us-ascii?Q?ULxw11P+NJA2pLJ3xPEd1yt3GoXB+o6Vgre7d+/71J/2R4EtFUe5bosubjUY?=
 =?us-ascii?Q?mk50giGRDFPChW/bXHunTwqsakIrBLl+Pm8Z/Pu3vkYzJ+HE/YZ2NbU/65rF?=
 =?us-ascii?Q?EEM5XkO4Lvc7ma9FVZGB6NgjeXskPPRdl/CRx4NkUfQpQk8LV7iHuE8M3A2t?=
 =?us-ascii?Q?TVHI+yVD8519pCNDevF9A+4IZLTLSaCs31We+AI9y6VrUpgDWYNZrusQ75Gh?=
 =?us-ascii?Q?Xvl5DKw2mIjdxy0HT8IE8RkeMZ02Se3UlYiJSIo+FxKBEB90XoO8Mz8E55VS?=
 =?us-ascii?Q?q65UijQG3L4WA0EMyOi333deZAgl1y2fnsdza5XD/NMQIo+anigKZ9agk3Uj?=
 =?us-ascii?Q?Iq4I4AQ8sATd5ypdCmyYsIaAmvZ8sAS8oBP9Q7z4Ex0+8ITOkjYVLBuVcKmK?=
 =?us-ascii?Q?5ivbMvT+M/09kHrn3DGfrb7POeKTDTZ+NJoM7YFwg+zhWrKAkXjZ6SI8jr32?=
 =?us-ascii?Q?zgEPVG2CQUoErjkGOfTJnIomVmoKgrRPqUDvQf7u87FmOzhWAaIviw5Zx3om?=
 =?us-ascii?Q?wryNePeiUZw1SpMmJ3kepJ33W55v8wrvQfILBfNYiG9DczoBWoAFg8GqUPAx?=
 =?us-ascii?Q?gD2foUtsiJkYtT7kaLLZYFyQAArgAx2ObXE+QTKPuDFPQoShH3Y6o7r8Jbwm?=
 =?us-ascii?Q?Wkap7JTpWJklnt5fc665gbq58Wr+Zy0tBzTlf/QXyB87l4EPVyyZBlDAbA5g?=
 =?us-ascii?Q?7Xdir5XsBb5MnkCGUXBGbeYVyWzDx4+C66I+IFjCCda3o/zceRM7gv3LX3Qz?=
 =?us-ascii?Q?4Uzwgo1LsNGA+QDDZFMUAPUaFqiNBUlg2QOTZzgPa2Z+GTNBOjAYqSAUTyxD?=
 =?us-ascii?Q?QflrhtVW2/iSVe4Sbh1Tz5kSY/x6QVGfX6qJalXUxMk3XKPEPqNCFeZolMo+?=
 =?us-ascii?Q?xRyATVEkiciCkj8wWL7RMb42thf/vqKcuVMVCjfHbOC4tXAUSs/1fYy0f2En?=
 =?us-ascii?Q?U4OAJ1Hv6z/dCatDwra9aw/8tm9nV9VPiMWCo7w5fIOaUJK1v/r7r28Vxi7x?=
 =?us-ascii?Q?Fq981UMrjmPr/81RnwOOKH4vzNKTV/0pJ1iqZT3Fp0JnC1dPZDSxz1lXBjtk?=
 =?us-ascii?Q?gJtnHdQTuIQFhS8T4BZy9kt+GRQJhwMakTPdetSlVxBnnY2Sj1rO3XGXImqK?=
 =?us-ascii?Q?RGpzrIda4QjFWf91A5xdDAq3cv8FTGGIXeM+MOSfRLaz4A3NLF2t/MitIN0h?=
 =?us-ascii?Q?/zlonKyQOLmo+gwrf5VrYF4nV+D5cTCDcnhYwXcoqzh+B+JS3Cs9oqfqF9Cw?=
 =?us-ascii?Q?Ga48fr+KrNBinxGvATFqxtyBvQcN9oP1cSxB4qq62y9pSXxxLLrOR8uDW8xJ?=
 =?us-ascii?Q?wh88JfKo7jeLPtnWu3SJ2hKZTQhSXTTtccgBYRBKIjYC0dchAy6b1L4SIYLb?=
 =?us-ascii?Q?Twzlodrq9wobC0QjDoXf0iO1eifC4IR5A4mm1YA4quKC8ZHmYa2ZlJhPiUXG?=
 =?us-ascii?Q?1Qyfa1Gd1B6mzmNGDn2vJKcvJ9snb54bt1iF0g0g?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99a88b18-7359-4bfd-5a61-08dabca435e4
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2022 07:31:11.1327
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vvYYtqUdPBMy+NLnElzMyDSnn7vfI69+210sHKU7GaVsRoc81EuEKajWzAQAgN8GXqbI/cYnHJdOVxfTqGdzAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7333
X-Proofpoint-GUID: UbTZ9yLGO3VygEBQ1VHGGqF-n_8ceg0Q
X-Proofpoint-ORIG-GUID: UbTZ9yLGO3VygEBQ1VHGGqF-n_8ceg0Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-02_04,2022-11-01_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxscore=0
 spamscore=0 malwarescore=0 adultscore=0 mlxlogscore=999 impostorscore=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2211020045
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Nov 2022 07:31:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58470

* Update to latest git rev.
* Drop obsolete and useless patches.
* Rebase patches.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../refpolicy/refpolicy-minimum_git.bb        |  93 +++----
 .../refpolicy/refpolicy-targeted_git.bb       |   1 -
 ...tile-alias-common-var-volatile-paths.patch |   4 +-
 ...inimum-make-sysadmin-module-optional.patch |  12 +-
 ...ed-make-unconfined_u-the-default-sel.patch |  12 +-
 ...box-set-aliases-for-bin-sbin-and-usr.patch |   4 +-
 ...icy-minimum-make-xdg-module-optional.patch |   8 +-
 ...ed-add-capability2-bpf-and-perfmon-f.patch |  52 ----
 ...y-policy-to-common-yocto-hostname-al.patch |   4 +-
 ...efpolicy-minimum-enable-nscd_use_shm.patch |  35 ---
 ...sr-bin-bash-context-to-bin-bash.bash.patch |   6 +-
 ...abel-resolv.conf-in-var-run-properly.patch |   4 +-
 ...-apply-login-context-to-login.shadow.patch |   4 +-
 ...-fc-hwclock-add-hwclock-alternatives.patch |   4 +-
 ...g-apply-policy-to-dmesg-alternatives.patch |   4 +-
 ...ssh-apply-policy-to-ssh-alternatives.patch |   8 +-
 ...ply-policy-to-network-commands-alter.patch |   4 +-
 ...v-apply-policy-to-udevadm-in-libexec.patch |   4 +-
 ...ply-rpm_exec-policy-to-cpio-binaries.patch |   8 +-
 ...c-su-apply-policy-to-su-alternatives.patch |   4 +-
 ...fc-fstools-fix-real-path-for-fstools.patch |  17 +-
 ...fix-update-alternatives-for-sysvinit.patch |  10 +-
 ...l-apply-policy-to-brctl-alternatives.patch |   4 +-
 ...apply-policy-to-nologin-alternatives.patch |   8 +-
 ...apply-policy-to-sulogin-alternatives.patch |   4 +-
 ...tp-apply-policy-to-ntpd-alternatives.patch |   4 +-
 ...pply-policy-to-kerberos-alternatives.patch |   4 +-
 ...ap-apply-policy-to-ldap-alternatives.patch |   4 +-
 ...ply-policy-to-postgresql-alternative.patch |   4 +-
 ...-apply-policy-to-screen-alternatives.patch |   4 +-
 ...ply-policy-to-usermanage-alternative.patch |  26 +-
 ...etty-add-file-context-to-start_getty.patch |   4 +-
 ...k-apply-policy-to-vlock-alternatives.patch |   4 +-
 ...for-init-scripts-and-systemd-service.patch |   8 +-
 ...bs_dist-set-aliase-for-root-director.patch |   4 +-
 ...ystem-logging-add-rules-for-the-syml.patch |   6 +-
 ...ystem-logging-add-rules-for-syslogd-.patch |   8 +-
 ...ernel-files-add-rules-for-the-symlin.patch |  26 +-
 ...ystem-logging-fix-auditd-startup-fai.patch |  10 +-
 ...ernel-terminal-don-t-audit-tty_devic.patch |   6 +-
 ...rvices-rpcbind-allow-rpcbind_t-to-c.patch} |  23 +-
 ...ystem-modutils-allow-mod_t-to-access.patch |  67 -----
 ...ystem-getty-allow-getty_t-to-search-.patch |  32 ---
 ...stem-systemd-enable-support-for-sys.patch} |  10 +-
 ...stem-systemd-allow-systemd_logind_t.patch} |   8 +-
 ...dmin-usermanage-allow-useradd-to-rel.patch |  71 -----
 ...oles-sysadm-allow-sysadm-to-use-init.patch |  36 +++
 ...es-system-systemd-systemd-user-fixes.patch |  84 ++++++
 ...stem-mount-make-mount_t-domain-MLS-.patch} |   8 +-
 ...ystem-systemd-fix-systemd-resolved-s.patch |  60 ----
 ...les-sysadm-MLS-sysadm-rw-to-clearan.patch} |  10 +-
 ...ystem-systemd-allow-systemd_-_t-to-g.patch | 156 -----------
 ...rvices-rpc-make-nfsd_t-domain-MLS-t.patch} |  12 +-
 ...ystem-logging-fix-syslogd-failures-f.patch |  55 ----
 ...min-dmesg-make-dmesg_t-MLS-trusted-.patch} |   6 +-
 ...es-system-systemd-systemd-user-fixes.patch | 172 ------------
 ...rnel-kernel-make-kernel_t-MLS-trust.patch} |   8 +-
 ...ystem-sysnetwork-support-priviledge-.patch | 132 ---------
 ...stem-init-make-init_t-MLS-trusted-f.patch} |   8 +-
 ...ystem-modutils-allow-kmod_t-to-write.patch |  34 ---
 ...stem-systemd-make-systemd-tmpfiles_.patch} |   8 +-
 ...stem-systemd-systemd-make-systemd_-.patch} |  26 +-
 ...stem-logging-add-the-syslogd_t-to-t.patch} |  15 +-
 ...stem-init-make-init_t-MLS-trusted-f.patch} |   8 +-
 ...stem-init-all-init_t-to-read-any-le.patch} |   8 +-
 ...stem-logging-allow-auditd_t-to-writ.patch} |   8 +-
 ...rnel-kernel-make-kernel_t-MLS-trust.patch} |   8 +-
 ...stem-setrans-allow-setrans_t-use-fd.patch} |   8 +-
 ...stem-systemd-make-_systemd_t-MLS-tr.patch} |   8 +-
 ...stem-logging-make-syslogd_runtime_t.patch} |  12 +-
 ...emd-resolved-is-linked-to-libselinux.patch |  33 ---
 ...md-allow-DNS-resolution-over-io.syst.patch |  63 -----
 ...systemd-to-watch-and-watch-reads-on-.patch |  94 -------
 ...-transition-for-systemd-networkd-run.patch |  32 ---
 ...ing-file-context-for-run-systemd-net.patch |  29 --
 ...-contexts-for-systemd-network-genera.patch |  38 ---
 ...ow-udev-to-read-systemd-networkd-run.patch |  34 ---
 ...s-apply-policy-to-findfs-alternative.patch |  29 --
 .../refpolicy/refpolicy_common.inc            | 261 +++++++++---------
 recipes-security/refpolicy/refpolicy_git.inc  |   4 +-
 80 files changed, 521 insertions(+), 1637 deletions(-)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0002-refpolicy-targeted-add-capability2-bpf-and-perfmon-f.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0003-refpolicy-minimum-enable-nscd_use_shm.patch
 rename recipes-security/refpolicy/refpolicy/{0036-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch => 0034-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch} (52%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0034-policy-modules-system-modutils-allow-mod_t-to-access.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0035-policy-modules-system-getty-allow-getty_t-to-search-.patch
 rename recipes-security/refpolicy/refpolicy/{0038-policy-modules-system-systemd-enable-support-for-sys.patch => 0035-policy-modules-system-systemd-enable-support-for-sys.patch} (91%)
 rename recipes-security/refpolicy/refpolicy/{0045-policy-modules-system-systemd-allow-systemd_logind_t.patch => 0036-policy-modules-system-systemd-allow-systemd_logind_t.patch} (88%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0037-policy-modules-admin-usermanage-allow-useradd-to-rel.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0037-policy-modules-roles-sysadm-allow-sysadm-to-use-init.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0038-policy-modules-system-systemd-systemd-user-fixes.patch
 rename recipes-security/refpolicy/refpolicy/{0046-policy-modules-system-mount-make-mount_t-domain-MLS-.patch => 0039-policy-modules-system-mount-make-mount_t-domain-MLS-.patch} (84%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0039-policy-modules-system-systemd-fix-systemd-resolved-s.patch
 rename recipes-security/refpolicy/refpolicy/{0047-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch => 0040-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch} (83%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0040-policy-modules-system-systemd-allow-systemd_-_t-to-g.patch
 rename recipes-security/refpolicy/refpolicy/{0048-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch => 0041-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch} (84%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0041-policy-modules-system-logging-fix-syslogd-failures-f.patch
 rename recipes-security/refpolicy/refpolicy/{0049-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch => 0042-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch} (90%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0042-policy-modules-system-systemd-systemd-user-fixes.patch
 rename recipes-security/refpolicy/refpolicy/{0050-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch => 0043-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch} (94%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0043-policy-modules-system-sysnetwork-support-priviledge-.patch
 rename recipes-security/refpolicy/refpolicy/{0051-policy-modules-system-init-make-init_t-MLS-trusted-f.patch => 0044-policy-modules-system-init-make-init_t-MLS-trusted-f.patch} (89%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0044-policy-modules-system-modutils-allow-kmod_t-to-write.patch
 rename recipes-security/refpolicy/refpolicy/{0052-policy-modules-system-systemd-make-systemd-tmpfiles_.patch => 0045-policy-modules-system-systemd-make-systemd-tmpfiles_.patch} (92%)
 rename recipes-security/refpolicy/refpolicy/{0053-policy-modules-system-systemd-systemd-make-systemd_-.patch => 0046-policy-modules-system-systemd-systemd-make-systemd_-.patch} (82%)
 rename recipes-security/refpolicy/refpolicy/{0054-policy-modules-system-logging-add-the-syslogd_t-to-t.patch => 0047-policy-modules-system-logging-add-the-syslogd_t-to-t.patch} (78%)
 rename recipes-security/refpolicy/refpolicy/{0055-policy-modules-system-init-make-init_t-MLS-trusted-f.patch => 0048-policy-modules-system-init-make-init_t-MLS-trusted-f.patch} (85%)
 rename recipes-security/refpolicy/refpolicy/{0056-policy-modules-system-init-all-init_t-to-read-any-le.patch => 0049-policy-modules-system-init-all-init_t-to-read-any-le.patch} (88%)
 rename recipes-security/refpolicy/refpolicy/{0057-policy-modules-system-logging-allow-auditd_t-to-writ.patch => 0050-policy-modules-system-logging-allow-auditd_t-to-writ.patch} (87%)
 rename recipes-security/refpolicy/refpolicy/{0058-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch => 0051-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch} (83%)
 rename recipes-security/refpolicy/refpolicy/{0059-policy-modules-system-setrans-allow-setrans_t-use-fd.patch => 0052-policy-modules-system-setrans-allow-setrans_t-use-fd.patch} (83%)
 rename recipes-security/refpolicy/refpolicy/{0060-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch => 0053-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch} (88%)
 rename recipes-security/refpolicy/refpolicy/{0061-policy-modules-system-logging-make-syslogd_runtime_t.patch => 0054-policy-modules-system-logging-make-syslogd_runtime_t.patch} (84%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0062-systemd-systemd-resolved-is-linked-to-libselinux.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0063-sysnetwork-systemd-allow-DNS-resolution-over-io.syst.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0064-term-init-allow-systemd-to-watch-and-watch-reads-on-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0065-systemd-add-file-transition-for-systemd-networkd-run.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0066-systemd-add-missing-file-context-for-run-systemd-net.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0067-systemd-add-file-contexts-for-systemd-network-genera.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0068-systemd-udev-allow-udev-to-read-systemd-networkd-run.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0069-fc-fstools-apply-policy-to-findfs-alternative.patch

diff --git a/recipes-security/refpolicy/refpolicy-minimum_git.bb b/recipes-security/refpolicy/refpolicy-minimum_git.bb
index 2e95b9f..5940ce2 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_git.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_git.bb
@@ -14,29 +14,29 @@ domains are unconfined. \
 SRC_URI += " \
         file://0001-refpolicy-minimum-make-sysadmin-module-optional.patch \
         file://0002-refpolicy-minimum-make-xdg-module-optional.patch \
-        file://0003-refpolicy-minimum-enable-nscd_use_shm.patch \
         "
 
 POLICY_NAME = "minimum"
 
 CORE_POLICY_MODULES = "unconfined \
-	selinuxutil \
-	storage \
-	sysnetwork \
-	application \
-	libraries \
-	miscfiles \
-	logging \
-	userdomain \
-	init \
-	mount \
-	modutils \
-	getty \
-	authlogin \
-	locallogin \
-	"
-#systemd dependent policy modules
-CORE_POLICY_MODULES += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'clock systemd udev fstools dbus', '', d)}"
+    selinuxutil \
+    storage \
+    sysnetwork \
+    application \
+    libraries \
+    miscfiles \
+    logging \
+    userdomain \
+    init \
+    mount \
+    modutils \
+    getty \
+    authlogin \
+    locallogin \
+    dbus \
+    "
+# systemd dependent policy modules
+CORE_POLICY_MODULES += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'clock systemd udev fstools', '', d)}"
 
 # nscd caches libc-issued requests to the name service.
 # Without nscd.pp, commands want to use these caches will be blocked.
@@ -60,39 +60,38 @@ EXTRA_POLICY_MODULES += "modutils consoletype hostname netutils"
 # 
 # PURGE_POLICY_MODULES += "xdg xen"
 
-
 POLICY_MODULES_MIN = "${CORE_POLICY_MODULES} ${EXTRA_POLICY_MODULES}"
 
-# re-write the same func from refpolicy_common.inc
-prepare_policy_store () {
-	oe_runmake 'DESTDIR=${D}' 'prefix=${D}${prefix}' install
-	POL_PRIORITY=100
-	POL_SRC=${D}${datadir}/selinux/${POLICY_NAME}
-	POL_STORE=${D}${localstatedir}/lib/selinux/${POLICY_NAME}
-	POL_ACTIVE_MODS=${POL_STORE}/active/modules/${POL_PRIORITY}
+# Re-write the same func from refpolicy_common.inc
+prepare_policy_store() {
+    oe_runmake 'DESTDIR=${D}' 'prefix=${D}${prefix}' install
+    POL_PRIORITY=100
+    POL_SRC=${D}${datadir}/selinux/${POLICY_NAME}
+    POL_STORE=${D}${localstatedir}/lib/selinux/${POLICY_NAME}
+    POL_ACTIVE_MODS=${POL_STORE}/active/modules/${POL_PRIORITY}
 
-	# Prepare to create policy store
-	mkdir -p ${POL_STORE}
-	mkdir -p ${POL_ACTIVE_MODS}
+    # Prepare to create policy store
+    mkdir -p ${POL_STORE}
+    mkdir -p ${POL_ACTIVE_MODS}
 
-	# get hll type from suffix on base policy module
-	HLL_TYPE=$(echo ${POL_SRC}/base.* | awk -F . '{if (NF>1) {print $NF}}')
-	HLL_BIN=${STAGING_DIR_NATIVE}${prefix}/libexec/selinux/hll/${HLL_TYPE}
+    # Get hll type from suffix on base policy module
+    HLL_TYPE=$(echo ${POL_SRC}/base.* | awk -F . '{if (NF>1) {print $NF}}')
+    HLL_BIN=${STAGING_DIR_NATIVE}${prefix}/libexec/selinux/hll/${HLL_TYPE}
 
-	for i in base ${POLICY_MODULES_MIN}; do
-		MOD_FILE=${POL_SRC}/${i}.${HLL_TYPE}
-		MOD_DIR=${POL_ACTIVE_MODS}/${i}
-		mkdir -p ${MOD_DIR}
-		echo -n "${HLL_TYPE}" > ${MOD_DIR}/lang_ext
+    for i in base ${POLICY_MODULES_MIN}; do
+        MOD_FILE=${POL_SRC}/${i}.${HLL_TYPE}
+        MOD_DIR=${POL_ACTIVE_MODS}/${i}
+        mkdir -p ${MOD_DIR}
+        echo -n "${HLL_TYPE}" > ${MOD_DIR}/lang_ext
 
-		if ! bzip2 -t ${MOD_FILE} >/dev/null 2>&1; then
-			${HLL_BIN} ${MOD_FILE} | bzip2 --stdout > ${MOD_DIR}/cil
-			bzip2 -f ${MOD_FILE} && mv -f ${MOD_FILE}.bz2 ${MOD_FILE}
-		else
-			bunzip2 --stdout ${MOD_FILE} | \
-				${HLL_BIN} | \
-				bzip2 --stdout > ${MOD_DIR}/cil
-		fi
-		cp ${MOD_FILE} ${MOD_DIR}/hll
-	done
+        if ! bzip2 -t ${MOD_FILE} >/dev/null 2>&1; then
+            ${HLL_BIN} ${MOD_FILE} | bzip2 --stdout > ${MOD_DIR}/cil
+            bzip2 -f ${MOD_FILE} && mv -f ${MOD_FILE}.bz2 ${MOD_FILE}
+        else
+            bunzip2 --stdout ${MOD_FILE} | \
+                ${HLL_BIN} | \
+                bzip2 --stdout > ${MOD_DIR}/cil
+        fi
+        cp ${MOD_FILE} ${MOD_DIR}/hll
+    done
 }
diff --git a/recipes-security/refpolicy/refpolicy-targeted_git.bb b/recipes-security/refpolicy/refpolicy-targeted_git.bb
index 15226db..de81d46 100644
--- a/recipes-security/refpolicy/refpolicy-targeted_git.bb
+++ b/recipes-security/refpolicy/refpolicy-targeted_git.bb
@@ -14,5 +14,4 @@ include refpolicy_${PV}.inc
 
 SRC_URI += " \
         file://0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch \
-        file://0002-refpolicy-targeted-add-capability2-bpf-and-perfmon-f.patch \
         "
diff --git a/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch b/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
index c3a03f3..1605d90 100644
--- a/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
+++ b/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
@@ -1,4 +1,4 @@
-From d39f2ddbfcfd6e224a50bf327a7bd0031d74d0c6 Mon Sep 17 00:00:00 2001
+From ee66387c393af77b88c833f5d271efe48036112c Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 16:14:09 -0400
 Subject: [PATCH] fc/subs/volatile: alias common /var/volatile paths
@@ -29,5 +29,5 @@ index ba22ce7e7..23d4328f7 100644
 +/var/volatile/log /var/log
 +/var/volatile/tmp /var/tmp
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sysadmin-module-optional.patch b/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sysadmin-module-optional.patch
index f607cbb..657c5cd 100644
--- a/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sysadmin-module-optional.patch
+++ b/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sysadmin-module-optional.patch
@@ -1,4 +1,4 @@
-From 669293ddf351f231b34979a7d708601ccbd11930 Mon Sep 17 00:00:00 2001
+From 0e3b79ae0ae468640d7092c9a91a91d258d07645 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 5 Apr 2019 11:53:28 -0400
 Subject: [PATCH] refpolicy-minimum: make sysadmin module optional
@@ -22,10 +22,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  2 files changed, 11 insertions(+), 7 deletions(-)
 
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index 5a19f0e43..1f4a671dc 100644
+index 671b5aef3..8ce3d5956 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -556,13 +556,15 @@ ifdef(`init_systemd',`
+@@ -615,13 +615,15 @@ ifdef(`init_systemd',`
  		unconfined_write_keys(init_t)
  	')
  ',`
@@ -48,10 +48,10 @@ index 5a19f0e43..1f4a671dc 100644
  	')
  ')
 diff --git a/policy/modules/system/locallogin.te b/policy/modules/system/locallogin.te
-index 109980e79..313112371 100644
+index 7728de804..a8ff403dd 100644
 --- a/policy/modules/system/locallogin.te
 +++ b/policy/modules/system/locallogin.te
-@@ -265,7 +265,9 @@ userdom_use_unpriv_users_fds(sulogin_t)
+@@ -274,7 +274,9 @@ userdom_use_unpriv_users_fds(sulogin_t)
  userdom_search_user_home_dirs(sulogin_t)
  userdom_use_user_ptys(sulogin_t)
  
@@ -63,5 +63,5 @@ index 109980e79..313112371 100644
  # by default, sulogin does not use pam...
  # sulogin_pam might need to be defined otherwise
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch b/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch
index 9939b59..64e658e 100644
--- a/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch
+++ b/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch
@@ -1,14 +1,14 @@
-From bf7b74e7c38b546e162eb5a3bd4774e3d84d593d Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
+From 60b4e5ea5668a71b2a0660461daecea66fd11d51 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Mon, 20 Apr 2020 11:50:03 +0800
 Subject: [PATCH] refpolicy-targeted: make unconfined_u the default selinux
  user
 
 For targeted policy type, we define unconfined_u as the default selinux
-user for root and normal users, so users could login in and run most
+user for root and normal users, so users could login and run most
 commands and services on unconfined domains.
 
-Upstream-Status: Inappropriate [configuration]
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
@@ -38,7 +38,7 @@ index ce614b41b..c0903d98b 100644
 +root:unconfined_u:s0-mcs_systemhigh
 +__default__:unconfined_u:s0
 diff --git a/policy/modules/system/unconfined.te b/policy/modules/system/unconfined.te
-index 4972094cb..b6d769412 100644
+index d116a1b9b..32720f68f 100644
 --- a/policy/modules/system/unconfined.te
 +++ b/policy/modules/system/unconfined.te
 @@ -20,6 +20,11 @@ type unconfined_execmem_t alias ada_t;
@@ -77,5 +77,5 @@ index ca203758c..e737cd9cc 100644
 +	gen_user(root, sysadm, unconfined_r sysadm_r staff_r ifdef(`enable_mls',`secadm_r auditadm_r'), s0, s0 - mls_systemhigh, mcs_allcats)
  ')
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch b/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
index d2b8139..ef00602 100644
--- a/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
+++ b/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
@@ -1,4 +1,4 @@
-From 974befcafcee1377e122f19a4182f74eea757158 Mon Sep 17 00:00:00 2001
+From 8fa6c5b7b99a50b09e9dffd142c066fa41319750 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 20:48:10 -0400
 Subject: [PATCH] fc/subs/busybox: set aliases for bin, sbin and usr
@@ -29,5 +29,5 @@ index 23d4328f7..690007f22 100644
 +/usr/lib/busybox/sbin /usr/sbin
 +/usr/lib/busybox/usr /usr
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-make-xdg-module-optional.patch b/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-make-xdg-module-optional.patch
index 84764e5..25afa3b 100644
--- a/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-make-xdg-module-optional.patch
+++ b/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-make-xdg-module-optional.patch
@@ -1,4 +1,4 @@
-From 1ff0e212ce737bba59d90977a58a15250bc84ea9 Mon Sep 17 00:00:00 2001
+From 9a8d6b634d4f714fc63125be5e23228c565d1aaf Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Wed, 29 Sep 2021 11:08:49 +0800
 Subject: [PATCH] refpolicy-minimum: make xdg module optional
@@ -15,10 +15,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 6 insertions(+), 2 deletions(-)
 
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 8cea6baa1..218834495 100644
+index 7b717d3ba..3b07b368d 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -276,10 +276,14 @@ files_type(systemd_update_run_t)
+@@ -298,10 +298,14 @@ init_unit_file(systemd_user_manager_unit_t)
  
  type systemd_conf_home_t;
  init_unit_file(systemd_conf_home_t)
@@ -36,5 +36,5 @@ index 8cea6baa1..218834495 100644
  type systemd_user_runtime_notify_t;
  userdom_user_runtime_content(systemd_user_runtime_notify_t)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0002-refpolicy-targeted-add-capability2-bpf-and-perfmon-f.patch b/recipes-security/refpolicy/refpolicy/0002-refpolicy-targeted-add-capability2-bpf-and-perfmon-f.patch
deleted file mode 100644
index e4c081d..0000000
--- a/recipes-security/refpolicy/refpolicy/0002-refpolicy-targeted-add-capability2-bpf-and-perfmon-f.patch
+++ /dev/null
@@ -1,52 +0,0 @@
-From b46903aaf7e52f9c4c51a2fa7fe7a85190da98b1 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Wed, 29 Sep 2021 16:43:54 +0800
-Subject: [PATCH] refpolicy-targeted: add capability2 bpf and perfmon for
- unconfined_t
-
-Fixes:
-avc: denied { bpf } for pid=433 comm="systemd" capability=39
-scontext=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
-tcontext=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
-tclass=capability2 permissive=0
-
-avc: denied { perfmon } for pid=433 comm="systemd" capability=38
-scontext=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
-tcontext=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
-tclass=capability2 permissive=0
-
-type=USER_AVC msg=audit(1632901631.693:86): pid=433 uid=0 auid=0 ses=3
-subj=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 msg='avc:
-denied { reload } for auid=n/a uid=0 gid=0 cmdline=""
-scontext=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
-tcontext=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
-tclass=system permissive=0  exe="/lib/systemd/systemd" sauid=0
-hostname=? addr=? terminal=?'UID="root" AUID="root" AUID="root"
-UID="root" GID="root" SAUID="root"
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/unconfined.if | 5 +++++
- 1 file changed, 5 insertions(+)
-
-diff --git a/policy/modules/system/unconfined.if b/policy/modules/system/unconfined.if
-index a139cfe78..807e959c3 100644
---- a/policy/modules/system/unconfined.if
-+++ b/policy/modules/system/unconfined.if
-@@ -66,6 +66,11 @@ interface(`unconfined_domain_noaudit',`
- 	files_start_etc_service($1)
- 	files_stop_etc_service($1)
- 
-+	ifdef(`init_systemd',`
-+		allow $1 self:capability2 { bpf perfmon };
-+		allow $1 self:system reload;
-+	')
-+
- 	tunable_policy(`allow_execheap',`
- 		# Allow making the stack executable via mprotect.
- 		allow $1 self:process execheap;
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch b/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
index 6596e76..94ac31b 100644
--- a/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
+++ b/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
@@ -1,4 +1,4 @@
-From 9c6f3c5acc01607a67277f69faa67e34dc98232b Mon Sep 17 00:00:00 2001
+From 5a0bbd1920205f488b6a4565f7217b9d0825067b Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] fc/hostname: apply policy to common yocto hostname
@@ -22,5 +22,5 @@ index 83ddeb573..cf523bc4c 100644
 +/usr/bin/hostname\.net-tools	--	gen_context(system_u:object_r:hostname_exec_t,s0)
 +/usr/bin/hostname\.coreutils	--	gen_context(system_u:object_r:hostname_exec_t,s0)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0003-refpolicy-minimum-enable-nscd_use_shm.patch b/recipes-security/refpolicy/refpolicy/0003-refpolicy-minimum-enable-nscd_use_shm.patch
deleted file mode 100644
index edf9caa..0000000
--- a/recipes-security/refpolicy/refpolicy/0003-refpolicy-minimum-enable-nscd_use_shm.patch
+++ /dev/null
@@ -1,35 +0,0 @@
-From 5f992b59a74cc6cde8fd20162a11065dc30fd7ab Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Fri, 26 Feb 2021 09:13:23 +0800
-Subject: [PATCH] refpolicy-minimum: enable nscd_use_shm
-
-Fixes:
-avc: denied { listen } for pid=199 comm="systemd-resolve"
-path="/run/systemd/resolve/io.systemd.Resolve"
-scontext=system_u:system_r:systemd_resolved_t:s0
-tcontext=system_u:system_r:systemd_resolved_t:s0
-tclass=unix_stream_socket permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/services/nscd.te | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/policy/modules/services/nscd.te b/policy/modules/services/nscd.te
-index ada67edb1..9801fc228 100644
---- a/policy/modules/services/nscd.te
-+++ b/policy/modules/services/nscd.te
-@@ -15,7 +15,7 @@ gen_require(`
- ##	can use nscd shared memory.
- ##	</p>
- ## </desc>
--gen_tunable(nscd_use_shm, false)
-+gen_tunable(nscd_use_shm, true)
- 
- attribute_role nscd_roles;
- 
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch b/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
index cf333f1..eff0255 100644
--- a/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
+++ b/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
@@ -1,4 +1,4 @@
-From bbc8b58fe5fe709dfadbffc86e17ebd2d76a257c Mon Sep 17 00:00:00 2001
+From c9219d2f7be1e641b3866b770a9b570c12333b93 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 21:37:32 -0400
 Subject: [PATCH] fc/bash: apply /usr/bin/bash context to /bin/bash.bash
@@ -15,7 +15,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
-index 4c18154ce..9187e50af 100644
+index 0c05c693d..b70940928 100644
 --- a/policy/modules/kernel/corecommands.fc
 +++ b/policy/modules/kernel/corecommands.fc
 @@ -142,6 +142,7 @@ ifdef(`distro_gentoo',`
@@ -27,5 +27,5 @@ index 4c18154ce..9187e50af 100644
  /usr/bin/fish			--	gen_context(system_u:object_r:shell_exec_t,s0)
  /usr/bin/git-shell		--	gen_context(system_u:object_r:shell_exec_t,s0)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch b/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
index 078c246..06c8087 100644
--- a/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
+++ b/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
@@ -1,4 +1,4 @@
-From 3cccdec2aaa273ca09100ca957f4968a25f4f3a3 Mon Sep 17 00:00:00 2001
+From 51631a7eaaea1fab4b36a2488497cf725317ce6e Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 4 Apr 2019 10:45:03 -0400
 Subject: [PATCH] fc/resolv.conf: label resolv.conf in var/run/ properly
@@ -25,5 +25,5 @@ index 14505efe9..c9ec4e5ab 100644
  ifdef(`distro_gentoo',`
  /var/lib/dhcpc(/.*)?		gen_context(system_u:object_r:dhcpc_state_t,s0)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-context-to-login.shadow.patch b/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-context-to-login.shadow.patch
index b4747f7..70c5566 100644
--- a/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-context-to-login.shadow.patch
+++ b/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-context-to-login.shadow.patch
@@ -1,4 +1,4 @@
-From 9a1e1c7b65cb3f5ab97ce05463ca02a3eaa57d86 Mon Sep 17 00:00:00 2001
+From 1c61b10d21a22d4110bc880b23477295f6cd9efb Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 21:43:53 -0400
 Subject: [PATCH] fc/login: apply login context to login.shadow
@@ -24,5 +24,5 @@ index 50efcff7b..5cb48882c 100644
  /usr/bin/pam_timestamp_check	--	gen_context(system_u:object_r:pam_exec_t,s0)
  /usr/bin/tcb_convert		--	gen_context(system_u:object_r:updpwd_exec_t,s0)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0007-fc-hwclock-add-hwclock-alternatives.patch b/recipes-security/refpolicy/refpolicy/0007-fc-hwclock-add-hwclock-alternatives.patch
index 33f6a10..2f9f703 100644
--- a/recipes-security/refpolicy/refpolicy/0007-fc-hwclock-add-hwclock-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0007-fc-hwclock-add-hwclock-alternatives.patch
@@ -1,4 +1,4 @@
-From 73716015ab28a9474912902e9467f2d2a864ecd0 Mon Sep 17 00:00:00 2001
+From e4d7d9fb1cb157bf205874e1a81d5719017866a1 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 21:59:18 -0400
 Subject: [PATCH] fc/hwclock: add hwclock alternatives
@@ -21,5 +21,5 @@ index 301965892..139485835 100644
  /usr/sbin/hwclock	--	gen_context(system_u:object_r:hwclock_exec_t,s0)
 +/usr/sbin/hwclock\.util-linux	--	gen_context(system_u:object_r:hwclock_exec_t,s0)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0008-fc-dmesg-apply-policy-to-dmesg-alternatives.patch b/recipes-security/refpolicy/refpolicy/0008-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
index 5f2ffdf..6e576a8 100644
--- a/recipes-security/refpolicy/refpolicy/0008-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0008-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
@@ -1,4 +1,4 @@
-From 504e8429500ab0984adfd52bb09a3e993b87f2f1 Mon Sep 17 00:00:00 2001
+From ac6536f04674ccc051744e6eb3644e68fe38da33 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 08:26:55 -0400
 Subject: [PATCH] fc/dmesg: apply policy to dmesg alternatives
@@ -19,5 +19,5 @@ index e52fdfcf8..526b92ed2 100644
  /usr/bin/dmesg		--		gen_context(system_u:object_r:dmesg_exec_t,s0)
 +/usr/bin/dmesg\.util-linux		--		gen_context(system_u:object_r:dmesg_exec_t,s0)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0009-fc-ssh-apply-policy-to-ssh-alternatives.patch b/recipes-security/refpolicy/refpolicy/0009-fc-ssh-apply-policy-to-ssh-alternatives.patch
index 585850b..611c0d3 100644
--- a/recipes-security/refpolicy/refpolicy/0009-fc-ssh-apply-policy-to-ssh-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0009-fc-ssh-apply-policy-to-ssh-alternatives.patch
@@ -1,4 +1,4 @@
-From 8ad451ceff2ba4ea26290a7ba9918406a90bb10f Mon Sep 17 00:00:00 2001
+From a56887ca448b60ad6715348b2cfe533e8109a040 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 09:20:58 -0400
 Subject: [PATCH] fc/ssh: apply policy to ssh alternatives
@@ -12,11 +12,11 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/services/ssh.fc b/policy/modules/services/ssh.fc
-index 60060c35c..518043a9b 100644
+index 5c512e972..0448c1877 100644
 --- a/policy/modules/services/ssh.fc
 +++ b/policy/modules/services/ssh.fc
 @@ -4,6 +4,7 @@ HOME_DIR/\.ssh(/.*)?			gen_context(system_u:object_r:ssh_home_t,s0)
- /etc/ssh/ssh_host.*_key		--	gen_context(system_u:object_r:sshd_key_t,s0)
+ /etc/ssh/ssh_host.*_key(\.pub)?	--	gen_context(system_u:object_r:sshd_key_t,s0)
  
  /usr/bin/ssh			--	gen_context(system_u:object_r:ssh_exec_t,s0)
 +/usr/bin/ssh\.openssh	--	gen_context(system_u:object_r:ssh_exec_t,s0)
@@ -24,5 +24,5 @@ index 60060c35c..518043a9b 100644
  /usr/bin/ssh-keygen		--	gen_context(system_u:object_r:ssh_keygen_exec_t,s0)
  /usr/bin/sshd			--	gen_context(system_u:object_r:sshd_exec_t,s0)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0010-fc-sysnetwork-apply-policy-to-network-commands-alter.patch b/recipes-security/refpolicy/refpolicy/0010-fc-sysnetwork-apply-policy-to-network-commands-alter.patch
index 0621923..7af147d 100644
--- a/recipes-security/refpolicy/refpolicy/0010-fc-sysnetwork-apply-policy-to-network-commands-alter.patch
+++ b/recipes-security/refpolicy/refpolicy/0010-fc-sysnetwork-apply-policy-to-network-commands-alter.patch
@@ -1,4 +1,4 @@
-From c85fd7d9c45770b31de44bb35521e2251882df10 Mon Sep 17 00:00:00 2001
+From 47a5e9a0bd4960534998798ab1a5ab62e77b2b61 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Tue, 9 Jun 2015 21:22:52 +0530
 Subject: [PATCH] fc/sysnetwork: apply policy to network commands alternatives
@@ -43,5 +43,5 @@ index c9ec4e5ab..4ca151524 100644
  /usr/sbin/tc			--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0011-fc-udev-apply-policy-to-udevadm-in-libexec.patch b/recipes-security/refpolicy/refpolicy/0011-fc-udev-apply-policy-to-udevadm-in-libexec.patch
index cc3e529..434fc1d 100644
--- a/recipes-security/refpolicy/refpolicy/0011-fc-udev-apply-policy-to-udevadm-in-libexec.patch
+++ b/recipes-security/refpolicy/refpolicy/0011-fc-udev-apply-policy-to-udevadm-in-libexec.patch
@@ -1,4 +1,4 @@
-From aa2635a54f9c36205ebc469f799a56ece01ac610 Mon Sep 17 00:00:00 2001
+From bbc6eb20e9509a61236051df7a5fa552a8f2654d Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 09:36:08 -0400
 Subject: [PATCH] fc/udev: apply policy to udevadm in libexec
@@ -25,5 +25,5 @@ index 7898ff01c..bc717e60c 100644
  /usr/sbin/start_udev --	gen_context(system_u:object_r:udev_exec_t,s0)
  ')
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0012-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch b/recipes-security/refpolicy/refpolicy/0012-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
index b039f53..bf562d6 100644
--- a/recipes-security/refpolicy/refpolicy/0012-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
+++ b/recipes-security/refpolicy/refpolicy/0012-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
@@ -1,4 +1,4 @@
-From faf757c732c9a022499b584cea64ce1fcc78e118 Mon Sep 17 00:00:00 2001
+From 00533fded8e2264f8bdc68c8ed79644a10e4e2ad Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 09:54:07 -0400
 Subject: [PATCH] fc/rpm: apply rpm_exec policy to cpio binaries
@@ -12,10 +12,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/admin/rpm.fc b/policy/modules/admin/rpm.fc
-index aaf530c2b..618b18cec 100644
+index 3f842f942..12973ac8b 100644
 --- a/policy/modules/admin/rpm.fc
 +++ b/policy/modules/admin/rpm.fc
-@@ -66,4 +66,6 @@ ifdef(`distro_redhat',`
+@@ -71,4 +71,6 @@ ifdef(`distro_redhat',`
  
  ifdef(`enable_mls',`
  /usr/sbin/cpio	--	gen_context(system_u:object_r:rpm_exec_t,s0)
@@ -23,5 +23,5 @@ index aaf530c2b..618b18cec 100644
 +/usr/bin/cpio\.cpio	--	gen_context(system_u:object_r:rpm_exec_t,s0)
  ')
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0013-fc-su-apply-policy-to-su-alternatives.patch b/recipes-security/refpolicy/refpolicy/0013-fc-su-apply-policy-to-su-alternatives.patch
index 14c7d5b..32d38f1 100644
--- a/recipes-security/refpolicy/refpolicy/0013-fc-su-apply-policy-to-su-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0013-fc-su-apply-policy-to-su-alternatives.patch
@@ -1,4 +1,4 @@
-From 52853ae9ee13038c5ffae8616858c442d412a2b8 Mon Sep 17 00:00:00 2001
+From 4b202554e646a60000c1acad7bbdfae1078bdc10 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Thu, 13 Feb 2014 00:33:07 -0500
 Subject: [PATCH] fc/su: apply policy to su alternatives
@@ -23,5 +23,5 @@ index 3375c9692..a9868cd58 100644
 +/usr/bin/su\.shadow		--	gen_context(system_u:object_r:su_exec_t,s0)
 +/usr/bin/su\.util-linux		--	gen_context(system_u:object_r:su_exec_t,s0)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0014-fc-fstools-fix-real-path-for-fstools.patch b/recipes-security/refpolicy/refpolicy/0014-fc-fstools-fix-real-path-for-fstools.patch
index c2e0ca8..de0aad7 100644
--- a/recipes-security/refpolicy/refpolicy/0014-fc-fstools-fix-real-path-for-fstools.patch
+++ b/recipes-security/refpolicy/refpolicy/0014-fc-fstools-fix-real-path-for-fstools.patch
@@ -1,4 +1,4 @@
-From 4f3a637c0385204c0b87806d158e106fb9f88972 Mon Sep 17 00:00:00 2001
+From f64a5d6a2f2e72ae6c5122220eb759117b6384c8 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Mon, 27 Jan 2014 03:54:01 -0500
 Subject: [PATCH] fc/fstools: fix real path for fstools
@@ -10,14 +10,14 @@ Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/system/fstools.fc | 10 ++++++++++
- 1 file changed, 10 insertions(+)
+ policy/modules/system/fstools.fc | 11 +++++++++++
+ 1 file changed, 11 insertions(+)
 
 diff --git a/policy/modules/system/fstools.fc b/policy/modules/system/fstools.fc
-index d871294e8..bef711850 100644
+index 8fbd5ce44..2842afbcc 100644
 --- a/policy/modules/system/fstools.fc
 +++ b/policy/modules/system/fstools.fc
-@@ -59,7 +59,9 @@
+@@ -58,7 +58,9 @@
  /usr/sbin/addpart		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/badblocks		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/blkid			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
@@ -27,12 +27,13 @@ index d871294e8..bef711850 100644
  /usr/sbin/cfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/clubufflush		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/delpart		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-@@ -73,10 +75,12 @@
+@@ -72,10 +74,13 @@
  /usr/sbin/efibootmgr		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/fatsort		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/fdisk			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
 +/usr/sbin/fdisk\.util-linux			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/findfs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/findfs\.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/fsck.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/gdisk			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/hdparm		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
@@ -40,7 +41,7 @@ index d871294e8..bef711850 100644
  /usr/sbin/install-mbr		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/jfs_.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/losetup.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-@@ -84,24 +88,30 @@
+@@ -83,24 +88,30 @@
  /usr/sbin/make_reiser4		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/mkdosfs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/mke2fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
@@ -72,5 +73,5 @@ index d871294e8..bef711850 100644
  /usr/sbin/zhack			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/zinject		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0015-fc-init-fix-update-alternatives-for-sysvinit.patch b/recipes-security/refpolicy/refpolicy/0015-fc-init-fix-update-alternatives-for-sysvinit.patch
index b3ab0cc..5e9c197 100644
--- a/recipes-security/refpolicy/refpolicy/0015-fc-init-fix-update-alternatives-for-sysvinit.patch
+++ b/recipes-security/refpolicy/refpolicy/0015-fc-init-fix-update-alternatives-for-sysvinit.patch
@@ -1,4 +1,4 @@
-From e1439aa43af6ef15b35eac3cdbf0cea561768362 Mon Sep 17 00:00:00 2001
+From 6d2a96abd1e292d0c34ff77501e618cfc193655f Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] fc/init: fix update-alternatives for sysvinit
@@ -26,7 +26,7 @@ index bf51c103f..91ed72be0 100644
  
  /run/shutdown\.pid	--	gen_context(system_u:object_r:shutdown_runtime_t,s0)
 diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
-index 9187e50af..0ecabe34e 100644
+index b70940928..e6077fd5b 100644
 --- a/policy/modules/kernel/corecommands.fc
 +++ b/policy/modules/kernel/corecommands.fc
 @@ -151,6 +151,8 @@ ifdef(`distro_gentoo',`
@@ -39,10 +39,10 @@ index 9187e50af..0ecabe34e 100644
  /usr/bin/sash			--	gen_context(system_u:object_r:shell_exec_t,s0)
  /usr/bin/sesh			--	gen_context(system_u:object_r:shell_exec_t,s0)
 diff --git a/policy/modules/system/init.fc b/policy/modules/system/init.fc
-index 63cf195e6..5268bddb2 100644
+index 1a99e5824..7f0b7c699 100644
 --- a/policy/modules/system/init.fc
 +++ b/policy/modules/system/init.fc
-@@ -40,6 +40,7 @@ ifdef(`distro_gentoo',`
+@@ -41,6 +41,7 @@ ifdef(`distro_gentoo',`
  /usr/libexec/dcc/stop-.* --	gen_context(system_u:object_r:initrc_exec_t,s0)
  
  /usr/sbin/init(ng)?	--	gen_context(system_u:object_r:init_exec_t,s0)
@@ -51,5 +51,5 @@ index 63cf195e6..5268bddb2 100644
  /usr/sbin/upstart	--	gen_context(system_u:object_r:init_exec_t,s0)
  
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0016-fc-brctl-apply-policy-to-brctl-alternatives.patch b/recipes-security/refpolicy/refpolicy/0016-fc-brctl-apply-policy-to-brctl-alternatives.patch
index b9812b7..b0ba609 100644
--- a/recipes-security/refpolicy/refpolicy/0016-fc-brctl-apply-policy-to-brctl-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0016-fc-brctl-apply-policy-to-brctl-alternatives.patch
@@ -1,4 +1,4 @@
-From 274066b3397b53d63134aee94a0148d9c7d1886d Mon Sep 17 00:00:00 2001
+From 2e9c22ee83b7d4fea7b177ca8111c06e69338db9 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:19:54 +0800
 Subject: [PATCH] fc/brctl: apply policy to brctl alternatives
@@ -20,5 +20,5 @@ index ed472f095..2a852b0fd 100644
  /usr/sbin/brctl	--	gen_context(system_u:object_r:brctl_exec_t,s0)
 +/usr/sbin/brctl\.bridge-utils	--	gen_context(system_u:object_r:brctl_exec_t,s0)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0017-fc-corecommands-apply-policy-to-nologin-alternatives.patch b/recipes-security/refpolicy/refpolicy/0017-fc-corecommands-apply-policy-to-nologin-alternatives.patch
index e0ddc5e..58ac463 100644
--- a/recipes-security/refpolicy/refpolicy/0017-fc-corecommands-apply-policy-to-nologin-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0017-fc-corecommands-apply-policy-to-nologin-alternatives.patch
@@ -1,4 +1,4 @@
-From ab0267f77e38bcda797cfe00ba6fa49ba89e334a Mon Sep 17 00:00:00 2001
+From c43f2d7ddf1d0c2185796e0297dd9f85b9663aaf Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:21:51 +0800
 Subject: [PATCH] fc/corecommands: apply policy to nologin alternatives
@@ -11,10 +11,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
-index 0ecabe34e..e27e701ef 100644
+index e6077fd5b..0df59e837 100644
 --- a/policy/modules/kernel/corecommands.fc
 +++ b/policy/modules/kernel/corecommands.fc
-@@ -304,6 +304,8 @@ ifdef(`distro_debian',`
+@@ -306,6 +306,8 @@ ifdef(`distro_debian',`
  /usr/sbin/insmod_ksymoops_clean	--	gen_context(system_u:object_r:bin_t,s0)
  /usr/sbin/mkfs\.cramfs		--	gen_context(system_u:object_r:bin_t,s0)
  /usr/sbin/nologin		--	gen_context(system_u:object_r:shell_exec_t,s0)
@@ -24,5 +24,5 @@ index 0ecabe34e..e27e701ef 100644
  /usr/sbin/sesh			--	gen_context(system_u:object_r:shell_exec_t,s0)
  /usr/sbin/smrsh			--	gen_context(system_u:object_r:shell_exec_t,s0)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0018-fc-locallogin-apply-policy-to-sulogin-alternatives.patch b/recipes-security/refpolicy/refpolicy/0018-fc-locallogin-apply-policy-to-sulogin-alternatives.patch
index 2fe3740..3c43254 100644
--- a/recipes-security/refpolicy/refpolicy/0018-fc-locallogin-apply-policy-to-sulogin-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0018-fc-locallogin-apply-policy-to-sulogin-alternatives.patch
@@ -1,4 +1,4 @@
-From cfb86acce9fe9da9b88c853c0b22d48d99602fbb Mon Sep 17 00:00:00 2001
+From 11c95928e325aea7e4c41a9cdf969f9bdd306611 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:43:28 +0800
 Subject: [PATCH] fc/locallogin: apply policy to sulogin alternatives
@@ -21,5 +21,5 @@ index fc8d58507..59e6e9601 100644
 +/usr/sbin/sulogin\.util-linux	--	gen_context(system_u:object_r:sulogin_exec_t,s0)
  /usr/sbin/sushell	--	gen_context(system_u:object_r:sulogin_exec_t,s0)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0019-fc-ntp-apply-policy-to-ntpd-alternatives.patch b/recipes-security/refpolicy/refpolicy/0019-fc-ntp-apply-policy-to-ntpd-alternatives.patch
index 4b046ce..cbae4c5 100644
--- a/recipes-security/refpolicy/refpolicy/0019-fc-ntp-apply-policy-to-ntpd-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0019-fc-ntp-apply-policy-to-ntpd-alternatives.patch
@@ -1,4 +1,4 @@
-From e159e70b533b500390337ec666d678c7424afb90 Mon Sep 17 00:00:00 2001
+From 5841a5bd25e6017b6ccff4f56628ad6e950eadad Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:45:23 +0800
 Subject: [PATCH] fc/ntp: apply policy to ntpd alternatives
@@ -23,5 +23,5 @@ index cd69ea5d5..49ffe6f68 100644
  /usr/sbin/sntp				--	gen_context(system_u:object_r:ntpdate_exec_t,s0)
  
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0020-fc-kerberos-apply-policy-to-kerberos-alternatives.patch b/recipes-security/refpolicy/refpolicy/0020-fc-kerberos-apply-policy-to-kerberos-alternatives.patch
index 9d2e6fa..76e7fe9 100644
--- a/recipes-security/refpolicy/refpolicy/0020-fc-kerberos-apply-policy-to-kerberos-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0020-fc-kerberos-apply-policy-to-kerberos-alternatives.patch
@@ -1,4 +1,4 @@
-From 95797c20fb68558b9f37ded3f1cc9a4ef09717f9 Mon Sep 17 00:00:00 2001
+From 8126ec521e5a0f72da098f5d90b5b5b392006b7c Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:55:05 +0800
 Subject: [PATCH] fc/kerberos: apply policy to kerberos alternatives
@@ -46,5 +46,5 @@ index df21fcc78..ce0166edd 100644
  /var/log/kadmin\.log.*	--	gen_context(system_u:object_r:kadmind_log_t,s0)
  /var/log/kadmind\.log.*	--	gen_context(system_u:object_r:kadmind_log_t,s0)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0021-fc-ldap-apply-policy-to-ldap-alternatives.patch b/recipes-security/refpolicy/refpolicy/0021-fc-ldap-apply-policy-to-ldap-alternatives.patch
index e0b7b9e..a46c9c9 100644
--- a/recipes-security/refpolicy/refpolicy/0021-fc-ldap-apply-policy-to-ldap-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0021-fc-ldap-apply-policy-to-ldap-alternatives.patch
@@ -1,4 +1,4 @@
-From 6b43af067ec45bce1b7059fc549e246f53311d3a Mon Sep 17 00:00:00 2001
+From c71ea08245069001b56aadd7bb0af28e019f45e4 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 11:06:13 +0800
 Subject: [PATCH] fc/ldap: apply policy to ldap alternatives
@@ -36,5 +36,5 @@ index 0a1d08d0f..65b202962 100644
  /run/openldap(/.*)?	gen_context(system_u:object_r:slapd_runtime_t,s0)
  /run/slapd.*	-s	gen_context(system_u:object_r:slapd_runtime_t,s0)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0022-fc-postgresql-apply-policy-to-postgresql-alternative.patch b/recipes-security/refpolicy/refpolicy/0022-fc-postgresql-apply-policy-to-postgresql-alternative.patch
index 4a1a2dc..0a0464f 100644
--- a/recipes-security/refpolicy/refpolicy/0022-fc-postgresql-apply-policy-to-postgresql-alternative.patch
+++ b/recipes-security/refpolicy/refpolicy/0022-fc-postgresql-apply-policy-to-postgresql-alternative.patch
@@ -1,4 +1,4 @@
-From 5f664c3a38853129fa1703032822c203dbeaf0a6 Mon Sep 17 00:00:00 2001
+From 72726c1bc51628e6eb56e758f1e334f9b9a0f17e Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 11:13:16 +0800
 Subject: [PATCH] fc/postgresql: apply policy to postgresql alternatives
@@ -33,5 +33,5 @@ index f31a52cf8..f9bf46870 100644
  /usr/share/jonas/pgsql(/.*)?		gen_context(system_u:object_r:postgresql_db_t,s0)
  ')
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0023-fc-screen-apply-policy-to-screen-alternatives.patch b/recipes-security/refpolicy/refpolicy/0023-fc-screen-apply-policy-to-screen-alternatives.patch
index 9ae9435..e95cb3c 100644
--- a/recipes-security/refpolicy/refpolicy/0023-fc-screen-apply-policy-to-screen-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0023-fc-screen-apply-policy-to-screen-alternatives.patch
@@ -1,4 +1,4 @@
-From 2d1634127f8f5c9ec98f866711b8d15b7df815d1 Mon Sep 17 00:00:00 2001
+From 003a22f73563ef7b8b4ab6a6a0cb4a920a43570f Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 11:15:33 +0800
 Subject: [PATCH] fc/screen: apply policy to screen alternatives
@@ -21,5 +21,5 @@ index e51e01d97..238dc263e 100644
 +/usr/bin/screen-.*		--	gen_context(system_u:object_r:screen_exec_t,s0)
  /usr/bin/tmux		--	gen_context(system_u:object_r:screen_exec_t,s0)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0024-fc-usermanage-apply-policy-to-usermanage-alternative.patch b/recipes-security/refpolicy/refpolicy/0024-fc-usermanage-apply-policy-to-usermanage-alternative.patch
index 2dbdcf4..a92b809 100644
--- a/recipes-security/refpolicy/refpolicy/0024-fc-usermanage-apply-policy-to-usermanage-alternative.patch
+++ b/recipes-security/refpolicy/refpolicy/0024-fc-usermanage-apply-policy-to-usermanage-alternative.patch
@@ -1,4 +1,4 @@
-From 2323a6ab69c4a74ab127c16e38f14616a289b3d1 Mon Sep 17 00:00:00 2001
+From fdf7c2d27b6ecf08c88bb98e52a7d8284ac828af Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 11:25:34 +0800
 Subject: [PATCH] fc/usermanage: apply policy to usermanage alternatives
@@ -7,26 +7,28 @@ Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/admin/usermanage.fc | 6 ++++++
- 1 file changed, 6 insertions(+)
+ policy/modules/admin/usermanage.fc | 8 ++++++++
+ 1 file changed, 8 insertions(+)
 
 diff --git a/policy/modules/admin/usermanage.fc b/policy/modules/admin/usermanage.fc
-index 620eefc6f..bf1ff09ab 100644
+index 7209a8dd0..c9dc1f000 100644
 --- a/policy/modules/admin/usermanage.fc
 +++ b/policy/modules/admin/usermanage.fc
-@@ -4,7 +4,11 @@ ifdef(`distro_debian',`
+@@ -4,8 +4,13 @@ ifdef(`distro_debian',`
  
  /usr/bin/chage		--	gen_context(system_u:object_r:passwd_exec_t,s0)
  /usr/bin/chfn		--	gen_context(system_u:object_r:chfn_exec_t,s0)
 +/usr/bin/chfn\.shadow		--	gen_context(system_u:object_r:chfn_exec_t,s0)
 +/usr/bin/chfn\.util-linux		--	gen_context(system_u:object_r:chfn_exec_t,s0)
+ /usr/bin/chpasswd	--	gen_context(system_u:object_r:passwd_exec_t,s0)
++/usr/bin/chpasswd\.shadow	--	gen_context(system_u:object_r:passwd_exec_t,s0)
  /usr/bin/chsh		--	gen_context(system_u:object_r:chfn_exec_t,s0)
 +/usr/bin/chsh\.shadow		--	gen_context(system_u:object_r:chfn_exec_t,s0)
 +/usr/bin/chsh\.util-linux		--	gen_context(system_u:object_r:chfn_exec_t,s0)
  /usr/bin/crack_[a-z]*	--	gen_context(system_u:object_r:crack_exec_t,s0)
  /usr/bin/cracklib-[a-z]* --	gen_context(system_u:object_r:crack_exec_t,s0)
  /usr/bin/gpasswd	--	gen_context(system_u:object_r:groupadd_exec_t,s0)
-@@ -14,6 +18,7 @@ ifdef(`distro_debian',`
+@@ -15,6 +20,7 @@ ifdef(`distro_debian',`
  /usr/bin/grpconv	--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
  /usr/bin/grpunconv	--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
  /usr/bin/passwd		--	gen_context(system_u:object_r:passwd_exec_t,s0)
@@ -34,7 +36,15 @@ index 620eefc6f..bf1ff09ab 100644
  /usr/bin/pwconv		--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
  /usr/bin/pwunconv	--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
  /usr/bin/useradd	--	gen_context(system_u:object_r:useradd_exec_t,s0)
-@@ -39,6 +44,7 @@ ifdef(`distro_debian',`
+@@ -26,6 +32,7 @@ ifdef(`distro_debian',`
+ /usr/lib/cracklib_dict.* --	gen_context(system_u:object_r:crack_db_t,s0)
+ 
+ /usr/sbin/chpasswd	--	gen_context(system_u:object_r:passwd_exec_t,s0)
++/usr/sbin/chpasswd\.shadow	--	gen_context(system_u:object_r:passwd_exec_t,s0)
+ /usr/sbin/crack_[a-z]*	--	gen_context(system_u:object_r:crack_exec_t,s0)
+ /usr/sbin/cracklib-[a-z]* --	gen_context(system_u:object_r:crack_exec_t,s0)
+ /usr/sbin/gpasswd	--	gen_context(system_u:object_r:groupadd_exec_t,s0)
+@@ -41,6 +48,7 @@ ifdef(`distro_debian',`
  /usr/sbin/usermod	--	gen_context(system_u:object_r:useradd_exec_t,s0)
  /usr/sbin/vigr		--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
  /usr/sbin/vipw		--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
@@ -43,5 +53,5 @@ index 620eefc6f..bf1ff09ab 100644
  /usr/share/cracklib(/.*)?	gen_context(system_u:object_r:crack_db_t,s0)
  
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0025-fc-getty-add-file-context-to-start_getty.patch b/recipes-security/refpolicy/refpolicy/0025-fc-getty-add-file-context-to-start_getty.patch
index c0d9cf4..f6fa8a0 100644
--- a/recipes-security/refpolicy/refpolicy/0025-fc-getty-add-file-context-to-start_getty.patch
+++ b/recipes-security/refpolicy/refpolicy/0025-fc-getty-add-file-context-to-start_getty.patch
@@ -1,4 +1,4 @@
-From dbd399143d6fbda828cfc9f2546bc730e0da584c Mon Sep 17 00:00:00 2001
+From 863ece4fd9815997486c04ce89180707435669e4 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 16:07:30 +0800
 Subject: [PATCH] fc/getty: add file context to start_getty
@@ -23,5 +23,5 @@ index 116ea6421..53ff6137b 100644
  /usr/sbin/.*getty	--	gen_context(system_u:object_r:getty_exec_t,s0)
  
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0026-fc-vlock-apply-policy-to-vlock-alternatives.patch b/recipes-security/refpolicy/refpolicy/0026-fc-vlock-apply-policy-to-vlock-alternatives.patch
index 71521e8..7f63b14 100644
--- a/recipes-security/refpolicy/refpolicy/0026-fc-vlock-apply-policy-to-vlock-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0026-fc-vlock-apply-policy-to-vlock-alternatives.patch
@@ -1,4 +1,4 @@
-From 0280f05e2c9665f094d7098cd03e11d75908bcdb Mon Sep 17 00:00:00 2001
+From 5bb33b7d9d7915399cca7d8c6fbdd9c0e27c1cd8 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Wed, 18 Dec 2019 15:04:41 +0800
 Subject: [PATCH] fc/vlock: apply policy to vlock alternatives
@@ -21,5 +21,5 @@ index f668cde9c..c4bc50984 100644
  
  /usr/sbin/vlock-main	--	gen_context(system_u:object_r:vlock_exec_t,s0)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0027-fc-add-fcontext-for-init-scripts-and-systemd-service.patch b/recipes-security/refpolicy/refpolicy/0027-fc-add-fcontext-for-init-scripts-and-systemd-service.patch
index ca9b644..cfb2fd5 100644
--- a/recipes-security/refpolicy/refpolicy/0027-fc-add-fcontext-for-init-scripts-and-systemd-service.patch
+++ b/recipes-security/refpolicy/refpolicy/0027-fc-add-fcontext-for-init-scripts-and-systemd-service.patch
@@ -1,4 +1,4 @@
-From 7f8b07b7af0c3cd8bbec49082b42011ac433df45 Mon Sep 17 00:00:00 2001
+From 574df1810c8f32bbf24b223f72f6622b0df7e82c Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 30 Jun 2020 10:45:57 +0800
 Subject: [PATCH] fc: add fcontext for init scripts and systemd service files
@@ -34,7 +34,7 @@ index 382c067f9..0ecc5acc4 100644
  /usr/bin/rngd	--	gen_context(system_u:object_r:rngd_exec_t,s0)
  
 diff --git a/policy/modules/services/rpc.fc b/policy/modules/services/rpc.fc
-index 88d2acaf0..d9c0a4aa7 100644
+index 75c2f0617..fa881ba2e 100644
 --- a/policy/modules/services/rpc.fc
 +++ b/policy/modules/services/rpc.fc
 @@ -1,7 +1,9 @@
@@ -46,7 +46,7 @@ index 88d2acaf0..d9c0a4aa7 100644
 +/etc/rc\.d/init\.d/nfscommon	--	gen_context(system_u:object_r:rpcd_initrc_exec_t,s0)
  /etc/rc\.d/init\.d/rpcidmapd	--	gen_context(system_u:object_r:rpcd_initrc_exec_t,s0)
  
- /usr/bin/rpc\..*	--	gen_context(system_u:object_r:rpcd_exec_t,s0)
+ /usr/bin/nfsdcld	--	gen_context(system_u:object_r:rpcd_exec_t,s0)
 diff --git a/policy/modules/system/logging.fc b/policy/modules/system/logging.fc
 index 5681acb51..4ff5f990a 100644
 --- a/policy/modules/system/logging.fc
@@ -60,5 +60,5 @@ index 5681acb51..4ff5f990a 100644
  /usr/lib/systemd/systemd-kmsg-syslogd	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
  
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0028-file_contexts.subs_dist-set-aliase-for-root-director.patch b/recipes-security/refpolicy/refpolicy/0028-file_contexts.subs_dist-set-aliase-for-root-director.patch
index dc10350..82b4708 100644
--- a/recipes-security/refpolicy/refpolicy/0028-file_contexts.subs_dist-set-aliase-for-root-director.patch
+++ b/recipes-security/refpolicy/refpolicy/0028-file_contexts.subs_dist-set-aliase-for-root-director.patch
@@ -1,4 +1,4 @@
-From 0bb081084a2d12f9041bfae195481d898b5a0ba1 Mon Sep 17 00:00:00 2001
+From 01f57c996e09fb68daf3d97805c46c27a6d34304 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Sun, 5 Apr 2020 22:03:45 +0800
 Subject: [PATCH] file_contexts.subs_dist: set aliase for /root directory
@@ -26,5 +26,5 @@ index 690007f22..f80499ebf 100644
 +# Add an aliase for it
 +/root /home/root
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0029-policy-modules-system-logging-add-rules-for-the-syml.patch b/recipes-security/refpolicy/refpolicy/0029-policy-modules-system-logging-add-rules-for-the-syml.patch
index f8a4cec..06b792a 100644
--- a/recipes-security/refpolicy/refpolicy/0029-policy-modules-system-logging-add-rules-for-the-syml.patch
+++ b/recipes-security/refpolicy/refpolicy/0029-policy-modules-system-logging-add-rules-for-the-syml.patch
@@ -1,4 +1,4 @@
-From 9c676fe5ff2a14206f25bf8ed932c305f13dcfdc Mon Sep 17 00:00:00 2001
+From 2e9b42143ccb92f04d8d57430b3ae1e9f55eb00e Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/system/logging: add rules for the symlink of
@@ -30,7 +30,7 @@ index 4ff5f990a..dee26a9f4 100644
  /var/log/dmesg		--	gen_context(system_u:object_r:var_log_t,s0)
  /var/log/syslog		--	gen_context(system_u:object_r:var_log_t,s0)
 diff --git a/policy/modules/system/logging.if b/policy/modules/system/logging.if
-index 341763730..30d402c75 100644
+index cf7ef1721..b627cacb8 100644
 --- a/policy/modules/system/logging.if
 +++ b/policy/modules/system/logging.if
 @@ -1086,10 +1086,12 @@ interface(`logging_append_all_inherited_logs',`
@@ -100,5 +100,5 @@ index 341763730..30d402c75 100644
  
  ########################################
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0030-policy-modules-system-logging-add-rules-for-syslogd-.patch b/recipes-security/refpolicy/refpolicy/0030-policy-modules-system-logging-add-rules-for-syslogd-.patch
index a06b3f4..ecfc018 100644
--- a/recipes-security/refpolicy/refpolicy/0030-policy-modules-system-logging-add-rules-for-syslogd-.patch
+++ b/recipes-security/refpolicy/refpolicy/0030-policy-modules-system-logging-add-rules-for-syslogd-.patch
@@ -1,4 +1,4 @@
-From c9759b1024873819cf594fe7ac3bf06bcf0d959d Mon Sep 17 00:00:00 2001
+From 26dc5529db7664ae248eba4dbc5d17915c371137 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 10:33:18 -0400
 Subject: [PATCH] policy/modules/system/logging: add rules for syslogd symlink
@@ -18,10 +18,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 21e3285a9..abee7df9c 100644
+index abd61e6bd..90d8ccd31 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -411,6 +411,7 @@ files_search_spool(syslogd_t)
+@@ -420,6 +420,7 @@ files_search_spool(syslogd_t)
  
  # Allow access for syslog-ng
  allow syslogd_t var_log_t:dir { create setattr };
@@ -30,5 +30,5 @@ index 21e3285a9..abee7df9c 100644
  # for systemd but can not be conditional
  files_runtime_filetrans(syslogd_t, syslogd_tmp_t, dir, "log")
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0031-policy-modules-kernel-files-add-rules-for-the-symlin.patch b/recipes-security/refpolicy/refpolicy/0031-policy-modules-kernel-files-add-rules-for-the-symlin.patch
index ffa78ac..48e8acf 100644
--- a/recipes-security/refpolicy/refpolicy/0031-policy-modules-kernel-files-add-rules-for-the-symlin.patch
+++ b/recipes-security/refpolicy/refpolicy/0031-policy-modules-kernel-files-add-rules-for-the-symlin.patch
@@ -1,4 +1,4 @@
-From fd55f9f292617c7475c62c07ed6c478b4bd9eda5 Mon Sep 17 00:00:00 2001
+From 9052089dfc4f7466fcf304ab282c2e32933a5881 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/kernel/files: add rules for the symlink of
@@ -18,10 +18,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  2 files changed, 9 insertions(+)
 
 diff --git a/policy/modules/kernel/files.fc b/policy/modules/kernel/files.fc
-index 826722f4e..677ae96c3 100644
+index f6ff6b079..279df3d3c 100644
 --- a/policy/modules/kernel/files.fc
 +++ b/policy/modules/kernel/files.fc
-@@ -172,6 +172,7 @@ HOME_ROOT/lost\+found/.*	<<none>>
+@@ -170,6 +170,7 @@ HOME_ROOT/lost\+found/.*	<<none>>
  # /tmp
  #
  /tmp			-d	gen_context(system_u:object_r:tmp_t,s0-mls_systemhigh)
@@ -30,10 +30,10 @@ index 826722f4e..677ae96c3 100644
  /tmp/\.journal			<<none>>
  
 diff --git a/policy/modules/kernel/files.if b/policy/modules/kernel/files.if
-index 495cbe2f4..b308eefd9 100644
+index f7217b226..451f302af 100644
 --- a/policy/modules/kernel/files.if
 +++ b/policy/modules/kernel/files.if
-@@ -4555,6 +4555,7 @@ interface(`files_search_tmp',`
+@@ -4750,6 +4750,7 @@ interface(`files_search_tmp',`
  	')
  
  	allow $1 tmp_t:dir search_dir_perms;
@@ -41,7 +41,7 @@ index 495cbe2f4..b308eefd9 100644
  ')
  
  ########################################
-@@ -4591,6 +4592,7 @@ interface(`files_list_tmp',`
+@@ -4786,6 +4787,7 @@ interface(`files_list_tmp',`
  	')
  
  	allow $1 tmp_t:dir list_dir_perms;
@@ -49,7 +49,7 @@ index 495cbe2f4..b308eefd9 100644
  ')
  
  ########################################
-@@ -4627,6 +4629,7 @@ interface(`files_delete_tmp_dir_entry',`
+@@ -4822,6 +4824,7 @@ interface(`files_delete_tmp_dir_entry',`
  	')
  
  	allow $1 tmp_t:dir del_entry_dir_perms;
@@ -57,7 +57,7 @@ index 495cbe2f4..b308eefd9 100644
  ')
  
  ########################################
-@@ -4645,6 +4648,7 @@ interface(`files_read_generic_tmp_files',`
+@@ -4840,6 +4843,7 @@ interface(`files_read_generic_tmp_files',`
  	')
  
  	read_files_pattern($1, tmp_t, tmp_t)
@@ -65,7 +65,7 @@ index 495cbe2f4..b308eefd9 100644
  ')
  
  ########################################
-@@ -4663,6 +4667,7 @@ interface(`files_manage_generic_tmp_dirs',`
+@@ -4858,6 +4862,7 @@ interface(`files_manage_generic_tmp_dirs',`
  	')
  
  	manage_dirs_pattern($1, tmp_t, tmp_t)
@@ -73,7 +73,7 @@ index 495cbe2f4..b308eefd9 100644
  ')
  
  ########################################
-@@ -4699,6 +4704,7 @@ interface(`files_manage_generic_tmp_files',`
+@@ -4894,6 +4899,7 @@ interface(`files_manage_generic_tmp_files',`
  	')
  
  	manage_files_pattern($1, tmp_t, tmp_t)
@@ -81,7 +81,7 @@ index 495cbe2f4..b308eefd9 100644
  ')
  
  ########################################
-@@ -4735,6 +4741,7 @@ interface(`files_rw_generic_tmp_sockets',`
+@@ -4930,6 +4936,7 @@ interface(`files_rw_generic_tmp_sockets',`
  	')
  
  	rw_sock_files_pattern($1, tmp_t, tmp_t)
@@ -89,7 +89,7 @@ index 495cbe2f4..b308eefd9 100644
  ')
  
  ########################################
-@@ -4942,6 +4949,7 @@ interface(`files_tmp_filetrans',`
+@@ -5137,6 +5144,7 @@ interface(`files_tmp_filetrans',`
  	')
  
  	filetrans_pattern($1, tmp_t, $2, $3, $4)
@@ -98,5 +98,5 @@ index 495cbe2f4..b308eefd9 100644
  
  ########################################
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0032-policy-modules-system-logging-fix-auditd-startup-fai.patch b/recipes-security/refpolicy/refpolicy/0032-policy-modules-system-logging-fix-auditd-startup-fai.patch
index 3f10d06..22ce8f2 100644
--- a/recipes-security/refpolicy/refpolicy/0032-policy-modules-system-logging-fix-auditd-startup-fai.patch
+++ b/recipes-security/refpolicy/refpolicy/0032-policy-modules-system-logging-fix-auditd-startup-fai.patch
@@ -1,4 +1,4 @@
-From a196ae5e13b3f8e0d2e7ff27c8d481c9376b18e9 Mon Sep 17 00:00:00 2001
+From eed095029b270bbc49dc67d6b7b6b2fe9c3bca07 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/system/logging: fix auditd startup failures
@@ -17,10 +17,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index abee7df9c..cc530a2be 100644
+index 90d8ccd31..d3b06db7d 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -161,6 +161,7 @@ dontaudit auditd_t auditd_etc_t:file map;
+@@ -169,6 +169,7 @@ dontaudit auditd_t auditd_etc_t:file map;
  manage_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
  allow auditd_t auditd_log_t:dir setattr;
  manage_lnk_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
@@ -28,7 +28,7 @@ index abee7df9c..cc530a2be 100644
  allow auditd_t var_log_t:dir search_dir_perms;
  
  manage_files_pattern(auditd_t, auditd_runtime_t, auditd_runtime_t)
-@@ -290,6 +291,7 @@ optional_policy(`
+@@ -298,6 +299,7 @@ optional_policy(`
  allow audisp_remote_t self:capability { setpcap setuid };
  allow audisp_remote_t self:process { getcap setcap };
  allow audisp_remote_t self:tcp_socket create_socket_perms;
@@ -37,5 +37,5 @@ index abee7df9c..cc530a2be 100644
  
  manage_dirs_pattern(audisp_remote_t, audit_spool_t, audit_spool_t)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0033-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch b/recipes-security/refpolicy/refpolicy/0033-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch
index 3421a43..f62db74 100644
--- a/recipes-security/refpolicy/refpolicy/0033-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch
+++ b/recipes-security/refpolicy/refpolicy/0033-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch
@@ -1,4 +1,4 @@
-From bfcb86c9c9ad6a9f10a8556320443d8c96adedc9 Mon Sep 17 00:00:00 2001
+From 3f24b88886fcd1a17248d8d674a02d01061d937a Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/kernel/terminal: don't audit tty_device_t in
@@ -17,7 +17,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 3 insertions(+)
 
 diff --git a/policy/modules/kernel/terminal.if b/policy/modules/kernel/terminal.if
-index 55c18dffb..e8c0735eb 100644
+index e5645c7c5..6e9f654ac 100644
 --- a/policy/modules/kernel/terminal.if
 +++ b/policy/modules/kernel/terminal.if
 @@ -335,9 +335,12 @@ interface(`term_use_console',`
@@ -34,5 +34,5 @@ index 55c18dffb..e8c0735eb 100644
  
  ########################################
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0036-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch b/recipes-security/refpolicy/refpolicy/0034-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch
similarity index 52%
rename from recipes-security/refpolicy/refpolicy/0036-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch
rename to recipes-security/refpolicy/refpolicy/0034-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch
index f9aa158..0b00f5a 100644
--- a/recipes-security/refpolicy/refpolicy/0036-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch
+++ b/recipes-security/refpolicy/refpolicy/0034-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch
@@ -1,4 +1,4 @@
-From d1352b688603b16eb6da7a30198d8b7abfc55d1e Mon Sep 17 00:00:00 2001
+From 9c84425bbcaef5913fb6e309b8811639134714ed Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Wed, 1 Jul 2020 08:44:07 +0800
 Subject: [PATCH] policy/modules/services/rpcbind: allow rpcbind_t to create
@@ -13,14 +13,14 @@ Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/services/rpcbind.te | 5 +++--
- 1 file changed, 3 insertions(+), 2 deletions(-)
+ policy/modules/services/rpcbind.te | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/policy/modules/services/rpcbind.te b/policy/modules/services/rpcbind.te
-index 168c28ca3..e1eb7d5fc 100644
+index 137c21ece..2a712192b 100644
 --- a/policy/modules/services/rpcbind.te
 +++ b/policy/modules/services/rpcbind.te
-@@ -25,16 +25,17 @@ files_type(rpcbind_var_lib_t)
+@@ -25,7 +25,7 @@ files_type(rpcbind_var_lib_t)
  # Local policy
  #
  
@@ -29,17 +29,6 @@ index 168c28ca3..e1eb7d5fc 100644
  # net_admin is for SO_SNDBUFFORCE
  dontaudit rpcbind_t self:capability net_admin;
  allow rpcbind_t self:fifo_file rw_fifo_file_perms;
- allow rpcbind_t self:unix_stream_socket { accept listen };
- allow rpcbind_t self:tcp_socket { accept listen };
- 
-+manage_dirs_pattern(rpcbind_t, rpcbind_runtime_t, rpcbind_runtime_t)
- manage_files_pattern(rpcbind_t, rpcbind_runtime_t, rpcbind_runtime_t)
- manage_sock_files_pattern(rpcbind_t, rpcbind_runtime_t, rpcbind_runtime_t)
--files_runtime_filetrans(rpcbind_t, rpcbind_runtime_t, { file sock_file })
-+files_runtime_filetrans(rpcbind_t, rpcbind_runtime_t, { file sock_file dir })
- 
- manage_dirs_pattern(rpcbind_t, rpcbind_var_lib_t, rpcbind_var_lib_t)
- manage_files_pattern(rpcbind_t, rpcbind_var_lib_t, rpcbind_var_lib_t)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0034-policy-modules-system-modutils-allow-mod_t-to-access.patch b/recipes-security/refpolicy/refpolicy/0034-policy-modules-system-modutils-allow-mod_t-to-access.patch
deleted file mode 100644
index e7ce388..0000000
--- a/recipes-security/refpolicy/refpolicy/0034-policy-modules-system-modutils-allow-mod_t-to-access.patch
+++ /dev/null
@@ -1,67 +0,0 @@
-From b3ff2e8572cd929c419775e57b547f309ba9d8fb Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Mon, 24 Aug 2020 11:29:09 +0800
-Subject: [PATCH] policy/modules/system/modutils: allow mod_t to access
- confidentiality of class lockdown
-
-The SELinux lockdown implementation was introduced since kernel 5.6 by
-commit 59438b46471ae6cdfb761afc8c9beaf1e428a331. We need to allow mod_t
-and udev_t to access confidentiality of class lockdown to mount tracefs.
-
-Fixes:
-kernel: Could not create tracefs 'iwlwifi_data/filter' entry
-kernel: Could not create tracefs 'enable' entry
-kernel: Could not create tracefs 'id' entry
-kernel: Could not create tracefs 'filter' entry
-kernel: Could not create tracefs 'trigger' entry
-kernel: Could not create tracefs 'format' entry
-
-audit[170]: AVC avc:  denied  { confidentiality } for  pid=170
-comm="modprobe" lockdown_reason="use of tracefs"
-scontext=system_u:system_r:kmod_t:s15:c0.c1023
-tcontext=system_u:system_r:kmod_t:s15:c0.c1023 tclass=lockdown
-permissive=0
-
-audit[190]: AVC avc:  denied  { confidentiality } for  pid=190
-comm="systemd-udevd" lockdown_reason="use of tracefs"
-scontext=system_u:system_r:udev_t:s0-s15:c0.c1023
-tcontext=system_u:system_r:udev_t:s0-s15:c0.c1023 tclass=lockdown
-permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/modutils.te | 2 ++
- policy/modules/system/udev.te     | 2 ++
- 2 files changed, 4 insertions(+)
-
-diff --git a/policy/modules/system/modutils.te b/policy/modules/system/modutils.te
-index b0a419dc1..5b4f0aca1 100644
---- a/policy/modules/system/modutils.te
-+++ b/policy/modules/system/modutils.te
-@@ -41,6 +41,8 @@ dontaudit kmod_t self:capability sys_admin;
- allow kmod_t self:udp_socket create_socket_perms;
- allow kmod_t self:rawip_socket create_socket_perms;
- 
-+allow kmod_t self:lockdown confidentiality;
-+
- # Read module config and dependency information
- list_dirs_pattern(kmod_t, modules_conf_t, modules_conf_t)
- read_files_pattern(kmod_t, modules_conf_t, modules_conf_t)
-diff --git a/policy/modules/system/udev.te b/policy/modules/system/udev.te
-index c50ff68c1..4c5a690fb 100644
---- a/policy/modules/system/udev.te
-+++ b/policy/modules/system/udev.te
-@@ -67,6 +67,8 @@ ifdef(`init_systemd',`
- # for systemd-udevd to rename interfaces
- allow udev_t self:netlink_route_socket nlmsg_write;
- 
-+allow udev_t self:lockdown confidentiality;
-+
- can_exec(udev_t, udev_exec_t)
- 
- allow udev_t udev_helper_exec_t:dir list_dir_perms;
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-getty-allow-getty_t-to-search-.patch b/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-getty-allow-getty_t-to-search-.patch
deleted file mode 100644
index 0dfe0ee..0000000
--- a/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-getty-allow-getty_t-to-search-.patch
+++ /dev/null
@@ -1,32 +0,0 @@
-From 175b493e7fe69de274388a7f251e74ec9cd56c41 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Tue, 23 Jun 2020 08:39:44 +0800
-Subject: [PATCH] policy/modules/system/getty: allow getty_t to search tmpfs
-
-Fixes:
-avc:  denied  { search } for  pid=211 comm="agetty" name="/" dev="tmpfs"
-ino=1 scontext=system_u:system_r:getty_t
-tcontext=system_u:object_r:tmpfs_t tclass=dir permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/getty.te | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/system/getty.te b/policy/modules/system/getty.te
-index e6e76a93b..c704ddb82 100644
---- a/policy/modules/system/getty.te
-+++ b/policy/modules/system/getty.te
-@@ -68,6 +68,7 @@ files_read_etc_runtime_files(getty_t)
- files_read_etc_files(getty_t)
- files_search_spool(getty_t)
- files_dontaudit_search_var_lib(getty_t)
-+fs_search_tmpfs(getty_t)
- 
- fs_search_auto_mountpoints(getty_t)
- # for error condition handling
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0038-policy-modules-system-systemd-enable-support-for-sys.patch b/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-systemd-enable-support-for-sys.patch
similarity index 91%
rename from recipes-security/refpolicy/refpolicy/0038-policy-modules-system-systemd-enable-support-for-sys.patch
rename to recipes-security/refpolicy/refpolicy/0035-policy-modules-system-systemd-enable-support-for-sys.patch
index cc29c7b..43b2f4d 100644
--- a/recipes-security/refpolicy/refpolicy/0038-policy-modules-system-systemd-enable-support-for-sys.patch
+++ b/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-systemd-enable-support-for-sys.patch
@@ -1,4 +1,4 @@
-From 93d4f198bd469a8728f5ce0cc51ff18f8a58b23b Mon Sep 17 00:00:00 2001
+From 6465e39b6dfe8daa88cab321e3cf44ccc9f1441d Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Thu, 4 Feb 2016 06:03:19 -0500
 Subject: [PATCH] policy/modules/system/systemd: enable support for
@@ -36,10 +36,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 5 insertions(+), 1 deletion(-)
 
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 3d9198342..31d28a0e3 100644
+index ef25974ac..362248d17 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -10,7 +10,7 @@ policy_module(systemd, 1.12.6)
+@@ -10,7 +10,7 @@ policy_module(systemd)
  ## Enable support for systemd-tmpfiles to manage all non-security files.
  ## </p>
  ## </desc>
@@ -48,7 +48,7 @@ index 3d9198342..31d28a0e3 100644
  
  ## <desc>
  ## <p>
-@@ -1396,6 +1396,10 @@ files_relabelfrom_home(systemd_tmpfiles_t)
+@@ -1640,6 +1640,10 @@ files_relabelfrom_home(systemd_tmpfiles_t)
  files_relabelto_home(systemd_tmpfiles_t)
  files_relabelto_etc_dirs(systemd_tmpfiles_t)
  files_setattr_lock_dirs(systemd_tmpfiles_t)
@@ -60,5 +60,5 @@ index 3d9198342..31d28a0e3 100644
  files_manage_etc_symlinks(systemd_tmpfiles_t)
  
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0045-policy-modules-system-systemd-allow-systemd_logind_t.patch b/recipes-security/refpolicy/refpolicy/0036-policy-modules-system-systemd-allow-systemd_logind_t.patch
similarity index 88%
rename from recipes-security/refpolicy/refpolicy/0045-policy-modules-system-systemd-allow-systemd_logind_t.patch
rename to recipes-security/refpolicy/refpolicy/0036-policy-modules-system-systemd-allow-systemd_logind_t.patch
index 49aa7a6..56b6119 100644
--- a/recipes-security/refpolicy/refpolicy/0045-policy-modules-system-systemd-allow-systemd_logind_t.patch
+++ b/recipes-security/refpolicy/refpolicy/0036-policy-modules-system-systemd-allow-systemd_logind_t.patch
@@ -1,4 +1,4 @@
-From 4e2df7ca542b6c94e74345daaecb33efc82d749a Mon Sep 17 00:00:00 2001
+From 2acb5ddbd04c578a420418e3bcb572bbd2dfbae6 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Sat, 18 Dec 2021 09:26:43 +0800
 Subject: [PATCH] policy/modules/system/systemd: allow systemd_logind_t to read
@@ -27,10 +27,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 847895e63..1a83148c1 100644
+index 362248d17..4a1e06640 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -721,6 +721,7 @@ userdom_relabelfrom_user_runtime_dirs(systemd_logind_t)
+@@ -920,6 +920,7 @@ userdom_relabelfrom_user_runtime_dirs(systemd_logind_t)
  userdom_relabelto_user_runtime_dirs(systemd_logind_t)
  userdom_setattr_user_ttys(systemd_logind_t)
  userdom_use_user_ttys(systemd_logind_t)
@@ -39,5 +39,5 @@ index 847895e63..1a83148c1 100644
  # Needed to work around patch not yet merged into the systemd-logind supported on RHEL 7.x
  # The change in systemd by Nicolas Iooss on 02-Feb-2016 with hash 4b51966cf6c06250036e428608da92f8640beb96
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0037-policy-modules-admin-usermanage-allow-useradd-to-rel.patch b/recipes-security/refpolicy/refpolicy/0037-policy-modules-admin-usermanage-allow-useradd-to-rel.patch
deleted file mode 100644
index 9465a3e..0000000
--- a/recipes-security/refpolicy/refpolicy/0037-policy-modules-admin-usermanage-allow-useradd-to-rel.patch
+++ /dev/null
@@ -1,71 +0,0 @@
-From 07866ad826b299194c1bfd7978e5077dde72a68e Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Mon, 11 Oct 2021 10:10:10 +0800
-Subject: [PATCH] policy/modules/admin/usermanage: allow useradd to relabel
- user home files
-
-Fixes:
-avc: denied { relabelfrom } for pid=491 comm="useradd" name=".bashrc"
-dev="vda" ino=12641 scontext=root:sysadm_r:useradd_t
-tcontext=user_u:object_r:user_home_t tclass=file permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/admin/usermanage.te  |  2 ++
- policy/modules/system/userdomain.if | 18 ++++++++++++++++++
- 2 files changed, 20 insertions(+)
-
-diff --git a/policy/modules/admin/usermanage.te b/policy/modules/admin/usermanage.te
-index 98646b4b4..50c479498 100644
---- a/policy/modules/admin/usermanage.te
-+++ b/policy/modules/admin/usermanage.te
-@@ -496,6 +496,7 @@ files_read_etc_runtime_files(useradd_t)
- 
- fs_search_auto_mountpoints(useradd_t)
- fs_getattr_xattr_fs(useradd_t)
-+fs_search_tmpfs(useradd_t)
- 
- mls_file_upgrade(useradd_t)
- 
-@@ -541,6 +542,7 @@ userdom_home_filetrans_user_home_dir(useradd_t)
- userdom_manage_user_home_content_dirs(useradd_t)
- userdom_manage_user_home_content_files(useradd_t)
- userdom_user_home_dir_filetrans_user_home_content(useradd_t, notdevfile_class_set)
-+userdom_relabel_user_home_content_files(useradd_t)
- 
- optional_policy(`
- 	mta_manage_spool(useradd_t)
-diff --git a/policy/modules/system/userdomain.if b/policy/modules/system/userdomain.if
-index 22b3c1bf7..ec625170d 100644
---- a/policy/modules/system/userdomain.if
-+++ b/policy/modules/system/userdomain.if
-@@ -2362,6 +2362,24 @@ interface(`userdom_dontaudit_relabel_user_home_content_files',`
- 	dontaudit $1 user_home_t:file relabel_file_perms;
- ')
- 
-+########################################
-+## <summary>
-+##	Relabel user home files.
-+## </summary>
-+## <param name="domain">
-+##	<summary>
-+##	Domain allowed access.
-+##	</summary>
-+## </param>
-+#
-+interface(`userdom_relabel_user_home_content_files',`
-+	gen_require(`
-+		type user_home_t;
-+	')
-+
-+	allow $1 user_home_t:file relabel_file_perms;
-+')
-+
- ########################################
- ## <summary>
- ##	Read user home subdirectory symbolic links.
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0037-policy-modules-roles-sysadm-allow-sysadm-to-use-init.patch b/recipes-security/refpolicy/refpolicy/0037-policy-modules-roles-sysadm-allow-sysadm-to-use-init.patch
new file mode 100644
index 0000000..78c4dc8
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0037-policy-modules-roles-sysadm-allow-sysadm-to-use-init.patch
@@ -0,0 +1,36 @@
+From 51a7f8058fee569322c1a0597fccd36c318ad943 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 28 Oct 2022 11:56:09 +0800
+Subject: [PATCH] policy/modules/roles/sysadm: allow sysadm to use init file
+ descriptors
+
+Root can not login via console without this.
+
+Fixes:
+avc: denied { use } for pid=323 comm="sh" path="/dev/tty1"
+dev="devtmpfs" ino=21 scontext=root:sysadm_r:sysadm_t
+tcontext=system_u:system_r:init_t tclass=fd permissive=0
+
+Upstream-Status: Pending
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/roles/sysadm.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
+index bb715a847..088c954f5 100644
+--- a/policy/modules/roles/sysadm.te
++++ b/policy/modules/roles/sysadm.te
+@@ -86,6 +86,8 @@ ifdef(`init_systemd',`
+ 	# LookupDynamicUserByUID on org.freedesktop.systemd1.
+ 	init_dbus_chat(sysadm_t)
+ 
++	init_use_fds(sysadm_t)
++
+ 	# Allow sysadm to get the status of and set properties of other users,
+ 	# sessions, and seats on the system.
+ 	systemd_dbus_chat_logind(sysadm_t)
+-- 
+2.25.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0038-policy-modules-system-systemd-systemd-user-fixes.patch b/recipes-security/refpolicy/refpolicy/0038-policy-modules-system-systemd-systemd-user-fixes.patch
new file mode 100644
index 0000000..85bb82b
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0038-policy-modules-system-systemd-systemd-user-fixes.patch
@@ -0,0 +1,84 @@
+From 5b6f3fcb1ddabd0a66541959306e7b0adfe2b2b0 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Thu, 4 Feb 2021 10:48:54 +0800
+Subject: [PATCH] policy/modules/system/systemd: systemd --user fixes
+
+Fixes:
+systemctl[277]: Failed to connect to bus: No medium found
+
+avc: denied { mknod } for  pid=297 comm="systemd" capability=27
+scontext=root:sysadm_r:sysadm_systemd_t
+tcontext=root:sysadm_r:sysadm_systemd_t tclass=capability permissive=0
+
+avc: denied { bpf } for pid=297 comm="systemd" capability=39
+scontext=root:sysadm_r:sysadm_systemd_t
+tcontext=root:sysadm_r:sysadm_systemd_t tclass=capability2 permissive=0
+
+avc: denied { sys_admin } for pid=297 comm="systemd" capability=21
+scontext=root:sysadm_r:sysadm_systemd_t
+tcontext=root:sysadm_r:sysadm_systemd_t tclass=capability permissive=0
+
+avc: denied { perfmon } for pid=297 comm="systemd" capability=38
+scontext=root:sysadm_r:sysadm_systemd_t
+tcontext=root:sysadm_r:sysadm_systemd_t tclass=capability2 permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/roles/sysadm.te   |  2 ++
+ policy/modules/system/systemd.if | 21 ++++++++++++++++++++-
+ 2 files changed, 22 insertions(+), 1 deletion(-)
+
+diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
+index 088c954f5..92f50fd5a 100644
+--- a/policy/modules/roles/sysadm.te
++++ b/policy/modules/roles/sysadm.te
+@@ -98,6 +98,8 @@ ifdef(`init_systemd',`
+ 
+ 	# Allow sysadm to follow logs in the journal, i.e. with podman logs -f
+ 	systemd_watch_journal_dirs(sysadm_t)
++
++	systemd_sysadm_user(sysadm_t)
+ ')
+ 
+ tunable_policy(`allow_ptrace',`
+diff --git a/policy/modules/system/systemd.if b/policy/modules/system/systemd.if
+index 9dc91fbb7..325ca548b 100644
+--- a/policy/modules/system/systemd.if
++++ b/policy/modules/system/systemd.if
+@@ -58,7 +58,7 @@ template(`systemd_role_template',`
+ 	allow $1_systemd_t self:process { getsched signal };
+ 	allow $1_systemd_t self:netlink_kobject_uevent_socket create_socket_perms;
+ 	allow $1_systemd_t self:unix_stream_socket create_stream_socket_perms;
+-	allow $1_systemd_t $3:process { setsched rlimitinh signal_perms };
++	allow $1_systemd_t $3:process { setsched rlimitinh signal_perms noatsecure };
+ 	corecmd_shell_domtrans($1_systemd_t, $3)
+ 	corecmd_bin_domtrans($1_systemd_t, $3)
+ 
+@@ -2613,3 +2613,22 @@ interface(`systemd_use_inherited_machined_ptys', `
+ 	allow $1 systemd_machined_t:fd use;
+ 	allow $1 systemd_machined_devpts_t:chr_file rw_inherited_term_perms;
+ ')
++
++#########################################
++## <summary>
++##	sysadm user for systemd --user
++## </summary>
++## <param name="role">
++##	<summary>
++##  Role allowed access.
++##	</summary>
++## </param>
++#
++interface(`systemd_sysadm_user',`
++	gen_require(`
++		type sysadm_systemd_t;
++	')
++
++	allow sysadm_systemd_t self:capability { mknod sys_admin };
++	allow sysadm_systemd_t self:capability2 { bpf perfmon };
++')
+-- 
+2.25.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0046-policy-modules-system-mount-make-mount_t-domain-MLS-.patch b/recipes-security/refpolicy/refpolicy/0039-policy-modules-system-mount-make-mount_t-domain-MLS-.patch
similarity index 84%
rename from recipes-security/refpolicy/refpolicy/0046-policy-modules-system-mount-make-mount_t-domain-MLS-.patch
rename to recipes-security/refpolicy/refpolicy/0039-policy-modules-system-mount-make-mount_t-domain-MLS-.patch
index 4cae8c6..c3b4b55 100644
--- a/recipes-security/refpolicy/refpolicy/0046-policy-modules-system-mount-make-mount_t-domain-MLS-.patch
+++ b/recipes-security/refpolicy/refpolicy/0039-policy-modules-system-mount-make-mount_t-domain-MLS-.patch
@@ -1,4 +1,4 @@
-From 705008ba8ef960cf2e4813b4b8c5a87b919d545f Mon Sep 17 00:00:00 2001
+From ccdd22cc2776b695f96faffc88699aa2b182e085 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Sat, 15 Feb 2014 04:22:47 -0500
 Subject: [PATCH] policy/modules/system/mount: make mount_t domain MLS trusted
@@ -19,10 +19,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/system/mount.te b/policy/modules/system/mount.te
-index e39ab41a8..3481f9294 100644
+index d028723ce..97f49e58e 100644
 --- a/policy/modules/system/mount.te
 +++ b/policy/modules/system/mount.te
-@@ -116,6 +116,7 @@ fs_dontaudit_write_all_image_files(mount_t)
+@@ -112,6 +112,7 @@ fs_dontaudit_write_all_image_files(mount_t)
  
  mls_file_read_all_levels(mount_t)
  mls_file_write_all_levels(mount_t)
@@ -31,5 +31,5 @@ index e39ab41a8..3481f9294 100644
  selinux_get_enforce_mode(mount_t)
  
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0039-policy-modules-system-systemd-fix-systemd-resolved-s.patch b/recipes-security/refpolicy/refpolicy/0039-policy-modules-system-systemd-fix-systemd-resolved-s.patch
deleted file mode 100644
index ea8af31..0000000
--- a/recipes-security/refpolicy/refpolicy/0039-policy-modules-system-systemd-fix-systemd-resolved-s.patch
+++ /dev/null
@@ -1,60 +0,0 @@
-From 99139408a7919282e97e1b2fcd5da33248386d73 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Mon, 25 Jan 2021 14:14:59 +0800
-Subject: [PATCH] policy/modules/system/systemd: fix systemd-resolved startup
- failures
-
-* Allow systemd_resolved_t to manage systemd_resolved_runtime_t link
-  files
-* Allow systemd_resolved_t to send and recevie messages from dhcpc over
-  dbus
-
-Fixes:
-avc:  denied  { create } for  pid=329 comm="systemd-resolve"
-name=".#stub-resolv.conf53cb7f9d1e3aa72b"
-scontext=system_u:system_r:systemd_resolved_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:systemd_resolved_runtime_t:s0 tclass=lnk_file
-permissive=0
-
-avc:  denied  { send_msg } for msgtype=method_call
-interface=org.freedesktop.resolve1.Manager member=RevertLink
-dest=org.freedesktop.resolve1 spid=340 tpid=345
-scontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023
-tcontext=system_u:system_r:systemd_resolved_t:s0-s15:c0.c1023
-tclass=dbus permissive=0
-
-avc:  denied  { send_msg } for msgtype=method_return dest=:1.6 spid=345
-tpid=340 scontext=system_u:system_r:systemd_resolved_t:s0-s15:c0.c1023
-tcontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023 tclass=dbus
-permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/systemd.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 31d28a0e3..448905ff7 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -1199,6 +1199,7 @@ allow systemd_resolved_t systemd_networkd_runtime_t:dir watch;
- 
- manage_dirs_pattern(systemd_resolved_t, systemd_resolved_runtime_t, systemd_resolved_runtime_t)
- manage_files_pattern(systemd_resolved_t, systemd_resolved_runtime_t, systemd_resolved_runtime_t)
-+manage_lnk_files_pattern(systemd_resolved_t, systemd_resolved_runtime_t, systemd_resolved_runtime_t)
- manage_sock_files_pattern(systemd_resolved_t, systemd_resolved_runtime_t, systemd_resolved_runtime_t)
- init_runtime_filetrans(systemd_resolved_t, systemd_resolved_runtime_t, dir)
- 
-@@ -1236,6 +1237,7 @@ optional_policy(`
- 	dbus_system_bus_client(systemd_resolved_t)
- 	dbus_watch_system_bus_runtime_dirs(systemd_resolved_t)
- 	dbus_watch_system_bus_runtime_named_sockets(systemd_resolved_t)
-+	sysnet_dbus_chat_dhcpc(systemd_resolved_t)
- ')
- 
- #########################################
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0047-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch b/recipes-security/refpolicy/refpolicy/0040-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch
similarity index 83%
rename from recipes-security/refpolicy/refpolicy/0047-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch
rename to recipes-security/refpolicy/refpolicy/0040-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch
index 86317b3..d711612 100644
--- a/recipes-security/refpolicy/refpolicy/0047-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch
+++ b/recipes-security/refpolicy/refpolicy/0040-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch
@@ -1,4 +1,4 @@
-From ef2b9196f3a51745a3644489d316bda7cd67f72d Mon Sep 17 00:00:00 2001
+From 64498d6cd30a0a65a24e3e7ab22cca5921c2db89 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Mon, 28 Jan 2019 14:05:18 +0800
 Subject: [PATCH] policy/modules/roles/sysadm: MLS - sysadm rw to clearance
@@ -7,7 +7,7 @@ The two new rules make sysadm_t domain MLS trusted for:
  - reading from files at all levels.
  - writing to processes up to its clearance(s0-s15).
 
-With default MLS policy, root user would login in as sysadm_t:s0 by
+With default MLS policy, root user would login as sysadm_t:s0 by
 default. Most processes will run in sysadm_t:s0 because no
 domtrans/rangetrans rules, as a result, even root could not access
 high level files/processes.
@@ -23,10 +23,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
-index e1933a5bd..0682ed31a 100644
+index 92f50fd5a..8c154d474 100644
 --- a/policy/modules/roles/sysadm.te
 +++ b/policy/modules/roles/sysadm.te
-@@ -44,6 +44,8 @@ logging_watch_all_logs(sysadm_t)
+@@ -45,6 +45,8 @@ logging_watch_all_logs(sysadm_t)
  logging_watch_audit_log(sysadm_t)
  
  mls_process_read_all_levels(sysadm_t)
@@ -36,5 +36,5 @@ index e1933a5bd..0682ed31a 100644
  selinux_read_policy(sysadm_t)
  
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0040-policy-modules-system-systemd-allow-systemd_-_t-to-g.patch b/recipes-security/refpolicy/refpolicy/0040-policy-modules-system-systemd-allow-systemd_-_t-to-g.patch
deleted file mode 100644
index 91588f1..0000000
--- a/recipes-security/refpolicy/refpolicy/0040-policy-modules-system-systemd-allow-systemd_-_t-to-g.patch
+++ /dev/null
@@ -1,156 +0,0 @@
-From 81e63f86d6d030eaf0204796e32011c08e7b5e52 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Tue, 28 Sep 2021 10:03:04 +0800
-Subject: [PATCH] policy/modules/system/systemd: allow systemd_*_t to get the
- attributes of tmpfs and cgroups
-
-Fixes:
-avc: denied { getattr } for pid=245 comm="systemd-network" name="/"
-dev="tmpfs" ino=1 scontext=system_u:system_r:systemd_networkd_t
-tcontext=system_u:object_r:tmpfs_t tclass=filesystem permissive=0
-
-avc: denied { getattr } for pid=252 comm="systemd-resolve" name="/"
-dev="tmpfs" ino=1 scontext=system_u:system_r:systemd_resolved_t
-tcontext=system_u:object_r:tmpfs_t tclass=filesystem permissive=0
-
-avc: denied { getattr } for pid=260 comm="systemd-user-se" name="/"
-dev="tmpfs" ino=1 scontext=system_u:system_r:systemd_sessions_t
-tcontext=system_u:object_r:tmpfs_t tclass=filesystem permissive=0
-
-avc: denied { search } for pid=293 comm="systemd-user-ru" name="/"
-dev="tmpfs" ino=1 scontext=system_u:system_r:systemd_user_runtime_dir_t
-tcontext=system_u:object_r:cgroup_t tclass=dir permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/systemd.te | 35 ++++++++++++++++++++++++++++++++
- 1 file changed, 35 insertions(+)
-
-diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 448905ff7..847895e63 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -337,6 +337,10 @@ udev_read_runtime_files(systemd_backlight_t)
- 
- files_search_var_lib(systemd_backlight_t)
- 
-+fs_getattr_tmpfs(systemd_backlight_t)
-+fs_search_cgroup_dirs(systemd_backlight_t)
-+fs_getattr_cgroup(systemd_backlight_t)
-+
- #######################################
- #
- # Binfmt local policy
-@@ -447,6 +451,7 @@ files_list_usr(systemd_generator_t)
- fs_list_efivars(systemd_generator_t)
- fs_getattr_cgroup(systemd_generator_t)
- fs_getattr_xattr_fs(systemd_generator_t)
-+fs_getattr_tmpfs(systemd_generator_t)
- 
- init_create_runtime_files(systemd_generator_t)
- init_manage_runtime_dirs(systemd_generator_t)
-@@ -515,6 +520,10 @@ systemd_log_parse_environment(systemd_hostnamed_t)
- # Allow reading /run/udev/data/+dmi:id
- udev_read_runtime_files(systemd_hostnamed_t)
- 
-+fs_getattr_tmpfs(systemd_hostnamed_t)
-+fs_search_cgroup_dirs(systemd_hostnamed_t)
-+fs_getattr_cgroup(systemd_hostnamed_t)
-+
- optional_policy(`
- 	dbus_connect_system_bus(systemd_hostnamed_t)
- 	dbus_system_bus_client(systemd_hostnamed_t)
-@@ -835,6 +844,10 @@ dev_read_sysfs(systemd_modules_load_t)
- files_mmap_read_kernel_modules(systemd_modules_load_t)
- files_read_etc_files(systemd_modules_load_t)
- 
-+fs_getattr_tmpfs(systemd_modules_load_t)
-+fs_search_cgroup_dirs(systemd_modules_load_t)
-+fs_getattr_cgroup(systemd_modules_load_t)
-+
- modutils_read_module_config(systemd_modules_load_t)
- modutils_read_module_deps(systemd_modules_load_t)
- 
-@@ -885,6 +898,7 @@ files_watch_runtime_dirs(systemd_networkd_t)
- files_watch_root_dirs(systemd_networkd_t)
- files_list_runtime(systemd_networkd_t)
- fs_getattr_xattr_fs(systemd_networkd_t)
-+fs_getattr_tmpfs(systemd_networkd_t)
- fs_getattr_cgroup(systemd_networkd_t)
- fs_search_cgroup_dirs(systemd_networkd_t)
- fs_read_nsfs_files(systemd_networkd_t)
-@@ -1185,6 +1199,10 @@ udev_read_runtime_files(systemd_rfkill_t)
- 
- systemd_log_parse_environment(systemd_rfkill_t)
- 
-+fs_getattr_tmpfs(systemd_rfkill_t)
-+fs_search_cgroup_dirs(systemd_rfkill_t)
-+fs_getattr_cgroup(systemd_rfkill_t)
-+
- #########################################
- #
- # Resolved local policy
-@@ -1224,6 +1242,9 @@ auth_use_nsswitch(systemd_resolved_t)
- files_watch_root_dirs(systemd_resolved_t)
- files_watch_runtime_dirs(systemd_resolved_t)
- files_list_runtime(systemd_resolved_t)
-+fs_getattr_tmpfs(systemd_resolved_t)
-+fs_search_cgroup_dirs(systemd_resolved_t)
-+fs_getattr_cgroup(systemd_resolved_t)
- 
- init_dgram_send(systemd_resolved_t)
- 
-@@ -1288,6 +1309,10 @@ seutil_read_file_contexts(systemd_sessions_t)
- 
- systemd_log_parse_environment(systemd_sessions_t)
- 
-+fs_getattr_tmpfs(systemd_sessions_t)
-+fs_search_cgroup_dirs(systemd_sessions_t)
-+fs_getattr_cgroup(systemd_sessions_t)
-+
- ########################################
- #
- # sysctl local policy
-@@ -1304,6 +1329,9 @@ kernel_rw_all_sysctls(systemd_sysctl_t)
- kernel_dontaudit_getattr_proc(systemd_sysctl_t)
- 
- files_read_etc_files(systemd_sysctl_t)
-+fs_getattr_tmpfs(systemd_sysctl_t)
-+fs_search_cgroup_dirs(systemd_sysctl_t)
-+fs_getattr_cgroup(systemd_sysctl_t)
- 
- systemd_log_parse_environment(systemd_sysctl_t)
- 
-@@ -1409,6 +1437,8 @@ fs_getattr_tmpfs(systemd_tmpfiles_t)
- fs_getattr_xattr_fs(systemd_tmpfiles_t)
- fs_list_tmpfs(systemd_tmpfiles_t)
- fs_relabelfrom_tmpfs_dirs(systemd_tmpfiles_t)
-+fs_search_cgroup_dirs(systemd_tmpfiles_t)
-+fs_getattr_cgroup(systemd_tmpfiles_t)
- 
- selinux_get_fs_mount(systemd_tmpfiles_t)
- selinux_use_status_page(systemd_tmpfiles_t)
-@@ -1497,6 +1527,10 @@ allow systemd_update_done_t systemd_update_run_t:file manage_file_perms;
- files_etc_filetrans(systemd_update_done_t, systemd_update_run_t, file)
- files_var_filetrans(systemd_update_done_t, systemd_update_run_t, file)
- 
-+fs_getattr_tmpfs(systemd_update_done_t)
-+fs_search_cgroup_dirs(systemd_update_done_t)
-+fs_getattr_cgroup(systemd_update_done_t)
-+
- kernel_read_kernel_sysctls(systemd_update_done_t)
- 
- selinux_use_status_page(systemd_update_done_t)
-@@ -1601,6 +1635,7 @@ fs_unmount_tmpfs(systemd_user_runtime_dir_t)
- fs_relabelfrom_tmpfs_dirs(systemd_user_runtime_dir_t)
- fs_read_cgroup_files(systemd_user_runtime_dir_t)
- fs_getattr_cgroup(systemd_user_runtime_dir_t)
-+fs_search_cgroup_dirs(systemd_user_runtime_dir_t)
- 
- kernel_read_kernel_sysctls(systemd_user_runtime_dir_t)
- kernel_dontaudit_getattr_proc(systemd_user_runtime_dir_t)
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0048-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch b/recipes-security/refpolicy/refpolicy/0041-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch
similarity index 84%
rename from recipes-security/refpolicy/refpolicy/0048-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch
rename to recipes-security/refpolicy/refpolicy/0041-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch
index f659e7e..d22dacf 100644
--- a/recipes-security/refpolicy/refpolicy/0048-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch
+++ b/recipes-security/refpolicy/refpolicy/0041-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch
@@ -1,4 +1,4 @@
-From 18ad027229a06fdcb833482dff0c2ae637d08e78 Mon Sep 17 00:00:00 2001
+From e82c43e60ef52ba00e8f2af5b46b2a6d49331209 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Fri, 23 Aug 2013 12:01:53 +0800
 Subject: [PATCH] policy/modules/services/rpc: make nfsd_t domain MLS trusted
@@ -15,10 +15,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  2 files changed, 7 insertions(+)
 
 diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kernel.te
-index ca951cb44..a32c59eb1 100644
+index 5124ae016..a40db8507 100644
 --- a/policy/modules/kernel/kernel.te
 +++ b/policy/modules/kernel/kernel.te
-@@ -356,6 +356,8 @@ mls_process_read_all_levels(kernel_t)
+@@ -368,6 +368,8 @@ mls_process_read_all_levels(kernel_t)
  mls_process_write_all_levels(kernel_t)
  mls_file_write_all_levels(kernel_t)
  mls_file_read_all_levels(kernel_t)
@@ -28,7 +28,7 @@ index ca951cb44..a32c59eb1 100644
  ifdef(`distro_redhat',`
  	# Bugzilla 222337
 diff --git a/policy/modules/services/rpcbind.te b/policy/modules/services/rpcbind.te
-index e1eb7d5fc..da0994749 100644
+index 2a712192b..923e48db7 100644
 --- a/policy/modules/services/rpcbind.te
 +++ b/policy/modules/services/rpcbind.te
 @@ -73,6 +73,11 @@ logging_send_syslog_msg(rpcbind_t)
@@ -36,7 +36,7 @@ index e1eb7d5fc..da0994749 100644
  miscfiles_read_localization(rpcbind_t)
  
 +# nfsd_t would not be allowed to send unix_stream_socket to rpcbind_t,
-+# because the are running in different level. So add rules to allow this.
++# because they are running in different level. So add rules to allow this.
 +mls_socket_read_all_levels(rpcbind_t)
 +mls_socket_write_all_levels(rpcbind_t)
 +
@@ -44,5 +44,5 @@ index e1eb7d5fc..da0994749 100644
  	term_dontaudit_use_unallocated_ttys(rpcbind_t)
  ')
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0041-policy-modules-system-logging-fix-syslogd-failures-f.patch b/recipes-security/refpolicy/refpolicy/0041-policy-modules-system-logging-fix-syslogd-failures-f.patch
deleted file mode 100644
index 2232d48..0000000
--- a/recipes-security/refpolicy/refpolicy/0041-policy-modules-system-logging-fix-syslogd-failures-f.patch
+++ /dev/null
@@ -1,55 +0,0 @@
-From dc2c9c91219311f6c4d985169dff6c5931a465d7 Mon Sep 17 00:00:00 2001
-From: Wenzong Fan <wenzong.fan@windriver.com>
-Date: Thu, 4 Feb 2016 02:10:15 -0500
-Subject: [PATCH] policy/modules/system/logging: fix syslogd failures for
- systemd
-
-Fixes:
-syslogd[243]: Error opening log file: /var/log/auth.log: Permission denied
-syslogd[243]: Error opening log file: /var/log/syslog: Permission denied
-syslogd[243]: Error opening log file: /var/log/kern.log: Permission denied
-syslogd[243]: Error opening log file: /var/log/mail.log: Permission denied
-syslogd[243]: Error opening log file: /var/log/mail.err: Permission denied
-syslogd[243]: Error opening log file: /var/log/messages: Permission denied
-
-avc:  denied  { search } for  pid=243 comm="syslogd" name="/"
-dev="tmpfs" ino=1 scontext=system_u:system_r:syslogd_t
-tcontext=system_u:object_r:tmpfs_t tclass=dir permissive=0
-
-avc:  denied  { write } for  pid=162 comm="systemd-journal"
-name="syslog" dev="tmpfs" ino=515 scontext=system_u:system_r:syslogd_t
-tcontext=system_u:object_r:syslogd_runtime_t tclass=sock_file
-permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/logging.te | 3 ++-
- 1 file changed, 2 insertions(+), 1 deletion(-)
-
-diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index cc530a2be..5b4b5ec5d 100644
---- a/policy/modules/system/logging.te
-+++ b/policy/modules/system/logging.te
-@@ -431,7 +431,7 @@ files_search_var_lib(syslogd_t)
- 
- # manage runtime files
- allow syslogd_t syslogd_runtime_t:dir create_dir_perms;
--allow syslogd_t syslogd_runtime_t:sock_file { create setattr unlink };
-+allow syslogd_t syslogd_runtime_t:sock_file { create setattr unlink write };
- allow syslogd_t syslogd_runtime_t:file map;
- manage_files_pattern(syslogd_t, syslogd_runtime_t, syslogd_runtime_t)
- files_runtime_filetrans(syslogd_t, syslogd_runtime_t, file)
-@@ -495,6 +495,7 @@ files_var_lib_filetrans(syslogd_t, syslogd_var_lib_t, { file dir })
- 
- fs_getattr_all_fs(syslogd_t)
- fs_search_auto_mountpoints(syslogd_t)
-+fs_search_tmpfs(syslogd_t)
- 
- mls_file_write_all_levels(syslogd_t) # Need to be able to write to /var/run/ and /var/log directories
- 
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0049-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch b/recipes-security/refpolicy/refpolicy/0042-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch
similarity index 90%
rename from recipes-security/refpolicy/refpolicy/0049-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch
rename to recipes-security/refpolicy/refpolicy/0042-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch
index ace056a..30c84f6 100644
--- a/recipes-security/refpolicy/refpolicy/0049-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch
+++ b/recipes-security/refpolicy/refpolicy/0042-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch
@@ -1,4 +1,4 @@
-From b41a910654f5c5fe198b1695df18b6f6a1af7904 Mon Sep 17 00:00:00 2001
+From 9343914c0486b5aa6ff7cceeb8f6c399115e5fb3 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 30 Jun 2020 10:18:20 +0800
 Subject: [PATCH] policy/modules/admin/dmesg: make dmesg_t MLS trusted reading
@@ -19,7 +19,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/admin/dmesg.te b/policy/modules/admin/dmesg.te
-index f3421fdbb..d87ee5583 100644
+index f1da315a9..89478c38e 100644
 --- a/policy/modules/admin/dmesg.te
 +++ b/policy/modules/admin/dmesg.te
 @@ -52,6 +52,8 @@ miscfiles_read_localization(dmesg_t)
@@ -32,5 +32,5 @@ index f3421fdbb..d87ee5583 100644
  	seutil_sigchld_newrole(dmesg_t)
  ')
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0042-policy-modules-system-systemd-systemd-user-fixes.patch b/recipes-security/refpolicy/refpolicy/0042-policy-modules-system-systemd-systemd-user-fixes.patch
deleted file mode 100644
index 108f62f..0000000
--- a/recipes-security/refpolicy/refpolicy/0042-policy-modules-system-systemd-systemd-user-fixes.patch
+++ /dev/null
@@ -1,172 +0,0 @@
-From 20b2608718064a92f9255adb459a97d95fdbc22e Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Thu, 4 Feb 2021 10:48:54 +0800
-Subject: [PATCH] policy/modules/system/systemd: systemd --user fixes
-
-Fixes:
-systemctl[1598]: Failed to connect to bus: $DBUS_SESSION_BUS_ADDRESS and
-$XDG_RUNTIME_DIR not defined (consider using --machine=<user>@.host
---user to connect to bus of other user)
-
-avc: denied { connectto } for  pid=293 comm="login"
-path="/run/systemd/userdb/io.systemd.Multiplexer"
-scontext=system_u:system_r:local_login_t
-tcontext=system_u:system_r:initrc_t tclass=unix_stream_socket
-permissive=0
-
-avc: denied { read } for  pid=293 comm="login" name="io.systemd.DropIn"
-dev="tmpfs" ino=44 scontext=system_u:system_r:local_login_t
-tcontext=system_u:object_r:systemd_userdb_runtime_t tclass=lnk_file
-permissive=0
-
-avc: denied { read } for  pid=293 comm="login"
-name="io.systemd.NameServiceSwitch" dev="tmpfs" ino=43
-scontext=system_u:system_r:local_login_t
-tcontext=system_u:object_r:systemd_userdb_runtime_t tclass=lnk_file
-permissive=0
-
-avc: denied { connectto } for  pid=244 comm="systemd-logind"
-path="/run/systemd/userdb/io.systemd.Multiplexer"
-scontext=system_u:system_r:systemd_logind_t
-tcontext=system_u:system_r:initrc_t tclass=unix_stream_socket
-permissive=0
-
-avc: denied { read } for  pid=244 comm="systemd-logind"
-name="io.systemd.DropIn" dev="tmpfs" ino=44
-scontext=system_u:system_r:systemd_logind_t
-tcontext=system_u:object_r:systemd_userdb_runtime_t tclass=lnk_file
-permissive=0
-
-avc: denied { read } for  pid=244 comm="systemd-logind"
-name="io.systemd.NameServiceSwitch" dev="tmpfs" ino=43
-scontext=system_u:system_r:systemd_logind_t
-tcontext=system_u:object_r:systemd_userdb_runtime_t tclass=lnk_file
-permissive=0
-
-avc: denied { mknod } for  pid=297 comm="systemd" capability=27
-scontext=root:sysadm_r:sysadm_systemd_t
-tcontext=root:sysadm_r:sysadm_systemd_t tclass=capability permissive=0
-
-avc: denied { setrlimit } for pid=297 comm="systemd"
-scontext=root:sysadm_r:sysadm_systemd_t
-tcontext=root:sysadm_r:sysadm_systemd_t tclass=process permissive=0
-
-avc: denied { bpf } for pid=297 comm="systemd" capability=39
-scontext=root:sysadm_r:sysadm_systemd_t
-tcontext=root:sysadm_r:sysadm_systemd_t tclass=capability2 permissive=0
-
-avc: denied { sys_admin } for pid=297 comm="systemd" capability=21
-scontext=root:sysadm_r:sysadm_systemd_t
-tcontext=root:sysadm_r:sysadm_systemd_t tclass=capability permissive=0
-
-avc: denied { perfmon } for pid=297 comm="systemd" capability=38
-scontext=root:sysadm_r:sysadm_systemd_t
-tcontext=root:sysadm_r:sysadm_systemd_t tclass=capability2 permissive=0
-
-avc: denied { watch } for pid=297 comm="systemd" path="/etc" dev="vda"
-ino=173 scontext=root:sysadm_r:sysadm_systemd_t
-tcontext=system_u:object_r:etc_t tclass=dir permissive=0
-
-avc: denied { getattr } for pid=297 comm="systemd" name="/" dev="vda"
-ino=2 scontext=root:sysadm_r:sysadm_systemd_t
-tcontext=system_u:object_r:fs_t tclass=filesystem permissive=0
-
-avc: denied { read } for pid=297 comm="systemd" name="unix" dev="proc"
-ino=4026532057 scontext=root:sysadm_r:sysadm_systemd_t
-tcontext=system_u:object_r:proc_net_t tclass=file permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/roles/sysadm.te   |  2 ++
- policy/modules/system/init.if    |  1 +
- policy/modules/system/systemd.if | 27 ++++++++++++++++++++++++++-
- 3 files changed, 29 insertions(+), 1 deletion(-)
-
-diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
-index 46d3e2f0b..e1933a5bd 100644
---- a/policy/modules/roles/sysadm.te
-+++ b/policy/modules/roles/sysadm.te
-@@ -92,6 +92,8 @@ ifdef(`init_systemd',`
- 	# Allow sysadm to query and set networking settings on the system.
- 	systemd_dbus_chat_networkd(sysadm_t)
- 	fs_read_nsfs_files(sysadm_t)
-+
-+	systemd_sysadm_user(sysadm_t)
- ')
- 
- tunable_policy(`allow_ptrace',`
-diff --git a/policy/modules/system/init.if b/policy/modules/system/init.if
-index 0171ee299..8ca29f654 100644
---- a/policy/modules/system/init.if
-+++ b/policy/modules/system/init.if
-@@ -959,6 +959,7 @@ interface(`init_unix_stream_socket_connectto',`
- 	')
- 
- 	allow $1 init_t:unix_stream_socket connectto;
-+	allow $1 initrc_t:unix_stream_socket connectto;
- ')
- 
- ########################################
-diff --git a/policy/modules/system/systemd.if b/policy/modules/system/systemd.if
-index 38adf050c..5c44d8d8a 100644
---- a/policy/modules/system/systemd.if
-+++ b/policy/modules/system/systemd.if
-@@ -57,7 +57,7 @@ template(`systemd_role_template',`
- 	allow $1_systemd_t self:process { getsched signal };
- 	allow $1_systemd_t self:netlink_kobject_uevent_socket create_socket_perms;
- 	allow $1_systemd_t self:unix_stream_socket create_stream_socket_perms;
--	allow $1_systemd_t $3:process { setsched rlimitinh signal_perms };
-+	allow $1_systemd_t $3:process { setsched rlimitinh signal_perms noatsecure };
- 	corecmd_shell_domtrans($1_systemd_t, $3)
- 	corecmd_bin_domtrans($1_systemd_t, $3)
- 
-@@ -88,8 +88,11 @@ template(`systemd_role_template',`
- 
- 	fs_manage_cgroup_files($1_systemd_t)
- 	fs_watch_cgroup_files($1_systemd_t)
-+	files_watch_etc_dirs($1_systemd_t)
-+	fs_getattr_xattr_fs($1_systemd_t)
- 
- 	kernel_dontaudit_getattr_proc($1_systemd_t)
-+	kernel_read_network_state($1_systemd_t)
- 
- 	selinux_use_status_page($1_systemd_t)
- 
-@@ -1052,6 +1055,7 @@ interface(`systemd_stream_connect_userdb', `
- 	init_search_runtime($1)
- 	allow $1 systemd_userdb_runtime_t:dir list_dir_perms;
- 	allow $1 systemd_userdb_runtime_t:sock_file write_sock_file_perms;
-+	allow $1 systemd_userdb_runtime_t:lnk_file read_lnk_file_perms;
- 	init_unix_stream_socket_connectto($1)
- ')
- 
-@@ -2003,3 +2007,24 @@ interface(`systemd_use_inherited_machined_ptys', `
- 	allow $1 systemd_machined_t:fd use;
- 	allow $1 systemd_machined_devpts_t:chr_file rw_inherited_term_perms;
- ')
-+
-+#########################################
-+## <summary>
-+##	sysadm user for systemd --user
-+## </summary>
-+## <param name="role">
-+##	<summary>
-+##  Role allowed access.
-+##	</summary>
-+## </param>
-+#
-+interface(`systemd_sysadm_user',`
-+	gen_require(`
-+		type sysadm_systemd_t;
-+	')
-+
-+	allow sysadm_systemd_t self:capability { mknod sys_admin };
-+	allow sysadm_systemd_t self:capability2 { bpf perfmon };
-+	allow sysadm_systemd_t self:process setrlimit;
-+	allow $1 sysadm_systemd_t:system reload;
-+')
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0050-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch b/recipes-security/refpolicy/refpolicy/0043-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
similarity index 94%
rename from recipes-security/refpolicy/refpolicy/0050-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
rename to recipes-security/refpolicy/refpolicy/0043-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
index 8b9f98c..932047a 100644
--- a/recipes-security/refpolicy/refpolicy/0050-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
+++ b/recipes-security/refpolicy/refpolicy/0043-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
@@ -1,4 +1,4 @@
-From c2e99e27acc1454d792b3e8d6f24d3a2a3be29e3 Mon Sep 17 00:00:00 2001
+From 057e4e6a6e2e87edcd6a93dd533620700b00b1c2 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Fri, 13 Oct 2017 07:20:40 +0000
 Subject: [PATCH] policy/modules/kernel/kernel: make kernel_t MLS trusted for
@@ -59,10 +59,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kernel.te
-index a32c59eb1..1c53754ee 100644
+index a40db8507..40cd52825 100644
 --- a/policy/modules/kernel/kernel.te
 +++ b/policy/modules/kernel/kernel.te
-@@ -358,6 +358,8 @@ mls_file_write_all_levels(kernel_t)
+@@ -370,6 +370,8 @@ mls_file_write_all_levels(kernel_t)
  mls_file_read_all_levels(kernel_t)
  mls_socket_write_all_levels(kernel_t)
  mls_fd_use_all_levels(kernel_t)
@@ -72,5 +72,5 @@ index a32c59eb1..1c53754ee 100644
  ifdef(`distro_redhat',`
  	# Bugzilla 222337
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0043-policy-modules-system-sysnetwork-support-priviledge-.patch b/recipes-security/refpolicy/refpolicy/0043-policy-modules-system-sysnetwork-support-priviledge-.patch
deleted file mode 100644
index 504e028..0000000
--- a/recipes-security/refpolicy/refpolicy/0043-policy-modules-system-sysnetwork-support-priviledge-.patch
+++ /dev/null
@@ -1,132 +0,0 @@
-From d1c159d4400722e783d12cc3684c1cf15004f7a9 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Thu, 24 Sep 2020 14:05:52 +0800
-Subject: [PATCH] policy/modules/system/sysnetwork: support priviledge
- separation for dhcpcd
-
-Fixes:
-
-avc:  denied  { sys_chroot } for  pid=332 comm="dhcpcd" capability=18
-scontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023
-tcontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023 tclass=capability
-permissive=0
-
-avc:  denied  { setgid } for  pid=332 comm="dhcpcd" capability=6
-scontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023
-tcontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023 tclass=capability
-permissive=0
-
-avc:  denied  { setuid } for  pid=332 comm="dhcpcd" capability=7
-scontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023
-tcontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023 tclass=capability
-permissive=0
-
-avc:  denied  { setrlimit } for  pid=332 comm="dhcpcd"
-scontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023
-tcontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023 tclass=process
-permissive=0
-
-avc:  denied  { create } for  pid=330 comm="dhcpcd"
-scontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023
-tcontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023
-tclass=netlink_kobject_uevent_socket permissive=0
-
-avc:  denied  { setopt } for  pid=330 comm="dhcpcd"
-scontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023
-tcontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023
-tclass=netlink_kobject_uevent_socket permissive=0
-
-avc:  denied  { bind } for  pid=330 comm="dhcpcd"
-scontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023
-tcontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023
-tclass=netlink_kobject_uevent_socket permissive=0
-
-avc:  denied  { getattr } for  pid=330 comm="dhcpcd"
-scontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023
-tcontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023
-tclass=netlink_kobject_uevent_socket permissive=0
-
-avc:  denied  { read } for  pid=330 comm="dhcpcd" name="n1" dev="tmpfs"
-ino=15616 scontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:udev_runtime_t:s0 tclass=file permissive=0
-
-avc:  denied  { open } for  pid=330 comm="dhcpcd"
-path="/run/udev/data/n1" dev="tmpfs" ino=15616
-scontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:udev_runtime_t:s0 tclass=file permissive=0
-
-avc:  denied  { getattr } for  pid=330 comm="dhcpcd"
-path="/run/udev/data/n1" dev="tmpfs" ino=15616
-scontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:udev_runtime_t:s0 tclass=file permissive=0
-
-avc:  denied  { connectto } for  pid=1600 comm="dhcpcd"
-path="/run/dhcpcd/unpriv.sock"
-scontext=root:sysadm_r:dhcpc_t:s0-s15:c0.c1023
-tcontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023
-tclass=unix_stream_socket permissive=0
-
-avc:  denied  { kill } for  pid=314 comm="dhcpcd" capability=5
-scontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023
-tcontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023 tclass=capability
-permissive=0
-
-avc:  denied  { getattr } for  pid=300 comm="dhcpcd"
-path="net:[4026532008]" dev="nsfs" ino=4026532008
-scontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:nsfs_t:s0 tclass=file permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/sysnetwork.te | 7 ++++++-
- 1 file changed, 6 insertions(+), 1 deletion(-)
-
-diff --git a/policy/modules/system/sysnetwork.te b/policy/modules/system/sysnetwork.te
-index 4c317cc4c..05a9a52b8 100644
---- a/policy/modules/system/sysnetwork.te
-+++ b/policy/modules/system/sysnetwork.te
-@@ -58,10 +58,11 @@ ifdef(`distro_debian',`
- # DHCP client local policy
- #
- allow dhcpc_t self:capability { dac_override fsetid net_admin net_bind_service net_raw setpcap sys_nice sys_resource sys_tty_config };
-+allow dhcpc_t self:capability { setgid setuid sys_chroot kill };
- dontaudit dhcpc_t self:capability { sys_ptrace sys_tty_config };
- # for access("/etc/bashrc", X_OK) on Red Hat
- dontaudit dhcpc_t self:capability { dac_read_search sys_module };
--allow dhcpc_t self:process { getsched getcap setcap setfscreate ptrace signal_perms };
-+allow dhcpc_t self:process { getsched getcap setcap setfscreate ptrace signal_perms setrlimit };
- 
- allow dhcpc_t self:fifo_file rw_fifo_file_perms;
- allow dhcpc_t self:tcp_socket create_stream_socket_perms;
-@@ -69,8 +70,10 @@ allow dhcpc_t self:udp_socket create_socket_perms;
- allow dhcpc_t self:packet_socket create_socket_perms;
- allow dhcpc_t self:netlink_generic_socket create_socket_perms;
- allow dhcpc_t self:netlink_route_socket create_netlink_socket_perms;
-+allow dhcpc_t self:netlink_kobject_uevent_socket create_socket_perms;
- allow dhcpc_t self:rawip_socket create_socket_perms;
- allow dhcpc_t self:unix_dgram_socket { create_socket_perms sendto };
-+allow dhcpc_t self:unix_stream_socket connectto;
- 
- allow dhcpc_t dhcp_etc_t:dir list_dir_perms;
- read_lnk_files_pattern(dhcpc_t, dhcp_etc_t, dhcp_etc_t)
-@@ -146,6 +149,7 @@ files_manage_var_files(dhcpc_t)
- fs_getattr_all_fs(dhcpc_t)
- fs_search_auto_mountpoints(dhcpc_t)
- fs_search_cgroup_dirs(dhcpc_t)
-+fs_read_nsfs_files(dhcpc_t)
- 
- term_dontaudit_use_all_ttys(dhcpc_t)
- term_dontaudit_use_all_ptys(dhcpc_t)
-@@ -181,6 +185,7 @@ ifdef(`init_systemd',`
- 	init_stream_connect(dhcpc_t)
- 	init_get_all_units_status(dhcpc_t)
- 	init_search_units(dhcpc_t)
-+	udev_read_runtime_files(dhcpc_t)
- ')
- 
- optional_policy(`
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0051-policy-modules-system-init-make-init_t-MLS-trusted-f.patch b/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
similarity index 89%
rename from recipes-security/refpolicy/refpolicy/0051-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
rename to recipes-security/refpolicy/refpolicy/0044-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
index b4da47d..9e52b7f 100644
--- a/recipes-security/refpolicy/refpolicy/0051-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
+++ b/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
@@ -1,4 +1,4 @@
-From 7bcc117ea39532427df297299c10ca1d2948a70c Mon Sep 17 00:00:00 2001
+From c47e288e8950e7e92e3c90972ca7ef8ef9fc6a7f Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Fri, 15 Jan 2016 03:47:05 -0500
 Subject: [PATCH] policy/modules/system/init: make init_t MLS trusted for
@@ -27,10 +27,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 4 insertions(+)
 
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index 932d1f7b3..36becaa6e 100644
+index 97a75cf86..fee846cb5 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -219,6 +219,10 @@ mls_process_write_all_levels(init_t)
+@@ -229,6 +229,10 @@ mls_process_write_all_levels(init_t)
  mls_fd_use_all_levels(init_t)
  mls_process_set_level(init_t)
  
@@ -42,5 +42,5 @@ index 932d1f7b3..36becaa6e 100644
  # otherwise the call fails and sysvinit tries to load the policy
  # again when using the initramfs
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-modutils-allow-kmod_t-to-write.patch b/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-modutils-allow-kmod_t-to-write.patch
deleted file mode 100644
index 2f94974..0000000
--- a/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-modutils-allow-kmod_t-to-write.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-From 8343ff97a265836ba1e1e2f4159f888c21e5cabe Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Tue, 9 Feb 2021 17:31:55 +0800
-Subject: [PATCH] policy/modules/system/modutils: allow kmod_t to write keys
-
-Fixes:
-kernel: cfg80211: Problem loading in-kernel X.509 certificate (-13)
-
-avc:  denied  { write } for  pid=219 comm="modprobe"
-scontext=system_u:system_r:kmod_t tcontext=system_u:system_r:kmod_t
-tclass=key permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/modutils.te | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/system/modutils.te b/policy/modules/system/modutils.te
-index 5b4f0aca1..008f286a8 100644
---- a/policy/modules/system/modutils.te
-+++ b/policy/modules/system/modutils.te
-@@ -42,6 +42,7 @@ allow kmod_t self:udp_socket create_socket_perms;
- allow kmod_t self:rawip_socket create_socket_perms;
- 
- allow kmod_t self:lockdown confidentiality;
-+allow kmod_t self:key write;
- 
- # Read module config and dependency information
- list_dirs_pattern(kmod_t, modules_conf_t, modules_conf_t)
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-systemd-make-systemd-tmpfiles_.patch b/recipes-security/refpolicy/refpolicy/0045-policy-modules-system-systemd-make-systemd-tmpfiles_.patch
similarity index 92%
rename from recipes-security/refpolicy/refpolicy/0052-policy-modules-system-systemd-make-systemd-tmpfiles_.patch
rename to recipes-security/refpolicy/refpolicy/0045-policy-modules-system-systemd-make-systemd-tmpfiles_.patch
index 4b768e0..1bfbb16 100644
--- a/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-systemd-make-systemd-tmpfiles_.patch
+++ b/recipes-security/refpolicy/refpolicy/0045-policy-modules-system-systemd-make-systemd-tmpfiles_.patch
@@ -1,4 +1,4 @@
-From d965e6a02854a07c4783cf33e95bf3c7cf9f56f1 Mon Sep 17 00:00:00 2001
+From afd35f6c73551c674e5bfe7cc1832b6a0ea717a6 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Thu, 4 Feb 2016 06:03:19 -0500
 Subject: [PATCH] policy/modules/system/systemd: make systemd-tmpfiles_t domain
@@ -43,10 +43,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 5 insertions(+)
 
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 1a83148c1..736107fad 100644
+index 4a1e06640..b44b9b2d7 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -1483,6 +1483,11 @@ sysnet_relabel_config(systemd_tmpfiles_t)
+@@ -1694,6 +1694,11 @@ sysnet_relabel_config(systemd_tmpfiles_t)
  
  systemd_log_parse_environment(systemd_tmpfiles_t)
  
@@ -59,5 +59,5 @@ index 1a83148c1..736107fad 100644
  userdom_relabel_user_runtime_root_dirs(systemd_tmpfiles_t)
  
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0053-policy-modules-system-systemd-systemd-make-systemd_-.patch b/recipes-security/refpolicy/refpolicy/0046-policy-modules-system-systemd-systemd-make-systemd_-.patch
similarity index 82%
rename from recipes-security/refpolicy/refpolicy/0053-policy-modules-system-systemd-systemd-make-systemd_-.patch
rename to recipes-security/refpolicy/refpolicy/0046-policy-modules-system-systemd-systemd-make-systemd_-.patch
index 60f7dae..800439c 100644
--- a/recipes-security/refpolicy/refpolicy/0053-policy-modules-system-systemd-systemd-make-systemd_-.patch
+++ b/recipes-security/refpolicy/refpolicy/0046-policy-modules-system-systemd-systemd-make-systemd_-.patch
@@ -1,4 +1,4 @@
-From 71986d0c6775408a1c89415dd5d4e7ea03302248 Mon Sep 17 00:00:00 2001
+From 8aa70c13d63e093bff87ea938d35dcc76e5bdd56 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Thu, 18 Jun 2020 09:59:58 +0800
 Subject: [PATCH] policy/modules/system/systemd: systemd-*: make systemd_*_t
@@ -43,12 +43,12 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 12 insertions(+)
 
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 736107fad..8cea6baa1 100644
+index b44b9b2d7..7b717d3ba 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -341,6 +341,9 @@ fs_getattr_tmpfs(systemd_backlight_t)
+@@ -373,6 +373,9 @@ files_search_var_lib(systemd_backlight_t)
+ fs_getattr_all_fs(systemd_backlight_t)
  fs_search_cgroup_dirs(systemd_backlight_t)
- fs_getattr_cgroup(systemd_backlight_t)
  
 +mls_file_read_to_clearance(systemd_backlight_t)
 +mls_file_write_to_clearance(systemd_backlight_t)
@@ -56,9 +56,9 @@ index 736107fad..8cea6baa1 100644
  #######################################
  #
  # Binfmt local policy
-@@ -479,6 +482,9 @@ term_use_unallocated_ttys(systemd_generator_t)
+@@ -528,6 +531,9 @@ term_use_unallocated_ttys(systemd_generator_t)
  
- udev_search_runtime(systemd_generator_t)
+ udev_read_runtime_files(systemd_generator_t)
  
 +mls_file_read_to_clearance(systemd_generator_t)
 +mls_file_write_to_clearance(systemd_generator_t)
@@ -66,19 +66,19 @@ index 736107fad..8cea6baa1 100644
  ifdef(`distro_gentoo',`
  	corecmd_shell_entry_type(systemd_generator_t)
  ')
-@@ -723,6 +729,9 @@ userdom_setattr_user_ttys(systemd_logind_t)
+@@ -922,6 +928,9 @@ userdom_setattr_user_ttys(systemd_logind_t)
  userdom_use_user_ttys(systemd_logind_t)
  domain_read_all_domains_state(systemd_logind_t)
  
-+mls_file_read_to_clearance(systemd_logind_t)
-+mls_file_write_to_clearance(systemd_logind_t)
++mls_file_read_all_levels(systemd_logind_t)
++mls_file_write_all_levels(systemd_logind_t)
 +
  # Needed to work around patch not yet merged into the systemd-logind supported on RHEL 7.x
  # The change in systemd by Nicolas Iooss on 02-Feb-2016 with hash 4b51966cf6c06250036e428608da92f8640beb96
  # should fix the problem where user directories in /run/user/$UID/ are not getting the proper context
-@@ -1204,6 +1213,9 @@ fs_getattr_tmpfs(systemd_rfkill_t)
- fs_search_cgroup_dirs(systemd_rfkill_t)
- fs_getattr_cgroup(systemd_rfkill_t)
+@@ -1412,6 +1421,9 @@ udev_read_runtime_files(systemd_rfkill_t)
+ 
+ systemd_log_parse_environment(systemd_rfkill_t)
  
 +mls_file_read_to_clearance(systemd_rfkill_t)
 +mls_file_write_to_clearance(systemd_rfkill_t)
@@ -87,5 +87,5 @@ index 736107fad..8cea6baa1 100644
  #
  # Resolved local policy
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-logging-add-the-syslogd_t-to-t.patch b/recipes-security/refpolicy/refpolicy/0047-policy-modules-system-logging-add-the-syslogd_t-to-t.patch
similarity index 78%
rename from recipes-security/refpolicy/refpolicy/0054-policy-modules-system-logging-add-the-syslogd_t-to-t.patch
rename to recipes-security/refpolicy/refpolicy/0047-policy-modules-system-logging-add-the-syslogd_t-to-t.patch
index 75be11d..cb3894c 100644
--- a/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-logging-add-the-syslogd_t-to-t.patch
+++ b/recipes-security/refpolicy/refpolicy/0047-policy-modules-system-logging-add-the-syslogd_t-to-t.patch
@@ -1,4 +1,4 @@
-From 511f7fdad45a150f7ea3666eb51463573eabab0a Mon Sep 17 00:00:00 2001
+From 2afa5753f2ef8c7cee5ad0511c521d252bedf3e5 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/system/logging: add the syslogd_t to trusted
@@ -14,18 +14,17 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/system/logging.te | 4 ++++
- 1 file changed, 4 insertions(+)
+ policy/modules/system/logging.te | 3 +++
+ 1 file changed, 3 insertions(+)
 
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 5b4b5ec5d..e67c25a9e 100644
+index d3b06db7d..f63965d4d 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -498,6 +498,10 @@ fs_search_auto_mountpoints(syslogd_t)
- fs_search_tmpfs(syslogd_t)
+@@ -505,6 +505,9 @@ fs_getattr_all_fs(syslogd_t)
+ fs_search_auto_mountpoints(syslogd_t)
  
  mls_file_write_all_levels(syslogd_t) # Need to be able to write to /var/run/ and /var/log directories
-+mls_file_read_all_levels(syslogd_t)
 +mls_socket_write_all_levels(syslogd_t) # Need to be able to sendto dgram
 +mls_trusted_object(syslogd_t) # Other process need to have the right to connectto/sendto /dev/log
 +mls_fd_use_all_levels(syslogd_t)
@@ -33,5 +32,5 @@ index 5b4b5ec5d..e67c25a9e 100644
  term_write_console(syslogd_t)
  # Allow syslog to a terminal
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-init-make-init_t-MLS-trusted-f.patch b/recipes-security/refpolicy/refpolicy/0048-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
similarity index 85%
rename from recipes-security/refpolicy/refpolicy/0055-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
rename to recipes-security/refpolicy/refpolicy/0048-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
index 5c01ef4..16f0e4e 100644
--- a/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
+++ b/recipes-security/refpolicy/refpolicy/0048-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
@@ -1,4 +1,4 @@
-From 3f875fae6d9a4538b3e7d33f30dd2a98fc9ea2bd Mon Sep 17 00:00:00 2001
+From f87bb3cb0843af69f9aecaef0a4052e04b15a630 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 28 May 2019 16:41:37 +0800
 Subject: [PATCH] policy/modules/system/init: make init_t MLS trusted for
@@ -17,10 +17,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index 36becaa6e..9c0a98eb7 100644
+index fee846cb5..df7f87f17 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -218,6 +218,7 @@ mls_file_write_all_levels(init_t)
+@@ -228,6 +228,7 @@ mls_file_write_all_levels(init_t)
  mls_process_write_all_levels(init_t)
  mls_fd_use_all_levels(init_t)
  mls_process_set_level(init_t)
@@ -29,5 +29,5 @@ index 36becaa6e..9c0a98eb7 100644
  # MLS trusted for lowering/raising the level of files
  mls_file_downgrade(init_t)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0056-policy-modules-system-init-all-init_t-to-read-any-le.patch b/recipes-security/refpolicy/refpolicy/0049-policy-modules-system-init-all-init_t-to-read-any-le.patch
similarity index 88%
rename from recipes-security/refpolicy/refpolicy/0056-policy-modules-system-init-all-init_t-to-read-any-le.patch
rename to recipes-security/refpolicy/refpolicy/0049-policy-modules-system-init-all-init_t-to-read-any-le.patch
index d3ddcd2..fb56eca 100644
--- a/recipes-security/refpolicy/refpolicy/0056-policy-modules-system-init-all-init_t-to-read-any-le.patch
+++ b/recipes-security/refpolicy/refpolicy/0049-policy-modules-system-init-all-init_t-to-read-any-le.patch
@@ -1,4 +1,4 @@
-From a59dae035b7d5063e0f25c4cf40b5b180ad69022 Mon Sep 17 00:00:00 2001
+From f3c0f18b647631fd2ffc1e86c9e3f51cbf74d60f Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Wed, 3 Feb 2016 04:16:06 -0500
 Subject: [PATCH] policy/modules/system/init: all init_t to read any level
@@ -22,10 +22,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 3 insertions(+)
 
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index 9c0a98eb7..5a19f0e43 100644
+index df7f87f17..671b5aef3 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -224,6 +224,9 @@ mls_key_write_all_levels(init_t)
+@@ -234,6 +234,9 @@ mls_key_write_all_levels(init_t)
  mls_file_downgrade(init_t)
  mls_file_upgrade(init_t)
  
@@ -36,5 +36,5 @@ index 9c0a98eb7..5a19f0e43 100644
  # otherwise the call fails and sysvinit tries to load the policy
  # again when using the initramfs
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0057-policy-modules-system-logging-allow-auditd_t-to-writ.patch b/recipes-security/refpolicy/refpolicy/0050-policy-modules-system-logging-allow-auditd_t-to-writ.patch
similarity index 87%
rename from recipes-security/refpolicy/refpolicy/0057-policy-modules-system-logging-allow-auditd_t-to-writ.patch
rename to recipes-security/refpolicy/refpolicy/0050-policy-modules-system-logging-allow-auditd_t-to-writ.patch
index 47328be..aa02eb1 100644
--- a/recipes-security/refpolicy/refpolicy/0057-policy-modules-system-logging-allow-auditd_t-to-writ.patch
+++ b/recipes-security/refpolicy/refpolicy/0050-policy-modules-system-logging-allow-auditd_t-to-writ.patch
@@ -1,4 +1,4 @@
-From 96437ba860d352304246fbe3381030da0665f239 Mon Sep 17 00:00:00 2001
+From cb7a4ff6081f19d05b109512275ec9a537f2f6d2 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Thu, 25 Feb 2016 04:25:08 -0500
 Subject: [PATCH] policy/modules/system/logging: allow auditd_t to write socket
@@ -22,10 +22,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index e67c25a9e..f8d8b73f0 100644
+index f63965d4d..7e41596f4 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -215,6 +215,8 @@ miscfiles_read_localization(auditd_t)
+@@ -223,6 +223,8 @@ miscfiles_read_localization(auditd_t)
  
  mls_file_read_all_levels(auditd_t)
  mls_file_write_all_levels(auditd_t) # Need to be able to write to /var/run/ directory
@@ -35,5 +35,5 @@ index e67c25a9e..f8d8b73f0 100644
  seutil_dontaudit_read_config(auditd_t)
  
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0058-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch b/recipes-security/refpolicy/refpolicy/0051-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
similarity index 83%
rename from recipes-security/refpolicy/refpolicy/0058-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
rename to recipes-security/refpolicy/refpolicy/0051-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
index ad92c7f..16bdf84 100644
--- a/recipes-security/refpolicy/refpolicy/0058-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
+++ b/recipes-security/refpolicy/refpolicy/0051-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
@@ -1,4 +1,4 @@
-From 102255e89863c5a31d0d6c8df67b258d819b9a68 Mon Sep 17 00:00:00 2001
+From 023e7b92a805103c54aec06bbd9465e4fbf7a6f2 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Thu, 31 Oct 2019 17:35:59 +0800
 Subject: [PATCH] policy/modules/kernel/kernel: make kernel_t MLS trusted for
@@ -15,10 +15,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kernel.te
-index 1c53754ee..2031576e0 100644
+index 40cd52825..d08610543 100644
 --- a/policy/modules/kernel/kernel.te
 +++ b/policy/modules/kernel/kernel.te
-@@ -360,6 +360,7 @@ mls_socket_write_all_levels(kernel_t)
+@@ -372,6 +372,7 @@ mls_socket_write_all_levels(kernel_t)
  mls_fd_use_all_levels(kernel_t)
  # https://bugzilla.redhat.com/show_bug.cgi?id=667370
  mls_file_downgrade(kernel_t)
@@ -27,5 +27,5 @@ index 1c53754ee..2031576e0 100644
  ifdef(`distro_redhat',`
  	# Bugzilla 222337
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0059-policy-modules-system-setrans-allow-setrans_t-use-fd.patch b/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-setrans-allow-setrans_t-use-fd.patch
similarity index 83%
rename from recipes-security/refpolicy/refpolicy/0059-policy-modules-system-setrans-allow-setrans_t-use-fd.patch
rename to recipes-security/refpolicy/refpolicy/0052-policy-modules-system-setrans-allow-setrans_t-use-fd.patch
index 96d0588..b916084 100644
--- a/recipes-security/refpolicy/refpolicy/0059-policy-modules-system-setrans-allow-setrans_t-use-fd.patch
+++ b/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-setrans-allow-setrans_t-use-fd.patch
@@ -1,4 +1,4 @@
-From 5fa9e03a3b90f97e573a7724cd9d49b53730d083 Mon Sep 17 00:00:00 2001
+From 55fe90eba640e6d52bb269176f45a3a5e2c3ed80 Mon Sep 17 00:00:00 2001
 From: Roy Li <rongqing.li@windriver.com>
 Date: Sat, 22 Feb 2014 13:35:38 +0800
 Subject: [PATCH] policy/modules/system/setrans: allow setrans_t use fd at any
@@ -13,10 +13,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/system/setrans.te b/policy/modules/system/setrans.te
-index 25aadfc5f..564e2d4d1 100644
+index 12e66aad9..5510f7fac 100644
 --- a/policy/modules/system/setrans.te
 +++ b/policy/modules/system/setrans.te
-@@ -73,6 +73,8 @@ mls_net_receive_all_levels(setrans_t)
+@@ -69,6 +69,8 @@ mls_net_receive_all_levels(setrans_t)
  mls_socket_write_all_levels(setrans_t)
  mls_process_read_all_levels(setrans_t)
  mls_socket_read_all_levels(setrans_t)
@@ -26,5 +26,5 @@ index 25aadfc5f..564e2d4d1 100644
  selinux_compute_access_vector(setrans_t)
  
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0060-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch b/recipes-security/refpolicy/refpolicy/0053-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch
similarity index 88%
rename from recipes-security/refpolicy/refpolicy/0060-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch
rename to recipes-security/refpolicy/refpolicy/0053-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch
index 8bfe607..c4dc87b 100644
--- a/recipes-security/refpolicy/refpolicy/0060-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch
+++ b/recipes-security/refpolicy/refpolicy/0053-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch
@@ -1,4 +1,4 @@
-From fe70aaf9a104b4b0c3439d2767eccb0136951f08 Mon Sep 17 00:00:00 2001
+From c9afe0dc30f51f7ad7b93b8878c88df1146272a0 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Mon, 22 Feb 2021 11:28:12 +0800
 Subject: [PATCH] policy/modules/system/systemd: make *_systemd_t MLS trusted
@@ -24,10 +24,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 3 insertions(+)
 
 diff --git a/policy/modules/system/systemd.if b/policy/modules/system/systemd.if
-index 5c44d8d8a..5f2038f22 100644
+index 325ca548b..b23b9bb0a 100644
 --- a/policy/modules/system/systemd.if
 +++ b/policy/modules/system/systemd.if
-@@ -171,6 +171,9 @@ template(`systemd_role_template',`
+@@ -196,6 +196,9 @@ template(`systemd_role_template',`
  		xdg_read_config_files($1_systemd_t)
  		xdg_read_data_files($1_systemd_t)
  	')
@@ -38,5 +38,5 @@ index 5c44d8d8a..5f2038f22 100644
  
  ######################################
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0061-policy-modules-system-logging-make-syslogd_runtime_t.patch b/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-logging-make-syslogd_runtime_t.patch
similarity index 84%
rename from recipes-security/refpolicy/refpolicy/0061-policy-modules-system-logging-make-syslogd_runtime_t.patch
rename to recipes-security/refpolicy/refpolicy/0054-policy-modules-system-logging-make-syslogd_runtime_t.patch
index 7bdc9d6..ab87039 100644
--- a/recipes-security/refpolicy/refpolicy/0061-policy-modules-system-logging-make-syslogd_runtime_t.patch
+++ b/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-logging-make-syslogd_runtime_t.patch
@@ -1,4 +1,4 @@
-From f8a12b28b70689ab520e7ae94d306afe9dcbb556 Mon Sep 17 00:00:00 2001
+From 7a65c9f3636b43f3a29349ea1c045d5281efa5aa Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Sat, 18 Dec 2021 17:31:45 +0800
 Subject: [PATCH] policy/modules/system/logging: make syslogd_runtime_t MLS
@@ -23,7 +23,7 @@ dev="tmpfs" ino=9854 scontext=system_u:system_r:rpcd_t:s0-s15:c0.c1023
 tcontext=system_u:object_r:syslogd_var_run_t:s15:c0.c1023 tclass=dir
 permissive=0
 
-Upstream-Status: Pending
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
@@ -31,18 +31,18 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index f8d8b73f0..badf56f16 100644
+index 7e41596f4..0c25457d6 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -438,6 +438,8 @@ allow syslogd_t syslogd_runtime_t:file map;
+@@ -447,6 +447,8 @@ allow syslogd_t syslogd_runtime_t:file map;
  manage_files_pattern(syslogd_t, syslogd_runtime_t, syslogd_runtime_t)
  files_runtime_filetrans(syslogd_t, syslogd_runtime_t, file)
  
 +mls_trusted_object(syslogd_runtime_t)
 +
- kernel_read_crypto_sysctls(syslogd_t)
  kernel_read_system_state(syslogd_t)
  kernel_read_network_state(syslogd_t)
+ kernel_read_kernel_sysctls(syslogd_t)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0062-systemd-systemd-resolved-is-linked-to-libselinux.patch b/recipes-security/refpolicy/refpolicy/0062-systemd-systemd-resolved-is-linked-to-libselinux.patch
deleted file mode 100644
index e0db7d3..0000000
--- a/recipes-security/refpolicy/refpolicy/0062-systemd-systemd-resolved-is-linked-to-libselinux.patch
+++ /dev/null
@@ -1,33 +0,0 @@
-From 52a4222397f5d3b28ca15a45bb2ace209a4afc3e Mon Sep 17 00:00:00 2001
-From: Kenton Groombridge <me@concord.sh>
-Date: Thu, 31 Mar 2022 13:09:10 -0400
-Subject: [PATCH] systemd: systemd-resolved is linked to libselinux
-
-systemd-resolved as of systemd 250 fails to start with this error:
-
-Failed to initialize SELinux labeling handle: No such file or directory
-
-Upstream-Status: Backport
-[https://github.com/SELinuxProject/refpolicy/commit/3a22db2410de479e5baa88f3f668a7a4ac198950]
-
-Signed-off-by: Kenton Groombridge <me@concord.sh>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/systemd.te | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 8cea6baa1..beb301cc6 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -1261,6 +1261,7 @@ fs_getattr_cgroup(systemd_resolved_t)
- 
- init_dgram_send(systemd_resolved_t)
- 
-+seutil_libselinux_linked(systemd_resolved_t)
- seutil_read_file_contexts(systemd_resolved_t)
- 
- systemd_log_parse_environment(systemd_resolved_t)
--- 
-2.25.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0063-sysnetwork-systemd-allow-DNS-resolution-over-io.syst.patch b/recipes-security/refpolicy/refpolicy/0063-sysnetwork-systemd-allow-DNS-resolution-over-io.syst.patch
deleted file mode 100644
index 63da7cd..0000000
--- a/recipes-security/refpolicy/refpolicy/0063-sysnetwork-systemd-allow-DNS-resolution-over-io.syst.patch
+++ /dev/null
@@ -1,63 +0,0 @@
-From 1ba0911e157c64ea15636c5707f38f1bdc9a46c8 Mon Sep 17 00:00:00 2001
-From: Kenton Groombridge <me@concord.sh>
-Date: Wed, 27 Apr 2022 01:09:52 -0400
-Subject: [PATCH] sysnetwork, systemd: allow DNS resolution over
- io.systemd.Resolve
-
-Upstream-Status: Backport
-[https://github.com/SELinuxProject/refpolicy/commit/1a0acc9c0d8c7c49ad4ca2cabd44bc66450f45e0]
-
-Signed-off-by: Kenton Groombridge <me@concord.sh>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/sysnetwork.if |  1 +
- policy/modules/system/systemd.if    | 21 +++++++++++++++++++++
- 2 files changed, 22 insertions(+)
-
-diff --git a/policy/modules/system/sysnetwork.if b/policy/modules/system/sysnetwork.if
-index 8664a67c8..140d48508 100644
---- a/policy/modules/system/sysnetwork.if
-+++ b/policy/modules/system/sysnetwork.if
-@@ -844,6 +844,7 @@ interface(`sysnet_dns_name_resolve',`
- 	ifdef(`init_systemd',`
- 		optional_policy(`
- 			systemd_dbus_chat_resolved($1)
-+			systemd_stream_connect_resolved($1)
- 		')
- 		# This seems needed when the mymachines NSS module is used
- 		optional_policy(`
-diff --git a/policy/modules/system/systemd.if b/policy/modules/system/systemd.if
-index 5f2038f22..9143fb4c0 100644
---- a/policy/modules/system/systemd.if
-+++ b/policy/modules/system/systemd.if
-@@ -1835,6 +1835,27 @@ interface(`systemd_tmpfilesd_managed',`
- 	')
- ')
- 
-+#######################################
-+## <summary>
-+##	Connect to systemd resolved over
-+##	/run/systemd/resolve/io.systemd.Resolve .
-+## </summary>
-+## <param name="domain">
-+##	<summary>
-+##	Domain allowed access.
-+##	</summary>
-+## </param>
-+#
-+interface(`systemd_stream_connect_resolved',`
-+	gen_require(`
-+		type systemd_resolved_t;
-+		type systemd_resolved_runtime_t;
-+	')
-+
-+	files_search_runtime($1)
-+	stream_connect_pattern($1, systemd_resolved_runtime_t, systemd_resolved_runtime_t, systemd_resolved_t)
-+')
-+
- ########################################
- ## <summary>
- ##   Send and receive messages from
--- 
-2.25.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0064-term-init-allow-systemd-to-watch-and-watch-reads-on-.patch b/recipes-security/refpolicy/refpolicy/0064-term-init-allow-systemd-to-watch-and-watch-reads-on-.patch
deleted file mode 100644
index 88f070d..0000000
--- a/recipes-security/refpolicy/refpolicy/0064-term-init-allow-systemd-to-watch-and-watch-reads-on-.patch
+++ /dev/null
@@ -1,94 +0,0 @@
-From 50670946f04257cc2110facbc61884e2cf0d8327 Mon Sep 17 00:00:00 2001
-From: Kenton Groombridge <me@concord.sh>
-Date: Fri, 6 May 2022 21:16:29 -0400
-Subject: [PATCH] term, init: allow systemd to watch and watch reads on
- unallocated ttys
-
-As of systemd 250, systemd needs to be able to add a watch on and watch
-reads on unallocated ttys in order to start getty.
-
-systemd[55548]: getty@tty1.service: Failed to set up standard input: Permission denied
-systemd[55548]: getty@tty1.service: Failed at step STDIN spawning /sbin/agetty: Permission denied
-
-time->Fri May  6 21:17:58 2022
-type=PROCTITLE msg=audit(1651886278.452:1770): proctitle="(agetty)"
-type=PATH msg=audit(1651886278.452:1770): item=0 name="/dev/tty1" inode=18 dev=00:05 mode=020620 ouid=0 ogid=5 rdev=04:01 obj=system_u:object_r:tty_device_t:s0 nametype=NORMAL cap_fp=0 cap_fi=0 cap_fe=0 cap_fver=0 cap_frootid=0
-type=CWD msg=audit(1651886278.452:1770): cwd="/"
-type=SYSCALL msg=audit(1651886278.452:1770): arch=c000003e syscall=254 success=no exit=-13 a0=3 a1=60ba5c21e020 a2=18 a3=23 items=1 ppid=1 pid=55551 auid=4294967295 uid=0 gid=0 euid=0 suid=0 fsuid=0 egid=0 sgid=0 fsgid=0 tty=(none) ses=4294967295 comm="(agetty)" exe="/lib/systemd/systemd" subj=system_u:system_r:init_t:s0 key=(null)
-type=AVC msg=audit(1651886278.452:1770): avc:  denied  { watch watch_reads } for  pid=55551 comm="(agetty)" path="/dev/tty1" dev="devtmpfs" ino=18 scontext=system_u:system_r:init_t:s0 tcontext=system_u:object_r:tty_device_t:s0 tclass=chr_file permissive=0
-
-Upstream-Status: Backport
-[https://github.com/SELinuxProject/refpolicy/commit/308ab9f69a4623f5dace8da151e70c6316f055a8]
-
-Signed-off-by: Kenton Groombridge <me@concord.sh>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/kernel/terminal.if | 38 +++++++++++++++++++++++++++++++
- policy/modules/system/init.te     |  2 ++
- 2 files changed, 40 insertions(+)
-
-diff --git a/policy/modules/kernel/terminal.if b/policy/modules/kernel/terminal.if
-index e8c0735eb..6e9f654ac 100644
---- a/policy/modules/kernel/terminal.if
-+++ b/policy/modules/kernel/terminal.if
-@@ -1287,6 +1287,44 @@ interface(`term_dontaudit_use_unallocated_ttys',`
- 	dontaudit $1 tty_device_t:chr_file rw_chr_file_perms;
- ')
- 
-+########################################
-+## <summary>
-+##	Watch unallocated ttys.
-+## </summary>
-+## <param name="domain">
-+##	<summary>
-+##	Domain allowed access.
-+##	</summary>
-+## </param>
-+#
-+interface(`term_watch_unallocated_ttys',`
-+	gen_require(`
-+		type tty_device_t;
-+	')
-+
-+	dev_list_all_dev_nodes($1)
-+	allow $1 tty_device_t:chr_file watch;
-+')
-+
-+########################################
-+## <summary>
-+##	Watch reads on unallocated ttys.
-+## </summary>
-+## <param name="domain">
-+##	<summary>
-+##	Domain allowed access.
-+##	</summary>
-+## </param>
-+#
-+interface(`term_watch_reads_unallocated_ttys',`
-+	gen_require(`
-+		type tty_device_t;
-+	')
-+
-+	dev_list_all_dev_nodes($1)
-+	allow $1 tty_device_t:chr_file watch_reads;
-+')
-+
- ########################################
- ## <summary>
- ##	Get the attributes of all tty device nodes.
-diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index 5a19f0e43..24cef0924 100644
---- a/policy/modules/system/init.te
-+++ b/policy/modules/system/init.te
-@@ -518,6 +518,8 @@ ifdef(`init_systemd',`
- 	term_create_devpts_dirs(init_t)
- 	term_create_ptmx(init_t)
- 	term_create_controlling_term(init_t)
-+	term_watch_unallocated_ttys(init_t)
-+	term_watch_reads_unallocated_ttys(init_t)
- 
- 	# udevd is a "systemd kobject uevent socket activated daemon"
- 	udev_create_kobject_uevent_sockets(init_t)
--- 
-2.25.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0065-systemd-add-file-transition-for-systemd-networkd-run.patch b/recipes-security/refpolicy/refpolicy/0065-systemd-add-file-transition-for-systemd-networkd-run.patch
deleted file mode 100644
index 1029490..0000000
--- a/recipes-security/refpolicy/refpolicy/0065-systemd-add-file-transition-for-systemd-networkd-run.patch
+++ /dev/null
@@ -1,32 +0,0 @@
-From 6f8a8ecd8bafd6e8a3515b53db2a2982a02ff254 Mon Sep 17 00:00:00 2001
-From: Kenton Groombridge <me@concord.sh>
-Date: Thu, 31 Mar 2022 13:22:37 -0400
-Subject: [PATCH] systemd: add file transition for systemd-networkd runtime
-
-systemd-networkd creates the /run/systemd/network directory which should
-be labeled appropriately.
-
-Upstream-Status: Backport
-[https://github.com/SELinuxProject/refpolicy/commit/663b62f27cb12c22f056eba9326cf3f7f78d8a9e]
-
-Signed-off-by: Kenton Groombridge <me@concord.sh>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/systemd.te | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index beb301cc6..654c6a42a 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -917,6 +917,7 @@ auth_use_nsswitch(systemd_networkd_t)
- 
- init_dgram_send(systemd_networkd_t)
- init_read_state(systemd_networkd_t)
-+init_runtime_filetrans(systemd_networkd_t, systemd_networkd_runtime_t, dir)
- 
- logging_send_syslog_msg(systemd_networkd_t)
- 
--- 
-2.25.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0066-systemd-add-missing-file-context-for-run-systemd-net.patch b/recipes-security/refpolicy/refpolicy/0066-systemd-add-missing-file-context-for-run-systemd-net.patch
deleted file mode 100644
index f84eb4a..0000000
--- a/recipes-security/refpolicy/refpolicy/0066-systemd-add-missing-file-context-for-run-systemd-net.patch
+++ /dev/null
@@ -1,29 +0,0 @@
-From 2e3f371b59bee343c42e4c69495df0f3719b6e24 Mon Sep 17 00:00:00 2001
-From: Kenton Groombridge <me@concord.sh>
-Date: Sat, 2 Apr 2022 15:44:01 -0400
-Subject: [PATCH] systemd: add missing file context for /run/systemd/network
-
-Upstream-Status: Backport
-[https://github.com/SELinuxProject/refpolicy/commit/f2fe1ae15485da7b6269b7d0d7dbed9a834f1876]
-
-Signed-off-by: Kenton Groombridge <me@concord.sh>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/systemd.fc | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/system/systemd.fc b/policy/modules/system/systemd.fc
-index 34db8c034..d21914227 100644
---- a/policy/modules/system/systemd.fc
-+++ b/policy/modules/system/systemd.fc
-@@ -85,6 +85,7 @@ HOME_DIR/\.local/share/systemd(/.*)?		gen_context(system_u:object_r:systemd_data
- 
- /run/systemd/ask-password(/.*)?	gen_context(system_u:object_r:systemd_passwd_runtime_t,s0)
- /run/systemd/ask-password-block(/.*)?	gen_context(system_u:object_r:systemd_passwd_runtime_t,s0)
-+/run/systemd/network(/.*)?  gen_context(system_u:object_r:systemd_networkd_runtime_t,s0)
- /run/systemd/resolve(/.*)?  gen_context(system_u:object_r:systemd_resolved_runtime_t,s0)
- /run/systemd/seats(/.*)?	gen_context(system_u:object_r:systemd_sessions_runtime_t,s0)
- /run/systemd/sessions(/.*)?	gen_context(system_u:object_r:systemd_sessions_runtime_t,s0)
--- 
-2.25.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0067-systemd-add-file-contexts-for-systemd-network-genera.patch b/recipes-security/refpolicy/refpolicy/0067-systemd-add-file-contexts-for-systemd-network-genera.patch
deleted file mode 100644
index 0aaf096..0000000
--- a/recipes-security/refpolicy/refpolicy/0067-systemd-add-file-contexts-for-systemd-network-genera.patch
+++ /dev/null
@@ -1,38 +0,0 @@
-From 143d339b2e6611c56cd0210279757ebee9632731 Mon Sep 17 00:00:00 2001
-From: Kenton Groombridge <me@concord.sh>
-Date: Thu, 19 May 2022 11:42:51 -0400
-Subject: [PATCH] systemd: add file contexts for systemd-network-generator
-
-Upstream-Status: Backport
-[https://github.com/SELinuxProject/refpolicy/commit/73adba0a39b7409bc4bbfa0e962108c2b1e5f2a5]
-
-Thanks-To: Zhao Yi
-Signed-off-by: Kenton Groombridge <me@concord.sh>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/systemd.fc | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/system/systemd.fc b/policy/modules/system/systemd.fc
-index d21914227..1a35bd65c 100644
---- a/policy/modules/system/systemd.fc
-+++ b/policy/modules/system/systemd.fc
-@@ -35,6 +35,7 @@
- /usr/lib/systemd/systemd-machined	--	gen_context(system_u:object_r:systemd_machined_exec_t,s0)
- /usr/lib/systemd/systemd-modules-load	--	gen_context(system_u:object_r:systemd_modules_load_exec_t,s0)
- /usr/lib/systemd/systemd-networkd	--	gen_context(system_u:object_r:systemd_networkd_exec_t,s0)
-+/usr/lib/systemd/systemd-network-generator	--	gen_context(system_u:object_r:systemd_networkd_exec_t,s0)
- /usr/lib/systemd/systemd-pstore		--	gen_context(system_u:object_r:systemd_pstore_exec_t,s0)
- /usr/lib/systemd/systemd-resolved	--	gen_context(system_u:object_r:systemd_resolved_exec_t,s0)
- /usr/lib/systemd/systemd-rfkill		--	gen_context(system_u:object_r:systemd_rfkill_exec_t,s0)
-@@ -60,6 +61,7 @@ HOME_DIR/\.local/share/systemd(/.*)?		gen_context(system_u:object_r:systemd_data
- /usr/lib/systemd/system/systemd-backlight.*	--	gen_context(system_u:object_r:systemd_backlight_unit_t,s0)
- /usr/lib/systemd/system/systemd-binfmt.*	--	gen_context(system_u:object_r:systemd_binfmt_unit_t,s0)
- /usr/lib/systemd/system/systemd-networkd.*		gen_context(system_u:object_r:systemd_networkd_unit_t,s0)
-+/usr/lib/systemd/system/systemd-network-generator.*		gen_context(system_u:object_r:systemd_networkd_unit_t,s0)
- /usr/lib/systemd/system/systemd-rfkill.*	--	gen_context(system_u:object_r:systemd_rfkill_unit_t,s0)
- /usr/lib/systemd/system/systemd-socket-proxyd\.service	--	gen_context(system_u:object_r:systemd_socket_proxyd_unit_file_t,s0)
- 
--- 
-2.25.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0068-systemd-udev-allow-udev-to-read-systemd-networkd-run.patch b/recipes-security/refpolicy/refpolicy/0068-systemd-udev-allow-udev-to-read-systemd-networkd-run.patch
deleted file mode 100644
index 259863c..0000000
--- a/recipes-security/refpolicy/refpolicy/0068-systemd-udev-allow-udev-to-read-systemd-networkd-run.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-From 6508bc8a3440525384fcfcd8ad55a4cd5c79b912 Mon Sep 17 00:00:00 2001
-From: Kenton Groombridge <me@concord.sh>
-Date: Thu, 19 May 2022 11:43:44 -0400
-Subject: [PATCH] systemd, udev: allow udev to read systemd-networkd runtime
-
-udev searches for .link files and applies custom udev rules to devices
-as they come up.
-
-Upstream-Status: Backport
-[https://github.com/SELinuxProject/refpolicy/commit/998ef975f38c70d57e7220b88ae5e62c88ebb770]
-
-Thanks-To: Zhao Yi
-Signed-off-by: Kenton Groombridge <me@concord.sh>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/udev.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/system/udev.te b/policy/modules/system/udev.te
-index 4c5a690fb..8e243c0f2 100644
---- a/policy/modules/system/udev.te
-+++ b/policy/modules/system/udev.te
-@@ -270,6 +270,8 @@ ifdef(`init_systemd',`
- 	systemd_read_hwdb(udev_t)
- 	systemd_read_logind_sessions_files(udev_t)
- 	systemd_read_logind_runtime_files(udev_t)
-+	# udev searches for .link files and applies custom udev rules
-+	systemd_read_networkd_runtime(udev_t)
- 
- 	optional_policy(`
- 		init_dbus_chat(udev_t)
--- 
-2.25.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0069-fc-fstools-apply-policy-to-findfs-alternative.patch b/recipes-security/refpolicy/refpolicy/0069-fc-fstools-apply-policy-to-findfs-alternative.patch
deleted file mode 100644
index 6535a4b..0000000
--- a/recipes-security/refpolicy/refpolicy/0069-fc-fstools-apply-policy-to-findfs-alternative.patch
+++ /dev/null
@@ -1,29 +0,0 @@
-From 3e3ec39659ae068d20efbb5f13054d90960c3c3f Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Thu, 19 May 2022 16:51:49 +0800
-Subject: [PATCH] fc/fstools: apply policy to findfs alternative
-
-Add file context for findfs alternative which is provided by util-linux.
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/fstools.fc | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/system/fstools.fc b/policy/modules/system/fstools.fc
-index bef711850..91be0ef3d 100644
---- a/policy/modules/system/fstools.fc
-+++ b/policy/modules/system/fstools.fc
-@@ -77,6 +77,7 @@
- /usr/sbin/fdisk			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/fdisk\.util-linux			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/findfs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/sbin/findfs\.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/fsck.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/gdisk			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/hdparm		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
--- 
-2.25.1
-
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index bb0c0dd..a51312f 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -7,10 +7,10 @@ PROVIDES = "virtual/refpolicy"
 RPROVIDES:${PN} = "refpolicy"
 
 # Specific config files for Poky
-SRC_URI += "file://customizable_types  \
-	    file://setrans-mls.conf  \
-	    file://setrans-mcs.conf  \
-	   "
+SRC_URI += "file://customizable_types \
+            file://setrans-mls.conf \
+            file://setrans-mcs.conf \
+           "
 
 # Base patches applied to all Yocto-based platforms.  Your own version of
 # refpolicy should provide a version of these and place them in your own
@@ -49,64 +49,49 @@ SRC_URI += " \
         file://0031-policy-modules-kernel-files-add-rules-for-the-symlin.patch \
         file://0032-policy-modules-system-logging-fix-auditd-startup-fai.patch \
         file://0033-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch \
-        file://0034-policy-modules-system-modutils-allow-mod_t-to-access.patch \
-        file://0035-policy-modules-system-getty-allow-getty_t-to-search-.patch \
-        file://0036-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch \
-        file://0037-policy-modules-admin-usermanage-allow-useradd-to-rel.patch \
-        file://0038-policy-modules-system-systemd-enable-support-for-sys.patch \
-        file://0039-policy-modules-system-systemd-fix-systemd-resolved-s.patch \
-        file://0040-policy-modules-system-systemd-allow-systemd_-_t-to-g.patch \
-        file://0041-policy-modules-system-logging-fix-syslogd-failures-f.patch \
-        file://0042-policy-modules-system-systemd-systemd-user-fixes.patch \
-        file://0043-policy-modules-system-sysnetwork-support-priviledge-.patch \
-        file://0044-policy-modules-system-modutils-allow-kmod_t-to-write.patch \
-        file://0045-policy-modules-system-systemd-allow-systemd_logind_t.patch \
-        file://0046-policy-modules-system-mount-make-mount_t-domain-MLS-.patch \
-        file://0047-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch \
-        file://0048-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch \
-        file://0049-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch \
-        file://0050-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch \
-        file://0051-policy-modules-system-init-make-init_t-MLS-trusted-f.patch \
-        file://0052-policy-modules-system-systemd-make-systemd-tmpfiles_.patch \
-        file://0053-policy-modules-system-systemd-systemd-make-systemd_-.patch \
-        file://0054-policy-modules-system-logging-add-the-syslogd_t-to-t.patch \
-        file://0055-policy-modules-system-init-make-init_t-MLS-trusted-f.patch \
-        file://0056-policy-modules-system-init-all-init_t-to-read-any-le.patch \
-        file://0057-policy-modules-system-logging-allow-auditd_t-to-writ.patch \
-        file://0058-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch \
-        file://0059-policy-modules-system-setrans-allow-setrans_t-use-fd.patch \
-        file://0060-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch \
-        file://0061-policy-modules-system-logging-make-syslogd_runtime_t.patch \
-        file://0062-systemd-systemd-resolved-is-linked-to-libselinux.patch \
-        file://0063-sysnetwork-systemd-allow-DNS-resolution-over-io.syst.patch \
-        file://0064-term-init-allow-systemd-to-watch-and-watch-reads-on-.patch \
-        file://0065-systemd-add-file-transition-for-systemd-networkd-run.patch \
-        file://0066-systemd-add-missing-file-context-for-run-systemd-net.patch \
-        file://0067-systemd-add-file-contexts-for-systemd-network-genera.patch \
-        file://0068-systemd-udev-allow-udev-to-read-systemd-networkd-run.patch \
-        file://0069-fc-fstools-apply-policy-to-findfs-alternative.patch \
+        file://0034-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch \
+        file://0035-policy-modules-system-systemd-enable-support-for-sys.patch \
+        file://0036-policy-modules-system-systemd-allow-systemd_logind_t.patch \
+        file://0037-policy-modules-roles-sysadm-allow-sysadm-to-use-init.patch \
+        file://0038-policy-modules-system-systemd-systemd-user-fixes.patch \
+        file://0039-policy-modules-system-mount-make-mount_t-domain-MLS-.patch \
+        file://0040-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch \
+        file://0041-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch \
+        file://0042-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch \
+        file://0043-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch \
+        file://0044-policy-modules-system-init-make-init_t-MLS-trusted-f.patch \
+        file://0045-policy-modules-system-systemd-make-systemd-tmpfiles_.patch \
+        file://0046-policy-modules-system-systemd-systemd-make-systemd_-.patch \
+        file://0047-policy-modules-system-logging-add-the-syslogd_t-to-t.patch \
+        file://0048-policy-modules-system-init-make-init_t-MLS-trusted-f.patch \
+        file://0049-policy-modules-system-init-all-init_t-to-read-any-le.patch \
+        file://0050-policy-modules-system-logging-allow-auditd_t-to-writ.patch \
+        file://0051-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch \
+        file://0052-policy-modules-system-setrans-allow-setrans_t-use-fd.patch \
+        file://0053-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch \
+        file://0054-policy-modules-system-logging-make-syslogd_runtime_t.patch \
         "
 
 S = "${WORKDIR}/refpolicy"
 
-CONFFILES:${PN} += "${sysconfdir}/selinux/config"
+CONFFILES:${PN} = "${sysconfdir}/selinux/config"
 FILES:${PN} += " \
-	${sysconfdir}/selinux/${POLICY_NAME}/ \
-	${datadir}/selinux/${POLICY_NAME}/*.pp \
-	${localstatedir}/lib/selinux/${POLICY_NAME}/ \
-	"
+    ${sysconfdir}/selinux/${POLICY_NAME}/ \
+    ${datadir}/selinux/${POLICY_NAME}/*.pp \
+    ${localstatedir}/lib/selinux/${POLICY_NAME}/ \
+    "
 FILES:${PN}-dev =+ " \
-        ${datadir}/selinux/${POLICY_NAME}/include/ \
-        ${sysconfdir}/selinux/sepolgen.conf \
-"
+    ${datadir}/selinux/${POLICY_NAME}/include/ \
+    ${sysconfdir}/selinux/sepolgen.conf \
+    "
 
 EXTRANATIVEPATH += "bzip2-native"
 
-DEPENDS += "bzip2-replacement-native checkpolicy-native policycoreutils-native semodule-utils-native m4-native"
+DEPENDS = "bzip2-replacement-native checkpolicy-native policycoreutils-native semodule-utils-native m4-native"
 
-RDEPENDS:${PN}-dev =+ " \
-        python3-core \
-"
+RDEPENDS:${PN}-dev = " \
+    python3-core \
+    "
 
 PACKAGE_ARCH = "${MACHINE_ARCH}"
 
@@ -129,83 +114,83 @@ POLICY_MLS_SENS ?= "16"
 POLICY_MLS_CATS ?= "1024"
 POLICY_MCS_CATS ?= "1024"
 
-EXTRA_OEMAKE += "NAME=${POLICY_NAME} \
-	TYPE=${POLICY_TYPE} \
-	DISTRO=${POLICY_DISTRO} \
-	UBAC=${POLICY_UBAC} \
-	UNK_PERMS=${POLICY_UNK_PERMS} \
-	DIRECT_INITRC=${POLICY_DIRECT_INITRC} \
-	SYSTEMD=${POLICY_SYSTEMD} \
-	MONOLITHIC=${POLICY_MONOLITHIC} \
-	CUSTOM_BUILDOPT=${POLICY_CUSTOM_BUILDOPT} \
-	QUIET=${POLICY_QUIET} \
-	MLS_SENS=${POLICY_MLS_SENS} \
-	MLS_CATS=${POLICY_MLS_CATS} \
-	MCS_CATS=${POLICY_MCS_CATS}"
+EXTRA_OEMAKE = "NAME=${POLICY_NAME} \
+    TYPE=${POLICY_TYPE} \
+    DISTRO=${POLICY_DISTRO} \
+    UBAC=${POLICY_UBAC} \
+    UNK_PERMS=${POLICY_UNK_PERMS} \
+    DIRECT_INITRC=${POLICY_DIRECT_INITRC} \
+    SYSTEMD=${POLICY_SYSTEMD} \
+    MONOLITHIC=${POLICY_MONOLITHIC} \
+    CUSTOM_BUILDOPT=${POLICY_CUSTOM_BUILDOPT} \
+    QUIET=${POLICY_QUIET} \
+    MLS_SENS=${POLICY_MLS_SENS} \
+    MLS_CATS=${POLICY_MLS_CATS} \
+    MCS_CATS=${POLICY_MCS_CATS}"
 
 EXTRA_OEMAKE += "tc_usrbindir=${STAGING_BINDIR_NATIVE}"
 EXTRA_OEMAKE += "OUTPUT_POLICY=`${STAGING_BINDIR_NATIVE}/checkpolicy -V | cut -d' ' -f1`"
 EXTRA_OEMAKE += "CC='${BUILD_CC}' CFLAGS='${BUILD_CFLAGS}' PYTHON='${PYTHON}'"
 
-python __anonymous () {
+python __anonymous() {
     import re
 
-    # make sure DEFAULT_ENFORCING is something sane
+    # Make sure DEFAULT_ENFORCING is something sane
     if not re.match('^(enforcing|permissive|disabled)$',
                     d.getVar('DEFAULT_ENFORCING'),
                     flags=0):
         d.setVar('DEFAULT_ENFORCING', 'permissive')
 }
 
-disable_policy_modules () {
-	for module in ${PURGE_POLICY_MODULES} ; do
-		sed -i "s/^\(\<${module}\>\) *= *.*$/\1 = off/" ${S}/policy/modules.conf
-	done
+disable_policy_modules() {
+    for module in ${PURGE_POLICY_MODULES} ; do
+        sed -i "s/^\(\<${module}\>\) *= *.*$/\1 = off/" ${S}/policy/modules.conf
+    done
 }
 
 do_compile() {
-	if [ -f "${WORKDIR}/modules.conf" ] ; then
-		cp -f ${WORKDIR}/modules.conf ${S}/policy/modules.conf
-	fi
-	oe_runmake conf
-	disable_policy_modules
-	oe_runmake policy
+    if [ -f "${WORKDIR}/modules.conf" ] ; then
+        cp -f ${WORKDIR}/modules.conf ${S}/policy/modules.conf
+    fi
+    oe_runmake conf
+    disable_policy_modules
+    oe_runmake policy
 }
 
-prepare_policy_store () {
-	oe_runmake 'DESTDIR=${D}' 'prefix=${D}${prefix}' install
-	POL_PRIORITY=100
-	POL_SRC=${D}${datadir}/selinux/${POLICY_NAME}
-	POL_STORE=${D}${localstatedir}/lib/selinux/${POLICY_NAME}
-	POL_ACTIVE_MODS=${POL_STORE}/active/modules/${POL_PRIORITY}
-
-	# Prepare to create policy store
-	mkdir -p ${POL_STORE}
-	mkdir -p ${POL_ACTIVE_MODS}
-
-	# get hll type from suffix on base policy module
-	HLL_TYPE=$(echo ${POL_SRC}/base.* | awk -F . '{if (NF>1) {print $NF}}')
-	HLL_BIN=${STAGING_DIR_NATIVE}${prefix}/libexec/selinux/hll/${HLL_TYPE}
-
-	for i in ${POL_SRC}/*.${HLL_TYPE}; do
-		MOD_NAME=$(basename $i | sed "s/\.${HLL_TYPE}$//")
-		MOD_DIR=${POL_ACTIVE_MODS}/${MOD_NAME}
-		mkdir -p ${MOD_DIR}
-		echo -n "${HLL_TYPE}" > ${MOD_DIR}/lang_ext
-		if ! bzip2 -t $i >/dev/null 2>&1; then
-			${HLL_BIN} $i | bzip2 --stdout > ${MOD_DIR}/cil
-			bzip2 -f $i && mv -f $i.bz2 $i
-		else
-			bunzip2 --stdout $i | \
-				${HLL_BIN} | \
-				bzip2 --stdout > ${MOD_DIR}/cil
-		fi
-		cp $i ${MOD_DIR}/hll
-	done
+prepare_policy_store() {
+    oe_runmake 'DESTDIR=${D}' 'prefix=${D}${prefix}' install
+    POL_PRIORITY=100
+    POL_SRC=${D}${datadir}/selinux/${POLICY_NAME}
+    POL_STORE=${D}${localstatedir}/lib/selinux/${POLICY_NAME}
+    POL_ACTIVE_MODS=${POL_STORE}/active/modules/${POL_PRIORITY}
+
+    # Prepare to create policy store
+    mkdir -p ${POL_STORE}
+    mkdir -p ${POL_ACTIVE_MODS}
+
+    # Get hll type from suffix on base policy module
+    HLL_TYPE=$(echo ${POL_SRC}/base.* | awk -F . '{if (NF>1) {print $NF}}')
+    HLL_BIN=${STAGING_DIR_NATIVE}${prefix}/libexec/selinux/hll/${HLL_TYPE}
+
+    for i in ${POL_SRC}/*.${HLL_TYPE}; do
+        MOD_NAME=$(basename $i | sed "s/\.${HLL_TYPE}$//")
+        MOD_DIR=${POL_ACTIVE_MODS}/${MOD_NAME}
+        mkdir -p ${MOD_DIR}
+        echo -n "${HLL_TYPE}" > ${MOD_DIR}/lang_ext
+        if ! bzip2 -t $i >/dev/null 2>&1; then
+            ${HLL_BIN} $i | bzip2 --stdout > ${MOD_DIR}/cil
+            bzip2 -f $i && mv -f $i.bz2 $i
+        else
+            bunzip2 --stdout $i | \
+                ${HLL_BIN} | \
+                bzip2 --stdout > ${MOD_DIR}/cil
+        fi
+        cp $i ${MOD_DIR}/hll
+    done
 }
 
-rebuild_policy () {
-	cat <<-EOF > ${D}${sysconfdir}/selinux/semanage.conf
+rebuild_policy() {
+    cat <<-EOF > ${D}${sysconfdir}/selinux/semanage.conf
 module-store = direct
 [setfiles]
 path = ${STAGING_DIR_NATIVE}${base_sbindir_native}/setfiles
@@ -219,29 +204,29 @@ args = \$@
 policy-version = 33
 EOF
 
-	# Create policy store and build the policy
-	semodule -p ${D} -s ${POLICY_NAME} -n -B
-	rm -f ${D}${sysconfdir}/selinux/semanage.conf
-	# no need to leave final dir created by semanage laying around
-	rm -rf ${D}${localstatedir}/lib/selinux/final
+    # Create policy store and build the policy
+    semodule -p ${D} -s ${POLICY_NAME} -n -B
+    rm -f ${D}${sysconfdir}/selinux/semanage.conf
+    # No need to leave final dir created by semanage laying around
+    rm -rf ${D}${localstatedir}/lib/selinux/final
 }
 
-install_misc_files () {
-	cat ${WORKDIR}/customizable_types >> \
-		${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/customizable_types
+install_misc_files() {
+    cat ${WORKDIR}/customizable_types >> \
+        ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/customizable_types
 
-	# install setrans.conf for mls/mcs policy
-	if [ -f ${WORKDIR}/setrans-${POLICY_TYPE}.conf ]; then
-		install -m 0644 ${WORKDIR}/setrans-${POLICY_TYPE}.conf \
-			${D}${sysconfdir}/selinux/${POLICY_NAME}/setrans.conf
-	fi
+    # Install setrans.conf for mls/mcs policy
+    if [ -f ${WORKDIR}/setrans-${POLICY_TYPE}.conf ]; then
+        install -m 0644 ${WORKDIR}/setrans-${POLICY_TYPE}.conf \
+            ${D}${sysconfdir}/selinux/${POLICY_NAME}/setrans.conf
+    fi
 
-	# install policy headers
-	oe_runmake 'DESTDIR=${D}' 'prefix=${D}${prefix}' install-headers
+    # Install policy headers
+    oe_runmake 'DESTDIR=${D}' 'prefix=${D}${prefix}' install-headers
 }
 
-install_config () {
-	echo "\
+install_config() {
+    echo "\
 # This file controls the state of SELinux on the system.
 # SELINUX= can take one of these three values:
 #     enforcing - SELinux security policy is enforced.
@@ -256,22 +241,22 @@ SELINUX=${DEFAULT_ENFORCING}
 #     mcs - Multi Category Security protection.
 SELINUXTYPE=${POLICY_NAME}
 " > ${WORKDIR}/config
-	install -d ${D}/${sysconfdir}/selinux
-	install -m 0644 ${WORKDIR}/config ${D}/${sysconfdir}/selinux/
+    install -d ${D}/${sysconfdir}/selinux
+    install -m 0644 ${WORKDIR}/config ${D}/${sysconfdir}/selinux/
 }
 
-do_install () {
-	prepare_policy_store
-	rebuild_policy
-	install_misc_files
-	install_config
+do_install() {
+    prepare_policy_store
+    rebuild_policy
+    install_misc_files
+    install_config
 }
 
-do_install:append(){
-	# While building policies on target, Makefile will be searched from SELINUX_DEVEL_PATH
-	echo "SELINUX_DEVEL_PATH=${datadir}/selinux/${POLICY_NAME}/include" > ${D}${sysconfdir}/selinux/sepolgen.conf
+do_install:append() {
+    # While building policies on target, Makefile will be searched from SELINUX_DEVEL_PATH
+    echo "SELINUX_DEVEL_PATH=${datadir}/selinux/${POLICY_NAME}/include" > ${D}${sysconfdir}/selinux/sepolgen.conf
 }
 
-sysroot_stage_all:append () {
-	sysroot_stage_dir ${D}${sysconfdir} ${SYSROOT_DESTDIR}${sysconfdir}
+sysroot_stage_all:append() {
+    sysroot_stage_dir ${D}${sysconfdir} ${SYSROOT_DESTDIR}${sysconfdir}
 }
diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-security/refpolicy/refpolicy_git.inc
index 9e78aed..54e0890 100644
--- a/recipes-security/refpolicy/refpolicy_git.inc
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -1,8 +1,8 @@
-PV = "2.20210908+git${SRCPV}"
+PV = "2.20221101+git${SRCPV}"
 
 SRC_URI = "git://github.com/SELinuxProject/refpolicy.git;protocol=https;branch=master;name=refpolicy;destsuffix=refpolicy"
 
-SRCREV_refpolicy ?= "23a8d103f379361cfe63a9ee064564624e108196"
+SRCREV_refpolicy ?= "03d486e306555da161b653c88e804ce23f3a0ea4"
 
 UPSTREAM_CHECK_GITTAGREGEX = "RELEASE_(?P<pver>\d+_\d+)"
 
-- 
2.25.1


