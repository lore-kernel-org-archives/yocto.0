Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 869BBC433EF
	for <webhook@archiver.kernel.org>; Tue, 21 Dec 2021 02:20:34 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web09.1113.1640053233032915700
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Dec 2021 18:20:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=ZNGw8gHz;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=798982f4ee=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1BL2K2mb009403;
	Tue, 21 Dec 2021 02:20:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=zhrJeSdoAUcx3aktL1LgTgWsnPzTXbFHslUrB/NgMM4=;
 b=ZNGw8gHzrAjd9+1H/lVEMFZHcpMXnVdW58tyaQ882nv+zkZwFiKhefzOq9sQ1k3bN3nJ
 j9LL+EaoUyAOW/XqVpZefmXELQ28Iu3FEp7e2ww3f6WJ8iye6Cjnm1mVRTV4GW4ypOh5
 +MesmJjtTcLVUzrkImm8Ou65f6wJQcRAtKHnTeZb8GV17WKhgzrRL2Uc8vNaYkdRX3wN
 YbrSX95ZG4HWezXv1t9ESAvqTShc9Y0/IWFBBy55yKJITlG2vZDIfwZwPNPNy1syzFzA
 S3/yyaqqYNSE2AUgBPJF8syB6LdIXLMq+WLlsturmKVBxTnEXsxwEyNmNnk0kgNqz1St cg==
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2174.outbound.protection.outlook.com [104.47.58.174])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3d2jfjrtx6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 21 Dec 2021 02:20:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J+ZuR4+FAQBRK79jkQf3n1yNhv1fbr0AySZxNEFjBzzTATJRw+LSJs6/IINKipRkyyyssajPoZR/X8IJruaqXIoCa5PgQq4dXRgiSaJrbF1iAF1ztQeDLzMErCVCqQHv6kHe32UknMs23cyNf+OhMP40YMOB1wqDMWf+MEmN/8ieftoD2sFqxoHeNWn7uVnu9LFDFL4u5mp6Zas13rwcw0oI1d/zLNFfRZszLSQ/JuS/QsmgVgId5gSDmg3zUZBn35xNgUKJIW6v75Ayi9JUg+A3h8ipSnSkC9nrSiEYoSxi6yN2QoCFUCewnAb65/0BGuFNflJkmCbJ+SpyxqdGlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zhrJeSdoAUcx3aktL1LgTgWsnPzTXbFHslUrB/NgMM4=;
 b=XZpFouFt5FhZa937Oi4A6gP9HfsCdtVsGL9QIFN3Nl6jFQlwo28igJHpp6dl5cAuUKXRIpz+3HLQmZb+mjJ71vIug2rnux9tWoVi5MscIkuNJh5pFRC3sQJZ8Km7EA/ecF+KuYpveQWMqfPPoNLZw+n52KJL2s/2YJ/k2lOPImJNj7mtqBAAv6FQCy+vCKvhMlg8BFshKUDN3bFDInQ+Ju/DJop6btmiq7kC1ErZZ1Vwfi22GUv3T1sPfqPBQJnEvGulO72bjxZS6bkn8vDKNhpjkANsYZlTFsdPfcGFwJQEpFnlsLTCOwxKfw+6TWdsr9zuL1HeZBiexMdzzO1A8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1791.namprd11.prod.outlook.com (2603:10b6:300:10f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.14; Tue, 21 Dec
 2021 02:20:20 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8962:26c6:20fe:eaa4]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8962:26c6:20fe:eaa4%6]) with mapi id 15.20.4801.020; Tue, 21 Dec 2021
 02:20:20 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH V2] refpolicy: upgrade 20210203+git ->
 20210908+git
Date: Tue, 21 Dec 2021 10:20:08 +0800
Message-Id: <20211221022008.110601-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: HK0PR03CA0102.apcprd03.prod.outlook.com
 (2603:1096:203:b0::18) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2434e9b2-53ec-4198-7370-08d9c4286f9d
X-MS-TrafficTypeDiagnostic: MWHPR11MB1791:EE_
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1791738CD574090140DE9A5BF97C9@MWHPR11MB1791.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:530;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	JGF11cMsmJSL3u0P19EjOVWN0giCpvv5XkhRzbIENPChuYr8gQkehJUK5zmaxLnDLmnEY/EgWM9QFg0NsDE1hFTt1ODvdMYQ2sGi5XxsTrtuROyElOT3lIiidbOGP4Ab6w7erY610Imn5BbE8PlabTY1Z6SfsQcD0ntWAeulcSCbu+Ax5prM9RVY4IT26bFnKWSpOeHCFaAoPwQqjfo2mNJsPO/BR/xS76qKRE8NEyPNborcwxW2YAtgLdm3R6bHV2VxQCv7MYlU6QCgnvhBetIi9kwSBzKRrF6KGl5TmZYOZ9CfhzErsQEIDv31DtWuvULe2ACpbeveJnvmGoZFU3mEkc8LzEUrsP0jWb/ITG5xiU38yt7SSycgLXvbLwTkaNLo0qY3Vb2uVIS1NkCArdC6tyByJUzG7MKjiaO+lHEcCdCrjkMgpsunpJ4+nNaE4IRGb78xv696Af++UgvnUgafvWIYJOS1Iv+Ad84CxWusQIpOrX0JRZq3+EYGD76FGdhzwryQp1lrWSB/82TNMXqhZasCmiq6Tjr+QbzT0g2m+koUgwonNW3eTyz0jWENjj9ZsGyph3m0Iopyl8ueyrHfsd85uTbVPMe4g2G20CWowWR6SI2iXbl0xFmDo6YCIFK46Zwt+xOxLjNS2YztWjaGuCe/cwU3SmbsXeJ3WTkjV8cdnOURjxJU9UrfUHSqGl6AoQ18VTqx/vQ8QM8cbOrICVgfTd9f4OCz37R0CLIoJs3FuwZo7OxfFx94dKTEoVV/i1c/uuyFXMlB7n1RsmVfQlCfVlnySNUWEGxB2+Q=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(83380400001)(8676002)(2906002)(6512007)(2616005)(6666004)(38350700002)(30864003)(66476007)(316002)(6506007)(66556008)(5660300002)(6486002)(8936002)(38100700002)(86362001)(66946007)(26005)(508600001)(52116002)(36756003)(53546011)(44832011)(966005)(186003)(1076003)(579004)(559001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?qpmw7zT0wg91vDo/uC+DgpLi4dsAOce1LNj5Kq5z9I58fQ7/oO4W8SRVbws8?=
 =?us-ascii?Q?sgeIBOkkDR9ld+ttfeXkI53MAZpO6LQGAm0yQjdlo6PVoU/QZr2kr5r5Mjln?=
 =?us-ascii?Q?XwwbvkJdQ8xlcrDmVBQy9xrRAFXcbrPH3Obz9qGRh1u8iXQn9TQ0MCNBs+VU?=
 =?us-ascii?Q?YnaGLCqvyywPoynKoLLR/PyyDiFqOg/HIUhg6Cot/jIuLO+diLt2k9PnKdRY?=
 =?us-ascii?Q?Q40cWldlAdtnFpZAjKzK9WYeIrfB797QgJvng9W3yW6o9mGgZBlFm3pxA6Xm?=
 =?us-ascii?Q?UB6vCe0gDXzgYsHL5zS/UKv/XHjksIX8ko1ChSri2TPN9hZUWe63hvjctGZK?=
 =?us-ascii?Q?yDPsjWdnMBbr/5eUgYoLckTvbm2ALsymGWZ+PFEIfRUh8xiUBDVhOE2ObB4A?=
 =?us-ascii?Q?h/wBil9mOG1yCl4albWU1qu5j5AhNafYVFLImF4F/icAiYWPxXY8RU6v7+7C?=
 =?us-ascii?Q?tSYl3Ytn6O77vqgDJWw7N6Ho5Gn77TgIfX6HIt+Ted/+zXNtu4fFD9HngOuj?=
 =?us-ascii?Q?f+fpwuIY8u5TZRlyJswH5qdQ/8vQHKxwMXrR5AzoulL6zTq3pS5OOA5XNTN/?=
 =?us-ascii?Q?p8tEDpHhWLwWGw4j5WgiD7fyQpmsEa9xkrnkrgGLgklXa0icHvMNnMMnlpwe?=
 =?us-ascii?Q?AMVgQu7Ky38xOdFTGvZgZdAoNJ0+ST7PBwfUtkdPn0tEBjcrS/Du9G2wcRfC?=
 =?us-ascii?Q?xaFdfAwxNYuldLe+BpVSLiIrNP811CA++cswKH/asqQZJnT5xYz6EQbZbI1r?=
 =?us-ascii?Q?RER4B0AsAbtZGvWmzNSh/jFuiJmiM3ThRF69kgVvo5ysZAQa3KAkt4d92lU/?=
 =?us-ascii?Q?0zIJK+y1b3VR1HkMq+/EzP1AZumbAhbeK8f1jDyQHqU7G2ZRoxKhieBz1ZPs?=
 =?us-ascii?Q?ifUjnFXHEJyOo5oh3FXlnRVQ+IA5/C4dsWFzTpkKKaY9oXEB5+aPJ/dGSdaY?=
 =?us-ascii?Q?aIVNKozMvpLjNlkX/Ci0aSlgrxk7Q5NU+xJkhRWr4efnFm2MHW2orcqEvzGz?=
 =?us-ascii?Q?1B72JeCoarg/Hk7afhrNalv8bwnGRyDj3Nt6ncW8R5IZqaFmX5CTUAh06Igh?=
 =?us-ascii?Q?y5o5SzG+6ycokvmv1AUmjpoBafR+5gxJDvsueL1N9JQSCxIehCXZCKJy6az+?=
 =?us-ascii?Q?Yg+UTuptah0EatoMVO4f7pFKBdA3aE1m9B6wW6OIC69yLY5djK8p4YDuVU/J?=
 =?us-ascii?Q?TtUA2Ki8lPsJWcJbTDFsl48QokEjTQ6sGAGwIUJ84BlLhWpbln0j2FQyIzAg?=
 =?us-ascii?Q?FxVwtVd/LFMzOXrTBB8J/M0OTWQ8dxb7MfpqeOt8qMsrp4hp+0I9PqoICG6I?=
 =?us-ascii?Q?ByLJoHvbiUHXP0pgQ3G/H78j5UBH27OSWPKkAjYAr+W4uhcQHGq8+IMxQE57?=
 =?us-ascii?Q?9afOJrGXKN1kn1k2fLh0Vf6DnEHGK/rK2GDZ647WgGFXMVbg3ecWhB1PR15J?=
 =?us-ascii?Q?Qt025nGAxc28RKcVSmHxf2y+mNN9jAmOlYZWMgKIQErwH6ueXzLhIViteaJ8?=
 =?us-ascii?Q?MZuPdm0whOBAg5+tGw+VFszU1qPKXPXFj/rdDCDQyZh1rCxPSgs5X53UvE77?=
 =?us-ascii?Q?JjBZpAIS88VYl5zqmyohaAylbBxVJxox6xxSdak6EJilCt9LtLJdX6PjMrdT?=
 =?us-ascii?Q?vWn7xpCGGyt8SQ0KDv5D6zs=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 2434e9b2-53ec-4198-7370-08d9c4286f9d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Dec 2021 02:20:20.7189
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 SkAWaXfiAWHv0ya9XCT370wHbr2oOxwOpG6cnwmF/uxyPn8QDI/lP8xi5XAkNaQ40DQeedEvcNvK6Wbjhh/W8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1791
X-Proofpoint-GUID: txf9byGaIk_2v4XFu1fXARwXjRzyKHLl
X-Proofpoint-ORIG-GUID: txf9byGaIk_2v4XFu1fXARwXjRzyKHLl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2021-12-20_11,2021-12-20_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxscore=0
 clxscore=1015 mlxlogscore=999 suspectscore=0 spamscore=0 phishscore=0
 malwarescore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2112210008
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Dec 2021 02:20:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55629

* Update to latest git rev.
* Drop obsolete and useless patches.
* Rebase patches.
* Set POLICY_DISTRO from redhat to debian, which can reduce the amount
  of local patches.
* Set max kernel policy version from 31 to 33.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
V2 Changes: Fix su command failure
            Drop useless patches for MLS policy

 .../refpolicy/refpolicy-minimum_git.bb        |   3 +-
 .../refpolicy/refpolicy-targeted_git.bb       |   1 +
 ...tile-alias-common-var-volatile-paths.patch |   6 +-
 ...inimum-make-sysadmin-module-optional.patch |   6 +-
 ...ed-make-unconfined_u-the-default-sel.patch | 126 +-----------
 ...box-set-aliases-for-bin-sbin-and-usr.patch |   6 +-
 ...icy-minimum-make-xdg-module-optional.patch |  40 ++++
 ...ed-add-capability2-bpf-and-perfmon-f.patch |  52 +++++
 ...y-policy-to-common-yocto-hostname-al.patch |   2 +-
 ...fpolicy-minimum-enable-nscd_use_shm.patch} |   4 +-
 ...sr-bin-bash-context-to-bin-bash.bash.patch |   2 +-
 ...abel-resolv.conf-in-var-run-properly.patch |   2 +-
 ...-apply-login-context-to-login.shadow.patch |  10 +-
 .../0007-fc-bind-fix-real-path-for-bind.patch |  32 ---
 ...fc-hwclock-add-hwclock-alternatives.patch} |   2 +-
 ...-apply-policy-to-dmesg-alternatives.patch} |   2 +-
 ...sh-apply-policy-to-ssh-alternatives.patch} |   2 +-
 ...ly-policy-to-network-commands-alter.patch} |  20 +-
 ...-apply-policy-to-udevadm-in-libexec.patch} |   4 +-
 ...ly-rpm_exec-policy-to-cpio-binaries.patch} |   2 +-
 ...-su-apply-policy-to-su-alternatives.patch} |   2 +-
 ...c-fstools-fix-real-path-for-fstools.patch} |   2 +-
 ...ix-update-alternatives-for-sysvinit.patch} |   2 +-
 ...-apply-policy-to-brctl-alternatives.patch} |   2 +-
 ...pply-policy-to-nologin-alternatives.patch} |   2 +-
 ...pply-policy-to-sulogin-alternatives.patch} |   2 +-
 ...p-apply-policy-to-ntpd-alternatives.patch} |   2 +-
 ...ply-policy-to-kerberos-alternatives.patch} |   2 +-
 ...p-apply-policy-to-ldap-alternatives.patch} |   2 +-
 ...ly-policy-to-postgresql-alternative.patch} |   2 +-
 ...apply-policy-to-screen-alternatives.patch} |   2 +-
 ...ly-policy-to-usermanage-alternative.patch} |  16 +-
 ...tty-add-file-context-to-start_getty.patch} |   2 +-
 ...-apply-policy-to-vlock-alternatives.patch} |   2 +-
 ...for-init-scripts-and-systemd-service.patch |  64 ++++++
 ...file-context-to-etc-network-if-files.patch |  33 ---
 ...s_dist-set-aliase-for-root-director.patch} |   6 +-
 ...ron-apply-policy-to-etc-init.d-crond.patch |  25 ---
 ...stem-logging-add-rules-for-the-syml.patch} |  22 +-
 ...ork-update-file-context-for-ifconfig.patch |  31 ---
 ...stem-logging-add-rules-for-syslogd-.patch} |   6 +-
 ...rnel-files-add-rules-for-the-symlin.patch} |  20 +-
 ...stem-logging-fix-auditd-startup-fai.patch} |  41 +---
 ...rnel-terminal-don-t-audit-tty_devic.patch} |   2 +-
 ...stem-modutils-allow-mod_t-to-access.patch} |   8 +-
 ...stem-getty-allow-getty_t-to-search-.patch} |   8 +-
 ...ervices-bluetooth-allow-bluetooth_t-.patch |  34 ++++
 ...rvices-rpcbind-allow-rpcbind_t-to-c.patch} |  24 +--
 ...ervices-avahi-allow-avahi_t-to-watch.patch |  34 ----
 ...ervices-ssh-do-not-audit-attempts-by.patch |  33 +++
 ...dmin-usermanage-allow-useradd-to-rel.patch |  71 +++++++
 ...ervices-bluetooth-fix-bluetoothd-sta.patch |  88 --------
 ...stem-systemd-enable-support-for-sys.patch} |   8 +-
 ...oles-sysadm-allow-sysadm-to-run-rpci.patch |  38 ----
 ...stem-systemd-fix-systemd-resolved-s.patch} |  35 ++--
 ...ervices-rpc-add-capability-dac_read_.patch |  34 ----
 ...ystem-systemd-allow-systemd_-_t-to-g.patch | 156 +++++++++++++++
 ...ystem-systemd-allow-systemd_hostname.patch |  41 ++++
 ...ervices-rngd-fix-security-context-fo.patch |  65 ------
 ...ystem-logging-fix-syslogd-failures-f.patch |  55 +++++
 ...ervices-ssh-allow-ssh_keygen_t-to-re.patch |  34 ----
 ...es-system-systemd-systemd-user-fixes.patch | 172 ++++++++++++++++
 ...ervices-ssh-make-respective-init-scr.patch |  33 ---
 ...stem-sysnetwork-support-priviledge-.patch} |  38 ++--
 ...ernel-terminal-allow-loging-to-reset.patch |  31 ---
 ...rvices-acpi-allow-acpid-to-watch-th.patch} |  14 +-
 ...stem-modutils-allow-kmod_t-to-write.patch} |  15 +-
 ...ystem-selinuxutil-allow-semanage_t-t.patch |  33 ---
 ...dmin-su-allow-su-to-map-SELinux-stat.patch |  68 +++++++
 ...stem-mount-make-mount_t-domain-MLS-.patch} |  15 +-
 ...les-sysadm-MLS-sysadm-rw-to-clearan.patch} |  15 +-
 ...ystem-init-add-capability2-bpf-and-p.patch |  37 ----
 ...rvices-rpc-make-nfsd_t-domain-MLS-t.patch} |  27 +--
 ...ystem-systemd-allow-systemd_logind_t.patch |  37 ----
 ...min-dmesg-make-dmesg_t-MLS-trusted-.patch} |   6 +-
 ...ystem-logging-set-label-devlog_t-to-.patch |  86 --------
 ...rnel-kernel-make-kernel_t-MLS-trust.patch} |  15 +-
 ...-system-systemd-support-systemd-user.patch | 189 ------------------
 ...stem-init-make-init_t-MLS-trusted-f.patch} |   6 +-
 ...ystem-systemd-allow-systemd-generato.patch |  69 -------
 ...ystem-systemd-allow-systemd_backligh.patch |  35 ----
 ...stem-systemd-make-systemd-tmpfiles_.patch} |   6 +-
 ...ystem-logging-fix-systemd-journald-s.patch |  47 -----
 ...ystem-systemd-systemd-make-systemd_-.patch |  91 +++++++++
 ...ervices-cron-allow-crond_t-to-search.patch |  34 ----
 ...stem-logging-add-the-syslogd_t-to-t.patch} |   8 +-
 ...ervices-crontab-allow-sysadm_r-to-ru.patch |  46 -----
 ...stem-init-make-init_t-MLS-trusted-f.patch} |   6 +-
 ...stem-init-all-init_t-to-read-any-le.patch} |   6 +-
 ...stem-logging-allow-auditd_t-to-writ.patch} |   6 +-
 ...rnel-kernel-make-kernel_t-MLS-trust.patch} |  15 +-
 ...ystem-setrans-allow-setrans-to-acces.patch |  42 ----
 ...stem-setrans-allow-setrans_t-use-fd.patch} |   6 +-
 ...oles-sysadm-allow-sysadm_t-to-watch-.patch |  33 ---
 ...stem-systemd-make-_systemd_t-MLS-tr.patch} |  12 +-
 ...ystem-logging-make-syslogd_runtime_t.patch |  48 +++++
 ...ystem-selinux-allow-setfiles_t-to-re.patch |  44 ----
 ...ystem-systemd-make-systemd-logind-do.patch |  42 ----
 ...ystem-systemd-systemd-user-sessions-.patch |  41 ----
 ...ystem-systemd-systemd-make-systemd_-.patch | 162 ---------------
 ...ervices-ntp-make-nptd_t-MLS-trusted-.patch |  40 ----
 ...ervices-acpi-make-acpid_t-domain-MLS.patch |  35 ----
 ...ervices-avahi-make-avahi_t-MLS-trust.patch |  29 ---
 ...ervices-bluetooth-make-bluetooth_t-d.patch |  36 ----
 ...ystem-sysnetwork-make-dhcpc_t-domain.patch |  38 ----
 ...ervices-inetd-make-inetd_t-domain-ML.patch |  36 ----
 ...ervices-bind-make-named_t-domain-MLS.patch |  38 ----
 ...ervices-rpc-make-rpcd_t-MLS-trusted-.patch |  36 ----
 ...ge-update-file-context-for-chfn-chsh.patch |  34 ----
 .../refpolicy/refpolicy_common.inc            | 152 ++++++--------
 recipes-security/refpolicy/refpolicy_git.inc  |   4 +-
 111 files changed, 1230 insertions(+), 2266 deletions(-)
 create mode 100644 recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-make-xdg-module-optional.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0002-refpolicy-targeted-add-capability2-bpf-and-perfmon-f.patch
 rename recipes-security/refpolicy/refpolicy/{0002-refpolicy-minimum-enable-nscd_use_shm.patch => 0003-refpolicy-minimum-enable-nscd_use_shm.patch} (87%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0007-fc-bind-fix-real-path-for-bind.patch
 rename recipes-security/refpolicy/refpolicy/{0008-fc-hwclock-add-hwclock-alternatives.patch => 0007-fc-hwclock-add-hwclock-alternatives.patch} (92%)
 rename recipes-security/refpolicy/refpolicy/{0009-fc-dmesg-apply-policy-to-dmesg-alternatives.patch => 0008-fc-dmesg-apply-policy-to-dmesg-alternatives.patch} (92%)
 rename recipes-security/refpolicy/refpolicy/{0010-fc-ssh-apply-policy-to-ssh-alternatives.patch => 0009-fc-ssh-apply-policy-to-ssh-alternatives.patch} (94%)
 rename recipes-security/refpolicy/refpolicy/{0011-fc-sysnetwork-apply-policy-to-ip-alternatives.patch => 0010-fc-sysnetwork-apply-policy-to-network-commands-alter.patch} (65%)
 rename recipes-security/refpolicy/refpolicy/{0012-fc-udev-apply-policy-to-udevadm-in-libexec.patch => 0011-fc-udev-apply-policy-to-udevadm-in-libexec.patch} (90%)
 rename recipes-security/refpolicy/refpolicy/{0013-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch => 0012-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch} (92%)
 rename recipes-security/refpolicy/refpolicy/{0014-fc-su-apply-policy-to-su-alternatives.patch => 0013-fc-su-apply-policy-to-su-alternatives.patch} (93%)
 rename recipes-security/refpolicy/refpolicy/{0015-fc-fstools-fix-real-path-for-fstools.patch => 0014-fc-fstools-fix-real-path-for-fstools.patch} (98%)
 rename recipes-security/refpolicy/refpolicy/{0016-fc-init-fix-update-alternatives-for-sysvinit.patch => 0015-fc-init-fix-update-alternatives-for-sysvinit.patch} (97%)
 rename recipes-security/refpolicy/refpolicy/{0017-fc-brctl-apply-policy-to-brctl-alternatives.patch => 0016-fc-brctl-apply-policy-to-brctl-alternatives.patch} (92%)
 rename recipes-security/refpolicy/refpolicy/{0018-fc-corecommands-apply-policy-to-nologin-alternatives.patch => 0017-fc-corecommands-apply-policy-to-nologin-alternatives.patch} (94%)
 rename recipes-security/refpolicy/refpolicy/{0019-fc-locallogin-apply-policy-to-sulogin-alternatives.patch => 0018-fc-locallogin-apply-policy-to-sulogin-alternatives.patch} (93%)
 rename recipes-security/refpolicy/refpolicy/{0020-fc-ntp-apply-policy-to-ntpd-alternatives.patch => 0019-fc-ntp-apply-policy-to-ntpd-alternatives.patch} (93%)
 rename recipes-security/refpolicy/refpolicy/{0021-fc-kerberos-apply-policy-to-kerberos-alternatives.patch => 0020-fc-kerberos-apply-policy-to-kerberos-alternatives.patch} (97%)
 rename recipes-security/refpolicy/refpolicy/{0022-fc-ldap-apply-policy-to-ldap-alternatives.patch => 0021-fc-ldap-apply-policy-to-ldap-alternatives.patch} (96%)
 rename recipes-security/refpolicy/refpolicy/{0023-fc-postgresql-apply-policy-to-postgresql-alternative.patch => 0022-fc-postgresql-apply-policy-to-postgresql-alternative.patch} (96%)
 rename recipes-security/refpolicy/refpolicy/{0024-fc-screen-apply-policy-to-screen-alternatives.patch => 0023-fc-screen-apply-policy-to-screen-alternatives.patch} (93%)
 rename recipes-security/refpolicy/refpolicy/{0025-fc-usermanage-apply-policy-to-usermanage-alternative.patch => 0024-fc-usermanage-apply-policy-to-usermanage-alternative.patch} (80%)
 rename recipes-security/refpolicy/refpolicy/{0026-fc-getty-add-file-context-to-start_getty.patch => 0025-fc-getty-add-file-context-to-start_getty.patch} (92%)
 rename recipes-security/refpolicy/refpolicy/{0028-fc-vlock-apply-policy-to-vlock-alternatives.patch => 0026-fc-vlock-apply-policy-to-vlock-alternatives.patch} (92%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0027-fc-add-fcontext-for-init-scripts-and-systemd-service.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0027-fc-init-add-file-context-to-etc-network-if-files.patch
 rename recipes-security/refpolicy/refpolicy/{0031-file_contexts.subs_dist-set-aliase-for-root-director.patch => 0028-file_contexts.subs_dist-set-aliase-for-root-director.patch} (87%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0029-fc-cron-apply-policy-to-etc-init.d-crond.patch
 rename recipes-security/refpolicy/refpolicy/{0032-policy-modules-system-logging-add-rules-for-the-syml.patch => 0029-policy-modules-system-logging-add-rules-for-the-syml.patch} (81%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0030-fc-sysnetwork-update-file-context-for-ifconfig.patch
 rename recipes-security/refpolicy/refpolicy/{0033-policy-modules-system-logging-add-rules-for-syslogd-.patch => 0030-policy-modules-system-logging-add-rules-for-syslogd-.patch} (87%)
 rename recipes-security/refpolicy/refpolicy/{0034-policy-modules-kernel-files-add-rules-for-the-symlin.patch => 0031-policy-modules-kernel-files-add-rules-for-the-symlin.patch} (80%)
 rename recipes-security/refpolicy/refpolicy/{0035-policy-modules-system-logging-fix-auditd-startup-fai.patch => 0032-policy-modules-system-logging-fix-auditd-startup-fai.patch} (50%)
 rename recipes-security/refpolicy/refpolicy/{0036-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch => 0033-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch} (94%)
 rename recipes-security/refpolicy/refpolicy/{0037-policy-modules-system-modutils-allow-mod_t-to-access.patch => 0034-policy-modules-system-modutils-allow-mod_t-to-access.patch} (92%)
 rename recipes-security/refpolicy/refpolicy/{0039-policy-modules-system-getty-allow-getty_t-to-search-.patch => 0035-policy-modules-system-getty-allow-getty_t-to-search-.patch} (81%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0036-policy-modules-services-bluetooth-allow-bluetooth_t-.patch
 rename recipes-security/refpolicy/refpolicy/{0043-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch => 0037-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch} (61%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0038-policy-modules-services-avahi-allow-avahi_t-to-watch.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0038-policy-modules-services-ssh-do-not-audit-attempts-by.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0039-policy-modules-admin-usermanage-allow-useradd-to-rel.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0040-policy-modules-services-bluetooth-fix-bluetoothd-sta.patch
 rename recipes-security/refpolicy/refpolicy/{0049-policy-modules-system-systemd-enable-support-for-sys.patch => 0040-policy-modules-system-systemd-enable-support-for-sys.patch} (91%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0041-policy-modules-roles-sysadm-allow-sysadm-to-run-rpci.patch
 rename recipes-security/refpolicy/refpolicy/{0050-policy-modules-system-systemd-fix-systemd-resolved-s.patch => 0041-policy-modules-system-systemd-fix-systemd-resolved-s.patch} (67%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0042-policy-modules-services-rpc-add-capability-dac_read_.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0042-policy-modules-system-systemd-allow-systemd_-_t-to-g.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0043-policy-modules-system-systemd-allow-systemd_hostname.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0044-policy-modules-services-rngd-fix-security-context-fo.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0044-policy-modules-system-logging-fix-syslogd-failures-f.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0045-policy-modules-services-ssh-allow-ssh_keygen_t-to-re.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0045-policy-modules-system-systemd-systemd-user-fixes.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0046-policy-modules-services-ssh-make-respective-init-scr.patch
 rename recipes-security/refpolicy/refpolicy/{0060-policy-modules-system-sysnetwork-support-priviledge-.patch => 0046-policy-modules-system-sysnetwork-support-priviledge-.patch} (77%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0047-policy-modules-kernel-terminal-allow-loging-to-reset.patch
 rename recipes-security/refpolicy/refpolicy/{0061-policy-modules-services-acpi-allow-acpid-to-watch-th.patch => 0047-policy-modules-services-acpi-allow-acpid-to-watch-th.patch} (76%)
 rename recipes-security/refpolicy/refpolicy/{0063-policy-modules-system-modutils-allow-kmod_t-to-write.patch => 0048-policy-modules-system-modutils-allow-kmod_t-to-write.patch} (73%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0048-policy-modules-system-selinuxutil-allow-semanage_t-t.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0049-policy-modules-admin-su-allow-su-to-map-SELinux-stat.patch
 rename recipes-security/refpolicy/refpolicy/{0066-policy-modules-system-mount-make-mount_t-domain-MLS-.patch => 0050-policy-modules-system-mount-make-mount_t-domain-MLS-.patch} (76%)
 rename recipes-security/refpolicy/refpolicy/{0067-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch => 0051-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch} (80%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0051-policy-modules-system-init-add-capability2-bpf-and-p.patch
 rename recipes-security/refpolicy/refpolicy/{0068-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch => 0052-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch} (65%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0052-policy-modules-system-systemd-allow-systemd_logind_t.patch
 rename recipes-security/refpolicy/refpolicy/{0069-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch => 0053-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch} (85%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0053-policy-modules-system-logging-set-label-devlog_t-to-.patch
 rename recipes-security/refpolicy/refpolicy/{0070-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch => 0054-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch} (91%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0054-policy-modules-system-systemd-support-systemd-user.patch
 rename recipes-security/refpolicy/refpolicy/{0071-policy-modules-system-init-make-init_t-MLS-trusted-f.patch => 0055-policy-modules-system-init-make-init_t-MLS-trusted-f.patch} (90%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0055-policy-modules-system-systemd-allow-systemd-generato.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0056-policy-modules-system-systemd-allow-systemd_backligh.patch
 rename recipes-security/refpolicy/refpolicy/{0072-policy-modules-system-systemd-make-systemd-tmpfiles_.patch => 0056-policy-modules-system-systemd-make-systemd-tmpfiles_.patch} (92%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0057-policy-modules-system-logging-fix-systemd-journald-s.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0057-policy-modules-system-systemd-systemd-make-systemd_-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0058-policy-modules-services-cron-allow-crond_t-to-search.patch
 rename recipes-security/refpolicy/refpolicy/{0073-policy-modules-system-logging-add-the-syslogd_t-to-t.patch => 0058-policy-modules-system-logging-add-the-syslogd_t-to-t.patch} (84%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0059-policy-modules-services-crontab-allow-sysadm_r-to-ru.patch
 rename recipes-security/refpolicy/refpolicy/{0074-policy-modules-system-init-make-init_t-MLS-trusted-f.patch => 0059-policy-modules-system-init-make-init_t-MLS-trusted-f.patch} (86%)
 rename recipes-security/refpolicy/refpolicy/{0075-policy-modules-system-init-all-init_t-to-read-any-le.patch => 0060-policy-modules-system-init-all-init_t-to-read-any-le.patch} (88%)
 rename recipes-security/refpolicy/refpolicy/{0076-policy-modules-system-logging-allow-auditd_t-to-writ.patch => 0061-policy-modules-system-logging-allow-auditd_t-to-writ.patch} (88%)
 rename recipes-security/refpolicy/refpolicy/{0077-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch => 0062-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch} (73%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0062-policy-modules-system-setrans-allow-setrans-to-acces.patch
 rename recipes-security/refpolicy/refpolicy/{0082-policy-modules-system-setrans-allow-setrans_t-use-fd.patch => 0063-policy-modules-system-setrans-allow-setrans_t-use-fd.patch} (83%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0064-policy-modules-roles-sysadm-allow-sysadm_t-to-watch-.patch
 rename recipes-security/refpolicy/refpolicy/{0090-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch => 0064-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch} (82%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0065-policy-modules-system-logging-make-syslogd_runtime_t.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0065-policy-modules-system-selinux-allow-setfiles_t-to-re.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0078-policy-modules-system-systemd-make-systemd-logind-do.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0079-policy-modules-system-systemd-systemd-user-sessions-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0080-policy-modules-system-systemd-systemd-make-systemd_-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0081-policy-modules-services-ntp-make-nptd_t-MLS-trusted-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0083-policy-modules-services-acpi-make-acpid_t-domain-MLS.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0084-policy-modules-services-avahi-make-avahi_t-MLS-trust.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0085-policy-modules-services-bluetooth-make-bluetooth_t-d.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0086-policy-modules-system-sysnetwork-make-dhcpc_t-domain.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0087-policy-modules-services-inetd-make-inetd_t-domain-ML.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0088-policy-modules-services-bind-make-named_t-domain-MLS.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0089-policy-modules-services-rpc-make-rpcd_t-MLS-trusted-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0091-fc-usermanage-update-file-context-for-chfn-chsh.patch

diff --git a/recipes-security/refpolicy/refpolicy-minimum_git.bb b/recipes-security/refpolicy/refpolicy-minimum_git.bb
index c4c9031..2e95b9f 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_git.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_git.bb
@@ -13,7 +13,8 @@ domains are unconfined. \
 
 SRC_URI += " \
         file://0001-refpolicy-minimum-make-sysadmin-module-optional.patch \
-        file://0002-refpolicy-minimum-enable-nscd_use_shm.patch \
+        file://0002-refpolicy-minimum-make-xdg-module-optional.patch \
+        file://0003-refpolicy-minimum-enable-nscd_use_shm.patch \
         "
 
 POLICY_NAME = "minimum"
diff --git a/recipes-security/refpolicy/refpolicy-targeted_git.bb b/recipes-security/refpolicy/refpolicy-targeted_git.bb
index de81d46..15226db 100644
--- a/recipes-security/refpolicy/refpolicy-targeted_git.bb
+++ b/recipes-security/refpolicy/refpolicy-targeted_git.bb
@@ -14,4 +14,5 @@ include refpolicy_${PV}.inc
 
 SRC_URI += " \
         file://0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch \
+        file://0002-refpolicy-targeted-add-capability2-bpf-and-perfmon-f.patch \
         "
diff --git a/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch b/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
index 9f85980..82a8a6f 100644
--- a/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
+++ b/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
@@ -1,4 +1,4 @@
-From 8a6052604e4f39ef9cbab62372006bc6f736dbed Mon Sep 17 00:00:00 2001
+From 12b64239af12370bc4e722ff8b97f7090ae4130c Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 16:14:09 -0400
 Subject: [PATCH] fc/subs/volatile: alias common /var/volatile paths
@@ -15,10 +15,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 6 insertions(+)
 
 diff --git a/config/file_contexts.subs_dist b/config/file_contexts.subs_dist
-index 653d25d93..652e1dd35 100644
+index ba22ce7e7..23d4328f7 100644
 --- a/config/file_contexts.subs_dist
 +++ b/config/file_contexts.subs_dist
-@@ -32,3 +32,9 @@
+@@ -33,3 +33,9 @@
  # not for refpolicy intern, but for /var/run using applications,
  # like systemd tmpfiles or systemd socket configurations
  /var/run /run
diff --git a/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sysadmin-module-optional.patch b/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sysadmin-module-optional.patch
index d300edd..c53419d 100644
--- a/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sysadmin-module-optional.patch
+++ b/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sysadmin-module-optional.patch
@@ -1,4 +1,4 @@
-From dc757d6df2314d82029b23b409df8de22a4df45e Mon Sep 17 00:00:00 2001
+From 84099c81f31a6f883d64b4be3362fbafe1c6668c Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 5 Apr 2019 11:53:28 -0400
 Subject: [PATCH] refpolicy-minimum: make sysadmin module optional
@@ -22,10 +22,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  2 files changed, 11 insertions(+), 7 deletions(-)
 
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index aa57a5661..9b03d3767 100644
+index 5a19f0e43..1f4a671dc 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -527,13 +527,15 @@ ifdef(`init_systemd',`
+@@ -556,13 +556,15 @@ ifdef(`init_systemd',`
  		unconfined_write_keys(init_t)
  	')
  ',`
diff --git a/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch b/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch
index 89bc68e..9fc9dcd 100644
--- a/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch
+++ b/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch
@@ -1,4 +1,4 @@
-From 7ff6cf3766a672c4f2b7bd0dc5efa296bd6aba51 Mon Sep 17 00:00:00 2001
+From 2da63c373fd447d2f7ca539566ef2ed4ea882228 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Mon, 20 Apr 2020 11:50:03 +0800
 Subject: [PATCH] refpolicy-targeted: make unconfined_u the default selinux
@@ -8,9 +8,6 @@ For targeted policy type, we define unconfined_u as the default selinux
 user for root and normal users, so users could login in and run most
 commands and services on unconfined domains.
 
-Also add rules for users to run init scripts directly, instead of via
-run_init.
-
 Upstream-Status: Inappropriate [configuration]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
@@ -18,13 +15,11 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- config/appconfig-mcs/failsafe_context |  2 +-
- config/appconfig-mcs/seusers          |  4 +--
- policy/modules/roles/sysadm.te        |  1 +
- policy/modules/system/init.if         | 42 +++++++++++++++++++++++----
- policy/modules/system/unconfined.te   |  7 +++++
- policy/users                          |  6 ++--
- 6 files changed, 50 insertions(+), 12 deletions(-)
+ config/appconfig-mcs/failsafe_context | 2 +-
+ config/appconfig-mcs/seusers          | 4 ++--
+ policy/modules/system/unconfined.te   | 5 +++++
+ policy/users                          | 6 +++---
+ 4 files changed, 11 insertions(+), 6 deletions(-)
 
 diff --git a/config/appconfig-mcs/failsafe_context b/config/appconfig-mcs/failsafe_context
 index 999abd9a3..a50bde775 100644
@@ -42,106 +37,8 @@ index ce614b41b..c0903d98b 100644
 -__default__:user_u:s0
 +root:unconfined_u:s0-mcs_systemhigh
 +__default__:unconfined_u:s0
-diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
-index ce7d77d31..1aff2c31a 100644
---- a/policy/modules/roles/sysadm.te
-+++ b/policy/modules/roles/sysadm.te
-@@ -53,6 +53,7 @@ ubac_fd_exempt(sysadm_t)
- 
- init_exec(sysadm_t)
- init_admin(sysadm_t)
-+init_script_role_transition(sysadm_r)
- 
- # Add/remove user home directories
- userdom_manage_user_home_dirs(sysadm_t)
-diff --git a/policy/modules/system/init.if b/policy/modules/system/init.if
-index 98e94283f..eb6d5b32d 100644
---- a/policy/modules/system/init.if
-+++ b/policy/modules/system/init.if
-@@ -1821,11 +1821,12 @@ interface(`init_script_file_entry_type',`
- #
- interface(`init_spec_domtrans_script',`
- 	gen_require(`
--		type initrc_t, initrc_exec_t;
-+		type initrc_t;
-+		attribute init_script_file_type;
- 	')
- 
- 	files_list_etc($1)
--	spec_domtrans_pattern($1, initrc_exec_t, initrc_t)
-+	spec_domtrans_pattern($1, init_script_file_type, initrc_t)
- 
- 	ifdef(`distro_gentoo',`
- 		gen_require(`
-@@ -1836,11 +1837,11 @@ interface(`init_spec_domtrans_script',`
- 	')
- 
- 	ifdef(`enable_mcs',`
--		range_transition $1 initrc_exec_t:process s0;
-+		range_transition $1 init_script_file_type:process s0;
- 	')
- 
- 	ifdef(`enable_mls',`
--		range_transition $1 initrc_exec_t:process s0 - mls_systemhigh;
-+		range_transition $1 init_script_file_type:process s0 - mls_systemhigh;
- 	')
- ')
- 
-@@ -1857,17 +1858,18 @@ interface(`init_spec_domtrans_script',`
- interface(`init_domtrans_script',`
- 	gen_require(`
- 		type initrc_t, initrc_exec_t;
-+		attribute init_script_file_type;
- 	')
- 
- 	files_list_etc($1)
- 	domtrans_pattern($1, initrc_exec_t, initrc_t)
- 
- 	ifdef(`enable_mcs',`
--		range_transition $1 initrc_exec_t:process s0;
-+		range_transition $1 init_script_file_type:process s0;
- 	')
- 
- 	ifdef(`enable_mls',`
--		range_transition $1 initrc_exec_t:process s0 - mls_systemhigh;
-+		range_transition $1 init_script_file_type:process s0 - mls_systemhigh;
- 	')
- ')
- 
-@@ -3532,3 +3534,31 @@ interface(`init_getrlimit',`
- 
- 	allow $1 init_t:process getrlimit;
- ')
-+
-+########################################
-+## <summary>
-+##	Transition to system_r when execute an init script
-+## </summary>
-+## <desc>
-+##	<p>
-+##	Execute a init script in a specified role
-+##	</p>
-+##	<p>
-+##	No interprocess communication (signals, pipes,
-+##	etc.) is provided by this interface since
-+##	the domains are not owned by this module.
-+##	</p>
-+## </desc>
-+## <param name="source_role">
-+##	<summary>
-+##	Role to transition from.
-+##	</summary>
-+## </param>
-+#
-+interface(`init_script_role_transition',`
-+	gen_require(`
-+		attribute init_script_file_type;
-+	')
-+
-+	role_transition $1 init_script_file_type system_r;
-+')
 diff --git a/policy/modules/system/unconfined.te b/policy/modules/system/unconfined.te
-index 385c88695..87adb7e9d 100644
+index 4972094cb..b6d769412 100644
 --- a/policy/modules/system/unconfined.te
 +++ b/policy/modules/system/unconfined.te
 @@ -20,6 +20,11 @@ type unconfined_execmem_t alias ada_t;
@@ -156,15 +53,6 @@ index 385c88695..87adb7e9d 100644
  
  ########################################
  #
-@@ -50,6 +55,8 @@ userdom_user_home_dir_filetrans_user_home_content(unconfined_t, { dir file lnk_f
- ifdef(`direct_sysadm_daemon',`
-         optional_policy(`
-                 init_run_daemon(unconfined_t, unconfined_r)
-+                init_domtrans_script(unconfined_t)
-+                init_script_role_transition(unconfined_r)
-         ')
- ',`
-         ifdef(`distro_gentoo',`
 diff --git a/policy/users b/policy/users
 index ca203758c..e737cd9cc 100644
 --- a/policy/users
diff --git a/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch b/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
index 5907c4d..e46dc66 100644
--- a/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
+++ b/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
@@ -1,4 +1,4 @@
-From 0ee7bc5f28ffae30b1a1f40edd96cfed993db667 Mon Sep 17 00:00:00 2001
+From a5d8d981e510f05e0bd31235e8889730df30158b Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 20:48:10 -0400
 Subject: [PATCH] fc/subs/busybox: set aliases for bin, sbin and usr
@@ -15,10 +15,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 6 insertions(+)
 
 diff --git a/config/file_contexts.subs_dist b/config/file_contexts.subs_dist
-index 652e1dd35..a38d58e16 100644
+index 23d4328f7..690007f22 100644
 --- a/config/file_contexts.subs_dist
 +++ b/config/file_contexts.subs_dist
-@@ -38,3 +38,9 @@
+@@ -39,3 +39,9 @@
  # volatile hierarchy.
  /var/volatile/log /var/log
  /var/volatile/tmp /var/tmp
diff --git a/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-make-xdg-module-optional.patch b/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-make-xdg-module-optional.patch
new file mode 100644
index 0000000..06800d0
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-make-xdg-module-optional.patch
@@ -0,0 +1,40 @@
+From caa9969ddd3b163fa4116fba7a87aa142d6975c2 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Wed, 29 Sep 2021 11:08:49 +0800
+Subject: [PATCH] refpolicy-minimum: make xdg module optional
+
+The systemd module invokes xdg_config_content and xdg_data_content
+interfaces which are from xdg module. Since xdg is not a core module, we
+could make it optional in minimum policy.
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 8 ++++++--
+ 1 file changed, 6 insertions(+), 2 deletions(-)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
+index 76bf7be68..e20db90ce 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -276,10 +276,14 @@ files_type(systemd_update_run_t)
+ 
+ type systemd_conf_home_t;
+ init_unit_file(systemd_conf_home_t)
+-xdg_config_content(systemd_conf_home_t)
++optional_policy(`
++	xdg_config_content(systemd_conf_home_t)
++')
+ 
+ type systemd_data_home_t;
+-xdg_data_content(systemd_data_home_t)
++optional_policy(`
++	xdg_data_content(systemd_data_home_t)
++')
+ 
+ type systemd_user_runtime_notify_t;
+ userdom_user_runtime_content(systemd_user_runtime_notify_t)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0002-refpolicy-targeted-add-capability2-bpf-and-perfmon-f.patch b/recipes-security/refpolicy/refpolicy/0002-refpolicy-targeted-add-capability2-bpf-and-perfmon-f.patch
new file mode 100644
index 0000000..6e0a334
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0002-refpolicy-targeted-add-capability2-bpf-and-perfmon-f.patch
@@ -0,0 +1,52 @@
+From df4c7a48bbff04c9460dc432bb1139b16a6eadc0 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Wed, 29 Sep 2021 16:43:54 +0800
+Subject: [PATCH] refpolicy-targeted: add capability2 bpf and perfmon for
+ unconfined_t
+
+Fixes:
+avc: denied { bpf } for pid=433 comm="systemd" capability=39
+scontext=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
+tcontext=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
+tclass=capability2 permissive=0
+
+avc: denied { perfmon } for pid=433 comm="systemd" capability=38
+scontext=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
+tcontext=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
+tclass=capability2 permissive=0
+
+type=USER_AVC msg=audit(1632901631.693:86): pid=433 uid=0 auid=0 ses=3
+subj=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 msg='avc:
+denied { reload } for auid=n/a uid=0 gid=0 cmdline=""
+scontext=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
+tcontext=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
+tclass=system permissive=0  exe="/lib/systemd/systemd" sauid=0
+hostname=? addr=? terminal=?'UID="root" AUID="root" AUID="root"
+UID="root" GID="root" SAUID="root"
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/unconfined.if | 5 +++++
+ 1 file changed, 5 insertions(+)
+
+diff --git a/policy/modules/system/unconfined.if b/policy/modules/system/unconfined.if
+index a139cfe78..807e959c3 100644
+--- a/policy/modules/system/unconfined.if
++++ b/policy/modules/system/unconfined.if
+@@ -66,6 +66,11 @@ interface(`unconfined_domain_noaudit',`
+ 	files_start_etc_service($1)
+ 	files_stop_etc_service($1)
+ 
++	ifdef(`init_systemd',`
++		allow $1 self:capability2 { bpf perfmon };
++		allow $1 self:system reload;
++	')
++
+ 	tunable_policy(`allow_execheap',`
+ 		# Allow making the stack executable via mprotect.
+ 		allow $1 self:process execheap;
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch b/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
index db3f9c3..41aa0f2 100644
--- a/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
+++ b/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
@@ -1,4 +1,4 @@
-From e0c34d0feb5305b1397f252d698501b641277517 Mon Sep 17 00:00:00 2001
+From cd6234302686394aa8bf39595ca076ec55959dc3 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] fc/hostname: apply policy to common yocto hostname
diff --git a/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-enable-nscd_use_shm.patch b/recipes-security/refpolicy/refpolicy/0003-refpolicy-minimum-enable-nscd_use_shm.patch
similarity index 87%
rename from recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-enable-nscd_use_shm.patch
rename to recipes-security/refpolicy/refpolicy/0003-refpolicy-minimum-enable-nscd_use_shm.patch
index 5598c70..f23ad77 100644
--- a/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-enable-nscd_use_shm.patch
+++ b/recipes-security/refpolicy/refpolicy/0003-refpolicy-minimum-enable-nscd_use_shm.patch
@@ -1,7 +1,7 @@
-From d71b79cc9b174181934d588f64baa5637c8e85d1 Mon Sep 17 00:00:00 2001
+From 42407b8bdea4ebb5cbd6c5b8af6a003223e6aa77 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 26 Feb 2021 09:13:23 +0800
-Subject: [PATCH] policy/modules/services/nscd: enable nscd_use_shm
+Subject: [PATCH] refpolicy-minimum: enable nscd_use_shm
 
 Fixes:
 avc: denied { listen } for pid=199 comm="systemd-resolve"
diff --git a/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch b/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
index 4a6d5eb..78b17fb 100644
--- a/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
+++ b/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
@@ -1,4 +1,4 @@
-From 8d2c24bc1e2ef8ddf3cf7a08297cfab8a8a92b0d Mon Sep 17 00:00:00 2001
+From 96674eb9e7fe69ed0390d5ba6a7a8c80609efe77 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 21:37:32 -0400
 Subject: [PATCH] fc/bash: apply /usr/bin/bash context to /bin/bash.bash
diff --git a/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch b/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
index cb36ac4..2596630 100644
--- a/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
+++ b/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
@@ -1,4 +1,4 @@
-From 85a77289d193bb3335c78f6d51b4ae2b81249952 Mon Sep 17 00:00:00 2001
+From 2191dd96ab337c1c1d5b16f9ba59a568fe6c0864 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 4 Apr 2019 10:45:03 -0400
 Subject: [PATCH] fc/resolv.conf: label resolv.conf in var/run/ properly
diff --git a/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-context-to-login.shadow.patch b/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-context-to-login.shadow.patch
index 30bbe07..fdd4010 100644
--- a/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-context-to-login.shadow.patch
+++ b/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-context-to-login.shadow.patch
@@ -1,4 +1,4 @@
-From 253ab75676232be5522fc628b0819d0c48a08c03 Mon Sep 17 00:00:00 2001
+From 8d8e6e198203bcfcee2258f3d1137dd66cdf3db2 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 21:43:53 -0400
 Subject: [PATCH] fc/login: apply login context to login.shadow
@@ -12,17 +12,17 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/system/authlogin.fc b/policy/modules/system/authlogin.fc
-index 7fd315706..fa86d6f92 100644
+index 50efcff7b..5cb48882c 100644
 --- a/policy/modules/system/authlogin.fc
 +++ b/policy/modules/system/authlogin.fc
-@@ -5,6 +5,7 @@
- /etc/shadow.*		--	gen_context(system_u:object_r:shadow_t,s0)
+@@ -6,6 +6,7 @@
+ /etc/tcb(/.*)?		--	gen_context(system_u:object_r:shadow_t,s0)
  
  /usr/bin/login		--	gen_context(system_u:object_r:login_exec_t,s0)
 +/usr/bin/login\.shadow		--	gen_context(system_u:object_r:login_exec_t,s0)
  /usr/bin/pam_console_apply	--	gen_context(system_u:object_r:pam_console_exec_t,s0)
  /usr/bin/pam_timestamp_check	--	gen_context(system_u:object_r:pam_exec_t,s0)
- /usr/bin/unix_chkpwd		--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
+ /usr/bin/tcb_convert		--	gen_context(system_u:object_r:updpwd_exec_t,s0)
 -- 
 2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0007-fc-bind-fix-real-path-for-bind.patch b/recipes-security/refpolicy/refpolicy/0007-fc-bind-fix-real-path-for-bind.patch
deleted file mode 100644
index 351b30e..0000000
--- a/recipes-security/refpolicy/refpolicy/0007-fc-bind-fix-real-path-for-bind.patch
+++ /dev/null
@@ -1,32 +0,0 @@
-From 7e61e5d715451bafd785ec7db01e24e726e31c35 Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe_macdonald@mentor.com>
-Date: Thu, 28 Mar 2019 21:58:53 -0400
-Subject: [PATCH] fc/bind: fix real path for bind
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/services/bind.fc | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/services/bind.fc b/policy/modules/services/bind.fc
-index ce68a0af9..585103eb9 100644
---- a/policy/modules/services/bind.fc
-+++ b/policy/modules/services/bind.fc
-@@ -1,8 +1,10 @@
- /etc/rc\.d/init\.d/named	--	gen_context(system_u:object_r:named_initrc_exec_t,s0)
-+/etc/rc\.d/init\.d/bind	--	gen_context(system_u:object_r:named_initrc_exec_t,s0)
- /etc/rc\.d/init\.d/unbound	--	gen_context(system_u:object_r:named_initrc_exec_t,s0)
- 
- /etc/bind(/.*)?	gen_context(system_u:object_r:named_zone_t,s0)
- /etc/bind/named\.conf.*	--	gen_context(system_u:object_r:named_conf_t,s0)
-+/etc/bind/rndc\.conf.*	--	gen_context(system_u:object_r:named_conf_t,s0)
- /etc/bind/rndc\.key	--	gen_context(system_u:object_r:dnssec_t,s0)
- /etc/dnssec-trigger/dnssec_trigger_server\.key	--	gen_context(system_u:object_r:dnssec_t,s0)
- /etc/named\.rfc1912\.zones	--	gen_context(system_u:object_r:named_conf_t,s0)
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0008-fc-hwclock-add-hwclock-alternatives.patch b/recipes-security/refpolicy/refpolicy/0007-fc-hwclock-add-hwclock-alternatives.patch
similarity index 92%
rename from recipes-security/refpolicy/refpolicy/0008-fc-hwclock-add-hwclock-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0007-fc-hwclock-add-hwclock-alternatives.patch
index 75c8e7f..f3775c4 100644
--- a/recipes-security/refpolicy/refpolicy/0008-fc-hwclock-add-hwclock-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0007-fc-hwclock-add-hwclock-alternatives.patch
@@ -1,4 +1,4 @@
-From c7e69aa036d16a57709684fd2f72959f9a4ac251 Mon Sep 17 00:00:00 2001
+From 9914cb527171cf34bcef7af3bf558d480c88b978 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 21:59:18 -0400
 Subject: [PATCH] fc/hwclock: add hwclock alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0009-fc-dmesg-apply-policy-to-dmesg-alternatives.patch b/recipes-security/refpolicy/refpolicy/0008-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
similarity index 92%
rename from recipes-security/refpolicy/refpolicy/0009-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0008-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
index 3c939de..b1ab88c 100644
--- a/recipes-security/refpolicy/refpolicy/0009-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0008-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
@@ -1,4 +1,4 @@
-From 0fe5ae0d1b5f4268b04ba6c6134324385bb630a2 Mon Sep 17 00:00:00 2001
+From be2ecd331556a209488b50f81b55d52f5213486c Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 08:26:55 -0400
 Subject: [PATCH] fc/dmesg: apply policy to dmesg alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0010-fc-ssh-apply-policy-to-ssh-alternatives.patch b/recipes-security/refpolicy/refpolicy/0009-fc-ssh-apply-policy-to-ssh-alternatives.patch
similarity index 94%
rename from recipes-security/refpolicy/refpolicy/0010-fc-ssh-apply-policy-to-ssh-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0009-fc-ssh-apply-policy-to-ssh-alternatives.patch
index 2a89acc..746ae5e 100644
--- a/recipes-security/refpolicy/refpolicy/0010-fc-ssh-apply-policy-to-ssh-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0009-fc-ssh-apply-policy-to-ssh-alternatives.patch
@@ -1,4 +1,4 @@
-From e2d9462c5f26dc02f7d547548d8a94bfd79ea88f Mon Sep 17 00:00:00 2001
+From 8147a6888f6a50a79a409792f43fd71931234084 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 09:20:58 -0400
 Subject: [PATCH] fc/ssh: apply policy to ssh alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0011-fc-sysnetwork-apply-policy-to-ip-alternatives.patch b/recipes-security/refpolicy/refpolicy/0010-fc-sysnetwork-apply-policy-to-network-commands-alter.patch
similarity index 65%
rename from recipes-security/refpolicy/refpolicy/0011-fc-sysnetwork-apply-policy-to-ip-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0010-fc-sysnetwork-apply-policy-to-network-commands-alter.patch
index 9d7d71c..4ddc267 100644
--- a/recipes-security/refpolicy/refpolicy/0011-fc-sysnetwork-apply-policy-to-ip-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0010-fc-sysnetwork-apply-policy-to-network-commands-alter.patch
@@ -1,7 +1,7 @@
-From dc3edc3b65dccf57d4cb22eb220498c2a5d9685f Mon Sep 17 00:00:00 2001
+From 64b2fd0b93a33645f7cf7a33f2b95ce5e066652b Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Tue, 9 Jun 2015 21:22:52 +0530
-Subject: [PATCH] fc/sysnetwork: apply policy to ip alternatives
+Subject: [PATCH] fc/sysnetwork: apply policy to network commands alternatives
 
 Upstream-Status: Inappropriate [embedded specific]
 
@@ -10,14 +10,22 @@ Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/system/sysnetwork.fc | 3 +++
- 1 file changed, 3 insertions(+)
+ policy/modules/system/sysnetwork.fc | 4 ++++
+ 1 file changed, 4 insertions(+)
 
 diff --git a/policy/modules/system/sysnetwork.fc b/policy/modules/system/sysnetwork.fc
-index c9ec4e5ab..c3291962d 100644
+index c9ec4e5ab..4ca151524 100644
 --- a/policy/modules/system/sysnetwork.fc
 +++ b/policy/modules/system/sysnetwork.fc
-@@ -60,13 +60,16 @@ ifdef(`distro_redhat',`
+@@ -44,6 +44,7 @@ ifdef(`distro_redhat',`
+ /usr/bin/dhcpcd		        --	gen_context(system_u:object_r:dhcpc_exec_t,s0)
+ /usr/bin/ethtool		    --	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /usr/bin/ifconfig		    --	gen_context(system_u:object_r:ifconfig_exec_t,s0)
++/usr/bin/ifconfig\.net-tools		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /usr/bin/ip			        --	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /usr/bin/ipx_configure		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /usr/bin/ipx_interface		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+@@ -60,13 +61,16 @@ ifdef(`distro_redhat',`
  /usr/sbin/dhcpcd		--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
  /usr/sbin/ethtool		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /usr/sbin/ifconfig		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy/0012-fc-udev-apply-policy-to-udevadm-in-libexec.patch b/recipes-security/refpolicy/refpolicy/0011-fc-udev-apply-policy-to-udevadm-in-libexec.patch
similarity index 90%
rename from recipes-security/refpolicy/refpolicy/0012-fc-udev-apply-policy-to-udevadm-in-libexec.patch
rename to recipes-security/refpolicy/refpolicy/0011-fc-udev-apply-policy-to-udevadm-in-libexec.patch
index 0bb05e3..0dddf13 100644
--- a/recipes-security/refpolicy/refpolicy/0012-fc-udev-apply-policy-to-udevadm-in-libexec.patch
+++ b/recipes-security/refpolicy/refpolicy/0011-fc-udev-apply-policy-to-udevadm-in-libexec.patch
@@ -1,4 +1,4 @@
-From 9afd44d1300bc858c1569344fc1271e0468edad9 Mon Sep 17 00:00:00 2001
+From 29c082cbe398d4af9f69330be4fe66d1e0e3350d Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 09:36:08 -0400
 Subject: [PATCH] fc/udev: apply policy to udevadm in libexec
@@ -12,7 +12,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/system/udev.fc b/policy/modules/system/udev.fc
-index c88189fb7..ad4c0bba2 100644
+index 7898ff01c..bc717e60c 100644
 --- a/policy/modules/system/udev.fc
 +++ b/policy/modules/system/udev.fc
 @@ -24,6 +24,8 @@ ifdef(`distro_debian',`
diff --git a/recipes-security/refpolicy/refpolicy/0013-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch b/recipes-security/refpolicy/refpolicy/0012-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
similarity index 92%
rename from recipes-security/refpolicy/refpolicy/0013-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
rename to recipes-security/refpolicy/refpolicy/0012-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
index 55f0444..912c7c9 100644
--- a/recipes-security/refpolicy/refpolicy/0013-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
+++ b/recipes-security/refpolicy/refpolicy/0012-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
@@ -1,4 +1,4 @@
-From 79e58207060c25d5f2484ed164ab74413d00792a Mon Sep 17 00:00:00 2001
+From e99cedaf111e58ad0c409a14f203421dac7732b3 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 09:54:07 -0400
 Subject: [PATCH] fc/rpm: apply rpm_exec policy to cpio binaries
diff --git a/recipes-security/refpolicy/refpolicy/0014-fc-su-apply-policy-to-su-alternatives.patch b/recipes-security/refpolicy/refpolicy/0013-fc-su-apply-policy-to-su-alternatives.patch
similarity index 93%
rename from recipes-security/refpolicy/refpolicy/0014-fc-su-apply-policy-to-su-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0013-fc-su-apply-policy-to-su-alternatives.patch
index 8d1c9aa..9edebfd 100644
--- a/recipes-security/refpolicy/refpolicy/0014-fc-su-apply-policy-to-su-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0013-fc-su-apply-policy-to-su-alternatives.patch
@@ -1,4 +1,4 @@
-From a1281be5b894c0c6dc3471a1e6b6c910bab7aa46 Mon Sep 17 00:00:00 2001
+From c7bac7f6487ecc88954995492115ffc545c9b6db Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Thu, 13 Feb 2014 00:33:07 -0500
 Subject: [PATCH] fc/su: apply policy to su alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0015-fc-fstools-fix-real-path-for-fstools.patch b/recipes-security/refpolicy/refpolicy/0014-fc-fstools-fix-real-path-for-fstools.patch
similarity index 98%
rename from recipes-security/refpolicy/refpolicy/0015-fc-fstools-fix-real-path-for-fstools.patch
rename to recipes-security/refpolicy/refpolicy/0014-fc-fstools-fix-real-path-for-fstools.patch
index a9fbe33..bb516d8 100644
--- a/recipes-security/refpolicy/refpolicy/0015-fc-fstools-fix-real-path-for-fstools.patch
+++ b/recipes-security/refpolicy/refpolicy/0014-fc-fstools-fix-real-path-for-fstools.patch
@@ -1,4 +1,4 @@
-From 02f6557320c60d895397650a59c39708c8e63d27 Mon Sep 17 00:00:00 2001
+From 0139f926a398848199ae10a8f088f7655c0e6d79 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Mon, 27 Jan 2014 03:54:01 -0500
 Subject: [PATCH] fc/fstools: fix real path for fstools
diff --git a/recipes-security/refpolicy/refpolicy/0016-fc-init-fix-update-alternatives-for-sysvinit.patch b/recipes-security/refpolicy/refpolicy/0015-fc-init-fix-update-alternatives-for-sysvinit.patch
similarity index 97%
rename from recipes-security/refpolicy/refpolicy/0016-fc-init-fix-update-alternatives-for-sysvinit.patch
rename to recipes-security/refpolicy/refpolicy/0015-fc-init-fix-update-alternatives-for-sysvinit.patch
index a2e5762..6c6f6b5 100644
--- a/recipes-security/refpolicy/refpolicy/0016-fc-init-fix-update-alternatives-for-sysvinit.patch
+++ b/recipes-security/refpolicy/refpolicy/0015-fc-init-fix-update-alternatives-for-sysvinit.patch
@@ -1,4 +1,4 @@
-From f7860456e3867e6d9c24a7e07bc9e518f65ec478 Mon Sep 17 00:00:00 2001
+From 82c72fb6faff95e4d12aa451495ef81ced2821e1 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] fc/init: fix update-alternatives for sysvinit
diff --git a/recipes-security/refpolicy/refpolicy/0017-fc-brctl-apply-policy-to-brctl-alternatives.patch b/recipes-security/refpolicy/refpolicy/0016-fc-brctl-apply-policy-to-brctl-alternatives.patch
similarity index 92%
rename from recipes-security/refpolicy/refpolicy/0017-fc-brctl-apply-policy-to-brctl-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0016-fc-brctl-apply-policy-to-brctl-alternatives.patch
index 9da5acc..88dd311 100644
--- a/recipes-security/refpolicy/refpolicy/0017-fc-brctl-apply-policy-to-brctl-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0016-fc-brctl-apply-policy-to-brctl-alternatives.patch
@@ -1,4 +1,4 @@
-From 3a83de3883d0e287c0b6647e87a93d2cdc48aa10 Mon Sep 17 00:00:00 2001
+From 49bff0c3d5cee8face82fde060cb13629ee11d70 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:19:54 +0800
 Subject: [PATCH] fc/brctl: apply policy to brctl alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0018-fc-corecommands-apply-policy-to-nologin-alternatives.patch b/recipes-security/refpolicy/refpolicy/0017-fc-corecommands-apply-policy-to-nologin-alternatives.patch
similarity index 94%
rename from recipes-security/refpolicy/refpolicy/0018-fc-corecommands-apply-policy-to-nologin-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0017-fc-corecommands-apply-policy-to-nologin-alternatives.patch
index 4c1ac26..764df80 100644
--- a/recipes-security/refpolicy/refpolicy/0018-fc-corecommands-apply-policy-to-nologin-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0017-fc-corecommands-apply-policy-to-nologin-alternatives.patch
@@ -1,4 +1,4 @@
-From 5219bc4e0b3147455fecb1485e8387573207070c Mon Sep 17 00:00:00 2001
+From 925d94c5074e4c65a24ec65df49f6ca726922be0 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:21:51 +0800
 Subject: [PATCH] fc/corecommands: apply policy to nologin alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0019-fc-locallogin-apply-policy-to-sulogin-alternatives.patch b/recipes-security/refpolicy/refpolicy/0018-fc-locallogin-apply-policy-to-sulogin-alternatives.patch
similarity index 93%
rename from recipes-security/refpolicy/refpolicy/0019-fc-locallogin-apply-policy-to-sulogin-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0018-fc-locallogin-apply-policy-to-sulogin-alternatives.patch
index acd2663..4db0aac 100644
--- a/recipes-security/refpolicy/refpolicy/0019-fc-locallogin-apply-policy-to-sulogin-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0018-fc-locallogin-apply-policy-to-sulogin-alternatives.patch
@@ -1,4 +1,4 @@
-From 2b3b5d43040e939e836ea5c9803f0b27641e50a4 Mon Sep 17 00:00:00 2001
+From 52afb51f51d9084eb32175913f56ee2a2aa53067 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:43:28 +0800
 Subject: [PATCH] fc/locallogin: apply policy to sulogin alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0020-fc-ntp-apply-policy-to-ntpd-alternatives.patch b/recipes-security/refpolicy/refpolicy/0019-fc-ntp-apply-policy-to-ntpd-alternatives.patch
similarity index 93%
rename from recipes-security/refpolicy/refpolicy/0020-fc-ntp-apply-policy-to-ntpd-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0019-fc-ntp-apply-policy-to-ntpd-alternatives.patch
index c40413a..14e2d1c 100644
--- a/recipes-security/refpolicy/refpolicy/0020-fc-ntp-apply-policy-to-ntpd-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0019-fc-ntp-apply-policy-to-ntpd-alternatives.patch
@@ -1,4 +1,4 @@
-From 5308969204d535391cb766ba5aa4b5479f64248c Mon Sep 17 00:00:00 2001
+From 32892769171992d525fb46c87a4403e60754beb9 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:45:23 +0800
 Subject: [PATCH] fc/ntp: apply policy to ntpd alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0021-fc-kerberos-apply-policy-to-kerberos-alternatives.patch b/recipes-security/refpolicy/refpolicy/0020-fc-kerberos-apply-policy-to-kerberos-alternatives.patch
similarity index 97%
rename from recipes-security/refpolicy/refpolicy/0021-fc-kerberos-apply-policy-to-kerberos-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0020-fc-kerberos-apply-policy-to-kerberos-alternatives.patch
index 8d9ccd8..af21f4a 100644
--- a/recipes-security/refpolicy/refpolicy/0021-fc-kerberos-apply-policy-to-kerberos-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0020-fc-kerberos-apply-policy-to-kerberos-alternatives.patch
@@ -1,4 +1,4 @@
-From 89a54472ea0195ec19c291374e88e55b40107ff8 Mon Sep 17 00:00:00 2001
+From df6d9c8a993fb4c90fe70d5e487bdc9b28542130 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:55:05 +0800
 Subject: [PATCH] fc/kerberos: apply policy to kerberos alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0022-fc-ldap-apply-policy-to-ldap-alternatives.patch b/recipes-security/refpolicy/refpolicy/0021-fc-ldap-apply-policy-to-ldap-alternatives.patch
similarity index 96%
rename from recipes-security/refpolicy/refpolicy/0022-fc-ldap-apply-policy-to-ldap-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0021-fc-ldap-apply-policy-to-ldap-alternatives.patch
index c88dcd9..3587a03 100644
--- a/recipes-security/refpolicy/refpolicy/0022-fc-ldap-apply-policy-to-ldap-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0021-fc-ldap-apply-policy-to-ldap-alternatives.patch
@@ -1,4 +1,4 @@
-From 1130a43390bf41adb7747d0cc62c85c4320806cb Mon Sep 17 00:00:00 2001
+From 0ce10214366ebd09a0b9e125818c07aa02ce9163 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 11:06:13 +0800
 Subject: [PATCH] fc/ldap: apply policy to ldap alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0023-fc-postgresql-apply-policy-to-postgresql-alternative.patch b/recipes-security/refpolicy/refpolicy/0022-fc-postgresql-apply-policy-to-postgresql-alternative.patch
similarity index 96%
rename from recipes-security/refpolicy/refpolicy/0023-fc-postgresql-apply-policy-to-postgresql-alternative.patch
rename to recipes-security/refpolicy/refpolicy/0022-fc-postgresql-apply-policy-to-postgresql-alternative.patch
index ddd78b0..6641ffc 100644
--- a/recipes-security/refpolicy/refpolicy/0023-fc-postgresql-apply-policy-to-postgresql-alternative.patch
+++ b/recipes-security/refpolicy/refpolicy/0022-fc-postgresql-apply-policy-to-postgresql-alternative.patch
@@ -1,4 +1,4 @@
-From 184f1dfe4cbff9c5ff2cbe865d4e7427f100ff59 Mon Sep 17 00:00:00 2001
+From 7486b35d28429f75b913fee3305edeb36187c603 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 11:13:16 +0800
 Subject: [PATCH] fc/postgresql: apply policy to postgresql alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0024-fc-screen-apply-policy-to-screen-alternatives.patch b/recipes-security/refpolicy/refpolicy/0023-fc-screen-apply-policy-to-screen-alternatives.patch
similarity index 93%
rename from recipes-security/refpolicy/refpolicy/0024-fc-screen-apply-policy-to-screen-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0023-fc-screen-apply-policy-to-screen-alternatives.patch
index 7ae54d9..9c53b74 100644
--- a/recipes-security/refpolicy/refpolicy/0024-fc-screen-apply-policy-to-screen-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0023-fc-screen-apply-policy-to-screen-alternatives.patch
@@ -1,4 +1,4 @@
-From e114e09928232dd9eed568a4717dca2094f6e4ad Mon Sep 17 00:00:00 2001
+From 505a638a29971deb11d0fded79ddbd532d350ece Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 11:15:33 +0800
 Subject: [PATCH] fc/screen: apply policy to screen alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0025-fc-usermanage-apply-policy-to-usermanage-alternative.patch b/recipes-security/refpolicy/refpolicy/0024-fc-usermanage-apply-policy-to-usermanage-alternative.patch
similarity index 80%
rename from recipes-security/refpolicy/refpolicy/0025-fc-usermanage-apply-policy-to-usermanage-alternative.patch
rename to recipes-security/refpolicy/refpolicy/0024-fc-usermanage-apply-policy-to-usermanage-alternative.patch
index e6fbba0..3612bc1 100644
--- a/recipes-security/refpolicy/refpolicy/0025-fc-usermanage-apply-policy-to-usermanage-alternative.patch
+++ b/recipes-security/refpolicy/refpolicy/0024-fc-usermanage-apply-policy-to-usermanage-alternative.patch
@@ -1,4 +1,4 @@
-From 62a5f9dee28411f1d88a2101e507c15780467b2f Mon Sep 17 00:00:00 2001
+From d9c0c498e2163f5d56c8b4325b4bc77fb35f421f Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 11:25:34 +0800
 Subject: [PATCH] fc/usermanage: apply policy to usermanage alternatives
@@ -7,24 +7,26 @@ Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/admin/usermanage.fc | 4 ++++
- 1 file changed, 4 insertions(+)
+ policy/modules/admin/usermanage.fc | 6 ++++++
+ 1 file changed, 6 insertions(+)
 
 diff --git a/policy/modules/admin/usermanage.fc b/policy/modules/admin/usermanage.fc
-index 620eefc6f..6a051f8a5 100644
+index 620eefc6f..bf1ff09ab 100644
 --- a/policy/modules/admin/usermanage.fc
 +++ b/policy/modules/admin/usermanage.fc
-@@ -4,7 +4,9 @@ ifdef(`distro_debian',`
+@@ -4,7 +4,11 @@ ifdef(`distro_debian',`
  
  /usr/bin/chage		--	gen_context(system_u:object_r:passwd_exec_t,s0)
  /usr/bin/chfn		--	gen_context(system_u:object_r:chfn_exec_t,s0)
 +/usr/bin/chfn\.shadow		--	gen_context(system_u:object_r:chfn_exec_t,s0)
++/usr/bin/chfn\.util-linux		--	gen_context(system_u:object_r:chfn_exec_t,s0)
  /usr/bin/chsh		--	gen_context(system_u:object_r:chfn_exec_t,s0)
 +/usr/bin/chsh\.shadow		--	gen_context(system_u:object_r:chfn_exec_t,s0)
++/usr/bin/chsh\.util-linux		--	gen_context(system_u:object_r:chfn_exec_t,s0)
  /usr/bin/crack_[a-z]*	--	gen_context(system_u:object_r:crack_exec_t,s0)
  /usr/bin/cracklib-[a-z]* --	gen_context(system_u:object_r:crack_exec_t,s0)
  /usr/bin/gpasswd	--	gen_context(system_u:object_r:groupadd_exec_t,s0)
-@@ -14,6 +16,7 @@ ifdef(`distro_debian',`
+@@ -14,6 +18,7 @@ ifdef(`distro_debian',`
  /usr/bin/grpconv	--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
  /usr/bin/grpunconv	--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
  /usr/bin/passwd		--	gen_context(system_u:object_r:passwd_exec_t,s0)
@@ -32,7 +34,7 @@ index 620eefc6f..6a051f8a5 100644
  /usr/bin/pwconv		--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
  /usr/bin/pwunconv	--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
  /usr/bin/useradd	--	gen_context(system_u:object_r:useradd_exec_t,s0)
-@@ -39,6 +42,7 @@ ifdef(`distro_debian',`
+@@ -39,6 +44,7 @@ ifdef(`distro_debian',`
  /usr/sbin/usermod	--	gen_context(system_u:object_r:useradd_exec_t,s0)
  /usr/sbin/vigr		--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
  /usr/sbin/vipw		--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy/0026-fc-getty-add-file-context-to-start_getty.patch b/recipes-security/refpolicy/refpolicy/0025-fc-getty-add-file-context-to-start_getty.patch
similarity index 92%
rename from recipes-security/refpolicy/refpolicy/0026-fc-getty-add-file-context-to-start_getty.patch
rename to recipes-security/refpolicy/refpolicy/0025-fc-getty-add-file-context-to-start_getty.patch
index d51faa5..e5f92f7 100644
--- a/recipes-security/refpolicy/refpolicy/0026-fc-getty-add-file-context-to-start_getty.patch
+++ b/recipes-security/refpolicy/refpolicy/0025-fc-getty-add-file-context-to-start_getty.patch
@@ -1,4 +1,4 @@
-From 7be59b4d42165f7e12ccb8b2409304a2640eb898 Mon Sep 17 00:00:00 2001
+From fa45c54ee9e801aaea10dc7efff352121642f16a Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 16:07:30 +0800
 Subject: [PATCH] fc/getty: add file context to start_getty
diff --git a/recipes-security/refpolicy/refpolicy/0028-fc-vlock-apply-policy-to-vlock-alternatives.patch b/recipes-security/refpolicy/refpolicy/0026-fc-vlock-apply-policy-to-vlock-alternatives.patch
similarity index 92%
rename from recipes-security/refpolicy/refpolicy/0028-fc-vlock-apply-policy-to-vlock-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0026-fc-vlock-apply-policy-to-vlock-alternatives.patch
index d0bd7b4..ba6507f 100644
--- a/recipes-security/refpolicy/refpolicy/0028-fc-vlock-apply-policy-to-vlock-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0026-fc-vlock-apply-policy-to-vlock-alternatives.patch
@@ -1,4 +1,4 @@
-From 1ee2b12fa1585bf765370e3e787081fe01ad990f Mon Sep 17 00:00:00 2001
+From f1759b82bd1903240c8ebe6551a55a4fb7b21411 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Wed, 18 Dec 2019 15:04:41 +0800
 Subject: [PATCH] fc/vlock: apply policy to vlock alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0027-fc-add-fcontext-for-init-scripts-and-systemd-service.patch b/recipes-security/refpolicy/refpolicy/0027-fc-add-fcontext-for-init-scripts-and-systemd-service.patch
new file mode 100644
index 0000000..26af03a
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0027-fc-add-fcontext-for-init-scripts-and-systemd-service.patch
@@ -0,0 +1,64 @@
+From bebf4de8bacdd31aba7fd0bdd981a6a229cccae2 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 30 Jun 2020 10:45:57 +0800
+Subject: [PATCH] fc: add fcontext for init scripts and systemd service files
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/cron.fc  | 1 +
+ policy/modules/services/rngd.fc  | 1 +
+ policy/modules/services/rpc.fc   | 2 ++
+ policy/modules/system/logging.fc | 1 +
+ 4 files changed, 5 insertions(+)
+
+diff --git a/policy/modules/services/cron.fc b/policy/modules/services/cron.fc
+index 827363d88..e8412396d 100644
+--- a/policy/modules/services/cron.fc
++++ b/policy/modules/services/cron.fc
+@@ -1,4 +1,5 @@
+ /etc/rc\.d/init\.d/(anacron|atd)	--	gen_context(system_u:object_r:crond_initrc_exec_t,s0)
++/etc/rc\.d/init\.d/crond	--	gen_context(system_u:object_r:crond_initrc_exec_t,s0)
+ 
+ /etc/cron\.d(/.*)?	gen_context(system_u:object_r:system_cron_spool_t,s0)
+ /etc/crontab	--	gen_context(system_u:object_r:system_cron_spool_t,s0)
+diff --git a/policy/modules/services/rngd.fc b/policy/modules/services/rngd.fc
+index 382c067f9..0ecc5acc4 100644
+--- a/policy/modules/services/rngd.fc
++++ b/policy/modules/services/rngd.fc
+@@ -1,4 +1,5 @@
+ /etc/rc\.d/init\.d/rngd	--	gen_context(system_u:object_r:rngd_initrc_exec_t,s0)
++/etc/rc\.d/init\.d/rng-tools	--	gen_context(system_u:object_r:rngd_initrc_exec_t,s0)
+ 
+ /usr/bin/rngd	--	gen_context(system_u:object_r:rngd_exec_t,s0)
+ 
+diff --git a/policy/modules/services/rpc.fc b/policy/modules/services/rpc.fc
+index 88d2acaf0..d9c0a4aa7 100644
+--- a/policy/modules/services/rpc.fc
++++ b/policy/modules/services/rpc.fc
+@@ -1,7 +1,9 @@
+ /etc/exports	--	gen_context(system_u:object_r:exports_t,s0)
+ 
+ /etc/rc\.d/init\.d/nfs	--	gen_context(system_u:object_r:nfsd_initrc_exec_t,s0)
++/etc/rc\.d/init\.d/nfsserver	--	gen_context(system_u:object_r:nfsd_initrc_exec_t,s0)
+ /etc/rc\.d/init\.d/nfslock	--	gen_context(system_u:object_r:rpcd_initrc_exec_t,s0)
++/etc/rc\.d/init\.d/nfscommon	--	gen_context(system_u:object_r:rpcd_initrc_exec_t,s0)
+ /etc/rc\.d/init\.d/rpcidmapd	--	gen_context(system_u:object_r:rpcd_initrc_exec_t,s0)
+ 
+ /usr/bin/rpc\..*	--	gen_context(system_u:object_r:rpcd_exec_t,s0)
+diff --git a/policy/modules/system/logging.fc b/policy/modules/system/logging.fc
+index 5681acb51..4ff5f990a 100644
+--- a/policy/modules/system/logging.fc
++++ b/policy/modules/system/logging.fc
+@@ -24,6 +24,7 @@
+ /usr/lib/systemd/system/auditd.* -- gen_context(system_u:object_r:auditd_unit_t,s0)
+ /usr/lib/systemd/system/[^/]*systemd-journal.* -- gen_context(system_u:object_r:syslogd_unit_t,s0)
+ /usr/lib/systemd/system/rsyslog.*\.service -- gen_context(system_u:object_r:syslogd_unit_t,s0)
++/usr/lib/systemd/system/syslog.*\.service -- gen_context(system_u:object_r:syslogd_unit_t,s0)
+ /usr/lib/systemd/systemd-journald -- gen_context(system_u:object_r:syslogd_exec_t,s0)
+ /usr/lib/systemd/systemd-kmsg-syslogd	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
+ 
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0027-fc-init-add-file-context-to-etc-network-if-files.patch b/recipes-security/refpolicy/refpolicy/0027-fc-init-add-file-context-to-etc-network-if-files.patch
deleted file mode 100644
index e34abe6..0000000
--- a/recipes-security/refpolicy/refpolicy/0027-fc-init-add-file-context-to-etc-network-if-files.patch
+++ /dev/null
@@ -1,33 +0,0 @@
-From ac335f80d09f9ce4756f2e58944a975a12441fa7 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Tue, 19 Nov 2019 14:33:28 +0800
-Subject: [PATCH] fc/init: add file context to /etc/network/if-* files
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/init.fc | 3 ++-
- 1 file changed, 2 insertions(+), 1 deletion(-)
-
-diff --git a/policy/modules/system/init.fc b/policy/modules/system/init.fc
-index 5268bddb2..a6762bd00 100644
---- a/policy/modules/system/init.fc
-+++ b/policy/modules/system/init.fc
-@@ -75,11 +75,12 @@ ifdef(`distro_redhat',`
- ifdef(`distro_debian',`
- /run/hotkey-setup	--	gen_context(system_u:object_r:initrc_runtime_t,s0)
- /run/kdm/.*		--	gen_context(system_u:object_r:initrc_runtime_t,s0)
-+')
-+
- /etc/network/if-pre-up\.d/.* --	gen_context(system_u:object_r:initrc_exec_t,s0)
- /etc/network/if-up\.d/.* --	gen_context(system_u:object_r:initrc_exec_t,s0)
- /etc/network/if-down\.d/.* --	gen_context(system_u:object_r:initrc_exec_t,s0)
- /etc/network/if-post-down\.d/.* -- gen_context(system_u:object_r:initrc_exec_t,s0)
--')
- 
- ifdef(`distro_gentoo', `
- /var/lib/init\.d(/.*)?		gen_context(system_u:object_r:initrc_state_t,s0)
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0031-file_contexts.subs_dist-set-aliase-for-root-director.patch b/recipes-security/refpolicy/refpolicy/0028-file_contexts.subs_dist-set-aliase-for-root-director.patch
similarity index 87%
rename from recipes-security/refpolicy/refpolicy/0031-file_contexts.subs_dist-set-aliase-for-root-director.patch
rename to recipes-security/refpolicy/refpolicy/0028-file_contexts.subs_dist-set-aliase-for-root-director.patch
index f65d1be..84e0692 100644
--- a/recipes-security/refpolicy/refpolicy/0031-file_contexts.subs_dist-set-aliase-for-root-director.patch
+++ b/recipes-security/refpolicy/refpolicy/0028-file_contexts.subs_dist-set-aliase-for-root-director.patch
@@ -1,4 +1,4 @@
-From 8c733eff8089c24fe6885977d2bdcdfb0c453726 Mon Sep 17 00:00:00 2001
+From 7f9a176681d7c1854a722e79fb325a5f0f85f64d Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Sun, 5 Apr 2020 22:03:45 +0800
 Subject: [PATCH] file_contexts.subs_dist: set aliase for /root directory
@@ -14,10 +14,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 4 insertions(+)
 
 diff --git a/config/file_contexts.subs_dist b/config/file_contexts.subs_dist
-index a38d58e16..3e4c5720f 100644
+index 690007f22..f80499ebf 100644
 --- a/config/file_contexts.subs_dist
 +++ b/config/file_contexts.subs_dist
-@@ -44,3 +44,7 @@
+@@ -45,3 +45,7 @@
  /usr/lib/busybox/bin /usr/bin
  /usr/lib/busybox/sbin /usr/sbin
  /usr/lib/busybox/usr /usr
diff --git a/recipes-security/refpolicy/refpolicy/0029-fc-cron-apply-policy-to-etc-init.d-crond.patch b/recipes-security/refpolicy/refpolicy/0029-fc-cron-apply-policy-to-etc-init.d-crond.patch
deleted file mode 100644
index be57060..0000000
--- a/recipes-security/refpolicy/refpolicy/0029-fc-cron-apply-policy-to-etc-init.d-crond.patch
+++ /dev/null
@@ -1,25 +0,0 @@
-From a14d7d6fc54e7cf82d977c4b5c2df961c5eb1fe0 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Tue, 30 Jun 2020 10:45:57 +0800
-Subject: [PATCH] fc/cron: apply policy to /etc/init.d/crond
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/services/cron.fc | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/services/cron.fc b/policy/modules/services/cron.fc
-index 827363d88..e8412396d 100644
---- a/policy/modules/services/cron.fc
-+++ b/policy/modules/services/cron.fc
-@@ -1,4 +1,5 @@
- /etc/rc\.d/init\.d/(anacron|atd)	--	gen_context(system_u:object_r:crond_initrc_exec_t,s0)
-+/etc/rc\.d/init\.d/crond	--	gen_context(system_u:object_r:crond_initrc_exec_t,s0)
- 
- /etc/cron\.d(/.*)?	gen_context(system_u:object_r:system_cron_spool_t,s0)
- /etc/crontab	--	gen_context(system_u:object_r:system_cron_spool_t,s0)
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0032-policy-modules-system-logging-add-rules-for-the-syml.patch b/recipes-security/refpolicy/refpolicy/0029-policy-modules-system-logging-add-rules-for-the-syml.patch
similarity index 81%
rename from recipes-security/refpolicy/refpolicy/0032-policy-modules-system-logging-add-rules-for-the-syml.patch
rename to recipes-security/refpolicy/refpolicy/0029-policy-modules-system-logging-add-rules-for-the-syml.patch
index a80bf03..57afcb5 100644
--- a/recipes-security/refpolicy/refpolicy/0032-policy-modules-system-logging-add-rules-for-the-syml.patch
+++ b/recipes-security/refpolicy/refpolicy/0029-policy-modules-system-logging-add-rules-for-the-syml.patch
@@ -1,4 +1,4 @@
-From 456bb92237aa637f506fcc56b190eb534d745e41 Mon Sep 17 00:00:00 2001
+From f62187fc61e110dee575c32a441b32c9660f48a5 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/system/logging: add rules for the symlink of
@@ -18,10 +18,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  2 files changed, 10 insertions(+)
 
 diff --git a/policy/modules/system/logging.fc b/policy/modules/system/logging.fc
-index 5681acb51..a4ecd570a 100644
+index 4ff5f990a..dee26a9f4 100644
 --- a/policy/modules/system/logging.fc
 +++ b/policy/modules/system/logging.fc
-@@ -52,6 +52,7 @@ ifdef(`distro_suse', `
+@@ -53,6 +53,7 @@ ifdef(`distro_suse', `
  /var/dnscache/log/main(/.*)?	gen_context(system_u:object_r:var_log_t,s0)
  
  /var/log		-d	gen_context(system_u:object_r:var_log_t,s0-mls_systemhigh)
@@ -30,10 +30,10 @@ index 5681acb51..a4ecd570a 100644
  /var/log/dmesg		--	gen_context(system_u:object_r:var_log_t,s0)
  /var/log/syslog		--	gen_context(system_u:object_r:var_log_t,s0)
 diff --git a/policy/modules/system/logging.if b/policy/modules/system/logging.if
-index 10dee6563..9bb3afdb2 100644
+index 341763730..30d402c75 100644
 --- a/policy/modules/system/logging.if
 +++ b/policy/modules/system/logging.if
-@@ -1065,10 +1065,12 @@ interface(`logging_append_all_inherited_logs',`
+@@ -1086,10 +1086,12 @@ interface(`logging_append_all_inherited_logs',`
  interface(`logging_read_all_logs',`
  	gen_require(`
  		attribute logfile;
@@ -46,7 +46,7 @@ index 10dee6563..9bb3afdb2 100644
  	read_files_pattern($1, logfile, logfile)
  ')
  
-@@ -1087,10 +1089,12 @@ interface(`logging_read_all_logs',`
+@@ -1127,10 +1129,12 @@ interface(`logging_watch_all_logs',`
  interface(`logging_exec_all_logs',`
  	gen_require(`
  		attribute logfile;
@@ -59,7 +59,7 @@ index 10dee6563..9bb3afdb2 100644
  	can_exec($1, logfile)
  ')
  
-@@ -1152,6 +1156,7 @@ interface(`logging_manage_generic_log_dirs',`
+@@ -1192,6 +1196,7 @@ interface(`logging_manage_generic_log_dirs',`
  
  	files_search_var($1)
  	allow $1 var_log_t:dir manage_dir_perms;
@@ -67,7 +67,7 @@ index 10dee6563..9bb3afdb2 100644
  ')
  
  ########################################
-@@ -1172,6 +1177,7 @@ interface(`logging_relabel_generic_log_dirs',`
+@@ -1212,6 +1217,7 @@ interface(`logging_relabel_generic_log_dirs',`
  
  	files_search_var($1)
  	allow $1 var_log_t:dir relabel_dir_perms;
@@ -75,7 +75,7 @@ index 10dee6563..9bb3afdb2 100644
  ')
  
  ########################################
-@@ -1192,6 +1198,7 @@ interface(`logging_read_generic_logs',`
+@@ -1232,6 +1238,7 @@ interface(`logging_read_generic_logs',`
  
  	files_search_var($1)
  	allow $1 var_log_t:dir list_dir_perms;
@@ -83,7 +83,7 @@ index 10dee6563..9bb3afdb2 100644
  	read_files_pattern($1, var_log_t, var_log_t)
  ')
  
-@@ -1293,6 +1300,7 @@ interface(`logging_manage_generic_logs',`
+@@ -1333,6 +1340,7 @@ interface(`logging_manage_generic_logs',`
  
  	files_search_var($1)
  	manage_files_pattern($1, var_log_t, var_log_t)
@@ -91,7 +91,7 @@ index 10dee6563..9bb3afdb2 100644
  ')
  
  ########################################
-@@ -1311,6 +1319,7 @@ interface(`logging_watch_generic_logs_dir',`
+@@ -1351,6 +1359,7 @@ interface(`logging_watch_generic_logs_dir',`
  	')
  
  	allow $1 var_log_t:dir watch;
diff --git a/recipes-security/refpolicy/refpolicy/0030-fc-sysnetwork-update-file-context-for-ifconfig.patch b/recipes-security/refpolicy/refpolicy/0030-fc-sysnetwork-update-file-context-for-ifconfig.patch
deleted file mode 100644
index 6a659b2..0000000
--- a/recipes-security/refpolicy/refpolicy/0030-fc-sysnetwork-update-file-context-for-ifconfig.patch
+++ /dev/null
@@ -1,31 +0,0 @@
-From b3d2611360ddf21a3f8729766a1e4b64117ea710 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Tue, 4 Aug 2020 16:48:12 +0800
-Subject: [PATCH] fc/sysnetwork: update file context for ifconfig
-
-The ifconfig was moved from sbin to bin with oe-core commit:
-c9caff40ff61c08e24a84922f8d7c8e9cdf8883e. Update the file context for
-it.
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/sysnetwork.fc | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/system/sysnetwork.fc b/policy/modules/system/sysnetwork.fc
-index c3291962d..4ca151524 100644
---- a/policy/modules/system/sysnetwork.fc
-+++ b/policy/modules/system/sysnetwork.fc
-@@ -44,6 +44,7 @@ ifdef(`distro_redhat',`
- /usr/bin/dhcpcd		        --	gen_context(system_u:object_r:dhcpc_exec_t,s0)
- /usr/bin/ethtool		    --	gen_context(system_u:object_r:ifconfig_exec_t,s0)
- /usr/bin/ifconfig		    --	gen_context(system_u:object_r:ifconfig_exec_t,s0)
-+/usr/bin/ifconfig\.net-tools		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
- /usr/bin/ip			        --	gen_context(system_u:object_r:ifconfig_exec_t,s0)
- /usr/bin/ipx_configure		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
- /usr/bin/ipx_interface		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0033-policy-modules-system-logging-add-rules-for-syslogd-.patch b/recipes-security/refpolicy/refpolicy/0030-policy-modules-system-logging-add-rules-for-syslogd-.patch
similarity index 87%
rename from recipes-security/refpolicy/refpolicy/0033-policy-modules-system-logging-add-rules-for-syslogd-.patch
rename to recipes-security/refpolicy/refpolicy/0030-policy-modules-system-logging-add-rules-for-syslogd-.patch
index 4e5ee51..96fd4d2 100644
--- a/recipes-security/refpolicy/refpolicy/0033-policy-modules-system-logging-add-rules-for-syslogd-.patch
+++ b/recipes-security/refpolicy/refpolicy/0030-policy-modules-system-logging-add-rules-for-syslogd-.patch
@@ -1,4 +1,4 @@
-From 275597cbb54eb8007c07fc06c3d9bd3d3090f7f2 Mon Sep 17 00:00:00 2001
+From e809c35686424c75cf9fd5d59facb66053be2589 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 10:33:18 -0400
 Subject: [PATCH] policy/modules/system/logging: add rules for syslogd symlink
@@ -18,10 +18,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 031e2f40f..673046781 100644
+index 21e3285a9..abee7df9c 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -404,6 +404,7 @@ files_search_spool(syslogd_t)
+@@ -411,6 +411,7 @@ files_search_spool(syslogd_t)
  
  # Allow access for syslog-ng
  allow syslogd_t var_log_t:dir { create setattr };
diff --git a/recipes-security/refpolicy/refpolicy/0034-policy-modules-kernel-files-add-rules-for-the-symlin.patch b/recipes-security/refpolicy/refpolicy/0031-policy-modules-kernel-files-add-rules-for-the-symlin.patch
similarity index 80%
rename from recipes-security/refpolicy/refpolicy/0034-policy-modules-kernel-files-add-rules-for-the-symlin.patch
rename to recipes-security/refpolicy/refpolicy/0031-policy-modules-kernel-files-add-rules-for-the-symlin.patch
index da42fdd..2d1ef1d 100644
--- a/recipes-security/refpolicy/refpolicy/0034-policy-modules-kernel-files-add-rules-for-the-symlin.patch
+++ b/recipes-security/refpolicy/refpolicy/0031-policy-modules-kernel-files-add-rules-for-the-symlin.patch
@@ -1,4 +1,4 @@
-From 491783f2ae026ac969c9f6ef6eea1bd75ac7e2a5 Mon Sep 17 00:00:00 2001
+From ca9ef20cc6a7c7457f7a242d1b588279cad17aa4 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/kernel/files: add rules for the symlink of
@@ -30,10 +30,10 @@ index 826722f4e..677ae96c3 100644
  /tmp/\.journal			<<none>>
  
 diff --git a/policy/modules/kernel/files.if b/policy/modules/kernel/files.if
-index 34a9cd66d..7fc7e922f 100644
+index 495cbe2f4..b308eefd9 100644
 --- a/policy/modules/kernel/files.if
 +++ b/policy/modules/kernel/files.if
-@@ -4533,6 +4533,7 @@ interface(`files_search_tmp',`
+@@ -4555,6 +4555,7 @@ interface(`files_search_tmp',`
  	')
  
  	allow $1 tmp_t:dir search_dir_perms;
@@ -41,7 +41,7 @@ index 34a9cd66d..7fc7e922f 100644
  ')
  
  ########################################
-@@ -4569,6 +4570,7 @@ interface(`files_list_tmp',`
+@@ -4591,6 +4592,7 @@ interface(`files_list_tmp',`
  	')
  
  	allow $1 tmp_t:dir list_dir_perms;
@@ -49,7 +49,7 @@ index 34a9cd66d..7fc7e922f 100644
  ')
  
  ########################################
-@@ -4605,6 +4607,7 @@ interface(`files_delete_tmp_dir_entry',`
+@@ -4627,6 +4629,7 @@ interface(`files_delete_tmp_dir_entry',`
  	')
  
  	allow $1 tmp_t:dir del_entry_dir_perms;
@@ -57,7 +57,7 @@ index 34a9cd66d..7fc7e922f 100644
  ')
  
  ########################################
-@@ -4623,6 +4626,7 @@ interface(`files_read_generic_tmp_files',`
+@@ -4645,6 +4648,7 @@ interface(`files_read_generic_tmp_files',`
  	')
  
  	read_files_pattern($1, tmp_t, tmp_t)
@@ -65,7 +65,7 @@ index 34a9cd66d..7fc7e922f 100644
  ')
  
  ########################################
-@@ -4641,6 +4645,7 @@ interface(`files_manage_generic_tmp_dirs',`
+@@ -4663,6 +4667,7 @@ interface(`files_manage_generic_tmp_dirs',`
  	')
  
  	manage_dirs_pattern($1, tmp_t, tmp_t)
@@ -73,7 +73,7 @@ index 34a9cd66d..7fc7e922f 100644
  ')
  
  ########################################
-@@ -4659,6 +4664,7 @@ interface(`files_manage_generic_tmp_files',`
+@@ -4699,6 +4704,7 @@ interface(`files_manage_generic_tmp_files',`
  	')
  
  	manage_files_pattern($1, tmp_t, tmp_t)
@@ -81,7 +81,7 @@ index 34a9cd66d..7fc7e922f 100644
  ')
  
  ########################################
-@@ -4695,6 +4701,7 @@ interface(`files_rw_generic_tmp_sockets',`
+@@ -4735,6 +4741,7 @@ interface(`files_rw_generic_tmp_sockets',`
  	')
  
  	rw_sock_files_pattern($1, tmp_t, tmp_t)
@@ -89,7 +89,7 @@ index 34a9cd66d..7fc7e922f 100644
  ')
  
  ########################################
-@@ -4902,6 +4909,7 @@ interface(`files_tmp_filetrans',`
+@@ -4942,6 +4949,7 @@ interface(`files_tmp_filetrans',`
  	')
  
  	filetrans_pattern($1, tmp_t, $2, $3, $4)
diff --git a/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-logging-fix-auditd-startup-fai.patch b/recipes-security/refpolicy/refpolicy/0032-policy-modules-system-logging-fix-auditd-startup-fai.patch
similarity index 50%
rename from recipes-security/refpolicy/refpolicy/0035-policy-modules-system-logging-fix-auditd-startup-fai.patch
rename to recipes-security/refpolicy/refpolicy/0032-policy-modules-system-logging-fix-auditd-startup-fai.patch
index 9856fcd..2990e3b 100644
--- a/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-logging-fix-auditd-startup-fai.patch
+++ b/recipes-security/refpolicy/refpolicy/0032-policy-modules-system-logging-fix-auditd-startup-fai.patch
@@ -1,64 +1,41 @@
-From 25036d5f5c41e4215d071d9c1eb77760a0eca87c Mon Sep 17 00:00:00 2001
+From 3c5d83fbf406fc9e717147b4c57627fa1f202bd5 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/system/logging: fix auditd startup failures
 
 Fixes:
-avc:  denied  { getattr } for  pid=322 comm="auditd"
-path="/sbin/audisp-remote" dev="vda" ino=1115
-scontext=system_u:system_r:auditd_t
-tcontext=system_u:object_r:audisp_remote_exec_t tclass=file permissive=0
-
 avc:  denied  { read } for  pid=321 comm="auditd" name="log" dev="vda"
 ino=12552 scontext=system_u:system_r:auditd_t
 tcontext=system_u:object_r:var_log_t tclass=lnk_file permissive=0
 
-avc:  denied  { getattr } for  pid=183 comm="auditctl" name="/"
-dev="proc" ino=1 scontext=system_u:system_r:auditctl_t
-tcontext=system_u:object_r:proc_t tclass=filesystem permissive=0
-
 Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/system/logging.te | 5 +++++
- 1 file changed, 5 insertions(+)
+ policy/modules/system/logging.te | 2 ++
+ 1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 673046781..9b3254f63 100644
+index abee7df9c..cc530a2be 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -117,6 +117,7 @@ files_read_etc_files(auditctl_t)
- kernel_read_kernel_sysctls(auditctl_t)
- kernel_read_proc_symlinks(auditctl_t)
- kernel_setsched(auditctl_t)
-+kernel_getattr_proc(auditctl_t)
- 
- domain_read_all_domains_state(auditctl_t)
- domain_use_interactive_fds(auditctl_t)
-@@ -157,10 +158,13 @@ allow auditd_t auditd_etc_t:dir list_dir_perms;
- allow auditd_t auditd_etc_t:file read_file_perms;
- dontaudit auditd_t auditd_etc_t:file map;
- 
-+allow auditd_t audisp_remote_exec_t:file getattr;
-+
+@@ -161,6 +161,7 @@ dontaudit auditd_t auditd_etc_t:file map;
  manage_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
  allow auditd_t auditd_log_t:dir setattr;
  manage_lnk_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
- allow auditd_t var_log_t:dir search_dir_perms;
 +allow auditd_t var_log_t:lnk_file read_lnk_file_perms;
+ allow auditd_t var_log_t:dir search_dir_perms;
  
  manage_files_pattern(auditd_t, auditd_runtime_t, auditd_runtime_t)
- manage_sock_files_pattern(auditd_t, auditd_runtime_t, auditd_runtime_t)
-@@ -284,6 +288,7 @@ allow audisp_remote_t self:capability { setpcap setuid };
+@@ -290,6 +291,7 @@ optional_policy(`
+ allow audisp_remote_t self:capability { setpcap setuid };
  allow audisp_remote_t self:process { getcap setcap };
  allow audisp_remote_t self:tcp_socket create_socket_perms;
- allow audisp_remote_t var_log_t:dir search_dir_perms;
 +allow audisp_remote_t var_log_t:lnk_file read_lnk_file_perms;
+ allow audisp_remote_t var_log_t:dir search_dir_perms;
  
  manage_dirs_pattern(audisp_remote_t, audit_spool_t, audit_spool_t)
- manage_files_pattern(audisp_remote_t, audit_spool_t, audit_spool_t)
 -- 
 2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0036-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch b/recipes-security/refpolicy/refpolicy/0033-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch
similarity index 94%
rename from recipes-security/refpolicy/refpolicy/0036-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch
rename to recipes-security/refpolicy/refpolicy/0033-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch
index 855aae6..5110454 100644
--- a/recipes-security/refpolicy/refpolicy/0036-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch
+++ b/recipes-security/refpolicy/refpolicy/0033-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch
@@ -1,4 +1,4 @@
-From 15773d54215587284f937b9a37b08c682949e7ab Mon Sep 17 00:00:00 2001
+From f31db60837f667674a4dcc499f00c0d0e78b6461 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/kernel/terminal: don't audit tty_device_t in
diff --git a/recipes-security/refpolicy/refpolicy/0037-policy-modules-system-modutils-allow-mod_t-to-access.patch b/recipes-security/refpolicy/refpolicy/0034-policy-modules-system-modutils-allow-mod_t-to-access.patch
similarity index 92%
rename from recipes-security/refpolicy/refpolicy/0037-policy-modules-system-modutils-allow-mod_t-to-access.patch
rename to recipes-security/refpolicy/refpolicy/0034-policy-modules-system-modutils-allow-mod_t-to-access.patch
index da03017..d42afab 100644
--- a/recipes-security/refpolicy/refpolicy/0037-policy-modules-system-modutils-allow-mod_t-to-access.patch
+++ b/recipes-security/refpolicy/refpolicy/0034-policy-modules-system-modutils-allow-mod_t-to-access.patch
@@ -1,4 +1,4 @@
-From 1126ee6883d7e107b103a18d255416d542ca50f2 Mon Sep 17 00:00:00 2001
+From 5b7f6d1dc5c2c54d1e1ee6c724ffdc100ba59bd5 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Mon, 24 Aug 2020 11:29:09 +0800
 Subject: [PATCH] policy/modules/system/modutils: allow mod_t to access
@@ -37,7 +37,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  2 files changed, 4 insertions(+)
 
 diff --git a/policy/modules/system/modutils.te b/policy/modules/system/modutils.te
-index ef5de835e..ee249ae04 100644
+index b0a419dc1..5b4f0aca1 100644
 --- a/policy/modules/system/modutils.te
 +++ b/policy/modules/system/modutils.te
 @@ -41,6 +41,8 @@ dontaudit kmod_t self:capability sys_admin;
@@ -50,10 +50,10 @@ index ef5de835e..ee249ae04 100644
  list_dirs_pattern(kmod_t, modules_conf_t, modules_conf_t)
  read_files_pattern(kmod_t, modules_conf_t, modules_conf_t)
 diff --git a/policy/modules/system/udev.te b/policy/modules/system/udev.te
-index 4a2283b6c..daf64482f 100644
+index c50ff68c1..4c5a690fb 100644
 --- a/policy/modules/system/udev.te
 +++ b/policy/modules/system/udev.te
-@@ -61,6 +61,8 @@ allow udev_t self:rawip_socket create_socket_perms;
+@@ -67,6 +67,8 @@ ifdef(`init_systemd',`
  # for systemd-udevd to rename interfaces
  allow udev_t self:netlink_route_socket nlmsg_write;
  
diff --git a/recipes-security/refpolicy/refpolicy/0039-policy-modules-system-getty-allow-getty_t-to-search-.patch b/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-getty-allow-getty_t-to-search-.patch
similarity index 81%
rename from recipes-security/refpolicy/refpolicy/0039-policy-modules-system-getty-allow-getty_t-to-search-.patch
rename to recipes-security/refpolicy/refpolicy/0035-policy-modules-system-getty-allow-getty_t-to-search-.patch
index d673d54..5efa4ce 100644
--- a/recipes-security/refpolicy/refpolicy/0039-policy-modules-system-getty-allow-getty_t-to-search-.patch
+++ b/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-getty-allow-getty_t-to-search-.patch
@@ -1,4 +1,4 @@
-From f23178d9d89bf39895f75867c29bda4dfb27e786 Mon Sep 17 00:00:00 2001
+From 4ef0b1cdfd10dfcb8f5ee2e7b5cd0a93c9ee0bd4 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 23 Jun 2020 08:39:44 +0800
 Subject: [PATCH] policy/modules/system/getty: allow getty_t to search tmpfs
@@ -16,13 +16,13 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/system/getty.te b/policy/modules/system/getty.te
-index 95b1ec632..0415e1ee7 100644
+index e6e76a93b..c704ddb82 100644
 --- a/policy/modules/system/getty.te
 +++ b/policy/modules/system/getty.te
-@@ -66,6 +66,7 @@ dev_read_sysfs(getty_t)
- files_read_etc_runtime_files(getty_t)
+@@ -68,6 +68,7 @@ files_read_etc_runtime_files(getty_t)
  files_read_etc_files(getty_t)
  files_search_spool(getty_t)
+ files_dontaudit_search_var_lib(getty_t)
 +fs_search_tmpfs(getty_t)
  
  fs_search_auto_mountpoints(getty_t)
diff --git a/recipes-security/refpolicy/refpolicy/0036-policy-modules-services-bluetooth-allow-bluetooth_t-.patch b/recipes-security/refpolicy/refpolicy/0036-policy-modules-services-bluetooth-allow-bluetooth_t-.patch
new file mode 100644
index 0000000..9071ffb
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0036-policy-modules-services-bluetooth-allow-bluetooth_t-.patch
@@ -0,0 +1,34 @@
+From 20fe61dd58f8c1477800e316aefb7bd78bad6a26 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 23 Jun 2020 08:54:20 +0800
+Subject: [PATCH] policy/modules/services/bluetooth: allow bluetooth_t to
+ create alg_socket
+
+Fixes:
+avc:  denied  { create } for  pid=268 comm="bluetoothd"
+scontext=system_u:system_r:bluetooth_t:s0-s15:c0.c1023
+tcontext=system_u:system_r:bluetooth_t:s0-s15:c0.c1023 tclass=alg_socket
+permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/bluetooth.te | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/services/bluetooth.te b/policy/modules/services/bluetooth.te
+index 3f3d94e60..6a596f37d 100644
+--- a/policy/modules/services/bluetooth.te
++++ b/policy/modules/services/bluetooth.te
+@@ -61,6 +61,7 @@ allow bluetooth_t self:unix_stream_socket { accept connectto listen };
+ allow bluetooth_t self:tcp_socket { accept listen };
+ allow bluetooth_t self:netlink_kobject_uevent_socket create_socket_perms;
+ allow bluetooth_t self:bluetooth_socket create_stream_socket_perms;
++allow bluetooth_t self:alg_socket create;
+ 
+ read_files_pattern(bluetooth_t, bluetooth_conf_t, bluetooth_conf_t)
+ 
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0043-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch b/recipes-security/refpolicy/refpolicy/0037-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch
similarity index 61%
rename from recipes-security/refpolicy/refpolicy/0043-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch
rename to recipes-security/refpolicy/refpolicy/0037-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch
index 408df05..b364a26 100644
--- a/recipes-security/refpolicy/refpolicy/0043-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch
+++ b/recipes-security/refpolicy/refpolicy/0037-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch
@@ -1,12 +1,9 @@
-From 40101e4da939fcea2eebe3e4800d0de4e551ca26 Mon Sep 17 00:00:00 2001
+From b907d458336ee430c765e7abf9e390385517a8de Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Wed, 1 Jul 2020 08:44:07 +0800
 Subject: [PATCH] policy/modules/services/rpcbind: allow rpcbind_t to create
  directory with label rpcbind_runtime_t
 
-* Allow rpcbind_t to create directory with label rpcbind_runtime_t
-* Set context for nfsserver and nfscommon
-
 Fixes:
 avc:  denied  { create } for  pid=136 comm="rpcbind" name="rpcbind"
 scontext=system_u:system_r:rpcbind_t:s0-s15:c0.c1023
@@ -16,26 +13,11 @@ Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/services/rpc.fc     | 2 ++
  policy/modules/services/rpcbind.te | 5 +++--
- 2 files changed, 5 insertions(+), 2 deletions(-)
+ 1 file changed, 3 insertions(+), 2 deletions(-)
 
-diff --git a/policy/modules/services/rpc.fc b/policy/modules/services/rpc.fc
-index 88d2acaf0..d9c0a4aa7 100644
---- a/policy/modules/services/rpc.fc
-+++ b/policy/modules/services/rpc.fc
-@@ -1,7 +1,9 @@
- /etc/exports	--	gen_context(system_u:object_r:exports_t,s0)
- 
- /etc/rc\.d/init\.d/nfs	--	gen_context(system_u:object_r:nfsd_initrc_exec_t,s0)
-+/etc/rc\.d/init\.d/nfsserver	--	gen_context(system_u:object_r:nfsd_initrc_exec_t,s0)
- /etc/rc\.d/init\.d/nfslock	--	gen_context(system_u:object_r:rpcd_initrc_exec_t,s0)
-+/etc/rc\.d/init\.d/nfscommon	--	gen_context(system_u:object_r:rpcd_initrc_exec_t,s0)
- /etc/rc\.d/init\.d/rpcidmapd	--	gen_context(system_u:object_r:rpcd_initrc_exec_t,s0)
- 
- /usr/bin/rpc\..*	--	gen_context(system_u:object_r:rpcd_exec_t,s0)
 diff --git a/policy/modules/services/rpcbind.te b/policy/modules/services/rpcbind.te
-index 370c9bce6..8972980fa 100644
+index 168c28ca3..e1eb7d5fc 100644
 --- a/policy/modules/services/rpcbind.te
 +++ b/policy/modules/services/rpcbind.te
 @@ -25,16 +25,17 @@ files_type(rpcbind_var_lib_t)
diff --git a/recipes-security/refpolicy/refpolicy/0038-policy-modules-services-avahi-allow-avahi_t-to-watch.patch b/recipes-security/refpolicy/refpolicy/0038-policy-modules-services-avahi-allow-avahi_t-to-watch.patch
deleted file mode 100644
index 1b0391d..0000000
--- a/recipes-security/refpolicy/refpolicy/0038-policy-modules-services-avahi-allow-avahi_t-to-watch.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-From 92571e7c066b3d91634a4c1f55542cb528f5bac4 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Tue, 23 Jun 2020 08:19:16 +0800
-Subject: [PATCH] policy/modules/services/avahi: allow avahi_t to watch
- /etc/avahi directory
-
-Fixes:
-type=AVC msg=audit(1592813140.176:24): avc:  denied  { watch } for
-pid=360 comm="avahi-daemon" path="/services" dev="vda" ino=173
-scontext=system_u:system_r:avahi_t tcontext=system_u:object_r:etc_t
-tclass=dir permissive=1
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/services/avahi.te | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/services/avahi.te b/policy/modules/services/avahi.te
-index af838d8b0..674cdcb81 100644
---- a/policy/modules/services/avahi.te
-+++ b/policy/modules/services/avahi.te
-@@ -76,6 +76,7 @@ domain_use_interactive_fds(avahi_t)
- 
- files_read_etc_runtime_files(avahi_t)
- files_read_usr_files(avahi_t)
-+files_watch_etc_dirs(avahi_t)
- 
- auth_use_nsswitch(avahi_t)
- 
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0038-policy-modules-services-ssh-do-not-audit-attempts-by.patch b/recipes-security/refpolicy/refpolicy/0038-policy-modules-services-ssh-do-not-audit-attempts-by.patch
new file mode 100644
index 0000000..2066450
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0038-policy-modules-services-ssh-do-not-audit-attempts-by.patch
@@ -0,0 +1,33 @@
+From 997d9e0cb9016f49b421972764902c184d2d66f8 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 29 Jan 2021 10:32:00 +0800
+Subject: [PATCH] policy/modules/services/ssh: do not audit attempts by
+ ssh-keygen to read proc
+
+Fixes:
+avc:  denied  { read } for  pid=353 comm="ssh-keygen" name="filesystems"
+dev="proc" ino=4026532078 scontext=system_u:system_r:ssh_keygen_t
+tcontext=system_u:object_r:proc_t tclass=file permissive=0
+
+Upstream-Status: Pending
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/ssh.te | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/services/ssh.te b/policy/modules/services/ssh.te
+index 12b675545..d92efcc7a 100644
+--- a/policy/modules/services/ssh.te
++++ b/policy/modules/services/ssh.te
+@@ -344,6 +344,7 @@ files_etc_filetrans(ssh_keygen_t, sshd_key_t, file)
+ 
+ kernel_read_kernel_sysctls(ssh_keygen_t)
+ kernel_dontaudit_getattr_proc(ssh_keygen_t)
++kernel_dontaudit_read_system_state(ssh_keygen_t)
+ 
+ fs_search_auto_mountpoints(ssh_keygen_t)
+ 
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0039-policy-modules-admin-usermanage-allow-useradd-to-rel.patch b/recipes-security/refpolicy/refpolicy/0039-policy-modules-admin-usermanage-allow-useradd-to-rel.patch
new file mode 100644
index 0000000..242e909
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0039-policy-modules-admin-usermanage-allow-useradd-to-rel.patch
@@ -0,0 +1,71 @@
+From 8ae69796dd5e911ffbf2793437335a480b6ff6b2 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Mon, 11 Oct 2021 10:10:10 +0800
+Subject: [PATCH] policy/modules/admin/usermanage: allow useradd to relabel
+ user home files
+
+Fixes:
+avc: denied { relabelfrom } for pid=491 comm="useradd" name=".bashrc"
+dev="vda" ino=12641 scontext=root:sysadm_r:useradd_t
+tcontext=user_u:object_r:user_home_t tclass=file permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/admin/usermanage.te  |  2 ++
+ policy/modules/system/userdomain.if | 18 ++++++++++++++++++
+ 2 files changed, 20 insertions(+)
+
+diff --git a/policy/modules/admin/usermanage.te b/policy/modules/admin/usermanage.te
+index 98646b4b4..50c479498 100644
+--- a/policy/modules/admin/usermanage.te
++++ b/policy/modules/admin/usermanage.te
+@@ -496,6 +496,7 @@ files_read_etc_runtime_files(useradd_t)
+ 
+ fs_search_auto_mountpoints(useradd_t)
+ fs_getattr_xattr_fs(useradd_t)
++fs_search_tmpfs(useradd_t)
+ 
+ mls_file_upgrade(useradd_t)
+ 
+@@ -541,6 +542,7 @@ userdom_home_filetrans_user_home_dir(useradd_t)
+ userdom_manage_user_home_content_dirs(useradd_t)
+ userdom_manage_user_home_content_files(useradd_t)
+ userdom_user_home_dir_filetrans_user_home_content(useradd_t, notdevfile_class_set)
++userdom_relabel_user_home_content_files(useradd_t)
+ 
+ optional_policy(`
+ 	mta_manage_spool(useradd_t)
+diff --git a/policy/modules/system/userdomain.if b/policy/modules/system/userdomain.if
+index 22b3c1bf7..ec625170d 100644
+--- a/policy/modules/system/userdomain.if
++++ b/policy/modules/system/userdomain.if
+@@ -2362,6 +2362,24 @@ interface(`userdom_dontaudit_relabel_user_home_content_files',`
+ 	dontaudit $1 user_home_t:file relabel_file_perms;
+ ')
+ 
++########################################
++## <summary>
++##	Relabel user home files.
++## </summary>
++## <param name="domain">
++##	<summary>
++##	Domain allowed access.
++##	</summary>
++## </param>
++#
++interface(`userdom_relabel_user_home_content_files',`
++	gen_require(`
++		type user_home_t;
++	')
++
++	allow $1 user_home_t:file relabel_file_perms;
++')
++
+ ########################################
+ ## <summary>
+ ##	Read user home subdirectory symbolic links.
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0040-policy-modules-services-bluetooth-fix-bluetoothd-sta.patch b/recipes-security/refpolicy/refpolicy/0040-policy-modules-services-bluetooth-fix-bluetoothd-sta.patch
deleted file mode 100644
index 8532a24..0000000
--- a/recipes-security/refpolicy/refpolicy/0040-policy-modules-services-bluetooth-fix-bluetoothd-sta.patch
+++ /dev/null
@@ -1,88 +0,0 @@
-From 21c60a1ed37aef0427dbd49f602896b09b875bca Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Tue, 23 Jun 2020 08:54:20 +0800
-Subject: [PATCH] policy/modules/services/bluetooth: fix bluetoothd startup
- failures
-
-* Allow bluetooth_t to create and use bluetooth_socket
-* Allow bluetooth_t to create alg_socket
-* Allow bluetooth_t to send and receive messages from systemd hostnamed
-  over dbus
-
-Fixes:
-avc: denied { create } for pid=324 comm="bluetoothd"
-scontext=system_u:system_r:bluetooth_t
-tcontext=system_u:system_r:bluetooth_t tclass=bluetooth_socket
-permissive=0
-
-avc: denied { bind } for pid=324 comm="bluetoothd"
-scontext=system_u:system_r:bluetooth_t
-tcontext=system_u:system_r:bluetooth_t tclass=bluetooth_socket
-permissive=0
-
-avc: denied { write } for pid=324 comm="bluetoothd"
-scontext=system_u:system_r:bluetooth_t
-tcontext=system_u:system_r:bluetooth_t tclass=bluetooth_socket
-permissive=0
-
-avc: denied { getattr } for pid=324 comm="bluetoothd"
-path="socket:[11771]" dev="sockfs" ino=11771
-scontext=system_u:system_r:bluetooth_t
-tcontext=system_u:system_r:bluetooth_t tclass=bluetooth_socket
-permissive=0
-
-avc: denied { listen } for pid=324 comm="bluetoothd"
-scontext=system_u:system_r:bluetooth_t
-tcontext=system_u:system_r:bluetooth_t tclass=bluetooth_socket
-permissive=0
-
-avc: denied { read } for pid=324 comm="bluetoothd" path="socket:[11771]"
-dev="sockfs" ino=11771 scontext=system_u:system_r:bluetooth_t
-tcontext=system_u:system_r:bluetooth_t tclass=bluetooth_socket
-permissive=0
-
-avc:  denied  { create } for  pid=268 comm="bluetoothd"
-scontext=system_u:system_r:bluetooth_t:s0-s15:c0.c1023
-tcontext=system_u:system_r:bluetooth_t:s0-s15:c0.c1023 tclass=alg_socket
-permissive=0
-
-avc:  denied  { send_msg } for msgtype=method_call
-interface=org.freedesktop.DBus.Properties member=GetAll
-dest=org.freedesktop.hostname1 spid=266 tpid=312
-scontext=system_u:system_r:bluetooth_t:s0-s15:c0.c1023
-tcontext=system_u:system_r:systemd_hostnamed_t:s0-s15:c0.c1023
-tclass=dbus permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/services/bluetooth.te | 5 +++++
- 1 file changed, 5 insertions(+)
-
-diff --git a/policy/modules/services/bluetooth.te b/policy/modules/services/bluetooth.te
-index 69a38543e..b3df695db 100644
---- a/policy/modules/services/bluetooth.te
-+++ b/policy/modules/services/bluetooth.te
-@@ -60,6 +60,8 @@ allow bluetooth_t self:socket create_stream_socket_perms;
- allow bluetooth_t self:unix_stream_socket { accept connectto listen };
- allow bluetooth_t self:tcp_socket { accept listen };
- allow bluetooth_t self:netlink_kobject_uevent_socket create_socket_perms;
-+allow bluetooth_t self:bluetooth_socket create_stream_socket_perms;
-+allow bluetooth_t self:alg_socket create;
- 
- read_files_pattern(bluetooth_t, bluetooth_conf_t, bluetooth_conf_t)
- 
-@@ -127,6 +129,9 @@ userdom_dontaudit_use_unpriv_user_fds(bluetooth_t)
- userdom_dontaudit_use_user_terminals(bluetooth_t)
- userdom_dontaudit_search_user_home_dirs(bluetooth_t)
- 
-+init_dbus_send_script(bluetooth_t)
-+systemd_dbus_chat_hostnamed(bluetooth_t)
-+
- optional_policy(`
- 	dbus_system_bus_client(bluetooth_t)
- 	dbus_connect_system_bus(bluetooth_t)
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0049-policy-modules-system-systemd-enable-support-for-sys.patch b/recipes-security/refpolicy/refpolicy/0040-policy-modules-system-systemd-enable-support-for-sys.patch
similarity index 91%
rename from recipes-security/refpolicy/refpolicy/0049-policy-modules-system-systemd-enable-support-for-sys.patch
rename to recipes-security/refpolicy/refpolicy/0040-policy-modules-system-systemd-enable-support-for-sys.patch
index ae1d71a..e8b4ee0 100644
--- a/recipes-security/refpolicy/refpolicy/0049-policy-modules-system-systemd-enable-support-for-sys.patch
+++ b/recipes-security/refpolicy/refpolicy/0040-policy-modules-system-systemd-enable-support-for-sys.patch
@@ -1,4 +1,4 @@
-From c2a6ad9b4eee990b79175ec1866cfe20b7c61ef3 Mon Sep 17 00:00:00 2001
+From 7c5e9c228d1858d2f5fc9217a850e6b1de89dcd5 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Thu, 4 Feb 2016 06:03:19 -0500
 Subject: [PATCH] policy/modules/system/systemd: enable support for
@@ -36,10 +36,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 5 insertions(+), 1 deletion(-)
 
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 2e08efd19..7da836136 100644
+index 744cbc605..05d6700d0 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -10,7 +10,7 @@ policy_module(systemd, 1.11.1)
+@@ -10,7 +10,7 @@ policy_module(systemd, 1.12.5)
  ## Enable support for systemd-tmpfiles to manage all non-security files.
  ## </p>
  ## </desc>
@@ -48,7 +48,7 @@ index 2e08efd19..7da836136 100644
  
  ## <desc>
  ## <p>
-@@ -1332,6 +1332,10 @@ files_relabelfrom_home(systemd_tmpfiles_t)
+@@ -1393,6 +1393,10 @@ files_relabelfrom_home(systemd_tmpfiles_t)
  files_relabelto_home(systemd_tmpfiles_t)
  files_relabelto_etc_dirs(systemd_tmpfiles_t)
  files_setattr_lock_dirs(systemd_tmpfiles_t)
diff --git a/recipes-security/refpolicy/refpolicy/0041-policy-modules-roles-sysadm-allow-sysadm-to-run-rpci.patch b/recipes-security/refpolicy/refpolicy/0041-policy-modules-roles-sysadm-allow-sysadm-to-run-rpci.patch
deleted file mode 100644
index bd06065..0000000
--- a/recipes-security/refpolicy/refpolicy/0041-policy-modules-roles-sysadm-allow-sysadm-to-run-rpci.patch
+++ /dev/null
@@ -1,38 +0,0 @@
-From e67fe4fa79d59be7bcefd256c1966ea8c034a3d9 Mon Sep 17 00:00:00 2001
-From: Roy Li <rongqing.li@windriver.com>
-Date: Sat, 15 Feb 2014 09:45:00 +0800
-Subject: [PATCH] policy/modules/roles/sysadm: allow sysadm to run rpcinfo
-
-Fixes:
-$ rpcinfo
-rpcinfo: can't contact rpcbind: RPC: Remote system error - Permission denied
-
-avc:  denied  { connectto } for  pid=406 comm="rpcinfo"
-path="/run/rpcbind.sock" scontext=root:sysadm_r:sysadm_t
-tcontext=system_u:system_r:rpcbind_t tclass=unix_stream_socket
-permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Roy Li <rongqing.li@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/roles/sysadm.te | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
-index ddf973693..1642f3b93 100644
---- a/policy/modules/roles/sysadm.te
-+++ b/policy/modules/roles/sysadm.te
-@@ -947,6 +947,7 @@ optional_policy(`
- ')
- 
- optional_policy(`
-+	rpcbind_stream_connect(sysadm_t)
- 	rpcbind_admin(sysadm_t, sysadm_r)
- ')
- 
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0050-policy-modules-system-systemd-fix-systemd-resolved-s.patch b/recipes-security/refpolicy/refpolicy/0041-policy-modules-system-systemd-fix-systemd-resolved-s.patch
similarity index 67%
rename from recipes-security/refpolicy/refpolicy/0050-policy-modules-system-systemd-fix-systemd-resolved-s.patch
rename to recipes-security/refpolicy/refpolicy/0041-policy-modules-system-systemd-fix-systemd-resolved-s.patch
index a0dc9f2..9d5b3f8 100644
--- a/recipes-security/refpolicy/refpolicy/0050-policy-modules-system-systemd-fix-systemd-resolved-s.patch
+++ b/recipes-security/refpolicy/refpolicy/0041-policy-modules-system-systemd-fix-systemd-resolved-s.patch
@@ -1,22 +1,15 @@
-From 8e762e1070e98a4235a70536ee6ca81725858a4b Mon Sep 17 00:00:00 2001
+From c348510f7ae78b86be4572a7abcdbeee150638a3 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Mon, 25 Jan 2021 14:14:59 +0800
 Subject: [PATCH] policy/modules/system/systemd: fix systemd-resolved startup
  failures
 
-* Allow systemd_resolved_t to create socket file
 * Allow systemd_resolved_t to manage systemd_resolved_runtime_t link
   files
 * Allow systemd_resolved_t to send and recevie messages from dhcpc over
   dbus
 
 Fixes:
-avc:  denied  { create } for  pid=258 comm="systemd-resolve"
-name="io.systemd.Resolve"
-scontext=system_u:system_r:systemd_resolved_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:systemd_resolved_runtime_t:s0
-tclass=sock_file permissive=0
-
 avc:  denied  { create } for  pid=329 comm="systemd-resolve"
 name=".#stub-resolv.conf53cb7f9d1e3aa72b"
 scontext=system_u:system_r:systemd_resolved_t:s0-s15:c0.c1023
@@ -39,31 +32,29 @@ Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/system/systemd.te | 4 ++++
- 1 file changed, 4 insertions(+)
+ policy/modules/system/systemd.te | 2 ++
+ 1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 7da836136..0411729ea 100644
+index 05d6700d0..e8559cb6a 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -1164,6 +1164,8 @@ allow systemd_resolved_t systemd_networkd_runtime_t:dir watch;
+@@ -1196,6 +1196,7 @@ allow systemd_resolved_t systemd_networkd_runtime_t:dir watch;
  
  manage_dirs_pattern(systemd_resolved_t, systemd_resolved_runtime_t, systemd_resolved_runtime_t)
  manage_files_pattern(systemd_resolved_t, systemd_resolved_runtime_t, systemd_resolved_runtime_t)
-+manage_sock_files_pattern(systemd_resolved_t, systemd_resolved_runtime_t, systemd_resolved_runtime_t)
 +manage_lnk_files_pattern(systemd_resolved_t, systemd_resolved_runtime_t, systemd_resolved_runtime_t)
+ manage_sock_files_pattern(systemd_resolved_t, systemd_resolved_runtime_t, systemd_resolved_runtime_t)
  init_runtime_filetrans(systemd_resolved_t, systemd_resolved_runtime_t, dir)
  
- dev_read_sysfs(systemd_resolved_t)
-@@ -1194,6 +1196,8 @@ seutil_read_file_contexts(systemd_resolved_t)
- systemd_log_parse_environment(systemd_resolved_t)
- systemd_read_networkd_runtime(systemd_resolved_t)
- 
-+sysnet_dbus_chat_dhcpc(systemd_resolved_t)
-+
- optional_policy(`
- 	dbus_connect_system_bus(systemd_resolved_t)
+@@ -1233,6 +1234,7 @@ optional_policy(`
  	dbus_system_bus_client(systemd_resolved_t)
+ 	dbus_watch_system_bus_runtime_dirs(systemd_resolved_t)
+ 	dbus_watch_system_bus_runtime_named_sockets(systemd_resolved_t)
++	sysnet_dbus_chat_dhcpc(systemd_resolved_t)
+ ')
+ 
+ #########################################
 -- 
 2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0042-policy-modules-services-rpc-add-capability-dac_read_.patch b/recipes-security/refpolicy/refpolicy/0042-policy-modules-services-rpc-add-capability-dac_read_.patch
deleted file mode 100644
index 534c280..0000000
--- a/recipes-security/refpolicy/refpolicy/0042-policy-modules-services-rpc-add-capability-dac_read_.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-From 7c94b6aa3c679dc201ed5a907f713c0857d8b8ca Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Tue, 14 May 2019 15:22:08 +0800
-Subject: [PATCH] policy/modules/services/rpc: add capability dac_read_search
- for rpcd_t
-
-Fixes:
-type=AVC msg=audit(1558592079.931:494): avc:  denied  { dac_read_search }
-for  pid=585 comm="sm-notify" capability=2 scontext=system_u:system_r:rpcd_t
-tcontext=system_u:system_r:rpcd_t tclass=capability permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/services/rpc.te | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/policy/modules/services/rpc.te b/policy/modules/services/rpc.te
-index c3e37177b..87b6b4561 100644
---- a/policy/modules/services/rpc.te
-+++ b/policy/modules/services/rpc.te
-@@ -232,7 +232,7 @@ optional_policy(`
- # Local policy
- #
- 
--allow rpcd_t self:capability { chown dac_override setgid setpcap setuid sys_admin };
-+allow rpcd_t self:capability { chown dac_override dac_read_search setgid setpcap setuid sys_admin };
- allow rpcd_t self:capability2 block_suspend;
- allow rpcd_t self:process { getcap setcap };
- allow rpcd_t self:fifo_file rw_fifo_file_perms;
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0042-policy-modules-system-systemd-allow-systemd_-_t-to-g.patch b/recipes-security/refpolicy/refpolicy/0042-policy-modules-system-systemd-allow-systemd_-_t-to-g.patch
new file mode 100644
index 0000000..38ad025
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0042-policy-modules-system-systemd-allow-systemd_-_t-to-g.patch
@@ -0,0 +1,156 @@
+From c74e40fb95cd6d8c6a704637c8e0d1752c60b3de Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 28 Sep 2021 10:03:04 +0800
+Subject: [PATCH] policy/modules/system/systemd: allow systemd_*_t to get the
+ attributes of tmpfs and cgroups
+
+Fixes:
+avc: denied { getattr } for pid=245 comm="systemd-network" name="/"
+dev="tmpfs" ino=1 scontext=system_u:system_r:systemd_networkd_t
+tcontext=system_u:object_r:tmpfs_t tclass=filesystem permissive=0
+
+avc: denied { getattr } for pid=252 comm="systemd-resolve" name="/"
+dev="tmpfs" ino=1 scontext=system_u:system_r:systemd_resolved_t
+tcontext=system_u:object_r:tmpfs_t tclass=filesystem permissive=0
+
+avc: denied { getattr } for pid=260 comm="systemd-user-se" name="/"
+dev="tmpfs" ino=1 scontext=system_u:system_r:systemd_sessions_t
+tcontext=system_u:object_r:tmpfs_t tclass=filesystem permissive=0
+
+avc: denied { search } for pid=293 comm="systemd-user-ru" name="/"
+dev="tmpfs" ino=1 scontext=system_u:system_r:systemd_user_runtime_dir_t
+tcontext=system_u:object_r:cgroup_t tclass=dir permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 35 ++++++++++++++++++++++++++++++++
+ 1 file changed, 35 insertions(+)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
+index e8559cb6a..e488bf3dc 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -337,6 +337,10 @@ udev_read_runtime_files(systemd_backlight_t)
+ 
+ files_search_var_lib(systemd_backlight_t)
+ 
++fs_getattr_tmpfs(systemd_backlight_t)
++fs_search_cgroup_dirs(systemd_backlight_t)
++fs_getattr_cgroup(systemd_backlight_t)
++
+ #######################################
+ #
+ # Binfmt local policy
+@@ -447,6 +451,7 @@ files_list_usr(systemd_generator_t)
+ fs_list_efivars(systemd_generator_t)
+ fs_getattr_cgroup(systemd_generator_t)
+ fs_getattr_xattr_fs(systemd_generator_t)
++fs_getattr_tmpfs(systemd_generator_t)
+ 
+ init_create_runtime_files(systemd_generator_t)
+ init_manage_runtime_dirs(systemd_generator_t)
+@@ -512,6 +517,10 @@ sysnet_manage_config(systemd_hostnamed_t)
+ 
+ systemd_log_parse_environment(systemd_hostnamed_t)
+ 
++fs_getattr_tmpfs(systemd_hostnamed_t)
++fs_search_cgroup_dirs(systemd_hostnamed_t)
++fs_getattr_cgroup(systemd_hostnamed_t)
++
+ optional_policy(`
+ 	dbus_connect_system_bus(systemd_hostnamed_t)
+ 	dbus_system_bus_client(systemd_hostnamed_t)
+@@ -832,6 +841,10 @@ dev_read_sysfs(systemd_modules_load_t)
+ files_mmap_read_kernel_modules(systemd_modules_load_t)
+ files_read_etc_files(systemd_modules_load_t)
+ 
++fs_getattr_tmpfs(systemd_modules_load_t)
++fs_search_cgroup_dirs(systemd_modules_load_t)
++fs_getattr_cgroup(systemd_modules_load_t)
++
+ modutils_read_module_config(systemd_modules_load_t)
+ modutils_read_module_deps(systemd_modules_load_t)
+ 
+@@ -882,6 +895,7 @@ files_watch_runtime_dirs(systemd_networkd_t)
+ files_watch_root_dirs(systemd_networkd_t)
+ files_list_runtime(systemd_networkd_t)
+ fs_getattr_xattr_fs(systemd_networkd_t)
++fs_getattr_tmpfs(systemd_networkd_t)
+ fs_getattr_cgroup(systemd_networkd_t)
+ fs_search_cgroup_dirs(systemd_networkd_t)
+ fs_read_nsfs_files(systemd_networkd_t)
+@@ -1182,6 +1196,10 @@ udev_read_runtime_files(systemd_rfkill_t)
+ 
+ systemd_log_parse_environment(systemd_rfkill_t)
+ 
++fs_getattr_tmpfs(systemd_rfkill_t)
++fs_search_cgroup_dirs(systemd_rfkill_t)
++fs_getattr_cgroup(systemd_rfkill_t)
++
+ #########################################
+ #
+ # Resolved local policy
+@@ -1221,6 +1239,9 @@ auth_use_nsswitch(systemd_resolved_t)
+ files_watch_root_dirs(systemd_resolved_t)
+ files_watch_runtime_dirs(systemd_resolved_t)
+ files_list_runtime(systemd_resolved_t)
++fs_getattr_tmpfs(systemd_resolved_t)
++fs_search_cgroup_dirs(systemd_resolved_t)
++fs_getattr_cgroup(systemd_resolved_t)
+ 
+ init_dgram_send(systemd_resolved_t)
+ 
+@@ -1285,6 +1306,10 @@ seutil_read_file_contexts(systemd_sessions_t)
+ 
+ systemd_log_parse_environment(systemd_sessions_t)
+ 
++fs_getattr_tmpfs(systemd_sessions_t)
++fs_search_cgroup_dirs(systemd_sessions_t)
++fs_getattr_cgroup(systemd_sessions_t)
++
+ ########################################
+ #
+ # sysctl local policy
+@@ -1301,6 +1326,9 @@ kernel_rw_all_sysctls(systemd_sysctl_t)
+ kernel_dontaudit_getattr_proc(systemd_sysctl_t)
+ 
+ files_read_etc_files(systemd_sysctl_t)
++fs_getattr_tmpfs(systemd_sysctl_t)
++fs_search_cgroup_dirs(systemd_sysctl_t)
++fs_getattr_cgroup(systemd_sysctl_t)
+ 
+ systemd_log_parse_environment(systemd_sysctl_t)
+ 
+@@ -1406,6 +1434,8 @@ fs_getattr_tmpfs(systemd_tmpfiles_t)
+ fs_getattr_xattr_fs(systemd_tmpfiles_t)
+ fs_list_tmpfs(systemd_tmpfiles_t)
+ fs_relabelfrom_tmpfs_dirs(systemd_tmpfiles_t)
++fs_search_cgroup_dirs(systemd_tmpfiles_t)
++fs_getattr_cgroup(systemd_tmpfiles_t)
+ 
+ selinux_get_fs_mount(systemd_tmpfiles_t)
+ selinux_use_status_page(systemd_tmpfiles_t)
+@@ -1494,6 +1524,10 @@ allow systemd_update_done_t systemd_update_run_t:file manage_file_perms;
+ files_etc_filetrans(systemd_update_done_t, systemd_update_run_t, file)
+ files_var_filetrans(systemd_update_done_t, systemd_update_run_t, file)
+ 
++fs_getattr_tmpfs(systemd_update_done_t)
++fs_search_cgroup_dirs(systemd_update_done_t)
++fs_getattr_cgroup(systemd_update_done_t)
++
+ kernel_read_kernel_sysctls(systemd_update_done_t)
+ 
+ selinux_use_status_page(systemd_update_done_t)
+@@ -1598,6 +1632,7 @@ fs_unmount_tmpfs(systemd_user_runtime_dir_t)
+ fs_relabelfrom_tmpfs_dirs(systemd_user_runtime_dir_t)
+ fs_read_cgroup_files(systemd_user_runtime_dir_t)
+ fs_getattr_cgroup(systemd_user_runtime_dir_t)
++fs_search_cgroup_dirs(systemd_user_runtime_dir_t)
+ 
+ kernel_read_kernel_sysctls(systemd_user_runtime_dir_t)
+ kernel_dontaudit_getattr_proc(systemd_user_runtime_dir_t)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0043-policy-modules-system-systemd-allow-systemd_hostname.patch b/recipes-security/refpolicy/refpolicy/0043-policy-modules-system-systemd-allow-systemd_hostname.patch
new file mode 100644
index 0000000..9da5b68
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0043-policy-modules-system-systemd-allow-systemd_hostname.patch
@@ -0,0 +1,41 @@
+From 8dde3ab80552772c00ed18af46aec6ec5ecbb296 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Thu, 4 Feb 2021 15:13:50 +0800
+Subject: [PATCH] policy/modules/system/systemd: allow systemd_hostnamed to
+ read udev runtime files
+
+Fixes:
+avc:  denied  { open } for  pid=392 comm="systemd-hostnam"
+path="/run/udev/data/+dmi:id" dev="tmpfs" ino=609
+scontext=system_u:system_r:systemd_hostnamed_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:udev_runtime_t:s0 tclass=file permissive=1
+
+avc:  denied  { getattr } for  pid=392 comm="systemd-hostnam"
+path="/run/udev/data/+dmi:id" dev="tmpfs" ino=609
+scontext=system_u:system_r:systemd_hostnamed_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:udev_runtime_t:s0 tclass=file permissive=1
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 3 +++
+ 1 file changed, 3 insertions(+)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
+index e488bf3dc..9092bb8b4 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -521,6 +521,9 @@ fs_getattr_tmpfs(systemd_hostnamed_t)
+ fs_search_cgroup_dirs(systemd_hostnamed_t)
+ fs_getattr_cgroup(systemd_hostnamed_t)
+ 
++# Allow reading /run/udev/data/+dmi:id
++udev_read_runtime_files(systemd_hostnamed_t)
++
+ optional_policy(`
+ 	dbus_connect_system_bus(systemd_hostnamed_t)
+ 	dbus_system_bus_client(systemd_hostnamed_t)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0044-policy-modules-services-rngd-fix-security-context-fo.patch b/recipes-security/refpolicy/refpolicy/0044-policy-modules-services-rngd-fix-security-context-fo.patch
deleted file mode 100644
index 7bd1402..0000000
--- a/recipes-security/refpolicy/refpolicy/0044-policy-modules-services-rngd-fix-security-context-fo.patch
+++ /dev/null
@@ -1,65 +0,0 @@
-From 5dbfff582a9c7745f8517adefb27c5f90653f8fa Mon Sep 17 00:00:00 2001
-From: Wenzong Fan <wenzong.fan@windriver.com>
-Date: Wed, 25 May 2016 03:16:24 -0400
-Subject: [PATCH] policy/modules/services/rngd: fix security context for
- rng-tools
-
-* Fix security context for /etc/init.d/rng-tools
-* Allow rngd_t to read sysfs
-
-Fixes:
-avc: denied { read } for pid=355 comm="rngd" name="cpu" dev="sysfs"
-ino=36 scontext=system_u:system_r:rngd_t
-tcontext=system_u:object_r:sysfs_t tclass=dir permissive=1
-
-avc: denied { getsched } for pid=355 comm="rngd"
-scontext=system_u:system_r:rngd_t tcontext=system_u:system_r:rngd_t
-tclass=process permissive=1
-
-avc: denied { setsched } for pid=355 comm="rngd"
-scontext=system_u:system_r:rngd_t tcontext=system_u:system_r:rngd_t
-tclass=process permissive=1
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/services/rngd.fc | 1 +
- policy/modules/services/rngd.te | 3 ++-
- 2 files changed, 3 insertions(+), 1 deletion(-)
-
-diff --git a/policy/modules/services/rngd.fc b/policy/modules/services/rngd.fc
-index 382c067f9..0ecc5acc4 100644
---- a/policy/modules/services/rngd.fc
-+++ b/policy/modules/services/rngd.fc
-@@ -1,4 +1,5 @@
- /etc/rc\.d/init\.d/rngd	--	gen_context(system_u:object_r:rngd_initrc_exec_t,s0)
-+/etc/rc\.d/init\.d/rng-tools	--	gen_context(system_u:object_r:rngd_initrc_exec_t,s0)
- 
- /usr/bin/rngd	--	gen_context(system_u:object_r:rngd_exec_t,s0)
- 
-diff --git a/policy/modules/services/rngd.te b/policy/modules/services/rngd.te
-index 4540e4ec7..48f08fb48 100644
---- a/policy/modules/services/rngd.te
-+++ b/policy/modules/services/rngd.te
-@@ -21,7 +21,7 @@ files_runtime_file(rngd_runtime_t)
- #
- 
- allow rngd_t self:capability { ipc_lock sys_admin };
--allow rngd_t self:process signal;
-+allow rngd_t self:process { signal getsched setsched };
- allow rngd_t self:fifo_file rw_fifo_file_perms;
- allow rngd_t self:unix_stream_socket { accept listen };
- 
-@@ -34,6 +34,7 @@ dev_read_rand(rngd_t)
- dev_read_urand(rngd_t)
- dev_rw_tpm(rngd_t)
- dev_write_rand(rngd_t)
-+dev_read_sysfs(rngd_t)
- 
- files_read_etc_files(rngd_t)
- 
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-logging-fix-syslogd-failures-f.patch b/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-logging-fix-syslogd-failures-f.patch
new file mode 100644
index 0000000..7d35863
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-logging-fix-syslogd-failures-f.patch
@@ -0,0 +1,55 @@
+From e4c2a285cebbd372da0e89953ce9a71a3fdbec2e Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Thu, 4 Feb 2016 02:10:15 -0500
+Subject: [PATCH] policy/modules/system/logging: fix syslogd failures for
+ systemd
+
+Fixes:
+syslogd[243]: Error opening log file: /var/log/auth.log: Permission denied
+syslogd[243]: Error opening log file: /var/log/syslog: Permission denied
+syslogd[243]: Error opening log file: /var/log/kern.log: Permission denied
+syslogd[243]: Error opening log file: /var/log/mail.log: Permission denied
+syslogd[243]: Error opening log file: /var/log/mail.err: Permission denied
+syslogd[243]: Error opening log file: /var/log/messages: Permission denied
+
+avc:  denied  { search } for  pid=243 comm="syslogd" name="/"
+dev="tmpfs" ino=1 scontext=system_u:system_r:syslogd_t
+tcontext=system_u:object_r:tmpfs_t tclass=dir permissive=0
+
+avc:  denied  { write } for  pid=162 comm="systemd-journal"
+name="syslog" dev="tmpfs" ino=515 scontext=system_u:system_r:syslogd_t
+tcontext=system_u:object_r:syslogd_runtime_t tclass=sock_file
+permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/logging.te | 3 ++-
+ 1 file changed, 2 insertions(+), 1 deletion(-)
+
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
+index cc530a2be..5b4b5ec5d 100644
+--- a/policy/modules/system/logging.te
++++ b/policy/modules/system/logging.te
+@@ -431,7 +431,7 @@ files_search_var_lib(syslogd_t)
+ 
+ # manage runtime files
+ allow syslogd_t syslogd_runtime_t:dir create_dir_perms;
+-allow syslogd_t syslogd_runtime_t:sock_file { create setattr unlink };
++allow syslogd_t syslogd_runtime_t:sock_file { create setattr unlink write };
+ allow syslogd_t syslogd_runtime_t:file map;
+ manage_files_pattern(syslogd_t, syslogd_runtime_t, syslogd_runtime_t)
+ files_runtime_filetrans(syslogd_t, syslogd_runtime_t, file)
+@@ -495,6 +495,7 @@ files_var_lib_filetrans(syslogd_t, syslogd_var_lib_t, { file dir })
+ 
+ fs_getattr_all_fs(syslogd_t)
+ fs_search_auto_mountpoints(syslogd_t)
++fs_search_tmpfs(syslogd_t)
+ 
+ mls_file_write_all_levels(syslogd_t) # Need to be able to write to /var/run/ and /var/log directories
+ 
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0045-policy-modules-services-ssh-allow-ssh_keygen_t-to-re.patch b/recipes-security/refpolicy/refpolicy/0045-policy-modules-services-ssh-allow-ssh_keygen_t-to-re.patch
deleted file mode 100644
index 4b7e2b5..0000000
--- a/recipes-security/refpolicy/refpolicy/0045-policy-modules-services-ssh-allow-ssh_keygen_t-to-re.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-From be61411d6d7d3bb2c700ec24f42661ce9c728df4 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Fri, 29 Jan 2021 10:32:00 +0800
-Subject: [PATCH] policy/modules/services/ssh: allow ssh_keygen_t to read
- proc_t
-
-Fixes:
-avc:  denied  { read } for  pid=353 comm="ssh-keygen" name="filesystems"
-dev="proc" ino=4026532078 scontext=system_u:system_r:ssh_keygen_t
-tcontext=system_u:object_r:proc_t tclass=file permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/services/ssh.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/services/ssh.te b/policy/modules/services/ssh.te
-index 238c45ed8..2bbf50e84 100644
---- a/policy/modules/services/ssh.te
-+++ b/policy/modules/services/ssh.te
-@@ -330,6 +330,8 @@ allow ssh_keygen_t self:process { sigchld sigkill sigstop signull signal };
- 
- allow ssh_keygen_t self:unix_stream_socket create_stream_socket_perms;
- 
-+allow ssh_keygen_t proc_t:file read_file_perms;
-+
- allow ssh_keygen_t sshd_key_t:file manage_file_perms;
- files_etc_filetrans(ssh_keygen_t, sshd_key_t, file)
- 
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0045-policy-modules-system-systemd-systemd-user-fixes.patch b/recipes-security/refpolicy/refpolicy/0045-policy-modules-system-systemd-systemd-user-fixes.patch
new file mode 100644
index 0000000..0482c2b
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0045-policy-modules-system-systemd-systemd-user-fixes.patch
@@ -0,0 +1,172 @@
+From abc97dcee46ff4ed557aefce51ec3b1385095361 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Thu, 4 Feb 2021 10:48:54 +0800
+Subject: [PATCH] policy/modules/system/systemd: systemd --user fixes
+
+Fixes:
+systemctl[1598]: Failed to connect to bus: $DBUS_SESSION_BUS_ADDRESS and
+$XDG_RUNTIME_DIR not defined (consider using --machine=<user>@.host
+--user to connect to bus of other user)
+
+avc: denied { connectto } for  pid=293 comm="login"
+path="/run/systemd/userdb/io.systemd.Multiplexer"
+scontext=system_u:system_r:local_login_t
+tcontext=system_u:system_r:initrc_t tclass=unix_stream_socket
+permissive=0
+
+avc: denied { read } for  pid=293 comm="login" name="io.systemd.DropIn"
+dev="tmpfs" ino=44 scontext=system_u:system_r:local_login_t
+tcontext=system_u:object_r:systemd_userdb_runtime_t tclass=lnk_file
+permissive=0
+
+avc: denied { read } for  pid=293 comm="login"
+name="io.systemd.NameServiceSwitch" dev="tmpfs" ino=43
+scontext=system_u:system_r:local_login_t
+tcontext=system_u:object_r:systemd_userdb_runtime_t tclass=lnk_file
+permissive=0
+
+avc: denied { connectto } for  pid=244 comm="systemd-logind"
+path="/run/systemd/userdb/io.systemd.Multiplexer"
+scontext=system_u:system_r:systemd_logind_t
+tcontext=system_u:system_r:initrc_t tclass=unix_stream_socket
+permissive=0
+
+avc: denied { read } for  pid=244 comm="systemd-logind"
+name="io.systemd.DropIn" dev="tmpfs" ino=44
+scontext=system_u:system_r:systemd_logind_t
+tcontext=system_u:object_r:systemd_userdb_runtime_t tclass=lnk_file
+permissive=0
+
+avc: denied { read } for  pid=244 comm="systemd-logind"
+name="io.systemd.NameServiceSwitch" dev="tmpfs" ino=43
+scontext=system_u:system_r:systemd_logind_t
+tcontext=system_u:object_r:systemd_userdb_runtime_t tclass=lnk_file
+permissive=0
+
+avc: denied { mknod } for  pid=297 comm="systemd" capability=27
+scontext=root:sysadm_r:sysadm_systemd_t
+tcontext=root:sysadm_r:sysadm_systemd_t tclass=capability permissive=0
+
+avc: denied { setrlimit } for pid=297 comm="systemd"
+scontext=root:sysadm_r:sysadm_systemd_t
+tcontext=root:sysadm_r:sysadm_systemd_t tclass=process permissive=0
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
+avc: denied { watch } for pid=297 comm="systemd" path="/etc" dev="vda"
+ino=173 scontext=root:sysadm_r:sysadm_systemd_t
+tcontext=system_u:object_r:etc_t tclass=dir permissive=0
+
+avc: denied { getattr } for pid=297 comm="systemd" name="/" dev="vda"
+ino=2 scontext=root:sysadm_r:sysadm_systemd_t
+tcontext=system_u:object_r:fs_t tclass=filesystem permissive=0
+
+avc: denied { read } for pid=297 comm="systemd" name="unix" dev="proc"
+ino=4026532057 scontext=root:sysadm_r:sysadm_systemd_t
+tcontext=system_u:object_r:proc_net_t tclass=file permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/roles/sysadm.te   |  2 ++
+ policy/modules/system/init.if    |  1 +
+ policy/modules/system/systemd.if | 27 ++++++++++++++++++++++++++-
+ 3 files changed, 29 insertions(+), 1 deletion(-)
+
+diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
+index 46d3e2f0b..e1933a5bd 100644
+--- a/policy/modules/roles/sysadm.te
++++ b/policy/modules/roles/sysadm.te
+@@ -92,6 +92,8 @@ ifdef(`init_systemd',`
+ 	# Allow sysadm to query and set networking settings on the system.
+ 	systemd_dbus_chat_networkd(sysadm_t)
+ 	fs_read_nsfs_files(sysadm_t)
++
++	systemd_sysadm_user(sysadm_t)
+ ')
+ 
+ tunable_policy(`allow_ptrace',`
+diff --git a/policy/modules/system/init.if b/policy/modules/system/init.if
+index 0171ee299..8ca29f654 100644
+--- a/policy/modules/system/init.if
++++ b/policy/modules/system/init.if
+@@ -959,6 +959,7 @@ interface(`init_unix_stream_socket_connectto',`
+ 	')
+ 
+ 	allow $1 init_t:unix_stream_socket connectto;
++	allow $1 initrc_t:unix_stream_socket connectto;
+ ')
+ 
+ ########################################
+diff --git a/policy/modules/system/systemd.if b/policy/modules/system/systemd.if
+index 38adf050c..5c44d8d8a 100644
+--- a/policy/modules/system/systemd.if
++++ b/policy/modules/system/systemd.if
+@@ -57,7 +57,7 @@ template(`systemd_role_template',`
+ 	allow $1_systemd_t self:process { getsched signal };
+ 	allow $1_systemd_t self:netlink_kobject_uevent_socket create_socket_perms;
+ 	allow $1_systemd_t self:unix_stream_socket create_stream_socket_perms;
+-	allow $1_systemd_t $3:process { setsched rlimitinh signal_perms };
++	allow $1_systemd_t $3:process { setsched rlimitinh signal_perms noatsecure };
+ 	corecmd_shell_domtrans($1_systemd_t, $3)
+ 	corecmd_bin_domtrans($1_systemd_t, $3)
+ 
+@@ -88,8 +88,11 @@ template(`systemd_role_template',`
+ 
+ 	fs_manage_cgroup_files($1_systemd_t)
+ 	fs_watch_cgroup_files($1_systemd_t)
++	files_watch_etc_dirs($1_systemd_t)
++	fs_getattr_xattr_fs($1_systemd_t)
+ 
+ 	kernel_dontaudit_getattr_proc($1_systemd_t)
++	kernel_read_network_state($1_systemd_t)
+ 
+ 	selinux_use_status_page($1_systemd_t)
+ 
+@@ -1052,6 +1055,7 @@ interface(`systemd_stream_connect_userdb', `
+ 	init_search_runtime($1)
+ 	allow $1 systemd_userdb_runtime_t:dir list_dir_perms;
+ 	allow $1 systemd_userdb_runtime_t:sock_file write_sock_file_perms;
++	allow $1 systemd_userdb_runtime_t:lnk_file read_lnk_file_perms;
+ 	init_unix_stream_socket_connectto($1)
+ ')
+ 
+@@ -2003,3 +2007,24 @@ interface(`systemd_use_inherited_machined_ptys', `
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
++	allow sysadm_systemd_t self:process setrlimit;
++	allow $1 sysadm_systemd_t:system reload;
++')
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0046-policy-modules-services-ssh-make-respective-init-scr.patch b/recipes-security/refpolicy/refpolicy/0046-policy-modules-services-ssh-make-respective-init-scr.patch
deleted file mode 100644
index fd8d527..0000000
--- a/recipes-security/refpolicy/refpolicy/0046-policy-modules-services-ssh-make-respective-init-scr.patch
+++ /dev/null
@@ -1,33 +0,0 @@
-From 20e6395a7e8bce552fb0190dbc57d836d763fc18 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Sun, 28 Jun 2020 16:14:45 +0800
-Subject: [PATCH] policy/modules/services/ssh: make respective init scripts
- create pid dirs with proper contexts
-
-Fix sshd starup failure.
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/services/ssh.te | 4 +---
- 1 file changed, 1 insertion(+), 3 deletions(-)
-
-diff --git a/policy/modules/services/ssh.te b/policy/modules/services/ssh.te
-index 2bbf50e84..ad0a1b7ad 100644
---- a/policy/modules/services/ssh.te
-+++ b/policy/modules/services/ssh.te
-@@ -80,9 +80,7 @@ userdom_user_home_content(ssh_home_t)
- type sshd_keytab_t;
- files_type(sshd_keytab_t)
- 
--ifdef(`distro_debian',`
--	init_daemon_runtime_file(sshd_runtime_t, dir, "sshd")
--')
-+init_daemon_runtime_file(sshd_runtime_t, dir, "sshd")
- 
- ##############################
- #
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0060-policy-modules-system-sysnetwork-support-priviledge-.patch b/recipes-security/refpolicy/refpolicy/0046-policy-modules-system-sysnetwork-support-priviledge-.patch
similarity index 77%
rename from recipes-security/refpolicy/refpolicy/0060-policy-modules-system-sysnetwork-support-priviledge-.patch
rename to recipes-security/refpolicy/refpolicy/0046-policy-modules-system-sysnetwork-support-priviledge-.patch
index 64cc90e..825cc25 100644
--- a/recipes-security/refpolicy/refpolicy/0060-policy-modules-system-sysnetwork-support-priviledge-.patch
+++ b/recipes-security/refpolicy/refpolicy/0046-policy-modules-system-sysnetwork-support-priviledge-.patch
@@ -1,4 +1,4 @@
-From ab462f0022c35fde984dbe792ce386f5d507aeeb Mon Sep 17 00:00:00 2001
+From 7a24e7be73fefc64f0759417c89f887f32d75521 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Thu, 24 Sep 2020 14:05:52 +0800
 Subject: [PATCH] policy/modules/system/sysnetwork: support priviledge
@@ -80,26 +80,38 @@ Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/system/sysnetwork.te | 7 +++++++
- 1 file changed, 7 insertions(+)
+ policy/modules/system/sysnetwork.te | 7 ++++++-
+ 1 file changed, 6 insertions(+), 1 deletion(-)
 
 diff --git a/policy/modules/system/sysnetwork.te b/policy/modules/system/sysnetwork.te
-index cb1434180..a9297f976 100644
+index 4c317cc4c..05a9a52b8 100644
 --- a/policy/modules/system/sysnetwork.te
 +++ b/policy/modules/system/sysnetwork.te
-@@ -72,6 +72,11 @@ allow dhcpc_t self:netlink_route_socket create_netlink_socket_perms;
- allow dhcpc_t self:rawip_socket create_socket_perms;
- allow dhcpc_t self:unix_dgram_socket { create_socket_perms sendto };
- 
+@@ -58,10 +58,11 @@ ifdef(`distro_debian',`
+ # DHCP client local policy
+ #
+ allow dhcpc_t self:capability { dac_override fsetid net_admin net_bind_service net_raw setpcap sys_nice sys_resource sys_tty_config };
 +allow dhcpc_t self:capability { setgid setuid sys_chroot kill };
+ dontaudit dhcpc_t self:capability { sys_ptrace sys_tty_config };
+ # for access("/etc/bashrc", X_OK) on Red Hat
+ dontaudit dhcpc_t self:capability { dac_read_search sys_module };
+-allow dhcpc_t self:process { getsched getcap setcap setfscreate ptrace signal_perms };
++allow dhcpc_t self:process { getsched getcap setcap setfscreate ptrace signal_perms setrlimit };
+ 
+ allow dhcpc_t self:fifo_file rw_fifo_file_perms;
+ allow dhcpc_t self:tcp_socket create_stream_socket_perms;
+@@ -69,8 +70,10 @@ allow dhcpc_t self:udp_socket create_socket_perms;
+ allow dhcpc_t self:packet_socket create_socket_perms;
+ allow dhcpc_t self:netlink_generic_socket create_socket_perms;
+ allow dhcpc_t self:netlink_route_socket create_netlink_socket_perms;
 +allow dhcpc_t self:netlink_kobject_uevent_socket create_socket_perms;
-+allow dhcpc_t self:process setrlimit;
+ allow dhcpc_t self:rawip_socket create_socket_perms;
+ allow dhcpc_t self:unix_dgram_socket { create_socket_perms sendto };
 +allow dhcpc_t self:unix_stream_socket connectto;
-+
+ 
  allow dhcpc_t dhcp_etc_t:dir list_dir_perms;
  read_lnk_files_pattern(dhcpc_t, dhcp_etc_t, dhcp_etc_t)
- exec_files_pattern(dhcpc_t, dhcp_etc_t, dhcp_etc_t)
-@@ -145,6 +150,7 @@ files_manage_var_files(dhcpc_t)
+@@ -146,6 +149,7 @@ files_manage_var_files(dhcpc_t)
  fs_getattr_all_fs(dhcpc_t)
  fs_search_auto_mountpoints(dhcpc_t)
  fs_search_cgroup_dirs(dhcpc_t)
@@ -107,7 +119,7 @@ index cb1434180..a9297f976 100644
  
  term_dontaudit_use_all_ttys(dhcpc_t)
  term_dontaudit_use_all_ptys(dhcpc_t)
-@@ -180,6 +186,7 @@ ifdef(`init_systemd',`
+@@ -181,6 +185,7 @@ ifdef(`init_systemd',`
  	init_stream_connect(dhcpc_t)
  	init_get_all_units_status(dhcpc_t)
  	init_search_units(dhcpc_t)
diff --git a/recipes-security/refpolicy/refpolicy/0047-policy-modules-kernel-terminal-allow-loging-to-reset.patch b/recipes-security/refpolicy/refpolicy/0047-policy-modules-kernel-terminal-allow-loging-to-reset.patch
deleted file mode 100644
index cafdd61..0000000
--- a/recipes-security/refpolicy/refpolicy/0047-policy-modules-kernel-terminal-allow-loging-to-reset.patch
+++ /dev/null
@@ -1,31 +0,0 @@
-From f0249cb5802af7f9113786940d0c49e786f774ae Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Mon, 29 Jun 2020 14:27:02 +0800
-Subject: [PATCH] policy/modules/kernel/terminal: allow loging to reset tty
- perms
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/kernel/terminal.if | 4 +---
- 1 file changed, 1 insertion(+), 3 deletions(-)
-
-diff --git a/policy/modules/kernel/terminal.if b/policy/modules/kernel/terminal.if
-index e8c0735eb..9ccecfa0d 100644
---- a/policy/modules/kernel/terminal.if
-+++ b/policy/modules/kernel/terminal.if
-@@ -119,9 +119,7 @@ interface(`term_user_tty',`
- 
- 	# Debian login is from shadow utils and does not allow resetting the perms.
- 	# have to fix this!
--	ifdef(`distro_debian',`
--		type_change $1 ttynode:chr_file $2;
--	')
-+	type_change $1 ttynode:chr_file $2;
- 
- 	tunable_policy(`console_login',`
- 		# When user logs in from /dev/console, relabel it
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0061-policy-modules-services-acpi-allow-acpid-to-watch-th.patch b/recipes-security/refpolicy/refpolicy/0047-policy-modules-services-acpi-allow-acpid-to-watch-th.patch
similarity index 76%
rename from recipes-security/refpolicy/refpolicy/0061-policy-modules-services-acpi-allow-acpid-to-watch-th.patch
rename to recipes-security/refpolicy/refpolicy/0047-policy-modules-services-acpi-allow-acpid-to-watch-th.patch
index 8de3d5f..1cdcdf6 100644
--- a/recipes-security/refpolicy/refpolicy/0061-policy-modules-services-acpi-allow-acpid-to-watch-th.patch
+++ b/recipes-security/refpolicy/refpolicy/0047-policy-modules-services-acpi-allow-acpid-to-watch-th.patch
@@ -1,4 +1,4 @@
-From 7418cd97f2c92579bd4d18cbd9063f811ff9a81e Mon Sep 17 00:00:00 2001
+From a3064ede10818704c4d316fb98b331ab6b957100 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 9 Feb 2021 16:42:36 +0800
 Subject: [PATCH] policy/modules/services/acpi: allow acpid to watch the
@@ -11,7 +11,7 @@ avc:  denied  { watch } for  pid=269 comm="acpid" path="/dev/input"
 dev="devtmpfs" ino=35 scontext=system_u:system_r:acpid_t:s0-s15:c0.c1023
 tcontext=system_u:object_r:device_t:s0 tclass=dir permissive=0
 
-Upstream-Status: Inappropriate [embedded specific]
+Upstream-Status: Pending
 
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
@@ -19,17 +19,17 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/services/acpi.te b/policy/modules/services/acpi.te
-index 69f1dab4a..5c22adecd 100644
+index 69f1dab4a..56f72081e 100644
 --- a/policy/modules/services/acpi.te
 +++ b/policy/modules/services/acpi.te
-@@ -105,6 +105,7 @@ dev_rw_acpi_bios(acpid_t)
+@@ -103,6 +103,7 @@ dev_read_realtime_clock(acpid_t)
+ dev_read_urand(acpid_t)
+ dev_rw_acpi_bios(acpid_t)
  dev_rw_sysfs(acpid_t)
++dev_watch_dev_dirs(acpid_t)
  dev_dontaudit_getattr_all_chr_files(acpid_t)
  dev_dontaudit_getattr_all_blk_files(acpid_t)
-+dev_watch_dev_dirs(acpid_t)
  
- files_exec_etc_files(acpid_t)
- files_read_etc_runtime_files(acpid_t)
 -- 
 2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0063-policy-modules-system-modutils-allow-kmod_t-to-write.patch b/recipes-security/refpolicy/refpolicy/0048-policy-modules-system-modutils-allow-kmod_t-to-write.patch
similarity index 73%
rename from recipes-security/refpolicy/refpolicy/0063-policy-modules-system-modutils-allow-kmod_t-to-write.patch
rename to recipes-security/refpolicy/refpolicy/0048-policy-modules-system-modutils-allow-kmod_t-to-write.patch
index b644571..fac4cc1 100644
--- a/recipes-security/refpolicy/refpolicy/0063-policy-modules-system-modutils-allow-kmod_t-to-write.patch
+++ b/recipes-security/refpolicy/refpolicy/0048-policy-modules-system-modutils-allow-kmod_t-to-write.patch
@@ -1,4 +1,4 @@
-From 7002b4e33b949b474a0ce0b78a7f2e180dbbc9bb Mon Sep 17 00:00:00 2001
+From 919897d048ac0123ee6d144762835066fc8e8d8f Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 9 Feb 2021 17:31:55 +0800
 Subject: [PATCH] policy/modules/system/modutils: allow kmod_t to write keys
@@ -14,22 +14,21 @@ Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/system/modutils.te | 2 ++
- 1 file changed, 2 insertions(+)
+ policy/modules/system/modutils.te | 1 +
+ 1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/system/modutils.te b/policy/modules/system/modutils.te
-index ee249ae04..b8769bc02 100644
+index 5b4f0aca1..008f286a8 100644
 --- a/policy/modules/system/modutils.te
 +++ b/policy/modules/system/modutils.te
-@@ -43,6 +43,8 @@ allow kmod_t self:rawip_socket create_socket_perms;
+@@ -42,6 +42,7 @@ allow kmod_t self:udp_socket create_socket_perms;
+ allow kmod_t self:rawip_socket create_socket_perms;
  
  allow kmod_t self:lockdown confidentiality;
- 
 +allow kmod_t self:key write;
-+
+ 
  # Read module config and dependency information
  list_dirs_pattern(kmod_t, modules_conf_t, modules_conf_t)
- read_files_pattern(kmod_t, modules_conf_t, modules_conf_t)
 -- 
 2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0048-policy-modules-system-selinuxutil-allow-semanage_t-t.patch b/recipes-security/refpolicy/refpolicy/0048-policy-modules-system-selinuxutil-allow-semanage_t-t.patch
deleted file mode 100644
index 54dd451..0000000
--- a/recipes-security/refpolicy/refpolicy/0048-policy-modules-system-selinuxutil-allow-semanage_t-t.patch
+++ /dev/null
@@ -1,33 +0,0 @@
-From 74f611538d63cdf4157e6b5f4b982cafe0378b9a Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Mon, 29 Jun 2020 14:30:58 +0800
-Subject: [PATCH] policy/modules/system/selinuxutil: allow semanage_t to read
- /var/lib
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/selinuxutil.te | 6 ++----
- 1 file changed, 2 insertions(+), 4 deletions(-)
-
-diff --git a/policy/modules/system/selinuxutil.te b/policy/modules/system/selinuxutil.te
-index 8f8f42ec7..a505b3987 100644
---- a/policy/modules/system/selinuxutil.te
-+++ b/policy/modules/system/selinuxutil.te
-@@ -549,10 +549,8 @@ userdom_map_user_home_content_files(semanage_t)
- userdom_read_user_tmp_files(semanage_t)
- userdom_map_user_tmp_files(semanage_t)
- 
--ifdef(`distro_debian',`
--	files_read_var_lib_files(semanage_t)
--	files_read_var_lib_symlinks(semanage_t)
--')
-+files_read_var_lib_files(semanage_t)
-+files_read_var_lib_symlinks(semanage_t)
- 
- ifdef(`distro_ubuntu',`
- 	optional_policy(`
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0049-policy-modules-admin-su-allow-su-to-map-SELinux-stat.patch b/recipes-security/refpolicy/refpolicy/0049-policy-modules-admin-su-allow-su-to-map-SELinux-stat.patch
new file mode 100644
index 0000000..66a9177
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0049-policy-modules-admin-su-allow-su-to-map-SELinux-stat.patch
@@ -0,0 +1,68 @@
+From 7447fdc3d7d70a74c93ceec342650f37f6293150 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Sat, 18 Dec 2021 09:26:43 +0800
+Subject: [PATCH] policy/modules/admin/su: allow su to map SELinux status page
+
+We encountered a su runtime error with selinux 3.3:
+$ su - user1
+su: avc.c:73: avc_context_to_sid_raw: Assertion `avc_running' failed.
+Segmentation fault
+
+Fixes:
+avc:  denied  { map } for  pid=558 comm="su"
+path="/sys/fs/selinux/status" dev="selinuxfs" ino=19
+scontext=root:sysadm_r:sysadm_su_t tcontext=system_u:object_r:security_t
+tclass=file permissive=0
+
+avc:  denied  { getattr } for  pid=570 comm="su" name="/" dev="proc"
+ino=1 scontext=user_u:user_r:user_su_t tcontext=system_u:object_r:proc_t
+tclass=filesystem permissive=0
+
+avc:  denied  { use } for  pid=344 comm="su"
+path="/run/systemd/sessions/c4.ref" dev="tmpfs" ino=661
+scontext=root:sysadm_r:sysadm_su_t
+tcontext=system_u:system_r:systemd_logind_t tclass=fd permissive=0
+
+Upstream-Status: Pending
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/admin/su.if       | 2 ++
+ policy/modules/system/systemd.te | 1 +
+ 2 files changed, 3 insertions(+)
+
+diff --git a/policy/modules/admin/su.if b/policy/modules/admin/su.if
+index b780d13cf..cd34cd9dd 100644
+--- a/policy/modules/admin/su.if
++++ b/policy/modules/admin/su.if
+@@ -164,6 +164,7 @@ template(`su_role_template',`
+ 	kernel_read_kernel_sysctls($1_su_t)
+ 	kernel_search_key($1_su_t)
+ 	kernel_link_key($1_su_t)
++	kernel_dontaudit_getattr_proc($1_su_t)
+ 
+ 	# for SSP
+ 	dev_read_urand($1_su_t)
+@@ -172,6 +173,7 @@ template(`su_role_template',`
+ 
+ 	# needed for pam_rootok
+ 	selinux_compute_access_vector($1_su_t)
++	selinux_use_status_page($1_su_t)
+ 
+ 	auth_domtrans_chk_passwd($1_su_t)
+ 	auth_dontaudit_read_shadow($1_su_t)
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
+index 9092bb8b4..43b5892d5 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -721,6 +721,7 @@ userdom_relabelfrom_user_runtime_dirs(systemd_logind_t)
+ userdom_relabelto_user_runtime_dirs(systemd_logind_t)
+ userdom_setattr_user_ttys(systemd_logind_t)
+ userdom_use_user_ttys(systemd_logind_t)
++domain_read_all_domains_state(systemd_logind_t)
+ 
+ # Needed to work around patch not yet merged into the systemd-logind supported on RHEL 7.x
+ # The change in systemd by Nicolas Iooss on 02-Feb-2016 with hash 4b51966cf6c06250036e428608da92f8640beb96
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0066-policy-modules-system-mount-make-mount_t-domain-MLS-.patch b/recipes-security/refpolicy/refpolicy/0050-policy-modules-system-mount-make-mount_t-domain-MLS-.patch
similarity index 76%
rename from recipes-security/refpolicy/refpolicy/0066-policy-modules-system-mount-make-mount_t-domain-MLS-.patch
rename to recipes-security/refpolicy/refpolicy/0050-policy-modules-system-mount-make-mount_t-domain-MLS-.patch
index 1d6a3c4..818e4a5 100644
--- a/recipes-security/refpolicy/refpolicy/0066-policy-modules-system-mount-make-mount_t-domain-MLS-.patch
+++ b/recipes-security/refpolicy/refpolicy/0050-policy-modules-system-mount-make-mount_t-domain-MLS-.patch
@@ -1,4 +1,4 @@
-From 0d69354886e0b635dd069876b9d53890a5a9cab1 Mon Sep 17 00:00:00 2001
+From 4138862484999c4e89317465472c55aeb2e00491 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Sat, 15 Feb 2014 04:22:47 -0500
 Subject: [PATCH] policy/modules/system/mount: make mount_t domain MLS trusted
@@ -15,22 +15,21 @@ Upstream-Status: Inappropriate [embedded specific]
 Signen-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/system/mount.te | 2 ++
- 1 file changed, 2 insertions(+)
+ policy/modules/system/mount.te | 1 +
+ 1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/system/mount.te b/policy/modules/system/mount.te
-index b628c3b2f..f55457bb0 100644
+index e39ab41a8..3481f9294 100644
 --- a/policy/modules/system/mount.te
 +++ b/policy/modules/system/mount.te
-@@ -116,6 +116,8 @@ fs_dontaudit_write_all_image_files(mount_t)
+@@ -116,6 +116,7 @@ fs_dontaudit_write_all_image_files(mount_t)
+ 
  mls_file_read_all_levels(mount_t)
  mls_file_write_all_levels(mount_t)
- 
 +mls_process_write_to_clearance(mount_t)
-+
+ 
  selinux_get_enforce_mode(mount_t)
  
- storage_raw_read_fixed_disk(mount_t)
 -- 
 2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0067-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch b/recipes-security/refpolicy/refpolicy/0051-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch
similarity index 80%
rename from recipes-security/refpolicy/refpolicy/0067-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch
rename to recipes-security/refpolicy/refpolicy/0051-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch
index f441742..f82ab6d 100644
--- a/recipes-security/refpolicy/refpolicy/0067-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch
+++ b/recipes-security/refpolicy/refpolicy/0051-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch
@@ -1,4 +1,4 @@
-From b83147aa97fe6f51c997256539dff827e3a44edc Mon Sep 17 00:00:00 2001
+From d3184fc3a339f4f3a9246ed704d29e58a4d987bc Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Mon, 28 Jan 2019 14:05:18 +0800
 Subject: [PATCH] policy/modules/roles/sysadm: MLS - sysadm rw to clearance
@@ -19,23 +19,22 @@ Upstream-Status: Inappropriate [embedded specific]
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/roles/sysadm.te | 3 +++
- 1 file changed, 3 insertions(+)
+ policy/modules/roles/sysadm.te | 2 ++
+ 1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
-index a4abaefe4..aaae73fc3 100644
+index e1933a5bd..0682ed31a 100644
 --- a/policy/modules/roles/sysadm.te
 +++ b/policy/modules/roles/sysadm.te
-@@ -42,6 +42,9 @@ dev_read_kmsg(sysadm_t)
+@@ -44,6 +44,8 @@ logging_watch_all_logs(sysadm_t)
+ logging_watch_audit_log(sysadm_t)
  
  mls_process_read_all_levels(sysadm_t)
- 
 +mls_file_read_all_levels(sysadm_t)
 +mls_process_write_to_clearance(sysadm_t)
-+
+ 
  selinux_read_policy(sysadm_t)
  
- ubac_process_exempt(sysadm_t)
 -- 
 2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0051-policy-modules-system-init-add-capability2-bpf-and-p.patch b/recipes-security/refpolicy/refpolicy/0051-policy-modules-system-init-add-capability2-bpf-and-p.patch
deleted file mode 100644
index f7758c5..0000000
--- a/recipes-security/refpolicy/refpolicy/0051-policy-modules-system-init-add-capability2-bpf-and-p.patch
+++ /dev/null
@@ -1,37 +0,0 @@
-From 2d932ba7140d91cf2a8386b0240f4f1014124746 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Wed, 3 Feb 2021 09:47:59 +0800
-Subject: [PATCH] policy/modules/system/init: add capability2 bpf and perfmon
- for init_t
-
-Fixes:
-avc:  denied  { bpf } for  pid=1 comm="systemd" capability=39
-scontext=system_u:system_r:init_t tcontext=system_u:system_r:init_t
-tclass=capability2 permissive=0
-avc:  denied  { perfmon } for  pid=1 comm="systemd" capability=38
-scontext=system_u:system_r:init_t tcontext=system_u:system_r:init_t
-tclass=capability2 permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/init.te | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index e82177938..b7d494398 100644
---- a/policy/modules/system/init.te
-+++ b/policy/modules/system/init.te
-@@ -134,7 +134,7 @@ ifdef(`enable_mls',`
- 
- # Use capabilities. old rule:
- allow init_t self:capability { chown dac_override dac_read_search fowner fsetid kill setgid setuid setpcap linux_immutable net_bind_service net_broadcast net_admin net_raw ipc_lock ipc_owner sys_rawio sys_chroot sys_ptrace sys_pacct sys_admin sys_boot sys_nice sys_resource sys_time sys_tty_config mknod lease audit_write audit_control setfcap };
--allow init_t self:capability2 { wake_alarm block_suspend };
-+allow init_t self:capability2 { wake_alarm block_suspend bpf perfmon };
- # is ~sys_module really needed? observed:
- # sys_boot
- # sys_tty_config
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0068-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch b/recipes-security/refpolicy/refpolicy/0052-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch
similarity index 65%
rename from recipes-security/refpolicy/refpolicy/0068-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch
rename to recipes-security/refpolicy/refpolicy/0052-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch
index 4403997..86e2262 100644
--- a/recipes-security/refpolicy/refpolicy/0068-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch
+++ b/recipes-security/refpolicy/refpolicy/0052-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch
@@ -1,4 +1,4 @@
-From 7b8290ba52052f90b6221c1b3ccb8f7536f4c41e Mon Sep 17 00:00:00 2001
+From 2839864245e45f57fd77c09136027b93cfd28dcc Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Fri, 23 Aug 2013 12:01:53 +0800
 Subject: [PATCH] policy/modules/services/rpc: make nfsd_t domain MLS trusted
@@ -11,12 +11,11 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  policy/modules/kernel/kernel.te    | 2 ++
- policy/modules/services/rpc.te     | 2 ++
- policy/modules/services/rpcbind.te | 6 ++++++
- 3 files changed, 10 insertions(+)
+ policy/modules/services/rpcbind.te | 5 +++++
+ 2 files changed, 7 insertions(+)
 
 diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kernel.te
-index 5ce6e041b..c1557ddb2 100644
+index ca951cb44..a32c59eb1 100644
 --- a/policy/modules/kernel/kernel.te
 +++ b/policy/modules/kernel/kernel.te
 @@ -356,6 +356,8 @@ mls_process_read_all_levels(kernel_t)
@@ -28,24 +27,11 @@ index 5ce6e041b..c1557ddb2 100644
  
  ifdef(`distro_redhat',`
  	# Bugzilla 222337
-diff --git a/policy/modules/services/rpc.te b/policy/modules/services/rpc.te
-index 87b6b4561..9618df04e 100644
---- a/policy/modules/services/rpc.te
-+++ b/policy/modules/services/rpc.te
-@@ -341,6 +341,8 @@ storage_raw_read_removable_device(nfsd_t)
- 
- miscfiles_read_public_files(nfsd_t)
- 
-+mls_file_read_to_clearance(nfsd_t)
-+
- tunable_policy(`allow_nfsd_anon_write',`
- 	miscfiles_manage_public_files(nfsd_t)
- ')
 diff --git a/policy/modules/services/rpcbind.te b/policy/modules/services/rpcbind.te
-index 8972980fa..5c89a1343 100644
+index e1eb7d5fc..da0994749 100644
 --- a/policy/modules/services/rpcbind.te
 +++ b/policy/modules/services/rpcbind.te
-@@ -73,6 +73,12 @@ logging_send_syslog_msg(rpcbind_t)
+@@ -73,6 +73,11 @@ logging_send_syslog_msg(rpcbind_t)
  
  miscfiles_read_localization(rpcbind_t)
  
@@ -53,7 +39,6 @@ index 8972980fa..5c89a1343 100644
 +# because the are running in different level. So add rules to allow this.
 +mls_socket_read_all_levels(rpcbind_t)
 +mls_socket_write_all_levels(rpcbind_t)
-+mls_file_read_to_clearance(rpcbind_t)
 +
  ifdef(`distro_debian',`
  	term_dontaudit_use_unallocated_ttys(rpcbind_t)
diff --git a/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-systemd-allow-systemd_logind_t.patch b/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-systemd-allow-systemd_logind_t.patch
deleted file mode 100644
index aa49ac7..0000000
--- a/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-systemd-allow-systemd_logind_t.patch
+++ /dev/null
@@ -1,37 +0,0 @@
-From 5db5b20728dff6c5e75dc07ea4feb6c507661b62 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Wed, 8 Jul 2020 13:53:28 +0800
-Subject: [PATCH] policy/modules/system/systemd: allow systemd_logind_t to
- watch initrc_runtime_t
-
-Fixes:
-avc:  denied  { watch } for  pid=200 comm="systemd-logind"
-path="/run/utmp" dev="tmpfs" ino=12766
-scontext=system_u:system_r:systemd_logind_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:initrc_runtime_t:s0 tclass=file permissive=0
-
-systemd-logind[200]: Failed to create inotify watch on /var/run/utmp, ignoring: Permission denied
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/systemd.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 0411729ea..2d9d7d331 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -651,6 +651,8 @@ init_stop_all_units(systemd_logind_t)
- init_start_system(systemd_logind_t)
- init_stop_system(systemd_logind_t)
- 
-+allow systemd_logind_t initrc_runtime_t:file watch;
-+
- locallogin_read_state(systemd_logind_t)
- 
- seutil_libselinux_linked(systemd_logind_t)
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0069-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch b/recipes-security/refpolicy/refpolicy/0053-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch
similarity index 85%
rename from recipes-security/refpolicy/refpolicy/0069-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch
rename to recipes-security/refpolicy/refpolicy/0053-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch
index 02aa5e3..917010d 100644
--- a/recipes-security/refpolicy/refpolicy/0069-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch
+++ b/recipes-security/refpolicy/refpolicy/0053-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch
@@ -1,4 +1,4 @@
-From bc6872d164d09355ee82dc97c4e3d99a6b6669b3 Mon Sep 17 00:00:00 2001
+From 778913f4f6508e539f27e678e3fbd77fe4763ae8 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 30 Jun 2020 10:18:20 +0800
 Subject: [PATCH] policy/modules/admin/dmesg: make dmesg_t MLS trusted reading
@@ -19,10 +19,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/admin/dmesg.te b/policy/modules/admin/dmesg.te
-index 0f2835575..9f4f11397 100644
+index f3421fdbb..d87ee5583 100644
 --- a/policy/modules/admin/dmesg.te
 +++ b/policy/modules/admin/dmesg.te
-@@ -51,6 +51,8 @@ miscfiles_read_localization(dmesg_t)
+@@ -52,6 +52,8 @@ miscfiles_read_localization(dmesg_t)
  userdom_dontaudit_use_unpriv_user_fds(dmesg_t)
  userdom_use_user_terminals(dmesg_t)
  
diff --git a/recipes-security/refpolicy/refpolicy/0053-policy-modules-system-logging-set-label-devlog_t-to-.patch b/recipes-security/refpolicy/refpolicy/0053-policy-modules-system-logging-set-label-devlog_t-to-.patch
deleted file mode 100644
index a4b387a..0000000
--- a/recipes-security/refpolicy/refpolicy/0053-policy-modules-system-logging-set-label-devlog_t-to-.patch
+++ /dev/null
@@ -1,86 +0,0 @@
-From a92be78e20a0838c2f04cf8d2781dcf918f8d7ab Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Tue, 14 May 2019 16:02:19 +0800
-Subject: [PATCH] policy/modules/system/logging: set label devlog_t to symlink
- /dev/log
-
-* Set labe devlog_t to symlink /dev/log
-* Allow syslogd_t to manage devlog_t link file
-
-Fixes:
-avc:  denied  { unlink } for  pid=250 comm="rsyslogd" name="log"
-dev="devtmpfs" ino=10997
-scontext=system_u:system_r:syslogd_t:s15:c0.c1023
-tcontext=system_u:object_r:device_t:s0 tclass=lnk_file permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/logging.fc | 2 ++
- policy/modules/system/logging.if | 4 ++++
- policy/modules/system/logging.te | 1 +
- 3 files changed, 7 insertions(+)
-
-diff --git a/policy/modules/system/logging.fc b/policy/modules/system/logging.fc
-index a4ecd570a..02f0b6270 100644
---- a/policy/modules/system/logging.fc
-+++ b/policy/modules/system/logging.fc
-@@ -1,4 +1,5 @@
- /dev/log		-s	gen_context(system_u:object_r:devlog_t,mls_systemhigh)
-+/dev/log		-l	gen_context(system_u:object_r:devlog_t,s0)
- 
- /etc/rsyslog\.conf					--	gen_context(system_u:object_r:syslog_conf_t,s0)
- /etc/syslog\.conf					--	gen_context(system_u:object_r:syslog_conf_t,s0)
-@@ -24,6 +25,7 @@
- /usr/lib/systemd/system/auditd.* -- gen_context(system_u:object_r:auditd_unit_t,s0)
- /usr/lib/systemd/system/[^/]*systemd-journal.* -- gen_context(system_u:object_r:syslogd_unit_t,s0)
- /usr/lib/systemd/system/rsyslog.*\.service -- gen_context(system_u:object_r:syslogd_unit_t,s0)
-+/usr/lib/systemd/system/syslog.*\.service -- gen_context(system_u:object_r:syslogd_unit_t,s0)
- /usr/lib/systemd/systemd-journald -- gen_context(system_u:object_r:syslogd_exec_t,s0)
- /usr/lib/systemd/systemd-kmsg-syslogd	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
- 
-diff --git a/policy/modules/system/logging.if b/policy/modules/system/logging.if
-index 9bb3afdb2..7233a108c 100644
---- a/policy/modules/system/logging.if
-+++ b/policy/modules/system/logging.if
-@@ -661,6 +661,7 @@ interface(`logging_send_syslog_msg',`
- 	')
- 
- 	allow $1 devlog_t:sock_file write_sock_file_perms;
-+	allow $1 devlog_t:lnk_file read_lnk_file_perms;
- 
- 	# systemd journal socket is in /run/systemd/journal/dev-log
- 	init_search_run($1)
-@@ -722,6 +723,7 @@ interface(`logging_relabelto_devlog_sock_files',`
- 	')
- 
- 	allow $1 devlog_t:sock_file relabelto_sock_file_perms;
-+	allow $1 devlog_t:lnk_file relabelto_lnk_file_perms;
- ')
- 
- ########################################
-@@ -741,6 +743,8 @@ interface(`logging_create_devlog',`
- 
- 	allow $1 devlog_t:sock_file manage_sock_file_perms;
- 	dev_filetrans($1, devlog_t, sock_file)
-+	allow $1 devlog_t:lnk_file manage_lnk_file_perms;
-+	dev_filetrans($1, devlog_t, lnk_file)
- 	init_runtime_filetrans($1, devlog_t, sock_file, "syslog")
- ')
- 
-diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 9b3254f63..d864cfd3d 100644
---- a/policy/modules/system/logging.te
-+++ b/policy/modules/system/logging.te
-@@ -398,6 +398,7 @@ allow syslogd_t syslog_conf_t:dir list_dir_perms;
- 
- # Create and bind to /dev/log or /var/run/log.
- allow syslogd_t devlog_t:sock_file manage_sock_file_perms;
-+allow syslogd_t devlog_t:lnk_file manage_lnk_file_perms;
- files_runtime_filetrans(syslogd_t, devlog_t, sock_file)
- init_runtime_filetrans(syslogd_t, devlog_t, sock_file, "dev-log")
- 
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0070-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch b/recipes-security/refpolicy/refpolicy/0054-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
similarity index 91%
rename from recipes-security/refpolicy/refpolicy/0070-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
rename to recipes-security/refpolicy/refpolicy/0054-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
index 733fbad..2d97631 100644
--- a/recipes-security/refpolicy/refpolicy/0070-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
+++ b/recipes-security/refpolicy/refpolicy/0054-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
@@ -1,4 +1,4 @@
-From e7b9af24946f5f76e8e6831bfeb444c0153298be Mon Sep 17 00:00:00 2001
+From d43a88f8455fbd1ddf627a478f6a7c5422aca1dd Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Fri, 13 Oct 2017 07:20:40 +0000
 Subject: [PATCH] policy/modules/kernel/kernel: make kernel_t MLS trusted for
@@ -55,23 +55,22 @@ Upstream-Status: Inappropriate [embedded specific]
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/kernel/kernel.te | 3 +++
- 1 file changed, 3 insertions(+)
+ policy/modules/kernel/kernel.te | 2 ++
+ 1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kernel.te
-index c1557ddb2..8f67c6ec9 100644
+index a32c59eb1..1c53754ee 100644
 --- a/policy/modules/kernel/kernel.te
 +++ b/policy/modules/kernel/kernel.te
-@@ -359,6 +359,9 @@ mls_file_read_all_levels(kernel_t)
+@@ -358,6 +358,8 @@ mls_file_write_all_levels(kernel_t)
+ mls_file_read_all_levels(kernel_t)
  mls_socket_write_all_levels(kernel_t)
  mls_fd_use_all_levels(kernel_t)
- 
 +# https://bugzilla.redhat.com/show_bug.cgi?id=667370
 +mls_file_downgrade(kernel_t)
-+
+ 
  ifdef(`distro_redhat',`
  	# Bugzilla 222337
- 	fs_rw_tmpfs_chr_files(kernel_t)
 -- 
 2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-systemd-support-systemd-user.patch b/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-systemd-support-systemd-user.patch
deleted file mode 100644
index f7abefb..0000000
--- a/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-systemd-support-systemd-user.patch
+++ /dev/null
@@ -1,189 +0,0 @@
-From bd77e8e51962bb6a8c5708f3e5362007c915498e Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Thu, 4 Feb 2021 10:48:54 +0800
-Subject: [PATCH] policy/modules/system/systemd: support systemd --user
-
-Fixes:
-$ systemctl status user@0.service
-* user@0.service - User Manager for UID 0
-     Loaded: loaded (/lib/systemd/system/user@.service; static)
-     Active: failed (Result: exit-code) since Thu 2021-02-04 02:57:32 UTC; 11s ago
-     Docs: man:user@.service(5)
-     Process: 1502 ExecStart=/lib/systemd/systemd --user (code=exited, status=1/FAILURE)
-     Main PID: 1502 (code=exited, status=1/FAILURE)
-
-Feb 04 02:57:32 intel-x86-64 systemd[1]: Starting User Manager for UID 0...
-Feb 04 02:57:32 intel-x86-64 systemd[1502]: selinux_status_open() failed to open the status page, using the netlink fallback.
-Feb 04 02:57:32 intel-x86-64 systemd[1502]: Failed to initialize SELinux labeling handle: Permission denied
-Feb 04 02:57:32 intel-x86-64 systemd[1]: user@0.service: Main process exited, code=exited, status=1/FAILURE
-Feb 04 02:57:32 intel-x86-64 systemd[1]: user@0.service: Failed with result 'exit-code'.
-Feb 04 02:57:32 intel-x86-64 systemd[1]: Failed to start User Manager for UID 0.
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/roles/sysadm.te   |  2 +
- policy/modules/system/init.if    |  1 +
- policy/modules/system/logging.te |  5 ++-
- policy/modules/system/systemd.if | 75 +++++++++++++++++++++++++++++++-
- 4 files changed, 81 insertions(+), 2 deletions(-)
-
-diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
-index 1642f3b93..1de7e441d 100644
---- a/policy/modules/roles/sysadm.te
-+++ b/policy/modules/roles/sysadm.te
-@@ -81,6 +81,8 @@ ifdef(`init_systemd',`
- 	# Allow sysadm to resolve the username of dynamic users by calling
- 	# LookupDynamicUserByUID on org.freedesktop.systemd1.
- 	init_dbus_chat(sysadm_t)
-+
-+	systemd_sysadm_user(sysadm_t)
- ')
- 
- tunable_policy(`allow_ptrace',`
-diff --git a/policy/modules/system/init.if b/policy/modules/system/init.if
-index ba533ba1a..98e94283f 100644
---- a/policy/modules/system/init.if
-+++ b/policy/modules/system/init.if
-@@ -943,6 +943,7 @@ interface(`init_unix_stream_socket_connectto',`
- 	')
- 
- 	allow $1 init_t:unix_stream_socket connectto;
-+	allow $1 initrc_t:unix_stream_socket connectto;
- ')
- 
- ########################################
-diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index d864cfd3d..bdd97631c 100644
---- a/policy/modules/system/logging.te
-+++ b/policy/modules/system/logging.te
-@@ -519,7 +519,7 @@ ifdef(`init_systemd',`
- 	# for systemd-journal
- 	allow syslogd_t self:netlink_audit_socket connected_socket_perms;
- 	allow syslogd_t self:capability2 audit_read;
--	allow syslogd_t self:capability { chown setgid setuid sys_ptrace };
-+	allow syslogd_t self:capability { chown setgid setuid sys_ptrace dac_read_search };
- 	allow syslogd_t self:netlink_audit_socket { getattr getopt read setopt write nlmsg_write };
- 
- 	# remove /run/log/journal when switching to permanent storage
-@@ -555,6 +555,9 @@ ifdef(`init_systemd',`
- 	systemd_manage_journal_files(syslogd_t)
- 
- 	udev_read_runtime_files(syslogd_t)
-+
-+	userdom_search_user_runtime(syslogd_t)
-+	systemd_search_user_runtime(syslogd_t)
- ')
- 
- ifdef(`distro_gentoo',`
-diff --git a/policy/modules/system/systemd.if b/policy/modules/system/systemd.if
-index 6a66a2d79..152139261 100644
---- a/policy/modules/system/systemd.if
-+++ b/policy/modules/system/systemd.if
-@@ -30,6 +30,7 @@ template(`systemd_role_template',`
- 		attribute systemd_user_session_type, systemd_log_parse_env_type;
- 		type systemd_user_runtime_t, systemd_user_runtime_notify_t;
- 		type systemd_run_exec_t, systemd_analyze_exec_t;
-+		type session_dbusd_runtime_t, systemd_user_runtime_dir_t;
- 	')
- 
- 	#################################
-@@ -55,10 +56,42 @@ template(`systemd_role_template',`
- 
- 	allow $3 systemd_user_runtime_notify_t:sock_file { manage_sock_file_perms relabel_sock_file_perms };
- 
-+	allow $1_systemd_t systemd_user_runtime_t:dir { manage_dir_perms relabel_dir_perms };
-+	allow $1_systemd_t systemd_user_runtime_t:file { manage_file_perms relabel_file_perms };
-+	allow $1_systemd_t systemd_user_runtime_t:lnk_file { manage_lnk_file_perms relabel_lnk_file_perms };
-+	allow $1_systemd_t systemd_user_runtime_t:fifo_file { manage_fifo_file_perms relabel_fifo_file_perms };
-+	allow $1_systemd_t systemd_user_runtime_t:sock_file { manage_sock_file_perms relabel_sock_file_perms };
-+	allow $1_systemd_t systemd_user_runtime_t:blk_file { manage_blk_file_perms relabel_blk_file_perms };
-+	allow $1_systemd_t systemd_user_runtime_t:chr_file { manage_chr_file_perms relabel_chr_file_perms };
-+	allow $1_systemd_t systemd_user_runtime_notify_t:sock_file { manage_sock_file_perms relabel_sock_file_perms };
-+	allow $1_systemd_t session_dbusd_runtime_t:sock_file { manage_sock_file_perms relabel_sock_file_perms };
-+	allow $1_systemd_t self:netlink_kobject_uevent_socket getopt;
-+	allow $1_systemd_t self:process setrlimit;
-+
-+	kernel_getattr_proc($1_systemd_t)
-+	fs_watch_cgroup_files($1_systemd_t)
-+	files_watch_etc_dirs($1_systemd_t)
-+
-+	userdom_search_user_home_dirs($1_systemd_t)
-+	allow $1_systemd_t $3:dir search_dir_perms;
-+	allow $1_systemd_t $3:file read_file_perms;
-+
-+	allow $3 $1_systemd_t:unix_stream_socket { getattr read write };
-+
-+	allow systemd_user_runtime_dir_t systemd_user_runtime_t:dir { manage_dir_perms relabel_dir_perms };
-+	allow systemd_user_runtime_dir_t systemd_user_runtime_t:file { manage_file_perms relabel_file_perms };
-+	allow systemd_user_runtime_dir_t systemd_user_runtime_t:lnk_file { manage_lnk_file_perms relabel_lnk_file_perms };
-+	allow systemd_user_runtime_dir_t systemd_user_runtime_t:fifo_file { manage_fifo_file_perms relabel_fifo_file_perms };
-+	allow systemd_user_runtime_dir_t systemd_user_runtime_t:sock_file { manage_sock_file_perms relabel_sock_file_perms };
-+	allow systemd_user_runtime_dir_t systemd_user_runtime_t:blk_file { manage_blk_file_perms relabel_blk_file_perms };
-+	allow systemd_user_runtime_dir_t systemd_user_runtime_t:chr_file { manage_chr_file_perms relabel_chr_file_perms };
-+	allow systemd_user_runtime_dir_t systemd_user_runtime_notify_t:sock_file { manage_sock_file_perms relabel_sock_file_perms };
-+	allow systemd_user_runtime_dir_t session_dbusd_runtime_t:sock_file { manage_sock_file_perms relabel_sock_file_perms };
-+
- 	# This domain is per-role because of the below transitions.
- 	# See the systemd --user section of systemd.te for the
- 	# remainder of the rules.
--	allow $1_systemd_t $3:process { setsched rlimitinh };
-+	allow $1_systemd_t $3:process { setsched rlimitinh noatsecure siginh };
- 	corecmd_shell_domtrans($1_systemd_t, $3)
- 	corecmd_bin_domtrans($1_systemd_t, $3)
- 	allow $1_systemd_t self:process signal;
-@@ -479,6 +512,7 @@ interface(`systemd_stream_connect_userdb', `
- 	init_search_runtime($1)
- 	allow $1 systemd_userdb_runtime_t:dir list_dir_perms;
- 	allow $1 systemd_userdb_runtime_t:sock_file write_sock_file_perms;
-+	allow $1 systemd_userdb_runtime_t:lnk_file read_lnk_file_perms;
- 	init_unix_stream_socket_connectto($1)
- ')
- 
-@@ -1353,3 +1387,42 @@ interface(`systemd_use_inherited_machined_ptys', `
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
-+	allow $1 sysadm_systemd_t:system reload;
-+')
-+
-+#######################################
-+## <summary>
-+##  Search systemd users runtime directories.
-+## </summary>
-+## <param name="domain">
-+##  <summary>
-+##  Domain allowed access.
-+##  </summary>
-+## </param>
-+#
-+interface(`systemd_search_user_runtime',`
-+	gen_require(`
-+		type systemd_user_runtime_t;
-+	')
-+
-+	allow $1 systemd_user_runtime_t:dir search_dir_perms;
-+	allow $1 systemd_user_runtime_t:lnk_file read_lnk_file_perms;
-+')
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0071-policy-modules-system-init-make-init_t-MLS-trusted-f.patch b/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
similarity index 90%
rename from recipes-security/refpolicy/refpolicy/0071-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
rename to recipes-security/refpolicy/refpolicy/0055-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
index 74d7428..ccdd020 100644
--- a/recipes-security/refpolicy/refpolicy/0071-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
+++ b/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
@@ -1,4 +1,4 @@
-From ee3e2bbaf3b94902aadebbb085c7e86b8d074e98 Mon Sep 17 00:00:00 2001
+From 385e966658eecba2c7025b05b164087fd4f7af40 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Fri, 15 Jan 2016 03:47:05 -0500
 Subject: [PATCH] policy/modules/system/init: make init_t MLS trusted for
@@ -27,10 +27,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 4 insertions(+)
 
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index b7d494398..b6750015e 100644
+index 932d1f7b3..36becaa6e 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -210,6 +210,10 @@ mls_process_write_all_levels(init_t)
+@@ -219,6 +219,10 @@ mls_process_write_all_levels(init_t)
  mls_fd_use_all_levels(init_t)
  mls_process_set_level(init_t)
  
diff --git a/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-systemd-allow-systemd-generato.patch b/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-systemd-allow-systemd-generato.patch
deleted file mode 100644
index 9d4bbf7..0000000
--- a/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-systemd-allow-systemd-generato.patch
+++ /dev/null
@@ -1,69 +0,0 @@
-From 954a49ec0a4dc64fd9e513abe7a737d956b337ca Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Tue, 9 Feb 2021 17:50:24 +0800
-Subject: [PATCH] policy/modules/system/systemd: allow systemd-generators to
- get the attributes of tmpfs and cgroup
-
-* Allow systemd-generators to get the attributes of a tmpfs
-* Allow systemd-generators to get the attributes of cgroup filesystems
-
-Fixes:
-systemd[95]: /lib/systemd/system-generators/systemd-fstab-generator failed with exit status 1.
-
-avc: denied { getattr } for pid=102 comm="systemd-run-gen" name="/"
-dev="tmpfs" ino=11208 scontext=system_u:system_r:systemd_generator_t
-tcontext=system_u:object_r:tmpfs_t tclass=filesystem permissive=0
-
-avc: denied { getattr } for pid=98 comm="systemd-getty-g" name="/"
-dev="tmpfs" ino=11208 scontext=system_u:system_r:systemd_generator_t
-tcontext=system_u:object_r:tmpfs_t tclass=filesystem permissive=0
-
-avc: denied { getattr } for pid=104 comm="systemd-sysv-ge" name="/"
-dev="tmpfs" ino=11208 scontext=system_u:system_r:systemd_generator_t
-tcontext=system_u:object_r:tmpfs_t tclass=filesystem permissive=0
-
-avc:  denied  { getattr } for pid=97 comm="systemd-fstab-g" name="/"
-dev="tmpfs" ino=11208 scontext=system_u:system_r:systemd_generator_t
-tcontext=system_u:object_r:tmpfs_t tclass=filesystem permissive=0
-
-avc:  denied  { getattr } for  pid=102 comm="systemd-run-gen" name="/"
-dev="cgroup" ino=1 scontext=system_u:system_r:systemd_generator_t
-tcontext=system_u:object_r:cgroup_t tclass=filesystem permissive=0
-
-avc:  denied  { getattr } for  pid=100 comm="systemd-hiberna" name="/"
-dev="cgroup" ino=1 scontext=system_u:system_r:systemd_generator_t
-tcontext=system_u:object_r:cgroup_t tclass=filesystem permissive=0
-
-avc:  denied  { getattr } for  pid=99 comm="systemd-gpt-aut" name="/"
-dev="cgroup2" ino=1 scontext=system_u:system_r:systemd_generator_t
-tcontext=system_u:object_r:cgroup_t tclass=filesystem permissive=0
-
-avc:  denied  { getattr } for  pid=97 comm="systemd-fstab-g"
-path="/var/volatile" dev="vda" ino=37131
-scontext=system_u:system_r:systemd_generator_t
-tcontext=system_u:object_r:unlabeled_t tclass=dir permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/systemd.te | 3 +++
- 1 file changed, 3 insertions(+)
-
-diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 2d9d7d331..c1111198d 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -431,6 +431,9 @@ files_list_usr(systemd_generator_t)
- 
- fs_list_efivars(systemd_generator_t)
- fs_getattr_xattr_fs(systemd_generator_t)
-+fs_getattr_tmpfs(systemd_generator_t)
-+fs_getattr_cgroup(systemd_generator_t)
-+kernel_getattr_unlabeled_dirs(systemd_generator_t)
- 
- init_create_runtime_files(systemd_generator_t)
- init_manage_runtime_dirs(systemd_generator_t)
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0056-policy-modules-system-systemd-allow-systemd_backligh.patch b/recipes-security/refpolicy/refpolicy/0056-policy-modules-system-systemd-allow-systemd_backligh.patch
deleted file mode 100644
index 1c1b459..0000000
--- a/recipes-security/refpolicy/refpolicy/0056-policy-modules-system-systemd-allow-systemd_backligh.patch
+++ /dev/null
@@ -1,35 +0,0 @@
-From 8b0bb1e349e2ea021acec1639be0802ac4d7d0c2 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Thu, 4 Feb 2021 15:13:50 +0800
-Subject: [PATCH] policy/modules/system/systemd: allow systemd_backlight_t to
- read kernel sysctl
-
-Fixes:
-avc:  denied  { search } for  pid=354 comm="systemd-backlig" name="sys"
-dev="proc" ino=4026531854
-scontext=system_u:system_r:systemd_backlight_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:sysctl_t:s0 tclass=dir permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/systemd.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index c1111198d..7d2ba2796 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -324,6 +324,8 @@ udev_read_runtime_files(systemd_backlight_t)
- 
- files_search_var_lib(systemd_backlight_t)
- 
-+kernel_read_kernel_sysctls(systemd_backlight_t)
-+
- #######################################
- #
- # Binfmt local policy
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0072-policy-modules-system-systemd-make-systemd-tmpfiles_.patch b/recipes-security/refpolicy/refpolicy/0056-policy-modules-system-systemd-make-systemd-tmpfiles_.patch
similarity index 92%
rename from recipes-security/refpolicy/refpolicy/0072-policy-modules-system-systemd-make-systemd-tmpfiles_.patch
rename to recipes-security/refpolicy/refpolicy/0056-policy-modules-system-systemd-make-systemd-tmpfiles_.patch
index 2832681..d664d03 100644
--- a/recipes-security/refpolicy/refpolicy/0072-policy-modules-system-systemd-make-systemd-tmpfiles_.patch
+++ b/recipes-security/refpolicy/refpolicy/0056-policy-modules-system-systemd-make-systemd-tmpfiles_.patch
@@ -1,4 +1,4 @@
-From 8cdcca3702d69ed5f3aa9ce9d769ad483f977094 Mon Sep 17 00:00:00 2001
+From f0714bf417de5f7d6e3183a494153d568e1526b8 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Thu, 4 Feb 2016 06:03:19 -0500
 Subject: [PATCH] policy/modules/system/systemd: make systemd-tmpfiles_t domain
@@ -43,10 +43,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 5 insertions(+)
 
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 7d2ba2796..c50a2ba64 100644
+index 43b5892d5..ae155ffae 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -1396,6 +1396,11 @@ sysnet_relabel_config(systemd_tmpfiles_t)
+@@ -1483,6 +1483,11 @@ sysnet_relabel_config(systemd_tmpfiles_t)
  
  systemd_log_parse_environment(systemd_tmpfiles_t)
  
diff --git a/recipes-security/refpolicy/refpolicy/0057-policy-modules-system-logging-fix-systemd-journald-s.patch b/recipes-security/refpolicy/refpolicy/0057-policy-modules-system-logging-fix-systemd-journald-s.patch
deleted file mode 100644
index d283879..0000000
--- a/recipes-security/refpolicy/refpolicy/0057-policy-modules-system-logging-fix-systemd-journald-s.patch
+++ /dev/null
@@ -1,47 +0,0 @@
-From 5973dc3824b395ce9f6620e3ae432664cc357b66 Mon Sep 17 00:00:00 2001
-From: Wenzong Fan <wenzong.fan@windriver.com>
-Date: Thu, 4 Feb 2016 02:10:15 -0500
-Subject: [PATCH] policy/modules/system/logging: fix systemd-journald startup
- failures
-
-Fixes:
-avc:  denied  { audit_control } for  pid=109 comm="systemd-journal"
-capability=30  scontext=system_u:system_r:syslogd_t
-tcontext=system_u:system_r:syslogd_t tclass=capability permissive=0
-
-avc:  denied  { search } for  pid=233 comm="systemd-journal" name="/"
-dev="tmpfs" ino=12398 scontext=system_u:system_r:syslogd_t
-tcontext=system_u:object_r:tmpfs_t tclass=dir permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/logging.te | 3 +++
- 1 file changed, 3 insertions(+)
-
-diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index bdd97631c..62caa7a56 100644
---- a/policy/modules/system/logging.te
-+++ b/policy/modules/system/logging.te
-@@ -492,6 +492,7 @@ files_var_lib_filetrans(syslogd_t, syslogd_var_lib_t, { file dir })
- 
- fs_getattr_all_fs(syslogd_t)
- fs_search_auto_mountpoints(syslogd_t)
-+fs_search_tmpfs(syslogd_t)
- 
- mls_file_write_all_levels(syslogd_t) # Need to be able to write to /var/run/ and /var/log directories
- 
-@@ -552,6 +553,8 @@ ifdef(`init_systemd',`
- 	# needed for systemd-initrd case when syslog socket is unlabelled
- 	logging_send_syslog_msg(syslogd_t)
- 
-+	logging_set_loginuid(syslogd_t)
-+
- 	systemd_manage_journal_files(syslogd_t)
- 
- 	udev_read_runtime_files(syslogd_t)
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0057-policy-modules-system-systemd-systemd-make-systemd_-.patch b/recipes-security/refpolicy/refpolicy/0057-policy-modules-system-systemd-systemd-make-systemd_-.patch
new file mode 100644
index 0000000..d4ec3c8
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0057-policy-modules-system-systemd-systemd-make-systemd_-.patch
@@ -0,0 +1,91 @@
+From e8a5081176bfb6d377371a575d233ac7a43ba57b Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Thu, 18 Jun 2020 09:59:58 +0800
+Subject: [PATCH] policy/modules/system/systemd: systemd-*: make systemd_*_t
+ MLS trusted for writing/reading from files up to its clearance
+
+Fixes:
+audit: type=1400 audit(1592892455.376:3): avc:  denied  { write } for
+pid=120 comm="systemd-gpt-aut" name="kmsg" dev="devtmpfs" ino=10032
+scontext=system_u:system_r:systemd_generator_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=chr_file
+permissive=0
+
+audit: type=1400 audit(1592892455.381:4): avc:  denied  { write } for
+pid=119 comm="systemd-getty-g" name="kmsg" dev="devtmpfs" ino=10032
+scontext=system_u:system_r:systemd_generator_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=chr_file
+permissive=0
+
+avc:  denied  { read } for  pid=125 comm="systemd-gpt-aut" name="sdb"
+dev="devtmpfs" ino=42
+scontext=system_u:system_r:systemd_generator_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:fixed_disk_device_t:s15:c0.c1023
+tclass=blk_file permissive=0
+
+avc:  denied  { write } for  pid=233 comm="systemd-rfkill" name="kmsg"
+dev="devtmpfs" ino=2060
+scontext=system_u:system_r:systemd_rfkill_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=chr_file
+permissive=0
+
+avc:  denied  { write } for  pid=354 comm="systemd-backlig" name="kmsg"
+dev="devtmpfs" ino=3081
+scontext=system_u:system_r:systemd_backlight_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=chr_file
+permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 12 ++++++++++++
+ 1 file changed, 12 insertions(+)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
+index ae155ffae..76bf7be68 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -341,6 +341,9 @@ fs_getattr_tmpfs(systemd_backlight_t)
+ fs_search_cgroup_dirs(systemd_backlight_t)
+ fs_getattr_cgroup(systemd_backlight_t)
+ 
++mls_file_read_to_clearance(systemd_backlight_t)
++mls_file_write_to_clearance(systemd_backlight_t)
++
+ #######################################
+ #
+ # Binfmt local policy
+@@ -479,6 +482,9 @@ term_use_unallocated_ttys(systemd_generator_t)
+ 
+ udev_search_runtime(systemd_generator_t)
+ 
++mls_file_read_to_clearance(systemd_generator_t)
++mls_file_write_to_clearance(systemd_generator_t)
++
+ ifdef(`distro_gentoo',`
+ 	corecmd_shell_entry_type(systemd_generator_t)
+ ')
+@@ -723,6 +729,9 @@ userdom_setattr_user_ttys(systemd_logind_t)
+ userdom_use_user_ttys(systemd_logind_t)
+ domain_read_all_domains_state(systemd_logind_t)
+ 
++mls_file_read_to_clearance(systemd_logind_t)
++mls_file_write_to_clearance(systemd_logind_t)
++
+ # Needed to work around patch not yet merged into the systemd-logind supported on RHEL 7.x
+ # The change in systemd by Nicolas Iooss on 02-Feb-2016 with hash 4b51966cf6c06250036e428608da92f8640beb96
+ # should fix the problem where user directories in /run/user/$UID/ are not getting the proper context
+@@ -1204,6 +1213,9 @@ fs_getattr_tmpfs(systemd_rfkill_t)
+ fs_search_cgroup_dirs(systemd_rfkill_t)
+ fs_getattr_cgroup(systemd_rfkill_t)
+ 
++mls_file_read_to_clearance(systemd_rfkill_t)
++mls_file_write_to_clearance(systemd_rfkill_t)
++
+ #########################################
+ #
+ # Resolved local policy
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0058-policy-modules-services-cron-allow-crond_t-to-search.patch b/recipes-security/refpolicy/refpolicy/0058-policy-modules-services-cron-allow-crond_t-to-search.patch
deleted file mode 100644
index b7e7c1d..0000000
--- a/recipes-security/refpolicy/refpolicy/0058-policy-modules-services-cron-allow-crond_t-to-search.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-From e8ff96c9bb98305d1b50fccce67025df3ebbf184 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Thu, 23 May 2019 15:52:17 +0800
-Subject: [PATCH] policy/modules/services/cron: allow crond_t to search
- logwatch_cache_t
-
-Fixes:
-avc:  denied  { search } for  pid=234 comm="crond" name="logcheck"
-dev="vda" ino=29080 scontext=system_u:system_r:crond_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:logwatch_cache_t:s0 tclass=dir permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/services/cron.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/services/cron.te b/policy/modules/services/cron.te
-index 2902820b0..36eb33060 100644
---- a/policy/modules/services/cron.te
-+++ b/policy/modules/services/cron.te
-@@ -318,6 +318,8 @@ miscfiles_read_localization(crond_t)
- 
- userdom_list_user_home_dirs(crond_t)
- 
-+logwatch_search_cache_dir(crond_t)
-+
- tunable_policy(`cron_userdomain_transition',`
- 	dontaudit crond_t cronjob_t:process transition;
- 	dontaudit crond_t cronjob_t:fd use;
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0073-policy-modules-system-logging-add-the-syslogd_t-to-t.patch b/recipes-security/refpolicy/refpolicy/0058-policy-modules-system-logging-add-the-syslogd_t-to-t.patch
similarity index 84%
rename from recipes-security/refpolicy/refpolicy/0073-policy-modules-system-logging-add-the-syslogd_t-to-t.patch
rename to recipes-security/refpolicy/refpolicy/0058-policy-modules-system-logging-add-the-syslogd_t-to-t.patch
index d208752..f81dd8d 100644
--- a/recipes-security/refpolicy/refpolicy/0073-policy-modules-system-logging-add-the-syslogd_t-to-t.patch
+++ b/recipes-security/refpolicy/refpolicy/0058-policy-modules-system-logging-add-the-syslogd_t-to-t.patch
@@ -1,4 +1,4 @@
-From 4e7b0040ff558f2d69c8b9a30e73223acb20f35f Mon Sep 17 00:00:00 2001
+From 4149475fabf2315b1a9fa3a5847464369b2f09fd Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/system/logging: add the syslogd_t to trusted
@@ -18,15 +18,15 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 4 insertions(+)
 
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 62caa7a56..e608327fe 100644
+index 5b4b5ec5d..e67c25a9e 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -495,6 +495,10 @@ fs_search_auto_mountpoints(syslogd_t)
+@@ -498,6 +498,10 @@ fs_search_auto_mountpoints(syslogd_t)
  fs_search_tmpfs(syslogd_t)
  
  mls_file_write_all_levels(syslogd_t) # Need to be able to write to /var/run/ and /var/log directories
 +mls_file_read_all_levels(syslogd_t)
-+mls_socket_write_all_levels(syslogd_t) # Neet to be able to sendto dgram
++mls_socket_write_all_levels(syslogd_t) # Need to be able to sendto dgram
 +mls_trusted_object(syslogd_t) # Other process need to have the right to connectto/sendto /dev/log
 +mls_fd_use_all_levels(syslogd_t)
  
diff --git a/recipes-security/refpolicy/refpolicy/0059-policy-modules-services-crontab-allow-sysadm_r-to-ru.patch b/recipes-security/refpolicy/refpolicy/0059-policy-modules-services-crontab-allow-sysadm_r-to-ru.patch
deleted file mode 100644
index d5e40d0..0000000
--- a/recipes-security/refpolicy/refpolicy/0059-policy-modules-services-crontab-allow-sysadm_r-to-ru.patch
+++ /dev/null
@@ -1,46 +0,0 @@
-From 1571e6da8a90bb325a94330dcd130d56bae30b37 Mon Sep 17 00:00:00 2001
-From: Roy Li <rongqing.li@windriver.com>
-Date: Thu, 20 Feb 2014 17:07:05 +0800
-Subject: [PATCH] policy/modules/services/crontab: allow sysadm_r to run
- crontab
-
-This permission has been given if release is not redhat; but we want it
-even we define distro_redhat
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Roy Li <rongqing.li@windriver.com>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/roles/sysadm.te | 8 ++++----
- 1 file changed, 4 insertions(+), 4 deletions(-)
-
-diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
-index 1de7e441d..129e94229 100644
---- a/policy/modules/roles/sysadm.te
-+++ b/policy/modules/roles/sysadm.te
-@@ -1277,6 +1277,10 @@ optional_policy(`
- 	zebra_admin(sysadm_t, sysadm_r)
- ')
- 
-+optional_policy(`
-+	cron_admin_role(sysadm_r, sysadm_t)
-+')
-+
- ifndef(`distro_redhat',`
- 	optional_policy(`
- 		auth_role(sysadm_r, sysadm_t)
-@@ -1295,10 +1299,6 @@ ifndef(`distro_redhat',`
- 		chromium_role(sysadm_r, sysadm_t)
- 	')
- 
--	optional_policy(`
--		cron_admin_role(sysadm_r, sysadm_t)
--	')
--
- 	optional_policy(`
- 		cryfs_role(sysadm_r, sysadm_t)
- 	')
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0074-policy-modules-system-init-make-init_t-MLS-trusted-f.patch b/recipes-security/refpolicy/refpolicy/0059-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
similarity index 86%
rename from recipes-security/refpolicy/refpolicy/0074-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
rename to recipes-security/refpolicy/refpolicy/0059-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
index b7dcaa8..1fdd81e 100644
--- a/recipes-security/refpolicy/refpolicy/0074-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
+++ b/recipes-security/refpolicy/refpolicy/0059-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
@@ -1,4 +1,4 @@
-From bbb405ac6270ef945db21cfddda63d283ee5d8af Mon Sep 17 00:00:00 2001
+From caa54da237e9c46810fb30c44e080c4b0de0efcf Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 28 May 2019 16:41:37 +0800
 Subject: [PATCH] policy/modules/system/init: make init_t MLS trusted for
@@ -17,10 +17,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index b6750015e..962c675b0 100644
+index 36becaa6e..9c0a98eb7 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -209,6 +209,7 @@ mls_file_write_all_levels(init_t)
+@@ -218,6 +218,7 @@ mls_file_write_all_levels(init_t)
  mls_process_write_all_levels(init_t)
  mls_fd_use_all_levels(init_t)
  mls_process_set_level(init_t)
diff --git a/recipes-security/refpolicy/refpolicy/0075-policy-modules-system-init-all-init_t-to-read-any-le.patch b/recipes-security/refpolicy/refpolicy/0060-policy-modules-system-init-all-init_t-to-read-any-le.patch
similarity index 88%
rename from recipes-security/refpolicy/refpolicy/0075-policy-modules-system-init-all-init_t-to-read-any-le.patch
rename to recipes-security/refpolicy/refpolicy/0060-policy-modules-system-init-all-init_t-to-read-any-le.patch
index de7271f..1ab6f41 100644
--- a/recipes-security/refpolicy/refpolicy/0075-policy-modules-system-init-all-init_t-to-read-any-le.patch
+++ b/recipes-security/refpolicy/refpolicy/0060-policy-modules-system-init-all-init_t-to-read-any-le.patch
@@ -1,4 +1,4 @@
-From 2780811e48663df0265676749a4041c077ae6a89 Mon Sep 17 00:00:00 2001
+From eb7d2a22afe8348771411c5fffa0a107e32b2049 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Wed, 3 Feb 2016 04:16:06 -0500
 Subject: [PATCH] policy/modules/system/init: all init_t to read any level
@@ -22,10 +22,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 3 insertions(+)
 
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index 962c675b0..aa57a5661 100644
+index 9c0a98eb7..5a19f0e43 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -215,6 +215,9 @@ mls_key_write_all_levels(init_t)
+@@ -224,6 +224,9 @@ mls_key_write_all_levels(init_t)
  mls_file_downgrade(init_t)
  mls_file_upgrade(init_t)
  
diff --git a/recipes-security/refpolicy/refpolicy/0076-policy-modules-system-logging-allow-auditd_t-to-writ.patch b/recipes-security/refpolicy/refpolicy/0061-policy-modules-system-logging-allow-auditd_t-to-writ.patch
similarity index 88%
rename from recipes-security/refpolicy/refpolicy/0076-policy-modules-system-logging-allow-auditd_t-to-writ.patch
rename to recipes-security/refpolicy/refpolicy/0061-policy-modules-system-logging-allow-auditd_t-to-writ.patch
index cd93c08..1d37d08 100644
--- a/recipes-security/refpolicy/refpolicy/0076-policy-modules-system-logging-allow-auditd_t-to-writ.patch
+++ b/recipes-security/refpolicy/refpolicy/0061-policy-modules-system-logging-allow-auditd_t-to-writ.patch
@@ -1,4 +1,4 @@
-From a74584ba424cd5e392db2a64b4ec66ebb307eb4c Mon Sep 17 00:00:00 2001
+From 1c96c052fc3768ecdea041372b88dc4486b9a595 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Thu, 25 Feb 2016 04:25:08 -0500
 Subject: [PATCH] policy/modules/system/logging: allow auditd_t to write socket
@@ -22,10 +22,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index e608327fe..bdd5c9dff 100644
+index e67c25a9e..f8d8b73f0 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -211,6 +211,8 @@ miscfiles_read_localization(auditd_t)
+@@ -215,6 +215,8 @@ miscfiles_read_localization(auditd_t)
  
  mls_file_read_all_levels(auditd_t)
  mls_file_write_all_levels(auditd_t) # Need to be able to write to /var/run/ directory
diff --git a/recipes-security/refpolicy/refpolicy/0077-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch b/recipes-security/refpolicy/refpolicy/0062-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
similarity index 73%
rename from recipes-security/refpolicy/refpolicy/0077-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
rename to recipes-security/refpolicy/refpolicy/0062-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
index 6b84403..6eea91c 100644
--- a/recipes-security/refpolicy/refpolicy/0077-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
+++ b/recipes-security/refpolicy/refpolicy/0062-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
@@ -1,4 +1,4 @@
-From 1bcb41c20d666761bb407bf34c9e3391e16449a7 Mon Sep 17 00:00:00 2001
+From e562fa7a9fc4df3aebf9dc1087d8c04bce684e8c Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Thu, 31 Oct 2019 17:35:59 +0800
 Subject: [PATCH] policy/modules/kernel/kernel: make kernel_t MLS trusted for
@@ -11,22 +11,21 @@ Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/kernel/kernel.te | 2 ++
- 1 file changed, 2 insertions(+)
+ policy/modules/kernel/kernel.te | 1 +
+ 1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kernel.te
-index 8f67c6ec9..fbcf1413f 100644
+index 1c53754ee..2031576e0 100644
 --- a/policy/modules/kernel/kernel.te
 +++ b/policy/modules/kernel/kernel.te
-@@ -362,6 +362,8 @@ mls_fd_use_all_levels(kernel_t)
+@@ -360,6 +360,7 @@ mls_socket_write_all_levels(kernel_t)
+ mls_fd_use_all_levels(kernel_t)
  # https://bugzilla.redhat.com/show_bug.cgi?id=667370
  mls_file_downgrade(kernel_t)
- 
 +mls_key_write_all_levels(kernel_t)
-+
+ 
  ifdef(`distro_redhat',`
  	# Bugzilla 222337
- 	fs_rw_tmpfs_chr_files(kernel_t)
 -- 
 2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0062-policy-modules-system-setrans-allow-setrans-to-acces.patch b/recipes-security/refpolicy/refpolicy/0062-policy-modules-system-setrans-allow-setrans-to-acces.patch
deleted file mode 100644
index b692012..0000000
--- a/recipes-security/refpolicy/refpolicy/0062-policy-modules-system-setrans-allow-setrans-to-acces.patch
+++ /dev/null
@@ -1,42 +0,0 @@
-From 84c69d220ffdd039b88a34f9afc127274a985541 Mon Sep 17 00:00:00 2001
-From: Roy Li <rongqing.li@windriver.com>
-Date: Sat, 22 Feb 2014 13:35:38 +0800
-Subject: [PATCH] policy/modules/system/setrans: allow setrans to access
- /sys/fs/selinux
-
-1. mcstransd failed to boot-up since the below permission is denied
-statfs("/sys/fs/selinux", 0x7ffff2b80370) = -1 EACCES (Permission denied)
-
-2. other programs can not connect to /run/setrans/.setrans-unix
-avc:  denied  { connectto } for  pid=2055 comm="ls"
-path="/run/setrans/.setrans-unix"
-scontext=root:sysadm_r:sysadm_t:s0-s15:c0.c1023
-tcontext=system_u:system_r:setrans_t:s15:c0.c1023
-tclass=unix_stream_socket
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Roy Li <rongqing.li@windriver.com>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/setrans.te | 4 +---
- 1 file changed, 1 insertion(+), 3 deletions(-)
-
-diff --git a/policy/modules/system/setrans.te b/policy/modules/system/setrans.te
-index 25aadfc5f..78bd6e2eb 100644
---- a/policy/modules/system/setrans.te
-+++ b/policy/modules/system/setrans.te
-@@ -23,9 +23,7 @@ mls_trusted_object(setrans_runtime_t)
- type setrans_unit_t;
- init_unit_file(setrans_unit_t)
- 
--ifdef(`distro_debian',`
--	init_daemon_runtime_file(setrans_runtime_t, dir, "setrans")
--')
-+init_daemon_runtime_file(setrans_runtime_t, dir, "setrans")
- 
- ifdef(`enable_mcs',`
- 	init_ranged_daemon_domain(setrans_t, setrans_exec_t, s0 - mcs_systemhigh)
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0082-policy-modules-system-setrans-allow-setrans_t-use-fd.patch b/recipes-security/refpolicy/refpolicy/0063-policy-modules-system-setrans-allow-setrans_t-use-fd.patch
similarity index 83%
rename from recipes-security/refpolicy/refpolicy/0082-policy-modules-system-setrans-allow-setrans_t-use-fd.patch
rename to recipes-security/refpolicy/refpolicy/0063-policy-modules-system-setrans-allow-setrans_t-use-fd.patch
index b67f069..8b55dc7 100644
--- a/recipes-security/refpolicy/refpolicy/0082-policy-modules-system-setrans-allow-setrans_t-use-fd.patch
+++ b/recipes-security/refpolicy/refpolicy/0063-policy-modules-system-setrans-allow-setrans_t-use-fd.patch
@@ -1,4 +1,4 @@
-From e6a08769138d68582c72fe28ed7dd51c118654a5 Mon Sep 17 00:00:00 2001
+From 1f3ce550828f75e85992658ee1660c6de14f0ebe Mon Sep 17 00:00:00 2001
 From: Roy Li <rongqing.li@windriver.com>
 Date: Sat, 22 Feb 2014 13:35:38 +0800
 Subject: [PATCH] policy/modules/system/setrans: allow setrans_t use fd at any
@@ -13,10 +13,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/system/setrans.te b/policy/modules/system/setrans.te
-index 78bd6e2eb..0dd3a63cd 100644
+index 25aadfc5f..564e2d4d1 100644
 --- a/policy/modules/system/setrans.te
 +++ b/policy/modules/system/setrans.te
-@@ -71,6 +71,8 @@ mls_net_receive_all_levels(setrans_t)
+@@ -73,6 +73,8 @@ mls_net_receive_all_levels(setrans_t)
  mls_socket_write_all_levels(setrans_t)
  mls_process_read_all_levels(setrans_t)
  mls_socket_read_all_levels(setrans_t)
diff --git a/recipes-security/refpolicy/refpolicy/0064-policy-modules-roles-sysadm-allow-sysadm_t-to-watch-.patch b/recipes-security/refpolicy/refpolicy/0064-policy-modules-roles-sysadm-allow-sysadm_t-to-watch-.patch
deleted file mode 100644
index dbd1390..0000000
--- a/recipes-security/refpolicy/refpolicy/0064-policy-modules-roles-sysadm-allow-sysadm_t-to-watch-.patch
+++ /dev/null
@@ -1,33 +0,0 @@
-From 291d3329c280b6b8b70fcc3092ac4d3399936825 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Mon, 29 Jun 2020 10:32:25 +0800
-Subject: [PATCH] policy/modules/roles/sysadm: allow sysadm_t to watch runtime
- dirs
-
-Fixes:
-Failed to add a watch for /run/systemd/ask-password: Permission denied
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/roles/sysadm.te | 3 +++
- 1 file changed, 3 insertions(+)
-
-diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
-index 129e94229..a4abaefe4 100644
---- a/policy/modules/roles/sysadm.te
-+++ b/policy/modules/roles/sysadm.te
-@@ -83,6 +83,9 @@ ifdef(`init_systemd',`
- 	init_dbus_chat(sysadm_t)
- 
- 	systemd_sysadm_user(sysadm_t)
-+
-+	systemd_filetrans_passwd_runtime_dirs(sysadm_t)
-+	allow sysadm_t systemd_passwd_runtime_t:dir watch;
- ')
- 
- tunable_policy(`allow_ptrace',`
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0090-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch b/recipes-security/refpolicy/refpolicy/0064-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch
similarity index 82%
rename from recipes-security/refpolicy/refpolicy/0090-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch
rename to recipes-security/refpolicy/refpolicy/0064-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch
index 0a18ca3..0617e58 100644
--- a/recipes-security/refpolicy/refpolicy/0090-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch
+++ b/recipes-security/refpolicy/refpolicy/0064-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch
@@ -1,4 +1,4 @@
-From abb0ef8967130c6a31b45d6dfb0970cf8415fec6 Mon Sep 17 00:00:00 2001
+From c622361394994e7162fc5e65ad0bcd27a6a6a8fb Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Mon, 22 Feb 2021 11:28:12 +0800
 Subject: [PATCH] policy/modules/system/systemd: make *_systemd_t MLS trusted
@@ -24,13 +24,13 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 3 insertions(+)
 
 diff --git a/policy/modules/system/systemd.if b/policy/modules/system/systemd.if
-index 152139261..320619289 100644
+index 5c44d8d8a..5f2038f22 100644
 --- a/policy/modules/system/systemd.if
 +++ b/policy/modules/system/systemd.if
-@@ -113,6 +113,9 @@ template(`systemd_role_template',`
- 
- 	seutil_read_file_contexts($1_systemd_t)
- 	seutil_search_default_contexts($1_systemd_t)
+@@ -171,6 +171,9 @@ template(`systemd_role_template',`
+ 		xdg_read_config_files($1_systemd_t)
+ 		xdg_read_data_files($1_systemd_t)
+ 	')
 +
 +	mls_file_read_all_levels($1_systemd_t)
 +	mls_file_write_all_levels($1_systemd_t)
diff --git a/recipes-security/refpolicy/refpolicy/0065-policy-modules-system-logging-make-syslogd_runtime_t.patch b/recipes-security/refpolicy/refpolicy/0065-policy-modules-system-logging-make-syslogd_runtime_t.patch
new file mode 100644
index 0000000..9af58ea
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0065-policy-modules-system-logging-make-syslogd_runtime_t.patch
@@ -0,0 +1,48 @@
+From 11b29e8f71a6dcba4bad6c77de3ec6e7cb339ee8 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Sat, 18 Dec 2021 17:31:45 +0800
+Subject: [PATCH] policy/modules/system/logging: make syslogd_runtime_t MLS
+ trusted.
+
+Make syslogd_runtime_t MLS trusted to allow all levels to read and write
+the object.
+
+Fixes:
+avc:  denied  { search } for  pid=314 comm="useradd" name="journal"
+dev="tmpfs" ino=34 scontext=root:sysadm_r:useradd_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=dir
+permissive=0
+
+avc:  denied  { search } for  pid=319 comm="passwd" name="journal"
+dev="tmpfs" ino=34 scontext=root:sysadm_r:passwd_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=dir
+permissive=0
+
+avc:  denied  { search } for pid=374 comm="rpc.statd" name="journal"
+dev="tmpfs" ino=9854 scontext=system_u:system_r:rpcd_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:syslogd_var_run_t:s15:c0.c1023 tclass=dir
+permissive=0
+
+Upstream-Status: Pending
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/logging.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
+index f8d8b73f0..badf56f16 100644
+--- a/policy/modules/system/logging.te
++++ b/policy/modules/system/logging.te
+@@ -438,6 +438,8 @@ allow syslogd_t syslogd_runtime_t:file map;
+ manage_files_pattern(syslogd_t, syslogd_runtime_t, syslogd_runtime_t)
+ files_runtime_filetrans(syslogd_t, syslogd_runtime_t, file)
+ 
++mls_trusted_object(syslogd_runtime_t)
++
+ kernel_read_crypto_sysctls(syslogd_t)
+ kernel_read_system_state(syslogd_t)
+ kernel_read_network_state(syslogd_t)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0065-policy-modules-system-selinux-allow-setfiles_t-to-re.patch b/recipes-security/refpolicy/refpolicy/0065-policy-modules-system-selinux-allow-setfiles_t-to-re.patch
deleted file mode 100644
index a824004..0000000
--- a/recipes-security/refpolicy/refpolicy/0065-policy-modules-system-selinux-allow-setfiles_t-to-re.patch
+++ /dev/null
@@ -1,44 +0,0 @@
-From bc821718f7e9575a67c4667decad937cbe5f8514 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Tue, 2 Mar 2021 14:25:03 +0800
-Subject: [PATCH] policy/modules/system/selinux: allow setfiles_t to read
- kernel sysctl
-
-Fixes:
-avc: denied { read } for pid=171 comm="restorecon" name="cap_last_cap"
-dev="proc" ino=1241
-scontext=system_u:system_r:setfiles_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:sysctl_kernel_t:s0 tclass=file permissive=0
-
-avc: denied { open } for pid=171 comm="restorecon"
-path="/proc/sys/kernel/cap_last_cap" dev="proc" ino=1241
-scontext=system_u:system_r:setfiles_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:sysctl_kernel_t:s0 tclass=file permissive=0
-
-avc: denied { getattr } for pid=171 comm="restorecon" name="/"
-dev="proc" ino=1 scontext=system_u:system_r:setfiles_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:proc_t:s0 tclass=filesystem permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/selinuxutil.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/system/selinuxutil.te b/policy/modules/system/selinuxutil.te
-index a505b3987..a26f8db03 100644
---- a/policy/modules/system/selinuxutil.te
-+++ b/policy/modules/system/selinuxutil.te
-@@ -597,6 +597,8 @@ kernel_rw_unix_dgram_sockets(setfiles_t)
- kernel_dontaudit_list_all_proc(setfiles_t)
- kernel_dontaudit_list_all_sysctls(setfiles_t)
- kernel_getattr_debugfs(setfiles_t)
-+kernel_read_kernel_sysctls(setfiles_t)
-+kernel_getattr_proc(setfiles_t)
- 
- dev_read_urand(setfiles_t)
- dev_relabel_all_dev_nodes(setfiles_t)
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0078-policy-modules-system-systemd-make-systemd-logind-do.patch b/recipes-security/refpolicy/refpolicy/0078-policy-modules-system-systemd-make-systemd-logind-do.patch
deleted file mode 100644
index 5ac5a19..0000000
--- a/recipes-security/refpolicy/refpolicy/0078-policy-modules-system-systemd-make-systemd-logind-do.patch
+++ /dev/null
@@ -1,42 +0,0 @@
-From 7021844f20c5d5c885edf87abf8ce3329bcc5836 Mon Sep 17 00:00:00 2001
-From: Wenzong Fan <wenzong.fan@windriver.com>
-Date: Mon, 23 Jan 2017 08:42:44 +0000
-Subject: [PATCH] policy/modules/system/systemd: make systemd-logind domain MLS
- trusted for reading from files up to its clearance.
-
-Fixes:
-avc:  denied  { search } for  pid=184 comm="systemd-logind"
-name="journal" dev="tmpfs" ino=10949
-scontext=system_u:system_r:systemd_logind_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=dir
-permissive=1
-
-avc:  denied  { watch } for  pid=184 comm="systemd-logind"
-path="/run/utmp" dev="tmpfs" ino=12725
-scontext=system_u:system_r:systemd_logind_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:initrc_runtime_t:s0 tclass=file permissive=1
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/systemd.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index c50a2ba64..a7390b1cd 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -693,6 +693,8 @@ userdom_relabelto_user_runtime_dirs(systemd_logind_t)
- userdom_setattr_user_ttys(systemd_logind_t)
- userdom_use_user_ttys(systemd_logind_t)
- 
-+mls_file_read_to_clearance(systemd_logind_t)
-+
- # Needed to work around patch not yet merged into the systemd-logind supported on RHEL 7.x
- # The change in systemd by Nicolas Iooss on 02-Feb-2016 with hash 4b51966cf6c06250036e428608da92f8640beb96
- # should fix the problem where user directories in /run/user/$UID/ are not getting the proper context
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0079-policy-modules-system-systemd-systemd-user-sessions-.patch b/recipes-security/refpolicy/refpolicy/0079-policy-modules-system-systemd-systemd-user-sessions-.patch
deleted file mode 100644
index 3ea0085..0000000
--- a/recipes-security/refpolicy/refpolicy/0079-policy-modules-system-systemd-systemd-user-sessions-.patch
+++ /dev/null
@@ -1,41 +0,0 @@
-From 6e3e1a5f79d6deab2966fc74c64720e90d248f3d Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Thu, 18 Jun 2020 09:39:23 +0800
-Subject: [PATCH] policy/modules/system/systemd: systemd-user-sessions: make
- systemd_sessions_t MLS trusted for reading/writing from files at all levels
-
-Fixes:
-avc:  denied  { search } for  pid=229 comm="systemd-user-se"
-name="journal" dev="tmpfs" ino=10956
-scontext=system_u:system_r:systemd_sessions_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=dir
-permissive=0
-avc:  denied  { write } for  pid=229 comm="systemd-user-se" name="kmsg"
-dev="devtmpfs" ino=10032
-scontext=system_u:system_r:systemd_sessions_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=chr_file
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
-index a7390b1cd..f0b0e8b92 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -1261,6 +1261,8 @@ seutil_read_file_contexts(systemd_sessions_t)
- 
- systemd_log_parse_environment(systemd_sessions_t)
- 
-+mls_file_read_to_clearance(systemd_sessions_t)
-+mls_file_write_all_levels(systemd_sessions_t)
- 
- #########################################
- #
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0080-policy-modules-system-systemd-systemd-make-systemd_-.patch b/recipes-security/refpolicy/refpolicy/0080-policy-modules-system-systemd-systemd-make-systemd_-.patch
deleted file mode 100644
index cb8e821..0000000
--- a/recipes-security/refpolicy/refpolicy/0080-policy-modules-system-systemd-systemd-make-systemd_-.patch
+++ /dev/null
@@ -1,162 +0,0 @@
-From 05ec2d78b44e57ecf188472b903fe66eeb568951 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Thu, 18 Jun 2020 09:59:58 +0800
-Subject: [PATCH] policy/modules/system/systemd: systemd-*: make systemd_*_t
- MLS trusted for writing/reading from files up to its clearance
-
-Fixes:
-avc:  denied  { search } for  pid=219 comm="systemd-network"
-name="journal" dev="tmpfs" ino=10956
-scontext=system_u:system_r:systemd_networkd_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=dir
-permissive=0
-
-avc:  denied  { search } for  pid=220 comm="systemd-resolve"
-name="journal" dev="tmpfs" ino=10956
-scontext=system_u:system_r:systemd_resolved_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=dir
-permissive=0
-avc:  denied  { search } for  pid=220 comm="systemd-resolve" name="/"
-dev="tmpfs" ino=15102
-scontext=system_u:system_r:systemd_resolved_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:tmpfs_t:s0 tclass=dir permissive=0
-
-avc:  denied  { search } for  pid=142 comm="systemd-modules"
-name="journal" dev="tmpfs" ino=10990
-scontext=system_u:system_r:systemd_modules_load_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=dir
-permissive=0
-
-audit: type=1400 audit(1592892455.376:3): avc:  denied  { write } for
-pid=120 comm="systemd-gpt-aut" name="kmsg" dev="devtmpfs" ino=10032
-scontext=system_u:system_r:systemd_generator_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=chr_file
-permissive=0
-
-audit: type=1400 audit(1592892455.381:4): avc:  denied  { write } for
-pid=119 comm="systemd-getty-g" name="kmsg" dev="devtmpfs" ino=10032
-scontext=system_u:system_r:systemd_generator_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=chr_file
-permissive=0
-
-avc:  denied  { read } for  pid=125 comm="systemd-gpt-aut" name="sdb"
-dev="devtmpfs" ino=42
-scontext=system_u:system_r:systemd_generator_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:fixed_disk_device_t:s15:c0.c1023
-tclass=blk_file permissive=0
-
-avc:  denied  { search } for  pid=302 comm="systemd-hostnam"
-name="journal" dev="tmpfs" ino=14165
-scontext=system_u:system_r:systemd_hostnamed_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=dir
-permissive=0
-
-avc:  denied  { search } for  pid=302 comm="systemd-hostnam" name="/"
-dev="tmpfs" ino=17310
-scontext=system_u:system_r:systemd_hostnamed_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:tmpfs_t:s0 tclass=dir permissive=0
-
-avc:  denied  { search } for  pid=233 comm="systemd-rfkill"
-name="journal" dev="tmpfs" ino=14165
-scontext=system_u:system_r:systemd_rfkill_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=dir
-permissive=0
-
-avc:  denied  { write } for  pid=233 comm="systemd-rfkill" name="kmsg"
-dev="devtmpfs" ino=2060
-scontext=system_u:system_r:systemd_rfkill_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=chr_file
-permissive=0
-
-avc:  denied  { search } for  pid=354 comm="systemd-backlig"
-name="journal" dev="tmpfs" ino=1183
-scontext=system_u:system_r:systemd_backlight_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=dir
-permissive=0
-
-avc:  denied  { write } for  pid=354 comm="systemd-backlig" name="kmsg"
-dev="devtmpfs" ino=3081
-scontext=system_u:system_r:systemd_backlight_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=chr_file
-permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/systemd.te | 17 +++++++++++++++++
- 1 file changed, 17 insertions(+)
-
-diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index f0b0e8b92..7b2d359b7 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -326,6 +326,9 @@ files_search_var_lib(systemd_backlight_t)
- 
- kernel_read_kernel_sysctls(systemd_backlight_t)
- 
-+mls_file_write_to_clearance(systemd_backlight_t)
-+mls_file_read_to_clearance(systemd_backlight_t)
-+
- #######################################
- #
- # Binfmt local policy
-@@ -460,6 +463,9 @@ systemd_log_parse_environment(systemd_generator_t)
- 
- term_use_unallocated_ttys(systemd_generator_t)
- 
-+mls_file_write_to_clearance(systemd_generator_t)
-+mls_file_read_to_clearance(systemd_generator_t)
-+
- ifdef(`distro_gentoo',`
- 	corecmd_shell_entry_type(systemd_generator_t)
- ')
-@@ -497,6 +503,8 @@ sysnet_manage_config(systemd_hostnamed_t)
- 
- systemd_log_parse_environment(systemd_hostnamed_t)
- 
-+mls_file_read_to_clearance(systemd_hostnamed_t)
-+
- optional_policy(`
- 	dbus_connect_system_bus(systemd_hostnamed_t)
- 	dbus_system_bus_client(systemd_hostnamed_t)
-@@ -818,6 +826,8 @@ modutils_read_module_deps(systemd_modules_load_t)
- 
- systemd_log_parse_environment(systemd_modules_load_t)
- 
-+mls_file_read_to_clearance(systemd_modules_load_t)
-+
- ########################################
- #
- # networkd local policy
-@@ -876,6 +886,8 @@ sysnet_read_config(systemd_networkd_t)
- 
- systemd_log_parse_environment(systemd_networkd_t)
- 
-+mls_file_read_to_clearance(systemd_networkd_t)
-+
- optional_policy(`
- 	dbus_system_bus_client(systemd_networkd_t)
- 	dbus_connect_system_bus(systemd_networkd_t)
-@@ -1159,6 +1171,9 @@ udev_read_runtime_files(systemd_rfkill_t)
- 
- systemd_log_parse_environment(systemd_rfkill_t)
- 
-+mls_file_write_to_clearance(systemd_rfkill_t)
-+mls_file_read_to_clearance(systemd_rfkill_t)
-+
- #########################################
- #
- # Resolved local policy
-@@ -1202,6 +1217,8 @@ init_dgram_send(systemd_resolved_t)
- 
- seutil_read_file_contexts(systemd_resolved_t)
- 
-+mls_file_read_to_clearance(systemd_resolved_t)
-+
- systemd_log_parse_environment(systemd_resolved_t)
- systemd_read_networkd_runtime(systemd_resolved_t)
- 
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0081-policy-modules-services-ntp-make-nptd_t-MLS-trusted-.patch b/recipes-security/refpolicy/refpolicy/0081-policy-modules-services-ntp-make-nptd_t-MLS-trusted-.patch
deleted file mode 100644
index 250d89b..0000000
--- a/recipes-security/refpolicy/refpolicy/0081-policy-modules-services-ntp-make-nptd_t-MLS-trusted-.patch
+++ /dev/null
@@ -1,40 +0,0 @@
-From a105ea8b48c5e9ada567c7f6347f3875df7098a0 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Thu, 18 Jun 2020 10:21:04 +0800
-Subject: [PATCH] policy/modules/services/ntp: make nptd_t MLS trusted for
- reading from files at all levels
-
-Fixes:
-avc:  denied  { search } for  pid=193 comm="systemd-timesyn"
-name="journal" dev="tmpfs" ino=10956
-scontext=system_u:system_r:ntpd_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=dir
-permissive=0
-avc:  denied  { read } for  pid=193 comm="systemd-timesyn" name="dbus"
-dev="tmpfs" ino=13971 scontext=system_u:system_r:ntpd_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:system_dbusd_runtime_t:s0 tclass=dir
-permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/services/ntp.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/services/ntp.te b/policy/modules/services/ntp.te
-index 1626ae87a..c8a1f041b 100644
---- a/policy/modules/services/ntp.te
-+++ b/policy/modules/services/ntp.te
-@@ -138,6 +138,8 @@ miscfiles_read_localization(ntpd_t)
- userdom_dontaudit_use_unpriv_user_fds(ntpd_t)
- userdom_list_user_home_dirs(ntpd_t)
- 
-+mls_file_read_all_levels(ntpd_t)
-+
- ifdef(`init_systemd',`
- 	allow ntpd_t self:process setfscreate;
- 
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0083-policy-modules-services-acpi-make-acpid_t-domain-MLS.patch b/recipes-security/refpolicy/refpolicy/0083-policy-modules-services-acpi-make-acpid_t-domain-MLS.patch
deleted file mode 100644
index cc2d5dd..0000000
--- a/recipes-security/refpolicy/refpolicy/0083-policy-modules-services-acpi-make-acpid_t-domain-MLS.patch
+++ /dev/null
@@ -1,35 +0,0 @@
-From 15c99854aa21564a6eb1121f58f55a9626ba6297 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Fri, 10 Jul 2020 09:07:00 +0800
-Subject: [PATCH] policy/modules/services/acpi: make acpid_t domain MLS trusted
- for reading from files up to its clearance
-
-Fixes:
-avc:  denied  { search } for  pid=265 comm="acpid" name="journal"
-dev="tmpfs" ino=14165 scontext=system_u:system_r:acpid_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=dir
-permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/services/acpi.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/services/acpi.te b/policy/modules/services/acpi.te
-index 5c22adecd..bd442ff8a 100644
---- a/policy/modules/services/acpi.te
-+++ b/policy/modules/services/acpi.te
-@@ -157,6 +157,8 @@ userdom_dontaudit_use_unpriv_user_fds(acpid_t)
- userdom_dontaudit_search_user_home_dirs(acpid_t)
- userdom_dontaudit_search_user_home_content(acpid_t)
- 
-+mls_file_read_to_clearance(acpid_t)
-+
- optional_policy(`
- 	automount_domtrans(acpid_t)
- ')
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0084-policy-modules-services-avahi-make-avahi_t-MLS-trust.patch b/recipes-security/refpolicy/refpolicy/0084-policy-modules-services-avahi-make-avahi_t-MLS-trust.patch
deleted file mode 100644
index 3cfe2c0..0000000
--- a/recipes-security/refpolicy/refpolicy/0084-policy-modules-services-avahi-make-avahi_t-MLS-trust.patch
+++ /dev/null
@@ -1,29 +0,0 @@
-From 5cd8a1121685c269238c89ea22743441541cf108 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Tue, 23 Jun 2020 08:19:16 +0800
-Subject: [PATCH] policy/modules/services/avahi: make avahi_t MLS trusted for
- reading from files up to its clearance
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/services/avahi.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/services/avahi.te b/policy/modules/services/avahi.te
-index 674cdcb81..8ddd922e5 100644
---- a/policy/modules/services/avahi.te
-+++ b/policy/modules/services/avahi.te
-@@ -95,6 +95,8 @@ sysnet_etc_filetrans_config(avahi_t)
- userdom_dontaudit_use_unpriv_user_fds(avahi_t)
- userdom_dontaudit_search_user_home_dirs(avahi_t)
- 
-+mls_file_read_to_clearance(avahi_t)
-+
- optional_policy(`
- 	dbus_system_domain(avahi_t, avahi_exec_t)
- 
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0085-policy-modules-services-bluetooth-make-bluetooth_t-d.patch b/recipes-security/refpolicy/refpolicy/0085-policy-modules-services-bluetooth-make-bluetooth_t-d.patch
deleted file mode 100644
index a784657..0000000
--- a/recipes-security/refpolicy/refpolicy/0085-policy-modules-services-bluetooth-make-bluetooth_t-d.patch
+++ /dev/null
@@ -1,36 +0,0 @@
-From 3c74f403cb38410ea7e1de0e61dafa80a60c5ba5 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Fri, 10 Jul 2020 09:18:12 +0800
-Subject: [PATCH] policy/modules/services/bluetooth: make bluetooth_t domain
- MLS trusted for reading from files up to its clearance
-
-Fixes:
-avc:  denied  { search } for  pid=268 comm="bluetoothd" name="journal"
-dev="tmpfs" ino=14165
-scontext=system_u:system_r:bluetooth_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=dir
-permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/services/bluetooth.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/services/bluetooth.te b/policy/modules/services/bluetooth.te
-index b3df695db..931021346 100644
---- a/policy/modules/services/bluetooth.te
-+++ b/policy/modules/services/bluetooth.te
-@@ -132,6 +132,8 @@ userdom_dontaudit_search_user_home_dirs(bluetooth_t)
- init_dbus_send_script(bluetooth_t)
- systemd_dbus_chat_hostnamed(bluetooth_t)
- 
-+mls_file_read_to_clearance(bluetooth_t)
-+
- optional_policy(`
- 	dbus_system_bus_client(bluetooth_t)
- 	dbus_connect_system_bus(bluetooth_t)
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0086-policy-modules-system-sysnetwork-make-dhcpc_t-domain.patch b/recipes-security/refpolicy/refpolicy/0086-policy-modules-system-sysnetwork-make-dhcpc_t-domain.patch
deleted file mode 100644
index 2ba3100..0000000
--- a/recipes-security/refpolicy/refpolicy/0086-policy-modules-system-sysnetwork-make-dhcpc_t-domain.patch
+++ /dev/null
@@ -1,38 +0,0 @@
-From 1ab2ca67db9205f484ebce022be9c9a42bacc802 Mon Sep 17 00:00:00 2001
-From: Wenzong Fan <wenzong.fan@windriver.com>
-Date: Thu, 23 Feb 2017 08:18:36 +0000
-Subject: [PATCH] policy/modules/system/sysnetwork: make dhcpc_t domain MLS
- trusted for reading from files up to its clearance
-
-Allow dhcpc_t to search /run/systemd/journal
-
-Fixes:
-avc:  denied  { search } for  pid=218 comm="dhclient" name="journal"
-dev="tmpfs" ino=10990 scontext=system_u:system_r:dhcpc_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=dir
-permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/sysnetwork.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/system/sysnetwork.te b/policy/modules/system/sysnetwork.te
-index a9297f976..b6fd3f907 100644
---- a/policy/modules/system/sysnetwork.te
-+++ b/policy/modules/system/sysnetwork.te
-@@ -170,6 +170,8 @@ sysnet_run_ifconfig(dhcpc_t, dhcpc_roles)
- userdom_use_user_terminals(dhcpc_t)
- userdom_dontaudit_search_user_home_dirs(dhcpc_t)
- 
-+mls_file_read_to_clearance(dhcpc_t)
-+
- ifdef(`distro_redhat', `
- 	files_exec_etc_files(dhcpc_t)
- ')
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0087-policy-modules-services-inetd-make-inetd_t-domain-ML.patch b/recipes-security/refpolicy/refpolicy/0087-policy-modules-services-inetd-make-inetd_t-domain-ML.patch
deleted file mode 100644
index abf5cd9..0000000
--- a/recipes-security/refpolicy/refpolicy/0087-policy-modules-services-inetd-make-inetd_t-domain-ML.patch
+++ /dev/null
@@ -1,36 +0,0 @@
-From 2a54a7cab41aaddc113ed71d68f82e37661c3487 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Fri, 3 Jul 2020 08:57:51 +0800
-Subject: [PATCH] policy/modules/services/inetd: make inetd_t domain MLS
- trusted for reading from files up to its clearance
-
-Allow inetd_t to search /run/systemd/journal
-
-Fixes:
-avc:  denied  { search } for  pid=286 comm="xinetd" name="journal"
-dev="tmpfs" ino=10990 scontext=system_u:system_r:inetd_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=dir
-permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/services/inetd.te | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/services/inetd.te b/policy/modules/services/inetd.te
-index 1a6ad6e1a..8d1fc0241 100644
---- a/policy/modules/services/inetd.te
-+++ b/policy/modules/services/inetd.te
-@@ -161,6 +161,7 @@ mls_socket_read_to_clearance(inetd_t)
- mls_socket_write_to_clearance(inetd_t)
- mls_net_outbound_all_levels(inetd_t)
- mls_process_set_level(inetd_t)
-+mls_file_read_to_clearance(inetd_t)
- 
- userdom_dontaudit_use_unpriv_user_fds(inetd_t)
- userdom_dontaudit_search_user_home_dirs(inetd_t)
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0088-policy-modules-services-bind-make-named_t-domain-MLS.patch b/recipes-security/refpolicy/refpolicy/0088-policy-modules-services-bind-make-named_t-domain-MLS.patch
deleted file mode 100644
index 5be48df..0000000
--- a/recipes-security/refpolicy/refpolicy/0088-policy-modules-services-bind-make-named_t-domain-MLS.patch
+++ /dev/null
@@ -1,38 +0,0 @@
-From 0e93ad162cda033935fbac584787417b97b4bc17 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Fri, 3 Jul 2020 09:42:21 +0800
-Subject: [PATCH] policy/modules/services/bind: make named_t domain MLS trusted
- for reading from files up to its clearance
-
-Allow named_t to search /run/systemd/journal
-
-Fixes:
-avc:  denied  { search } for  pid=295 comm="isc-worker0000"
-name="journal" dev="tmpfs" ino=10990
-scontext=system_u:system_r:named_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=dir
-permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/services/bind.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/services/bind.te b/policy/modules/services/bind.te
-index bf50763bd..be1813cb9 100644
---- a/policy/modules/services/bind.te
-+++ b/policy/modules/services/bind.te
-@@ -165,6 +165,8 @@ miscfiles_read_generic_tls_privkey(named_t)
- userdom_dontaudit_use_unpriv_user_fds(named_t)
- userdom_dontaudit_search_user_home_dirs(named_t)
- 
-+mls_file_read_to_clearance(named_t)
-+
- tunable_policy(`named_tcp_bind_http_port',`
- 	corenet_sendrecv_http_server_packets(named_t)
- 	corenet_tcp_bind_http_port(named_t)
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0089-policy-modules-services-rpc-make-rpcd_t-MLS-trusted-.patch b/recipes-security/refpolicy/refpolicy/0089-policy-modules-services-rpc-make-rpcd_t-MLS-trusted-.patch
deleted file mode 100644
index 7adaea0..0000000
--- a/recipes-security/refpolicy/refpolicy/0089-policy-modules-services-rpc-make-rpcd_t-MLS-trusted-.patch
+++ /dev/null
@@ -1,36 +0,0 @@
-From 58cdf21546b973b458a26ea4b3a523275a80aca5 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Thu, 30 May 2019 08:30:06 +0800
-Subject: [PATCH] policy/modules/services/rpc: make rpcd_t MLS trusted for
- reading from files up to its clearance
-
-Fixes:
-type=AVC msg=audit(1559176077.169:242): avc:  denied  { search } for
-pid=374 comm="rpc.statd" name="journal" dev="tmpfs" ino=9854
-scontext=system_u:system_r:rpcd_t:s0-s15:c0.c1023
-tcontext=system_u:object_r:syslogd_var_run_t:s15:c0.c1023 tclass=dir
-permissive=0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/services/rpc.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/services/rpc.te b/policy/modules/services/rpc.te
-index 9618df04e..84caefbbb 100644
---- a/policy/modules/services/rpc.te
-+++ b/policy/modules/services/rpc.te
-@@ -275,6 +275,8 @@ seutil_dontaudit_search_config(rpcd_t)
- 
- userdom_signal_all_users(rpcd_t)
- 
-+mls_file_read_to_clearance(rpcd_t)
-+
- ifdef(`distro_debian',`
- 	term_dontaudit_use_unallocated_ttys(rpcd_t)
- ')
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0091-fc-usermanage-update-file-context-for-chfn-chsh.patch b/recipes-security/refpolicy/refpolicy/0091-fc-usermanage-update-file-context-for-chfn-chsh.patch
deleted file mode 100644
index 370bc64..0000000
--- a/recipes-security/refpolicy/refpolicy/0091-fc-usermanage-update-file-context-for-chfn-chsh.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-From 311d4759340f2af1e1e157d571802e4367e0a46b Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Mon, 2 Aug 2021 09:38:39 +0800
-Subject: [PATCH] fc/usermanage: update file context for chfn/chsh
-
-The util-linux has provided chfn and chsh since oe-core commit
-804c6b5bd3d398d5ea2a45d6bcc23c76e328ea3f. Update the file context for
-them.
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/admin/usermanage.fc | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/admin/usermanage.fc b/policy/modules/admin/usermanage.fc
-index 6a051f8a5..bf1ff09ab 100644
---- a/policy/modules/admin/usermanage.fc
-+++ b/policy/modules/admin/usermanage.fc
-@@ -5,8 +5,10 @@ ifdef(`distro_debian',`
- /usr/bin/chage		--	gen_context(system_u:object_r:passwd_exec_t,s0)
- /usr/bin/chfn		--	gen_context(system_u:object_r:chfn_exec_t,s0)
- /usr/bin/chfn\.shadow		--	gen_context(system_u:object_r:chfn_exec_t,s0)
-+/usr/bin/chfn\.util-linux		--	gen_context(system_u:object_r:chfn_exec_t,s0)
- /usr/bin/chsh		--	gen_context(system_u:object_r:chfn_exec_t,s0)
- /usr/bin/chsh\.shadow		--	gen_context(system_u:object_r:chfn_exec_t,s0)
-+/usr/bin/chsh\.util-linux		--	gen_context(system_u:object_r:chfn_exec_t,s0)
- /usr/bin/crack_[a-z]*	--	gen_context(system_u:object_r:crack_exec_t,s0)
- /usr/bin/cracklib-[a-z]* --	gen_context(system_u:object_r:crack_exec_t,s0)
- /usr/bin/gpasswd	--	gen_context(system_u:object_r:groupadd_exec_t,s0)
--- 
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 3d2eb89..4eefeb1 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -1,5 +1,3 @@
-DEFAULT_ENFORCING ??= "enforcing"
-
 SECTION = "admin"
 LICENSE = "GPLv2"
 
@@ -24,91 +22,65 @@ SRC_URI += " \
         file://0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch \
         file://0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch \
         file://0006-fc-login-apply-login-context-to-login.shadow.patch \
-        file://0007-fc-bind-fix-real-path-for-bind.patch \
-        file://0008-fc-hwclock-add-hwclock-alternatives.patch \
-        file://0009-fc-dmesg-apply-policy-to-dmesg-alternatives.patch \
-        file://0010-fc-ssh-apply-policy-to-ssh-alternatives.patch \
-        file://0011-fc-sysnetwork-apply-policy-to-ip-alternatives.patch \
-        file://0012-fc-udev-apply-policy-to-udevadm-in-libexec.patch \
-        file://0013-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch \
-        file://0014-fc-su-apply-policy-to-su-alternatives.patch \
-        file://0015-fc-fstools-fix-real-path-for-fstools.patch \
-        file://0016-fc-init-fix-update-alternatives-for-sysvinit.patch \
-        file://0017-fc-brctl-apply-policy-to-brctl-alternatives.patch \
-        file://0018-fc-corecommands-apply-policy-to-nologin-alternatives.patch \
-        file://0019-fc-locallogin-apply-policy-to-sulogin-alternatives.patch \
-        file://0020-fc-ntp-apply-policy-to-ntpd-alternatives.patch \
-        file://0021-fc-kerberos-apply-policy-to-kerberos-alternatives.patch \
-        file://0022-fc-ldap-apply-policy-to-ldap-alternatives.patch \
-        file://0023-fc-postgresql-apply-policy-to-postgresql-alternative.patch \
-        file://0024-fc-screen-apply-policy-to-screen-alternatives.patch \
-        file://0025-fc-usermanage-apply-policy-to-usermanage-alternative.patch \
-        file://0026-fc-getty-add-file-context-to-start_getty.patch \
-        file://0027-fc-init-add-file-context-to-etc-network-if-files.patch \
-        file://0028-fc-vlock-apply-policy-to-vlock-alternatives.patch \
-        file://0029-fc-cron-apply-policy-to-etc-init.d-crond.patch \
-        file://0030-fc-sysnetwork-update-file-context-for-ifconfig.patch \
-        file://0031-file_contexts.subs_dist-set-aliase-for-root-director.patch \
-        file://0032-policy-modules-system-logging-add-rules-for-the-syml.patch \
-        file://0033-policy-modules-system-logging-add-rules-for-syslogd-.patch \
-        file://0034-policy-modules-kernel-files-add-rules-for-the-symlin.patch \
-        file://0035-policy-modules-system-logging-fix-auditd-startup-fai.patch \
-        file://0036-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch \
-        file://0037-policy-modules-system-modutils-allow-mod_t-to-access.patch \
-        file://0038-policy-modules-services-avahi-allow-avahi_t-to-watch.patch \
-        file://0039-policy-modules-system-getty-allow-getty_t-to-search-.patch \
-        file://0040-policy-modules-services-bluetooth-fix-bluetoothd-sta.patch \
-        file://0041-policy-modules-roles-sysadm-allow-sysadm-to-run-rpci.patch \
-        file://0042-policy-modules-services-rpc-add-capability-dac_read_.patch \
-        file://0043-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch \
-        file://0044-policy-modules-services-rngd-fix-security-context-fo.patch \
-        file://0045-policy-modules-services-ssh-allow-ssh_keygen_t-to-re.patch \
-        file://0046-policy-modules-services-ssh-make-respective-init-scr.patch \
-        file://0047-policy-modules-kernel-terminal-allow-loging-to-reset.patch \
-        file://0048-policy-modules-system-selinuxutil-allow-semanage_t-t.patch \
-        file://0049-policy-modules-system-systemd-enable-support-for-sys.patch \
-        file://0050-policy-modules-system-systemd-fix-systemd-resolved-s.patch \
-        file://0051-policy-modules-system-init-add-capability2-bpf-and-p.patch \
-        file://0052-policy-modules-system-systemd-allow-systemd_logind_t.patch \
-        file://0053-policy-modules-system-logging-set-label-devlog_t-to-.patch \
-        file://0054-policy-modules-system-systemd-support-systemd-user.patch \
-        file://0055-policy-modules-system-systemd-allow-systemd-generato.patch \
-        file://0056-policy-modules-system-systemd-allow-systemd_backligh.patch \
-        file://0057-policy-modules-system-logging-fix-systemd-journald-s.patch \
-        file://0058-policy-modules-services-cron-allow-crond_t-to-search.patch \
-        file://0059-policy-modules-services-crontab-allow-sysadm_r-to-ru.patch \
-        file://0060-policy-modules-system-sysnetwork-support-priviledge-.patch \
-        file://0061-policy-modules-services-acpi-allow-acpid-to-watch-th.patch \
-        file://0062-policy-modules-system-setrans-allow-setrans-to-acces.patch \
-        file://0063-policy-modules-system-modutils-allow-kmod_t-to-write.patch \
-        file://0064-policy-modules-roles-sysadm-allow-sysadm_t-to-watch-.patch \
-        file://0065-policy-modules-system-selinux-allow-setfiles_t-to-re.patch \
-        file://0066-policy-modules-system-mount-make-mount_t-domain-MLS-.patch \
-        file://0067-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch \
-        file://0068-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch \
-        file://0069-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch \
-        file://0070-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch \
-        file://0071-policy-modules-system-init-make-init_t-MLS-trusted-f.patch \
-        file://0072-policy-modules-system-systemd-make-systemd-tmpfiles_.patch \
-        file://0073-policy-modules-system-logging-add-the-syslogd_t-to-t.patch \
-        file://0074-policy-modules-system-init-make-init_t-MLS-trusted-f.patch \
-        file://0075-policy-modules-system-init-all-init_t-to-read-any-le.patch \
-        file://0076-policy-modules-system-logging-allow-auditd_t-to-writ.patch \
-        file://0077-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch \
-        file://0078-policy-modules-system-systemd-make-systemd-logind-do.patch \
-        file://0079-policy-modules-system-systemd-systemd-user-sessions-.patch \
-        file://0080-policy-modules-system-systemd-systemd-make-systemd_-.patch \
-        file://0081-policy-modules-services-ntp-make-nptd_t-MLS-trusted-.patch \
-        file://0082-policy-modules-system-setrans-allow-setrans_t-use-fd.patch \
-        file://0083-policy-modules-services-acpi-make-acpid_t-domain-MLS.patch \
-        file://0084-policy-modules-services-avahi-make-avahi_t-MLS-trust.patch \
-        file://0085-policy-modules-services-bluetooth-make-bluetooth_t-d.patch \
-        file://0086-policy-modules-system-sysnetwork-make-dhcpc_t-domain.patch \
-        file://0087-policy-modules-services-inetd-make-inetd_t-domain-ML.patch \
-        file://0088-policy-modules-services-bind-make-named_t-domain-MLS.patch \
-        file://0089-policy-modules-services-rpc-make-rpcd_t-MLS-trusted-.patch \
-        file://0090-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch \
-        file://0091-fc-usermanage-update-file-context-for-chfn-chsh.patch \
+        file://0007-fc-hwclock-add-hwclock-alternatives.patch \
+        file://0008-fc-dmesg-apply-policy-to-dmesg-alternatives.patch \
+        file://0009-fc-ssh-apply-policy-to-ssh-alternatives.patch \
+        file://0010-fc-sysnetwork-apply-policy-to-network-commands-alter.patch \
+        file://0011-fc-udev-apply-policy-to-udevadm-in-libexec.patch \
+        file://0012-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch \
+        file://0013-fc-su-apply-policy-to-su-alternatives.patch \
+        file://0014-fc-fstools-fix-real-path-for-fstools.patch \
+        file://0015-fc-init-fix-update-alternatives-for-sysvinit.patch \
+        file://0016-fc-brctl-apply-policy-to-brctl-alternatives.patch \
+        file://0017-fc-corecommands-apply-policy-to-nologin-alternatives.patch \
+        file://0018-fc-locallogin-apply-policy-to-sulogin-alternatives.patch \
+        file://0019-fc-ntp-apply-policy-to-ntpd-alternatives.patch \
+        file://0020-fc-kerberos-apply-policy-to-kerberos-alternatives.patch \
+        file://0021-fc-ldap-apply-policy-to-ldap-alternatives.patch \
+        file://0022-fc-postgresql-apply-policy-to-postgresql-alternative.patch \
+        file://0023-fc-screen-apply-policy-to-screen-alternatives.patch \
+        file://0024-fc-usermanage-apply-policy-to-usermanage-alternative.patch \
+        file://0025-fc-getty-add-file-context-to-start_getty.patch \
+        file://0026-fc-vlock-apply-policy-to-vlock-alternatives.patch \
+        file://0027-fc-add-fcontext-for-init-scripts-and-systemd-service.patch \
+        file://0028-file_contexts.subs_dist-set-aliase-for-root-director.patch \
+        file://0029-policy-modules-system-logging-add-rules-for-the-syml.patch \
+        file://0030-policy-modules-system-logging-add-rules-for-syslogd-.patch \
+        file://0031-policy-modules-kernel-files-add-rules-for-the-symlin.patch \
+        file://0032-policy-modules-system-logging-fix-auditd-startup-fai.patch \
+        file://0033-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch \
+        file://0034-policy-modules-system-modutils-allow-mod_t-to-access.patch \
+        file://0035-policy-modules-system-getty-allow-getty_t-to-search-.patch \
+        file://0036-policy-modules-services-bluetooth-allow-bluetooth_t-.patch \
+        file://0037-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch \
+        file://0038-policy-modules-services-ssh-do-not-audit-attempts-by.patch \
+        file://0039-policy-modules-admin-usermanage-allow-useradd-to-rel.patch \
+        file://0040-policy-modules-system-systemd-enable-support-for-sys.patch \
+        file://0041-policy-modules-system-systemd-fix-systemd-resolved-s.patch \
+        file://0042-policy-modules-system-systemd-allow-systemd_-_t-to-g.patch \
+        file://0043-policy-modules-system-systemd-allow-systemd_hostname.patch \
+        file://0044-policy-modules-system-logging-fix-syslogd-failures-f.patch \
+        file://0045-policy-modules-system-systemd-systemd-user-fixes.patch \
+        file://0046-policy-modules-system-sysnetwork-support-priviledge-.patch \
+        file://0047-policy-modules-services-acpi-allow-acpid-to-watch-th.patch \
+        file://0048-policy-modules-system-modutils-allow-kmod_t-to-write.patch \
+        file://0049-policy-modules-admin-su-allow-su-to-map-SELinux-stat.patch \
+        file://0050-policy-modules-system-mount-make-mount_t-domain-MLS-.patch \
+        file://0051-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch \
+        file://0052-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch \
+        file://0053-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch \
+        file://0054-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch \
+        file://0055-policy-modules-system-init-make-init_t-MLS-trusted-f.patch \
+        file://0056-policy-modules-system-systemd-make-systemd-tmpfiles_.patch \
+        file://0057-policy-modules-system-systemd-systemd-make-systemd_-.patch \
+        file://0058-policy-modules-system-logging-add-the-syslogd_t-to-t.patch \
+        file://0059-policy-modules-system-init-make-init_t-MLS-trusted-f.patch \
+        file://0060-policy-modules-system-init-all-init_t-to-read-any-le.patch \
+        file://0061-policy-modules-system-logging-allow-auditd_t-to-writ.patch \
+        file://0062-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch \
+        file://0063-policy-modules-system-setrans-allow-setrans_t-use-fd.patch \
+        file://0064-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch \
+        file://0065-policy-modules-system-logging-make-syslogd_runtime_t.patch \
         "
 
 S = "${WORKDIR}/refpolicy"
@@ -138,8 +110,10 @@ inherit python3native
 
 PARALLEL_MAKE = ""
 
+DEFAULT_ENFORCING ??= "enforcing"
+
 POLICY_NAME ?= "${POLICY_TYPE}"
-POLICY_DISTRO ?= "redhat"
+POLICY_DISTRO ?= "debian"
 POLICY_UBAC ?= "n"
 POLICY_UNK_PERMS ?= "allow"
 POLICY_DIRECT_INITRC ?= "y"
@@ -238,7 +212,7 @@ path = ${STAGING_DIR_NATIVE}${sbindir_native}/sefcontext_compile
 args = \$@
 [end]
 
-policy-version = 31
+policy-version = 33
 EOF
 
 	# Create policy store and build the policy
diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-security/refpolicy/refpolicy_git.inc
index 1d56403..9eb7374 100644
--- a/recipes-security/refpolicy/refpolicy_git.inc
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -1,8 +1,8 @@
-PV = "2.20210203+git${SRCPV}"
+PV = "2.20210908+git${SRCPV}"
 
 SRC_URI = "git://github.com/SELinuxProject/refpolicy.git;protocol=https;branch=master;name=refpolicy;destsuffix=refpolicy"
 
-SRCREV_refpolicy ?= "1167739da1882f9c89281095d2595da5ea2d9d6b"
+SRCREV_refpolicy ?= "42c9eb9bcd2db1c279a576c67a937fa14ab6ffb7"
 
 UPSTREAM_CHECK_GITTAGREGEX = "RELEASE_(?P<pver>\d+_\d+)"
 
-- 
2.17.1


