Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B257FC54E49
	for <webhook@archiver.kernel.org>; Mon,  4 Mar 2024 07:18:47 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.93128.1709536721781389206
 for <yocto@lists.yoctoproject.org>;
 Sun, 03 Mar 2024 23:18:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=lX78KxRg;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=379381f229=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 4244oVm5013938;
	Mon, 4 Mar 2024 07:18:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=drs4OXpeP7M4A9EurM
	BYBi4wo+/J+RFiz2q1x+amBjw=; b=lX78KxRgl/U5h27OtswquZUc2sW/RGGhaN
	RQ6g1axlYDXGGA031Zo0TCqCa5vgN6IJ1GD7RoYx0UKnB5i+EtipVrdUYhX1qzh+
	3n1ezKU6KSKa1Bl3DihwpOikFXpVfKFO7Nw+5G8OSBv9ZTI63t2lV4dYiNEPdhzG
	wNyrTkqz6wR8pa5owbQwI9CmmYtiH7kSQwCRDONj69S07CzjipyClV0JHkefdBzz
	1St2By/ERVr7KnH5DE6wCL3BvJUHYCOM+FIpOskYxd8Q4VLpaKdzpYjByPul1vcv
	ey3ze+KZeESCF8clNAGiZ6f6BjM6knIvJPhpQpZ1326dIme7/3pQ==
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2101.outbound.protection.outlook.com [104.47.55.101])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3wku369eqd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 04 Mar 2024 07:18:39 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WUHsrQPJlIHj0IeooPjhBkJP7jPLjDWuBoWgulP3d2X8vi09CJSk0SB/mKZe8SKUs/Vrq6T2Bo/i55/K2HnfJXLmAvRsrwmgZ2/WxhFuFUqFqmdKxUkSujlso2T3th6f5WGuHa87XUeMZtJ2w3l/9NG0ZAt/NNjsMxpvmW1HUP7YswIobsFIIvDdOmytrJNvdbFHoXsK/7bQ2pPzLiUbgMb+luiMBKrmqHdW2Jgy8atPpktVH8iUI1g6Gg3FJMGZoC+rWn7K980tFKSbW66V9BzFp5t8GSjjESQNdC24/1YA39lx7+iC9bQ5aOox3rCRaHQiUYxiReCiwumEuCd91g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=drs4OXpeP7M4A9EurMBYBi4wo+/J+RFiz2q1x+amBjw=;
 b=Mb5dogBKFNyhOZXC9wCliJJCVhejaTxSRoEEuYZqTw84Vh8rz6Bj4A3/PQHQmV2V43hJ58z6NxnNYeZPE3sTpxEDA+JdDdYDOyVCxK8UnYlQlFhYXZOqGuoYiBd7GzF442yHGdwc3jK1V8+dCbOB98egcpcFORMCy4AgoOlhR+Ja4+40Ru2D70qCa3T7R7+RWocUJYtTH9Pxrd3TfY3ZuIwDeyBYO/smnWIfai5tgAovBnkE0d5uPe5Q74S/sir0IfJIzpEycRdeFuua0D3gsyCvvYNa9P9hTIYb3Bi7JVoci5fz7PnswDNoz58vxlXXQzGuZLlMmkbpJR4ZE4sTJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by PH0PR11MB7422.namprd11.prod.outlook.com (2603:10b6:510:285::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Mon, 4 Mar
 2024 07:18:34 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::97da:833f:8511:a558]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::97da:833f:8511:a558%6]) with mapi id 15.20.7362.019; Mon, 4 Mar 2024
 07:18:34 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com,
        joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH] refpolicy: upgrade 20231002+git -> 20240226+git
Date: Mon,  4 Mar 2024 15:18:22 +0800
Message-Id: <20240304071822.377835-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR02CA0002.apcprd02.prod.outlook.com
 (2603:1096:4:194::22) To DS0PR11MB7484.namprd11.prod.outlook.com
 (2603:10b6:8:14c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7484:EE_|PH0PR11MB7422:EE_
X-MS-Office365-Filtering-Correlation-Id: fcdd7254-8ff7-40a9-c9d9-08dc3c1b4d09
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	BINA92dGSCDTqNQb76C82D6fF6WrDKVCR08Lg6J0gkvFXrJ45xuAo4DnBB4+Rp2ae5ud1u1ZrmEEm7U1z/5BD8qVAnhkTTZHC4Dh8D+5fsdJiHvW+BtUNlC8zC1E0TSIBbwGvMtJfrDR0FMFEacF1xLetGB1DUpxQWUd6PkiKLbUUbnlJZr2Cub+gmDi8/PGyZ8UU+aP+Hfgj0sCDZkvIf0C4EVQiyVS6Ou4JbzEDIUJPa9doAI/ZvKc0u6i4p/Ps8hHeCZx2AKiAAQ/rY8qPGunTfUiXH8xh+FfWoWx59fHc4FP/cbbvaMOhxlTuUuW4n7WkhZ3WzSWePaSn2PJUNsOYnhKgVS/DQG/CnADqQu5EuVK9BwI+aLKB703WoE9EZa/GqykqnzS+rTr/aA/kANSYItFfPlsb+BCv+jE5XEL5v2GdkD2RT7TUm4RMLqEF/FX11x5vpHELTDAI5Lu+iuBsO+crpCh1WVLqgjON8ejedjZRxPF4tWw2CCHXtXJYFSEe4zpyc254DyZhrRx/BOQuPPo7G6sJWk9Nkcpi6YwM/rEyjYlkVexR3/J7ve3+0fTxMELPQOp+EIYf7SsBSP3r6GGmHql3uyDyeHMzB7wn8KM3ydNNs9Qyyii9CjfdrilCdN0joKkItA8MQm2Su7B0INh8fYAAmeOihF+lpM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?WrjJWasxlYj9HfPZo1InPsvOaCjPrxj4+4wMfBdqTi1gpPIdQI2BFv0eQZPv?=
 =?us-ascii?Q?1VtHvAY8oP3ZAf54lgc1Y9kJYuLxX5nHb8GgZsIwneKgqxpi5FvyCX53Z08a?=
 =?us-ascii?Q?cs+haxhmh6lmxPm+K7d690725WXGly7tgQ+TbfdArewNADCT8nIdR6sMNV6M?=
 =?us-ascii?Q?sVlrWF9vlmb46Cr2M/dzDgqyAJc3v6d2Xkrv4BbdDRXBi8vBTV3KeGkMHewF?=
 =?us-ascii?Q?fOorVZjEr8Q+56kh5foyooUecfwC2DLCpEvgNGVMKVcOv5Ah5xwkkxmwB5yk?=
 =?us-ascii?Q?CqtGryd2bCqjP4mmRYLmUj/e8TXqSdGJKg6xDX1hIB9bqU+Lk2KBQUTrujCY?=
 =?us-ascii?Q?QZXQiHhGwT5/5SFBGozhol1T/njK+2+H7YTo+CZK6P9m2tpiQsHSgFbJDcii?=
 =?us-ascii?Q?cnrq/bFTljtZl8qnkmp02re8jESmhrDl8GjGXVhnq2X/1qWVx2fsh7XxNLfv?=
 =?us-ascii?Q?bnfcXY3cJD65Zwpa+Ow64Q8ta77oMqWE666w23POC8NjkRob4IFtSgUEkSA+?=
 =?us-ascii?Q?PtaqMKzdoj8ecSrdprMgqBSkGN7HjVp+fSIj4UsZfB/e9644tLI+6D8uOSpu?=
 =?us-ascii?Q?tSTOGbJLGHXa2Y8eCT6njRZVUCIRYmtrrNeBVvRLNN8cxzKjHcir7C4WMJdd?=
 =?us-ascii?Q?hpdnBVflLyLLbnmrPM3r+0d73EWtX+wSu452u8jI9doQbvsXqkvUCr6ZOoh6?=
 =?us-ascii?Q?ts6GuRTHFh6YoTdKiy8AluDxo3s+/zE1vvgcmu5g46fY8ZjRldBE/Lgbcgwy?=
 =?us-ascii?Q?TEWUZmi0c2HrWNd255Pcge7wx53nzHLAyjTL9aesB9ug6OEpXs1am2kIq9Qa?=
 =?us-ascii?Q?eh+gKoMDzE32duy70QfzsxsyfnL11DM1Mr55SpTwnrdmDV6ocr+I5bkIgXlM?=
 =?us-ascii?Q?7ySMUciKj2Q5fZD11fDrA/ko5wi2dHcoD23oibqLIYZijXve4M9V1Hakbh0P?=
 =?us-ascii?Q?XhYr7GbA9rzCuY+aAFl2mfgiYhhOKGNcu0R+7aYF6+dpbjfO7M+774inJ2+q?=
 =?us-ascii?Q?JNSR1MrYYiMSGcC6zNtrWA+/uYPnvb/PVtLOEeHMAAQXWfdH2YoOlqVomJWh?=
 =?us-ascii?Q?59pD//xJ/YBpqwit9gJJaKZzMG6Go5l4VUK0oPHph2G3Ggn9L6H1PMUUmXE4?=
 =?us-ascii?Q?7st9igdpPLFjYySkph0xZl8/KXm5afUOLfw2ghfYYXdIx0XJKtMp0p7gs0U2?=
 =?us-ascii?Q?/jzVP/w8A0NCpklj0Qz1t1/YXiCMr2TWflFChp444IJI5N8fcQwBmuqDkhjm?=
 =?us-ascii?Q?MyMlG7B481TKx8q5pIcFFfF0ikSaqPvvuLFUxwwL08Etv46jkcgVebb0cMoB?=
 =?us-ascii?Q?5GMVk3b/NzkrJgO4O2GMSKPlFFckVffVPfpM6wYkNjQ+4nNMACuWLmytUmQI?=
 =?us-ascii?Q?qudEkpb+xCinE/guOmHHNzsx0P58pKAE9SM8n39od2VRiLP3Ckt/IkLvB5Mp?=
 =?us-ascii?Q?iK/4EfSTJoR4ClwZ+1nuDs2dy0fbFVUxCu0+vPL1r/IKAicE+rExHXjFLszY?=
 =?us-ascii?Q?fz9lCWr+np0qEx/iryZHxnV3J6nTkY5QycB34T1OfDHThNEYh7pBXNmqJjoh?=
 =?us-ascii?Q?sP1Lj+tDFK9ANiD2YvP/tj17exVxX2YP+u3yq6MO?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcdd7254-8ff7-40a9-c9d9-08dc3c1b4d09
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2024 07:18:33.9979
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p4Q3BYzbBbp0GTKbythIX+vOgGPCLO4/VL22EI13UqErOCUBz/JwzgTWjGRZlz//OBdKRR9kK+3Pqwo1Rb3XHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7422
X-Proofpoint-ORIG-GUID: kB_sjk3W3UCs3NWWoB1hl0nrhRG9m5BW
X-Proofpoint-GUID: kB_sjk3W3UCs3NWWoB1hl0nrhRG9m5BW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-04_02,2024-03-01_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 spamscore=0
 phishscore=0 priorityscore=1501 malwarescore=0 bulkscore=0 adultscore=0
 mlxlogscore=999 suspectscore=0 impostorscore=0 mlxscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2402120000 definitions=main-2403040053
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 07:18:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62657

ChangeLog:
https://github.com/SELinuxProject/refpolicy/blob/main/Changelog

Notable Changes:
  Many systemd updates up to v255
  RPM and dnf fixes
  Tighten private key handling for Apache
  Many container and kubernetes improvements
  Add support for Cilium
  Update object class definitions up to io_uring:cmd
  Add additional rules to cloud-init based on sysadm_t

* Update to latest git rev.
* Refresh patches.
* Add a patch to fix reboot timeout error.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...tile-alias-common-var-volatile-paths.patch |  2 +-
 ...inimum-make-sysadmin-module-optional.patch |  6 +--
 ...ed-make-unconfined_u-the-default-sel.patch |  4 +-
 ...box-set-aliases-for-bin-sbin-and-usr.patch |  2 +-
 ...icy-minimum-make-xdg-module-optional.patch |  6 +--
 ...y-policy-to-common-yocto-hostname-al.patch |  2 +-
 ...sr-bin-bash-context-to-bin-bash.bash.patch |  6 +--
 ...abel-resolv.conf-in-var-run-properly.patch |  2 +-
 ...-apply-login-context-to-login.shadow.patch |  2 +-
 ...-fc-hwclock-add-hwclock-alternatives.patch |  2 +-
 ...g-apply-policy-to-dmesg-alternatives.patch |  2 +-
 ...ssh-apply-policy-to-ssh-alternatives.patch |  2 +-
 ...ply-policy-to-network-commands-alter.patch |  2 +-
 ...ply-rpm_exec-policy-to-cpio-binaries.patch |  6 +--
 ...c-su-apply-policy-to-su-alternatives.patch |  2 +-
 ...fc-fstools-fix-real-path-for-fstools.patch |  2 +-
 ...fix-update-alternatives-for-sysvinit.patch | 10 ++---
 ...l-apply-policy-to-brctl-alternatives.patch |  2 +-
 ...apply-policy-to-nologin-alternatives.patch |  6 +--
 ...apply-policy-to-sulogin-alternatives.patch |  2 +-
 ...tp-apply-policy-to-ntpd-alternatives.patch |  2 +-
 ...pply-policy-to-kerberos-alternatives.patch |  2 +-
 ...ap-apply-policy-to-ldap-alternatives.patch |  2 +-
 ...ply-policy-to-postgresql-alternative.patch |  2 +-
 ...-apply-policy-to-screen-alternatives.patch |  2 +-
 ...ply-policy-to-usermanage-alternative.patch |  2 +-
 ...etty-add-file-context-to-start_getty.patch |  2 +-
 ...k-apply-policy-to-vlock-alternatives.patch |  2 +-
 ...for-init-scripts-and-systemd-service.patch |  6 +--
 ...bs_dist-set-aliase-for-root-director.patch |  2 +-
 ...ystem-logging-add-rules-for-the-syml.patch |  2 +-
 ...ystem-logging-add-rules-for-syslogd-.patch |  2 +-
 ...ernel-files-add-rules-for-the-symlin.patch | 24 ++++++------
 ...ystem-logging-fix-auditd-startup-fai.patch |  2 +-
 ...ernel-terminal-don-t-audit-tty_devic.patch |  2 +-
 ...ervices-rpcbind-allow-rpcbind_t-to-c.patch |  2 +-
 ...ystem-systemd-enable-support-for-sys.patch |  4 +-
 ...ystem-logging-allow-systemd-tmpfiles.patch |  2 +-
 ...ystem-systemd-allow-systemd_logind_t.patch |  6 +--
 ...oles-sysadm-allow-sysadm-to-use-init.patch |  6 +--
 ...es-system-systemd-systemd-user-fixes.patch | 10 ++---
 ...stem-authlogin-fix-login-errors-aft.patch} | 10 ++---
 ...ystem-systemd-allow-systemd-logind-t.patch | 38 +++++++++++++++++++
 ...stem-mount-make-mount_t-domain-MLS-.patch} |  6 +--
 ...les-sysadm-MLS-sysadm-rw-to-clearan.patch} |  6 +--
 ...rvices-rpc-make-nfsd_t-domain-MLS-t.patch} |  6 +--
 ...min-dmesg-make-dmesg_t-MLS-trusted-.patch} |  2 +-
 ...rnel-kernel-make-kernel_t-MLS-trust.patch} |  6 +--
 ...stem-init-make-init_t-MLS-trusted-f.patch} |  4 +-
 ...stem-systemd-make-systemd-tmpfiles_.patch} |  6 +--
 ...stem-systemd-systemd-make-systemd_-.patch} | 12 +++---
 ...stem-logging-add-the-syslogd_t-to-t.patch} |  2 +-
 ...stem-init-make-init_t-MLS-trusted-f.patch} |  4 +-
 ...stem-init-all-init_t-to-read-any-le.patch} |  4 +-
 ...stem-logging-allow-auditd_t-to-writ.patch} |  2 +-
 ...rnel-kernel-make-kernel_t-MLS-trust.patch} |  6 +--
 ...stem-setrans-allow-setrans_t-use-fd.patch} |  2 +-
 ...stem-systemd-make-_systemd_t-MLS-tr.patch} |  6 +--
 ...stem-logging-make-syslogd_runtime_t.patch} |  2 +-
 .../refpolicy/refpolicy_common.inc            | 35 ++++++++---------
 recipes-security/refpolicy/refpolicy_git.inc  |  4 +-
 61 files changed, 179 insertions(+), 140 deletions(-)
 rename recipes-security/refpolicy/refpolicy/{0055-policy-modules-system-authlogin-fix-login-errors-aft.patch => 0039-policy-modules-system-authlogin-fix-login-errors-aft.patch} (93%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0040-policy-modules-system-systemd-allow-systemd-logind-t.patch
 rename recipes-security/refpolicy/refpolicy/{0039-policy-modules-system-mount-make-mount_t-domain-MLS-.patch => 0041-policy-modules-system-mount-make-mount_t-domain-MLS-.patch} (85%)
 rename recipes-security/refpolicy/refpolicy/{0040-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch => 0042-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch} (88%)
 rename recipes-security/refpolicy/refpolicy/{0041-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch => 0043-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch} (90%)
 rename recipes-security/refpolicy/refpolicy/{0042-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch => 0044-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch} (94%)
 rename recipes-security/refpolicy/refpolicy/{0043-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch => 0045-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch} (95%)
 rename recipes-security/refpolicy/refpolicy/{0044-policy-modules-system-init-make-init_t-MLS-trusted-f.patch => 0046-policy-modules-system-init-make-init_t-MLS-trusted-f.patch} (93%)
 rename recipes-security/refpolicy/refpolicy/{0045-policy-modules-system-systemd-make-systemd-tmpfiles_.patch => 0047-policy-modules-system-systemd-make-systemd-tmpfiles_.patch} (92%)
 rename recipes-security/refpolicy/refpolicy/{0046-policy-modules-system-systemd-systemd-make-systemd_-.patch => 0048-policy-modules-system-systemd-systemd-make-systemd_-.patch} (89%)
 rename recipes-security/refpolicy/refpolicy/{0047-policy-modules-system-logging-add-the-syslogd_t-to-t.patch => 0049-policy-modules-system-logging-add-the-syslogd_t-to-t.patch} (95%)
 rename recipes-security/refpolicy/refpolicy/{0048-policy-modules-system-init-make-init_t-MLS-trusted-f.patch => 0050-policy-modules-system-init-make-init_t-MLS-trusted-f.patch} (91%)
 rename recipes-security/refpolicy/refpolicy/{0049-policy-modules-system-init-all-init_t-to-read-any-le.patch => 0051-policy-modules-system-init-all-init_t-to-read-any-le.patch} (92%)
 rename recipes-security/refpolicy/refpolicy/{0050-policy-modules-system-logging-allow-auditd_t-to-writ.patch => 0052-policy-modules-system-logging-allow-auditd_t-to-writ.patch} (95%)
 rename recipes-security/refpolicy/refpolicy/{0051-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch => 0053-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch} (84%)
 rename recipes-security/refpolicy/refpolicy/{0052-policy-modules-system-setrans-allow-setrans_t-use-fd.patch => 0054-policy-modules-system-setrans-allow-setrans_t-use-fd.patch} (93%)
 rename recipes-security/refpolicy/refpolicy/{0053-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch => 0055-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch} (88%)
 rename recipes-security/refpolicy/refpolicy/{0054-policy-modules-system-logging-make-syslogd_runtime_t.patch => 0056-policy-modules-system-logging-make-syslogd_runtime_t.patch} (96%)

diff --git a/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch b/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
index 2b879d2..59169cb 100644
--- a/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
+++ b/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
@@ -1,4 +1,4 @@
-From 1d96fd0c6906566d40cb4c4f2c8a30fe80ed4ad4 Mon Sep 17 00:00:00 2001
+From 9fdb576862d6a373b4a50e149fcfd4571e01dd1a Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 16:14:09 -0400
 Subject: [PATCH] fc/subs/volatile: alias common /var/volatile paths
diff --git a/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sysadmin-module-optional.patch b/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sysadmin-module-optional.patch
index 50e0339..820d71e 100644
--- a/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sysadmin-module-optional.patch
+++ b/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sysadmin-module-optional.patch
@@ -1,4 +1,4 @@
-From 6c5f86f8c5e5fda6ded270753d0535a31ebfbab0 Mon Sep 17 00:00:00 2001
+From 2d04fadd54814ce01d143262f36edbf0b1700a9b Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 5 Apr 2019 11:53:28 -0400
 Subject: [PATCH] refpolicy-minimum: make sysadmin module optional
@@ -22,10 +22,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  2 files changed, 11 insertions(+), 7 deletions(-)
 
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index e94a29a73..6b1879bb4 100644
+index c2380d8b4..31f77cf43 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -638,13 +638,15 @@ ifdef(`init_systemd',`
+@@ -645,13 +645,15 @@ ifdef(`init_systemd',`
  		unconfined_write_keys(init_t)
  	')
  ',`
diff --git a/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch b/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch
index fb92e6c..f4e4809 100644
--- a/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch
+++ b/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch
@@ -1,4 +1,4 @@
-From c26f856ac11b3d61aff56c4e512bedca811cf004 Mon Sep 17 00:00:00 2001
+From 15b4f9a17d1f45dc6e15e4a3b0e6490a9a518df6 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Mon, 20 Apr 2020 11:50:03 +0800
 Subject: [PATCH] refpolicy-targeted: make unconfined_u the default selinux
@@ -38,7 +38,7 @@ index ce614b41b..c0903d98b 100644
 +root:unconfined_u:s0-mcs_systemhigh
 +__default__:unconfined_u:s0
 diff --git a/policy/modules/system/unconfined.te b/policy/modules/system/unconfined.te
-index 6431d35da..922e7e285 100644
+index 6c9769b04..01c9a7243 100644
 --- a/policy/modules/system/unconfined.te
 +++ b/policy/modules/system/unconfined.te
 @@ -20,6 +20,11 @@ type unconfined_execmem_t alias ada_t;
diff --git a/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch b/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
index 26669ba..b6be830 100644
--- a/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
+++ b/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
@@ -1,4 +1,4 @@
-From c94348cbaacfdc47a50cc93c8d52295f09b3c1f2 Mon Sep 17 00:00:00 2001
+From a3269d08232045835f341e5796da66d9bf948aca Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 20:48:10 -0400
 Subject: [PATCH] fc/subs/busybox: set aliases for bin, sbin and usr
diff --git a/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-make-xdg-module-optional.patch b/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-make-xdg-module-optional.patch
index 75ff75e..cc8c0b7 100644
--- a/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-make-xdg-module-optional.patch
+++ b/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-make-xdg-module-optional.patch
@@ -1,4 +1,4 @@
-From c69e55b03777ee15701ebb9b53b288fc773dbd87 Mon Sep 17 00:00:00 2001
+From 39b825d24a34864c3d9bae684b083a9b656f641a Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Wed, 29 Sep 2021 11:08:49 +0800
 Subject: [PATCH] refpolicy-minimum: make xdg module optional
@@ -15,10 +15,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 6 insertions(+), 2 deletions(-)
 
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 52c7b5346..d9f21b6bf 100644
+index a0e6bb405..b1fc414ea 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -305,10 +305,14 @@ init_unit_file(systemd_user_manager_unit_t)
+@@ -313,10 +313,14 @@ init_unit_file(systemd_user_manager_unit_t)
  
  type systemd_conf_home_t;
  init_unit_file(systemd_conf_home_t)
diff --git a/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch b/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
index 140af4e..69ed556 100644
--- a/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
+++ b/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
@@ -1,4 +1,4 @@
-From cb1c9ffb1c8f2c615731c2afae81b687a59b94c4 Mon Sep 17 00:00:00 2001
+From a78f1bf10f489d1abe8a4db9c8ee29af6ac9d02c Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] fc/hostname: apply policy to common yocto hostname
diff --git a/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch b/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
index 13a0343..1eac7ec 100644
--- a/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
+++ b/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
@@ -1,4 +1,4 @@
-From 23f156d0adc37eb9f6f8308c28da4db0bac48200 Mon Sep 17 00:00:00 2001
+From 0f549b970d42109994c5736e78f0b7d9267b1ae5 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 21:37:32 -0400
 Subject: [PATCH] fc/bash: apply /usr/bin/bash context to /bin/bash.bash
@@ -15,10 +15,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
-index f031e1704..30ac066e4 100644
+index 04d6caa80..7d2efef0a 100644
 --- a/policy/modules/kernel/corecommands.fc
 +++ b/policy/modules/kernel/corecommands.fc
-@@ -144,6 +144,7 @@ ifdef(`distro_gentoo',`
+@@ -147,6 +147,7 @@ ifdef(`distro_gentoo',`
  /usr/bin(/.*)?				gen_context(system_u:object_r:bin_t,s0)
  /usr/bin/d?ash			--	gen_context(system_u:object_r:shell_exec_t,s0)
  /usr/bin/bash			--	gen_context(system_u:object_r:shell_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch b/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
index e3d9e93..4329a12 100644
--- a/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
+++ b/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
@@ -1,4 +1,4 @@
-From 10df3192847b50162c7f404b6c5bd1a010951112 Mon Sep 17 00:00:00 2001
+From d9348cee43dd6d6e2ea971ef22c796956b9677fd Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 4 Apr 2019 10:45:03 -0400
 Subject: [PATCH] fc/resolv.conf: label resolv.conf in var/run/ properly
diff --git a/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-context-to-login.shadow.patch b/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-context-to-login.shadow.patch
index a1125d8..cdf71d6 100644
--- a/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-context-to-login.shadow.patch
+++ b/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-context-to-login.shadow.patch
@@ -1,4 +1,4 @@
-From 61900d0f5576fa0cd8297a011f60cb9a40cefc7b Mon Sep 17 00:00:00 2001
+From df2801c3f9689d6c173dca05ee970756ba3b3d04 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 21:43:53 -0400
 Subject: [PATCH] fc/login: apply login context to login.shadow
diff --git a/recipes-security/refpolicy/refpolicy/0007-fc-hwclock-add-hwclock-alternatives.patch b/recipes-security/refpolicy/refpolicy/0007-fc-hwclock-add-hwclock-alternatives.patch
index 26bc8a0..db0d93a 100644
--- a/recipes-security/refpolicy/refpolicy/0007-fc-hwclock-add-hwclock-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0007-fc-hwclock-add-hwclock-alternatives.patch
@@ -1,4 +1,4 @@
-From e393201b6f3c0242ccc41dd86eada8be97326a08 Mon Sep 17 00:00:00 2001
+From f274bbf18ef930a506c7fe7cc90c32698e51b318 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 21:59:18 -0400
 Subject: [PATCH] fc/hwclock: add hwclock alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0008-fc-dmesg-apply-policy-to-dmesg-alternatives.patch b/recipes-security/refpolicy/refpolicy/0008-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
index 5449754..8030e93 100644
--- a/recipes-security/refpolicy/refpolicy/0008-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0008-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
@@ -1,4 +1,4 @@
-From 2d5ca79ed3f775878b91d76e952644b1347d5f9e Mon Sep 17 00:00:00 2001
+From c69e143640f73d13d82aa6cfcbfce64a02bcb13d Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 08:26:55 -0400
 Subject: [PATCH] fc/dmesg: apply policy to dmesg alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0009-fc-ssh-apply-policy-to-ssh-alternatives.patch b/recipes-security/refpolicy/refpolicy/0009-fc-ssh-apply-policy-to-ssh-alternatives.patch
index 7fada95..40b3e8d 100644
--- a/recipes-security/refpolicy/refpolicy/0009-fc-ssh-apply-policy-to-ssh-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0009-fc-ssh-apply-policy-to-ssh-alternatives.patch
@@ -1,4 +1,4 @@
-From d676349ee55f8c1c16b9d5c6770b9137391d396e Mon Sep 17 00:00:00 2001
+From 6cb433b296b2085bf1aa54c7722a8bcf7a69cba8 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 09:20:58 -0400
 Subject: [PATCH] fc/ssh: apply policy to ssh alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0010-fc-sysnetwork-apply-policy-to-network-commands-alter.patch b/recipes-security/refpolicy/refpolicy/0010-fc-sysnetwork-apply-policy-to-network-commands-alter.patch
index 5886168..6d1b362 100644
--- a/recipes-security/refpolicy/refpolicy/0010-fc-sysnetwork-apply-policy-to-network-commands-alter.patch
+++ b/recipes-security/refpolicy/refpolicy/0010-fc-sysnetwork-apply-policy-to-network-commands-alter.patch
@@ -1,4 +1,4 @@
-From 6730f53849cce4d2586a6e6540f3e7aae1117236 Mon Sep 17 00:00:00 2001
+From 89f23ef679f8f0f842b7b41b85c48266d292bcfc Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Tue, 9 Jun 2015 21:22:52 +0530
 Subject: [PATCH] fc/sysnetwork: apply policy to network commands alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0011-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch b/recipes-security/refpolicy/refpolicy/0011-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
index 2d1d287..86fc796 100644
--- a/recipes-security/refpolicy/refpolicy/0011-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
+++ b/recipes-security/refpolicy/refpolicy/0011-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
@@ -1,4 +1,4 @@
-From cfb5cec05c98a65d8eb086868444a6e74e1f96bf Mon Sep 17 00:00:00 2001
+From 2fb2dc1ab37da9d6d1f885b7f4b3eae8db66844a Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 09:54:07 -0400
 Subject: [PATCH] fc/rpm: apply rpm_exec policy to cpio binaries
@@ -12,10 +12,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/admin/rpm.fc b/policy/modules/admin/rpm.fc
-index 3f842f942..12973ac8b 100644
+index 7efcf71de..2f83019f0 100644
 --- a/policy/modules/admin/rpm.fc
 +++ b/policy/modules/admin/rpm.fc
-@@ -71,4 +71,6 @@ ifdef(`distro_redhat',`
+@@ -74,4 +74,6 @@ ifdef(`distro_redhat',`
  
  ifdef(`enable_mls',`
  /usr/sbin/cpio	--	gen_context(system_u:object_r:rpm_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy/0012-fc-su-apply-policy-to-su-alternatives.patch b/recipes-security/refpolicy/refpolicy/0012-fc-su-apply-policy-to-su-alternatives.patch
index f1138d6..69e36e1 100644
--- a/recipes-security/refpolicy/refpolicy/0012-fc-su-apply-policy-to-su-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0012-fc-su-apply-policy-to-su-alternatives.patch
@@ -1,4 +1,4 @@
-From dd1663aaffec1f7b36097c742094c9c239342d9f Mon Sep 17 00:00:00 2001
+From 95920611d43a3e6352fc16fcac05977844d57398 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Thu, 13 Feb 2014 00:33:07 -0500
 Subject: [PATCH] fc/su: apply policy to su alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0013-fc-fstools-fix-real-path-for-fstools.patch b/recipes-security/refpolicy/refpolicy/0013-fc-fstools-fix-real-path-for-fstools.patch
index 4bc2bbc..55f3175 100644
--- a/recipes-security/refpolicy/refpolicy/0013-fc-fstools-fix-real-path-for-fstools.patch
+++ b/recipes-security/refpolicy/refpolicy/0013-fc-fstools-fix-real-path-for-fstools.patch
@@ -1,4 +1,4 @@
-From 9cd6000d7d01cee2eb92038bf4361f603736200b Mon Sep 17 00:00:00 2001
+From 8b5320fbdb29ab1bf601d9cf81ffe7ea7b9bc55f Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Mon, 27 Jan 2014 03:54:01 -0500
 Subject: [PATCH] fc/fstools: fix real path for fstools
diff --git a/recipes-security/refpolicy/refpolicy/0014-fc-init-fix-update-alternatives-for-sysvinit.patch b/recipes-security/refpolicy/refpolicy/0014-fc-init-fix-update-alternatives-for-sysvinit.patch
index 746a8be..73a0d8a 100644
--- a/recipes-security/refpolicy/refpolicy/0014-fc-init-fix-update-alternatives-for-sysvinit.patch
+++ b/recipes-security/refpolicy/refpolicy/0014-fc-init-fix-update-alternatives-for-sysvinit.patch
@@ -1,4 +1,4 @@
-From 4c6db6e9d637c6ecde7d104ae3544d18004d2a2c Mon Sep 17 00:00:00 2001
+From 8eefd8242e8b08fee6886d6bba12c4af202890d0 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] fc/init: fix update-alternatives for sysvinit
@@ -26,10 +26,10 @@ index 89d682d36..354f4d1d9 100644
  
  /run/shutdown\.pid	--	gen_context(system_u:object_r:shutdown_runtime_t,s0)
 diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
-index 30ac066e4..1edc035f3 100644
+index 7d2efef0a..9a5711a83 100644
 --- a/policy/modules/kernel/corecommands.fc
 +++ b/policy/modules/kernel/corecommands.fc
-@@ -153,6 +153,8 @@ ifdef(`distro_gentoo',`
+@@ -156,6 +156,8 @@ ifdef(`distro_gentoo',`
  /usr/bin/mkfs\.cramfs		--	gen_context(system_u:object_r:bin_t,s0)
  /usr/bin/mksh			--	gen_context(system_u:object_r:shell_exec_t,s0)
  /usr/bin/mountpoint		--	gen_context(system_u:object_r:bin_t,s0)
@@ -39,10 +39,10 @@ index 30ac066e4..1edc035f3 100644
  /usr/bin/sash			--	gen_context(system_u:object_r:shell_exec_t,s0)
  /usr/bin/sesh			--	gen_context(system_u:object_r:shell_exec_t,s0)
 diff --git a/policy/modules/system/init.fc b/policy/modules/system/init.fc
-index 9ebd6094c..e9e9eae85 100644
+index 07b12de2e..d99767ce8 100644
 --- a/policy/modules/system/init.fc
 +++ b/policy/modules/system/init.fc
-@@ -48,6 +48,7 @@ ifdef(`distro_gentoo',`
+@@ -49,6 +49,7 @@ ifdef(`distro_gentoo',`
  /usr/libexec/dcc/stop-.* --	gen_context(system_u:object_r:initrc_exec_t,s0)
  
  /usr/sbin/init(ng)?	--	gen_context(system_u:object_r:init_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy/0015-fc-brctl-apply-policy-to-brctl-alternatives.patch b/recipes-security/refpolicy/refpolicy/0015-fc-brctl-apply-policy-to-brctl-alternatives.patch
index c592e8e..e21e044 100644
--- a/recipes-security/refpolicy/refpolicy/0015-fc-brctl-apply-policy-to-brctl-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0015-fc-brctl-apply-policy-to-brctl-alternatives.patch
@@ -1,4 +1,4 @@
-From e95592bb4138b7bbf3e7725144ac2cbe9cecc4cd Mon Sep 17 00:00:00 2001
+From e4bdaafd9684b3b46a6d0a417967f596fbdc36c2 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:19:54 +0800
 Subject: [PATCH] fc/brctl: apply policy to brctl alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0016-fc-corecommands-apply-policy-to-nologin-alternatives.patch b/recipes-security/refpolicy/refpolicy/0016-fc-corecommands-apply-policy-to-nologin-alternatives.patch
index 8047863..3020814 100644
--- a/recipes-security/refpolicy/refpolicy/0016-fc-corecommands-apply-policy-to-nologin-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0016-fc-corecommands-apply-policy-to-nologin-alternatives.patch
@@ -1,4 +1,4 @@
-From 788d2c125f18dce9e0871fb260b4a0c394b9db53 Mon Sep 17 00:00:00 2001
+From 762b0bd9cc26627f7361d5db92ae1cb366c0858b Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:21:51 +0800
 Subject: [PATCH] fc/corecommands: apply policy to nologin alternatives
@@ -11,10 +11,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
-index 1edc035f3..258d97c3c 100644
+index 9a5711a83..c9009af5f 100644
 --- a/policy/modules/kernel/corecommands.fc
 +++ b/policy/modules/kernel/corecommands.fc
-@@ -308,6 +308,8 @@ ifdef(`distro_debian',`
+@@ -311,6 +311,8 @@ ifdef(`distro_debian',`
  /usr/sbin/insmod_ksymoops_clean	--	gen_context(system_u:object_r:bin_t,s0)
  /usr/sbin/mkfs\.cramfs		--	gen_context(system_u:object_r:bin_t,s0)
  /usr/sbin/nologin		--	gen_context(system_u:object_r:shell_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy/0017-fc-locallogin-apply-policy-to-sulogin-alternatives.patch b/recipes-security/refpolicy/refpolicy/0017-fc-locallogin-apply-policy-to-sulogin-alternatives.patch
index 3dd959c..cd3cb4b 100644
--- a/recipes-security/refpolicy/refpolicy/0017-fc-locallogin-apply-policy-to-sulogin-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0017-fc-locallogin-apply-policy-to-sulogin-alternatives.patch
@@ -1,4 +1,4 @@
-From 03199ca4933ef2760c0e575a76e90521117ea4c3 Mon Sep 17 00:00:00 2001
+From d312aa5ea1da9c19eb214a55acb2d2b5347ed68f Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:43:28 +0800
 Subject: [PATCH] fc/locallogin: apply policy to sulogin alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0018-fc-ntp-apply-policy-to-ntpd-alternatives.patch b/recipes-security/refpolicy/refpolicy/0018-fc-ntp-apply-policy-to-ntpd-alternatives.patch
index 1d902f2..9009120 100644
--- a/recipes-security/refpolicy/refpolicy/0018-fc-ntp-apply-policy-to-ntpd-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0018-fc-ntp-apply-policy-to-ntpd-alternatives.patch
@@ -1,4 +1,4 @@
-From ee9c65a2d3db145309bd2898223f8229915c304c Mon Sep 17 00:00:00 2001
+From 3085ae26b66d82f7c7b3db507153a5976ec26b48 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:45:23 +0800
 Subject: [PATCH] fc/ntp: apply policy to ntpd alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0019-fc-kerberos-apply-policy-to-kerberos-alternatives.patch b/recipes-security/refpolicy/refpolicy/0019-fc-kerberos-apply-policy-to-kerberos-alternatives.patch
index 778ed43..9fc5b90 100644
--- a/recipes-security/refpolicy/refpolicy/0019-fc-kerberos-apply-policy-to-kerberos-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0019-fc-kerberos-apply-policy-to-kerberos-alternatives.patch
@@ -1,4 +1,4 @@
-From 435ae64d593cc09b1109d0457f7ba084259090e8 Mon Sep 17 00:00:00 2001
+From 4f377178aff842dc4ce9c6e705a761478d21f4d3 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:55:05 +0800
 Subject: [PATCH] fc/kerberos: apply policy to kerberos alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0020-fc-ldap-apply-policy-to-ldap-alternatives.patch b/recipes-security/refpolicy/refpolicy/0020-fc-ldap-apply-policy-to-ldap-alternatives.patch
index baad70c..c2247c3 100644
--- a/recipes-security/refpolicy/refpolicy/0020-fc-ldap-apply-policy-to-ldap-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0020-fc-ldap-apply-policy-to-ldap-alternatives.patch
@@ -1,4 +1,4 @@
-From a1c0776ac6405d1b6aeadf07cc222f5cc9daa424 Mon Sep 17 00:00:00 2001
+From 6de6e53b41602b50ebec3627ceede5e13bad3bb6 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 11:06:13 +0800
 Subject: [PATCH] fc/ldap: apply policy to ldap alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0021-fc-postgresql-apply-policy-to-postgresql-alternative.patch b/recipes-security/refpolicy/refpolicy/0021-fc-postgresql-apply-policy-to-postgresql-alternative.patch
index 8bce781..9d3c2e1 100644
--- a/recipes-security/refpolicy/refpolicy/0021-fc-postgresql-apply-policy-to-postgresql-alternative.patch
+++ b/recipes-security/refpolicy/refpolicy/0021-fc-postgresql-apply-policy-to-postgresql-alternative.patch
@@ -1,4 +1,4 @@
-From dd6dc74388daffba5c336059fbc046e632bee0f6 Mon Sep 17 00:00:00 2001
+From f523a63f9f209544b9a557e76e94354c23d93959 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 11:13:16 +0800
 Subject: [PATCH] fc/postgresql: apply policy to postgresql alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0022-fc-screen-apply-policy-to-screen-alternatives.patch b/recipes-security/refpolicy/refpolicy/0022-fc-screen-apply-policy-to-screen-alternatives.patch
index 7fba90e..749c19a 100644
--- a/recipes-security/refpolicy/refpolicy/0022-fc-screen-apply-policy-to-screen-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0022-fc-screen-apply-policy-to-screen-alternatives.patch
@@ -1,4 +1,4 @@
-From 7d78632d5553fcddf12dd57de56ff15b057625ab Mon Sep 17 00:00:00 2001
+From 57c6a0e69aa9d308ec23dc60dc2420ee5c62bf7f Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 11:15:33 +0800
 Subject: [PATCH] fc/screen: apply policy to screen alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0023-fc-usermanage-apply-policy-to-usermanage-alternative.patch b/recipes-security/refpolicy/refpolicy/0023-fc-usermanage-apply-policy-to-usermanage-alternative.patch
index b65e3b0..152d147 100644
--- a/recipes-security/refpolicy/refpolicy/0023-fc-usermanage-apply-policy-to-usermanage-alternative.patch
+++ b/recipes-security/refpolicy/refpolicy/0023-fc-usermanage-apply-policy-to-usermanage-alternative.patch
@@ -1,4 +1,4 @@
-From 074eff7d27765a1f489f3a787d7f6f64a890f07e Mon Sep 17 00:00:00 2001
+From f0706a85dca8801d87130102b701c7bc2fd7476d Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 11:25:34 +0800
 Subject: [PATCH] fc/usermanage: apply policy to usermanage alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0024-fc-getty-add-file-context-to-start_getty.patch b/recipes-security/refpolicy/refpolicy/0024-fc-getty-add-file-context-to-start_getty.patch
index b1a85b4..3527e65 100644
--- a/recipes-security/refpolicy/refpolicy/0024-fc-getty-add-file-context-to-start_getty.patch
+++ b/recipes-security/refpolicy/refpolicy/0024-fc-getty-add-file-context-to-start_getty.patch
@@ -1,4 +1,4 @@
-From dca38e304bb64a5c3a18d02521f56ffe461ec126 Mon Sep 17 00:00:00 2001
+From 2ff44df5a5da2246f2198741a05786e89ac9f4e3 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 16:07:30 +0800
 Subject: [PATCH] fc/getty: add file context to start_getty
diff --git a/recipes-security/refpolicy/refpolicy/0025-fc-vlock-apply-policy-to-vlock-alternatives.patch b/recipes-security/refpolicy/refpolicy/0025-fc-vlock-apply-policy-to-vlock-alternatives.patch
index de97331..331eab9 100644
--- a/recipes-security/refpolicy/refpolicy/0025-fc-vlock-apply-policy-to-vlock-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0025-fc-vlock-apply-policy-to-vlock-alternatives.patch
@@ -1,4 +1,4 @@
-From ae142b7d993a7f03b6ff1cf4f7a49c3aec77fe1c Mon Sep 17 00:00:00 2001
+From 42676d53a9c8554ac3e05f826f23792edf8d3c27 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Wed, 18 Dec 2019 15:04:41 +0800
 Subject: [PATCH] fc/vlock: apply policy to vlock alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0026-fc-add-fcontext-for-init-scripts-and-systemd-service.patch b/recipes-security/refpolicy/refpolicy/0026-fc-add-fcontext-for-init-scripts-and-systemd-service.patch
index 5699e10..0adb47f 100644
--- a/recipes-security/refpolicy/refpolicy/0026-fc-add-fcontext-for-init-scripts-and-systemd-service.patch
+++ b/recipes-security/refpolicy/refpolicy/0026-fc-add-fcontext-for-init-scripts-and-systemd-service.patch
@@ -1,4 +1,4 @@
-From 4784a7fe74fd3842c1ade228e148cd6f5d6fd22e Mon Sep 17 00:00:00 2001
+From 3cf1f270369d7a2c75faf1a90d1485fe699dbbfe Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 30 Jun 2020 10:45:57 +0800
 Subject: [PATCH] fc: add fcontext for init scripts and systemd service files
@@ -34,11 +34,11 @@ index 382c067f9..0ecc5acc4 100644
  /usr/bin/rngd	--	gen_context(system_u:object_r:rngd_exec_t,s0)
  
 diff --git a/policy/modules/services/rpc.fc b/policy/modules/services/rpc.fc
-index 18c204908..95f06d8de 100644
+index 7edc09fac..7416fa39f 100644
 --- a/policy/modules/services/rpc.fc
 +++ b/policy/modules/services/rpc.fc
 @@ -2,7 +2,9 @@
- /etc/exports\.d(/.*)?	--	gen_context(system_u:object_r:exports_t,s0)
+ /etc/exports\.d(/.*)?		gen_context(system_u:object_r:exports_t,s0)
  
  /etc/rc\.d/init\.d/nfs	--	gen_context(system_u:object_r:nfsd_initrc_exec_t,s0)
 +/etc/rc\.d/init\.d/nfsserver	--	gen_context(system_u:object_r:nfsd_initrc_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy/0027-file_contexts.subs_dist-set-aliase-for-root-director.patch b/recipes-security/refpolicy/refpolicy/0027-file_contexts.subs_dist-set-aliase-for-root-director.patch
index a527d94..fbaa44e 100644
--- a/recipes-security/refpolicy/refpolicy/0027-file_contexts.subs_dist-set-aliase-for-root-director.patch
+++ b/recipes-security/refpolicy/refpolicy/0027-file_contexts.subs_dist-set-aliase-for-root-director.patch
@@ -1,4 +1,4 @@
-From 153bdbda047a3e769983000b4c8263eb4bfd2031 Mon Sep 17 00:00:00 2001
+From 8b5ff44ba4a7819efb694cba6237bc572835628b Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Sun, 5 Apr 2020 22:03:45 +0800
 Subject: [PATCH] file_contexts.subs_dist: set aliase for /root directory
diff --git a/recipes-security/refpolicy/refpolicy/0028-policy-modules-system-logging-add-rules-for-the-syml.patch b/recipes-security/refpolicy/refpolicy/0028-policy-modules-system-logging-add-rules-for-the-syml.patch
index 5c4e023..4e97d8a 100644
--- a/recipes-security/refpolicy/refpolicy/0028-policy-modules-system-logging-add-rules-for-the-syml.patch
+++ b/recipes-security/refpolicy/refpolicy/0028-policy-modules-system-logging-add-rules-for-the-syml.patch
@@ -1,4 +1,4 @@
-From f08f3c554d70c9cd11f0297678bb4a29b8ab034b Mon Sep 17 00:00:00 2001
+From 6f73afe1d8647bd917f6c06b46b0f0cebc276776 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/system/logging: add rules for the symlink of
diff --git a/recipes-security/refpolicy/refpolicy/0029-policy-modules-system-logging-add-rules-for-syslogd-.patch b/recipes-security/refpolicy/refpolicy/0029-policy-modules-system-logging-add-rules-for-syslogd-.patch
index 2889ee8..cfef36b 100644
--- a/recipes-security/refpolicy/refpolicy/0029-policy-modules-system-logging-add-rules-for-syslogd-.patch
+++ b/recipes-security/refpolicy/refpolicy/0029-policy-modules-system-logging-add-rules-for-syslogd-.patch
@@ -1,4 +1,4 @@
-From a40442cbc570b9b028ebc1da0115bc368e165c29 Mon Sep 17 00:00:00 2001
+From 9d4f8d201dbdea28a38b5faaef9abc016bcbaab3 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 10:33:18 -0400
 Subject: [PATCH] policy/modules/system/logging: add rules for syslogd symlink
diff --git a/recipes-security/refpolicy/refpolicy/0030-policy-modules-kernel-files-add-rules-for-the-symlin.patch b/recipes-security/refpolicy/refpolicy/0030-policy-modules-kernel-files-add-rules-for-the-symlin.patch
index ee329b1..62c1593 100644
--- a/recipes-security/refpolicy/refpolicy/0030-policy-modules-kernel-files-add-rules-for-the-symlin.patch
+++ b/recipes-security/refpolicy/refpolicy/0030-policy-modules-kernel-files-add-rules-for-the-symlin.patch
@@ -1,4 +1,4 @@
-From b4110d4f30f6dc82c810ceaf24911b1fadb0e7c4 Mon Sep 17 00:00:00 2001
+From 1ed2b79828a7dd08079ec111b116f6d288450662 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/kernel/files: add rules for the symlink of
@@ -18,10 +18,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  2 files changed, 9 insertions(+)
 
 diff --git a/policy/modules/kernel/files.fc b/policy/modules/kernel/files.fc
-index 9a6f9d2d4..0f511c830 100644
+index b1728d37c..c5012e6b4 100644
 --- a/policy/modules/kernel/files.fc
 +++ b/policy/modules/kernel/files.fc
-@@ -171,6 +171,7 @@ HOME_ROOT/lost\+found/.*	<<none>>
+@@ -172,6 +172,7 @@ HOME_ROOT/lost\+found/.*	<<none>>
  # /tmp
  #
  /tmp			-d	gen_context(system_u:object_r:tmp_t,s0-mls_systemhigh)
@@ -30,10 +30,10 @@ index 9a6f9d2d4..0f511c830 100644
  /tmp/\.journal			<<none>>
  
 diff --git a/policy/modules/kernel/files.if b/policy/modules/kernel/files.if
-index 9e4344d24..14b34a467 100644
+index 472b5bb38..a2aa85b1c 100644
 --- a/policy/modules/kernel/files.if
 +++ b/policy/modules/kernel/files.if
-@@ -4780,6 +4780,7 @@ interface(`files_search_tmp',`
+@@ -4819,6 +4819,7 @@ interface(`files_search_tmp',`
  	')
  
  	allow $1 tmp_t:dir search_dir_perms;
@@ -41,7 +41,7 @@ index 9e4344d24..14b34a467 100644
  ')
  
  ########################################
-@@ -4816,6 +4817,7 @@ interface(`files_list_tmp',`
+@@ -4855,6 +4856,7 @@ interface(`files_list_tmp',`
  	')
  
  	allow $1 tmp_t:dir list_dir_perms;
@@ -49,7 +49,7 @@ index 9e4344d24..14b34a467 100644
  ')
  
  ########################################
-@@ -4852,6 +4854,7 @@ interface(`files_delete_tmp_dir_entry',`
+@@ -4891,6 +4893,7 @@ interface(`files_delete_tmp_dir_entry',`
  	')
  
  	allow $1 tmp_t:dir del_entry_dir_perms;
@@ -57,7 +57,7 @@ index 9e4344d24..14b34a467 100644
  ')
  
  ########################################
-@@ -4870,6 +4873,7 @@ interface(`files_read_generic_tmp_files',`
+@@ -4909,6 +4912,7 @@ interface(`files_read_generic_tmp_files',`
  	')
  
  	read_files_pattern($1, tmp_t, tmp_t)
@@ -65,7 +65,7 @@ index 9e4344d24..14b34a467 100644
  ')
  
  ########################################
-@@ -4888,6 +4892,7 @@ interface(`files_manage_generic_tmp_dirs',`
+@@ -4927,6 +4931,7 @@ interface(`files_manage_generic_tmp_dirs',`
  	')
  
  	manage_dirs_pattern($1, tmp_t, tmp_t)
@@ -73,7 +73,7 @@ index 9e4344d24..14b34a467 100644
  ')
  
  ########################################
-@@ -4924,6 +4929,7 @@ interface(`files_manage_generic_tmp_files',`
+@@ -4963,6 +4968,7 @@ interface(`files_manage_generic_tmp_files',`
  	')
  
  	manage_files_pattern($1, tmp_t, tmp_t)
@@ -81,7 +81,7 @@ index 9e4344d24..14b34a467 100644
  ')
  
  ########################################
-@@ -4960,6 +4966,7 @@ interface(`files_rw_generic_tmp_sockets',`
+@@ -4999,6 +5005,7 @@ interface(`files_rw_generic_tmp_sockets',`
  	')
  
  	rw_sock_files_pattern($1, tmp_t, tmp_t)
@@ -89,7 +89,7 @@ index 9e4344d24..14b34a467 100644
  ')
  
  ########################################
-@@ -5167,6 +5174,7 @@ interface(`files_tmp_filetrans',`
+@@ -5206,6 +5213,7 @@ interface(`files_tmp_filetrans',`
  	')
  
  	filetrans_pattern($1, tmp_t, $2, $3, $4)
diff --git a/recipes-security/refpolicy/refpolicy/0031-policy-modules-system-logging-fix-auditd-startup-fai.patch b/recipes-security/refpolicy/refpolicy/0031-policy-modules-system-logging-fix-auditd-startup-fai.patch
index ae6e5cf..e9e717b 100644
--- a/recipes-security/refpolicy/refpolicy/0031-policy-modules-system-logging-fix-auditd-startup-fai.patch
+++ b/recipes-security/refpolicy/refpolicy/0031-policy-modules-system-logging-fix-auditd-startup-fai.patch
@@ -1,4 +1,4 @@
-From bd4f7608f50da4a829d9042311163922776146ca Mon Sep 17 00:00:00 2001
+From d7dfe01114f9a1449ce2efd792ddf4b18fe91a45 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/system/logging: fix auditd startup failures
diff --git a/recipes-security/refpolicy/refpolicy/0032-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch b/recipes-security/refpolicy/refpolicy/0032-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch
index 9648dfd..b3dd24f 100644
--- a/recipes-security/refpolicy/refpolicy/0032-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch
+++ b/recipes-security/refpolicy/refpolicy/0032-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch
@@ -1,4 +1,4 @@
-From a23028f17d5e56e20ed3930b3075ba2d1c211b16 Mon Sep 17 00:00:00 2001
+From 3da00356bee8be72115652850d535c9ec5f1b333 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/kernel/terminal: don't audit tty_device_t in
diff --git a/recipes-security/refpolicy/refpolicy/0033-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch b/recipes-security/refpolicy/refpolicy/0033-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch
index e7b993e..073068e 100644
--- a/recipes-security/refpolicy/refpolicy/0033-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch
+++ b/recipes-security/refpolicy/refpolicy/0033-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch
@@ -1,4 +1,4 @@
-From 288c0c4b20a80846691d113a1759325b214d64f9 Mon Sep 17 00:00:00 2001
+From 8cbc09769a08cf3f5dcb611d471e5da298bde67c Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Wed, 1 Jul 2020 08:44:07 +0800
 Subject: [PATCH] policy/modules/services/rpcbind: allow rpcbind_t to create
diff --git a/recipes-security/refpolicy/refpolicy/0034-policy-modules-system-systemd-enable-support-for-sys.patch b/recipes-security/refpolicy/refpolicy/0034-policy-modules-system-systemd-enable-support-for-sys.patch
index e54d69e..556069a 100644
--- a/recipes-security/refpolicy/refpolicy/0034-policy-modules-system-systemd-enable-support-for-sys.patch
+++ b/recipes-security/refpolicy/refpolicy/0034-policy-modules-system-systemd-enable-support-for-sys.patch
@@ -1,4 +1,4 @@
-From 48da8a2589b1d5bce2609fd307ca009605d801c3 Mon Sep 17 00:00:00 2001
+From 59b8730de7af45617a6125c7e23cecf896c30ce4 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Thu, 4 Feb 2016 06:03:19 -0500
 Subject: [PATCH] policy/modules/system/systemd: enable support for
@@ -29,7 +29,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index b6d575f87..70a45ac58 100644
+index aa9198591..abc324cf1 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
 @@ -10,7 +10,7 @@ policy_module(systemd)
diff --git a/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-logging-allow-systemd-tmpfiles.patch b/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-logging-allow-systemd-tmpfiles.patch
index 05a0887..30c7d12 100644
--- a/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-logging-allow-systemd-tmpfiles.patch
+++ b/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-logging-allow-systemd-tmpfiles.patch
@@ -1,4 +1,4 @@
-From 1f7fb5de202cb30c45b4051b0bce6e9b1aa53ea8 Mon Sep 17 00:00:00 2001
+From feb50cfed6d7a08bb4e61b47f95df729a4fba9ea Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Sat, 30 Sep 2023 17:20:29 +0800
 Subject: [PATCH] policy/modules/system/logging: allow systemd-tmpfiles to
diff --git a/recipes-security/refpolicy/refpolicy/0036-policy-modules-system-systemd-allow-systemd_logind_t.patch b/recipes-security/refpolicy/refpolicy/0036-policy-modules-system-systemd-allow-systemd_logind_t.patch
index 8f218ca..568f820 100644
--- a/recipes-security/refpolicy/refpolicy/0036-policy-modules-system-systemd-allow-systemd_logind_t.patch
+++ b/recipes-security/refpolicy/refpolicy/0036-policy-modules-system-systemd-allow-systemd_logind_t.patch
@@ -1,4 +1,4 @@
-From 5d53b5ab28038eb7e326ab577e0b5e0799c9500b Mon Sep 17 00:00:00 2001
+From c21d5186e0625fd83c9d674c3284cfd98c2f02b9 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Sat, 18 Dec 2021 09:26:43 +0800
 Subject: [PATCH] policy/modules/system/systemd: allow systemd_logind_t to read
@@ -27,10 +27,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 70a45ac58..42520f9f8 100644
+index abc324cf1..ffce3c0e8 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -980,6 +980,7 @@ userdom_relabelfrom_user_runtime_dirs(systemd_logind_t)
+@@ -1006,6 +1006,7 @@ userdom_relabelfrom_user_runtime_dirs(systemd_logind_t)
  userdom_relabelto_user_runtime_dirs(systemd_logind_t)
  userdom_setattr_user_ttys(systemd_logind_t)
  userdom_use_user_ttys(systemd_logind_t)
diff --git a/recipes-security/refpolicy/refpolicy/0037-policy-modules-roles-sysadm-allow-sysadm-to-use-init.patch b/recipes-security/refpolicy/refpolicy/0037-policy-modules-roles-sysadm-allow-sysadm-to-use-init.patch
index e7406e5..7d29f23 100644
--- a/recipes-security/refpolicy/refpolicy/0037-policy-modules-roles-sysadm-allow-sysadm-to-use-init.patch
+++ b/recipes-security/refpolicy/refpolicy/0037-policy-modules-roles-sysadm-allow-sysadm-to-use-init.patch
@@ -1,4 +1,4 @@
-From 11c172fe44a22341b686dc537fde4991b7a49ed5 Mon Sep 17 00:00:00 2001
+From e561ad9a73c949768f0b4e91943a32f10a9f4acc Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 28 Oct 2022 11:56:09 +0800
 Subject: [PATCH] policy/modules/roles/sysadm: allow sysadm to use init file
@@ -19,10 +19,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
-index 936381f25..a6b0c35f3 100644
+index 08cc0e117..c08226dc3 100644
 --- a/policy/modules/roles/sysadm.te
 +++ b/policy/modules/roles/sysadm.te
-@@ -92,6 +92,8 @@ ifdef(`init_systemd',`
+@@ -95,6 +95,8 @@ ifdef(`init_systemd',`
  	# LookupDynamicUserByUID on org.freedesktop.systemd1.
  	init_dbus_chat(sysadm_t)
  
diff --git a/recipes-security/refpolicy/refpolicy/0038-policy-modules-system-systemd-systemd-user-fixes.patch b/recipes-security/refpolicy/refpolicy/0038-policy-modules-system-systemd-systemd-user-fixes.patch
index 6a48b3d..9499e77 100644
--- a/recipes-security/refpolicy/refpolicy/0038-policy-modules-system-systemd-systemd-user-fixes.patch
+++ b/recipes-security/refpolicy/refpolicy/0038-policy-modules-system-systemd-systemd-user-fixes.patch
@@ -1,4 +1,4 @@
-From 9dcbec008d4213c6649f894fda0e87b0829c56de Mon Sep 17 00:00:00 2001
+From 33164c889a759f4d4f2dc31244b9e2937cba854f Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Thu, 4 Feb 2021 10:48:54 +0800
 Subject: [PATCH] policy/modules/system/systemd: systemd --user fixes
@@ -31,10 +31,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  2 files changed, 34 insertions(+)
 
 diff --git a/policy/modules/system/systemd.if b/policy/modules/system/systemd.if
-index 6054b5038..d89ad35b1 100644
+index 28f0ad089..d7219dc37 100644
 --- a/policy/modules/system/systemd.if
 +++ b/policy/modules/system/systemd.if
-@@ -199,6 +199,36 @@ template(`systemd_role_template',`
+@@ -228,6 +228,36 @@ template(`systemd_role_template',`
  	')
  ')
  
@@ -72,10 +72,10 @@ index 6054b5038..d89ad35b1 100644
  ## <summary>
  ##   Allow the specified domain to be started as a daemon by the
 diff --git a/policy/modules/system/userdomain.if b/policy/modules/system/userdomain.if
-index 24c3cb012..80072c03e 100644
+index 088cb87b2..504747917 100644
 --- a/policy/modules/system/userdomain.if
 +++ b/policy/modules/system/userdomain.if
-@@ -1455,6 +1455,10 @@ template(`userdom_admin_user_template',`
+@@ -1464,6 +1464,10 @@ template(`userdom_admin_user_template',`
  	optional_policy(`
  		userhelper_exec($1_t)
  	')
diff --git a/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-authlogin-fix-login-errors-aft.patch b/recipes-security/refpolicy/refpolicy/0039-policy-modules-system-authlogin-fix-login-errors-aft.patch
similarity index 93%
rename from recipes-security/refpolicy/refpolicy/0055-policy-modules-system-authlogin-fix-login-errors-aft.patch
rename to recipes-security/refpolicy/refpolicy/0039-policy-modules-system-authlogin-fix-login-errors-aft.patch
index a3b5e21..ab5b967 100644
--- a/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-authlogin-fix-login-errors-aft.patch
+++ b/recipes-security/refpolicy/refpolicy/0039-policy-modules-system-authlogin-fix-login-errors-aft.patch
@@ -1,4 +1,4 @@
-From b8b80a2a07c451a1c9dfc166efcd7985f7a0a966 Mon Sep 17 00:00:00 2001
+From b81fc26631ad56608eed244c3a07f6f9b0c7e8c7 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 8 Dec 2023 14:16:26 +0800
 Subject: [PATCH] policy/modules/system/authlogin: fix login errors after
@@ -80,18 +80,18 @@ index 3a5d1ac3e..f9d50a8d4 100644
  ## <desc>
  ## <p>
 diff --git a/policy/modules/system/selinuxutil.te b/policy/modules/system/selinuxutil.te
-index f9b735081..6ec5e2cd4 100644
+index 3eedf82c3..875f0a02f 100644
 --- a/policy/modules/system/selinuxutil.te
 +++ b/policy/modules/system/selinuxutil.te
-@@ -246,6 +246,7 @@ allow newrole_t self:netlink_audit_socket { create_netlink_socket_perms nlmsg_re
+@@ -247,6 +247,7 @@ allow newrole_t self:netlink_audit_socket { create_netlink_socket_perms nlmsg_re
  read_files_pattern(newrole_t, default_context_t, default_context_t)
  read_lnk_files_pattern(newrole_t, default_context_t, default_context_t)
  
 +kernel_getattr_proc(newrole_t)
  kernel_read_system_state(newrole_t)
  kernel_read_kernel_sysctls(newrole_t)
- 
-@@ -288,6 +289,7 @@ auth_use_nsswitch(newrole_t)
+ kernel_dontaudit_getattr_proc(newrole_t)
+@@ -290,6 +291,7 @@ auth_use_nsswitch(newrole_t)
  auth_run_chk_passwd(newrole_t, newrole_roles)
  auth_run_upd_passwd(newrole_t, newrole_roles)
  auth_rw_faillog(newrole_t)
diff --git a/recipes-security/refpolicy/refpolicy/0040-policy-modules-system-systemd-allow-systemd-logind-t.patch b/recipes-security/refpolicy/refpolicy/0040-policy-modules-system-systemd-allow-systemd-logind-t.patch
new file mode 100644
index 0000000..4322590
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0040-policy-modules-system-systemd-allow-systemd-logind-t.patch
@@ -0,0 +1,38 @@
+From 1b8a639bfdce84c9b39cd9e89b6da4c1d06cc7ab Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Sun, 4 Feb 2024 19:40:32 +0800
+Subject: [PATCH] policy/modules/system/systemd: allow systemd-logind to
+ inherit local login file descriptors
+
+Fix reboot timeout error:
+$ reboot
+Failed to set wall message, ignoring: Failed to activate service 'org.freedesktop.login1': timed out (service_start_timeout=25000ms)
+Call to Reboot failed: Failed to activate service 'org.freedesktop.login1': timed out (service_start_timeout=25000ms)
+
+avc:  denied  { use } for  pid=287 comm="systemd-logind"
+path="anon_inode:[pidfd]" dev="anon_inodefs" ino=1044
+scontext=system_u:system_r:systemd_logind_t
+tcontext=system_u:system_r:local_login_t tclass=fd permissive=0
+
+Upstream-Status: Pending
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
+index ffce3c0e8..03aeb8515 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -973,6 +973,7 @@ init_stop_system(systemd_logind_t)
+ miscfiles_read_localization(systemd_logind_t)
+ 
+ locallogin_read_state(systemd_logind_t)
++locallogin_use_fds(systemd_logind_t)
+ 
+ seutil_libselinux_linked(systemd_logind_t)
+ seutil_read_default_contexts(systemd_logind_t)
+-- 
+2.25.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0039-policy-modules-system-mount-make-mount_t-domain-MLS-.patch b/recipes-security/refpolicy/refpolicy/0041-policy-modules-system-mount-make-mount_t-domain-MLS-.patch
similarity index 85%
rename from recipes-security/refpolicy/refpolicy/0039-policy-modules-system-mount-make-mount_t-domain-MLS-.patch
rename to recipes-security/refpolicy/refpolicy/0041-policy-modules-system-mount-make-mount_t-domain-MLS-.patch
index d3f035e..5ced4ae 100644
--- a/recipes-security/refpolicy/refpolicy/0039-policy-modules-system-mount-make-mount_t-domain-MLS-.patch
+++ b/recipes-security/refpolicy/refpolicy/0041-policy-modules-system-mount-make-mount_t-domain-MLS-.patch
@@ -1,4 +1,4 @@
-From 15e29022299d44fbb172560b448c531b9714616b Mon Sep 17 00:00:00 2001
+From 53a770736133d84be9cab23732811f96304bf737 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Sat, 15 Feb 2014 04:22:47 -0500
 Subject: [PATCH] policy/modules/system/mount: make mount_t domain MLS trusted
@@ -19,10 +19,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/system/mount.te b/policy/modules/system/mount.te
-index e08df77a5..30b26841f 100644
+index 8cd51d563..3fc37619e 100644
 --- a/policy/modules/system/mount.te
 +++ b/policy/modules/system/mount.te
-@@ -113,6 +113,7 @@ fs_dontaudit_write_all_image_files(mount_t)
+@@ -117,6 +117,7 @@ fs_dontaudit_write_all_image_files(mount_t)
  
  mls_file_read_all_levels(mount_t)
  mls_file_write_all_levels(mount_t)
diff --git a/recipes-security/refpolicy/refpolicy/0040-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch b/recipes-security/refpolicy/refpolicy/0042-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch
similarity index 88%
rename from recipes-security/refpolicy/refpolicy/0040-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch
rename to recipes-security/refpolicy/refpolicy/0042-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch
index 46d4851..07a11ea 100644
--- a/recipes-security/refpolicy/refpolicy/0040-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch
+++ b/recipes-security/refpolicy/refpolicy/0042-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch
@@ -1,4 +1,4 @@
-From 183070b02b5ca9aeb8fd58c8c737b5f9589e9a12 Mon Sep 17 00:00:00 2001
+From 93225203c2a3a767cd1319d6620da1fd1f91b25f Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Mon, 28 Jan 2019 14:05:18 +0800
 Subject: [PATCH] policy/modules/roles/sysadm: MLS - sysadm rw to clearance
@@ -23,10 +23,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
-index a6b0c35f3..68f7ab381 100644
+index c08226dc3..4f3207d52 100644
 --- a/policy/modules/roles/sysadm.te
 +++ b/policy/modules/roles/sysadm.te
-@@ -45,6 +45,8 @@ logging_watch_all_logs(sysadm_t)
+@@ -48,6 +48,8 @@ logging_watch_all_logs(sysadm_t)
  logging_watch_audit_log(sysadm_t)
  
  mls_process_read_all_levels(sysadm_t)
diff --git a/recipes-security/refpolicy/refpolicy/0041-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch b/recipes-security/refpolicy/refpolicy/0043-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch
similarity index 90%
rename from recipes-security/refpolicy/refpolicy/0041-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch
rename to recipes-security/refpolicy/refpolicy/0043-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch
index 9c602fe..a0b5cbc 100644
--- a/recipes-security/refpolicy/refpolicy/0041-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch
+++ b/recipes-security/refpolicy/refpolicy/0043-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch
@@ -1,4 +1,4 @@
-From 3b93adc08461ebea92d018bf7704386426f129d3 Mon Sep 17 00:00:00 2001
+From 3b260a0dc07f61b9bf873a8ac976430c80a653c3 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Fri, 23 Aug 2013 12:01:53 +0800
 Subject: [PATCH] policy/modules/services/rpc: make nfsd_t domain MLS trusted
@@ -15,10 +15,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  2 files changed, 7 insertions(+)
 
 diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kernel.te
-index e449160d8..9ef5e0b6f 100644
+index 887ca3332..f6ca775e6 100644
 --- a/policy/modules/kernel/kernel.te
 +++ b/policy/modules/kernel/kernel.te
-@@ -373,6 +373,8 @@ mls_process_read_all_levels(kernel_t)
+@@ -380,6 +380,8 @@ mls_process_read_all_levels(kernel_t)
  mls_process_write_all_levels(kernel_t)
  mls_file_write_all_levels(kernel_t)
  mls_file_read_all_levels(kernel_t)
diff --git a/recipes-security/refpolicy/refpolicy/0042-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch b/recipes-security/refpolicy/refpolicy/0044-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch
similarity index 94%
rename from recipes-security/refpolicy/refpolicy/0042-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch
rename to recipes-security/refpolicy/refpolicy/0044-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch
index 9598a41..c5943cb 100644
--- a/recipes-security/refpolicy/refpolicy/0042-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch
+++ b/recipes-security/refpolicy/refpolicy/0044-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch
@@ -1,4 +1,4 @@
-From 7b5cac323ea0638fcd5d35658f49c644f32d3442 Mon Sep 17 00:00:00 2001
+From faad8b18adb9a4f155ec0ec6317522baffff9117 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 30 Jun 2020 10:18:20 +0800
 Subject: [PATCH] policy/modules/admin/dmesg: make dmesg_t MLS trusted reading
diff --git a/recipes-security/refpolicy/refpolicy/0043-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch b/recipes-security/refpolicy/refpolicy/0045-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
similarity index 95%
rename from recipes-security/refpolicy/refpolicy/0043-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
rename to recipes-security/refpolicy/refpolicy/0045-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
index fec9532..a6db8ca 100644
--- a/recipes-security/refpolicy/refpolicy/0043-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
+++ b/recipes-security/refpolicy/refpolicy/0045-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
@@ -1,4 +1,4 @@
-From fd0d3887275237c1f1968d20972b535b9fdc9954 Mon Sep 17 00:00:00 2001
+From 2892de4636a61c237688d73c277edbf7a46163ab Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Fri, 13 Oct 2017 07:20:40 +0000
 Subject: [PATCH] policy/modules/kernel/kernel: make kernel_t MLS trusted for
@@ -59,10 +59,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kernel.te
-index 9ef5e0b6f..8082cf6b7 100644
+index f6ca775e6..b4b089823 100644
 --- a/policy/modules/kernel/kernel.te
 +++ b/policy/modules/kernel/kernel.te
-@@ -375,6 +375,8 @@ mls_file_write_all_levels(kernel_t)
+@@ -382,6 +382,8 @@ mls_file_write_all_levels(kernel_t)
  mls_file_read_all_levels(kernel_t)
  mls_socket_write_all_levels(kernel_t)
  mls_fd_use_all_levels(kernel_t)
diff --git a/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-init-make-init_t-MLS-trusted-f.patch b/recipes-security/refpolicy/refpolicy/0046-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
similarity index 93%
rename from recipes-security/refpolicy/refpolicy/0044-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
rename to recipes-security/refpolicy/refpolicy/0046-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
index 5457079..b996aa3 100644
--- a/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
+++ b/recipes-security/refpolicy/refpolicy/0046-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
@@ -1,4 +1,4 @@
-From f2fcbcde9dc16985f1ffa43329fb47d36d132bd3 Mon Sep 17 00:00:00 2001
+From f2ff5081b1a98272c803ccfd24aeea91e8d5c368 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Fri, 15 Jan 2016 03:47:05 -0500
 Subject: [PATCH] policy/modules/system/init: make init_t MLS trusted for
@@ -27,7 +27,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 4 insertions(+)
 
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index d19734d6f..8b9b8aa9a 100644
+index 809019873..be9c75155 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
 @@ -238,6 +238,10 @@ mls_process_write_all_levels(init_t)
diff --git a/recipes-security/refpolicy/refpolicy/0045-policy-modules-system-systemd-make-systemd-tmpfiles_.patch b/recipes-security/refpolicy/refpolicy/0047-policy-modules-system-systemd-make-systemd-tmpfiles_.patch
similarity index 92%
rename from recipes-security/refpolicy/refpolicy/0045-policy-modules-system-systemd-make-systemd-tmpfiles_.patch
rename to recipes-security/refpolicy/refpolicy/0047-policy-modules-system-systemd-make-systemd-tmpfiles_.patch
index c61b403..1b90ba6 100644
--- a/recipes-security/refpolicy/refpolicy/0045-policy-modules-system-systemd-make-systemd-tmpfiles_.patch
+++ b/recipes-security/refpolicy/refpolicy/0047-policy-modules-system-systemd-make-systemd-tmpfiles_.patch
@@ -1,4 +1,4 @@
-From ff749bb5ba3786283c348bb2db160794ba74e20c Mon Sep 17 00:00:00 2001
+From 3fab5273a7721e603f2034badeaf73949aaa59a2 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Thu, 4 Feb 2016 06:03:19 -0500
 Subject: [PATCH] policy/modules/system/systemd: make systemd-tmpfiles_t domain
@@ -43,10 +43,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 5 insertions(+)
 
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 42520f9f8..7a2041956 100644
+index 03aeb8515..e483d8aea 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -1813,6 +1813,11 @@ sysnet_relabel_config(systemd_tmpfiles_t)
+@@ -1877,6 +1877,11 @@ sysnet_relabel_config(systemd_tmpfiles_t)
  
  systemd_log_parse_environment(systemd_tmpfiles_t)
  
diff --git a/recipes-security/refpolicy/refpolicy/0046-policy-modules-system-systemd-systemd-make-systemd_-.patch b/recipes-security/refpolicy/refpolicy/0048-policy-modules-system-systemd-systemd-make-systemd_-.patch
similarity index 89%
rename from recipes-security/refpolicy/refpolicy/0046-policy-modules-system-systemd-systemd-make-systemd_-.patch
rename to recipes-security/refpolicy/refpolicy/0048-policy-modules-system-systemd-systemd-make-systemd_-.patch
index da588ed..e3d5db1 100644
--- a/recipes-security/refpolicy/refpolicy/0046-policy-modules-system-systemd-systemd-make-systemd_-.patch
+++ b/recipes-security/refpolicy/refpolicy/0048-policy-modules-system-systemd-systemd-make-systemd_-.patch
@@ -1,4 +1,4 @@
-From a1d15d213fee3e40129968dbd9928d5012d541f7 Mon Sep 17 00:00:00 2001
+From 4eaa766ef11cb053f010bcde5121e76031aae799 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Thu, 18 Jun 2020 09:59:58 +0800
 Subject: [PATCH] policy/modules/system/systemd: systemd-*: make systemd_*_t
@@ -43,10 +43,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 12 insertions(+)
 
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 7a2041956..52c7b5346 100644
+index e483d8aea..a0e6bb405 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -383,6 +383,9 @@ files_search_var_lib(systemd_backlight_t)
+@@ -391,6 +391,9 @@ files_search_var_lib(systemd_backlight_t)
  fs_getattr_all_fs(systemd_backlight_t)
  fs_search_cgroup_dirs(systemd_backlight_t)
  
@@ -56,7 +56,7 @@ index 7a2041956..52c7b5346 100644
  #######################################
  #
  # Binfmt local policy
-@@ -545,6 +548,9 @@ term_use_unallocated_ttys(systemd_generator_t)
+@@ -560,6 +563,9 @@ term_use_unallocated_ttys(systemd_generator_t)
  
  udev_read_runtime_files(systemd_generator_t)
  
@@ -66,7 +66,7 @@ index 7a2041956..52c7b5346 100644
  ifdef(`distro_gentoo',`
  	corecmd_shell_entry_type(systemd_generator_t)
  ')
-@@ -982,6 +988,9 @@ userdom_setattr_user_ttys(systemd_logind_t)
+@@ -1009,6 +1015,9 @@ userdom_setattr_user_ttys(systemd_logind_t)
  userdom_use_user_ttys(systemd_logind_t)
  domain_read_all_domains_state(systemd_logind_t)
  
@@ -76,7 +76,7 @@ index 7a2041956..52c7b5346 100644
  # Needed to work around patch not yet merged into the systemd-logind supported on RHEL 7.x
  # The change in systemd by Nicolas Iooss on 02-Feb-2016 with hash 4b51966cf6c06250036e428608da92f8640beb96
  # should fix the problem where user directories in /run/user/$UID/ are not getting the proper context
-@@ -1527,6 +1536,9 @@ udev_read_runtime_files(systemd_rfkill_t)
+@@ -1591,6 +1600,9 @@ udev_read_runtime_files(systemd_rfkill_t)
  
  systemd_log_parse_environment(systemd_rfkill_t)
  
diff --git a/recipes-security/refpolicy/refpolicy/0047-policy-modules-system-logging-add-the-syslogd_t-to-t.patch b/recipes-security/refpolicy/refpolicy/0049-policy-modules-system-logging-add-the-syslogd_t-to-t.patch
similarity index 95%
rename from recipes-security/refpolicy/refpolicy/0047-policy-modules-system-logging-add-the-syslogd_t-to-t.patch
rename to recipes-security/refpolicy/refpolicy/0049-policy-modules-system-logging-add-the-syslogd_t-to-t.patch
index 451e6bc..6ea1efd 100644
--- a/recipes-security/refpolicy/refpolicy/0047-policy-modules-system-logging-add-the-syslogd_t-to-t.patch
+++ b/recipes-security/refpolicy/refpolicy/0049-policy-modules-system-logging-add-the-syslogd_t-to-t.patch
@@ -1,4 +1,4 @@
-From 8c45c5d48f7125ce47252c6ea36ed771c9baaf4d Mon Sep 17 00:00:00 2001
+From de58aa981e1c05ce06938704089c7c87c765add6 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/system/logging: add the syslogd_t to trusted
diff --git a/recipes-security/refpolicy/refpolicy/0048-policy-modules-system-init-make-init_t-MLS-trusted-f.patch b/recipes-security/refpolicy/refpolicy/0050-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
similarity index 91%
rename from recipes-security/refpolicy/refpolicy/0048-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
rename to recipes-security/refpolicy/refpolicy/0050-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
index ebeee4f..9089cb2 100644
--- a/recipes-security/refpolicy/refpolicy/0048-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
+++ b/recipes-security/refpolicy/refpolicy/0050-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
@@ -1,4 +1,4 @@
-From 6867f764b99e48cfa6557e664c9ee8ae8947eb08 Mon Sep 17 00:00:00 2001
+From a9ceec99a527007a91ba6685d0b86c327fbb6443 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 28 May 2019 16:41:37 +0800
 Subject: [PATCH] policy/modules/system/init: make init_t MLS trusted for
@@ -17,7 +17,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index 8b9b8aa9a..bd2ca0802 100644
+index be9c75155..458906ac5 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
 @@ -237,6 +237,7 @@ mls_file_write_all_levels(init_t)
diff --git a/recipes-security/refpolicy/refpolicy/0049-policy-modules-system-init-all-init_t-to-read-any-le.patch b/recipes-security/refpolicy/refpolicy/0051-policy-modules-system-init-all-init_t-to-read-any-le.patch
similarity index 92%
rename from recipes-security/refpolicy/refpolicy/0049-policy-modules-system-init-all-init_t-to-read-any-le.patch
rename to recipes-security/refpolicy/refpolicy/0051-policy-modules-system-init-all-init_t-to-read-any-le.patch
index 3c418dd..687e1c9 100644
--- a/recipes-security/refpolicy/refpolicy/0049-policy-modules-system-init-all-init_t-to-read-any-le.patch
+++ b/recipes-security/refpolicy/refpolicy/0051-policy-modules-system-init-all-init_t-to-read-any-le.patch
@@ -1,4 +1,4 @@
-From ad9b0e1542804060ac3cea69129c224074da6766 Mon Sep 17 00:00:00 2001
+From 980d9d3f3c3e1e3517971715c351ec7b747105d0 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Wed, 3 Feb 2016 04:16:06 -0500
 Subject: [PATCH] policy/modules/system/init: all init_t to read any level
@@ -22,7 +22,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 3 insertions(+)
 
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index bd2ca0802..e94a29a73 100644
+index 458906ac5..c2380d8b4 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
 @@ -243,6 +243,9 @@ mls_key_write_all_levels(init_t)
diff --git a/recipes-security/refpolicy/refpolicy/0050-policy-modules-system-logging-allow-auditd_t-to-writ.patch b/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-logging-allow-auditd_t-to-writ.patch
similarity index 95%
rename from recipes-security/refpolicy/refpolicy/0050-policy-modules-system-logging-allow-auditd_t-to-writ.patch
rename to recipes-security/refpolicy/refpolicy/0052-policy-modules-system-logging-allow-auditd_t-to-writ.patch
index 3931641..64a1dfc 100644
--- a/recipes-security/refpolicy/refpolicy/0050-policy-modules-system-logging-allow-auditd_t-to-writ.patch
+++ b/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-logging-allow-auditd_t-to-writ.patch
@@ -1,4 +1,4 @@
-From 315a53e50dd8957787e3a71c57ffc8ac46d0c474 Mon Sep 17 00:00:00 2001
+From 2b64eabf0cf8982bbb3c537e84fc3a99085858d3 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Thu, 25 Feb 2016 04:25:08 -0500
 Subject: [PATCH] policy/modules/system/logging: allow auditd_t to write socket
diff --git a/recipes-security/refpolicy/refpolicy/0051-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch b/recipes-security/refpolicy/refpolicy/0053-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
similarity index 84%
rename from recipes-security/refpolicy/refpolicy/0051-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
rename to recipes-security/refpolicy/refpolicy/0053-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
index 9c38e7d..4f3253d 100644
--- a/recipes-security/refpolicy/refpolicy/0051-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
+++ b/recipes-security/refpolicy/refpolicy/0053-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
@@ -1,4 +1,4 @@
-From 1c275b335fd047c678b449bf90a75a7ac48c2b38 Mon Sep 17 00:00:00 2001
+From 35351cd7cb07622b5e43254b95d7801a5669358d Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Thu, 31 Oct 2019 17:35:59 +0800
 Subject: [PATCH] policy/modules/kernel/kernel: make kernel_t MLS trusted for
@@ -15,10 +15,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kernel.te
-index 8082cf6b7..63c2087f7 100644
+index b4b089823..5835d28b2 100644
 --- a/policy/modules/kernel/kernel.te
 +++ b/policy/modules/kernel/kernel.te
-@@ -377,6 +377,7 @@ mls_socket_write_all_levels(kernel_t)
+@@ -384,6 +384,7 @@ mls_socket_write_all_levels(kernel_t)
  mls_fd_use_all_levels(kernel_t)
  # https://bugzilla.redhat.com/show_bug.cgi?id=667370
  mls_file_downgrade(kernel_t)
diff --git a/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-setrans-allow-setrans_t-use-fd.patch b/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-setrans-allow-setrans_t-use-fd.patch
similarity index 93%
rename from recipes-security/refpolicy/refpolicy/0052-policy-modules-system-setrans-allow-setrans_t-use-fd.patch
rename to recipes-security/refpolicy/refpolicy/0054-policy-modules-system-setrans-allow-setrans_t-use-fd.patch
index a0a726d..5118ef8 100644
--- a/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-setrans-allow-setrans_t-use-fd.patch
+++ b/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-setrans-allow-setrans_t-use-fd.patch
@@ -1,4 +1,4 @@
-From 95f5c28ce9ed0a6d955afa758988ef8542644a64 Mon Sep 17 00:00:00 2001
+From 6d6e2d34ec63771a01ef258c98f1ad49efdc2f67 Mon Sep 17 00:00:00 2001
 From: Roy Li <rongqing.li@windriver.com>
 Date: Sat, 22 Feb 2014 13:35:38 +0800
 Subject: [PATCH] policy/modules/system/setrans: allow setrans_t use fd at any
diff --git a/recipes-security/refpolicy/refpolicy/0053-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch b/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch
similarity index 88%
rename from recipes-security/refpolicy/refpolicy/0053-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch
rename to recipes-security/refpolicy/refpolicy/0055-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch
index d1c0775..3e75257 100644
--- a/recipes-security/refpolicy/refpolicy/0053-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch
+++ b/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch
@@ -1,4 +1,4 @@
-From 7af0a6b367cb21943d111c9f6386e40efdc02907 Mon Sep 17 00:00:00 2001
+From 3d5751659380eb04b63f8fc1e6113132dd1310d7 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Mon, 22 Feb 2021 11:28:12 +0800
 Subject: [PATCH] policy/modules/system/systemd: make *_systemd_t MLS trusted
@@ -24,10 +24,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 3 insertions(+)
 
 diff --git a/policy/modules/system/systemd.if b/policy/modules/system/systemd.if
-index d89ad35b1..00ac2f27e 100644
+index d7219dc37..7717e0034 100644
 --- a/policy/modules/system/systemd.if
 +++ b/policy/modules/system/systemd.if
-@@ -197,6 +197,9 @@ template(`systemd_role_template',`
+@@ -226,6 +226,9 @@ template(`systemd_role_template',`
  		xdg_read_config_files($1_systemd_t)
  		xdg_read_data_files($1_systemd_t)
  	')
diff --git a/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-logging-make-syslogd_runtime_t.patch b/recipes-security/refpolicy/refpolicy/0056-policy-modules-system-logging-make-syslogd_runtime_t.patch
similarity index 96%
rename from recipes-security/refpolicy/refpolicy/0054-policy-modules-system-logging-make-syslogd_runtime_t.patch
rename to recipes-security/refpolicy/refpolicy/0056-policy-modules-system-logging-make-syslogd_runtime_t.patch
index 3be7027..d07fa91 100644
--- a/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-logging-make-syslogd_runtime_t.patch
+++ b/recipes-security/refpolicy/refpolicy/0056-policy-modules-system-logging-make-syslogd_runtime_t.patch
@@ -1,4 +1,4 @@
-From 1536eaea2cc68074f55ca50eff2d129b7e1894d8 Mon Sep 17 00:00:00 2001
+From 2476910f6d7f116148bb9311498b5c98692c1ef3 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Sat, 18 Dec 2021 17:31:45 +0800
 Subject: [PATCH] policy/modules/system/logging: make syslogd_runtime_t MLS
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index c6b964f..6ea1fc2 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -54,23 +54,24 @@ SRC_URI += " \
         file://0036-policy-modules-system-systemd-allow-systemd_logind_t.patch \
         file://0037-policy-modules-roles-sysadm-allow-sysadm-to-use-init.patch \
         file://0038-policy-modules-system-systemd-systemd-user-fixes.patch \
-        file://0039-policy-modules-system-mount-make-mount_t-domain-MLS-.patch \
-        file://0040-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch \
-        file://0041-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch \
-        file://0042-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch \
-        file://0043-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch \
-        file://0044-policy-modules-system-init-make-init_t-MLS-trusted-f.patch \
-        file://0045-policy-modules-system-systemd-make-systemd-tmpfiles_.patch \
-        file://0046-policy-modules-system-systemd-systemd-make-systemd_-.patch \
-        file://0047-policy-modules-system-logging-add-the-syslogd_t-to-t.patch \
-        file://0048-policy-modules-system-init-make-init_t-MLS-trusted-f.patch \
-        file://0049-policy-modules-system-init-all-init_t-to-read-any-le.patch \
-        file://0050-policy-modules-system-logging-allow-auditd_t-to-writ.patch \
-        file://0051-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch \
-        file://0052-policy-modules-system-setrans-allow-setrans_t-use-fd.patch \
-        file://0053-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch \
-        file://0054-policy-modules-system-logging-make-syslogd_runtime_t.patch \
-        file://0055-policy-modules-system-authlogin-fix-login-errors-aft.patch \
+        file://0039-policy-modules-system-authlogin-fix-login-errors-aft.patch \
+        file://0040-policy-modules-system-systemd-allow-systemd-logind-t.patch \
+        file://0041-policy-modules-system-mount-make-mount_t-domain-MLS-.patch \
+        file://0042-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch \
+        file://0043-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch \
+        file://0044-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch \
+        file://0045-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch \
+        file://0046-policy-modules-system-init-make-init_t-MLS-trusted-f.patch \
+        file://0047-policy-modules-system-systemd-make-systemd-tmpfiles_.patch \
+        file://0048-policy-modules-system-systemd-systemd-make-systemd_-.patch \
+        file://0049-policy-modules-system-logging-add-the-syslogd_t-to-t.patch \
+        file://0050-policy-modules-system-init-make-init_t-MLS-trusted-f.patch \
+        file://0051-policy-modules-system-init-all-init_t-to-read-any-le.patch \
+        file://0052-policy-modules-system-logging-allow-auditd_t-to-writ.patch \
+        file://0053-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch \
+        file://0054-policy-modules-system-setrans-allow-setrans_t-use-fd.patch \
+        file://0055-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch \
+        file://0056-policy-modules-system-logging-make-syslogd_runtime_t.patch \
         "
 
 S = "${WORKDIR}/refpolicy"
diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-security/refpolicy/refpolicy_git.inc
index 917d2f4..e13fc96 100644
--- a/recipes-security/refpolicy/refpolicy_git.inc
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -1,8 +1,8 @@
-PV = "2.20231002+git"
+PV = "2.20240226+git"
 
 SRC_URI = "git://github.com/SELinuxProject/refpolicy.git;protocol=https;branch=main;name=refpolicy;destsuffix=refpolicy"
 
-SRCREV_refpolicy ?= "504feb7a98e2e70f774d6fe7107b5d1a5f2c6124"
+SRCREV_refpolicy ?= "fa84ee8fc04af56cced5ab8ed7abfb1abbd246dc"
 
 UPSTREAM_CHECK_GITTAGREGEX = "RELEASE_(?P<pver>\d+_\d+)"
 
-- 
2.25.1


