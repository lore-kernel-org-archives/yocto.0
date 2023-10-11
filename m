Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6908DCD98E8
	for <webhook@archiver.kernel.org>; Wed, 11 Oct 2023 02:50:48 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.8604.1696992644168562544
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Oct 2023 19:50:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=kcJwwWN/;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=864817ff8e=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 39B2ogtR025319;
	Wed, 11 Oct 2023 02:50:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=Us+wNfIFLPOtOxcBrX
	k/ngn6kkVIhH6xo/+iAwt6TLo=; b=kcJwwWN/KdCPGYms7RfISd7tan0/8D+PX0
	pXvIEivu/36Ba8BMpWWLAMhcZ/ca3qp11dreZg5l/LVMYFdVjY/xAcfiuNyM7d1S
	nPQIrRvd02gq8mMUkSnM/bRocRxX+Zv79/g49ydQkjfTbN54woh+WmKnoxp+DKEN
	IUKdJoV3epuzH9UN4X5yBZYXQHExYdNWR9tdIXoXQlrA6iRMmRnugJ+qmJlgW7lk
	SjMNVS/Npyz3wVnYbJNN7nEyU6gKvFmKyzL5pKzAP09WArrNwWQRIGankvxCW2lp
	jXcBRv3KlMIaBDGb79v/dyniodnONLpxT/qRFVWKBtzfZSioEJPg==
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2100.outbound.protection.outlook.com [104.47.58.100])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3tnht881q7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 02:50:41 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i+D0m7XIsN5x7cZRL8Jlps9OCaZmXMAp/13PXYKt3qUp3BPQH5U17k5fqp6QGZmNthaNZQ1YxwpqRP3qr7CJcpgx5TfgnUdknvLQjHQuPzElUz2ZYjWUNSTkVa7hVhRAQ85BYiNHjOkDUnN1HbwxrghelYKPfqDYHJ0xc5jJ1tqQoRjD6RA4+Fej6PnXw3imBFOdei27wQqz+3m3ZaLn8j1SsdLADza68V1f7SDd3X5Dlzk+ts1Wlexajp32DzEY81mPJAx0nnriV4EAoolgH2C/TSLic9xOvUXcz3MZiSG6QAtcMUdPTfgFG8SfaGJJMMOQelnJmMoVfncoXcEpjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Us+wNfIFLPOtOxcBrXk/ngn6kkVIhH6xo/+iAwt6TLo=;
 b=J2bTIa01NkQzFMFvP7D9EsdVBltzX1FXiMSvaJ5/HVjAtKtWa2bgUvAhev5eIIfJOnADh+L7y+QoaGK5oq2By2lUeb65DGQUTiyDBDSEEQZRFmpobojG+bV5qlqv6ffQbBAmrM0wN8NE9OlH5iajRIVWP9rB/vwjHejk/j2m3PPcuRkFFOmi9Tmg9vGrhH84CbVVrbGgTdIo9kWh8AyXTgo2Tqb3d7bX4owxPhBtKyKxzkjBPIiJa4XbRX+DPDiKO5Ubm4pkcaet9i84L1VbHPYrVCx8FV1Ira29iqBQ+M7bGBawLcowRcIy0spJhztDMcH8QLJ/VgjpH5ld2CSKhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by DM4PR11MB7182.namprd11.prod.outlook.com (2603:10b6:8:112::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.41; Wed, 11 Oct
 2023 02:50:37 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::96db:9814:2d71:a957]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::96db:9814:2d71:a957%6]) with mapi id 15.20.6863.043; Wed, 11 Oct 2023
 02:50:37 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH] refpolicy: upgrade 20221101+git -> 20231002+git
Date: Wed, 11 Oct 2023 10:50:24 +0800
Message-Id: <20231011025024.1346188-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2P153CA0026.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:190::18) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|DM4PR11MB7182:EE_
X-MS-Office365-Filtering-Correlation-Id: eb7bc728-20dd-4bdb-5c54-08dbca04d8cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	iOvQxDatxqg1UZubqfcfZi8XeAKR+SHQlewnpoPE0fNdvLdap59+fDKKBcFkmQp3N0uuVWPLaIz6le+Kp3696+JoNcWl7Ssd1bG50fClOrYakcuyHghP5ITWBzr8L1A1Umq/40ghbKHSll/kLUaTvrkA54+pbHQFA8+jdpcvayVDFN/YfT874QCayKkWKF+/IMo70dmg95G3xV2iaZUecT9NK1WtQ0XQC/jxLPmNUH1ofvYO/B13oGZQrpWxTzYSmWAaQJU83SMzxdRFT2w8SuEVWNzH6qyOmzs/DtpPGDwRwt167ApBljyi+JcIpRmcCNgwh682X3ord031M8Ub+w058fLoqu4WzQfuzq+j1OUAIZWjPVvIGUECDfLtLxyxnfDnySqyfV7qdQYj2yBV/Cx+QqsBk/KsKfGwY6lxwClsNhtRaloA8UUrS9yKGP8jQAKcnWEbNhMFBRLF8choKSCaTGyr8JZ0K5ULiIIoV2ZCXmHaa/tSQVrg9tJ5X8jJTSvKB9ohMBRoMOPlPn6XiX2sM5KcrfgAGQXtIEMGm6rkOIMAO4C/gXILwkvK7oJJHCbUbGgc2T7DeSsmuQGD2D/CwSZsyLaK9Iq4BnTJ1v4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(39850400004)(136003)(346002)(376002)(396003)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(26005)(1076003)(2616005)(6486002)(478600001)(966005)(36756003)(6666004)(6506007)(6512007)(86362001)(52116002)(53546011)(38350700002)(38100700002)(5660300002)(41300700001)(66556008)(66946007)(66476007)(316002)(30864003)(44832011)(2906002)(8936002)(8676002)(83380400001)(579004)(559001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?Pvjrwfhxa/EPwjZhzMG+Xueui6lLPki1RSQGEPcxili/s2vi7cz9sLw2v/fk?=
 =?us-ascii?Q?wEzQyKxrSNIZ/Qf7+RuQYDbCDZapv2wTllzla752VXMMhkpt80rDJ7VHaSMp?=
 =?us-ascii?Q?Pwdsi0bV3LzrrUkozwkj6TIfy/74ZkPWpGKxfgf6PT+64a8CJ5ij55Cg/kSe?=
 =?us-ascii?Q?ugIajUteHgBds0SBlL/+B419Zd0UIclXI3V3DAcYRTwVRArbDiBZf3Bzhqq3?=
 =?us-ascii?Q?PAgFjO7cghUqoS8XjbGRoLlXprKF8yT6d4lJ+XVvlzKfr//Q8q6xxFI76sxV?=
 =?us-ascii?Q?IvTVIDppBqwbelf8Y2J/UeZRwSQkr5T219fGzNNfbR21xLxClfw94fr9tWhg?=
 =?us-ascii?Q?u6/MB40F20gzZaK03a9DrJCfx1PHa9rNoUjcqCA4aEICupGXxPAnn6WScMZH?=
 =?us-ascii?Q?RtHdeEhlRv39WsM6rl5dA8usl/n6Ee1uCY5SuJay/O1CSd/72RxspW0XwPoW?=
 =?us-ascii?Q?w9vplTQzNw4Mu+Ifq98RJSvnXCpOO9EZkAaAT9CjBm9fKyrEEGsPK2GIkVKx?=
 =?us-ascii?Q?WzeAZEBhCqBTTO4R+uN9iygeu/xCQ+5NWqm1R1rRprZEMbpIhP1h1jY/RPdZ?=
 =?us-ascii?Q?7Mjq/BQYth5wneuf8Bj399vtrn660EIz7MnTyP9MXNOHeYqp9o4UYoy6H0nM?=
 =?us-ascii?Q?F5/4rS7CPttKisEJNLu0y3JQLiy/XWELsROSFSR02vkhM4M3rTKpD25w0KnJ?=
 =?us-ascii?Q?4cPAvZhHjFqiYTa2W3ASc2fsWJVhRoM5rrxlRMzav+mpW6NaKLRxnkPjedj+?=
 =?us-ascii?Q?1OrRe2O6DNixvqr+nEdl8StacLDBe/6hG2p05nqLLGXqMBbCwE1cibsOvInQ?=
 =?us-ascii?Q?zZ6EYGJ2ybEg43K+kpxQawfhxHoGc+57QAquRmlqeihxJcHysEp4lTo9c8FG?=
 =?us-ascii?Q?SBuuY18NfY79bemTUp534MCcHuA6PgDk3fFp3j232pRcRb+z8OmknIiC6lkw?=
 =?us-ascii?Q?qAGh6dDjMgCZnfqePMYsKfhqR1s2IS3dNTEx+4gjhU7symjMYoE7sWHkGivg?=
 =?us-ascii?Q?bCfq05aSy1+RMGB2iAwoM0IvqyNMymlCbz7xvQQI5C3ZS2WP9pD6udJJoAuC?=
 =?us-ascii?Q?DABQEVKQBYyzP+XkYJtbUS0vMC+B7ck+xNFlF5EYyVgMnqn9IFlUlf0Q10Dw?=
 =?us-ascii?Q?i7r2SLM3aCwjW/bLfTFwvm6D86dehlXDfP2w0bjcm30XZDrV3ar2RmUbAXhO?=
 =?us-ascii?Q?gQrCKBtyBQrSwJVoPBcJ0Fij9CZP1JpD5vyP0ymbqcEywii9DkZc/t+uGv5Q?=
 =?us-ascii?Q?o9Qgd8A0mPKNEDF+qEKWSkPPtdM9nJCdjdgVOxnec//Hn8oUI0XUYAiEpN58?=
 =?us-ascii?Q?CiXjFOkrh5jfP+1NRIJ0zjrng3bIWdbH4/+6WY/Ku2cqQ6NmescalusDWky1?=
 =?us-ascii?Q?yQIdDYM5J2wHpfFi5SMJWnw1fwNHJ5xo/hXpG4nVmzfV9hnfNXWXYK4NngTY?=
 =?us-ascii?Q?LFRr25+funKgt1tCpH2FzADHuJc5CnWBwU3oYW0ALWv/hhFSHGc3EMP01oA+?=
 =?us-ascii?Q?vAgWpk/QFq2p6mu2xeRIz6Y6Duu/uq8SW+2PteZZ6zw6VHmeiCN6I/Xem5xl?=
 =?us-ascii?Q?/lKR9+3BDeISNHKHk8PWJnHIo+PWHBvC4YPkAl5g?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb7bc728-20dd-4bdb-5c54-08dbca04d8cb
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2023 02:50:37.3995
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RnI/hxv81LkwGaJ57OnTzYToGDrBhKRTiE96ls0H4eon9gmdiLneZyX/dbj2Eo4RiMLUXYBfWIGl0fsnccn9Mw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7182
X-Proofpoint-GUID: V_XyirgyRbjqhdN7ydRkquQkEsX3UzLU
X-Proofpoint-ORIG-GUID: V_XyirgyRbjqhdN7ydRkquQkEsX3UzLU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-10_19,2023-10-10_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 spamscore=0 bulkscore=0 mlxscore=0 malwarescore=0
 suspectscore=0 clxscore=1015 mlxlogscore=999 phishscore=0
 priorityscore=1501 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2309180000 definitions=main-2310110024
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Oct 2023 02:50:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61313

* Switch branch to main.
* Update to latest git rev.
* Drop obsolete and useless patches.
* Refresh patches.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...tile-alias-common-var-volatile-paths.patch |  2 +-
 ...inimum-make-sysadmin-module-optional.patch | 10 +--
 ...ed-make-unconfined_u-the-default-sel.patch |  4 +-
 ...box-set-aliases-for-bin-sbin-and-usr.patch |  2 +-
 ...icy-minimum-make-xdg-module-optional.patch |  6 +-
 ...y-policy-to-common-yocto-hostname-al.patch |  2 +-
 ...sr-bin-bash-context-to-bin-bash.bash.patch |  6 +-
 ...abel-resolv.conf-in-var-run-properly.patch |  2 +-
 ...-apply-login-context-to-login.shadow.patch |  8 +-
 ...-fc-hwclock-add-hwclock-alternatives.patch |  2 +-
 ...g-apply-policy-to-dmesg-alternatives.patch |  2 +-
 ...ssh-apply-policy-to-ssh-alternatives.patch |  2 +-
 ...ply-policy-to-network-commands-alter.patch |  2 +-
 ...ly-rpm_exec-policy-to-cpio-binaries.patch} |  2 +-
 ...v-apply-policy-to-udevadm-in-libexec.patch | 29 -------
 ...-su-apply-policy-to-su-alternatives.patch} |  2 +-
 ...c-fstools-fix-real-path-for-fstools.patch} | 15 ++--
 ...ix-update-alternatives-for-sysvinit.patch} | 16 ++--
 ...-apply-policy-to-brctl-alternatives.patch} |  2 +-
 ...pply-policy-to-nologin-alternatives.patch} |  6 +-
 ...pply-policy-to-sulogin-alternatives.patch} |  2 +-
 ...p-apply-policy-to-ntpd-alternatives.patch} |  4 +-
 ...ply-policy-to-kerberos-alternatives.patch} |  2 +-
 ...p-apply-policy-to-ldap-alternatives.patch} |  2 +-
 ...ly-policy-to-postgresql-alternative.patch} |  2 +-
 ...apply-policy-to-screen-alternatives.patch} |  2 +-
 ...ly-policy-to-usermanage-alternative.patch} |  2 +-
 ...tty-add-file-context-to-start_getty.patch} |  2 +-
 ...-apply-policy-to-vlock-alternatives.patch} |  2 +-
 ...or-init-scripts-and-systemd-service.patch} |  4 +-
 ...s_dist-set-aliase-for-root-director.patch} |  2 +-
 ...stem-logging-add-rules-for-the-syml.patch} | 35 +++-----
 ...stem-logging-add-rules-for-syslogd-.patch} |  6 +-
 ...rnel-files-add-rules-for-the-symlin.patch} | 24 +++---
 ...stem-logging-fix-auditd-startup-fai.patch} |  8 +-
 ...rnel-terminal-don-t-audit-tty_devic.patch} |  2 +-
 ...rvices-rpcbind-allow-rpcbind_t-to-c.patch} |  2 +-
 ...ystem-systemd-enable-support-for-sys.patch | 46 ++++++++++
 ...ystem-logging-allow-systemd-tmpfiles.patch | 43 ++++++++++
 ...ystem-systemd-enable-support-for-sys.patch | 64 --------------
 ...ystem-systemd-allow-systemd_logind_t.patch |  6 +-
 ...oles-sysadm-allow-sysadm-to-use-init.patch |  6 +-
 ...es-system-systemd-systemd-user-fixes.patch | 83 ++++++++++---------
 ...ystem-mount-make-mount_t-domain-MLS-.patch |  6 +-
 ...oles-sysadm-MLS-sysadm-rw-to-clearan.patch |  4 +-
 ...ervices-rpc-make-nfsd_t-domain-MLS-t.patch |  6 +-
 ...dmin-dmesg-make-dmesg_t-MLS-trusted-.patch |  2 +-
 ...ernel-kernel-make-kernel_t-MLS-trust.patch |  6 +-
 ...ystem-init-make-init_t-MLS-trusted-f.patch |  6 +-
 ...ystem-systemd-make-systemd-tmpfiles_.patch |  6 +-
 ...ystem-systemd-systemd-make-systemd_-.patch | 12 +--
 ...ystem-logging-add-the-syslogd_t-to-t.patch |  6 +-
 ...ystem-init-make-init_t-MLS-trusted-f.patch |  6 +-
 ...ystem-init-all-init_t-to-read-any-le.patch |  6 +-
 ...ystem-logging-allow-auditd_t-to-writ.patch |  6 +-
 ...ernel-kernel-make-kernel_t-MLS-trust.patch |  6 +-
 ...ystem-setrans-allow-setrans_t-use-fd.patch |  2 +-
 ...ystem-systemd-make-_systemd_t-MLS-tr.patch |  6 +-
 ...ystem-logging-make-syslogd_runtime_t.patch |  6 +-
 .../refpolicy/refpolicy_common.inc            | 50 +++++------
 recipes-security/refpolicy/refpolicy_git.inc  |  6 +-
 61 files changed, 304 insertions(+), 317 deletions(-)
 rename recipes-security/refpolicy/refpolicy/{0012-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch => 0011-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch} (92%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0011-fc-udev-apply-policy-to-udevadm-in-libexec.patch
 rename recipes-security/refpolicy/refpolicy/{0013-fc-su-apply-policy-to-su-alternatives.patch => 0012-fc-su-apply-policy-to-su-alternatives.patch} (93%)
 rename recipes-security/refpolicy/refpolicy/{0014-fc-fstools-fix-real-path-for-fstools.patch => 0013-fc-fstools-fix-real-path-for-fstools.patch} (89%)
 rename recipes-security/refpolicy/refpolicy/{0015-fc-init-fix-update-alternatives-for-sysvinit.patch => 0014-fc-init-fix-update-alternatives-for-sysvinit.patch} (86%)
 rename recipes-security/refpolicy/refpolicy/{0016-fc-brctl-apply-policy-to-brctl-alternatives.patch => 0015-fc-brctl-apply-policy-to-brctl-alternatives.patch} (92%)
 rename recipes-security/refpolicy/refpolicy/{0017-fc-corecommands-apply-policy-to-nologin-alternatives.patch => 0016-fc-corecommands-apply-policy-to-nologin-alternatives.patch} (88%)
 rename recipes-security/refpolicy/refpolicy/{0018-fc-locallogin-apply-policy-to-sulogin-alternatives.patch => 0017-fc-locallogin-apply-policy-to-sulogin-alternatives.patch} (93%)
 rename recipes-security/refpolicy/refpolicy/{0019-fc-ntp-apply-policy-to-ntpd-alternatives.patch => 0018-fc-ntp-apply-policy-to-ntpd-alternatives.patch} (89%)
 rename recipes-security/refpolicy/refpolicy/{0020-fc-kerberos-apply-policy-to-kerberos-alternatives.patch => 0019-fc-kerberos-apply-policy-to-kerberos-alternatives.patch} (97%)
 rename recipes-security/refpolicy/refpolicy/{0021-fc-ldap-apply-policy-to-ldap-alternatives.patch => 0020-fc-ldap-apply-policy-to-ldap-alternatives.patch} (96%)
 rename recipes-security/refpolicy/refpolicy/{0022-fc-postgresql-apply-policy-to-postgresql-alternative.patch => 0021-fc-postgresql-apply-policy-to-postgresql-alternative.patch} (96%)
 rename recipes-security/refpolicy/refpolicy/{0023-fc-screen-apply-policy-to-screen-alternatives.patch => 0022-fc-screen-apply-policy-to-screen-alternatives.patch} (93%)
 rename recipes-security/refpolicy/refpolicy/{0024-fc-usermanage-apply-policy-to-usermanage-alternative.patch => 0023-fc-usermanage-apply-policy-to-usermanage-alternative.patch} (97%)
 rename recipes-security/refpolicy/refpolicy/{0025-fc-getty-add-file-context-to-start_getty.patch => 0024-fc-getty-add-file-context-to-start_getty.patch} (92%)
 rename recipes-security/refpolicy/refpolicy/{0026-fc-vlock-apply-policy-to-vlock-alternatives.patch => 0025-fc-vlock-apply-policy-to-vlock-alternatives.patch} (92%)
 rename recipes-security/refpolicy/refpolicy/{0027-fc-add-fcontext-for-init-scripts-and-systemd-service.patch => 0026-fc-add-fcontext-for-init-scripts-and-systemd-service.patch} (96%)
 rename recipes-security/refpolicy/refpolicy/{0028-file_contexts.subs_dist-set-aliase-for-root-director.patch => 0027-file_contexts.subs_dist-set-aliase-for-root-director.patch} (92%)
 rename recipes-security/refpolicy/refpolicy/{0029-policy-modules-system-logging-add-rules-for-the-syml.patch => 0028-policy-modules-system-logging-add-rules-for-the-syml.patch} (72%)
 rename recipes-security/refpolicy/refpolicy/{0030-policy-modules-system-logging-add-rules-for-syslogd-.patch => 0029-policy-modules-system-logging-add-rules-for-syslogd-.patch} (87%)
 rename recipes-security/refpolicy/refpolicy/{0031-policy-modules-kernel-files-add-rules-for-the-symlin.patch => 0030-policy-modules-kernel-files-add-rules-for-the-symlin.patch} (77%)
 rename recipes-security/refpolicy/refpolicy/{0032-policy-modules-system-logging-fix-auditd-startup-fai.patch => 0031-policy-modules-system-logging-fix-auditd-startup-fai.patch} (88%)
 rename recipes-security/refpolicy/refpolicy/{0033-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch => 0032-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch} (94%)
 rename recipes-security/refpolicy/refpolicy/{0034-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch => 0033-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch} (94%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0034-policy-modules-system-systemd-enable-support-for-sys.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0035-policy-modules-system-logging-allow-systemd-tmpfiles.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0035-policy-modules-system-systemd-enable-support-for-sys.patch

diff --git a/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch b/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
index 1605d90..2b879d2 100644
--- a/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
+++ b/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
@@ -1,4 +1,4 @@
-From ee66387c393af77b88c833f5d271efe48036112c Mon Sep 17 00:00:00 2001
+From 1d96fd0c6906566d40cb4c4f2c8a30fe80ed4ad4 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 16:14:09 -0400
 Subject: [PATCH] fc/subs/volatile: alias common /var/volatile paths
diff --git a/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sysadmin-module-optional.patch b/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sysadmin-module-optional.patch
index 657c5cd..50e0339 100644
--- a/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sysadmin-module-optional.patch
+++ b/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sysadmin-module-optional.patch
@@ -1,4 +1,4 @@
-From 0e3b79ae0ae468640d7092c9a91a91d258d07645 Mon Sep 17 00:00:00 2001
+From 6c5f86f8c5e5fda6ded270753d0535a31ebfbab0 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 5 Apr 2019 11:53:28 -0400
 Subject: [PATCH] refpolicy-minimum: make sysadmin module optional
@@ -22,10 +22,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  2 files changed, 11 insertions(+), 7 deletions(-)
 
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index 671b5aef3..8ce3d5956 100644
+index e94a29a73..6b1879bb4 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -615,13 +615,15 @@ ifdef(`init_systemd',`
+@@ -638,13 +638,15 @@ ifdef(`init_systemd',`
  		unconfined_write_keys(init_t)
  	')
  ',`
@@ -48,10 +48,10 @@ index 671b5aef3..8ce3d5956 100644
  	')
  ')
 diff --git a/policy/modules/system/locallogin.te b/policy/modules/system/locallogin.te
-index 7728de804..a8ff403dd 100644
+index 8330be8a9..933e94b24 100644
 --- a/policy/modules/system/locallogin.te
 +++ b/policy/modules/system/locallogin.te
-@@ -274,7 +274,9 @@ userdom_use_unpriv_users_fds(sulogin_t)
+@@ -277,7 +277,9 @@ userdom_use_unpriv_users_fds(sulogin_t)
  userdom_search_user_home_dirs(sulogin_t)
  userdom_use_user_ptys(sulogin_t)
  
diff --git a/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch b/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch
index 64e658e..fb92e6c 100644
--- a/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch
+++ b/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch
@@ -1,4 +1,4 @@
-From 60b4e5ea5668a71b2a0660461daecea66fd11d51 Mon Sep 17 00:00:00 2001
+From c26f856ac11b3d61aff56c4e512bedca811cf004 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Mon, 20 Apr 2020 11:50:03 +0800
 Subject: [PATCH] refpolicy-targeted: make unconfined_u the default selinux
@@ -38,7 +38,7 @@ index ce614b41b..c0903d98b 100644
 +root:unconfined_u:s0-mcs_systemhigh
 +__default__:unconfined_u:s0
 diff --git a/policy/modules/system/unconfined.te b/policy/modules/system/unconfined.te
-index d116a1b9b..32720f68f 100644
+index 6431d35da..922e7e285 100644
 --- a/policy/modules/system/unconfined.te
 +++ b/policy/modules/system/unconfined.te
 @@ -20,6 +20,11 @@ type unconfined_execmem_t alias ada_t;
diff --git a/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch b/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
index ef00602..26669ba 100644
--- a/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
+++ b/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
@@ -1,4 +1,4 @@
-From 8fa6c5b7b99a50b09e9dffd142c066fa41319750 Mon Sep 17 00:00:00 2001
+From c94348cbaacfdc47a50cc93c8d52295f09b3c1f2 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 20:48:10 -0400
 Subject: [PATCH] fc/subs/busybox: set aliases for bin, sbin and usr
diff --git a/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-make-xdg-module-optional.patch b/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-make-xdg-module-optional.patch
index 25afa3b..75ff75e 100644
--- a/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-make-xdg-module-optional.patch
+++ b/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-make-xdg-module-optional.patch
@@ -1,4 +1,4 @@
-From 9a8d6b634d4f714fc63125be5e23228c565d1aaf Mon Sep 17 00:00:00 2001
+From c69e55b03777ee15701ebb9b53b288fc773dbd87 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Wed, 29 Sep 2021 11:08:49 +0800
 Subject: [PATCH] refpolicy-minimum: make xdg module optional
@@ -15,10 +15,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 6 insertions(+), 2 deletions(-)
 
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 7b717d3ba..3b07b368d 100644
+index 52c7b5346..d9f21b6bf 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -298,10 +298,14 @@ init_unit_file(systemd_user_manager_unit_t)
+@@ -305,10 +305,14 @@ init_unit_file(systemd_user_manager_unit_t)
  
  type systemd_conf_home_t;
  init_unit_file(systemd_conf_home_t)
diff --git a/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch b/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
index 94ac31b..140af4e 100644
--- a/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
+++ b/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
@@ -1,4 +1,4 @@
-From 5a0bbd1920205f488b6a4565f7217b9d0825067b Mon Sep 17 00:00:00 2001
+From cb1c9ffb1c8f2c615731c2afae81b687a59b94c4 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] fc/hostname: apply policy to common yocto hostname
diff --git a/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch b/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
index eff0255..13a0343 100644
--- a/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
+++ b/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
@@ -1,4 +1,4 @@
-From c9219d2f7be1e641b3866b770a9b570c12333b93 Mon Sep 17 00:00:00 2001
+From 23f156d0adc37eb9f6f8308c28da4db0bac48200 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 21:37:32 -0400
 Subject: [PATCH] fc/bash: apply /usr/bin/bash context to /bin/bash.bash
@@ -15,10 +15,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
-index 0c05c693d..b70940928 100644
+index f031e1704..30ac066e4 100644
 --- a/policy/modules/kernel/corecommands.fc
 +++ b/policy/modules/kernel/corecommands.fc
-@@ -142,6 +142,7 @@ ifdef(`distro_gentoo',`
+@@ -144,6 +144,7 @@ ifdef(`distro_gentoo',`
  /usr/bin(/.*)?				gen_context(system_u:object_r:bin_t,s0)
  /usr/bin/d?ash			--	gen_context(system_u:object_r:shell_exec_t,s0)
  /usr/bin/bash			--	gen_context(system_u:object_r:shell_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch b/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
index 06c8087..e3d9e93 100644
--- a/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
+++ b/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
@@ -1,4 +1,4 @@
-From 51631a7eaaea1fab4b36a2488497cf725317ce6e Mon Sep 17 00:00:00 2001
+From 10df3192847b50162c7f404b6c5bd1a010951112 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 4 Apr 2019 10:45:03 -0400
 Subject: [PATCH] fc/resolv.conf: label resolv.conf in var/run/ properly
diff --git a/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-context-to-login.shadow.patch b/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-context-to-login.shadow.patch
index 70c5566..a1125d8 100644
--- a/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-context-to-login.shadow.patch
+++ b/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-context-to-login.shadow.patch
@@ -1,4 +1,4 @@
-From 1c61b10d21a22d4110bc880b23477295f6cd9efb Mon Sep 17 00:00:00 2001
+From 61900d0f5576fa0cd8297a011f60cb9a40cefc7b Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 21:43:53 -0400
 Subject: [PATCH] fc/login: apply login context to login.shadow
@@ -12,11 +12,11 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/system/authlogin.fc b/policy/modules/system/authlogin.fc
-index 50efcff7b..5cb48882c 100644
+index adb53a05a..a25a9d607 100644
 --- a/policy/modules/system/authlogin.fc
 +++ b/policy/modules/system/authlogin.fc
-@@ -6,6 +6,7 @@
- /etc/tcb(/.*)?		--	gen_context(system_u:object_r:shadow_t,s0)
+@@ -8,6 +8,7 @@
+ /etc/security/opasswd\.old	--	gen_context(system_u:object_r:shadow_history_t,s0)
  
  /usr/bin/login		--	gen_context(system_u:object_r:login_exec_t,s0)
 +/usr/bin/login\.shadow		--	gen_context(system_u:object_r:login_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy/0007-fc-hwclock-add-hwclock-alternatives.patch b/recipes-security/refpolicy/refpolicy/0007-fc-hwclock-add-hwclock-alternatives.patch
index 2f9f703..26bc8a0 100644
--- a/recipes-security/refpolicy/refpolicy/0007-fc-hwclock-add-hwclock-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0007-fc-hwclock-add-hwclock-alternatives.patch
@@ -1,4 +1,4 @@
-From e4d7d9fb1cb157bf205874e1a81d5719017866a1 Mon Sep 17 00:00:00 2001
+From e393201b6f3c0242ccc41dd86eada8be97326a08 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 21:59:18 -0400
 Subject: [PATCH] fc/hwclock: add hwclock alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0008-fc-dmesg-apply-policy-to-dmesg-alternatives.patch b/recipes-security/refpolicy/refpolicy/0008-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
index 6e576a8..5449754 100644
--- a/recipes-security/refpolicy/refpolicy/0008-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0008-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
@@ -1,4 +1,4 @@
-From ac6536f04674ccc051744e6eb3644e68fe38da33 Mon Sep 17 00:00:00 2001
+From 2d5ca79ed3f775878b91d76e952644b1347d5f9e Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 08:26:55 -0400
 Subject: [PATCH] fc/dmesg: apply policy to dmesg alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0009-fc-ssh-apply-policy-to-ssh-alternatives.patch b/recipes-security/refpolicy/refpolicy/0009-fc-ssh-apply-policy-to-ssh-alternatives.patch
index 611c0d3..7fada95 100644
--- a/recipes-security/refpolicy/refpolicy/0009-fc-ssh-apply-policy-to-ssh-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0009-fc-ssh-apply-policy-to-ssh-alternatives.patch
@@ -1,4 +1,4 @@
-From a56887ca448b60ad6715348b2cfe533e8109a040 Mon Sep 17 00:00:00 2001
+From d676349ee55f8c1c16b9d5c6770b9137391d396e Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 09:20:58 -0400
 Subject: [PATCH] fc/ssh: apply policy to ssh alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0010-fc-sysnetwork-apply-policy-to-network-commands-alter.patch b/recipes-security/refpolicy/refpolicy/0010-fc-sysnetwork-apply-policy-to-network-commands-alter.patch
index 7af147d..5886168 100644
--- a/recipes-security/refpolicy/refpolicy/0010-fc-sysnetwork-apply-policy-to-network-commands-alter.patch
+++ b/recipes-security/refpolicy/refpolicy/0010-fc-sysnetwork-apply-policy-to-network-commands-alter.patch
@@ -1,4 +1,4 @@
-From 47a5e9a0bd4960534998798ab1a5ab62e77b2b61 Mon Sep 17 00:00:00 2001
+From 6730f53849cce4d2586a6e6540f3e7aae1117236 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Tue, 9 Jun 2015 21:22:52 +0530
 Subject: [PATCH] fc/sysnetwork: apply policy to network commands alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0012-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch b/recipes-security/refpolicy/refpolicy/0011-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
similarity index 92%
rename from recipes-security/refpolicy/refpolicy/0012-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
rename to recipes-security/refpolicy/refpolicy/0011-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
index bf562d6..2d1d287 100644
--- a/recipes-security/refpolicy/refpolicy/0012-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
+++ b/recipes-security/refpolicy/refpolicy/0011-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
@@ -1,4 +1,4 @@
-From 00533fded8e2264f8bdc68c8ed79644a10e4e2ad Mon Sep 17 00:00:00 2001
+From cfb5cec05c98a65d8eb086868444a6e74e1f96bf Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 09:54:07 -0400
 Subject: [PATCH] fc/rpm: apply rpm_exec policy to cpio binaries
diff --git a/recipes-security/refpolicy/refpolicy/0011-fc-udev-apply-policy-to-udevadm-in-libexec.patch b/recipes-security/refpolicy/refpolicy/0011-fc-udev-apply-policy-to-udevadm-in-libexec.patch
deleted file mode 100644
index 434fc1d..0000000
--- a/recipes-security/refpolicy/refpolicy/0011-fc-udev-apply-policy-to-udevadm-in-libexec.patch
+++ /dev/null
@@ -1,29 +0,0 @@
-From bbc6eb20e9509a61236051df7a5fa552a8f2654d Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe_macdonald@mentor.com>
-Date: Fri, 29 Mar 2019 09:36:08 -0400
-Subject: [PATCH] fc/udev: apply policy to udevadm in libexec
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/udev.fc | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/system/udev.fc b/policy/modules/system/udev.fc
-index 7898ff01c..bc717e60c 100644
---- a/policy/modules/system/udev.fc
-+++ b/policy/modules/system/udev.fc
-@@ -24,6 +24,8 @@ ifdef(`distro_debian',`
- /usr/sbin/udevstart	--	gen_context(system_u:object_r:udev_exec_t,s0)
- /usr/sbin/wait_for_sysfs --	gen_context(system_u:object_r:udev_exec_t,s0)
- 
-+/usr/libexec/udevadm	--	gen_context(system_u:object_r:udevadm_exec_t,s0)
-+
- ifdef(`distro_redhat',`
- /usr/sbin/start_udev --	gen_context(system_u:object_r:udev_exec_t,s0)
- ')
--- 
-2.25.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0013-fc-su-apply-policy-to-su-alternatives.patch b/recipes-security/refpolicy/refpolicy/0012-fc-su-apply-policy-to-su-alternatives.patch
similarity index 93%
rename from recipes-security/refpolicy/refpolicy/0013-fc-su-apply-policy-to-su-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0012-fc-su-apply-policy-to-su-alternatives.patch
index 32d38f1..f1138d6 100644
--- a/recipes-security/refpolicy/refpolicy/0013-fc-su-apply-policy-to-su-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0012-fc-su-apply-policy-to-su-alternatives.patch
@@ -1,4 +1,4 @@
-From 4b202554e646a60000c1acad7bbdfae1078bdc10 Mon Sep 17 00:00:00 2001
+From dd1663aaffec1f7b36097c742094c9c239342d9f Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Thu, 13 Feb 2014 00:33:07 -0500
 Subject: [PATCH] fc/su: apply policy to su alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0014-fc-fstools-fix-real-path-for-fstools.patch b/recipes-security/refpolicy/refpolicy/0013-fc-fstools-fix-real-path-for-fstools.patch
similarity index 89%
rename from recipes-security/refpolicy/refpolicy/0014-fc-fstools-fix-real-path-for-fstools.patch
rename to recipes-security/refpolicy/refpolicy/0013-fc-fstools-fix-real-path-for-fstools.patch
index de0aad7..4bc2bbc 100644
--- a/recipes-security/refpolicy/refpolicy/0014-fc-fstools-fix-real-path-for-fstools.patch
+++ b/recipes-security/refpolicy/refpolicy/0013-fc-fstools-fix-real-path-for-fstools.patch
@@ -1,4 +1,4 @@
-From f64a5d6a2f2e72ae6c5122220eb759117b6384c8 Mon Sep 17 00:00:00 2001
+From 9cd6000d7d01cee2eb92038bf4361f603736200b Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Mon, 27 Jan 2014 03:54:01 -0500
 Subject: [PATCH] fc/fstools: fix real path for fstools
@@ -10,11 +10,11 @@ Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/system/fstools.fc | 11 +++++++++++
- 1 file changed, 11 insertions(+)
+ policy/modules/system/fstools.fc | 10 ++++++++++
+ 1 file changed, 10 insertions(+)
 
 diff --git a/policy/modules/system/fstools.fc b/policy/modules/system/fstools.fc
-index 8fbd5ce44..2842afbcc 100644
+index 63423802d..124109a68 100644
 --- a/policy/modules/system/fstools.fc
 +++ b/policy/modules/system/fstools.fc
 @@ -58,7 +58,9 @@
@@ -41,7 +41,7 @@ index 8fbd5ce44..2842afbcc 100644
  /usr/sbin/install-mbr		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/jfs_.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/losetup.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-@@ -83,24 +88,30 @@
+@@ -83,13 +88,16 @@
  /usr/sbin/make_reiser4		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/mkdosfs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/mke2fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
@@ -58,10 +58,7 @@ index 8fbd5ce44..2842afbcc 100644
  /usr/sbin/partx			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/raidautorun		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/raidstart		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/sbin/raw			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/reiserfs(ck|tune)	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/resize.*fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/scsi_info		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+@@ -99,8 +107,10 @@
  /usr/sbin/sfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/smartctl		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/swapoff		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy/0015-fc-init-fix-update-alternatives-for-sysvinit.patch b/recipes-security/refpolicy/refpolicy/0014-fc-init-fix-update-alternatives-for-sysvinit.patch
similarity index 86%
rename from recipes-security/refpolicy/refpolicy/0015-fc-init-fix-update-alternatives-for-sysvinit.patch
rename to recipes-security/refpolicy/refpolicy/0014-fc-init-fix-update-alternatives-for-sysvinit.patch
index 5e9c197..746a8be 100644
--- a/recipes-security/refpolicy/refpolicy/0015-fc-init-fix-update-alternatives-for-sysvinit.patch
+++ b/recipes-security/refpolicy/refpolicy/0014-fc-init-fix-update-alternatives-for-sysvinit.patch
@@ -1,4 +1,4 @@
-From 6d2a96abd1e292d0c34ff77501e618cfc193655f Mon Sep 17 00:00:00 2001
+From 4c6db6e9d637c6ecde7d104ae3544d18004d2a2c Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] fc/init: fix update-alternatives for sysvinit
@@ -15,21 +15,21 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  3 files changed, 4 insertions(+)
 
 diff --git a/policy/modules/admin/shutdown.fc b/policy/modules/admin/shutdown.fc
-index bf51c103f..91ed72be0 100644
+index 89d682d36..354f4d1d9 100644
 --- a/policy/modules/admin/shutdown.fc
 +++ b/policy/modules/admin/shutdown.fc
-@@ -5,5 +5,6 @@
- /usr/lib/upstart/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
+@@ -7,5 +7,6 @@
  
+ /usr/sbin/halt		--	gen_context(system_u:object_r:shutdown_exec_t,s0)
  /usr/sbin/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
 +/usr/sbin/shutdown\.sysvinit	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
  
  /run/shutdown\.pid	--	gen_context(system_u:object_r:shutdown_runtime_t,s0)
 diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
-index b70940928..e6077fd5b 100644
+index 30ac066e4..1edc035f3 100644
 --- a/policy/modules/kernel/corecommands.fc
 +++ b/policy/modules/kernel/corecommands.fc
-@@ -151,6 +151,8 @@ ifdef(`distro_gentoo',`
+@@ -153,6 +153,8 @@ ifdef(`distro_gentoo',`
  /usr/bin/mkfs\.cramfs		--	gen_context(system_u:object_r:bin_t,s0)
  /usr/bin/mksh			--	gen_context(system_u:object_r:shell_exec_t,s0)
  /usr/bin/mountpoint		--	gen_context(system_u:object_r:bin_t,s0)
@@ -39,10 +39,10 @@ index b70940928..e6077fd5b 100644
  /usr/bin/sash			--	gen_context(system_u:object_r:shell_exec_t,s0)
  /usr/bin/sesh			--	gen_context(system_u:object_r:shell_exec_t,s0)
 diff --git a/policy/modules/system/init.fc b/policy/modules/system/init.fc
-index 1a99e5824..7f0b7c699 100644
+index 9ebd6094c..e9e9eae85 100644
 --- a/policy/modules/system/init.fc
 +++ b/policy/modules/system/init.fc
-@@ -41,6 +41,7 @@ ifdef(`distro_gentoo',`
+@@ -48,6 +48,7 @@ ifdef(`distro_gentoo',`
  /usr/libexec/dcc/stop-.* --	gen_context(system_u:object_r:initrc_exec_t,s0)
  
  /usr/sbin/init(ng)?	--	gen_context(system_u:object_r:init_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy/0016-fc-brctl-apply-policy-to-brctl-alternatives.patch b/recipes-security/refpolicy/refpolicy/0015-fc-brctl-apply-policy-to-brctl-alternatives.patch
similarity index 92%
rename from recipes-security/refpolicy/refpolicy/0016-fc-brctl-apply-policy-to-brctl-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0015-fc-brctl-apply-policy-to-brctl-alternatives.patch
index b0ba609..c592e8e 100644
--- a/recipes-security/refpolicy/refpolicy/0016-fc-brctl-apply-policy-to-brctl-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0015-fc-brctl-apply-policy-to-brctl-alternatives.patch
@@ -1,4 +1,4 @@
-From 2e9c22ee83b7d4fea7b177ca8111c06e69338db9 Mon Sep 17 00:00:00 2001
+From e95592bb4138b7bbf3e7725144ac2cbe9cecc4cd Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:19:54 +0800
 Subject: [PATCH] fc/brctl: apply policy to brctl alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0017-fc-corecommands-apply-policy-to-nologin-alternatives.patch b/recipes-security/refpolicy/refpolicy/0016-fc-corecommands-apply-policy-to-nologin-alternatives.patch
similarity index 88%
rename from recipes-security/refpolicy/refpolicy/0017-fc-corecommands-apply-policy-to-nologin-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0016-fc-corecommands-apply-policy-to-nologin-alternatives.patch
index 58ac463..8047863 100644
--- a/recipes-security/refpolicy/refpolicy/0017-fc-corecommands-apply-policy-to-nologin-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0016-fc-corecommands-apply-policy-to-nologin-alternatives.patch
@@ -1,4 +1,4 @@
-From c43f2d7ddf1d0c2185796e0297dd9f85b9663aaf Mon Sep 17 00:00:00 2001
+From 788d2c125f18dce9e0871fb260b4a0c394b9db53 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:21:51 +0800
 Subject: [PATCH] fc/corecommands: apply policy to nologin alternatives
@@ -11,10 +11,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
-index e6077fd5b..0df59e837 100644
+index 1edc035f3..258d97c3c 100644
 --- a/policy/modules/kernel/corecommands.fc
 +++ b/policy/modules/kernel/corecommands.fc
-@@ -306,6 +306,8 @@ ifdef(`distro_debian',`
+@@ -308,6 +308,8 @@ ifdef(`distro_debian',`
  /usr/sbin/insmod_ksymoops_clean	--	gen_context(system_u:object_r:bin_t,s0)
  /usr/sbin/mkfs\.cramfs		--	gen_context(system_u:object_r:bin_t,s0)
  /usr/sbin/nologin		--	gen_context(system_u:object_r:shell_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy/0018-fc-locallogin-apply-policy-to-sulogin-alternatives.patch b/recipes-security/refpolicy/refpolicy/0017-fc-locallogin-apply-policy-to-sulogin-alternatives.patch
similarity index 93%
rename from recipes-security/refpolicy/refpolicy/0018-fc-locallogin-apply-policy-to-sulogin-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0017-fc-locallogin-apply-policy-to-sulogin-alternatives.patch
index 3c43254..3dd959c 100644
--- a/recipes-security/refpolicy/refpolicy/0018-fc-locallogin-apply-policy-to-sulogin-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0017-fc-locallogin-apply-policy-to-sulogin-alternatives.patch
@@ -1,4 +1,4 @@
-From 11c95928e325aea7e4c41a9cdf969f9bdd306611 Mon Sep 17 00:00:00 2001
+From 03199ca4933ef2760c0e575a76e90521117ea4c3 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:43:28 +0800
 Subject: [PATCH] fc/locallogin: apply policy to sulogin alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0019-fc-ntp-apply-policy-to-ntpd-alternatives.patch b/recipes-security/refpolicy/refpolicy/0018-fc-ntp-apply-policy-to-ntpd-alternatives.patch
similarity index 89%
rename from recipes-security/refpolicy/refpolicy/0019-fc-ntp-apply-policy-to-ntpd-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0018-fc-ntp-apply-policy-to-ntpd-alternatives.patch
index cbae4c5..1d902f2 100644
--- a/recipes-security/refpolicy/refpolicy/0019-fc-ntp-apply-policy-to-ntpd-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0018-fc-ntp-apply-policy-to-ntpd-alternatives.patch
@@ -1,4 +1,4 @@
-From 5841a5bd25e6017b6ccff4f56628ad6e950eadad Mon Sep 17 00:00:00 2001
+From ee9c65a2d3db145309bd2898223f8229915c304c Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:45:23 +0800
 Subject: [PATCH] fc/ntp: apply policy to ntpd alternatives
@@ -11,7 +11,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/services/ntp.fc b/policy/modules/services/ntp.fc
-index cd69ea5d5..49ffe6f68 100644
+index 9243f3304..e13cf6a9b 100644
 --- a/policy/modules/services/ntp.fc
 +++ b/policy/modules/services/ntp.fc
 @@ -25,6 +25,7 @@
diff --git a/recipes-security/refpolicy/refpolicy/0020-fc-kerberos-apply-policy-to-kerberos-alternatives.patch b/recipes-security/refpolicy/refpolicy/0019-fc-kerberos-apply-policy-to-kerberos-alternatives.patch
similarity index 97%
rename from recipes-security/refpolicy/refpolicy/0020-fc-kerberos-apply-policy-to-kerberos-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0019-fc-kerberos-apply-policy-to-kerberos-alternatives.patch
index 76e7fe9..778ed43 100644
--- a/recipes-security/refpolicy/refpolicy/0020-fc-kerberos-apply-policy-to-kerberos-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0019-fc-kerberos-apply-policy-to-kerberos-alternatives.patch
@@ -1,4 +1,4 @@
-From 8126ec521e5a0f72da098f5d90b5b5b392006b7c Mon Sep 17 00:00:00 2001
+From 435ae64d593cc09b1109d0457f7ba084259090e8 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:55:05 +0800
 Subject: [PATCH] fc/kerberos: apply policy to kerberos alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0021-fc-ldap-apply-policy-to-ldap-alternatives.patch b/recipes-security/refpolicy/refpolicy/0020-fc-ldap-apply-policy-to-ldap-alternatives.patch
similarity index 96%
rename from recipes-security/refpolicy/refpolicy/0021-fc-ldap-apply-policy-to-ldap-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0020-fc-ldap-apply-policy-to-ldap-alternatives.patch
index a46c9c9..baad70c 100644
--- a/recipes-security/refpolicy/refpolicy/0021-fc-ldap-apply-policy-to-ldap-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0020-fc-ldap-apply-policy-to-ldap-alternatives.patch
@@ -1,4 +1,4 @@
-From c71ea08245069001b56aadd7bb0af28e019f45e4 Mon Sep 17 00:00:00 2001
+From a1c0776ac6405d1b6aeadf07cc222f5cc9daa424 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 11:06:13 +0800
 Subject: [PATCH] fc/ldap: apply policy to ldap alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0022-fc-postgresql-apply-policy-to-postgresql-alternative.patch b/recipes-security/refpolicy/refpolicy/0021-fc-postgresql-apply-policy-to-postgresql-alternative.patch
similarity index 96%
rename from recipes-security/refpolicy/refpolicy/0022-fc-postgresql-apply-policy-to-postgresql-alternative.patch
rename to recipes-security/refpolicy/refpolicy/0021-fc-postgresql-apply-policy-to-postgresql-alternative.patch
index 0a0464f..8bce781 100644
--- a/recipes-security/refpolicy/refpolicy/0022-fc-postgresql-apply-policy-to-postgresql-alternative.patch
+++ b/recipes-security/refpolicy/refpolicy/0021-fc-postgresql-apply-policy-to-postgresql-alternative.patch
@@ -1,4 +1,4 @@
-From 72726c1bc51628e6eb56e758f1e334f9b9a0f17e Mon Sep 17 00:00:00 2001
+From dd6dc74388daffba5c336059fbc046e632bee0f6 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 11:13:16 +0800
 Subject: [PATCH] fc/postgresql: apply policy to postgresql alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0023-fc-screen-apply-policy-to-screen-alternatives.patch b/recipes-security/refpolicy/refpolicy/0022-fc-screen-apply-policy-to-screen-alternatives.patch
similarity index 93%
rename from recipes-security/refpolicy/refpolicy/0023-fc-screen-apply-policy-to-screen-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0022-fc-screen-apply-policy-to-screen-alternatives.patch
index e95cb3c..7fba90e 100644
--- a/recipes-security/refpolicy/refpolicy/0023-fc-screen-apply-policy-to-screen-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0022-fc-screen-apply-policy-to-screen-alternatives.patch
@@ -1,4 +1,4 @@
-From 003a22f73563ef7b8b4ab6a6a0cb4a920a43570f Mon Sep 17 00:00:00 2001
+From 7d78632d5553fcddf12dd57de56ff15b057625ab Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 11:15:33 +0800
 Subject: [PATCH] fc/screen: apply policy to screen alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0024-fc-usermanage-apply-policy-to-usermanage-alternative.patch b/recipes-security/refpolicy/refpolicy/0023-fc-usermanage-apply-policy-to-usermanage-alternative.patch
similarity index 97%
rename from recipes-security/refpolicy/refpolicy/0024-fc-usermanage-apply-policy-to-usermanage-alternative.patch
rename to recipes-security/refpolicy/refpolicy/0023-fc-usermanage-apply-policy-to-usermanage-alternative.patch
index a92b809..b65e3b0 100644
--- a/recipes-security/refpolicy/refpolicy/0024-fc-usermanage-apply-policy-to-usermanage-alternative.patch
+++ b/recipes-security/refpolicy/refpolicy/0023-fc-usermanage-apply-policy-to-usermanage-alternative.patch
@@ -1,4 +1,4 @@
-From fdf7c2d27b6ecf08c88bb98e52a7d8284ac828af Mon Sep 17 00:00:00 2001
+From 074eff7d27765a1f489f3a787d7f6f64a890f07e Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 11:25:34 +0800
 Subject: [PATCH] fc/usermanage: apply policy to usermanage alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0025-fc-getty-add-file-context-to-start_getty.patch b/recipes-security/refpolicy/refpolicy/0024-fc-getty-add-file-context-to-start_getty.patch
similarity index 92%
rename from recipes-security/refpolicy/refpolicy/0025-fc-getty-add-file-context-to-start_getty.patch
rename to recipes-security/refpolicy/refpolicy/0024-fc-getty-add-file-context-to-start_getty.patch
index f6fa8a0..b1a85b4 100644
--- a/recipes-security/refpolicy/refpolicy/0025-fc-getty-add-file-context-to-start_getty.patch
+++ b/recipes-security/refpolicy/refpolicy/0024-fc-getty-add-file-context-to-start_getty.patch
@@ -1,4 +1,4 @@
-From 863ece4fd9815997486c04ce89180707435669e4 Mon Sep 17 00:00:00 2001
+From dca38e304bb64a5c3a18d02521f56ffe461ec126 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 16:07:30 +0800
 Subject: [PATCH] fc/getty: add file context to start_getty
diff --git a/recipes-security/refpolicy/refpolicy/0026-fc-vlock-apply-policy-to-vlock-alternatives.patch b/recipes-security/refpolicy/refpolicy/0025-fc-vlock-apply-policy-to-vlock-alternatives.patch
similarity index 92%
rename from recipes-security/refpolicy/refpolicy/0026-fc-vlock-apply-policy-to-vlock-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0025-fc-vlock-apply-policy-to-vlock-alternatives.patch
index 7f63b14..de97331 100644
--- a/recipes-security/refpolicy/refpolicy/0026-fc-vlock-apply-policy-to-vlock-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0025-fc-vlock-apply-policy-to-vlock-alternatives.patch
@@ -1,4 +1,4 @@
-From 5bb33b7d9d7915399cca7d8c6fbdd9c0e27c1cd8 Mon Sep 17 00:00:00 2001
+From ae142b7d993a7f03b6ff1cf4f7a49c3aec77fe1c Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Wed, 18 Dec 2019 15:04:41 +0800
 Subject: [PATCH] fc/vlock: apply policy to vlock alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0027-fc-add-fcontext-for-init-scripts-and-systemd-service.patch b/recipes-security/refpolicy/refpolicy/0026-fc-add-fcontext-for-init-scripts-and-systemd-service.patch
similarity index 96%
rename from recipes-security/refpolicy/refpolicy/0027-fc-add-fcontext-for-init-scripts-and-systemd-service.patch
rename to recipes-security/refpolicy/refpolicy/0026-fc-add-fcontext-for-init-scripts-and-systemd-service.patch
index cfb2fd5..c47984d 100644
--- a/recipes-security/refpolicy/refpolicy/0027-fc-add-fcontext-for-init-scripts-and-systemd-service.patch
+++ b/recipes-security/refpolicy/refpolicy/0026-fc-add-fcontext-for-init-scripts-and-systemd-service.patch
@@ -1,4 +1,4 @@
-From 574df1810c8f32bbf24b223f72f6622b0df7e82c Mon Sep 17 00:00:00 2001
+From 1096b2eb1172506006691e90769e51a086b8374f Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 30 Jun 2020 10:45:57 +0800
 Subject: [PATCH] fc: add fcontext for init scripts and systemd service files
@@ -48,7 +48,7 @@ index 75c2f0617..fa881ba2e 100644
  
  /usr/bin/nfsdcld	--	gen_context(system_u:object_r:rpcd_exec_t,s0)
 diff --git a/policy/modules/system/logging.fc b/policy/modules/system/logging.fc
-index 5681acb51..4ff5f990a 100644
+index 3b0dea51b..0ce2bec4b 100644
 --- a/policy/modules/system/logging.fc
 +++ b/policy/modules/system/logging.fc
 @@ -24,6 +24,7 @@
diff --git a/recipes-security/refpolicy/refpolicy/0028-file_contexts.subs_dist-set-aliase-for-root-director.patch b/recipes-security/refpolicy/refpolicy/0027-file_contexts.subs_dist-set-aliase-for-root-director.patch
similarity index 92%
rename from recipes-security/refpolicy/refpolicy/0028-file_contexts.subs_dist-set-aliase-for-root-director.patch
rename to recipes-security/refpolicy/refpolicy/0027-file_contexts.subs_dist-set-aliase-for-root-director.patch
index 82b4708..a527d94 100644
--- a/recipes-security/refpolicy/refpolicy/0028-file_contexts.subs_dist-set-aliase-for-root-director.patch
+++ b/recipes-security/refpolicy/refpolicy/0027-file_contexts.subs_dist-set-aliase-for-root-director.patch
@@ -1,4 +1,4 @@
-From 01f57c996e09fb68daf3d97805c46c27a6d34304 Mon Sep 17 00:00:00 2001
+From 153bdbda047a3e769983000b4c8263eb4bfd2031 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Sun, 5 Apr 2020 22:03:45 +0800
 Subject: [PATCH] file_contexts.subs_dist: set aliase for /root directory
diff --git a/recipes-security/refpolicy/refpolicy/0029-policy-modules-system-logging-add-rules-for-the-syml.patch b/recipes-security/refpolicy/refpolicy/0028-policy-modules-system-logging-add-rules-for-the-syml.patch
similarity index 72%
rename from recipes-security/refpolicy/refpolicy/0029-policy-modules-system-logging-add-rules-for-the-syml.patch
rename to recipes-security/refpolicy/refpolicy/0028-policy-modules-system-logging-add-rules-for-the-syml.patch
index 06b792a..5c4e023 100644
--- a/recipes-security/refpolicy/refpolicy/0029-policy-modules-system-logging-add-rules-for-the-syml.patch
+++ b/recipes-security/refpolicy/refpolicy/0028-policy-modules-system-logging-add-rules-for-the-syml.patch
@@ -1,4 +1,4 @@
-From 2e9b42143ccb92f04d8d57430b3ae1e9f55eb00e Mon Sep 17 00:00:00 2001
+From f08f3c554d70c9cd11f0297678bb4a29b8ab034b Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/system/logging: add rules for the symlink of
@@ -14,11 +14,11 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  policy/modules/system/logging.fc | 1 +
- policy/modules/system/logging.if | 9 +++++++++
- 2 files changed, 10 insertions(+)
+ policy/modules/system/logging.if | 7 +++++++
+ 2 files changed, 8 insertions(+)
 
 diff --git a/policy/modules/system/logging.fc b/policy/modules/system/logging.fc
-index 4ff5f990a..dee26a9f4 100644
+index 0ce2bec4b..8957366b0 100644
 --- a/policy/modules/system/logging.fc
 +++ b/policy/modules/system/logging.fc
 @@ -53,6 +53,7 @@ ifdef(`distro_suse', `
@@ -30,10 +30,10 @@ index 4ff5f990a..dee26a9f4 100644
  /var/log/dmesg		--	gen_context(system_u:object_r:var_log_t,s0)
  /var/log/syslog		--	gen_context(system_u:object_r:var_log_t,s0)
 diff --git a/policy/modules/system/logging.if b/policy/modules/system/logging.if
-index cf7ef1721..b627cacb8 100644
+index 49028a0cb..4381d2e83 100644
 --- a/policy/modules/system/logging.if
 +++ b/policy/modules/system/logging.if
-@@ -1086,10 +1086,12 @@ interface(`logging_append_all_inherited_logs',`
+@@ -1091,10 +1091,12 @@ interface(`logging_append_all_inherited_logs',`
  interface(`logging_read_all_logs',`
  	gen_require(`
  		attribute logfile;
@@ -46,20 +46,7 @@ index cf7ef1721..b627cacb8 100644
  	read_files_pattern($1, logfile, logfile)
  ')
  
-@@ -1127,10 +1129,12 @@ interface(`logging_watch_all_logs',`
- interface(`logging_exec_all_logs',`
- 	gen_require(`
- 		attribute logfile;
-+		type var_log_t;
- 	')
- 
- 	files_search_var($1)
- 	allow $1 logfile:dir list_dir_perms;
-+	allow $1 var_log_t:lnk_file read_lnk_file_perms;
- 	can_exec($1, logfile)
- ')
- 
-@@ -1192,6 +1196,7 @@ interface(`logging_manage_generic_log_dirs',`
+@@ -1175,6 +1177,7 @@ interface(`logging_manage_generic_log_dirs',`
  
  	files_search_var($1)
  	allow $1 var_log_t:dir manage_dir_perms;
@@ -67,7 +54,7 @@ index cf7ef1721..b627cacb8 100644
  ')
  
  ########################################
-@@ -1212,6 +1217,7 @@ interface(`logging_relabel_generic_log_dirs',`
+@@ -1195,6 +1198,7 @@ interface(`logging_relabel_generic_log_dirs',`
  
  	files_search_var($1)
  	allow $1 var_log_t:dir relabel_dir_perms;
@@ -75,7 +62,7 @@ index cf7ef1721..b627cacb8 100644
  ')
  
  ########################################
-@@ -1232,6 +1238,7 @@ interface(`logging_read_generic_logs',`
+@@ -1215,6 +1219,7 @@ interface(`logging_read_generic_logs',`
  
  	files_search_var($1)
  	allow $1 var_log_t:dir list_dir_perms;
@@ -83,7 +70,7 @@ index cf7ef1721..b627cacb8 100644
  	read_files_pattern($1, var_log_t, var_log_t)
  ')
  
-@@ -1333,6 +1340,7 @@ interface(`logging_manage_generic_logs',`
+@@ -1316,6 +1321,7 @@ interface(`logging_manage_generic_logs',`
  
  	files_search_var($1)
  	manage_files_pattern($1, var_log_t, var_log_t)
@@ -91,7 +78,7 @@ index cf7ef1721..b627cacb8 100644
  ')
  
  ########################################
-@@ -1351,6 +1359,7 @@ interface(`logging_watch_generic_logs_dir',`
+@@ -1334,6 +1340,7 @@ interface(`logging_watch_generic_logs_dir',`
  	')
  
  	allow $1 var_log_t:dir watch;
diff --git a/recipes-security/refpolicy/refpolicy/0030-policy-modules-system-logging-add-rules-for-syslogd-.patch b/recipes-security/refpolicy/refpolicy/0029-policy-modules-system-logging-add-rules-for-syslogd-.patch
similarity index 87%
rename from recipes-security/refpolicy/refpolicy/0030-policy-modules-system-logging-add-rules-for-syslogd-.patch
rename to recipes-security/refpolicy/refpolicy/0029-policy-modules-system-logging-add-rules-for-syslogd-.patch
index ecfc018..2889ee8 100644
--- a/recipes-security/refpolicy/refpolicy/0030-policy-modules-system-logging-add-rules-for-syslogd-.patch
+++ b/recipes-security/refpolicy/refpolicy/0029-policy-modules-system-logging-add-rules-for-syslogd-.patch
@@ -1,4 +1,4 @@
-From 26dc5529db7664ae248eba4dbc5d17915c371137 Mon Sep 17 00:00:00 2001
+From a40442cbc570b9b028ebc1da0115bc368e165c29 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 10:33:18 -0400
 Subject: [PATCH] policy/modules/system/logging: add rules for syslogd symlink
@@ -18,10 +18,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index abd61e6bd..90d8ccd31 100644
+index 9d9a01fcc..45584dba6 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -420,6 +420,7 @@ files_search_spool(syslogd_t)
+@@ -425,6 +425,7 @@ files_search_spool(syslogd_t)
  
  # Allow access for syslog-ng
  allow syslogd_t var_log_t:dir { create setattr };
diff --git a/recipes-security/refpolicy/refpolicy/0031-policy-modules-kernel-files-add-rules-for-the-symlin.patch b/recipes-security/refpolicy/refpolicy/0030-policy-modules-kernel-files-add-rules-for-the-symlin.patch
similarity index 77%
rename from recipes-security/refpolicy/refpolicy/0031-policy-modules-kernel-files-add-rules-for-the-symlin.patch
rename to recipes-security/refpolicy/refpolicy/0030-policy-modules-kernel-files-add-rules-for-the-symlin.patch
index 48e8acf..ee329b1 100644
--- a/recipes-security/refpolicy/refpolicy/0031-policy-modules-kernel-files-add-rules-for-the-symlin.patch
+++ b/recipes-security/refpolicy/refpolicy/0030-policy-modules-kernel-files-add-rules-for-the-symlin.patch
@@ -1,4 +1,4 @@
-From 9052089dfc4f7466fcf304ab282c2e32933a5881 Mon Sep 17 00:00:00 2001
+From b4110d4f30f6dc82c810ceaf24911b1fadb0e7c4 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/kernel/files: add rules for the symlink of
@@ -18,10 +18,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  2 files changed, 9 insertions(+)
 
 diff --git a/policy/modules/kernel/files.fc b/policy/modules/kernel/files.fc
-index f6ff6b079..279df3d3c 100644
+index 9a6f9d2d4..0f511c830 100644
 --- a/policy/modules/kernel/files.fc
 +++ b/policy/modules/kernel/files.fc
-@@ -170,6 +170,7 @@ HOME_ROOT/lost\+found/.*	<<none>>
+@@ -171,6 +171,7 @@ HOME_ROOT/lost\+found/.*	<<none>>
  # /tmp
  #
  /tmp			-d	gen_context(system_u:object_r:tmp_t,s0-mls_systemhigh)
@@ -30,10 +30,10 @@ index f6ff6b079..279df3d3c 100644
  /tmp/\.journal			<<none>>
  
 diff --git a/policy/modules/kernel/files.if b/policy/modules/kernel/files.if
-index f7217b226..451f302af 100644
+index 9e4344d24..14b34a467 100644
 --- a/policy/modules/kernel/files.if
 +++ b/policy/modules/kernel/files.if
-@@ -4750,6 +4750,7 @@ interface(`files_search_tmp',`
+@@ -4780,6 +4780,7 @@ interface(`files_search_tmp',`
  	')
  
  	allow $1 tmp_t:dir search_dir_perms;
@@ -41,7 +41,7 @@ index f7217b226..451f302af 100644
  ')
  
  ########################################
-@@ -4786,6 +4787,7 @@ interface(`files_list_tmp',`
+@@ -4816,6 +4817,7 @@ interface(`files_list_tmp',`
  	')
  
  	allow $1 tmp_t:dir list_dir_perms;
@@ -49,7 +49,7 @@ index f7217b226..451f302af 100644
  ')
  
  ########################################
-@@ -4822,6 +4824,7 @@ interface(`files_delete_tmp_dir_entry',`
+@@ -4852,6 +4854,7 @@ interface(`files_delete_tmp_dir_entry',`
  	')
  
  	allow $1 tmp_t:dir del_entry_dir_perms;
@@ -57,7 +57,7 @@ index f7217b226..451f302af 100644
  ')
  
  ########################################
-@@ -4840,6 +4843,7 @@ interface(`files_read_generic_tmp_files',`
+@@ -4870,6 +4873,7 @@ interface(`files_read_generic_tmp_files',`
  	')
  
  	read_files_pattern($1, tmp_t, tmp_t)
@@ -65,7 +65,7 @@ index f7217b226..451f302af 100644
  ')
  
  ########################################
-@@ -4858,6 +4862,7 @@ interface(`files_manage_generic_tmp_dirs',`
+@@ -4888,6 +4892,7 @@ interface(`files_manage_generic_tmp_dirs',`
  	')
  
  	manage_dirs_pattern($1, tmp_t, tmp_t)
@@ -73,7 +73,7 @@ index f7217b226..451f302af 100644
  ')
  
  ########################################
-@@ -4894,6 +4899,7 @@ interface(`files_manage_generic_tmp_files',`
+@@ -4924,6 +4929,7 @@ interface(`files_manage_generic_tmp_files',`
  	')
  
  	manage_files_pattern($1, tmp_t, tmp_t)
@@ -81,7 +81,7 @@ index f7217b226..451f302af 100644
  ')
  
  ########################################
-@@ -4930,6 +4936,7 @@ interface(`files_rw_generic_tmp_sockets',`
+@@ -4960,6 +4966,7 @@ interface(`files_rw_generic_tmp_sockets',`
  	')
  
  	rw_sock_files_pattern($1, tmp_t, tmp_t)
@@ -89,7 +89,7 @@ index f7217b226..451f302af 100644
  ')
  
  ########################################
-@@ -5137,6 +5144,7 @@ interface(`files_tmp_filetrans',`
+@@ -5167,6 +5174,7 @@ interface(`files_tmp_filetrans',`
  	')
  
  	filetrans_pattern($1, tmp_t, $2, $3, $4)
diff --git a/recipes-security/refpolicy/refpolicy/0032-policy-modules-system-logging-fix-auditd-startup-fai.patch b/recipes-security/refpolicy/refpolicy/0031-policy-modules-system-logging-fix-auditd-startup-fai.patch
similarity index 88%
rename from recipes-security/refpolicy/refpolicy/0032-policy-modules-system-logging-fix-auditd-startup-fai.patch
rename to recipes-security/refpolicy/refpolicy/0031-policy-modules-system-logging-fix-auditd-startup-fai.patch
index 22ce8f2..ae6e5cf 100644
--- a/recipes-security/refpolicy/refpolicy/0032-policy-modules-system-logging-fix-auditd-startup-fai.patch
+++ b/recipes-security/refpolicy/refpolicy/0031-policy-modules-system-logging-fix-auditd-startup-fai.patch
@@ -1,4 +1,4 @@
-From eed095029b270bbc49dc67d6b7b6b2fe9c3bca07 Mon Sep 17 00:00:00 2001
+From bd4f7608f50da4a829d9042311163922776146ca Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/system/logging: fix auditd startup failures
@@ -17,10 +17,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 90d8ccd31..d3b06db7d 100644
+index 45584dba6..8bc70b81d 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -169,6 +169,7 @@ dontaudit auditd_t auditd_etc_t:file map;
+@@ -177,6 +177,7 @@ dontaudit auditd_t auditd_etc_t:file map;
  manage_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
  allow auditd_t auditd_log_t:dir setattr;
  manage_lnk_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
@@ -28,7 +28,7 @@ index 90d8ccd31..d3b06db7d 100644
  allow auditd_t var_log_t:dir search_dir_perms;
  
  manage_files_pattern(auditd_t, auditd_runtime_t, auditd_runtime_t)
-@@ -298,6 +299,7 @@ optional_policy(`
+@@ -306,6 +307,7 @@ optional_policy(`
  allow audisp_remote_t self:capability { setpcap setuid };
  allow audisp_remote_t self:process { getcap setcap };
  allow audisp_remote_t self:tcp_socket create_socket_perms;
diff --git a/recipes-security/refpolicy/refpolicy/0033-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch b/recipes-security/refpolicy/refpolicy/0032-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch
similarity index 94%
rename from recipes-security/refpolicy/refpolicy/0033-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch
rename to recipes-security/refpolicy/refpolicy/0032-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch
index f62db74..9648dfd 100644
--- a/recipes-security/refpolicy/refpolicy/0033-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch
+++ b/recipes-security/refpolicy/refpolicy/0032-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch
@@ -1,4 +1,4 @@
-From 3f24b88886fcd1a17248d8d674a02d01061d937a Mon Sep 17 00:00:00 2001
+From a23028f17d5e56e20ed3930b3075ba2d1c211b16 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/kernel/terminal: don't audit tty_device_t in
diff --git a/recipes-security/refpolicy/refpolicy/0034-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch b/recipes-security/refpolicy/refpolicy/0033-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch
similarity index 94%
rename from recipes-security/refpolicy/refpolicy/0034-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch
rename to recipes-security/refpolicy/refpolicy/0033-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch
index 0b00f5a..e7b993e 100644
--- a/recipes-security/refpolicy/refpolicy/0034-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch
+++ b/recipes-security/refpolicy/refpolicy/0033-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch
@@ -1,4 +1,4 @@
-From 9c84425bbcaef5913fb6e309b8811639134714ed Mon Sep 17 00:00:00 2001
+From 288c0c4b20a80846691d113a1759325b214d64f9 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Wed, 1 Jul 2020 08:44:07 +0800
 Subject: [PATCH] policy/modules/services/rpcbind: allow rpcbind_t to create
diff --git a/recipes-security/refpolicy/refpolicy/0034-policy-modules-system-systemd-enable-support-for-sys.patch b/recipes-security/refpolicy/refpolicy/0034-policy-modules-system-systemd-enable-support-for-sys.patch
new file mode 100644
index 0000000..e54d69e
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0034-policy-modules-system-systemd-enable-support-for-sys.patch
@@ -0,0 +1,46 @@
+From 48da8a2589b1d5bce2609fd307ca009605d801c3 Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Thu, 4 Feb 2016 06:03:19 -0500
+Subject: [PATCH] policy/modules/system/systemd: enable support for
+ systemd-tmpfiles to manage all non-security files
+
+Fixes:
+systemd-tmpfiles[226]: Failed to create directory or subvolume "/root/.ssh", ignoring: Permission denied
+systemd-tmpfiles[226]: Failed to create directory or subvolume "/var/lib/systemd/ephemeral-trees": Permission denied
+
+AVC avc:  denied  { relabelfrom } for  pid=226 comm="systemd-tmpfile"
+name="root" dev="vda" ino=643 scontext=system_u:system_r:systemd_tmpfiles_t
+tcontext=root:object_r:user_home_dir_t tclass=dir permissive=0
+
+AVC avc:  denied  { write } for  pid=226 comm="systemd-tmpfile"
+name="root" dev="vda" ino=643 scontext=system_u:system_r:systemd_tmpfiles_t
+tcontext=root:object_r:user_home_dir_t tclass=dir permissive=0
+
+AVC avc:  denied  { create } for  pid=226 comm="systemd-tmpfile"
+name="ephemeral-trees" scontext=system_u:system_r:systemd_tmpfiles_t
+tcontext=system_u:object_r:init_var_lib_t tclass=dir permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
+index b6d575f87..70a45ac58 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -10,7 +10,7 @@ policy_module(systemd)
+ ## Enable support for systemd-tmpfiles to manage all non-security files.
+ ## </p>
+ ## </desc>
+-gen_tunable(systemd_tmpfiles_manage_all, false)
++gen_tunable(systemd_tmpfiles_manage_all, true)
+ 
+ ## <desc>
+ ## <p>
+-- 
+2.25.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-logging-allow-systemd-tmpfiles.patch b/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-logging-allow-systemd-tmpfiles.patch
new file mode 100644
index 0000000..05a0887
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-logging-allow-systemd-tmpfiles.patch
@@ -0,0 +1,43 @@
+From 1f7fb5de202cb30c45b4051b0bce6e9b1aa53ea8 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Sat, 30 Sep 2023 17:20:29 +0800
+Subject: [PATCH] policy/modules/system/logging: allow systemd-tmpfiles to
+ create /var/log/audit
+
+Fixes:
+systemd[1]: Starting Security Auditing Service...
+auditd[246]: Could not open dir /var/log/audit (No such file or directory)
+auditd[246]: The audit daemon is exiting.
+systemd[1]: auditd.service: Control process exited, code=exited, status=6/NOTCONFIGURED
+systemd[1]: auditd.service: Failed with result 'exit-code'.
+systemd[1]: Failed to start Security Auditing Service.
+
+AVC avc:  denied  { create } for  pid=224 comm="systemd-tmpfile"
+name="audit" scontext=system_u:system_r:systemd_tmpfiles_t
+tcontext=system_u:object_r:auditd_log_t tclass=dir permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/logging.te | 4 ++++
+ 1 file changed, 4 insertions(+)
+
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
+index 8bc70b81d..3cab14381 100644
+--- a/policy/modules/system/logging.te
++++ b/policy/modules/system/logging.te
+@@ -27,6 +27,10 @@ type auditd_log_t;
+ files_security_file(auditd_log_t)
+ files_security_mountpoint(auditd_log_t)
+ 
++optional_policy(`
++	systemd_tmpfilesd_managed(auditd_log_t)
++')
++
+ type audit_spool_t;
+ files_security_file(audit_spool_t)
+ files_security_mountpoint(audit_spool_t)
+-- 
+2.25.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-systemd-enable-support-for-sys.patch b/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-systemd-enable-support-for-sys.patch
deleted file mode 100644
index 43b2f4d..0000000
--- a/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-systemd-enable-support-for-sys.patch
+++ /dev/null
@@ -1,64 +0,0 @@
-From 6465e39b6dfe8daa88cab321e3cf44ccc9f1441d Mon Sep 17 00:00:00 2001
-From: Wenzong Fan <wenzong.fan@windriver.com>
-Date: Thu, 4 Feb 2016 06:03:19 -0500
-Subject: [PATCH] policy/modules/system/systemd: enable support for
- systemd-tmpfiles to manage all non-security files
-
-Fixes:
-systemd-tmpfiles[137]: Failed to create directory or subvolume "/var/volatile/log": Permission denied
-systemd-tmpfiles[137]: Failed to create directory or subvolume "/var/volatile/tmp": Permission denied
-systemd-tmpfiles[137]: Failed to create directory or subvolume "/var/log/audit": Permission denied
-
-avc:  denied  { write } for  pid=137 comm="systemd-tmpfile" name="/"
-dev="tmpfs" ino=12400 scontext=system_u:system_r:systemd_tmpfiles_t
-tcontext=system_u:object_r:tmpfs_t tclass=dir permissive=0
-
-avc:  denied  { read } for  pid=137 comm="systemd-tmpfile" name="dbus"
-dev="vda" ino=12363 scontext=system_u:system_r:systemd_tmpfiles_t
-tcontext=system_u:object_r:system_dbusd_var_lib_t tclass=dir
-permissive=0
-
-avc:  denied  { relabelfrom } for  pid=137 comm="systemd-tmpfile"
-name="log" dev="vda" ino=14129
-scontext=system_u:system_r:systemd_tmpfiles_t
-tcontext=system_u:object_r:var_log_t tclass=lnk_file permissive=0
-
-avc:  denied  { create } for  pid=137 comm="systemd-tmpfile"
-name="audit" scontext=system_u:system_r:systemd_tmpfiles_t
-tcontext=system_u:object_r:auditd_log_t tclass=dir permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/systemd.te | 6 +++++-
- 1 file changed, 5 insertions(+), 1 deletion(-)
-
-diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index ef25974ac..362248d17 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -10,7 +10,7 @@ policy_module(systemd)
- ## Enable support for systemd-tmpfiles to manage all non-security files.
- ## </p>
- ## </desc>
--gen_tunable(systemd_tmpfiles_manage_all, false)
-+gen_tunable(systemd_tmpfiles_manage_all, true)
- 
- ## <desc>
- ## <p>
-@@ -1640,6 +1640,10 @@ files_relabelfrom_home(systemd_tmpfiles_t)
- files_relabelto_home(systemd_tmpfiles_t)
- files_relabelto_etc_dirs(systemd_tmpfiles_t)
- files_setattr_lock_dirs(systemd_tmpfiles_t)
-+
-+files_manage_non_auth_files(systemd_tmpfiles_t)
-+files_relabel_non_auth_files(systemd_tmpfiles_t)
-+
- # for /etc/mtab
- files_manage_etc_symlinks(systemd_tmpfiles_t)
- 
--- 
-2.25.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0036-policy-modules-system-systemd-allow-systemd_logind_t.patch b/recipes-security/refpolicy/refpolicy/0036-policy-modules-system-systemd-allow-systemd_logind_t.patch
index 56b6119..8f218ca 100644
--- a/recipes-security/refpolicy/refpolicy/0036-policy-modules-system-systemd-allow-systemd_logind_t.patch
+++ b/recipes-security/refpolicy/refpolicy/0036-policy-modules-system-systemd-allow-systemd_logind_t.patch
@@ -1,4 +1,4 @@
-From 2acb5ddbd04c578a420418e3bcb572bbd2dfbae6 Mon Sep 17 00:00:00 2001
+From 5d53b5ab28038eb7e326ab577e0b5e0799c9500b Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Sat, 18 Dec 2021 09:26:43 +0800
 Subject: [PATCH] policy/modules/system/systemd: allow systemd_logind_t to read
@@ -27,10 +27,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 362248d17..4a1e06640 100644
+index 70a45ac58..42520f9f8 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -920,6 +920,7 @@ userdom_relabelfrom_user_runtime_dirs(systemd_logind_t)
+@@ -980,6 +980,7 @@ userdom_relabelfrom_user_runtime_dirs(systemd_logind_t)
  userdom_relabelto_user_runtime_dirs(systemd_logind_t)
  userdom_setattr_user_ttys(systemd_logind_t)
  userdom_use_user_ttys(systemd_logind_t)
diff --git a/recipes-security/refpolicy/refpolicy/0037-policy-modules-roles-sysadm-allow-sysadm-to-use-init.patch b/recipes-security/refpolicy/refpolicy/0037-policy-modules-roles-sysadm-allow-sysadm-to-use-init.patch
index 78c4dc8..e7406e5 100644
--- a/recipes-security/refpolicy/refpolicy/0037-policy-modules-roles-sysadm-allow-sysadm-to-use-init.patch
+++ b/recipes-security/refpolicy/refpolicy/0037-policy-modules-roles-sysadm-allow-sysadm-to-use-init.patch
@@ -1,4 +1,4 @@
-From 51a7f8058fee569322c1a0597fccd36c318ad943 Mon Sep 17 00:00:00 2001
+From 11c172fe44a22341b686dc537fde4991b7a49ed5 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 28 Oct 2022 11:56:09 +0800
 Subject: [PATCH] policy/modules/roles/sysadm: allow sysadm to use init file
@@ -19,10 +19,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
-index bb715a847..088c954f5 100644
+index 936381f25..a6b0c35f3 100644
 --- a/policy/modules/roles/sysadm.te
 +++ b/policy/modules/roles/sysadm.te
-@@ -86,6 +86,8 @@ ifdef(`init_systemd',`
+@@ -92,6 +92,8 @@ ifdef(`init_systemd',`
  	# LookupDynamicUserByUID on org.freedesktop.systemd1.
  	init_dbus_chat(sysadm_t)
  
diff --git a/recipes-security/refpolicy/refpolicy/0038-policy-modules-system-systemd-systemd-user-fixes.patch b/recipes-security/refpolicy/refpolicy/0038-policy-modules-system-systemd-systemd-user-fixes.patch
index 85bb82b..6a48b3d 100644
--- a/recipes-security/refpolicy/refpolicy/0038-policy-modules-system-systemd-systemd-user-fixes.patch
+++ b/recipes-security/refpolicy/refpolicy/0038-policy-modules-system-systemd-systemd-user-fixes.patch
@@ -1,4 +1,4 @@
-From 5b6f3fcb1ddabd0a66541959306e7b0adfe2b2b0 Mon Sep 17 00:00:00 2001
+From 9dcbec008d4213c6649f894fda0e87b0829c56de Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Thu, 4 Feb 2021 10:48:54 +0800
 Subject: [PATCH] policy/modules/system/systemd: systemd --user fixes
@@ -26,59 +26,66 @@ Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/roles/sysadm.te   |  2 ++
- policy/modules/system/systemd.if | 21 ++++++++++++++++++++-
- 2 files changed, 22 insertions(+), 1 deletion(-)
+ policy/modules/system/systemd.if    | 30 +++++++++++++++++++++++++++++
+ policy/modules/system/userdomain.if |  4 ++++
+ 2 files changed, 34 insertions(+)
 
-diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
-index 088c954f5..92f50fd5a 100644
---- a/policy/modules/roles/sysadm.te
-+++ b/policy/modules/roles/sysadm.te
-@@ -98,6 +98,8 @@ ifdef(`init_systemd',`
- 
- 	# Allow sysadm to follow logs in the journal, i.e. with podman logs -f
- 	systemd_watch_journal_dirs(sysadm_t)
-+
-+	systemd_sysadm_user(sysadm_t)
- ')
- 
- tunable_policy(`allow_ptrace',`
 diff --git a/policy/modules/system/systemd.if b/policy/modules/system/systemd.if
-index 9dc91fbb7..325ca548b 100644
+index 6054b5038..d89ad35b1 100644
 --- a/policy/modules/system/systemd.if
 +++ b/policy/modules/system/systemd.if
-@@ -58,7 +58,7 @@ template(`systemd_role_template',`
- 	allow $1_systemd_t self:process { getsched signal };
- 	allow $1_systemd_t self:netlink_kobject_uevent_socket create_socket_perms;
- 	allow $1_systemd_t self:unix_stream_socket create_stream_socket_perms;
--	allow $1_systemd_t $3:process { setsched rlimitinh signal_perms };
-+	allow $1_systemd_t $3:process { setsched rlimitinh signal_perms noatsecure };
- 	corecmd_shell_domtrans($1_systemd_t, $3)
- 	corecmd_bin_domtrans($1_systemd_t, $3)
- 
-@@ -2613,3 +2613,22 @@ interface(`systemd_use_inherited_machined_ptys', `
- 	allow $1 systemd_machined_t:fd use;
- 	allow $1 systemd_machined_devpts_t:chr_file rw_inherited_term_perms;
+@@ -199,6 +199,36 @@ template(`systemd_role_template',`
+ 	')
  ')
-+
-+#########################################
+ 
++######################################
 +## <summary>
-+##	sysadm user for systemd --user
++##	Admin role for systemd --user
 +## </summary>
++## <param name="prefix">
++##	<summary>
++##	Prefix for generated types
++##	</summary>
++## </param>
 +## <param name="role">
 +##	<summary>
-+##  Role allowed access.
++##	The admin role.
++##	</summary>
++## </param>
++## <param name="userdomain">
++##	<summary>
++##	The amdin domain for the role.
 +##	</summary>
 +## </param>
 +#
-+interface(`systemd_sysadm_user',`
++template(`systemd_admin_role_extra',`
 +	gen_require(`
-+		type sysadm_systemd_t;
++		type $1_systemd_t;
 +	')
 +
-+	allow sysadm_systemd_t self:capability { mknod sys_admin };
-+	allow sysadm_systemd_t self:capability2 { bpf perfmon };
++	allow $1_systemd_t $3:process noatsecure;
++	allow $1_systemd_t self:capability { mknod sys_admin };
++	allow $1_systemd_t self:capability2 { bpf perfmon };
 +')
++
+ ######################################
+ ## <summary>
+ ##   Allow the specified domain to be started as a daemon by the
+diff --git a/policy/modules/system/userdomain.if b/policy/modules/system/userdomain.if
+index 24c3cb012..80072c03e 100644
+--- a/policy/modules/system/userdomain.if
++++ b/policy/modules/system/userdomain.if
+@@ -1455,6 +1455,10 @@ template(`userdom_admin_user_template',`
+ 	optional_policy(`
+ 		userhelper_exec($1_t)
+ 	')
++
++	optional_policy(`
++		systemd_admin_role_extra($1, $1_r, $1_t)
++	')
+ ')
+ 
+ ########################################
 -- 
 2.25.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0039-policy-modules-system-mount-make-mount_t-domain-MLS-.patch b/recipes-security/refpolicy/refpolicy/0039-policy-modules-system-mount-make-mount_t-domain-MLS-.patch
index c3b4b55..d3f035e 100644
--- a/recipes-security/refpolicy/refpolicy/0039-policy-modules-system-mount-make-mount_t-domain-MLS-.patch
+++ b/recipes-security/refpolicy/refpolicy/0039-policy-modules-system-mount-make-mount_t-domain-MLS-.patch
@@ -1,4 +1,4 @@
-From ccdd22cc2776b695f96faffc88699aa2b182e085 Mon Sep 17 00:00:00 2001
+From 15e29022299d44fbb172560b448c531b9714616b Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Sat, 15 Feb 2014 04:22:47 -0500
 Subject: [PATCH] policy/modules/system/mount: make mount_t domain MLS trusted
@@ -19,10 +19,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/system/mount.te b/policy/modules/system/mount.te
-index d028723ce..97f49e58e 100644
+index e08df77a5..30b26841f 100644
 --- a/policy/modules/system/mount.te
 +++ b/policy/modules/system/mount.te
-@@ -112,6 +112,7 @@ fs_dontaudit_write_all_image_files(mount_t)
+@@ -113,6 +113,7 @@ fs_dontaudit_write_all_image_files(mount_t)
  
  mls_file_read_all_levels(mount_t)
  mls_file_write_all_levels(mount_t)
diff --git a/recipes-security/refpolicy/refpolicy/0040-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch b/recipes-security/refpolicy/refpolicy/0040-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch
index d711612..46d4851 100644
--- a/recipes-security/refpolicy/refpolicy/0040-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch
+++ b/recipes-security/refpolicy/refpolicy/0040-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch
@@ -1,4 +1,4 @@
-From 64498d6cd30a0a65a24e3e7ab22cca5921c2db89 Mon Sep 17 00:00:00 2001
+From 183070b02b5ca9aeb8fd58c8c737b5f9589e9a12 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Mon, 28 Jan 2019 14:05:18 +0800
 Subject: [PATCH] policy/modules/roles/sysadm: MLS - sysadm rw to clearance
@@ -23,7 +23,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
-index 92f50fd5a..8c154d474 100644
+index a6b0c35f3..68f7ab381 100644
 --- a/policy/modules/roles/sysadm.te
 +++ b/policy/modules/roles/sysadm.te
 @@ -45,6 +45,8 @@ logging_watch_all_logs(sysadm_t)
diff --git a/recipes-security/refpolicy/refpolicy/0041-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch b/recipes-security/refpolicy/refpolicy/0041-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch
index d22dacf..9c602fe 100644
--- a/recipes-security/refpolicy/refpolicy/0041-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch
+++ b/recipes-security/refpolicy/refpolicy/0041-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch
@@ -1,4 +1,4 @@
-From e82c43e60ef52ba00e8f2af5b46b2a6d49331209 Mon Sep 17 00:00:00 2001
+From 3b93adc08461ebea92d018bf7704386426f129d3 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Fri, 23 Aug 2013 12:01:53 +0800
 Subject: [PATCH] policy/modules/services/rpc: make nfsd_t domain MLS trusted
@@ -15,10 +15,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  2 files changed, 7 insertions(+)
 
 diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kernel.te
-index 5124ae016..a40db8507 100644
+index e449160d8..9ef5e0b6f 100644
 --- a/policy/modules/kernel/kernel.te
 +++ b/policy/modules/kernel/kernel.te
-@@ -368,6 +368,8 @@ mls_process_read_all_levels(kernel_t)
+@@ -373,6 +373,8 @@ mls_process_read_all_levels(kernel_t)
  mls_process_write_all_levels(kernel_t)
  mls_file_write_all_levels(kernel_t)
  mls_file_read_all_levels(kernel_t)
diff --git a/recipes-security/refpolicy/refpolicy/0042-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch b/recipes-security/refpolicy/refpolicy/0042-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch
index 30c84f6..9598a41 100644
--- a/recipes-security/refpolicy/refpolicy/0042-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch
+++ b/recipes-security/refpolicy/refpolicy/0042-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch
@@ -1,4 +1,4 @@
-From 9343914c0486b5aa6ff7cceeb8f6c399115e5fb3 Mon Sep 17 00:00:00 2001
+From 7b5cac323ea0638fcd5d35658f49c644f32d3442 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 30 Jun 2020 10:18:20 +0800
 Subject: [PATCH] policy/modules/admin/dmesg: make dmesg_t MLS trusted reading
diff --git a/recipes-security/refpolicy/refpolicy/0043-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch b/recipes-security/refpolicy/refpolicy/0043-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
index 932047a..fec9532 100644
--- a/recipes-security/refpolicy/refpolicy/0043-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
+++ b/recipes-security/refpolicy/refpolicy/0043-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
@@ -1,4 +1,4 @@
-From 057e4e6a6e2e87edcd6a93dd533620700b00b1c2 Mon Sep 17 00:00:00 2001
+From fd0d3887275237c1f1968d20972b535b9fdc9954 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Fri, 13 Oct 2017 07:20:40 +0000
 Subject: [PATCH] policy/modules/kernel/kernel: make kernel_t MLS trusted for
@@ -59,10 +59,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kernel.te
-index a40db8507..40cd52825 100644
+index 9ef5e0b6f..8082cf6b7 100644
 --- a/policy/modules/kernel/kernel.te
 +++ b/policy/modules/kernel/kernel.te
-@@ -370,6 +370,8 @@ mls_file_write_all_levels(kernel_t)
+@@ -375,6 +375,8 @@ mls_file_write_all_levels(kernel_t)
  mls_file_read_all_levels(kernel_t)
  mls_socket_write_all_levels(kernel_t)
  mls_fd_use_all_levels(kernel_t)
diff --git a/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-init-make-init_t-MLS-trusted-f.patch b/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
index 9e52b7f..5457079 100644
--- a/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
+++ b/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
@@ -1,4 +1,4 @@
-From c47e288e8950e7e92e3c90972ca7ef8ef9fc6a7f Mon Sep 17 00:00:00 2001
+From f2fcbcde9dc16985f1ffa43329fb47d36d132bd3 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Fri, 15 Jan 2016 03:47:05 -0500
 Subject: [PATCH] policy/modules/system/init: make init_t MLS trusted for
@@ -27,10 +27,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 4 insertions(+)
 
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index 97a75cf86..fee846cb5 100644
+index d19734d6f..8b9b8aa9a 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -229,6 +229,10 @@ mls_process_write_all_levels(init_t)
+@@ -238,6 +238,10 @@ mls_process_write_all_levels(init_t)
  mls_fd_use_all_levels(init_t)
  mls_process_set_level(init_t)
  
diff --git a/recipes-security/refpolicy/refpolicy/0045-policy-modules-system-systemd-make-systemd-tmpfiles_.patch b/recipes-security/refpolicy/refpolicy/0045-policy-modules-system-systemd-make-systemd-tmpfiles_.patch
index 1bfbb16..c61b403 100644
--- a/recipes-security/refpolicy/refpolicy/0045-policy-modules-system-systemd-make-systemd-tmpfiles_.patch
+++ b/recipes-security/refpolicy/refpolicy/0045-policy-modules-system-systemd-make-systemd-tmpfiles_.patch
@@ -1,4 +1,4 @@
-From afd35f6c73551c674e5bfe7cc1832b6a0ea717a6 Mon Sep 17 00:00:00 2001
+From ff749bb5ba3786283c348bb2db160794ba74e20c Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Thu, 4 Feb 2016 06:03:19 -0500
 Subject: [PATCH] policy/modules/system/systemd: make systemd-tmpfiles_t domain
@@ -43,10 +43,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 5 insertions(+)
 
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 4a1e06640..b44b9b2d7 100644
+index 42520f9f8..7a2041956 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -1694,6 +1694,11 @@ sysnet_relabel_config(systemd_tmpfiles_t)
+@@ -1813,6 +1813,11 @@ sysnet_relabel_config(systemd_tmpfiles_t)
  
  systemd_log_parse_environment(systemd_tmpfiles_t)
  
diff --git a/recipes-security/refpolicy/refpolicy/0046-policy-modules-system-systemd-systemd-make-systemd_-.patch b/recipes-security/refpolicy/refpolicy/0046-policy-modules-system-systemd-systemd-make-systemd_-.patch
index 800439c..da588ed 100644
--- a/recipes-security/refpolicy/refpolicy/0046-policy-modules-system-systemd-systemd-make-systemd_-.patch
+++ b/recipes-security/refpolicy/refpolicy/0046-policy-modules-system-systemd-systemd-make-systemd_-.patch
@@ -1,4 +1,4 @@
-From 8aa70c13d63e093bff87ea938d35dcc76e5bdd56 Mon Sep 17 00:00:00 2001
+From a1d15d213fee3e40129968dbd9928d5012d541f7 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Thu, 18 Jun 2020 09:59:58 +0800
 Subject: [PATCH] policy/modules/system/systemd: systemd-*: make systemd_*_t
@@ -43,10 +43,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 12 insertions(+)
 
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index b44b9b2d7..7b717d3ba 100644
+index 7a2041956..52c7b5346 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -373,6 +373,9 @@ files_search_var_lib(systemd_backlight_t)
+@@ -383,6 +383,9 @@ files_search_var_lib(systemd_backlight_t)
  fs_getattr_all_fs(systemd_backlight_t)
  fs_search_cgroup_dirs(systemd_backlight_t)
  
@@ -56,7 +56,7 @@ index b44b9b2d7..7b717d3ba 100644
  #######################################
  #
  # Binfmt local policy
-@@ -528,6 +531,9 @@ term_use_unallocated_ttys(systemd_generator_t)
+@@ -545,6 +548,9 @@ term_use_unallocated_ttys(systemd_generator_t)
  
  udev_read_runtime_files(systemd_generator_t)
  
@@ -66,7 +66,7 @@ index b44b9b2d7..7b717d3ba 100644
  ifdef(`distro_gentoo',`
  	corecmd_shell_entry_type(systemd_generator_t)
  ')
-@@ -922,6 +928,9 @@ userdom_setattr_user_ttys(systemd_logind_t)
+@@ -982,6 +988,9 @@ userdom_setattr_user_ttys(systemd_logind_t)
  userdom_use_user_ttys(systemd_logind_t)
  domain_read_all_domains_state(systemd_logind_t)
  
@@ -76,7 +76,7 @@ index b44b9b2d7..7b717d3ba 100644
  # Needed to work around patch not yet merged into the systemd-logind supported on RHEL 7.x
  # The change in systemd by Nicolas Iooss on 02-Feb-2016 with hash 4b51966cf6c06250036e428608da92f8640beb96
  # should fix the problem where user directories in /run/user/$UID/ are not getting the proper context
-@@ -1412,6 +1421,9 @@ udev_read_runtime_files(systemd_rfkill_t)
+@@ -1527,6 +1536,9 @@ udev_read_runtime_files(systemd_rfkill_t)
  
  systemd_log_parse_environment(systemd_rfkill_t)
  
diff --git a/recipes-security/refpolicy/refpolicy/0047-policy-modules-system-logging-add-the-syslogd_t-to-t.patch b/recipes-security/refpolicy/refpolicy/0047-policy-modules-system-logging-add-the-syslogd_t-to-t.patch
index cb3894c..451e6bc 100644
--- a/recipes-security/refpolicy/refpolicy/0047-policy-modules-system-logging-add-the-syslogd_t-to-t.patch
+++ b/recipes-security/refpolicy/refpolicy/0047-policy-modules-system-logging-add-the-syslogd_t-to-t.patch
@@ -1,4 +1,4 @@
-From 2afa5753f2ef8c7cee5ad0511c521d252bedf3e5 Mon Sep 17 00:00:00 2001
+From 8c45c5d48f7125ce47252c6ea36ed771c9baaf4d Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/system/logging: add the syslogd_t to trusted
@@ -18,10 +18,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 3 insertions(+)
 
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index d3b06db7d..f63965d4d 100644
+index 3cab14381..caf319f04 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -505,6 +505,9 @@ fs_getattr_all_fs(syslogd_t)
+@@ -491,6 +491,9 @@ fs_getattr_all_fs(syslogd_t)
  fs_search_auto_mountpoints(syslogd_t)
  
  mls_file_write_all_levels(syslogd_t) # Need to be able to write to /var/run/ and /var/log directories
diff --git a/recipes-security/refpolicy/refpolicy/0048-policy-modules-system-init-make-init_t-MLS-trusted-f.patch b/recipes-security/refpolicy/refpolicy/0048-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
index 16f0e4e..ebeee4f 100644
--- a/recipes-security/refpolicy/refpolicy/0048-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
+++ b/recipes-security/refpolicy/refpolicy/0048-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
@@ -1,4 +1,4 @@
-From f87bb3cb0843af69f9aecaef0a4052e04b15a630 Mon Sep 17 00:00:00 2001
+From 6867f764b99e48cfa6557e664c9ee8ae8947eb08 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 28 May 2019 16:41:37 +0800
 Subject: [PATCH] policy/modules/system/init: make init_t MLS trusted for
@@ -17,10 +17,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index fee846cb5..df7f87f17 100644
+index 8b9b8aa9a..bd2ca0802 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -228,6 +228,7 @@ mls_file_write_all_levels(init_t)
+@@ -237,6 +237,7 @@ mls_file_write_all_levels(init_t)
  mls_process_write_all_levels(init_t)
  mls_fd_use_all_levels(init_t)
  mls_process_set_level(init_t)
diff --git a/recipes-security/refpolicy/refpolicy/0049-policy-modules-system-init-all-init_t-to-read-any-le.patch b/recipes-security/refpolicy/refpolicy/0049-policy-modules-system-init-all-init_t-to-read-any-le.patch
index fb56eca..3c418dd 100644
--- a/recipes-security/refpolicy/refpolicy/0049-policy-modules-system-init-all-init_t-to-read-any-le.patch
+++ b/recipes-security/refpolicy/refpolicy/0049-policy-modules-system-init-all-init_t-to-read-any-le.patch
@@ -1,4 +1,4 @@
-From f3c0f18b647631fd2ffc1e86c9e3f51cbf74d60f Mon Sep 17 00:00:00 2001
+From ad9b0e1542804060ac3cea69129c224074da6766 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Wed, 3 Feb 2016 04:16:06 -0500
 Subject: [PATCH] policy/modules/system/init: all init_t to read any level
@@ -22,10 +22,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 3 insertions(+)
 
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index df7f87f17..671b5aef3 100644
+index bd2ca0802..e94a29a73 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -234,6 +234,9 @@ mls_key_write_all_levels(init_t)
+@@ -243,6 +243,9 @@ mls_key_write_all_levels(init_t)
  mls_file_downgrade(init_t)
  mls_file_upgrade(init_t)
  
diff --git a/recipes-security/refpolicy/refpolicy/0050-policy-modules-system-logging-allow-auditd_t-to-writ.patch b/recipes-security/refpolicy/refpolicy/0050-policy-modules-system-logging-allow-auditd_t-to-writ.patch
index aa02eb1..3931641 100644
--- a/recipes-security/refpolicy/refpolicy/0050-policy-modules-system-logging-allow-auditd_t-to-writ.patch
+++ b/recipes-security/refpolicy/refpolicy/0050-policy-modules-system-logging-allow-auditd_t-to-writ.patch
@@ -1,4 +1,4 @@
-From cb7a4ff6081f19d05b109512275ec9a537f2f6d2 Mon Sep 17 00:00:00 2001
+From 315a53e50dd8957787e3a71c57ffc8ac46d0c474 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Thu, 25 Feb 2016 04:25:08 -0500
 Subject: [PATCH] policy/modules/system/logging: allow auditd_t to write socket
@@ -22,10 +22,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index f63965d4d..7e41596f4 100644
+index caf319f04..25e1d1397 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -223,6 +223,8 @@ miscfiles_read_localization(auditd_t)
+@@ -235,6 +235,8 @@ miscfiles_read_localization(auditd_t)
  
  mls_file_read_all_levels(auditd_t)
  mls_file_write_all_levels(auditd_t) # Need to be able to write to /var/run/ directory
diff --git a/recipes-security/refpolicy/refpolicy/0051-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch b/recipes-security/refpolicy/refpolicy/0051-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
index 16bdf84..9c38e7d 100644
--- a/recipes-security/refpolicy/refpolicy/0051-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
+++ b/recipes-security/refpolicy/refpolicy/0051-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
@@ -1,4 +1,4 @@
-From 023e7b92a805103c54aec06bbd9465e4fbf7a6f2 Mon Sep 17 00:00:00 2001
+From 1c275b335fd047c678b449bf90a75a7ac48c2b38 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Thu, 31 Oct 2019 17:35:59 +0800
 Subject: [PATCH] policy/modules/kernel/kernel: make kernel_t MLS trusted for
@@ -15,10 +15,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kernel.te
-index 40cd52825..d08610543 100644
+index 8082cf6b7..63c2087f7 100644
 --- a/policy/modules/kernel/kernel.te
 +++ b/policy/modules/kernel/kernel.te
-@@ -372,6 +372,7 @@ mls_socket_write_all_levels(kernel_t)
+@@ -377,6 +377,7 @@ mls_socket_write_all_levels(kernel_t)
  mls_fd_use_all_levels(kernel_t)
  # https://bugzilla.redhat.com/show_bug.cgi?id=667370
  mls_file_downgrade(kernel_t)
diff --git a/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-setrans-allow-setrans_t-use-fd.patch b/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-setrans-allow-setrans_t-use-fd.patch
index b916084..a0a726d 100644
--- a/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-setrans-allow-setrans_t-use-fd.patch
+++ b/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-setrans-allow-setrans_t-use-fd.patch
@@ -1,4 +1,4 @@
-From 55fe90eba640e6d52bb269176f45a3a5e2c3ed80 Mon Sep 17 00:00:00 2001
+From 95f5c28ce9ed0a6d955afa758988ef8542644a64 Mon Sep 17 00:00:00 2001
 From: Roy Li <rongqing.li@windriver.com>
 Date: Sat, 22 Feb 2014 13:35:38 +0800
 Subject: [PATCH] policy/modules/system/setrans: allow setrans_t use fd at any
diff --git a/recipes-security/refpolicy/refpolicy/0053-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch b/recipes-security/refpolicy/refpolicy/0053-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch
index c4dc87b..d1c0775 100644
--- a/recipes-security/refpolicy/refpolicy/0053-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch
+++ b/recipes-security/refpolicy/refpolicy/0053-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch
@@ -1,4 +1,4 @@
-From c9afe0dc30f51f7ad7b93b8878c88df1146272a0 Mon Sep 17 00:00:00 2001
+From 7af0a6b367cb21943d111c9f6386e40efdc02907 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Mon, 22 Feb 2021 11:28:12 +0800
 Subject: [PATCH] policy/modules/system/systemd: make *_systemd_t MLS trusted
@@ -24,10 +24,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 3 insertions(+)
 
 diff --git a/policy/modules/system/systemd.if b/policy/modules/system/systemd.if
-index 325ca548b..b23b9bb0a 100644
+index d89ad35b1..00ac2f27e 100644
 --- a/policy/modules/system/systemd.if
 +++ b/policy/modules/system/systemd.if
-@@ -196,6 +196,9 @@ template(`systemd_role_template',`
+@@ -197,6 +197,9 @@ template(`systemd_role_template',`
  		xdg_read_config_files($1_systemd_t)
  		xdg_read_data_files($1_systemd_t)
  	')
diff --git a/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-logging-make-syslogd_runtime_t.patch b/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-logging-make-syslogd_runtime_t.patch
index ab87039..3be7027 100644
--- a/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-logging-make-syslogd_runtime_t.patch
+++ b/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-logging-make-syslogd_runtime_t.patch
@@ -1,4 +1,4 @@
-From 7a65c9f3636b43f3a29349ea1c045d5281efa5aa Mon Sep 17 00:00:00 2001
+From 1536eaea2cc68074f55ca50eff2d129b7e1894d8 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Sat, 18 Dec 2021 17:31:45 +0800
 Subject: [PATCH] policy/modules/system/logging: make syslogd_runtime_t MLS
@@ -31,10 +31,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 7e41596f4..0c25457d6 100644
+index 25e1d1397..ba0fd10e0 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -447,6 +447,8 @@ allow syslogd_t syslogd_runtime_t:file map;
+@@ -456,6 +456,8 @@ allow syslogd_t syslogd_runtime_t:file map;
  manage_files_pattern(syslogd_t, syslogd_runtime_t, syslogd_runtime_t)
  files_runtime_filetrans(syslogd_t, syslogd_runtime_t, file)
  
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index a51312f..e9b0b1a 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -26,31 +26,31 @@ SRC_URI += " \
         file://0008-fc-dmesg-apply-policy-to-dmesg-alternatives.patch \
         file://0009-fc-ssh-apply-policy-to-ssh-alternatives.patch \
         file://0010-fc-sysnetwork-apply-policy-to-network-commands-alter.patch \
-        file://0011-fc-udev-apply-policy-to-udevadm-in-libexec.patch \
-        file://0012-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch \
-        file://0013-fc-su-apply-policy-to-su-alternatives.patch \
-        file://0014-fc-fstools-fix-real-path-for-fstools.patch \
-        file://0015-fc-init-fix-update-alternatives-for-sysvinit.patch \
-        file://0016-fc-brctl-apply-policy-to-brctl-alternatives.patch \
-        file://0017-fc-corecommands-apply-policy-to-nologin-alternatives.patch \
-        file://0018-fc-locallogin-apply-policy-to-sulogin-alternatives.patch \
-        file://0019-fc-ntp-apply-policy-to-ntpd-alternatives.patch \
-        file://0020-fc-kerberos-apply-policy-to-kerberos-alternatives.patch \
-        file://0021-fc-ldap-apply-policy-to-ldap-alternatives.patch \
-        file://0022-fc-postgresql-apply-policy-to-postgresql-alternative.patch \
-        file://0023-fc-screen-apply-policy-to-screen-alternatives.patch \
-        file://0024-fc-usermanage-apply-policy-to-usermanage-alternative.patch \
-        file://0025-fc-getty-add-file-context-to-start_getty.patch \
-        file://0026-fc-vlock-apply-policy-to-vlock-alternatives.patch \
-        file://0027-fc-add-fcontext-for-init-scripts-and-systemd-service.patch \
-        file://0028-file_contexts.subs_dist-set-aliase-for-root-director.patch \
-        file://0029-policy-modules-system-logging-add-rules-for-the-syml.patch \
-        file://0030-policy-modules-system-logging-add-rules-for-syslogd-.patch \
-        file://0031-policy-modules-kernel-files-add-rules-for-the-symlin.patch \
-        file://0032-policy-modules-system-logging-fix-auditd-startup-fai.patch \
-        file://0033-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch \
-        file://0034-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch \
-        file://0035-policy-modules-system-systemd-enable-support-for-sys.patch \
+        file://0011-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch \
+        file://0012-fc-su-apply-policy-to-su-alternatives.patch \
+        file://0013-fc-fstools-fix-real-path-for-fstools.patch \
+        file://0014-fc-init-fix-update-alternatives-for-sysvinit.patch \
+        file://0015-fc-brctl-apply-policy-to-brctl-alternatives.patch \
+        file://0016-fc-corecommands-apply-policy-to-nologin-alternatives.patch \
+        file://0017-fc-locallogin-apply-policy-to-sulogin-alternatives.patch \
+        file://0018-fc-ntp-apply-policy-to-ntpd-alternatives.patch \
+        file://0019-fc-kerberos-apply-policy-to-kerberos-alternatives.patch \
+        file://0020-fc-ldap-apply-policy-to-ldap-alternatives.patch \
+        file://0021-fc-postgresql-apply-policy-to-postgresql-alternative.patch \
+        file://0022-fc-screen-apply-policy-to-screen-alternatives.patch \
+        file://0023-fc-usermanage-apply-policy-to-usermanage-alternative.patch \
+        file://0024-fc-getty-add-file-context-to-start_getty.patch \
+        file://0025-fc-vlock-apply-policy-to-vlock-alternatives.patch \
+        file://0026-fc-add-fcontext-for-init-scripts-and-systemd-service.patch \
+        file://0027-file_contexts.subs_dist-set-aliase-for-root-director.patch \
+        file://0028-policy-modules-system-logging-add-rules-for-the-syml.patch \
+        file://0029-policy-modules-system-logging-add-rules-for-syslogd-.patch \
+        file://0030-policy-modules-kernel-files-add-rules-for-the-symlin.patch \
+        file://0031-policy-modules-system-logging-fix-auditd-startup-fai.patch \
+        file://0032-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch \
+        file://0033-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch \
+        file://0034-policy-modules-system-systemd-enable-support-for-sys.patch \
+        file://0035-policy-modules-system-logging-allow-systemd-tmpfiles.patch \
         file://0036-policy-modules-system-systemd-allow-systemd_logind_t.patch \
         file://0037-policy-modules-roles-sysadm-allow-sysadm-to-use-init.patch \
         file://0038-policy-modules-system-systemd-systemd-user-fixes.patch \
diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-security/refpolicy/refpolicy_git.inc
index af3413b..1913ec8 100644
--- a/recipes-security/refpolicy/refpolicy_git.inc
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -1,8 +1,8 @@
-PV = "2.20221101+git${SRCPV}"
+PV = "2.20231002+git${SRCPV}"
 
-SRC_URI = "git://github.com/SELinuxProject/refpolicy.git;protocol=https;branch=master;name=refpolicy;destsuffix=refpolicy"
+SRC_URI = "git://github.com/SELinuxProject/refpolicy.git;protocol=https;branch=main;name=refpolicy;destsuffix=refpolicy"
 
-SRCREV_refpolicy ?= "8e8f5e3ca3e5900cad126cb8b4fadaa8adb8caac"
+SRCREV_refpolicy ?= "f3865abfc25a395c877a27074bd03c5fc22992dd"
 
 UPSTREAM_CHECK_GITTAGREGEX = "RELEASE_(?P<pver>\d+_\d+)"
 
-- 
2.25.1


