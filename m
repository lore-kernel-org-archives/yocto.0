Received: from NAM02-SN1-obe.outbound.protection.outlook.com (NAM02-SN1-obe.outbound.protection.outlook.com [40.107.77.85])
 by mx.groups.io with SMTP id smtpd.web10.5890.1614675182921348676
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 00:53:03 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=Wov213G0;
 spf=pass (domain: windriver.com, ip: 40.107.77.85, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AEtgieMTw0UWSsZsaTFXxIzlShBEw0Xor1BSg1LOhwo0moA+tAP6Ntw6N5++hvPljJjwku9SJ+XlCWHNaoyYON12cr+lt+iIg1eTRn2LHr/6Qp9Al6eGx+jqIHgMh3DVVTL2Z8dbGE6zYnaU1kjOpMZ4JaCgQEnUBVtJtIikhmuXQ8jPgkq20Up1C/PGrtmS4wfWPL54m/TpN+0R2t5DSZLWyFwXqVmpJ6b37qEnLUID2IG7KxdA0CS6J9qBPuQcGfpVMJVC22WAUrE6u5By5Tk2g0EmRDmbKAtHnkkpRlZR89xLVyg9LLt/EaFd+eVcMxofiwOnD2o3KeW6FWat/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2qwTIGIKrL31AsVBZq7umHzfhvg8oO471TvT3Z/nZvQ=;
 b=dmq/K6CVyIgxF6XGPvGv/Jolzfjvip8MsJjreQxHeb+SF9LhJ9KVrjFvzqC086pGmqQgTQcWJMbx0WhxFyzhPWZj3FE3ssX/jizNCOxp2BwsoPBDMNLW6/l6jTSpWArUHuOFg1t5wj2HYvaXA5JQ7EfepDdSsvkfAZlqwVNpF/X0oTMKjUQcuLSGy255TwHh70UNnInYxDkE0QTEfTDkzbgvgk4MT4kH2GFm154kTKFWQGg2h0VQJ6aZN9+S5h8ytp54Aq9RoH8wGcgmfsBj5JvyKYrb/3eaLI+HGTina5jWllaDM7R9po6ryIX0zBliNKbPVdyeyoWtaENEpGPItQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2qwTIGIKrL31AsVBZq7umHzfhvg8oO471TvT3Z/nZvQ=;
 b=Wov213G0ozNZ8BQY34YQM6nFUxynDyoqnifCYMmlMYnmePgpAA6Z6IM6E01TxFnMi55OTsFfqwWB7wTfKny67qVGt/gLJEl+T6ZU15lKtCN4+iF6yiXFAtnag92UxezDBL4Ef1nKFEjqfnSBaYYpfoeK/DGbZDiwLwj+BGmsixE=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR1101MB2352.namprd11.prod.outlook.com (2603:10b6:300:7e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.26; Tue, 2 Mar
 2021 08:52:57 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3890.023; Tue, 2 Mar 2021
 08:52:57 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 7/7] refpolicy: upgrade 20200229+git -> 20210203+git
Date: Tue,  2 Mar 2021 16:52:06 +0800
Message-ID: <20210302085206.56794-8-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210302085206.56794-1-yi.zhao@windriver.com>
References: <20210302085206.56794-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2P15301CA0009.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::19) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
Return-Path: yi.zhao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2P15301CA0009.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.8 via Frontend Transport; Tue, 2 Mar 2021 08:52:32 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 08e97ee0-52d9-4fbd-d5f9-08d8dd588512
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2352:
X-Microsoft-Antispam-PRVS: 
	<MWHPR1101MB23522BAC8A2DE343746944E2F9999@MWHPR1101MB2352.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1247;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	s7hT1Y+SgbvlkV6sRdpLm7cRTk86ZmZhtZ5TMgB+PkdQutufe3KabciAKdlmELnuwDMjrWrmNUONlpp5ikPKzn2Lq4IL5hWgfFlvNzEWpCpDzWTES8JlLSX7RiSqzDC3w8nlRkxdX/Em1PHUp+RJJ2KYcCAmCXzN83ipPvMd50YBOtnXSN1lHb0B2AdlFUQtdTT6iySQJlrZbBsLAMM0bbILW+OG8xBtxFwQVmMCuTy2H+9uxWaNs6XDZmQAFDfLYPJOotrVKh5Zdh3xP/lKM64naYs25g2kLaUYlzUSR408hOR8e3UNu9TmSoc0HQNiHEy9stZAaRTScA9tRkBFJOn23AMFm9Pn8i8u8wvZUAwG+U4cA/evidQN9GeZsyi0z9ronMIe8aTqrnX1s8kaB1KU58pgIi+m0jViS6SGfSr4KFL368/LEMWBzKlmn/NeX9O8sblHLZKg/DS6LEAxVXGTVVl0iNGxQsdWaFc2/R/Aq57hGGx1HNJslgw0/zzg9JhpdvV0w7XT04ZAbq2GUY3u2KjW1ziNPB39q9PnYbtiLOxVVGUk71b5id9bPzrl
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(39850400004)(366004)(346002)(376002)(136003)(2616005)(36756003)(2906002)(8676002)(956004)(6666004)(53546011)(316002)(44832011)(478600001)(6506007)(5660300002)(6512007)(30864003)(83380400001)(66476007)(52116002)(66556008)(66946007)(8936002)(186003)(16526019)(86362001)(1076003)(6486002)(26005)(579004)(569008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?fQH+9sdWGwAlBX6hQxBSroEVA/JHAvYICn+emqf76DLIkzmYvc2eEO+WOJgS?=
 =?us-ascii?Q?sWeHIl15PludLnwy9IVt19qKG/kN2k5iSOKZEKyso1N0CEh5qA6DtSHo6x3z?=
 =?us-ascii?Q?ttv8xzj/fPZtm29jCL1saix7qvuNHntbYet8nKSr6DK3ID8yJIZkUGQBQaBJ?=
 =?us-ascii?Q?/rM4lP+NZZHSJQfG4UnJUL8Pl2CRHuGiw8AJRa2DPwSMIBwEs3++olr6JHER?=
 =?us-ascii?Q?8K6q/dDtczgsFrpd7IZNnQMtmIS7/9vRtTQj7Mk66e03znDLJ8uVwZmgf2ou?=
 =?us-ascii?Q?XsGg3c4HCVqVe0muBomRYpT2WqRvpmBzSBmsPz2awOd4zHZg+6Tb0Eoli3Qn?=
 =?us-ascii?Q?855kpPC0NpyeZ1j3VKzxQyXeKNMjZK6RtRQJr3+Dr7xBIt5S2BPXLGSMh6ih?=
 =?us-ascii?Q?tAKQI/4d7NY2k6BYXzpEvJ6BO2wn3mByTjcze/pcoh0JywGDnR/1cPyo8cL3?=
 =?us-ascii?Q?R78UKt8kRKk2Lb3kHXZ68v8iBsjTmqUDrIAAA52K8pWIwy+y88K7GQPjbP+P?=
 =?us-ascii?Q?01jdVn/ox29cHCLJRk+PQz/0I6TVvwpCwNdtsfitpxdpCDSw9KzcrlV1qPAE?=
 =?us-ascii?Q?xxgM9kAuSlTaO3AR4+LXIM5nyCq4+uygz09OFGkxklH1y2UonRjV3wWLMFfo?=
 =?us-ascii?Q?zmkN2jsl1UC9joiNArkpZzgQoMlTCmv45goSFcXeQDI6gi7culfn+k/GeoI/?=
 =?us-ascii?Q?pym8l9ScnWmE4B5ZliQ7PjbAd1K1SEHVvuwlfVu6t1vEOno2QRevNkWgXhk/?=
 =?us-ascii?Q?8tqoVXrbhIXdLgTx+NkNkS9CYbpBfWpe1HIYeoTqtg6rg/Fgl4EJ4Ahmen+4?=
 =?us-ascii?Q?c9SO5i1hrVqVYXySPPjdQlRkwrdyke258KV4ft+bi/3WeorOOSFvEi5IwRNH?=
 =?us-ascii?Q?kkFW36R/Vo3Wsg70Zj/NfEwD8PH1/q7zpbZm3qqRv+l4u+ZfgBSSkR7RcEYI?=
 =?us-ascii?Q?y2EiGpi9mh3NYFkuKwoyeul0x9J430MU9zasoeu+rvYOm3vw4bW3DZVxfK+R?=
 =?us-ascii?Q?61ombF4DCLPkncRk1a6LjWCX9aU7+mCftd5WZorOvB49FP3Yx20tVwO4gfeS?=
 =?us-ascii?Q?LchbhEisXFjdsZdt4uyIKmKI9P8HsjeD+lU6gew3TvulHGfeADTbqEYpOKKv?=
 =?us-ascii?Q?5ueXTDD6rL/EWfiRlogZ020Tf4m5vy01j852nn7VfGCJTVv9CR1hUze1X9nC?=
 =?us-ascii?Q?ce6cFdCVFN+JcaNmwqB/11TnqBnyPRo+zw5N4UByKdsWngM4b4YfRQWmxL6x?=
 =?us-ascii?Q?Qy2J4FGLeHjgvW7E/AuIcu4Sk2dKb474PJZC0SRYGM8cojcSM/5+71q0S89S?=
 =?us-ascii?Q?R0DSZgyEH1Kg1Wq4V6MHAtqP?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08e97ee0-52d9-4fbd-d5f9-08d8dd588512
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2021 08:52:57.8038
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i9xY4JTOOF9hZREsK1DE6Vx2LgRbgInK6C9CSZEelcqatGDL/XkVIzusCKGBTaKGR+aS+kAC4HKeCnIQIa3yQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2352
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

* Update to latest git rev.
* Drop obsolete and unused patches.
* Rebase patches.
* Add patches to make systemd --user work.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../refpolicy/refpolicy-minimum_git.bb        |   1 +
 .../refpolicy/refpolicy-targeted_git.bb       |   2 -
 ...tile-alias-common-var-volatile-paths.patch |   6 +-
 ...inimum-make-sysadmin-module-optional.patch |  10 +-
 ...ed-make-unconfined_u-the-default-sel.patch |  20 +-
 ...box-set-aliases-for-bin-sbin-and-usr.patch |   6 +-
 ...efpolicy-minimum-enable-nscd_use_shm.patch |  35 ++++
 ...y-policy-to-common-yocto-hostname-al.patch |   2 +-
 ...sr-bin-bash-context-to-bin-bash.bash.patch |   4 +-
 ...abel-resolv.conf-in-var-run-properly.patch |   6 +-
 ...-apply-login-context-to-login.shadow.patch |   2 +-
 .../0007-fc-bind-fix-real-path-for-bind.patch |   4 +-
 ...-fc-hwclock-add-hwclock-alternatives.patch |   2 +-
 ...g-apply-policy-to-dmesg-alternatives.patch |   2 +-
 ...ssh-apply-policy-to-ssh-alternatives.patch |   2 +-
 ...work-apply-policy-to-ip-alternatives.patch |   6 +-
 ...v-apply-policy-to-udevadm-in-libexec.patch |   6 +-
 ...ply-rpm_exec-policy-to-cpio-binaries.patch |   4 +-
 ...c-su-apply-policy-to-su-alternatives.patch |   2 +-
 ...fc-fstools-fix-real-path-for-fstools.patch |   2 +-
 ...fix-update-alternatives-for-sysvinit.patch |   6 +-
 ...l-apply-policy-to-brctl-alternatives.patch |   2 +-
 ...apply-policy-to-nologin-alternatives.patch |   6 +-
 ...apply-policy-to-sulogin-alternatives.patch |   2 +-
 ...tp-apply-policy-to-ntpd-alternatives.patch |   2 +-
 ...pply-policy-to-kerberos-alternatives.patch |   2 +-
 ...ap-apply-policy-to-ldap-alternatives.patch |   2 +-
 ...ply-policy-to-postgresql-alternative.patch |   2 +-
 ...-apply-policy-to-screen-alternatives.patch |   6 +-
 ...ply-policy-to-usermanage-alternative.patch |   2 +-
 ...etty-add-file-context-to-start_getty.patch |   2 +-
 ...file-context-to-etc-network-if-files.patch |   6 +-
 ...k-apply-policy-to-vlock-alternatives.patch |   2 +-
 ...ron-apply-policy-to-etc-init.d-crond.patch |   2 +-
 ...rk-update-file-context-for-ifconfig.patch} |   6 +-
 ...s_dist-set-aliase-for-root-director.patch} |   6 +-
 ...stem-logging-add-rules-for-the-syml.patch} |  43 +---
 ...ystem-logging-add-domain-rules-for-t.patch |  37 ----
 ...stem-logging-add-rules-for-syslogd-.patch} |   6 +-
 ...ernel-files-add-rules-for-the-symlin.patch |  24 +--
 ...ernel-terminal-add-rules-for-bsdpty_.patch | 124 ------------
 ...ystem-logging-fix-auditd-startup-fai.patch |  64 ++++++
 ...ernel-terminal-don-t-audit-tty_devic.patch |   4 +-
 ...ystem-modutils-allow-mod_t-to-access.patch |  67 +++++++
 ...rvices-avahi-allow-avahi_t-to-watch.patch} |   8 +-
 ...ystem-getty-allow-getty_t-watch-gett.patch |  42 ----
 ...ervices-bluetooth-allow-bluetooth_t-.patch |  65 ------
 ...ystem-getty-allow-getty_t-to-search-.patch |  32 +++
 ...ervices-bluetooth-fix-bluetoothd-sta.patch |  88 ++++++++
 ...les-sysadm-allow-sysadm-to-run-rpci.patch} |   6 +-
 ...rvices-rpc-add-capability-dac_read_.patch} |   6 +-
 ...rvices-rpcbind-allow-rpcbind_t-to-c.patch} |  24 ++-
 ...rvices-rngd-fix-security-context-fo.patch} |  29 +--
 ...ystem-authlogin-allow-chkpwd_t-to-ma.patch |  34 ----
 ...ervices-ssh-allow-ssh_keygen_t-to-re.patch |  34 ++++
 ...ystem-udev-allow-udevadm_t-to-search.patch |  34 ----
 ...rvices-ssh-make-respective-init-scr.patch} |   4 +-
 ...dev-do-not-audit-udevadm_t-to-read-w.patch |  37 ----
 ...rnel-terminal-allow-loging-to-reset.patch} |   4 +-
 ...ervices-rdisc-allow-rdisc_t-to-searc.patch |  34 ----
 ...ystem-logging-fix-auditd-startup-fai.patch |  52 -----
 ...stem-selinuxutil-allow-semanage_t-t.patch} |   6 +-
 ...stem-systemd-enable-support-for-sys.patch} |  10 +-
 ...ystem-systemd-fix-systemd-resolved-s.patch |  69 +++++++
 ...ystem-init-add-capability2-bpf-and-p.patch |  37 ++++
 ...ystem-sysnetwork-allow-ifconfig_t-to.patch |  35 ----
 ...ystem-systemd-allow-systemd_logind_t.patch |  37 ++++
 ...ervices-ntp-allow-ntpd_t-to-watch-sy.patch |  55 -----
 ...ystem-logging-set-label-devlog_t-to-.patch |  86 ++++++++
 ...-system-systemd-support-systemd-user.patch | 189 ++++++++++++++++++
 ...ystem-logging-fix-systemd-journald-s.patch |  74 -------
 ...ystem-systemd-allow-systemd-generato.patch |  69 +++++++
 ...ystem-systemd-allow-systemd_backligh.patch |  35 ++++
 ...ystem-logging-fix-systemd-journald-s.patch |  47 +++++
 ...ystem-systemd-add-capability-mknod-f.patch |  35 ----
 ...ervices-cron-allow-crond_t-to-search.patch |  34 ++++
 ...ystem-systemd-systemd-gpt-auto-gener.patch |  35 ----
 ...ervices-crontab-allow-sysadm_r-to-ru.patch |  46 +++++
 ...ystem-sysnetwork-support-priviledge-.patch | 120 +++++++++++
 ...ervices-acpi-allow-acpid-to-watch-th.patch |  35 ++++
 ...stem-setrans-allow-setrans-to-acces.patch} |  19 +-
 ...ystem-modutils-allow-kmod_t-to-write.patch |  35 ++++
 ...les-sysadm-allow-sysadm_t-to-watch-.patch} |  17 +-
 ...ystem-selinux-allow-setfiles_t-to-re.patch |  44 ++++
 ...stem-mount-make-mount_t-domain-MLS-.patch} |   6 +-
 ...les-sysadm-MLS-sysadm-rw-to-clearan.patch} |   4 +-
 ...rvices-rpc-make-nfsd_t-domain-MLS-t.patch} |  31 +--
 ...min-dmesg-make-dmesg_t-MLS-trusted-.patch} |   4 +-
 ...rnel-kernel-make-kernel_t-MLS-trust.patch} |   4 +-
 ...stem-init-make-init_t-MLS-trusted-f.patch} |   6 +-
 ...stem-systemd-make-systemd-tmpfiles_.patch} |   6 +-
 ...stem-logging-add-the-syslogd_t-to-t.patch} |   8 +-
 ...stem-init-make-init_t-MLS-trusted-f.patch} |   6 +-
 ...stem-init-all-init_t-to-read-any-le.patch} |   6 +-
 ...ystem-systemd-systemd-networkd-make-.patch |  36 ----
 ...stem-logging-allow-auditd_t-to-writ.patch} |   6 +-
 ...ystem-systemd-systemd-resolved-make-.patch |  40 ----
 ...rnel-kernel-make-kernel_t-MLS-trust.patch} |   4 +-
 ...ystem-systemd-make-systemd-modules_t.patch |  36 ----
 ...stem-systemd-make-systemd-logind-do.patch} |   6 +-
 ...ystem-systemd-systemd-gpt-auto-gener.patch |  70 -------
 ...stem-systemd-systemd-user-sessions-.patch} |   6 +-
 ...ystem-systemd-systemd-make-systemd_-.patch | 162 +++++++++++++++
 ...rvices-ntp-make-nptd_t-MLS-trusted-.patch} |   6 +-
 ...ystem-setrans-allow-setrans_t-use-fd.patch |  30 +++
 ...ervices-acpi-make-acpid_t-domain-MLS.patch |  35 ++++
 ...rvices-avahi-make-avahi_t-MLS-trust.patch} |   4 +-
 ...ervices-bluetooth-make-bluetooth_t-d.patch |  36 ++++
 ...ystem-sysnetwork-make-dhcpc_t-domain.patch |  38 ++++
 ...ervices-inetd-make-inetd_t-domain-ML.patch |  36 ++++
 ...ervices-bind-make-named_t-domain-MLS.patch |  38 ++++
 ...rvices-rpc-make-rpcd_t-MLS-trusted-.patch} |   6 +-
 ...ystem-systemd-make-_systemd_t-MLS-tr.patch |  42 ++++
 .../refpolicy/refpolicy_common.inc            | 113 ++++++-----
 recipes-security/refpolicy/refpolicy_git.inc  |   4 +-
 115 files changed, 1904 insertions(+), 1182 deletions(-)
 create mode 100644 recipes-security/refpolicy/refpolicy/0002-refpolicy-min=
imum-enable-nscd_use_shm.patch
 rename recipes-security/refpolicy/refpolicy/{0081-fc-sysnetwork-update-fil=
e-context-for-ifconfig.patch =3D> 0030-fc-sysnetwork-update-file-context-fo=
r-ifconfig.patch} (89%)
 rename recipes-security/refpolicy/refpolicy/{0030-file_contexts.subs_dist-=
set-aliase-for-root-director.patch =3D> 0031-file_contexts.subs_dist-set-al=
iase-for-root-director.patch} (87%)
 rename recipes-security/refpolicy/refpolicy/{0031-policy-modules-system-lo=
gging-add-rules-for-the-syml.patch =3D> 0032-policy-modules-system-logging-=
add-rules-for-the-syml.patch} (60%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0033-policy-module=
s-system-logging-add-domain-rules-for-t.patch
 rename recipes-security/refpolicy/refpolicy/{0032-policy-modules-system-lo=
gging-add-rules-for-syslogd-.patch =3D> 0033-policy-modules-system-logging-=
add-rules-for-syslogd-.patch} (87%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0035-policy-module=
s-kernel-terminal-add-rules-for-bsdpty_.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0035-policy-module=
s-system-logging-fix-auditd-startup-fai.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0037-policy-module=
s-system-modutils-allow-mod_t-to-access.patch
 rename recipes-security/refpolicy/refpolicy/{0037-policy-modules-services-=
avahi-allow-avahi_t-to-watch.patch =3D> 0038-policy-modules-services-avahi-=
allow-avahi_t-to-watch.patch} (87%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0038-policy-module=
s-system-getty-allow-getty_t-watch-gett.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0039-policy-module=
s-services-bluetooth-allow-bluetooth_t-.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0039-policy-module=
s-system-getty-allow-getty_t-to-search-.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0040-policy-module=
s-services-bluetooth-fix-bluetoothd-sta.patch
 rename recipes-security/refpolicy/refpolicy/{0040-policy-modules-roles-sys=
adm-allow-sysadm-to-run-rpci.patch =3D> 0041-policy-modules-roles-sysadm-al=
low-sysadm-to-run-rpci.patch} (87%)
 rename recipes-security/refpolicy/refpolicy/{0041-policy-modules-services-=
rpc-add-capability-dac_read_.patch =3D> 0042-policy-modules-services-rpc-ad=
d-capability-dac_read_.patch} (88%)
 rename recipes-security/refpolicy/refpolicy/{0042-policy-modules-services-=
rpcbind-allow-rpcbind_t-to-c.patch =3D> 0043-policy-modules-services-rpcbin=
d-allow-rpcbind_t-to-c.patch} (61%)
 rename recipes-security/refpolicy/refpolicy/{0043-policy-modules-services-=
rngd-fix-security-context-fo.patch =3D> 0044-policy-modules-services-rngd-f=
ix-security-context-fo.patch} (66%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0044-policy-module=
s-system-authlogin-allow-chkpwd_t-to-ma.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0045-policy-module=
s-services-ssh-allow-ssh_keygen_t-to-re.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0045-policy-module=
s-system-udev-allow-udevadm_t-to-search.patch
 rename recipes-security/refpolicy/refpolicy/{0049-policy-modules-services-=
ssh-make-respective-init-scr.patch =3D> 0046-policy-modules-services-ssh-ma=
ke-respective-init-scr.patch} (89%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0046-policy-module=
s-udev-do-not-audit-udevadm_t-to-read-w.patch
 rename recipes-security/refpolicy/refpolicy/{0050-policy-modules-kernel-te=
rminal-allow-loging-to-reset.patch =3D> 0047-policy-modules-kernel-terminal=
-allow-loging-to-reset.patch} (90%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0047-policy-module=
s-services-rdisc-allow-rdisc_t-to-searc.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0048-policy-module=
s-system-logging-fix-auditd-startup-fai.patch
 rename recipes-security/refpolicy/refpolicy/{0051-policy-modules-system-se=
linuxutil-allow-semanage_t-t.patch =3D> 0048-policy-modules-system-selinuxu=
til-allow-semanage_t-t.patch} (84%)
 rename recipes-security/refpolicy/refpolicy/{0054-policy-modules-system-sy=
stemd-enable-support-for-sys.patch =3D> 0049-policy-modules-system-systemd-=
enable-support-for-sys.patch} (89%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0050-policy-module=
s-system-systemd-fix-systemd-resolved-s.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0051-policy-module=
s-system-init-add-capability2-bpf-and-p.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0052-policy-module=
s-system-sysnetwork-allow-ifconfig_t-to.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0052-policy-module=
s-system-systemd-allow-systemd_logind_t.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0053-policy-module=
s-services-ntp-allow-ntpd_t-to-watch-sy.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0053-policy-module=
s-system-logging-set-label-devlog_t-to-.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0054-policy-module=
s-system-systemd-support-systemd-user.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0055-policy-module=
s-system-logging-fix-systemd-journald-s.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0055-policy-module=
s-system-systemd-allow-systemd-generato.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0056-policy-module=
s-system-systemd-allow-systemd_backligh.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0057-policy-module=
s-system-logging-fix-systemd-journald-s.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0057-policy-module=
s-system-systemd-add-capability-mknod-f.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0058-policy-module=
s-services-cron-allow-crond_t-to-search.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy/0058-policy-module=
s-system-systemd-systemd-gpt-auto-gener.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0059-policy-module=
s-services-crontab-allow-sysadm_r-to-ru.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0060-policy-module=
s-system-sysnetwork-support-priviledge-.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0061-policy-module=
s-services-acpi-allow-acpid-to-watch-th.patch
 rename recipes-security/refpolicy/refpolicy/{0063-policy-modules-system-se=
trans-allow-setrans-to-acces.patch =3D> 0062-policy-modules-system-setrans-=
allow-setrans-to-acces.patch} (71%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0063-policy-module=
s-system-modutils-allow-kmod_t-to-write.patch
 rename recipes-security/refpolicy/refpolicy/{0056-policy-modules-roles-sys=
adm-allow-sysadm_t-to-watch-.patch =3D> 0064-policy-modules-roles-sysadm-al=
low-sysadm_t-to-watch-.patch} (60%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0065-policy-module=
s-system-selinux-allow-setfiles_t-to-re.patch
 rename recipes-security/refpolicy/refpolicy/{0062-policy-modules-system-mo=
unt-make-mount_t-domain-MLS-.patch =3D> 0066-policy-modules-system-mount-ma=
ke-mount_t-domain-MLS-.patch} (85%)
 rename recipes-security/refpolicy/refpolicy/{0061-policy-modules-roles-sys=
adm-MLS-sysadm-rw-to-clearan.patch =3D> 0067-policy-modules-roles-sysadm-ML=
S-sysadm-rw-to-clearan.patch} (92%)
 rename recipes-security/refpolicy/refpolicy/{0059-policy-modules-services-=
rpc-fix-policy-for-nfsserver.patch =3D> 0068-policy-modules-services-rpc-ma=
ke-nfsd_t-domain-MLS-t.patch} (61%)
 rename recipes-security/refpolicy/refpolicy/{0064-policy-modules-admin-dme=
sg-make-dmesg_t-MLS-trusted-.patch =3D> 0069-policy-modules-admin-dmesg-mak=
e-dmesg_t-MLS-trusted-.patch} (91%)
 rename recipes-security/refpolicy/refpolicy/{0065-policy-modules-kernel-ke=
rnel-make-kernel_t-MLS-trust.patch =3D> 0070-policy-modules-kernel-kernel-m=
ake-kernel_t-MLS-trust.patch} (96%)
 rename recipes-security/refpolicy/refpolicy/{0066-policy-modules-system-in=
it-make-init_t-MLS-trusted-f.patch =3D> 0071-policy-modules-system-init-mak=
e-init_t-MLS-trusted-f.patch} (90%)
 rename recipes-security/refpolicy/refpolicy/{0067-policy-modules-system-sy=
stemd-make-systemd-tmpfiles_.patch =3D> 0072-policy-modules-system-systemd-=
make-systemd-tmpfiles_.patch} (92%)
 rename recipes-security/refpolicy/refpolicy/{0068-policy-modules-system-lo=
gging-add-the-syslogd_t-to-t.patch =3D> 0073-policy-modules-system-logging-=
add-the-syslogd_t-to-t.patch} (86%)
 rename recipes-security/refpolicy/refpolicy/{0069-policy-modules-system-in=
it-make-init_t-MLS-trusted-f.patch =3D> 0074-policy-modules-system-init-mak=
e-init_t-MLS-trusted-f.patch} (86%)
 rename recipes-security/refpolicy/refpolicy/{0070-policy-modules-system-in=
it-all-init_t-to-read-any-le.patch =3D> 0075-policy-modules-system-init-all=
-init_t-to-read-any-le.patch} (88%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0075-policy-module=
s-system-systemd-systemd-networkd-make-.patch
 rename recipes-security/refpolicy/refpolicy/{0071-policy-modules-system-lo=
gging-allow-auditd_t-to-writ.patch =3D> 0076-policy-modules-system-logging-=
allow-auditd_t-to-writ.patch} (88%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0076-policy-module=
s-system-systemd-systemd-resolved-make-.patch
 rename recipes-security/refpolicy/refpolicy/{0072-policy-modules-kernel-ke=
rnel-make-kernel_t-MLS-trust.patch =3D> 0077-policy-modules-kernel-kernel-m=
ake-kernel_t-MLS-trust.patch} (90%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0077-policy-module=
s-system-systemd-make-systemd-modules_t.patch
 rename recipes-security/refpolicy/refpolicy/{0073-policy-modules-system-sy=
stemd-make-systemd-logind-do.patch =3D> 0078-policy-modules-system-systemd-=
make-systemd-logind-do.patch} (90%)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0078-policy-module=
s-system-systemd-systemd-gpt-auto-gener.patch
 rename recipes-security/refpolicy/refpolicy/{0074-policy-modules-system-sy=
stemd-systemd-user-sessions-.patch =3D> 0079-policy-modules-system-systemd-=
systemd-user-sessions-.patch} (88%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0080-policy-module=
s-system-systemd-systemd-make-systemd_-.patch
 rename recipes-security/refpolicy/refpolicy/{0079-policy-modules-services-=
ntp-make-nptd_t-MLS-trusted-.patch =3D> 0081-policy-modules-services-ntp-ma=
ke-nptd_t-MLS-trusted-.patch} (89%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0082-policy-module=
s-system-setrans-allow-setrans_t-use-fd.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0083-policy-module=
s-services-acpi-make-acpid_t-domain-MLS.patch
 rename recipes-security/refpolicy/refpolicy/{0080-policy-modules-services-=
avahi-make-avahi_t-MLS-trust.patch =3D> 0084-policy-modules-services-avahi-=
make-avahi_t-MLS-trust.patch} (89%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0085-policy-module=
s-services-bluetooth-make-bluetooth_t-d.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0086-policy-module=
s-system-sysnetwork-make-dhcpc_t-domain.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0087-policy-module=
s-services-inetd-make-inetd_t-domain-ML.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0088-policy-module=
s-services-bind-make-named_t-domain-MLS.patch
 rename recipes-security/refpolicy/refpolicy/{0060-policy-modules-services-=
rpc-make-rpcd_t-MLS-trusted-.patch =3D> 0089-policy-modules-services-rpc-ma=
ke-rpcd_t-MLS-trusted-.patch} (85%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0090-policy-module=
s-system-systemd-make-_systemd_t-MLS-tr.patch

diff --git a/recipes-security/refpolicy/refpolicy-minimum_git.bb b/recipes-=
security/refpolicy/refpolicy-minimum_git.bb
index dc06ccf..c4c9031 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_git.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_git.bb
@@ -13,6 +13,7 @@ domains are unconfined. \
=20
 SRC_URI +=3D " \
         file://0001-refpolicy-minimum-make-sysadmin-module-optional.patch =
\
+        file://0002-refpolicy-minimum-enable-nscd_use_shm.patch \
         "
=20
 POLICY_NAME =3D "minimum"
diff --git a/recipes-security/refpolicy/refpolicy-targeted_git.bb b/recipes=
-security/refpolicy/refpolicy-targeted_git.bb
index e37a083..de81d46 100644
--- a/recipes-security/refpolicy/refpolicy-targeted_git.bb
+++ b/recipes-security/refpolicy/refpolicy-targeted_git.bb
@@ -6,8 +6,6 @@ domain, so they have the same access to the system as if SE=
Linux was not \
 enabled. \
 "
=20
-FILESEXTRAPATHS_prepend :=3D "${THISDIR}/refpolicy-${PV}:"
-
 POLICY_NAME =3D "targeted"
 POLICY_TYPE =3D "mcs"
 POLICY_MLS_SENS =3D "0"
diff --git a/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-ali=
as-common-var-volatile-paths.patch b/recipes-security/refpolicy/refpolicy/0=
001-fc-subs-volatile-alias-common-var-volatile-paths.patch
index be802ec..9f85980 100644
--- a/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-comm=
on-var-volatile-paths.patch
+++ b/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-comm=
on-var-volatile-paths.patch
@@ -1,4 +1,4 @@
-From 7dc492abc2918e770b36099cf079ca9be10598c8 Mon Sep 17 00:00:00 2001
+From 8a6052604e4f39ef9cbab62372006bc6f736dbed Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 16:14:09 -0400
 Subject: [PATCH] fc/subs/volatile: alias common /var/volatile paths
@@ -15,10 +15,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 6 insertions(+)
=20
 diff --git a/config/file_contexts.subs_dist b/config/file_contexts.subs_di=
st
-index 346d920e3..aeb25a5bb 100644
+index 653d25d93..652e1dd35 100644
 --- a/config/file_contexts.subs_dist
 +++ b/config/file_contexts.subs_dist
-@@ -31,3 +31,9 @@
+@@ -32,3 +32,9 @@
  # not for refpolicy intern, but for /var/run using applications,
  # like systemd tmpfiles or systemd socket configurations
  /var/run /run
diff --git a/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-ma=
ke-sysadmin-module-optional.patch b/recipes-security/refpolicy/refpolicy/00=
01-refpolicy-minimum-make-sysadmin-module-optional.patch
index deb27c0..d300edd 100644
--- a/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sysa=
dmin-module-optional.patch
+++ b/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sysa=
dmin-module-optional.patch
@@ -1,4 +1,4 @@
-From efe4d5472fde3d4f043f4e8660c6cc73c7fc1542 Mon Sep 17 00:00:00 2001
+From dc757d6df2314d82029b23b409df8de22a4df45e Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 5 Apr 2019 11:53:28 -0400
 Subject: [PATCH] refpolicy-minimum: make sysadmin module optional
@@ -22,10 +22,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  2 files changed, 11 insertions(+), 7 deletions(-)
=20
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index feed5af5f..6b6b723b8 100644
+index aa57a5661..9b03d3767 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -515,13 +515,15 @@ ifdef(`init_systemd',`
+@@ -527,13 +527,15 @@ ifdef(`init_systemd',`
  		unconfined_write_keys(init_t)
  	')
  ',`
@@ -48,10 +48,10 @@ index feed5af5f..6b6b723b8 100644
  	')
  ')
 diff --git a/policy/modules/system/locallogin.te b/policy/modules/system/l=
ocallogin.te
-index f629b0040..971ca40e5 100644
+index 109980e79..313112371 100644
 --- a/policy/modules/system/locallogin.te
 +++ b/policy/modules/system/locallogin.te
-@@ -267,7 +267,9 @@ userdom_use_unpriv_users_fds(sulogin_t)
+@@ -265,7 +265,9 @@ userdom_use_unpriv_users_fds(sulogin_t)
  userdom_search_user_home_dirs(sulogin_t)
  userdom_use_user_ptys(sulogin_t)
 =20
diff --git a/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-m=
ake-unconfined_u-the-default-sel.patch b/recipes-security/refpolicy/refpoli=
cy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch
index f3244c6..89bc68e 100644
--- a/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unc=
onfined_u-the-default-sel.patch
+++ b/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unc=
onfined_u-the-default-sel.patch
@@ -1,4 +1,4 @@
-From 8613549f3aad37ce3bec8513057f0f893d4cc9bd Mon Sep 17 00:00:00 2001
+From 7ff6cf3766a672c4f2b7bd0dc5efa296bd6aba51 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Mon, 20 Apr 2020 11:50:03 +0800
 Subject: [PATCH] refpolicy-targeted: make unconfined_u the default selinux
@@ -43,7 +43,7 @@ index ce614b41b..c0903d98b 100644
 +root:unconfined_u:s0-mcs_systemhigh
 +__default__:unconfined_u:s0
 diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.=
te
-index ac5239d83..310a4fad2 100644
+index ce7d77d31..1aff2c31a 100644
 --- a/policy/modules/roles/sysadm.te
 +++ b/policy/modules/roles/sysadm.te
 @@ -53,6 +53,7 @@ ubac_fd_exempt(sysadm_t)
@@ -52,13 +52,13 @@ index ac5239d83..310a4fad2 100644
  init_admin(sysadm_t)
 +init_script_role_transition(sysadm_r)
 =20
- selinux_read_policy(sysadm_t)
-=20
+ # Add/remove user home directories
+ userdom_manage_user_home_dirs(sysadm_t)
 diff --git a/policy/modules/system/init.if b/policy/modules/system/init.if
-index ab24b5d9b..ed441ddef 100644
+index 98e94283f..eb6d5b32d 100644
 --- a/policy/modules/system/init.if
 +++ b/policy/modules/system/init.if
-@@ -1798,11 +1798,12 @@ interface(`init_script_file_entry_type',`
+@@ -1821,11 +1821,12 @@ interface(`init_script_file_entry_type',`
  #
  interface(`init_spec_domtrans_script',`
  	gen_require(`
@@ -73,7 +73,7 @@ index ab24b5d9b..ed441ddef 100644
 =20
  	ifdef(`distro_gentoo',`
  		gen_require(`
-@@ -1813,11 +1814,11 @@ interface(`init_spec_domtrans_script',`
+@@ -1836,11 +1837,11 @@ interface(`init_spec_domtrans_script',`
  	')
 =20
  	ifdef(`enable_mcs',`
@@ -87,7 +87,7 @@ index ab24b5d9b..ed441ddef 100644
  	')
  ')
 =20
-@@ -1834,17 +1835,18 @@ interface(`init_spec_domtrans_script',`
+@@ -1857,17 +1858,18 @@ interface(`init_spec_domtrans_script',`
  interface(`init_domtrans_script',`
  	gen_require(`
  		type initrc_t, initrc_exec_t;
@@ -108,7 +108,7 @@ index ab24b5d9b..ed441ddef 100644
  	')
  ')
 =20
-@@ -3599,3 +3601,31 @@ interface(`init_getrlimit',`
+@@ -3532,3 +3534,31 @@ interface(`init_getrlimit',`
 =20
  	allow $1 init_t:process getrlimit;
  ')
@@ -141,7 +141,7 @@ index ab24b5d9b..ed441ddef 100644
 +	role_transition $1 init_script_file_type system_r;
 +')
 diff --git a/policy/modules/system/unconfined.te b/policy/modules/system/u=
nconfined.te
-index 3d75855b6..5aa4c0b69 100644
+index 385c88695..87adb7e9d 100644
 --- a/policy/modules/system/unconfined.te
 +++ b/policy/modules/system/unconfined.te
 @@ -20,6 +20,11 @@ type unconfined_execmem_t alias ada_t;
diff --git a/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-=
aliases-for-bin-sbin-and-usr.patch b/recipes-security/refpolicy/refpolicy/0=
002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
index e7b69ef..5907c4d 100644
--- a/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-aliases=
-for-bin-sbin-and-usr.patch
+++ b/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-aliases=
-for-bin-sbin-and-usr.patch
@@ -1,4 +1,4 @@
-From 2a68b7539104bec76aaf2a18b399770f59d0cb28 Mon Sep 17 00:00:00 2001
+From 0ee7bc5f28ffae30b1a1f40edd96cfed993db667 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 20:48:10 -0400
 Subject: [PATCH] fc/subs/busybox: set aliases for bin, sbin and usr
@@ -15,10 +15,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 6 insertions(+)
=20
 diff --git a/config/file_contexts.subs_dist b/config/file_contexts.subs_di=
st
-index aeb25a5bb..c249c5207 100644
+index 652e1dd35..a38d58e16 100644
 --- a/config/file_contexts.subs_dist
 +++ b/config/file_contexts.subs_dist
-@@ -37,3 +37,9 @@
+@@ -38,3 +38,9 @@
  # volatile hierarchy.
  /var/volatile/log /var/log
  /var/volatile/tmp /var/tmp
diff --git a/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-en=
able-nscd_use_shm.patch b/recipes-security/refpolicy/refpolicy/0002-refpoli=
cy-minimum-enable-nscd_use_shm.patch
new file mode 100644
index 0000000..5598c70
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0002-refpolicy-minimum-enable-ns=
cd_use_shm.patch
@@ -0,0 +1,35 @@
+From d71b79cc9b174181934d588f64baa5637c8e85d1 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 26 Feb 2021 09:13:23 +0800
+Subject: [PATCH] policy/modules/services/nscd: enable nscd_use_shm
+
+Fixes:
+avc: denied { listen } for pid=3D199 comm=3D"systemd-resolve"
+path=3D"/run/systemd/resolve/io.systemd.Resolve"
+scontext=3Dsystem_u:system_r:systemd_resolved_t:s0
+tcontext=3Dsystem_u:system_r:systemd_resolved_t:s0
+tclass=3Dunix_stream_socket permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/nscd.te | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/policy/modules/services/nscd.te b/policy/modules/services/nsc=
d.te
+index ada67edb1..9801fc228 100644
+--- a/policy/modules/services/nscd.te
++++ b/policy/modules/services/nscd.te
+@@ -15,7 +15,7 @@ gen_require(`
+ ##	can use nscd shared memory.
+ ##	</p>
+ ## </desc>
+-gen_tunable(nscd_use_shm, false)
++gen_tunable(nscd_use_shm, true)
+=20
+ attribute_role nscd_roles;
+=20
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-po=
licy-to-common-yocto-hostname-al.patch b/recipes-security/refpolicy/refpoli=
cy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
index d2e650e..db3f9c3 100644
--- a/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-to=
-common-yocto-hostname-al.patch
+++ b/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-to=
-common-yocto-hostname-al.patch
@@ -1,4 +1,4 @@
-From 9f73ec53a4a5d5bb9b7fa453f3089c55f777c2ce Mon Sep 17 00:00:00 2001
+From e0c34d0feb5305b1397f252d698501b641277517 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] fc/hostname: apply policy to common yocto hostname
diff --git a/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bi=
n-bash-context-to-bin-bash.bash.patch b/recipes-security/refpolicy/refpolic=
y/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
index 3c16ac2..4a6d5eb 100644
--- a/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bash-=
context-to-bin-bash.bash.patch
+++ b/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bash-=
context-to-bin-bash.bash.patch
@@ -1,4 +1,4 @@
-From fda1e656c46b360f1023834636c460c5510acf68 Mon Sep 17 00:00:00 2001
+From 8d2c24bc1e2ef8ddf3cf7a08297cfab8a8a92b0d Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 21:37:32 -0400
 Subject: [PATCH] fc/bash: apply /usr/bin/bash context to /bin/bash.bash
@@ -15,7 +15,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
=20
 diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel=
/corecommands.fc
-index b473850d4..7e199b7b0 100644
+index 4c18154ce..9187e50af 100644
 --- a/policy/modules/kernel/corecommands.fc
 +++ b/policy/modules/kernel/corecommands.fc
 @@ -142,6 +142,7 @@ ifdef(`distro_gentoo',`
diff --git a/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label=
-resolv.conf-in-var-run-properly.patch b/recipes-security/refpolicy/refpoli=
cy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
index 2fe6479..cb36ac4 100644
--- a/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv=
.conf-in-var-run-properly.patch
+++ b/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv=
.conf-in-var-run-properly.patch
@@ -1,4 +1,4 @@
-From 90a9ef3adb997517f921a3524da99c966e3b00df Mon Sep 17 00:00:00 2001
+From 85a77289d193bb3335c78f6d51b4ae2b81249952 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 4 Apr 2019 10:45:03 -0400
 Subject: [PATCH] fc/resolv.conf: label resolv.conf in var/run/ properly
@@ -13,10 +13,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
=20
 diff --git a/policy/modules/system/sysnetwork.fc b/policy/modules/system/s=
ysnetwork.fc
-index fddf9f693..acf539656 100644
+index 14505efe9..c9ec4e5ab 100644
 --- a/policy/modules/system/sysnetwork.fc
 +++ b/policy/modules/system/sysnetwork.fc
-@@ -83,6 +83,7 @@ ifdef(`distro_redhat',`
+@@ -84,6 +84,7 @@ ifdef(`distro_redhat',`
  /run/dhcpcd(/.*)?		gen_context(system_u:object_r:dhcpc_runtime_t,s0)
  /run/netns	-d		gen_context(system_u:object_r:ifconfig_runtime_t,s0)
  /run/netns/[^/]+	--	<<none>>
diff --git a/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login=
-context-to-login.shadow.patch b/recipes-security/refpolicy/refpolicy/0006-=
fc-login-apply-login-context-to-login.shadow.patch
index e187b9e..30bbe07 100644
--- a/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-contex=
t-to-login.shadow.patch
+++ b/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-contex=
t-to-login.shadow.patch
@@ -1,4 +1,4 @@
-From 3383027dfb8c672468a99805535eeadffbe7d332 Mon Sep 17 00:00:00 2001
+From 253ab75676232be5522fc628b0819d0c48a08c03 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 21:43:53 -0400
 Subject: [PATCH] fc/login: apply login context to login.shadow
diff --git a/recipes-security/refpolicy/refpolicy/0007-fc-bind-fix-real-pat=
h-for-bind.patch b/recipes-security/refpolicy/refpolicy/0007-fc-bind-fix-re=
al-path-for-bind.patch
index cfd8dfc..351b30e 100644
--- a/recipes-security/refpolicy/refpolicy/0007-fc-bind-fix-real-path-for-b=
ind.patch
+++ b/recipes-security/refpolicy/refpolicy/0007-fc-bind-fix-real-path-for-b=
ind.patch
@@ -1,4 +1,4 @@
-From fcf91092015155c4a10a1d7c4dd352ead0b5698b Mon Sep 17 00:00:00 2001
+From 7e61e5d715451bafd785ec7db01e24e726e31c35 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 21:58:53 -0400
 Subject: [PATCH] fc/bind: fix real path for bind
@@ -13,7 +13,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
=20
 diff --git a/policy/modules/services/bind.fc b/policy/modules/services/bin=
d.fc
-index 7c1df4895..9f87a21a6 100644
+index ce68a0af9..585103eb9 100644
 --- a/policy/modules/services/bind.fc
 +++ b/policy/modules/services/bind.fc
 @@ -1,8 +1,10 @@
diff --git a/recipes-security/refpolicy/refpolicy/0008-fc-hwclock-add-hwclo=
ck-alternatives.patch b/recipes-security/refpolicy/refpolicy/0008-fc-hwcloc=
k-add-hwclock-alternatives.patch
index 5a09d4b..75c8e7f 100644
--- a/recipes-security/refpolicy/refpolicy/0008-fc-hwclock-add-hwclock-alte=
rnatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0008-fc-hwclock-add-hwclock-alte=
rnatives.patch
@@ -1,4 +1,4 @@
-From 2e5be9a910fc07a63efafc87a3c10bd81bd9c052 Mon Sep 17 00:00:00 2001
+From c7e69aa036d16a57709684fd2f72959f9a4ac251 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 21:59:18 -0400
 Subject: [PATCH] fc/hwclock: add hwclock alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0009-fc-dmesg-apply-polic=
y-to-dmesg-alternatives.patch b/recipes-security/refpolicy/refpolicy/0009-f=
c-dmesg-apply-policy-to-dmesg-alternatives.patch
index cc7eb7c..3c939de 100644
--- a/recipes-security/refpolicy/refpolicy/0009-fc-dmesg-apply-policy-to-dm=
esg-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0009-fc-dmesg-apply-policy-to-dm=
esg-alternatives.patch
@@ -1,4 +1,4 @@
-From 924ecc31c140dcd862d067849d4e11e111284165 Mon Sep 17 00:00:00 2001
+From 0fe5ae0d1b5f4268b04ba6c6134324385bb630a2 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 08:26:55 -0400
 Subject: [PATCH] fc/dmesg: apply policy to dmesg alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0010-fc-ssh-apply-policy-=
to-ssh-alternatives.patch b/recipes-security/refpolicy/refpolicy/0010-fc-ss=
h-apply-policy-to-ssh-alternatives.patch
index 003af92..2a89acc 100644
--- a/recipes-security/refpolicy/refpolicy/0010-fc-ssh-apply-policy-to-ssh-=
alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0010-fc-ssh-apply-policy-to-ssh-=
alternatives.patch
@@ -1,4 +1,4 @@
-From 261892950c5b2a40b7c3bb050ede148cbd1c7a84 Mon Sep 17 00:00:00 2001
+From e2d9462c5f26dc02f7d547548d8a94bfd79ea88f Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 09:20:58 -0400
 Subject: [PATCH] fc/ssh: apply policy to ssh alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0011-fc-sysnetwork-apply-=
policy-to-ip-alternatives.patch b/recipes-security/refpolicy/refpolicy/0011=
-fc-sysnetwork-apply-policy-to-ip-alternatives.patch
index aeb63f7..9d7d71c 100644
--- a/recipes-security/refpolicy/refpolicy/0011-fc-sysnetwork-apply-policy-=
to-ip-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0011-fc-sysnetwork-apply-policy-=
to-ip-alternatives.patch
@@ -1,4 +1,4 @@
-From bb8832629e85af2a16800f5cfec97ca0bf8319e6 Mon Sep 17 00:00:00 2001
+From dc3edc3b65dccf57d4cb22eb220498c2a5d9685f Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Tue, 9 Jun 2015 21:22:52 +0530
 Subject: [PATCH] fc/sysnetwork: apply policy to ip alternatives
@@ -14,10 +14,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 3 insertions(+)
=20
 diff --git a/policy/modules/system/sysnetwork.fc b/policy/modules/system/s=
ysnetwork.fc
-index acf539656..d8902d725 100644
+index c9ec4e5ab..c3291962d 100644
 --- a/policy/modules/system/sysnetwork.fc
 +++ b/policy/modules/system/sysnetwork.fc
-@@ -59,13 +59,16 @@ ifdef(`distro_redhat',`
+@@ -60,13 +60,16 @@ ifdef(`distro_redhat',`
  /usr/sbin/dhcpcd		--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
  /usr/sbin/ethtool		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /usr/sbin/ifconfig		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy/0012-fc-udev-apply-policy=
-to-udevadm-in-libexec.patch b/recipes-security/refpolicy/refpolicy/0012-fc=
-udev-apply-policy-to-udevadm-in-libexec.patch
index d1059df..0bb05e3 100644
--- a/recipes-security/refpolicy/refpolicy/0012-fc-udev-apply-policy-to-ude=
vadm-in-libexec.patch
+++ b/recipes-security/refpolicy/refpolicy/0012-fc-udev-apply-policy-to-ude=
vadm-in-libexec.patch
@@ -1,4 +1,4 @@
-From 02a3c7a06f760d3cae909d2c271d1e4fde07c09b Mon Sep 17 00:00:00 2001
+From 9afd44d1300bc858c1569344fc1271e0468edad9 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 09:36:08 -0400
 Subject: [PATCH] fc/udev: apply policy to udevadm in libexec
@@ -12,10 +12,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
=20
 diff --git a/policy/modules/system/udev.fc b/policy/modules/system/udev.fc
-index 0ae7571cd..ceb5b70b3 100644
+index c88189fb7..ad4c0bba2 100644
 --- a/policy/modules/system/udev.fc
 +++ b/policy/modules/system/udev.fc
-@@ -28,6 +28,8 @@ ifdef(`distro_debian',`
+@@ -24,6 +24,8 @@ ifdef(`distro_debian',`
  /usr/sbin/udevstart	--	gen_context(system_u:object_r:udev_exec_t,s0)
  /usr/sbin/wait_for_sysfs --	gen_context(system_u:object_r:udev_exec_t,s0)
 =20
diff --git a/recipes-security/refpolicy/refpolicy/0013-fc-rpm-apply-rpm_exe=
c-policy-to-cpio-binaries.patch b/recipes-security/refpolicy/refpolicy/0013=
-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
index 3e61f45..55f0444 100644
--- a/recipes-security/refpolicy/refpolicy/0013-fc-rpm-apply-rpm_exec-polic=
y-to-cpio-binaries.patch
+++ b/recipes-security/refpolicy/refpolicy/0013-fc-rpm-apply-rpm_exec-polic=
y-to-cpio-binaries.patch
@@ -1,4 +1,4 @@
-From 117884178c9ba63334f732da6f30e67e22aa898e Mon Sep 17 00:00:00 2001
+From 79e58207060c25d5f2484ed164ab74413d00792a Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 09:54:07 -0400
 Subject: [PATCH] fc/rpm: apply rpm_exec policy to cpio binaries
@@ -12,7 +12,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
=20
 diff --git a/policy/modules/admin/rpm.fc b/policy/modules/admin/rpm.fc
-index 6194a4833..ace922ac1 100644
+index aaf530c2b..618b18cec 100644
 --- a/policy/modules/admin/rpm.fc
 +++ b/policy/modules/admin/rpm.fc
 @@ -66,4 +66,6 @@ ifdef(`distro_redhat',`
diff --git a/recipes-security/refpolicy/refpolicy/0014-fc-su-apply-policy-t=
o-su-alternatives.patch b/recipes-security/refpolicy/refpolicy/0014-fc-su-a=
pply-policy-to-su-alternatives.patch
index da05686..8d1c9aa 100644
--- a/recipes-security/refpolicy/refpolicy/0014-fc-su-apply-policy-to-su-al=
ternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0014-fc-su-apply-policy-to-su-al=
ternatives.patch
@@ -1,4 +1,4 @@
-From 522d08c0dac1cfe9e33f06bc1252b7b672d9ffd3 Mon Sep 17 00:00:00 2001
+From a1281be5b894c0c6dc3471a1e6b6c910bab7aa46 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Thu, 13 Feb 2014 00:33:07 -0500
 Subject: [PATCH] fc/su: apply policy to su alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0015-fc-fstools-fix-real-=
path-for-fstools.patch b/recipes-security/refpolicy/refpolicy/0015-fc-fstoo=
ls-fix-real-path-for-fstools.patch
index 78260e5..a9fbe33 100644
--- a/recipes-security/refpolicy/refpolicy/0015-fc-fstools-fix-real-path-fo=
r-fstools.patch
+++ b/recipes-security/refpolicy/refpolicy/0015-fc-fstools-fix-real-path-fo=
r-fstools.patch
@@ -1,4 +1,4 @@
-From c4b0ffd60873ecca2cf0b1aa898185f5f3928828 Mon Sep 17 00:00:00 2001
+From 02f6557320c60d895397650a59c39708c8e63d27 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Mon, 27 Jan 2014 03:54:01 -0500
 Subject: [PATCH] fc/fstools: fix real path for fstools
diff --git a/recipes-security/refpolicy/refpolicy/0016-fc-init-fix-update-a=
lternatives-for-sysvinit.patch b/recipes-security/refpolicy/refpolicy/0016-=
fc-init-fix-update-alternatives-for-sysvinit.patch
index 1a8e8dc..a2e5762 100644
--- a/recipes-security/refpolicy/refpolicy/0016-fc-init-fix-update-alternat=
ives-for-sysvinit.patch
+++ b/recipes-security/refpolicy/refpolicy/0016-fc-init-fix-update-alternat=
ives-for-sysvinit.patch
@@ -1,4 +1,4 @@
-From 95a843719394827621e3b33c13f2696f7e498e5b Mon Sep 17 00:00:00 2001
+From f7860456e3867e6d9c24a7e07bc9e518f65ec478 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] fc/init: fix update-alternatives for sysvinit
@@ -26,7 +26,7 @@ index bf51c103f..91ed72be0 100644
 =20
  /run/shutdown\.pid	--	gen_context(system_u:object_r:shutdown_runtime_t,s0=
)
 diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel=
/corecommands.fc
-index 7e199b7b0..157eeb0d0 100644
+index 9187e50af..0ecabe34e 100644
 --- a/policy/modules/kernel/corecommands.fc
 +++ b/policy/modules/kernel/corecommands.fc
 @@ -151,6 +151,8 @@ ifdef(`distro_gentoo',`
@@ -39,7 +39,7 @@ index 7e199b7b0..157eeb0d0 100644
  /usr/bin/sash			--	gen_context(system_u:object_r:shell_exec_t,s0)
  /usr/bin/sesh			--	gen_context(system_u:object_r:shell_exec_t,s0)
 diff --git a/policy/modules/system/init.fc b/policy/modules/system/init.fc
-index fee6ff3b6..fe72df22a 100644
+index 63cf195e6..5268bddb2 100644
 --- a/policy/modules/system/init.fc
 +++ b/policy/modules/system/init.fc
 @@ -40,6 +40,7 @@ ifdef(`distro_gentoo',`
diff --git a/recipes-security/refpolicy/refpolicy/0017-fc-brctl-apply-polic=
y-to-brctl-alternatives.patch b/recipes-security/refpolicy/refpolicy/0017-f=
c-brctl-apply-policy-to-brctl-alternatives.patch
index 6271a88..9da5acc 100644
--- a/recipes-security/refpolicy/refpolicy/0017-fc-brctl-apply-policy-to-br=
ctl-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0017-fc-brctl-apply-policy-to-br=
ctl-alternatives.patch
@@ -1,4 +1,4 @@
-From 0b05d71fea73c9fc0dc8aac6e7d096b0214db5eb Mon Sep 17 00:00:00 2001
+From 3a83de3883d0e287c0b6647e87a93d2cdc48aa10 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:19:54 +0800
 Subject: [PATCH] fc/brctl: apply policy to brctl alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0018-fc-corecommands-appl=
y-policy-to-nologin-alternatives.patch b/recipes-security/refpolicy/refpoli=
cy/0018-fc-corecommands-apply-policy-to-nologin-alternatives.patch
index 442c3d8..4c1ac26 100644
--- a/recipes-security/refpolicy/refpolicy/0018-fc-corecommands-apply-polic=
y-to-nologin-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0018-fc-corecommands-apply-polic=
y-to-nologin-alternatives.patch
@@ -1,4 +1,4 @@
-From 5f759c3d89b52e62607266c4e684d66953803d4d Mon Sep 17 00:00:00 2001
+From 5219bc4e0b3147455fecb1485e8387573207070c Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:21:51 +0800
 Subject: [PATCH] fc/corecommands: apply policy to nologin alternatives
@@ -11,10 +11,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
=20
 diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel=
/corecommands.fc
-index 157eeb0d0..515948ea9 100644
+index 0ecabe34e..e27e701ef 100644
 --- a/policy/modules/kernel/corecommands.fc
 +++ b/policy/modules/kernel/corecommands.fc
-@@ -303,6 +303,8 @@ ifdef(`distro_debian',`
+@@ -304,6 +304,8 @@ ifdef(`distro_debian',`
  /usr/sbin/insmod_ksymoops_clean	--	gen_context(system_u:object_r:bin_t,s0=
)
  /usr/sbin/mkfs\.cramfs		--	gen_context(system_u:object_r:bin_t,s0)
  /usr/sbin/nologin		--	gen_context(system_u:object_r:shell_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy/0019-fc-locallogin-apply-=
policy-to-sulogin-alternatives.patch b/recipes-security/refpolicy/refpolicy=
/0019-fc-locallogin-apply-policy-to-sulogin-alternatives.patch
index 4303d36..acd2663 100644
--- a/recipes-security/refpolicy/refpolicy/0019-fc-locallogin-apply-policy-=
to-sulogin-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0019-fc-locallogin-apply-policy-=
to-sulogin-alternatives.patch
@@ -1,4 +1,4 @@
-From 84f715b8d128bcbfdc95adf18d6bc8eb225f05cd Mon Sep 17 00:00:00 2001
+From 2b3b5d43040e939e836ea5c9803f0b27641e50a4 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:43:28 +0800
 Subject: [PATCH] fc/locallogin: apply policy to sulogin alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0020-fc-ntp-apply-policy-=
to-ntpd-alternatives.patch b/recipes-security/refpolicy/refpolicy/0020-fc-n=
tp-apply-policy-to-ntpd-alternatives.patch
index 49c2f82..c40413a 100644
--- a/recipes-security/refpolicy/refpolicy/0020-fc-ntp-apply-policy-to-ntpd=
-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0020-fc-ntp-apply-policy-to-ntpd=
-alternatives.patch
@@ -1,4 +1,4 @@
-From b30d9ad872f613d2b1c3aad45eac65593de37b9b Mon Sep 17 00:00:00 2001
+From 5308969204d535391cb766ba5aa4b5479f64248c Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:45:23 +0800
 Subject: [PATCH] fc/ntp: apply policy to ntpd alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0021-fc-kerberos-apply-po=
licy-to-kerberos-alternatives.patch b/recipes-security/refpolicy/refpolicy/=
0021-fc-kerberos-apply-policy-to-kerberos-alternatives.patch
index 7fe5c8f..8d9ccd8 100644
--- a/recipes-security/refpolicy/refpolicy/0021-fc-kerberos-apply-policy-to=
-kerberos-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0021-fc-kerberos-apply-policy-to=
-kerberos-alternatives.patch
@@ -1,4 +1,4 @@
-From 632dcd7a700049a955082bd24af742c2780dcc38 Mon Sep 17 00:00:00 2001
+From 89a54472ea0195ec19c291374e88e55b40107ff8 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 10:55:05 +0800
 Subject: [PATCH] fc/kerberos: apply policy to kerberos alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0022-fc-ldap-apply-policy=
-to-ldap-alternatives.patch b/recipes-security/refpolicy/refpolicy/0022-fc-=
ldap-apply-policy-to-ldap-alternatives.patch
index c3bcabe..c88dcd9 100644
--- a/recipes-security/refpolicy/refpolicy/0022-fc-ldap-apply-policy-to-lda=
p-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0022-fc-ldap-apply-policy-to-lda=
p-alternatives.patch
@@ -1,4 +1,4 @@
-From a580b0154da9dd07369b172ed459046197e388c7 Mon Sep 17 00:00:00 2001
+From 1130a43390bf41adb7747d0cc62c85c4320806cb Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 11:06:13 +0800
 Subject: [PATCH] fc/ldap: apply policy to ldap alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0023-fc-postgresql-apply-=
policy-to-postgresql-alternative.patch b/recipes-security/refpolicy/refpoli=
cy/0023-fc-postgresql-apply-policy-to-postgresql-alternative.patch
index 0fc608b..ddd78b0 100644
--- a/recipes-security/refpolicy/refpolicy/0023-fc-postgresql-apply-policy-=
to-postgresql-alternative.patch
+++ b/recipes-security/refpolicy/refpolicy/0023-fc-postgresql-apply-policy-=
to-postgresql-alternative.patch
@@ -1,4 +1,4 @@
-From 926401518bca5a1e63b7f2c2cbae4a3bc42bf342 Mon Sep 17 00:00:00 2001
+From 184f1dfe4cbff9c5ff2cbe865d4e7427f100ff59 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 11:13:16 +0800
 Subject: [PATCH] fc/postgresql: apply policy to postgresql alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0024-fc-screen-apply-poli=
cy-to-screen-alternatives.patch b/recipes-security/refpolicy/refpolicy/0024=
-fc-screen-apply-policy-to-screen-alternatives.patch
index b529bbf..7ae54d9 100644
--- a/recipes-security/refpolicy/refpolicy/0024-fc-screen-apply-policy-to-s=
creen-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0024-fc-screen-apply-policy-to-s=
creen-alternatives.patch
@@ -1,4 +1,4 @@
-From f3f6f0cb4857954afd8a025a1cd3f14b8a11b64d Mon Sep 17 00:00:00 2001
+From e114e09928232dd9eed568a4717dca2094f6e4ad Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 11:15:33 +0800
 Subject: [PATCH] fc/screen: apply policy to screen alternatives
@@ -11,10 +11,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
=20
 diff --git a/policy/modules/apps/screen.fc b/policy/modules/apps/screen.fc
-index 7196c598e..cada9944e 100644
+index e51e01d97..238dc263e 100644
 --- a/policy/modules/apps/screen.fc
 +++ b/policy/modules/apps/screen.fc
-@@ -6,4 +6,5 @@ HOME_DIR/\.tmux\.conf	--	gen_context(system_u:object_r:scr=
een_home_t,s0)
+@@ -7,4 +7,5 @@ HOME_DIR/\.tmux\.conf	--	gen_context(system_u:object_r:scr=
een_home_t,s0)
  /run/tmux(/.*)?			gen_context(system_u:object_r:screen_runtime_t,s0)
 =20
  /usr/bin/screen		--	gen_context(system_u:object_r:screen_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy/0025-fc-usermanage-apply-=
policy-to-usermanage-alternative.patch b/recipes-security/refpolicy/refpoli=
cy/0025-fc-usermanage-apply-policy-to-usermanage-alternative.patch
index 76278c9..e6fbba0 100644
--- a/recipes-security/refpolicy/refpolicy/0025-fc-usermanage-apply-policy-=
to-usermanage-alternative.patch
+++ b/recipes-security/refpolicy/refpolicy/0025-fc-usermanage-apply-policy-=
to-usermanage-alternative.patch
@@ -1,4 +1,4 @@
-From 0656c4b988cb700f322fb03e6639fe0b64e08d63 Mon Sep 17 00:00:00 2001
+From 62a5f9dee28411f1d88a2101e507c15780467b2f Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 11:25:34 +0800
 Subject: [PATCH] fc/usermanage: apply policy to usermanage alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0026-fc-getty-add-file-co=
ntext-to-start_getty.patch b/recipes-security/refpolicy/refpolicy/0026-fc-g=
etty-add-file-context-to-start_getty.patch
index 5f45438..d51faa5 100644
--- a/recipes-security/refpolicy/refpolicy/0026-fc-getty-add-file-context-t=
o-start_getty.patch
+++ b/recipes-security/refpolicy/refpolicy/0026-fc-getty-add-file-context-t=
o-start_getty.patch
@@ -1,4 +1,4 @@
-From cc8da498e20518cc9e8f59d1a4570e073f19e88b Mon Sep 17 00:00:00 2001
+From 7be59b4d42165f7e12ccb8b2409304a2640eb898 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 15 Nov 2019 16:07:30 +0800
 Subject: [PATCH] fc/getty: add file context to start_getty
diff --git a/recipes-security/refpolicy/refpolicy/0027-fc-init-add-file-con=
text-to-etc-network-if-files.patch b/recipes-security/refpolicy/refpolicy/0=
027-fc-init-add-file-context-to-etc-network-if-files.patch
index e54777c..e34abe6 100644
--- a/recipes-security/refpolicy/refpolicy/0027-fc-init-add-file-context-to=
-etc-network-if-files.patch
+++ b/recipes-security/refpolicy/refpolicy/0027-fc-init-add-file-context-to=
-etc-network-if-files.patch
@@ -1,4 +1,4 @@
-From 1d6f9b62082188992bfb681632dff15d5ad608c9 Mon Sep 17 00:00:00 2001
+From ac335f80d09f9ce4756f2e58944a975a12441fa7 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 19 Nov 2019 14:33:28 +0800
 Subject: [PATCH] fc/init: add file context to /etc/network/if-* files
@@ -11,10 +11,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+), 1 deletion(-)
=20
 diff --git a/policy/modules/system/init.fc b/policy/modules/system/init.fc
-index fe72df22a..a9d8f343a 100644
+index 5268bddb2..a6762bd00 100644
 --- a/policy/modules/system/init.fc
 +++ b/policy/modules/system/init.fc
-@@ -70,11 +70,12 @@ ifdef(`distro_redhat',`
+@@ -75,11 +75,12 @@ ifdef(`distro_redhat',`
  ifdef(`distro_debian',`
  /run/hotkey-setup	--	gen_context(system_u:object_r:initrc_runtime_t,s0)
  /run/kdm/.*		--	gen_context(system_u:object_r:initrc_runtime_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy/0028-fc-vlock-apply-polic=
y-to-vlock-alternatives.patch b/recipes-security/refpolicy/refpolicy/0028-f=
c-vlock-apply-policy-to-vlock-alternatives.patch
index 8017392..d0bd7b4 100644
--- a/recipes-security/refpolicy/refpolicy/0028-fc-vlock-apply-policy-to-vl=
ock-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0028-fc-vlock-apply-policy-to-vl=
ock-alternatives.patch
@@ -1,4 +1,4 @@
-From 8d8858bd8569db106f0feb44a0912daa872954ec Mon Sep 17 00:00:00 2001
+From 1ee2b12fa1585bf765370e3e787081fe01ad990f Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Wed, 18 Dec 2019 15:04:41 +0800
 Subject: [PATCH] fc/vlock: apply policy to vlock alternatives
diff --git a/recipes-security/refpolicy/refpolicy/0029-fc-cron-apply-policy=
-to-etc-init.d-crond.patch b/recipes-security/refpolicy/refpolicy/0029-fc-c=
ron-apply-policy-to-etc-init.d-crond.patch
index 294f999..be57060 100644
--- a/recipes-security/refpolicy/refpolicy/0029-fc-cron-apply-policy-to-etc=
-init.d-crond.patch
+++ b/recipes-security/refpolicy/refpolicy/0029-fc-cron-apply-policy-to-etc=
-init.d-crond.patch
@@ -1,4 +1,4 @@
-From 25701662f7149743556bb2d5edb5c69e6de2744f Mon Sep 17 00:00:00 2001
+From a14d7d6fc54e7cf82d977c4b5c2df961c5eb1fe0 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 30 Jun 2020 10:45:57 +0800
 Subject: [PATCH] fc/cron: apply policy to /etc/init.d/crond
diff --git a/recipes-security/refpolicy/refpolicy/0081-fc-sysnetwork-update=
-file-context-for-ifconfig.patch b/recipes-security/refpolicy/refpolicy/003=
0-fc-sysnetwork-update-file-context-for-ifconfig.patch
similarity index 89%
rename from recipes-security/refpolicy/refpolicy/0081-fc-sysnetwork-update-=
file-context-for-ifconfig.patch
rename to recipes-security/refpolicy/refpolicy/0030-fc-sysnetwork-update-fi=
le-context-for-ifconfig.patch
index eaecf40..6a659b2 100644
--- a/recipes-security/refpolicy/refpolicy/0081-fc-sysnetwork-update-file-c=
ontext-for-ifconfig.patch
+++ b/recipes-security/refpolicy/refpolicy/0030-fc-sysnetwork-update-file-c=
ontext-for-ifconfig.patch
@@ -1,4 +1,4 @@
-From e6b303444988717c725a71db7b21417839321463 Mon Sep 17 00:00:00 2001
+From b3d2611360ddf21a3f8729766a1e4b64117ea710 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 4 Aug 2020 16:48:12 +0800
 Subject: [PATCH] fc/sysnetwork: update file context for ifconfig
@@ -15,10 +15,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
=20
 diff --git a/policy/modules/system/sysnetwork.fc b/policy/modules/system/s=
ysnetwork.fc
-index d8902d725..9ec4eefb7 100644
+index c3291962d..4ca151524 100644
 --- a/policy/modules/system/sysnetwork.fc
 +++ b/policy/modules/system/sysnetwork.fc
-@@ -43,6 +43,7 @@ ifdef(`distro_redhat',`
+@@ -44,6 +44,7 @@ ifdef(`distro_redhat',`
  /usr/bin/dhcpcd		        --	gen_context(system_u:object_r:dhcpc_exec_t,s0=
)
  /usr/bin/ethtool		    --	gen_context(system_u:object_r:ifconfig_exec_t,s0=
)
  /usr/bin/ifconfig		    --	gen_context(system_u:object_r:ifconfig_exec_t,s=
0)
diff --git a/recipes-security/refpolicy/refpolicy/0030-file_contexts.subs_d=
ist-set-aliase-for-root-director.patch b/recipes-security/refpolicy/refpoli=
cy/0031-file_contexts.subs_dist-set-aliase-for-root-director.patch
similarity index 87%
rename from recipes-security/refpolicy/refpolicy/0030-file_contexts.subs_di=
st-set-aliase-for-root-director.patch
rename to recipes-security/refpolicy/refpolicy/0031-file_contexts.subs_dist=
-set-aliase-for-root-director.patch
index 8331955..f65d1be 100644
--- a/recipes-security/refpolicy/refpolicy/0030-file_contexts.subs_dist-set=
-aliase-for-root-director.patch
+++ b/recipes-security/refpolicy/refpolicy/0031-file_contexts.subs_dist-set=
-aliase-for-root-director.patch
@@ -1,4 +1,4 @@
-From 9260b04d257cdddf42d0267456d3ba2b38dc22d4 Mon Sep 17 00:00:00 2001
+From 8c733eff8089c24fe6885977d2bdcdfb0c453726 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Sun, 5 Apr 2020 22:03:45 +0800
 Subject: [PATCH] file_contexts.subs_dist: set aliase for /root directory
@@ -14,10 +14,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 4 insertions(+)
=20
 diff --git a/config/file_contexts.subs_dist b/config/file_contexts.subs_di=
st
-index c249c5207..67f476868 100644
+index a38d58e16..3e4c5720f 100644
 --- a/config/file_contexts.subs_dist
 +++ b/config/file_contexts.subs_dist
-@@ -43,3 +43,7 @@
+@@ -44,3 +44,7 @@
  /usr/lib/busybox/bin /usr/bin
  /usr/lib/busybox/sbin /usr/sbin
  /usr/lib/busybox/usr /usr
diff --git a/recipes-security/refpolicy/refpolicy/0031-policy-modules-syste=
m-logging-add-rules-for-the-syml.patch b/recipes-security/refpolicy/refpoli=
cy/0032-policy-modules-system-logging-add-rules-for-the-syml.patch
similarity index 60%
rename from recipes-security/refpolicy/refpolicy/0031-policy-modules-system=
-logging-add-rules-for-the-syml.patch
rename to recipes-security/refpolicy/refpolicy/0032-policy-modules-system-l=
ogging-add-rules-for-the-syml.patch
index b05f037..a80bf03 100644
--- a/recipes-security/refpolicy/refpolicy/0031-policy-modules-system-loggi=
ng-add-rules-for-the-syml.patch
+++ b/recipes-security/refpolicy/refpolicy/0032-policy-modules-system-loggi=
ng-add-rules-for-the-syml.patch
@@ -1,4 +1,4 @@
-From e4bdbb101fd2af2d4fd8b87794443097b58d20ff Mon Sep 17 00:00:00 2001
+From 456bb92237aa637f506fcc56b190eb534d745e41 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/system/logging: add rules for the symlink =
of
@@ -15,8 +15,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  policy/modules/system/logging.fc | 1 +
  policy/modules/system/logging.if | 9 +++++++++
- policy/modules/system/logging.te | 2 ++
- 3 files changed, 12 insertions(+)
+ 2 files changed, 10 insertions(+)
=20
 diff --git a/policy/modules/system/logging.fc b/policy/modules/system/logg=
ing.fc
 index 5681acb51..a4ecd570a 100644
@@ -31,10 +30,10 @@ index 5681acb51..a4ecd570a 100644
  /var/log/dmesg		--	gen_context(system_u:object_r:var_log_t,s0)
  /var/log/syslog		--	gen_context(system_u:object_r:var_log_t,s0)
 diff --git a/policy/modules/system/logging.if b/policy/modules/system/logg=
ing.if
-index e5f4080ac..e3cbe4f1a 100644
+index 10dee6563..9bb3afdb2 100644
 --- a/policy/modules/system/logging.if
 +++ b/policy/modules/system/logging.if
-@@ -1066,10 +1066,12 @@ interface(`logging_append_all_inherited_logs',`
+@@ -1065,10 +1065,12 @@ interface(`logging_append_all_inherited_logs',`
  interface(`logging_read_all_logs',`
  	gen_require(`
  		attribute logfile;
@@ -47,7 +46,7 @@ index e5f4080ac..e3cbe4f1a 100644
  	read_files_pattern($1, logfile, logfile)
  ')
 =20
-@@ -1088,10 +1090,12 @@ interface(`logging_read_all_logs',`
+@@ -1087,10 +1089,12 @@ interface(`logging_read_all_logs',`
  interface(`logging_exec_all_logs',`
  	gen_require(`
  		attribute logfile;
@@ -60,7 +59,7 @@ index e5f4080ac..e3cbe4f1a 100644
  	can_exec($1, logfile)
  ')
 =20
-@@ -1153,6 +1157,7 @@ interface(`logging_manage_generic_log_dirs',`
+@@ -1152,6 +1156,7 @@ interface(`logging_manage_generic_log_dirs',`
 =20
  	files_search_var($1)
  	allow $1 var_log_t:dir manage_dir_perms;
@@ -68,15 +67,15 @@ index e5f4080ac..e3cbe4f1a 100644
  ')
 =20
  ########################################
-@@ -1173,6 +1178,7 @@ interface(`logging_relabel_generic_log_dirs',`
+@@ -1172,6 +1177,7 @@ interface(`logging_relabel_generic_log_dirs',`
 =20
  	files_search_var($1)
- 	allow $1 var_log_t:dir { relabelfrom relabelto };
+ 	allow $1 var_log_t:dir relabel_dir_perms;
 +	allow $1 var_log_t:lnk_file read_lnk_file_perms;
  ')
 =20
  ########################################
-@@ -1193,6 +1199,7 @@ interface(`logging_read_generic_logs',`
+@@ -1192,6 +1198,7 @@ interface(`logging_read_generic_logs',`
 =20
  	files_search_var($1)
  	allow $1 var_log_t:dir list_dir_perms;
@@ -84,7 +83,7 @@ index e5f4080ac..e3cbe4f1a 100644
  	read_files_pattern($1, var_log_t, var_log_t)
  ')
 =20
-@@ -1294,6 +1301,7 @@ interface(`logging_manage_generic_logs',`
+@@ -1293,6 +1300,7 @@ interface(`logging_manage_generic_logs',`
 =20
  	files_search_var($1)
  	manage_files_pattern($1, var_log_t, var_log_t)
@@ -92,7 +91,7 @@ index e5f4080ac..e3cbe4f1a 100644
  ')
 =20
  ########################################
-@@ -1312,6 +1320,7 @@ interface(`logging_watch_generic_logs_dir',`
+@@ -1311,6 +1319,7 @@ interface(`logging_watch_generic_logs_dir',`
  	')
 =20
  	allow $1 var_log_t:dir watch;
@@ -100,26 +99,6 @@ index e5f4080ac..e3cbe4f1a 100644
  ')
 =20
  ########################################
-diff --git a/policy/modules/system/logging.te b/policy/modules/system/logg=
ing.te
-index 3702d441a..513d811ef 100644
---- a/policy/modules/system/logging.te
-+++ b/policy/modules/system/logging.te
-@@ -161,6 +161,7 @@ manage_files_pattern(auditd_t, auditd_log_t, auditd_lo=
g_t)
- allow auditd_t auditd_log_t:dir setattr;
- manage_lnk_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
- allow auditd_t var_log_t:dir search_dir_perms;
-+allow auditd_t var_log_t:lnk_file read_lnk_file_perms;
-=20
- manage_files_pattern(auditd_t, auditd_runtime_t, auditd_runtime_t)
- manage_sock_files_pattern(auditd_t, auditd_runtime_t, auditd_runtime_t)
-@@ -288,6 +289,7 @@ allow audisp_remote_t self:capability { setpcap setuid=
 };
- allow audisp_remote_t self:process { getcap setcap };
- allow audisp_remote_t self:tcp_socket create_socket_perms;
- allow audisp_remote_t var_log_t:dir search_dir_perms;
-+allow audisp_remote_t var_log_t:lnk_file read_lnk_file_perms;
-=20
- manage_dirs_pattern(audisp_remote_t, audit_spool_t, audit_spool_t)
- manage_files_pattern(audisp_remote_t, audit_spool_t, audit_spool_t)
 --=20
 2.17.1
=20
diff --git a/recipes-security/refpolicy/refpolicy/0033-policy-modules-syste=
m-logging-add-domain-rules-for-t.patch b/recipes-security/refpolicy/refpoli=
cy/0033-policy-modules-system-logging-add-domain-rules-for-t.patch
deleted file mode 100644
index 90995dc..0000000
--- a/recipes-security/refpolicy/refpolicy/0033-policy-modules-system-loggi=
ng-add-domain-rules-for-t.patch
+++ /dev/null
@@ -1,37 +0,0 @@
-From 0385f2374297ab2b8799fe1ec28d12e1682ec074 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Fri, 23 Aug 2013 11:20:00 +0800
-Subject: [PATCH] policy/modules/system/logging: add domain rules for the
- subdir symlinks in /var/
-
-Except /var/log,/var/run,/var/lock, there still other subdir symlinks in
-/var for poky, so we need allow rules for all domains to read these
-symlinks. Domains still need their practical allow rules to read the
-contents, so this is still a secure relax.
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/kernel/domain.te | 3 +++
- 1 file changed, 3 insertions(+)
-
-diff --git a/policy/modules/kernel/domain.te b/policy/modules/kernel/domai=
n.te
-index 4e43a208d..7e5d2b458 100644
---- a/policy/modules/kernel/domain.te
-+++ b/policy/modules/kernel/domain.te
-@@ -110,6 +110,9 @@ term_use_controlling_term(domain)
- # list the root directory
- files_list_root(domain)
-=20
-+# Yocto/oe-core use some var volatile links
-+files_read_var_symlinks(domain)
-+
- ifdef(`hide_broken_symptoms',`
- 	# This check is in the general socket
- 	# listen code, before protocol-specific
---=20
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0032-policy-modules-syste=
m-logging-add-rules-for-syslogd-.patch b/recipes-security/refpolicy/refpoli=
cy/0033-policy-modules-system-logging-add-rules-for-syslogd-.patch
similarity index 87%
rename from recipes-security/refpolicy/refpolicy/0032-policy-modules-system=
-logging-add-rules-for-syslogd-.patch
rename to recipes-security/refpolicy/refpolicy/0033-policy-modules-system-l=
ogging-add-rules-for-syslogd-.patch
index c81bee7..4e5ee51 100644
--- a/recipes-security/refpolicy/refpolicy/0032-policy-modules-system-loggi=
ng-add-rules-for-syslogd-.patch
+++ b/recipes-security/refpolicy/refpolicy/0033-policy-modules-system-loggi=
ng-add-rules-for-syslogd-.patch
@@ -1,4 +1,4 @@
-From aaa818cd6d0b1d7a3ad99f911c6c21d5b30b9f49 Mon Sep 17 00:00:00 2001
+From 275597cbb54eb8007c07fc06c3d9bd3d3090f7f2 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 10:33:18 -0400
 Subject: [PATCH] policy/modules/system/logging: add rules for syslogd syml=
ink
@@ -18,10 +18,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
=20
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logg=
ing.te
-index 513d811ef..2d9f65d2d 100644
+index 031e2f40f..673046781 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -414,6 +414,7 @@ files_search_spool(syslogd_t)
+@@ -404,6 +404,7 @@ files_search_spool(syslogd_t)
 =20
  # Allow access for syslog-ng
  allow syslogd_t var_log_t:dir { create setattr };
diff --git a/recipes-security/refpolicy/refpolicy/0034-policy-modules-kerne=
l-files-add-rules-for-the-symlin.patch b/recipes-security/refpolicy/refpoli=
cy/0034-policy-modules-kernel-files-add-rules-for-the-symlin.patch
index 33dc366..da42fdd 100644
--- a/recipes-security/refpolicy/refpolicy/0034-policy-modules-kernel-files=
-add-rules-for-the-symlin.patch
+++ b/recipes-security/refpolicy/refpolicy/0034-policy-modules-kernel-files=
-add-rules-for-the-symlin.patch
@@ -1,4 +1,4 @@
-From 3ff1a004b77f44857dadfef3b78a49a55d90c665 Mon Sep 17 00:00:00 2001
+From 491783f2ae026ac969c9f6ef6eea1bd75ac7e2a5 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/kernel/files: add rules for the symlink of
@@ -18,10 +18,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  2 files changed, 9 insertions(+)
=20
 diff --git a/policy/modules/kernel/files.fc b/policy/modules/kernel/files.=
fc
-index a3993f5cc..f69900945 100644
+index 826722f4e..677ae96c3 100644
 --- a/policy/modules/kernel/files.fc
 +++ b/policy/modules/kernel/files.fc
-@@ -176,6 +176,7 @@ HOME_ROOT/lost\+found/.*	<<none>>
+@@ -172,6 +172,7 @@ HOME_ROOT/lost\+found/.*	<<none>>
  # /tmp
  #
  /tmp			-d	gen_context(system_u:object_r:tmp_t,s0-mls_systemhigh)
@@ -30,10 +30,10 @@ index a3993f5cc..f69900945 100644
  /tmp/\.journal			<<none>>
 =20
 diff --git a/policy/modules/kernel/files.if b/policy/modules/kernel/files.=
if
-index 6a53f886b..ad19738b3 100644
+index 34a9cd66d..7fc7e922f 100644
 --- a/policy/modules/kernel/files.if
 +++ b/policy/modules/kernel/files.if
-@@ -4451,6 +4451,7 @@ interface(`files_search_tmp',`
+@@ -4533,6 +4533,7 @@ interface(`files_search_tmp',`
  	')
 =20
  	allow $1 tmp_t:dir search_dir_perms;
@@ -41,7 +41,7 @@ index 6a53f886b..ad19738b3 100644
  ')
 =20
  ########################################
-@@ -4487,6 +4488,7 @@ interface(`files_list_tmp',`
+@@ -4569,6 +4570,7 @@ interface(`files_list_tmp',`
  	')
 =20
  	allow $1 tmp_t:dir list_dir_perms;
@@ -49,7 +49,7 @@ index 6a53f886b..ad19738b3 100644
  ')
 =20
  ########################################
-@@ -4523,6 +4525,7 @@ interface(`files_delete_tmp_dir_entry',`
+@@ -4605,6 +4607,7 @@ interface(`files_delete_tmp_dir_entry',`
  	')
 =20
  	allow $1 tmp_t:dir del_entry_dir_perms;
@@ -57,7 +57,7 @@ index 6a53f886b..ad19738b3 100644
  ')
 =20
  ########################################
-@@ -4541,6 +4544,7 @@ interface(`files_read_generic_tmp_files',`
+@@ -4623,6 +4626,7 @@ interface(`files_read_generic_tmp_files',`
  	')
 =20
  	read_files_pattern($1, tmp_t, tmp_t)
@@ -65,7 +65,7 @@ index 6a53f886b..ad19738b3 100644
  ')
 =20
  ########################################
-@@ -4559,6 +4563,7 @@ interface(`files_manage_generic_tmp_dirs',`
+@@ -4641,6 +4645,7 @@ interface(`files_manage_generic_tmp_dirs',`
  	')
 =20
  	manage_dirs_pattern($1, tmp_t, tmp_t)
@@ -73,7 +73,7 @@ index 6a53f886b..ad19738b3 100644
  ')
 =20
  ########################################
-@@ -4577,6 +4582,7 @@ interface(`files_manage_generic_tmp_files',`
+@@ -4659,6 +4664,7 @@ interface(`files_manage_generic_tmp_files',`
  	')
 =20
  	manage_files_pattern($1, tmp_t, tmp_t)
@@ -81,7 +81,7 @@ index 6a53f886b..ad19738b3 100644
  ')
 =20
  ########################################
-@@ -4613,6 +4619,7 @@ interface(`files_rw_generic_tmp_sockets',`
+@@ -4695,6 +4701,7 @@ interface(`files_rw_generic_tmp_sockets',`
  	')
 =20
  	rw_sock_files_pattern($1, tmp_t, tmp_t)
@@ -89,7 +89,7 @@ index 6a53f886b..ad19738b3 100644
  ')
 =20
  ########################################
-@@ -4820,6 +4827,7 @@ interface(`files_tmp_filetrans',`
+@@ -4902,6 +4909,7 @@ interface(`files_tmp_filetrans',`
  	')
 =20
  	filetrans_pattern($1, tmp_t, $2, $3, $4)
diff --git a/recipes-security/refpolicy/refpolicy/0035-policy-modules-kerne=
l-terminal-add-rules-for-bsdpty_.patch b/recipes-security/refpolicy/refpoli=
cy/0035-policy-modules-kernel-terminal-add-rules-for-bsdpty_.patch
deleted file mode 100644
index c6fb34f..0000000
--- a/recipes-security/refpolicy/refpolicy/0035-policy-modules-kernel-termi=
nal-add-rules-for-bsdpty_.patch
+++ /dev/null
@@ -1,124 +0,0 @@
-From cc8505dc9613a98ee8215854ece31a4aca103e8d Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH] policy/modules/kernel/terminal: add rules for bsdpty_devi=
ce_t
- to complete pty devices
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/kernel/terminal.if | 16 ++++++++++++++++
- 1 file changed, 16 insertions(+)
-
-diff --git a/policy/modules/kernel/terminal.if b/policy/modules/kernel/ter=
minal.if
-index 4bd4884f8..f70e51525 100644
---- a/policy/modules/kernel/terminal.if
-+++ b/policy/modules/kernel/terminal.if
-@@ -623,9 +623,11 @@ interface(`term_getattr_generic_ptys',`
- interface(`term_dontaudit_getattr_generic_ptys',`
- 	gen_require(`
- 		type devpts_t;
-+		type bsdpty_device_t;
- 	')
-=20
- 	dontaudit $1 devpts_t:chr_file getattr;
-+	dontaudit $1 bsdpty_device_t:chr_file getattr;
- ')
- ########################################
- ## <summary>
-@@ -641,11 +643,13 @@ interface(`term_dontaudit_getattr_generic_ptys',`
- interface(`term_ioctl_generic_ptys',`
- 	gen_require(`
- 		type devpts_t;
-+		type bsdpty_device_t;
- 	')
-=20
- 	dev_list_all_dev_nodes($1)
- 	allow $1 devpts_t:dir search;
- 	allow $1 devpts_t:chr_file ioctl;
-+	allow $1 bsdpty_device_t:chr_file ioctl;
- ')
-=20
- ########################################
-@@ -663,9 +667,11 @@ interface(`term_ioctl_generic_ptys',`
- interface(`term_setattr_generic_ptys',`
- 	gen_require(`
- 		type devpts_t;
-+		type bsdpty_device_t;
- 	')
-=20
- 	allow $1 devpts_t:chr_file setattr;
-+	allow $1 bsdpty_device_t:chr_file setattr;
- ')
-=20
- ########################################
-@@ -683,9 +689,11 @@ interface(`term_setattr_generic_ptys',`
- interface(`term_dontaudit_setattr_generic_ptys',`
- 	gen_require(`
- 		type devpts_t;
-+		type bsdpty_device_t;
- 	')
-=20
- 	dontaudit $1 devpts_t:chr_file setattr;
-+	dontaudit $1 bsdpty_device_t:chr_file setattr;
- ')
-=20
- ########################################
-@@ -703,11 +711,13 @@ interface(`term_dontaudit_setattr_generic_ptys',`
- interface(`term_use_generic_ptys',`
- 	gen_require(`
- 		type devpts_t;
-+		type bsdpty_device_t;
- 	')
-=20
- 	dev_list_all_dev_nodes($1)
- 	allow $1 devpts_t:dir list_dir_perms;
- 	allow $1 devpts_t:chr_file { rw_term_perms lock append };
-+	allow $1 bsdpty_device_t:chr_file { rw_term_perms lock append };
- ')
-=20
- ########################################
-@@ -725,9 +735,11 @@ interface(`term_use_generic_ptys',`
- interface(`term_dontaudit_use_generic_ptys',`
- 	gen_require(`
- 		type devpts_t;
-+		type bsdpty_device_t;
- 	')
-=20
- 	dontaudit $1 devpts_t:chr_file { getattr read write ioctl };
-+	dontaudit $1 bsdpty_device_t:chr_file { getattr read write ioctl };
- ')
-=20
- #######################################
-@@ -764,10 +776,12 @@ interface(`term_create_controlling_term',`
- interface(`term_setattr_controlling_term',`
- 	gen_require(`
- 		type devtty_t;
-+		type bsdpty_device_t;
- 	')
-=20
- 	dev_list_all_dev_nodes($1)
- 	allow $1 devtty_t:chr_file setattr;
-+	allow $1 bsdpty_device_t:chr_file setattr;
- ')
-=20
- ########################################
-@@ -784,10 +798,12 @@ interface(`term_setattr_controlling_term',`
- interface(`term_use_controlling_term',`
- 	gen_require(`
- 		type devtty_t;
-+		type bsdpty_device_t;
- 	')
-=20
- 	dev_list_all_dev_nodes($1)
- 	allow $1 devtty_t:chr_file { rw_term_perms lock append };
-+	allow $1 bsdpty_device_t:chr_file { rw_term_perms lock append };
- ')
-=20
- #######################################
---=20
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0035-policy-modules-syste=
m-logging-fix-auditd-startup-fai.patch b/recipes-security/refpolicy/refpoli=
cy/0035-policy-modules-system-logging-fix-auditd-startup-fai.patch
new file mode 100644
index 0000000..9856fcd
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0035-policy-modules-system-loggi=
ng-fix-auditd-startup-fai.patch
@@ -0,0 +1,64 @@
+From 25036d5f5c41e4215d071d9c1eb77760a0eca87c Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 22 Aug 2013 13:37:23 +0800
+Subject: [PATCH] policy/modules/system/logging: fix auditd startup failure=
s
+
+Fixes:
+avc:  denied  { getattr } for  pid=3D322 comm=3D"auditd"
+path=3D"/sbin/audisp-remote" dev=3D"vda" ino=3D1115
+scontext=3Dsystem_u:system_r:auditd_t
+tcontext=3Dsystem_u:object_r:audisp_remote_exec_t tclass=3Dfile permissive=
=3D0
+
+avc:  denied  { read } for  pid=3D321 comm=3D"auditd" name=3D"log" dev=3D"=
vda"
+ino=3D12552 scontext=3Dsystem_u:system_r:auditd_t
+tcontext=3Dsystem_u:object_r:var_log_t tclass=3Dlnk_file permissive=3D0
+
+avc:  denied  { getattr } for  pid=3D183 comm=3D"auditctl" name=3D"/"
+dev=3D"proc" ino=3D1 scontext=3Dsystem_u:system_r:auditctl_t
+tcontext=3Dsystem_u:object_r:proc_t tclass=3Dfilesystem permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/logging.te | 5 +++++
+ 1 file changed, 5 insertions(+)
+
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logg=
ing.te
+index 673046781..9b3254f63 100644
+--- a/policy/modules/system/logging.te
++++ b/policy/modules/system/logging.te
+@@ -117,6 +117,7 @@ files_read_etc_files(auditctl_t)
+ kernel_read_kernel_sysctls(auditctl_t)
+ kernel_read_proc_symlinks(auditctl_t)
+ kernel_setsched(auditctl_t)
++kernel_getattr_proc(auditctl_t)
+=20
+ domain_read_all_domains_state(auditctl_t)
+ domain_use_interactive_fds(auditctl_t)
+@@ -157,10 +158,13 @@ allow auditd_t auditd_etc_t:dir list_dir_perms;
+ allow auditd_t auditd_etc_t:file read_file_perms;
+ dontaudit auditd_t auditd_etc_t:file map;
+=20
++allow auditd_t audisp_remote_exec_t:file getattr;
++
+ manage_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
+ allow auditd_t auditd_log_t:dir setattr;
+ manage_lnk_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
+ allow auditd_t var_log_t:dir search_dir_perms;
++allow auditd_t var_log_t:lnk_file read_lnk_file_perms;
+=20
+ manage_files_pattern(auditd_t, auditd_runtime_t, auditd_runtime_t)
+ manage_sock_files_pattern(auditd_t, auditd_runtime_t, auditd_runtime_t)
+@@ -284,6 +288,7 @@ allow audisp_remote_t self:capability { setpcap setuid=
 };
+ allow audisp_remote_t self:process { getcap setcap };
+ allow audisp_remote_t self:tcp_socket create_socket_perms;
+ allow audisp_remote_t var_log_t:dir search_dir_perms;
++allow audisp_remote_t var_log_t:lnk_file read_lnk_file_perms;
+=20
+ manage_dirs_pattern(audisp_remote_t, audit_spool_t, audit_spool_t)
+ manage_files_pattern(audisp_remote_t, audit_spool_t, audit_spool_t)
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0036-policy-modules-kerne=
l-terminal-don-t-audit-tty_devic.patch b/recipes-security/refpolicy/refpoli=
cy/0036-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch
index cc018fa..855aae6 100644
--- a/recipes-security/refpolicy/refpolicy/0036-policy-modules-kernel-termi=
nal-don-t-audit-tty_devic.patch
+++ b/recipes-security/refpolicy/refpolicy/0036-policy-modules-kernel-termi=
nal-don-t-audit-tty_devic.patch
@@ -1,4 +1,4 @@
-From a9aebca531f52818fe77b9b21f0cad425da78e43 Mon Sep 17 00:00:00 2001
+From 15773d54215587284f937b9a37b08c682949e7ab Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/kernel/terminal: don't audit tty_device_t =
in
@@ -17,7 +17,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 3 insertions(+)
=20
 diff --git a/policy/modules/kernel/terminal.if b/policy/modules/kernel/ter=
minal.if
-index f70e51525..8f9578dbc 100644
+index 55c18dffb..e8c0735eb 100644
 --- a/policy/modules/kernel/terminal.if
 +++ b/policy/modules/kernel/terminal.if
 @@ -335,9 +335,12 @@ interface(`term_use_console',`
diff --git a/recipes-security/refpolicy/refpolicy/0037-policy-modules-syste=
m-modutils-allow-mod_t-to-access.patch b/recipes-security/refpolicy/refpoli=
cy/0037-policy-modules-system-modutils-allow-mod_t-to-access.patch
new file mode 100644
index 0000000..da03017
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0037-policy-modules-system-modut=
ils-allow-mod_t-to-access.patch
@@ -0,0 +1,67 @@
+From 1126ee6883d7e107b103a18d255416d542ca50f2 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Mon, 24 Aug 2020 11:29:09 +0800
+Subject: [PATCH] policy/modules/system/modutils: allow mod_t to access
+ confidentiality of class lockdown
+
+The SELinux lockdown implementation was introduced since kernel 5.6 by
+commit 59438b46471ae6cdfb761afc8c9beaf1e428a331. We need to allow mod_t
+and udev_t to access confidentiality of class lockdown to mount tracefs.
+
+Fixes:
+kernel: Could not create tracefs 'iwlwifi_data/filter' entry
+kernel: Could not create tracefs 'enable' entry
+kernel: Could not create tracefs 'id' entry
+kernel: Could not create tracefs 'filter' entry
+kernel: Could not create tracefs 'trigger' entry
+kernel: Could not create tracefs 'format' entry
+
+audit[170]: AVC avc:  denied  { confidentiality } for  pid=3D170
+comm=3D"modprobe" lockdown_reason=3D"use of tracefs"
+scontext=3Dsystem_u:system_r:kmod_t:s15:c0.c1023
+tcontext=3Dsystem_u:system_r:kmod_t:s15:c0.c1023 tclass=3Dlockdown
+permissive=3D0
+
+audit[190]: AVC avc:  denied  { confidentiality } for  pid=3D190
+comm=3D"systemd-udevd" lockdown_reason=3D"use of tracefs"
+scontext=3Dsystem_u:system_r:udev_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:system_r:udev_t:s0-s15:c0.c1023 tclass=3Dlockdown
+permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/modutils.te | 2 ++
+ policy/modules/system/udev.te     | 2 ++
+ 2 files changed, 4 insertions(+)
+
+diff --git a/policy/modules/system/modutils.te b/policy/modules/system/mod=
utils.te
+index ef5de835e..ee249ae04 100644
+--- a/policy/modules/system/modutils.te
++++ b/policy/modules/system/modutils.te
+@@ -41,6 +41,8 @@ dontaudit kmod_t self:capability sys_admin;
+ allow kmod_t self:udp_socket create_socket_perms;
+ allow kmod_t self:rawip_socket create_socket_perms;
+=20
++allow kmod_t self:lockdown confidentiality;
++
+ # Read module config and dependency information
+ list_dirs_pattern(kmod_t, modules_conf_t, modules_conf_t)
+ read_files_pattern(kmod_t, modules_conf_t, modules_conf_t)
+diff --git a/policy/modules/system/udev.te b/policy/modules/system/udev.te
+index 4a2283b6c..daf64482f 100644
+--- a/policy/modules/system/udev.te
++++ b/policy/modules/system/udev.te
+@@ -61,6 +61,8 @@ allow udev_t self:rawip_socket create_socket_perms;
+ # for systemd-udevd to rename interfaces
+ allow udev_t self:netlink_route_socket nlmsg_write;
+=20
++allow udev_t self:lockdown confidentiality;
++
+ can_exec(udev_t, udev_exec_t)
+=20
+ allow udev_t udev_helper_exec_t:dir list_dir_perms;
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0037-policy-modules-servi=
ces-avahi-allow-avahi_t-to-watch.patch b/recipes-security/refpolicy/refpoli=
cy/0038-policy-modules-services-avahi-allow-avahi_t-to-watch.patch
similarity index 87%
rename from recipes-security/refpolicy/refpolicy/0037-policy-modules-servic=
es-avahi-allow-avahi_t-to-watch.patch
rename to recipes-security/refpolicy/refpolicy/0038-policy-modules-services=
-avahi-allow-avahi_t-to-watch.patch
index 52887e5..1b0391d 100644
--- a/recipes-security/refpolicy/refpolicy/0037-policy-modules-services-ava=
hi-allow-avahi_t-to-watch.patch
+++ b/recipes-security/refpolicy/refpolicy/0038-policy-modules-services-ava=
hi-allow-avahi_t-to-watch.patch
@@ -1,8 +1,8 @@
-From 4316f85adb1ab6e0278fb8e8ff68b358f36a933e Mon Sep 17 00:00:00 2001
+From 92571e7c066b3d91634a4c1f55542cb528f5bac4 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 23 Jun 2020 08:19:16 +0800
-Subject: [PATCH] policy/modules/services/avahi: allow avahi_t to watch /et=
c
- directory
+Subject: [PATCH] policy/modules/services/avahi: allow avahi_t to watch
+ /etc/avahi directory
=20
 Fixes:
 type=3DAVC msg=3Daudit(1592813140.176:24): avc:  denied  { watch } for
@@ -18,7 +18,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
=20
 diff --git a/policy/modules/services/avahi.te b/policy/modules/services/av=
ahi.te
-index f77e5546d..5643349e3 100644
+index af838d8b0..674cdcb81 100644
 --- a/policy/modules/services/avahi.te
 +++ b/policy/modules/services/avahi.te
 @@ -76,6 +76,7 @@ domain_use_interactive_fds(avahi_t)
diff --git a/recipes-security/refpolicy/refpolicy/0038-policy-modules-syste=
m-getty-allow-getty_t-watch-gett.patch b/recipes-security/refpolicy/refpoli=
cy/0038-policy-modules-system-getty-allow-getty_t-watch-gett.patch
deleted file mode 100644
index 3be2cdc..0000000
--- a/recipes-security/refpolicy/refpolicy/0038-policy-modules-system-getty=
-allow-getty_t-watch-gett.patch
+++ /dev/null
@@ -1,42 +0,0 @@
-From 383a70a87049ef5065bba4c2c4d4bc3cff914358 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Tue, 23 Jun 2020 08:39:44 +0800
-Subject: [PATCH] policy/modules/system/getty: allow getty_t watch
- getty_runtime_t file
-
-Fixes:
-type=3DAVC msg=3Daudit(1592813140.280:26): avc:  denied  { watch } for
-pid=3D385 comm=3D"getty" path=3D"/run/agetty.reload" dev=3D"tmpfs" ino=3D1=
2247
-scontext=3Dsystem_u:system_r:getty_t
-tcontext=3Dsystem_u:object_r:getty_runtime_t tclass=3Dfile permissive=3D1
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/getty.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/system/getty.te b/policy/modules/system/getty.=
te
-index f5316c30a..39e27e5f1 100644
---- a/policy/modules/system/getty.te
-+++ b/policy/modules/system/getty.te
-@@ -47,6 +47,7 @@ allow getty_t getty_log_t:file { append_file_perms creat=
e_file_perms setattr_fil
- logging_log_filetrans(getty_t, getty_log_t, file)
-=20
- allow getty_t getty_runtime_t:dir watch;
-+allow getty_t getty_runtime_t:file watch;
- manage_files_pattern(getty_t, getty_runtime_t, getty_runtime_t)
- files_runtime_filetrans(getty_t, getty_runtime_t, file)
-=20
-@@ -65,6 +66,7 @@ dev_read_sysfs(getty_t)
- files_read_etc_runtime_files(getty_t)
- files_read_etc_files(getty_t)
- files_search_spool(getty_t)
-+fs_search_tmpfs(getty_t)
-=20
- fs_search_auto_mountpoints(getty_t)
- # for error condition handling
---=20
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0039-policy-modules-servi=
ces-bluetooth-allow-bluetooth_t-.patch b/recipes-security/refpolicy/refpoli=
cy/0039-policy-modules-services-bluetooth-allow-bluetooth_t-.patch
deleted file mode 100644
index 39e72e8..0000000
--- a/recipes-security/refpolicy/refpolicy/0039-policy-modules-services-blu=
etooth-allow-bluetooth_t-.patch
+++ /dev/null
@@ -1,65 +0,0 @@
-From dfc3e78dfee0709bcbfc2d1959e5b7c27922b1b7 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Tue, 23 Jun 2020 08:54:20 +0800
-Subject: [PATCH] policy/modules/services/bluetooth: allow bluetooth_t to
- create and use bluetooth_socket
-
-Fixes:
-type=3DAVC msg=3Daudit(1592813138.485:17): avc:  denied  { create } for
-pid=3D324 comm=3D"bluetoothd" scontext=3Dsystem_u:system_r:bluetooth_t
-tcontext=3Dsystem_u:system_r:bluetooth_t tclass=3Dbluetooth_socket
-permissive=3D1
-type=3DAVC msg=3Daudit(1592813138.485:18): avc:  denied  { bind } for
-pid=3D324 comm=3D"bluetoothd" scontext=3Dsystem_u:system_r:bluetooth_t
-tcontext=3Dsystem_u:system_r:bluetooth_t tclass=3Dbluetooth_socket
-permissive=3D1
-type=3DAVC msg=3Daudit(1592813138.485:19): avc:  denied  { write } for
-pid=3D324 comm=3D"bluetoothd" scontext=3Dsystem_u:system_r:bluetooth_t
-tcontext=3Dsystem_u:system_r:bluetooth_t tclass=3Dbluetooth_socket
-permissive=3D1
-type=3DAVC msg=3Daudit(1592813138.488:20): avc:  denied  { getattr } for
-pid=3D324 comm=3D"bluetoothd" path=3D"socket:[11771]" dev=3D"sockfs" ino=
=3D11771
-scontext=3Dsystem_u:system_r:bluetooth_t
-tcontext=3Dsystem_u:system_r:bluetooth_t tclass=3Dbluetooth_socket
-permissive=3D1
-type=3DAVC msg=3Daudit(1592813138.488:21): avc:  denied  { listen } for
-pid=3D324 comm=3D"bluetoothd" scontext=3Dsystem_u:system_r:bluetooth_t
-tcontext=3Dsystem_u:system_r:bluetooth_t tclass=3Dbluetooth_socket
-permissive=3D1
-type=3DAVC msg=3Daudit(1592813138.498:22): avc:  denied  { read } for
-pid=3D324 comm=3D"bluetoothd" path=3D"socket:[11771]" dev=3D"sockfs" ino=
=3D11771
-scontext=3Dsystem_u:system_r:bluetooth_t
-tcontext=3Dsystem_u:system_r:bluetooth_t tclass=3Dbluetooth_socket
-permissive=3D1
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/services/bluetooth.te | 3 +++
- 1 file changed, 3 insertions(+)
-
-diff --git a/policy/modules/services/bluetooth.te b/policy/modules/service=
s/bluetooth.te
-index 025eff444..63e50aeda 100644
---- a/policy/modules/services/bluetooth.te
-+++ b/policy/modules/services/bluetooth.te
-@@ -60,6 +60,7 @@ allow bluetooth_t self:socket create_stream_socket_perms=
;
- allow bluetooth_t self:unix_stream_socket { accept connectto listen };
- allow bluetooth_t self:tcp_socket { accept listen };
- allow bluetooth_t self:netlink_kobject_uevent_socket create_socket_perms;
-+allow bluetooth_t self:bluetooth_socket create_stream_socket_perms;
-=20
- read_files_pattern(bluetooth_t, bluetooth_conf_t, bluetooth_conf_t)
-=20
-@@ -127,6 +128,8 @@ userdom_dontaudit_use_unpriv_user_fds(bluetooth_t)
- userdom_dontaudit_use_user_terminals(bluetooth_t)
- userdom_dontaudit_search_user_home_dirs(bluetooth_t)
-=20
-+init_dbus_send_script(bluetooth_t)
-+
- optional_policy(`
- 	dbus_system_bus_client(bluetooth_t)
- 	dbus_connect_system_bus(bluetooth_t)
---=20
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0039-policy-modules-syste=
m-getty-allow-getty_t-to-search-.patch b/recipes-security/refpolicy/refpoli=
cy/0039-policy-modules-system-getty-allow-getty_t-to-search-.patch
new file mode 100644
index 0000000..d673d54
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0039-policy-modules-system-getty=
-allow-getty_t-to-search-.patch
@@ -0,0 +1,32 @@
+From f23178d9d89bf39895f75867c29bda4dfb27e786 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 23 Jun 2020 08:39:44 +0800
+Subject: [PATCH] policy/modules/system/getty: allow getty_t to search tmpf=
s
+
+Fixes:
+avc:  denied  { search } for  pid=3D211 comm=3D"agetty" name=3D"/" dev=3D"=
tmpfs"
+ino=3D1 scontext=3Dsystem_u:system_r:getty_t
+tcontext=3Dsystem_u:object_r:tmpfs_t tclass=3Ddir permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/getty.te | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/getty.te b/policy/modules/system/getty.=
te
+index 95b1ec632..0415e1ee7 100644
+--- a/policy/modules/system/getty.te
++++ b/policy/modules/system/getty.te
+@@ -66,6 +66,7 @@ dev_read_sysfs(getty_t)
+ files_read_etc_runtime_files(getty_t)
+ files_read_etc_files(getty_t)
+ files_search_spool(getty_t)
++fs_search_tmpfs(getty_t)
+=20
+ fs_search_auto_mountpoints(getty_t)
+ # for error condition handling
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0040-policy-modules-servi=
ces-bluetooth-fix-bluetoothd-sta.patch b/recipes-security/refpolicy/refpoli=
cy/0040-policy-modules-services-bluetooth-fix-bluetoothd-sta.patch
new file mode 100644
index 0000000..8532a24
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0040-policy-modules-services-blu=
etooth-fix-bluetoothd-sta.patch
@@ -0,0 +1,88 @@
+From 21c60a1ed37aef0427dbd49f602896b09b875bca Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 23 Jun 2020 08:54:20 +0800
+Subject: [PATCH] policy/modules/services/bluetooth: fix bluetoothd startup
+ failures
+
+* Allow bluetooth_t to create and use bluetooth_socket
+* Allow bluetooth_t to create alg_socket
+* Allow bluetooth_t to send and receive messages from systemd hostnamed
+  over dbus
+
+Fixes:
+avc: denied { create } for pid=3D324 comm=3D"bluetoothd"
+scontext=3Dsystem_u:system_r:bluetooth_t
+tcontext=3Dsystem_u:system_r:bluetooth_t tclass=3Dbluetooth_socket
+permissive=3D0
+
+avc: denied { bind } for pid=3D324 comm=3D"bluetoothd"
+scontext=3Dsystem_u:system_r:bluetooth_t
+tcontext=3Dsystem_u:system_r:bluetooth_t tclass=3Dbluetooth_socket
+permissive=3D0
+
+avc: denied { write } for pid=3D324 comm=3D"bluetoothd"
+scontext=3Dsystem_u:system_r:bluetooth_t
+tcontext=3Dsystem_u:system_r:bluetooth_t tclass=3Dbluetooth_socket
+permissive=3D0
+
+avc: denied { getattr } for pid=3D324 comm=3D"bluetoothd"
+path=3D"socket:[11771]" dev=3D"sockfs" ino=3D11771
+scontext=3Dsystem_u:system_r:bluetooth_t
+tcontext=3Dsystem_u:system_r:bluetooth_t tclass=3Dbluetooth_socket
+permissive=3D0
+
+avc: denied { listen } for pid=3D324 comm=3D"bluetoothd"
+scontext=3Dsystem_u:system_r:bluetooth_t
+tcontext=3Dsystem_u:system_r:bluetooth_t tclass=3Dbluetooth_socket
+permissive=3D0
+
+avc: denied { read } for pid=3D324 comm=3D"bluetoothd" path=3D"socket:[117=
71]"
+dev=3D"sockfs" ino=3D11771 scontext=3Dsystem_u:system_r:bluetooth_t
+tcontext=3Dsystem_u:system_r:bluetooth_t tclass=3Dbluetooth_socket
+permissive=3D0
+
+avc:  denied  { create } for  pid=3D268 comm=3D"bluetoothd"
+scontext=3Dsystem_u:system_r:bluetooth_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:system_r:bluetooth_t:s0-s15:c0.c1023 tclass=3Dalg_sock=
et
+permissive=3D0
+
+avc:  denied  { send_msg } for msgtype=3Dmethod_call
+interface=3Dorg.freedesktop.DBus.Properties member=3DGetAll
+dest=3Dorg.freedesktop.hostname1 spid=3D266 tpid=3D312
+scontext=3Dsystem_u:system_r:bluetooth_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:system_r:systemd_hostnamed_t:s0-s15:c0.c1023
+tclass=3Ddbus permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/bluetooth.te | 5 +++++
+ 1 file changed, 5 insertions(+)
+
+diff --git a/policy/modules/services/bluetooth.te b/policy/modules/service=
s/bluetooth.te
+index 69a38543e..b3df695db 100644
+--- a/policy/modules/services/bluetooth.te
++++ b/policy/modules/services/bluetooth.te
+@@ -60,6 +60,8 @@ allow bluetooth_t self:socket create_stream_socket_perms=
;
+ allow bluetooth_t self:unix_stream_socket { accept connectto listen };
+ allow bluetooth_t self:tcp_socket { accept listen };
+ allow bluetooth_t self:netlink_kobject_uevent_socket create_socket_perms;
++allow bluetooth_t self:bluetooth_socket create_stream_socket_perms;
++allow bluetooth_t self:alg_socket create;
+=20
+ read_files_pattern(bluetooth_t, bluetooth_conf_t, bluetooth_conf_t)
+=20
+@@ -127,6 +129,9 @@ userdom_dontaudit_use_unpriv_user_fds(bluetooth_t)
+ userdom_dontaudit_use_user_terminals(bluetooth_t)
+ userdom_dontaudit_search_user_home_dirs(bluetooth_t)
+=20
++init_dbus_send_script(bluetooth_t)
++systemd_dbus_chat_hostnamed(bluetooth_t)
++
+ optional_policy(`
+ 	dbus_system_bus_client(bluetooth_t)
+ 	dbus_connect_system_bus(bluetooth_t)
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0040-policy-modules-roles=
-sysadm-allow-sysadm-to-run-rpci.patch b/recipes-security/refpolicy/refpoli=
cy/0041-policy-modules-roles-sysadm-allow-sysadm-to-run-rpci.patch
similarity index 87%
rename from recipes-security/refpolicy/refpolicy/0040-policy-modules-roles-=
sysadm-allow-sysadm-to-run-rpci.patch
rename to recipes-security/refpolicy/refpolicy/0041-policy-modules-roles-sy=
sadm-allow-sysadm-to-run-rpci.patch
index e5ad291..bd06065 100644
--- a/recipes-security/refpolicy/refpolicy/0040-policy-modules-roles-sysadm=
-allow-sysadm-to-run-rpci.patch
+++ b/recipes-security/refpolicy/refpolicy/0041-policy-modules-roles-sysadm=
-allow-sysadm-to-run-rpci.patch
@@ -1,4 +1,4 @@
-From 354389c93e26bb8d8e8c1c126b01d838a6a214c8 Mon Sep 17 00:00:00 2001
+From e67fe4fa79d59be7bcefd256c1966ea8c034a3d9 Mon Sep 17 00:00:00 2001
 From: Roy Li <rongqing.li@windriver.com>
 Date: Sat, 15 Feb 2014 09:45:00 +0800
 Subject: [PATCH] policy/modules/roles/sysadm: allow sysadm to run rpcinfo
@@ -22,10 +22,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
=20
 diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.=
te
-index f0370b426..fc0945fe4 100644
+index ddf973693..1642f3b93 100644
 --- a/policy/modules/roles/sysadm.te
 +++ b/policy/modules/roles/sysadm.te
-@@ -962,6 +962,7 @@ optional_policy(`
+@@ -947,6 +947,7 @@ optional_policy(`
  ')
 =20
  optional_policy(`
diff --git a/recipes-security/refpolicy/refpolicy/0041-policy-modules-servi=
ces-rpc-add-capability-dac_read_.patch b/recipes-security/refpolicy/refpoli=
cy/0042-policy-modules-services-rpc-add-capability-dac_read_.patch
similarity index 88%
rename from recipes-security/refpolicy/refpolicy/0041-policy-modules-servic=
es-rpc-add-capability-dac_read_.patch
rename to recipes-security/refpolicy/refpolicy/0042-policy-modules-services=
-rpc-add-capability-dac_read_.patch
index 074647d..534c280 100644
--- a/recipes-security/refpolicy/refpolicy/0041-policy-modules-services-rpc=
-add-capability-dac_read_.patch
+++ b/recipes-security/refpolicy/refpolicy/0042-policy-modules-services-rpc=
-add-capability-dac_read_.patch
@@ -1,4 +1,4 @@
-From fbc8f3140bf6b519bad568fc1d840c9043fc13db Mon Sep 17 00:00:00 2001
+From 7c94b6aa3c679dc201ed5a907f713c0857d8b8ca Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 14 May 2019 15:22:08 +0800
 Subject: [PATCH] policy/modules/services/rpc: add capability dac_read_sear=
ch
@@ -17,10 +17,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+), 1 deletion(-)
=20
 diff --git a/policy/modules/services/rpc.te b/policy/modules/services/rpc.=
te
-index 020dbc4ad..c06ff803f 100644
+index c3e37177b..87b6b4561 100644
 --- a/policy/modules/services/rpc.te
 +++ b/policy/modules/services/rpc.te
-@@ -142,7 +142,7 @@ optional_policy(`
+@@ -232,7 +232,7 @@ optional_policy(`
  # Local policy
  #
 =20
diff --git a/recipes-security/refpolicy/refpolicy/0042-policy-modules-servi=
ces-rpcbind-allow-rpcbind_t-to-c.patch b/recipes-security/refpolicy/refpoli=
cy/0043-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch
similarity index 61%
rename from recipes-security/refpolicy/refpolicy/0042-policy-modules-servic=
es-rpcbind-allow-rpcbind_t-to-c.patch
rename to recipes-security/refpolicy/refpolicy/0043-policy-modules-services=
-rpcbind-allow-rpcbind_t-to-c.patch
index 7ef81fe..408df05 100644
--- a/recipes-security/refpolicy/refpolicy/0042-policy-modules-services-rpc=
bind-allow-rpcbind_t-to-c.patch
+++ b/recipes-security/refpolicy/refpolicy/0043-policy-modules-services-rpc=
bind-allow-rpcbind_t-to-c.patch
@@ -1,9 +1,12 @@
-From dfe79338ee9915527afd9e0943ed84e0347c4d66 Mon Sep 17 00:00:00 2001
+From 40101e4da939fcea2eebe3e4800d0de4e551ca26 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Wed, 1 Jul 2020 08:44:07 +0800
 Subject: [PATCH] policy/modules/services/rpcbind: allow rpcbind_t to creat=
e
  directory with label rpcbind_runtime_t
=20
+* Allow rpcbind_t to create directory with label rpcbind_runtime_t
+* Set context for nfsserver and nfscommon
+
 Fixes:
 avc:  denied  { create } for  pid=3D136 comm=3D"rpcbind" name=3D"rpcbind"
 scontext=3Dsystem_u:system_r:rpcbind_t:s0-s15:c0.c1023
@@ -13,11 +16,26 @@ Upstream-Status: Inappropriate [embedded specific]
=20
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
+ policy/modules/services/rpc.fc     | 2 ++
  policy/modules/services/rpcbind.te | 5 +++--
- 1 file changed, 3 insertions(+), 2 deletions(-)
+ 2 files changed, 5 insertions(+), 2 deletions(-)
=20
+diff --git a/policy/modules/services/rpc.fc b/policy/modules/services/rpc.=
fc
+index 88d2acaf0..d9c0a4aa7 100644
+--- a/policy/modules/services/rpc.fc
++++ b/policy/modules/services/rpc.fc
+@@ -1,7 +1,9 @@
+ /etc/exports	--	gen_context(system_u:object_r:exports_t,s0)
+=20
+ /etc/rc\.d/init\.d/nfs	--	gen_context(system_u:object_r:nfsd_initrc_exec_=
t,s0)
++/etc/rc\.d/init\.d/nfsserver	--	gen_context(system_u:object_r:nfsd_initrc=
_exec_t,s0)
+ /etc/rc\.d/init\.d/nfslock	--	gen_context(system_u:object_r:rpcd_initrc_e=
xec_t,s0)
++/etc/rc\.d/init\.d/nfscommon	--	gen_context(system_u:object_r:rpcd_initrc=
_exec_t,s0)
+ /etc/rc\.d/init\.d/rpcidmapd	--	gen_context(system_u:object_r:rpcd_initrc=
_exec_t,s0)
+=20
+ /usr/bin/rpc\..*	--	gen_context(system_u:object_r:rpcd_exec_t,s0)
 diff --git a/policy/modules/services/rpcbind.te b/policy/modules/services/=
rpcbind.te
-index 69ed49d8b..4f110773a 100644
+index 370c9bce6..8972980fa 100644
 --- a/policy/modules/services/rpcbind.te
 +++ b/policy/modules/services/rpcbind.te
 @@ -25,16 +25,17 @@ files_type(rpcbind_var_lib_t)
diff --git a/recipes-security/refpolicy/refpolicy/0043-policy-modules-servi=
ces-rngd-fix-security-context-fo.patch b/recipes-security/refpolicy/refpoli=
cy/0044-policy-modules-services-rngd-fix-security-context-fo.patch
similarity index 66%
rename from recipes-security/refpolicy/refpolicy/0043-policy-modules-servic=
es-rngd-fix-security-context-fo.patch
rename to recipes-security/refpolicy/refpolicy/0044-policy-modules-services=
-rngd-fix-security-context-fo.patch
index 491cf02..7bd1402 100644
--- a/recipes-security/refpolicy/refpolicy/0043-policy-modules-services-rng=
d-fix-security-context-fo.patch
+++ b/recipes-security/refpolicy/refpolicy/0044-policy-modules-services-rng=
d-fix-security-context-fo.patch
@@ -1,23 +1,24 @@
-From 617b8b558674a77cd2b1eff9155f276985456684 Mon Sep 17 00:00:00 2001
+From 5dbfff582a9c7745f8517adefb27c5f90653f8fa Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Wed, 25 May 2016 03:16:24 -0400
 Subject: [PATCH] policy/modules/services/rngd: fix security context for
  rng-tools
=20
-* fix security context for /etc/init.d/rng-tools
-* allow rngd_t to search /run/systemd/journal
+* Fix security context for /etc/init.d/rng-tools
+* Allow rngd_t to read sysfs
=20
 Fixes:
-audit: type=3D1400 audit(1592874699.503:11): avc:  denied  { read } for
-pid=3D355 comm=3D"rngd" name=3D"cpu" dev=3D"sysfs" ino=3D36
-scontext=3Dsystem_u:system_r:rngd_t tcontext=3Dsystem_u:object_r:sysfs_t
-tclass=3Ddir permissive=3D1
-audit: type=3D1400 audit(1592874699.505:12): avc:  denied  { getsched }
-for pid=3D355 comm=3D"rngd" scontext=3Dsystem_u:system_r:rngd_t
-tcontext=3Dsystem_u:system_r:rngd_t tclass=3Dprocess permissive=3D1
-audit: type=3D1400 audit(1592874699.508:13): avc:  denied  { setsched }
-for pid=3D355 comm=3D"rngd" scontext=3Dsystem_u:system_r:rngd_t
-tcontext=3Dsystem_u:system_r:rngd_t tclass=3Dprocess permissive=3D1
+avc: denied { read } for pid=3D355 comm=3D"rngd" name=3D"cpu" dev=3D"sysfs=
"
+ino=3D36 scontext=3Dsystem_u:system_r:rngd_t
+tcontext=3Dsystem_u:object_r:sysfs_t tclass=3Ddir permissive=3D1
+
+avc: denied { getsched } for pid=3D355 comm=3D"rngd"
+scontext=3Dsystem_u:system_r:rngd_t tcontext=3Dsystem_u:system_r:rngd_t
+tclass=3Dprocess permissive=3D1
+
+avc: denied { setsched } for pid=3D355 comm=3D"rngd"
+scontext=3Dsystem_u:system_r:rngd_t tcontext=3Dsystem_u:system_r:rngd_t
+tclass=3Dprocess permissive=3D1
=20
 Upstream-Status: Inappropriate [embedded specific]
=20
@@ -39,7 +40,7 @@ index 382c067f9..0ecc5acc4 100644
  /usr/bin/rngd	--	gen_context(system_u:object_r:rngd_exec_t,s0)
 =20
 diff --git a/policy/modules/services/rngd.te b/policy/modules/services/rng=
d.te
-index 839813216..c4ffafb5d 100644
+index 4540e4ec7..48f08fb48 100644
 --- a/policy/modules/services/rngd.te
 +++ b/policy/modules/services/rngd.te
 @@ -21,7 +21,7 @@ files_runtime_file(rngd_runtime_t)
diff --git a/recipes-security/refpolicy/refpolicy/0044-policy-modules-syste=
m-authlogin-allow-chkpwd_t-to-ma.patch b/recipes-security/refpolicy/refpoli=
cy/0044-policy-modules-system-authlogin-allow-chkpwd_t-to-ma.patch
deleted file mode 100644
index f929df2..0000000
--- a/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-authl=
ogin-allow-chkpwd_t-to-ma.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-From 0e3199f243a47853452a877ebad5360bc8c1f2f1 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Thu, 21 Nov 2019 13:58:28 +0800
-Subject: [PATCH] policy/modules/system/authlogin: allow chkpwd_t to map
- shadow_t
-
-Fixes:
-avc:  denied  { map } for  pid=3D244 comm=3D"unix_chkpwd" path=3D"/etc/sha=
dow"
-dev=3D"vda" ino=3D443 scontext=3Dsystem_u:system_r:chkpwd_t
-tcontext=3Dsystem_u:object_r:shadow_t tclass=3Dfile permissive=3D0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/authlogin.te | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/policy/modules/system/authlogin.te b/policy/modules/system/au=
thlogin.te
-index 0fc5951e9..e999fa798 100644
---- a/policy/modules/system/authlogin.te
-+++ b/policy/modules/system/authlogin.te
-@@ -100,7 +100,7 @@ allow chkpwd_t self:capability { dac_override setuid }=
;
- dontaudit chkpwd_t self:capability sys_tty_config;
- allow chkpwd_t self:process { getattr signal };
-=20
--allow chkpwd_t shadow_t:file read_file_perms;
-+allow chkpwd_t shadow_t:file { read_file_perms map };
- files_list_etc(chkpwd_t)
-=20
- kernel_read_crypto_sysctls(chkpwd_t)
---=20
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0045-policy-modules-servi=
ces-ssh-allow-ssh_keygen_t-to-re.patch b/recipes-security/refpolicy/refpoli=
cy/0045-policy-modules-services-ssh-allow-ssh_keygen_t-to-re.patch
new file mode 100644
index 0000000..4b7e2b5
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0045-policy-modules-services-ssh=
-allow-ssh_keygen_t-to-re.patch
@@ -0,0 +1,34 @@
+From be61411d6d7d3bb2c700ec24f42661ce9c728df4 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 29 Jan 2021 10:32:00 +0800
+Subject: [PATCH] policy/modules/services/ssh: allow ssh_keygen_t to read
+ proc_t
+
+Fixes:
+avc:  denied  { read } for  pid=3D353 comm=3D"ssh-keygen" name=3D"filesyst=
ems"
+dev=3D"proc" ino=3D4026532078 scontext=3Dsystem_u:system_r:ssh_keygen_t
+tcontext=3Dsystem_u:object_r:proc_t tclass=3Dfile permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/ssh.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/services/ssh.te b/policy/modules/services/ssh.=
te
+index 238c45ed8..2bbf50e84 100644
+--- a/policy/modules/services/ssh.te
++++ b/policy/modules/services/ssh.te
+@@ -330,6 +330,8 @@ allow ssh_keygen_t self:process { sigchld sigkill sigs=
top signull signal };
+=20
+ allow ssh_keygen_t self:unix_stream_socket create_stream_socket_perms;
+=20
++allow ssh_keygen_t proc_t:file read_file_perms;
++
+ allow ssh_keygen_t sshd_key_t:file manage_file_perms;
+ files_etc_filetrans(ssh_keygen_t, sshd_key_t, file)
+=20
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0045-policy-modules-syste=
m-udev-allow-udevadm_t-to-search.patch b/recipes-security/refpolicy/refpoli=
cy/0045-policy-modules-system-udev-allow-udevadm_t-to-search.patch
deleted file mode 100644
index 03d9552..0000000
--- a/recipes-security/refpolicy/refpolicy/0045-policy-modules-system-udev-=
allow-udevadm_t-to-search.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-From bd03c34ab3c193d6c21a6c0b951e89dd4e24eee6 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Fri, 19 Jun 2020 15:21:26 +0800
-Subject: [PATCH] policy/modules/system/udev: allow udevadm_t to search bin=
 dir
-
-Fixes:
-audit: type=3D1400 audit(1592894099.930:6): avc:  denied  { search } for
-pid=3D153 comm=3D"udevadm" name=3D"bin" dev=3D"vda" ino=3D13
-scontext=3Dsystem_u:system_r:udevadm_t tcontext=3Dsystem_u:object_r:bin_t
-tclass=3Ddir permissive=3D0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/udev.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/system/udev.te b/policy/modules/system/udev.te
-index 52da11acd..3a4d7362c 100644
---- a/policy/modules/system/udev.te
-+++ b/policy/modules/system/udev.te
-@@ -415,6 +415,8 @@ dev_read_urand(udevadm_t)
- files_read_etc_files(udevadm_t)
- files_read_usr_files(udevadm_t)
-=20
-+corecmd_search_bin(udevadm_t)
-+
- init_list_runtime(udevadm_t)
- init_read_state(udevadm_t)
-=20
---=20
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0049-policy-modules-servi=
ces-ssh-make-respective-init-scr.patch b/recipes-security/refpolicy/refpoli=
cy/0046-policy-modules-services-ssh-make-respective-init-scr.patch
similarity index 89%
rename from recipes-security/refpolicy/refpolicy/0049-policy-modules-servic=
es-ssh-make-respective-init-scr.patch
rename to recipes-security/refpolicy/refpolicy/0046-policy-modules-services=
-ssh-make-respective-init-scr.patch
index 86df765..fd8d527 100644
--- a/recipes-security/refpolicy/refpolicy/0049-policy-modules-services-ssh=
-make-respective-init-scr.patch
+++ b/recipes-security/refpolicy/refpolicy/0046-policy-modules-services-ssh=
-make-respective-init-scr.patch
@@ -1,4 +1,4 @@
-From 878f3eb8e0716764ea4d42b996f58ea9072204fc Mon Sep 17 00:00:00 2001
+From 20e6395a7e8bce552fb0190dbc57d836d763fc18 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Sun, 28 Jun 2020 16:14:45 +0800
 Subject: [PATCH] policy/modules/services/ssh: make respective init scripts
@@ -14,7 +14,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+), 3 deletions(-)
=20
 diff --git a/policy/modules/services/ssh.te b/policy/modules/services/ssh.=
te
-index fefca0c20..db62eaa18 100644
+index 2bbf50e84..ad0a1b7ad 100644
 --- a/policy/modules/services/ssh.te
 +++ b/policy/modules/services/ssh.te
 @@ -80,9 +80,7 @@ userdom_user_home_content(ssh_home_t)
diff --git a/recipes-security/refpolicy/refpolicy/0046-policy-modules-udev-=
do-not-audit-udevadm_t-to-read-w.patch b/recipes-security/refpolicy/refpoli=
cy/0046-policy-modules-udev-do-not-audit-udevadm_t-to-read-w.patch
deleted file mode 100644
index 9397287..0000000
--- a/recipes-security/refpolicy/refpolicy/0046-policy-modules-udev-do-not-=
audit-udevadm_t-to-read-w.patch
+++ /dev/null
@@ -1,37 +0,0 @@
-From 8b5eb5b2e01a7686c43ba7b53cc76f465f9e8f56 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Tue, 30 Jun 2020 09:27:45 +0800
-Subject: [PATCH] policy/modules/udev: do not audit udevadm_t to read/write
- /dev/console
-
-Fixes:
-avc:  denied  { read write } for  pid=3D162 comm=3D"udevadm"
-path=3D"/dev/console" dev=3D"devtmpfs" ino=3D10034
-scontext=3Dsystem_u:system_r:udevadm_t:s0-s15:c0.c1023
-tcontext=3Dsystem_u:object_r:console_device_t:s0 tclass=3Dchr_file
-permissive=3D0
-avc:  denied  { use } for  pid=3D162 comm=3D"udevadm" path=3D"/dev/console=
"
-dev=3D"devtmpfs" ino=3D10034
-scontext=3Dsystem_u:system_r:udevadm_t:s0-s15:c0.c1023
-tcontext=3Dsystem_u:system_r:init_t:s0-s15:c0.c1023 tclass=3Dfd permissive=
=3D0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/udev.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/system/udev.te b/policy/modules/system/udev.te
-index 3a4d7362c..e483d63d3 100644
---- a/policy/modules/system/udev.te
-+++ b/policy/modules/system/udev.te
-@@ -425,3 +425,5 @@ kernel_read_system_state(udevadm_t)
-=20
- seutil_read_file_contexts(udevadm_t)
-=20
-+init_dontaudit_use_fds(udevadm_t)
-+term_dontaudit_use_console(udevadm_t)
---=20
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0050-policy-modules-kerne=
l-terminal-allow-loging-to-reset.patch b/recipes-security/refpolicy/refpoli=
cy/0047-policy-modules-kernel-terminal-allow-loging-to-reset.patch
similarity index 90%
rename from recipes-security/refpolicy/refpolicy/0050-policy-modules-kernel=
-terminal-allow-loging-to-reset.patch
rename to recipes-security/refpolicy/refpolicy/0047-policy-modules-kernel-t=
erminal-allow-loging-to-reset.patch
index e15e57b..cafdd61 100644
--- a/recipes-security/refpolicy/refpolicy/0050-policy-modules-kernel-termi=
nal-allow-loging-to-reset.patch
+++ b/recipes-security/refpolicy/refpolicy/0047-policy-modules-kernel-termi=
nal-allow-loging-to-reset.patch
@@ -1,4 +1,4 @@
-From fb900b71d7e1fa5c3bd997e6deadcaae2b65b05a Mon Sep 17 00:00:00 2001
+From f0249cb5802af7f9113786940d0c49e786f774ae Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Mon, 29 Jun 2020 14:27:02 +0800
 Subject: [PATCH] policy/modules/kernel/terminal: allow loging to reset tty
@@ -12,7 +12,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+), 3 deletions(-)
=20
 diff --git a/policy/modules/kernel/terminal.if b/policy/modules/kernel/ter=
minal.if
-index 8f9578dbc..3821ab9b0 100644
+index e8c0735eb..9ccecfa0d 100644
 --- a/policy/modules/kernel/terminal.if
 +++ b/policy/modules/kernel/terminal.if
 @@ -119,9 +119,7 @@ interface(`term_user_tty',`
diff --git a/recipes-security/refpolicy/refpolicy/0047-policy-modules-servi=
ces-rdisc-allow-rdisc_t-to-searc.patch b/recipes-security/refpolicy/refpoli=
cy/0047-policy-modules-services-rdisc-allow-rdisc_t-to-searc.patch
deleted file mode 100644
index bfb50cc..0000000
--- a/recipes-security/refpolicy/refpolicy/0047-policy-modules-services-rdi=
sc-allow-rdisc_t-to-searc.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-From 6bcf62e310931e8be943520a7e1a5686f54a8e34 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Tue, 23 Jun 2020 15:44:43 +0800
-Subject: [PATCH] policy/modules/services/rdisc: allow rdisc_t to search sb=
in
- dir
-
-Fixes:
-avc:  denied  { search } for  pid=3D225 comm=3D"rdisc" name=3D"sbin" dev=
=3D"vda"
-ino=3D1478 scontext=3Dsystem_u:system_r:rdisc_t
-tcontext=3Dsystem_u:object_r:bin_t tclass=3Ddir permissive=3D0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/services/rdisc.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/services/rdisc.te b/policy/modules/services/rd=
isc.te
-index 82d54dbb7..1dd458f8e 100644
---- a/policy/modules/services/rdisc.te
-+++ b/policy/modules/services/rdisc.te
-@@ -47,6 +47,8 @@ sysnet_read_config(rdisc_t)
-=20
- userdom_dontaudit_use_unpriv_user_fds(rdisc_t)
-=20
-+corecmd_search_bin(rdisc_t)
-+
- optional_policy(`
- 	seutil_sigchld_newrole(rdisc_t)
- ')
---=20
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0048-policy-modules-syste=
m-logging-fix-auditd-startup-fai.patch b/recipes-security/refpolicy/refpoli=
cy/0048-policy-modules-system-logging-fix-auditd-startup-fai.patch
deleted file mode 100644
index cb5b88d..0000000
--- a/recipes-security/refpolicy/refpolicy/0048-policy-modules-system-loggi=
ng-fix-auditd-startup-fai.patch
+++ /dev/null
@@ -1,52 +0,0 @@
-From b585008cec90386903e7613a4a22286c0a94be8c Mon Sep 17 00:00:00 2001
-From: Wenzong Fan <wenzong.fan@windriver.com>
-Date: Tue, 24 Jan 2017 08:45:35 +0000
-Subject: [PATCH] policy/modules/system/logging: fix auditd startup failure=
s
-
-Fixes:
-  avc: denied { getcap } for pid=3D849 comm=3D"auditctl" \
-  scontext=3Dsystem_u:system_r:auditctl_t:s0-s15:c0.c1023 \
-  tcontext=3Dsystem_u:system_r:auditctl_t:s0-s15:c0.c1023 \
-  tclass=3Dprocess
-
-  avc: denied { setattr } for pid=3D848 comm=3D"auditd" \
-  name=3D"audit" dev=3D"tmpfs" ino=3D9569 \
-  scontext=3Dsystem_u:system_r:auditd_t:s15:c0.c1023 \
-  tcontext=3Dsystem_u:object_r:auditd_log_t:s15:c0.c1023 \
-  tclass=3Ddir
-
-  avc: denied { search } for pid=3D731 comm=3D"auditd" \
-  name=3D"/" dev=3D"tmpfs" ino=3D9399 \
-  scontext=3Dsystem_u:system_r:auditd_t:s15:c0.c1023 \
-  tcontext=3Dsystem_u:object_r:tmpfs_t:s0 tclass=3Ddir
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
----
- policy/modules/system/logging.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/system/logging.te b/policy/modules/system/logg=
ing.te
-index 2d9f65d2d..95309f334 100644
---- a/policy/modules/system/logging.te
-+++ b/policy/modules/system/logging.te
-@@ -157,6 +157,7 @@ allow auditd_t auditd_etc_t:dir list_dir_perms;
- allow auditd_t auditd_etc_t:file read_file_perms;
- dontaudit auditd_t auditd_etc_t:file map;
-=20
-+manage_dirs_pattern(auditd_t, auditd_log_t, auditd_log_t)
- manage_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
- allow auditd_t auditd_log_t:dir setattr;
- manage_lnk_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
-@@ -177,6 +178,7 @@ dev_read_sysfs(auditd_t)
- fs_getattr_all_fs(auditd_t)
- fs_search_auto_mountpoints(auditd_t)
- fs_rw_anon_inodefs_files(auditd_t)
-+fs_search_tmpfs(auditd_t)
-=20
- selinux_search_fs(auditctl_t)
-=20
---=20
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0051-policy-modules-syste=
m-selinuxutil-allow-semanage_t-t.patch b/recipes-security/refpolicy/refpoli=
cy/0048-policy-modules-system-selinuxutil-allow-semanage_t-t.patch
similarity index 84%
rename from recipes-security/refpolicy/refpolicy/0051-policy-modules-system=
-selinuxutil-allow-semanage_t-t.patch
rename to recipes-security/refpolicy/refpolicy/0048-policy-modules-system-s=
elinuxutil-allow-semanage_t-t.patch
index d4f996d..54dd451 100644
--- a/recipes-security/refpolicy/refpolicy/0051-policy-modules-system-selin=
uxutil-allow-semanage_t-t.patch
+++ b/recipes-security/refpolicy/refpolicy/0048-policy-modules-system-selin=
uxutil-allow-semanage_t-t.patch
@@ -1,4 +1,4 @@
-From 2c8464254adf0b2635e5abf4ccc4473c96fa0006 Mon Sep 17 00:00:00 2001
+From 74f611538d63cdf4157e6b5f4b982cafe0378b9a Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Mon, 29 Jun 2020 14:30:58 +0800
 Subject: [PATCH] policy/modules/system/selinuxutil: allow semanage_t to re=
ad
@@ -12,10 +12,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+), 4 deletions(-)
=20
 diff --git a/policy/modules/system/selinuxutil.te b/policy/modules/system/=
selinuxutil.te
-index fad28f179..09fef149b 100644
+index 8f8f42ec7..a505b3987 100644
 --- a/policy/modules/system/selinuxutil.te
 +++ b/policy/modules/system/selinuxutil.te
-@@ -544,10 +544,8 @@ userdom_map_user_home_content_files(semanage_t)
+@@ -549,10 +549,8 @@ userdom_map_user_home_content_files(semanage_t)
  userdom_read_user_tmp_files(semanage_t)
  userdom_map_user_tmp_files(semanage_t)
 =20
diff --git a/recipes-security/refpolicy/refpolicy/0054-policy-modules-syste=
m-systemd-enable-support-for-sys.patch b/recipes-security/refpolicy/refpoli=
cy/0049-policy-modules-system-systemd-enable-support-for-sys.patch
similarity index 89%
rename from recipes-security/refpolicy/refpolicy/0054-policy-modules-system=
-systemd-enable-support-for-sys.patch
rename to recipes-security/refpolicy/refpolicy/0049-policy-modules-system-s=
ystemd-enable-support-for-sys.patch
index 9dde899..ae1d71a 100644
--- a/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-syste=
md-enable-support-for-sys.patch
+++ b/recipes-security/refpolicy/refpolicy/0049-policy-modules-system-syste=
md-enable-support-for-sys.patch
@@ -1,4 +1,4 @@
-From 9eee952a306000eaa5e92b578f3caa35b6a35699 Mon Sep 17 00:00:00 2001
+From c2a6ad9b4eee990b79175ec1866cfe20b7c61ef3 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Thu, 4 Feb 2016 06:03:19 -0500
 Subject: [PATCH] policy/modules/system/systemd: enable support for
@@ -36,10 +36,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 5 insertions(+), 1 deletion(-)
=20
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/syst=
emd.te
-index 136990d08..c7fe51b62 100644
+index 2e08efd19..7da836136 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -10,7 +10,7 @@ policy_module(systemd, 1.9.14)
+@@ -10,7 +10,7 @@ policy_module(systemd, 1.11.1)
  ## Enable support for systemd-tmpfiles to manage all non-security files.
  ## </p>
  ## </desc>
@@ -48,10 +48,10 @@ index 136990d08..c7fe51b62 100644
 =20
  ## <desc>
  ## <p>
-@@ -1196,6 +1196,10 @@ files_relabel_var_lib_dirs(systemd_tmpfiles_t)
- files_relabelfrom_home(systemd_tmpfiles_t)
+@@ -1332,6 +1332,10 @@ files_relabelfrom_home(systemd_tmpfiles_t)
  files_relabelto_home(systemd_tmpfiles_t)
  files_relabelto_etc_dirs(systemd_tmpfiles_t)
+ files_setattr_lock_dirs(systemd_tmpfiles_t)
 +
 +files_manage_non_auth_files(systemd_tmpfiles_t)
 +files_relabel_non_auth_files(systemd_tmpfiles_t)
diff --git a/recipes-security/refpolicy/refpolicy/0050-policy-modules-syste=
m-systemd-fix-systemd-resolved-s.patch b/recipes-security/refpolicy/refpoli=
cy/0050-policy-modules-system-systemd-fix-systemd-resolved-s.patch
new file mode 100644
index 0000000..a0dc9f2
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0050-policy-modules-system-syste=
md-fix-systemd-resolved-s.patch
@@ -0,0 +1,69 @@
+From 8e762e1070e98a4235a70536ee6ca81725858a4b Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Mon, 25 Jan 2021 14:14:59 +0800
+Subject: [PATCH] policy/modules/system/systemd: fix systemd-resolved start=
up
+ failures
+
+* Allow systemd_resolved_t to create socket file
+* Allow systemd_resolved_t to manage systemd_resolved_runtime_t link
+  files
+* Allow systemd_resolved_t to send and recevie messages from dhcpc over
+  dbus
+
+Fixes:
+avc:  denied  { create } for  pid=3D258 comm=3D"systemd-resolve"
+name=3D"io.systemd.Resolve"
+scontext=3Dsystem_u:system_r:systemd_resolved_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:systemd_resolved_runtime_t:s0
+tclass=3Dsock_file permissive=3D0
+
+avc:  denied  { create } for  pid=3D329 comm=3D"systemd-resolve"
+name=3D".#stub-resolv.conf53cb7f9d1e3aa72b"
+scontext=3Dsystem_u:system_r:systemd_resolved_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:systemd_resolved_runtime_t:s0 tclass=3Dlnk_fi=
le
+permissive=3D0
+
+avc:  denied  { send_msg } for msgtype=3Dmethod_call
+interface=3Dorg.freedesktop.resolve1.Manager member=3DRevertLink
+dest=3Dorg.freedesktop.resolve1 spid=3D340 tpid=3D345
+scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:system_r:systemd_resolved_t:s0-s15:c0.c1023
+tclass=3Ddbus permissive=3D0
+
+avc:  denied  { send_msg } for msgtype=3Dmethod_return dest=3D:1.6 spid=3D=
345
+tpid=3D340 scontext=3Dsystem_u:system_r:systemd_resolved_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023 tclass=3Ddbus
+permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 4 ++++
+ 1 file changed, 4 insertions(+)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/syst=
emd.te
+index 7da836136..0411729ea 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -1164,6 +1164,8 @@ allow systemd_resolved_t systemd_networkd_runtime_t:=
dir watch;
+=20
+ manage_dirs_pattern(systemd_resolved_t, systemd_resolved_runtime_t, syste=
md_resolved_runtime_t)
+ manage_files_pattern(systemd_resolved_t, systemd_resolved_runtime_t, syst=
emd_resolved_runtime_t)
++manage_sock_files_pattern(systemd_resolved_t, systemd_resolved_runtime_t,=
 systemd_resolved_runtime_t)
++manage_lnk_files_pattern(systemd_resolved_t, systemd_resolved_runtime_t, =
systemd_resolved_runtime_t)
+ init_runtime_filetrans(systemd_resolved_t, systemd_resolved_runtime_t, di=
r)
+=20
+ dev_read_sysfs(systemd_resolved_t)
+@@ -1194,6 +1196,8 @@ seutil_read_file_contexts(systemd_resolved_t)
+ systemd_log_parse_environment(systemd_resolved_t)
+ systemd_read_networkd_runtime(systemd_resolved_t)
+=20
++sysnet_dbus_chat_dhcpc(systemd_resolved_t)
++
+ optional_policy(`
+ 	dbus_connect_system_bus(systemd_resolved_t)
+ 	dbus_system_bus_client(systemd_resolved_t)
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0051-policy-modules-syste=
m-init-add-capability2-bpf-and-p.patch b/recipes-security/refpolicy/refpoli=
cy/0051-policy-modules-system-init-add-capability2-bpf-and-p.patch
new file mode 100644
index 0000000..f7758c5
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0051-policy-modules-system-init-=
add-capability2-bpf-and-p.patch
@@ -0,0 +1,37 @@
+From 2d932ba7140d91cf2a8386b0240f4f1014124746 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Wed, 3 Feb 2021 09:47:59 +0800
+Subject: [PATCH] policy/modules/system/init: add capability2 bpf and perfm=
on
+ for init_t
+
+Fixes:
+avc:  denied  { bpf } for  pid=3D1 comm=3D"systemd" capability=3D39
+scontext=3Dsystem_u:system_r:init_t tcontext=3Dsystem_u:system_r:init_t
+tclass=3Dcapability2 permissive=3D0
+avc:  denied  { perfmon } for  pid=3D1 comm=3D"systemd" capability=3D38
+scontext=3Dsystem_u:system_r:init_t tcontext=3Dsystem_u:system_r:init_t
+tclass=3Dcapability2 permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/init.te | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
+index e82177938..b7d494398 100644
+--- a/policy/modules/system/init.te
++++ b/policy/modules/system/init.te
+@@ -134,7 +134,7 @@ ifdef(`enable_mls',`
+=20
+ # Use capabilities. old rule:
+ allow init_t self:capability { chown dac_override dac_read_search fowner =
fsetid kill setgid setuid setpcap linux_immutable net_bind_service net_broa=
dcast net_admin net_raw ipc_lock ipc_owner sys_rawio sys_chroot sys_ptrace =
sys_pacct sys_admin sys_boot sys_nice sys_resource sys_time sys_tty_config =
mknod lease audit_write audit_control setfcap };
+-allow init_t self:capability2 { wake_alarm block_suspend };
++allow init_t self:capability2 { wake_alarm block_suspend bpf perfmon };
+ # is ~sys_module really needed? observed:
+ # sys_boot
+ # sys_tty_config
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0052-policy-modules-syste=
m-sysnetwork-allow-ifconfig_t-to.patch b/recipes-security/refpolicy/refpoli=
cy/0052-policy-modules-system-sysnetwork-allow-ifconfig_t-to.patch
deleted file mode 100644
index 5e606d7..0000000
--- a/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-sysne=
twork-allow-ifconfig_t-to.patch
+++ /dev/null
@@ -1,35 +0,0 @@
-From a3e4135c543be8d3a054e6f74629240370d111ed Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Mon, 27 May 2019 15:55:19 +0800
-Subject: [PATCH] policy/modules/system/sysnetwork: allow ifconfig_t to rea=
d
- dhcp client state files
-
-Fixes:
-type=3DAVC msg=3Daudit(1558942740.789:50): avc:  denied  { read } for
-pid=3D221 comm=3D"ip" path=3D"/var/lib/dhcp/dhclient.leases" dev=3D"vda"
-ino=3D29858 scontext=3Dsystem_u:system_r:ifconfig_t
-tcontext=3Dsystem_u:object_r:dhcpc_state_t tclass=3Dfile permissive=3D1
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/sysnetwork.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/system/sysnetwork.te b/policy/modules/system/s=
ysnetwork.te
-index bbdbcdc7e..a77738924 100644
---- a/policy/modules/system/sysnetwork.te
-+++ b/policy/modules/system/sysnetwork.te
-@@ -319,6 +319,8 @@ kernel_request_load_module(ifconfig_t)
- kernel_search_network_sysctl(ifconfig_t)
- kernel_rw_net_sysctls(ifconfig_t)
-=20
-+sysnet_read_dhcpc_state(ifconfig_t)
-+
- corenet_rw_tun_tap_dev(ifconfig_t)
-=20
- dev_read_sysfs(ifconfig_t)
---=20
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0052-policy-modules-syste=
m-systemd-allow-systemd_logind_t.patch b/recipes-security/refpolicy/refpoli=
cy/0052-policy-modules-system-systemd-allow-systemd_logind_t.patch
new file mode 100644
index 0000000..aa49ac7
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-syste=
md-allow-systemd_logind_t.patch
@@ -0,0 +1,37 @@
+From 5db5b20728dff6c5e75dc07ea4feb6c507661b62 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Wed, 8 Jul 2020 13:53:28 +0800
+Subject: [PATCH] policy/modules/system/systemd: allow systemd_logind_t to
+ watch initrc_runtime_t
+
+Fixes:
+avc:  denied  { watch } for  pid=3D200 comm=3D"systemd-logind"
+path=3D"/run/utmp" dev=3D"tmpfs" ino=3D12766
+scontext=3Dsystem_u:system_r:systemd_logind_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:initrc_runtime_t:s0 tclass=3Dfile permissive=
=3D0
+
+systemd-logind[200]: Failed to create inotify watch on /var/run/utmp, igno=
ring: Permission denied
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/syst=
emd.te
+index 0411729ea..2d9d7d331 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -651,6 +651,8 @@ init_stop_all_units(systemd_logind_t)
+ init_start_system(systemd_logind_t)
+ init_stop_system(systemd_logind_t)
+=20
++allow systemd_logind_t initrc_runtime_t:file watch;
++
+ locallogin_read_state(systemd_logind_t)
+=20
+ seutil_libselinux_linked(systemd_logind_t)
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0053-policy-modules-servi=
ces-ntp-allow-ntpd_t-to-watch-sy.patch b/recipes-security/refpolicy/refpoli=
cy/0053-policy-modules-services-ntp-allow-ntpd_t-to-watch-sy.patch
deleted file mode 100644
index 85a6d63..0000000
--- a/recipes-security/refpolicy/refpolicy/0053-policy-modules-services-ntp=
-allow-ntpd_t-to-watch-sy.patch
+++ /dev/null
@@ -1,55 +0,0 @@
-From f23bb02c92bcbf7afa0c6b445719df6b06df15ea Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Mon, 6 Jul 2020 09:06:08 +0800
-Subject: [PATCH] policy/modules/services/ntp: allow ntpd_t to watch system=
 bus
- runtime directories and named sockets
-
-Fixes:
-avc:  denied  { read } for  pid=3D197 comm=3D"systemd-timesyn" name=3D"dbu=
s"
-dev=3D"tmpfs" ino=3D14064 scontext=3Dsystem_u:system_r:ntpd_t:s0-s15:c0.c1=
023
-tcontext=3Dsystem_u:object_r:system_dbusd_runtime_t:s0 tclass=3Ddir
-permissive=3D0
-
-avc:  denied  { watch } for  pid=3D197 comm=3D"systemd-timesyn"
-path=3D"/run/dbus" dev=3D"tmpfs" ino=3D14064
-scontext=3Dsystem_u:system_r:ntpd_t:s0-s15:c0.c1023
-tcontext=3Dsystem_u:object_r:system_dbusd_runtime_t:s0 tclass=3Ddir
-permissive=3D0
-
-avc:  denied  { read } for  pid=3D197 comm=3D"systemd-timesyn"
-name=3D"system_bus_socket" dev=3D"tmpfs" ino=3D14067
-scontext=3Dsystem_u:system_r:ntpd_t:s0-s15:c0.c1023
-tcontext=3Dsystem_u:object_r:system_dbusd_runtime_t:s0 tclass=3Dsock_file
-permissive=3D0
-
-avc:  denied  { watch } for  pid=3D197 comm=3D"systemd-timesyn"
-path=3D"/run/dbus/system_bus_socket" dev=3D"tmpfs" ino=3D14067
-scontext=3Dsystem_u:system_r:ntpd_t:s0-s15:c0.c1023
-tcontext=3Dsystem_u:object_r:system_dbusd_runtime_t:s0 tclass=3Dsock_file
-permissive=3D0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/services/ntp.te | 4 ++++
- 1 file changed, 4 insertions(+)
-
-diff --git a/policy/modules/services/ntp.te b/policy/modules/services/ntp.=
te
-index 81f8c76bb..75603e16b 100644
---- a/policy/modules/services/ntp.te
-+++ b/policy/modules/services/ntp.te
-@@ -141,6 +141,10 @@ userdom_list_user_home_dirs(ntpd_t)
- ifdef(`init_systemd',`
- 	allow ntpd_t ntpd_unit_t:file read_file_perms;
-=20
-+	dbus_watch_system_bus_runtime_dirs(ntpd_t)
-+	allow ntpd_t system_dbusd_runtime_t:dir read;
-+	dbus_watch_system_bus_runtime_named_sockets(ntpd_t)
-+	allow ntpd_t system_dbusd_runtime_t:sock_file read;
- 	dbus_system_bus_client(ntpd_t)
- 	dbus_connect_system_bus(ntpd_t)
- 	init_dbus_chat(ntpd_t)
---=20
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0053-policy-modules-syste=
m-logging-set-label-devlog_t-to-.patch b/recipes-security/refpolicy/refpoli=
cy/0053-policy-modules-system-logging-set-label-devlog_t-to-.patch
new file mode 100644
index 0000000..a4b387a
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0053-policy-modules-system-loggi=
ng-set-label-devlog_t-to-.patch
@@ -0,0 +1,86 @@
+From a92be78e20a0838c2f04cf8d2781dcf918f8d7ab Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 14 May 2019 16:02:19 +0800
+Subject: [PATCH] policy/modules/system/logging: set label devlog_t to syml=
ink
+ /dev/log
+
+* Set labe devlog_t to symlink /dev/log
+* Allow syslogd_t to manage devlog_t link file
+
+Fixes:
+avc:  denied  { unlink } for  pid=3D250 comm=3D"rsyslogd" name=3D"log"
+dev=3D"devtmpfs" ino=3D10997
+scontext=3Dsystem_u:system_r:syslogd_t:s15:c0.c1023
+tcontext=3Dsystem_u:object_r:device_t:s0 tclass=3Dlnk_file permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/logging.fc | 2 ++
+ policy/modules/system/logging.if | 4 ++++
+ policy/modules/system/logging.te | 1 +
+ 3 files changed, 7 insertions(+)
+
+diff --git a/policy/modules/system/logging.fc b/policy/modules/system/logg=
ing.fc
+index a4ecd570a..02f0b6270 100644
+--- a/policy/modules/system/logging.fc
++++ b/policy/modules/system/logging.fc
+@@ -1,4 +1,5 @@
+ /dev/log		-s	gen_context(system_u:object_r:devlog_t,mls_systemhigh)
++/dev/log		-l	gen_context(system_u:object_r:devlog_t,s0)
+=20
+ /etc/rsyslog\.conf					--	gen_context(system_u:object_r:syslog_conf_t,s0)
+ /etc/syslog\.conf					--	gen_context(system_u:object_r:syslog_conf_t,s0)
+@@ -24,6 +25,7 @@
+ /usr/lib/systemd/system/auditd.* -- gen_context(system_u:object_r:auditd_=
unit_t,s0)
+ /usr/lib/systemd/system/[^/]*systemd-journal.* -- gen_context(system_u:ob=
ject_r:syslogd_unit_t,s0)
+ /usr/lib/systemd/system/rsyslog.*\.service -- gen_context(system_u:object=
_r:syslogd_unit_t,s0)
++/usr/lib/systemd/system/syslog.*\.service -- gen_context(system_u:object_=
r:syslogd_unit_t,s0)
+ /usr/lib/systemd/systemd-journald -- gen_context(system_u:object_r:syslog=
d_exec_t,s0)
+ /usr/lib/systemd/systemd-kmsg-syslogd	--	gen_context(system_u:object_r:sy=
slogd_exec_t,s0)
+=20
+diff --git a/policy/modules/system/logging.if b/policy/modules/system/logg=
ing.if
+index 9bb3afdb2..7233a108c 100644
+--- a/policy/modules/system/logging.if
++++ b/policy/modules/system/logging.if
+@@ -661,6 +661,7 @@ interface(`logging_send_syslog_msg',`
+ 	')
+=20
+ 	allow $1 devlog_t:sock_file write_sock_file_perms;
++	allow $1 devlog_t:lnk_file read_lnk_file_perms;
+=20
+ 	# systemd journal socket is in /run/systemd/journal/dev-log
+ 	init_search_run($1)
+@@ -722,6 +723,7 @@ interface(`logging_relabelto_devlog_sock_files',`
+ 	')
+=20
+ 	allow $1 devlog_t:sock_file relabelto_sock_file_perms;
++	allow $1 devlog_t:lnk_file relabelto_lnk_file_perms;
+ ')
+=20
+ ########################################
+@@ -741,6 +743,8 @@ interface(`logging_create_devlog',`
+=20
+ 	allow $1 devlog_t:sock_file manage_sock_file_perms;
+ 	dev_filetrans($1, devlog_t, sock_file)
++	allow $1 devlog_t:lnk_file manage_lnk_file_perms;
++	dev_filetrans($1, devlog_t, lnk_file)
+ 	init_runtime_filetrans($1, devlog_t, sock_file, "syslog")
+ ')
+=20
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logg=
ing.te
+index 9b3254f63..d864cfd3d 100644
+--- a/policy/modules/system/logging.te
++++ b/policy/modules/system/logging.te
+@@ -398,6 +398,7 @@ allow syslogd_t syslog_conf_t:dir list_dir_perms;
+=20
+ # Create and bind to /dev/log or /var/run/log.
+ allow syslogd_t devlog_t:sock_file manage_sock_file_perms;
++allow syslogd_t devlog_t:lnk_file manage_lnk_file_perms;
+ files_runtime_filetrans(syslogd_t, devlog_t, sock_file)
+ init_runtime_filetrans(syslogd_t, devlog_t, sock_file, "dev-log")
+=20
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0054-policy-modules-syste=
m-systemd-support-systemd-user.patch b/recipes-security/refpolicy/refpolicy=
/0054-policy-modules-system-systemd-support-systemd-user.patch
new file mode 100644
index 0000000..f7abefb
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-syste=
md-support-systemd-user.patch
@@ -0,0 +1,189 @@
+From bd77e8e51962bb6a8c5708f3e5362007c915498e Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Thu, 4 Feb 2021 10:48:54 +0800
+Subject: [PATCH] policy/modules/system/systemd: support systemd --user
+
+Fixes:
+$ systemctl status user@0.service
+* user@0.service - User Manager for UID 0
+     Loaded: loaded (/lib/systemd/system/user@.service; static)
+     Active: failed (Result: exit-code) since Thu 2021-02-04 02:57:32 UTC;=
 11s ago
+     Docs: man:user@.service(5)
+     Process: 1502 ExecStart=3D/lib/systemd/systemd --user (code=3Dexited,=
 status=3D1/FAILURE)
+     Main PID: 1502 (code=3Dexited, status=3D1/FAILURE)
+
+Feb 04 02:57:32 intel-x86-64 systemd[1]: Starting User Manager for UID 0..=
.
+Feb 04 02:57:32 intel-x86-64 systemd[1502]: selinux_status_open() failed t=
o open the status page, using the netlink fallback.
+Feb 04 02:57:32 intel-x86-64 systemd[1502]: Failed to initialize SELinux l=
abeling handle: Permission denied
+Feb 04 02:57:32 intel-x86-64 systemd[1]: user@0.service: Main process exit=
ed, code=3Dexited, status=3D1/FAILURE
+Feb 04 02:57:32 intel-x86-64 systemd[1]: user@0.service: Failed with resul=
t 'exit-code'.
+Feb 04 02:57:32 intel-x86-64 systemd[1]: Failed to start User Manager for =
UID 0.
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/roles/sysadm.te   |  2 +
+ policy/modules/system/init.if    |  1 +
+ policy/modules/system/logging.te |  5 ++-
+ policy/modules/system/systemd.if | 75 +++++++++++++++++++++++++++++++-
+ 4 files changed, 81 insertions(+), 2 deletions(-)
+
+diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.=
te
+index 1642f3b93..1de7e441d 100644
+--- a/policy/modules/roles/sysadm.te
++++ b/policy/modules/roles/sysadm.te
+@@ -81,6 +81,8 @@ ifdef(`init_systemd',`
+ 	# Allow sysadm to resolve the username of dynamic users by calling
+ 	# LookupDynamicUserByUID on org.freedesktop.systemd1.
+ 	init_dbus_chat(sysadm_t)
++
++	systemd_sysadm_user(sysadm_t)
+ ')
+=20
+ tunable_policy(`allow_ptrace',`
+diff --git a/policy/modules/system/init.if b/policy/modules/system/init.if
+index ba533ba1a..98e94283f 100644
+--- a/policy/modules/system/init.if
++++ b/policy/modules/system/init.if
+@@ -943,6 +943,7 @@ interface(`init_unix_stream_socket_connectto',`
+ 	')
+=20
+ 	allow $1 init_t:unix_stream_socket connectto;
++	allow $1 initrc_t:unix_stream_socket connectto;
+ ')
+=20
+ ########################################
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logg=
ing.te
+index d864cfd3d..bdd97631c 100644
+--- a/policy/modules/system/logging.te
++++ b/policy/modules/system/logging.te
+@@ -519,7 +519,7 @@ ifdef(`init_systemd',`
+ 	# for systemd-journal
+ 	allow syslogd_t self:netlink_audit_socket connected_socket_perms;
+ 	allow syslogd_t self:capability2 audit_read;
+-	allow syslogd_t self:capability { chown setgid setuid sys_ptrace };
++	allow syslogd_t self:capability { chown setgid setuid sys_ptrace dac_rea=
d_search };
+ 	allow syslogd_t self:netlink_audit_socket { getattr getopt read setopt w=
rite nlmsg_write };
+=20
+ 	# remove /run/log/journal when switching to permanent storage
+@@ -555,6 +555,9 @@ ifdef(`init_systemd',`
+ 	systemd_manage_journal_files(syslogd_t)
+=20
+ 	udev_read_runtime_files(syslogd_t)
++
++	userdom_search_user_runtime(syslogd_t)
++	systemd_search_user_runtime(syslogd_t)
+ ')
+=20
+ ifdef(`distro_gentoo',`
+diff --git a/policy/modules/system/systemd.if b/policy/modules/system/syst=
emd.if
+index 6a66a2d79..152139261 100644
+--- a/policy/modules/system/systemd.if
++++ b/policy/modules/system/systemd.if
+@@ -30,6 +30,7 @@ template(`systemd_role_template',`
+ 		attribute systemd_user_session_type, systemd_log_parse_env_type;
+ 		type systemd_user_runtime_t, systemd_user_runtime_notify_t;
+ 		type systemd_run_exec_t, systemd_analyze_exec_t;
++		type session_dbusd_runtime_t, systemd_user_runtime_dir_t;
+ 	')
+=20
+ 	#################################
+@@ -55,10 +56,42 @@ template(`systemd_role_template',`
+=20
+ 	allow $3 systemd_user_runtime_notify_t:sock_file { manage_sock_file_perm=
s relabel_sock_file_perms };
+=20
++	allow $1_systemd_t systemd_user_runtime_t:dir { manage_dir_perms relabel=
_dir_perms };
++	allow $1_systemd_t systemd_user_runtime_t:file { manage_file_perms relab=
el_file_perms };
++	allow $1_systemd_t systemd_user_runtime_t:lnk_file { manage_lnk_file_per=
ms relabel_lnk_file_perms };
++	allow $1_systemd_t systemd_user_runtime_t:fifo_file { manage_fifo_file_p=
erms relabel_fifo_file_perms };
++	allow $1_systemd_t systemd_user_runtime_t:sock_file { manage_sock_file_p=
erms relabel_sock_file_perms };
++	allow $1_systemd_t systemd_user_runtime_t:blk_file { manage_blk_file_per=
ms relabel_blk_file_perms };
++	allow $1_systemd_t systemd_user_runtime_t:chr_file { manage_chr_file_per=
ms relabel_chr_file_perms };
++	allow $1_systemd_t systemd_user_runtime_notify_t:sock_file { manage_sock=
_file_perms relabel_sock_file_perms };
++	allow $1_systemd_t session_dbusd_runtime_t:sock_file { manage_sock_file_=
perms relabel_sock_file_perms };
++	allow $1_systemd_t self:netlink_kobject_uevent_socket getopt;
++	allow $1_systemd_t self:process setrlimit;
++
++	kernel_getattr_proc($1_systemd_t)
++	fs_watch_cgroup_files($1_systemd_t)
++	files_watch_etc_dirs($1_systemd_t)
++
++	userdom_search_user_home_dirs($1_systemd_t)
++	allow $1_systemd_t $3:dir search_dir_perms;
++	allow $1_systemd_t $3:file read_file_perms;
++
++	allow $3 $1_systemd_t:unix_stream_socket { getattr read write };
++
++	allow systemd_user_runtime_dir_t systemd_user_runtime_t:dir { manage_dir=
_perms relabel_dir_perms };
++	allow systemd_user_runtime_dir_t systemd_user_runtime_t:file { manage_fi=
le_perms relabel_file_perms };
++	allow systemd_user_runtime_dir_t systemd_user_runtime_t:lnk_file { manag=
e_lnk_file_perms relabel_lnk_file_perms };
++	allow systemd_user_runtime_dir_t systemd_user_runtime_t:fifo_file { mana=
ge_fifo_file_perms relabel_fifo_file_perms };
++	allow systemd_user_runtime_dir_t systemd_user_runtime_t:sock_file { mana=
ge_sock_file_perms relabel_sock_file_perms };
++	allow systemd_user_runtime_dir_t systemd_user_runtime_t:blk_file { manag=
e_blk_file_perms relabel_blk_file_perms };
++	allow systemd_user_runtime_dir_t systemd_user_runtime_t:chr_file { manag=
e_chr_file_perms relabel_chr_file_perms };
++	allow systemd_user_runtime_dir_t systemd_user_runtime_notify_t:sock_file=
 { manage_sock_file_perms relabel_sock_file_perms };
++	allow systemd_user_runtime_dir_t session_dbusd_runtime_t:sock_file { man=
age_sock_file_perms relabel_sock_file_perms };
++
+ 	# This domain is per-role because of the below transitions.
+ 	# See the systemd --user section of systemd.te for the
+ 	# remainder of the rules.
+-	allow $1_systemd_t $3:process { setsched rlimitinh };
++	allow $1_systemd_t $3:process { setsched rlimitinh noatsecure siginh };
+ 	corecmd_shell_domtrans($1_systemd_t, $3)
+ 	corecmd_bin_domtrans($1_systemd_t, $3)
+ 	allow $1_systemd_t self:process signal;
+@@ -479,6 +512,7 @@ interface(`systemd_stream_connect_userdb', `
+ 	init_search_runtime($1)
+ 	allow $1 systemd_userdb_runtime_t:dir list_dir_perms;
+ 	allow $1 systemd_userdb_runtime_t:sock_file write_sock_file_perms;
++	allow $1 systemd_userdb_runtime_t:lnk_file read_lnk_file_perms;
+ 	init_unix_stream_socket_connectto($1)
+ ')
+=20
+@@ -1353,3 +1387,42 @@ interface(`systemd_use_inherited_machined_ptys', `
+ 	allow $1 systemd_machined_t:fd use;
+ 	allow $1 systemd_machined_devpts_t:chr_file rw_inherited_term_perms;
+ ')
++
++#########################################
++## <summary>
++##	sysadm user for systemd --user
++## </summary>
++## <param name=3D"role">
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
++	allow $1 sysadm_systemd_t:system reload;
++')
++
++#######################################
++## <summary>
++##  Search systemd users runtime directories.
++## </summary>
++## <param name=3D"domain">
++##  <summary>
++##  Domain allowed access.
++##  </summary>
++## </param>
++#
++interface(`systemd_search_user_runtime',`
++	gen_require(`
++		type systemd_user_runtime_t;
++	')
++
++	allow $1 systemd_user_runtime_t:dir search_dir_perms;
++	allow $1 systemd_user_runtime_t:lnk_file read_lnk_file_perms;
++')
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0055-policy-modules-syste=
m-logging-fix-systemd-journald-s.patch b/recipes-security/refpolicy/refpoli=
cy/0055-policy-modules-system-logging-fix-systemd-journald-s.patch
deleted file mode 100644
index 7291d2e..0000000
--- a/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-loggi=
ng-fix-systemd-journald-s.patch
+++ /dev/null
@@ -1,74 +0,0 @@
-From e10a4ea43bb756bdecc30a3c14f0d2fe980405bd Mon Sep 17 00:00:00 2001
-From: Wenzong Fan <wenzong.fan@windriver.com>
-Date: Thu, 4 Feb 2016 02:10:15 -0500
-Subject: [PATCH] policy/modules/system/logging: fix systemd-journald start=
up
- failures
-
-Fixes:
-avc:  denied  { search } for  pid=3D233 comm=3D"systemd-journal" name=3D"/=
"
-dev=3D"tmpfs" ino=3D12398 scontext=3Dsystem_u:system_r:syslogd_t
-tcontext=3Dsystem_u:object_r:tmpfs_t tclass=3Ddir permissive=3D0
-
-avc:  denied  { nlmsg_write } for  pid=3D110 comm=3D"systemd-journal"
-scontext=3Dsystem_u:system_r:syslogd_t
-tcontext=3Dsystem_u:system_r:syslogd_t tclass=3Dnetlink_audit_socket
-permissive=3D0
-
-avc:  denied  { audit_control } for  pid=3D109 comm=3D"systemd-journal"
-capability=3D30  scontext=3Dsystem_u:system_r:syslogd_t
-tcontext=3Dsystem_u:system_r:syslogd_t tclass=3Dcapability permissive=3D0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/logging.fc | 1 +
- policy/modules/system/logging.te | 5 ++++-
- 2 files changed, 5 insertions(+), 1 deletion(-)
-
-diff --git a/policy/modules/system/logging.fc b/policy/modules/system/logg=
ing.fc
-index a4ecd570a..dee26a9f4 100644
---- a/policy/modules/system/logging.fc
-+++ b/policy/modules/system/logging.fc
-@@ -24,6 +24,7 @@
- /usr/lib/systemd/system/auditd.* -- gen_context(system_u:object_r:auditd_=
unit_t,s0)
- /usr/lib/systemd/system/[^/]*systemd-journal.* -- gen_context(system_u:ob=
ject_r:syslogd_unit_t,s0)
- /usr/lib/systemd/system/rsyslog.*\.service -- gen_context(system_u:object=
_r:syslogd_unit_t,s0)
-+/usr/lib/systemd/system/syslog.*\.service -- gen_context(system_u:object_=
r:syslogd_unit_t,s0)
- /usr/lib/systemd/systemd-journald -- gen_context(system_u:object_r:syslog=
d_exec_t,s0)
- /usr/lib/systemd/systemd-kmsg-syslogd	--	gen_context(system_u:object_r:sy=
slogd_exec_t,s0)
-=20
-diff --git a/policy/modules/system/logging.te b/policy/modules/system/logg=
ing.te
-index 95309f334..1d45a5fa9 100644
---- a/policy/modules/system/logging.te
-+++ b/policy/modules/system/logging.te
-@@ -438,6 +438,7 @@ allow syslogd_t syslogd_runtime_t:sock_file { create s=
etattr unlink };
- allow syslogd_t syslogd_runtime_t:file map;
- manage_files_pattern(syslogd_t, syslogd_runtime_t, syslogd_runtime_t)
- files_runtime_filetrans(syslogd_t, syslogd_runtime_t, file)
-+fs_search_tmpfs(syslogd_t)
-=20
- kernel_read_crypto_sysctls(syslogd_t)
- kernel_read_system_state(syslogd_t)
-@@ -517,6 +518,8 @@ init_use_fds(syslogd_t)
- # cjp: this doesnt make sense
- logging_send_syslog_msg(syslogd_t)
-=20
-+logging_set_loginuid(syslogd_t)
-+
- miscfiles_read_localization(syslogd_t)
-=20
- seutil_read_config(syslogd_t)
-@@ -529,7 +532,7 @@ ifdef(`init_systemd',`
- 	allow syslogd_t self:netlink_audit_socket connected_socket_perms;
- 	allow syslogd_t self:capability2 audit_read;
- 	allow syslogd_t self:capability { chown setgid setuid sys_ptrace };
--	allow syslogd_t self:netlink_audit_socket { getattr getopt read setopt w=
rite };
-+	allow syslogd_t self:netlink_audit_socket { getattr getopt read setopt w=
rite nlmsg_write };
-=20
- 	# remove /run/log/journal when switching to permanent storage
- 	allow syslogd_t var_log_t:dir rmdir;
---=20
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0055-policy-modules-syste=
m-systemd-allow-systemd-generato.patch b/recipes-security/refpolicy/refpoli=
cy/0055-policy-modules-system-systemd-allow-systemd-generato.patch
new file mode 100644
index 0000000..9d4bbf7
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-syste=
md-allow-systemd-generato.patch
@@ -0,0 +1,69 @@
+From 954a49ec0a4dc64fd9e513abe7a737d956b337ca Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 9 Feb 2021 17:50:24 +0800
+Subject: [PATCH] policy/modules/system/systemd: allow systemd-generators t=
o
+ get the attributes of tmpfs and cgroup
+
+* Allow systemd-generators to get the attributes of a tmpfs
+* Allow systemd-generators to get the attributes of cgroup filesystems
+
+Fixes:
+systemd[95]: /lib/systemd/system-generators/systemd-fstab-generator failed=
 with exit status 1.
+
+avc: denied { getattr } for pid=3D102 comm=3D"systemd-run-gen" name=3D"/"
+dev=3D"tmpfs" ino=3D11208 scontext=3Dsystem_u:system_r:systemd_generator_t
+tcontext=3Dsystem_u:object_r:tmpfs_t tclass=3Dfilesystem permissive=3D0
+
+avc: denied { getattr } for pid=3D98 comm=3D"systemd-getty-g" name=3D"/"
+dev=3D"tmpfs" ino=3D11208 scontext=3Dsystem_u:system_r:systemd_generator_t
+tcontext=3Dsystem_u:object_r:tmpfs_t tclass=3Dfilesystem permissive=3D0
+
+avc: denied { getattr } for pid=3D104 comm=3D"systemd-sysv-ge" name=3D"/"
+dev=3D"tmpfs" ino=3D11208 scontext=3Dsystem_u:system_r:systemd_generator_t
+tcontext=3Dsystem_u:object_r:tmpfs_t tclass=3Dfilesystem permissive=3D0
+
+avc:  denied  { getattr } for pid=3D97 comm=3D"systemd-fstab-g" name=3D"/"
+dev=3D"tmpfs" ino=3D11208 scontext=3Dsystem_u:system_r:systemd_generator_t
+tcontext=3Dsystem_u:object_r:tmpfs_t tclass=3Dfilesystem permissive=3D0
+
+avc:  denied  { getattr } for  pid=3D102 comm=3D"systemd-run-gen" name=3D"=
/"
+dev=3D"cgroup" ino=3D1 scontext=3Dsystem_u:system_r:systemd_generator_t
+tcontext=3Dsystem_u:object_r:cgroup_t tclass=3Dfilesystem permissive=3D0
+
+avc:  denied  { getattr } for  pid=3D100 comm=3D"systemd-hiberna" name=3D"=
/"
+dev=3D"cgroup" ino=3D1 scontext=3Dsystem_u:system_r:systemd_generator_t
+tcontext=3Dsystem_u:object_r:cgroup_t tclass=3Dfilesystem permissive=3D0
+
+avc:  denied  { getattr } for  pid=3D99 comm=3D"systemd-gpt-aut" name=3D"/=
"
+dev=3D"cgroup2" ino=3D1 scontext=3Dsystem_u:system_r:systemd_generator_t
+tcontext=3Dsystem_u:object_r:cgroup_t tclass=3Dfilesystem permissive=3D0
+
+avc:  denied  { getattr } for  pid=3D97 comm=3D"systemd-fstab-g"
+path=3D"/var/volatile" dev=3D"vda" ino=3D37131
+scontext=3Dsystem_u:system_r:systemd_generator_t
+tcontext=3Dsystem_u:object_r:unlabeled_t tclass=3Ddir permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 3 +++
+ 1 file changed, 3 insertions(+)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/syst=
emd.te
+index 2d9d7d331..c1111198d 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -431,6 +431,9 @@ files_list_usr(systemd_generator_t)
+=20
+ fs_list_efivars(systemd_generator_t)
+ fs_getattr_xattr_fs(systemd_generator_t)
++fs_getattr_tmpfs(systemd_generator_t)
++fs_getattr_cgroup(systemd_generator_t)
++kernel_getattr_unlabeled_dirs(systemd_generator_t)
+=20
+ init_create_runtime_files(systemd_generator_t)
+ init_manage_runtime_dirs(systemd_generator_t)
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0056-policy-modules-syste=
m-systemd-allow-systemd_backligh.patch b/recipes-security/refpolicy/refpoli=
cy/0056-policy-modules-system-systemd-allow-systemd_backligh.patch
new file mode 100644
index 0000000..1c1b459
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0056-policy-modules-system-syste=
md-allow-systemd_backligh.patch
@@ -0,0 +1,35 @@
+From 8b0bb1e349e2ea021acec1639be0802ac4d7d0c2 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Thu, 4 Feb 2021 15:13:50 +0800
+Subject: [PATCH] policy/modules/system/systemd: allow systemd_backlight_t =
to
+ read kernel sysctl
+
+Fixes:
+avc:  denied  { search } for  pid=3D354 comm=3D"systemd-backlig" name=3D"s=
ys"
+dev=3D"proc" ino=3D4026531854
+scontext=3Dsystem_u:system_r:systemd_backlight_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:sysctl_t:s0 tclass=3Ddir permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/syst=
emd.te
+index c1111198d..7d2ba2796 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -324,6 +324,8 @@ udev_read_runtime_files(systemd_backlight_t)
+=20
+ files_search_var_lib(systemd_backlight_t)
+=20
++kernel_read_kernel_sysctls(systemd_backlight_t)
++
+ #######################################
+ #
+ # Binfmt local policy
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0057-policy-modules-syste=
m-logging-fix-systemd-journald-s.patch b/recipes-security/refpolicy/refpoli=
cy/0057-policy-modules-system-logging-fix-systemd-journald-s.patch
new file mode 100644
index 0000000..d283879
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0057-policy-modules-system-loggi=
ng-fix-systemd-journald-s.patch
@@ -0,0 +1,47 @@
+From 5973dc3824b395ce9f6620e3ae432664cc357b66 Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Thu, 4 Feb 2016 02:10:15 -0500
+Subject: [PATCH] policy/modules/system/logging: fix systemd-journald start=
up
+ failures
+
+Fixes:
+avc:  denied  { audit_control } for  pid=3D109 comm=3D"systemd-journal"
+capability=3D30  scontext=3Dsystem_u:system_r:syslogd_t
+tcontext=3Dsystem_u:system_r:syslogd_t tclass=3Dcapability permissive=3D0
+
+avc:  denied  { search } for  pid=3D233 comm=3D"systemd-journal" name=3D"/=
"
+dev=3D"tmpfs" ino=3D12398 scontext=3Dsystem_u:system_r:syslogd_t
+tcontext=3Dsystem_u:object_r:tmpfs_t tclass=3Ddir permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/logging.te | 3 +++
+ 1 file changed, 3 insertions(+)
+
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logg=
ing.te
+index bdd97631c..62caa7a56 100644
+--- a/policy/modules/system/logging.te
++++ b/policy/modules/system/logging.te
+@@ -492,6 +492,7 @@ files_var_lib_filetrans(syslogd_t, syslogd_var_lib_t, =
{ file dir })
+=20
+ fs_getattr_all_fs(syslogd_t)
+ fs_search_auto_mountpoints(syslogd_t)
++fs_search_tmpfs(syslogd_t)
+=20
+ mls_file_write_all_levels(syslogd_t) # Need to be able to write to /var/r=
un/ and /var/log directories
+=20
+@@ -552,6 +553,8 @@ ifdef(`init_systemd',`
+ 	# needed for systemd-initrd case when syslog socket is unlabelled
+ 	logging_send_syslog_msg(syslogd_t)
+=20
++	logging_set_loginuid(syslogd_t)
++
+ 	systemd_manage_journal_files(syslogd_t)
+=20
+ 	udev_read_runtime_files(syslogd_t)
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0057-policy-modules-syste=
m-systemd-add-capability-mknod-f.patch b/recipes-security/refpolicy/refpoli=
cy/0057-policy-modules-system-systemd-add-capability-mknod-f.patch
deleted file mode 100644
index b1a72d6..0000000
--- a/recipes-security/refpolicy/refpolicy/0057-policy-modules-system-syste=
md-add-capability-mknod-f.patch
+++ /dev/null
@@ -1,35 +0,0 @@
-From 4782b27839064438f103b77c31e5db75189025a8 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Thu, 18 Jun 2020 16:14:45 +0800
-Subject: [PATCH] policy/modules/system/systemd: add capability mknod for
- systemd_user_runtime_dir_t
-
-Fixes:
-avc:  denied  { mknod } for  pid=3D266 comm=3D"systemd-user-ru" capability=
=3D27
-scontext=3Dsystem_u:system_r:systemd_user_runtime_dir_t:s0-s15:c0.c1023
-tcontext=3Dsystem_u:system_r:systemd_user_runtime_dir_t:s0-s15:c0.c1023
-tclass=3Dcapability permissive=3D0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/systemd.te | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/policy/modules/system/systemd.te b/policy/modules/system/syst=
emd.te
-index c7fe51b62..f82031a09 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -1372,7 +1372,7 @@ seutil_libselinux_linked(systemd_user_session_type)
- # systemd-user-runtime-dir local policy
- #
-=20
--allow systemd_user_runtime_dir_t self:capability { fowner chown sys_admin=
 dac_read_search dac_override };
-+allow systemd_user_runtime_dir_t self:capability { fowner chown sys_admin=
 dac_read_search dac_override mknod };
- allow systemd_user_runtime_dir_t self:process setfscreate;
-=20
- domain_obj_id_change_exemption(systemd_user_runtime_dir_t)
---=20
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0058-policy-modules-servi=
ces-cron-allow-crond_t-to-search.patch b/recipes-security/refpolicy/refpoli=
cy/0058-policy-modules-services-cron-allow-crond_t-to-search.patch
new file mode 100644
index 0000000..b7e7c1d
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0058-policy-modules-services-cro=
n-allow-crond_t-to-search.patch
@@ -0,0 +1,34 @@
+From e8ff96c9bb98305d1b50fccce67025df3ebbf184 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Thu, 23 May 2019 15:52:17 +0800
+Subject: [PATCH] policy/modules/services/cron: allow crond_t to search
+ logwatch_cache_t
+
+Fixes:
+avc:  denied  { search } for  pid=3D234 comm=3D"crond" name=3D"logcheck"
+dev=3D"vda" ino=3D29080 scontext=3Dsystem_u:system_r:crond_t:s0-s15:c0.c10=
23
+tcontext=3Dsystem_u:object_r:logwatch_cache_t:s0 tclass=3Ddir permissive=
=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/cron.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/services/cron.te b/policy/modules/services/cro=
n.te
+index 2902820b0..36eb33060 100644
+--- a/policy/modules/services/cron.te
++++ b/policy/modules/services/cron.te
+@@ -318,6 +318,8 @@ miscfiles_read_localization(crond_t)
+=20
+ userdom_list_user_home_dirs(crond_t)
+=20
++logwatch_search_cache_dir(crond_t)
++
+ tunable_policy(`cron_userdomain_transition',`
+ 	dontaudit crond_t cronjob_t:process transition;
+ 	dontaudit crond_t cronjob_t:fd use;
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0058-policy-modules-syste=
m-systemd-systemd-gpt-auto-gener.patch b/recipes-security/refpolicy/refpoli=
cy/0058-policy-modules-system-systemd-systemd-gpt-auto-gener.patch
deleted file mode 100644
index fc1684f..0000000
--- a/recipes-security/refpolicy/refpolicy/0058-policy-modules-system-syste=
md-systemd-gpt-auto-gener.patch
+++ /dev/null
@@ -1,35 +0,0 @@
-From 0607a935759fe3143f473d4a444f92e01aaa2a45 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Tue, 23 Jun 2020 14:52:43 +0800
-Subject: [PATCH] policy/modules/system/systemd: systemd-gpt-auto-generator=
: do
- not audit attempts to read or write unallocated ttys
-
-Fixes:
-avc:  denied  { read write } for  pid=3D87 comm=3D"systemd-getty-g"
-name=3D"ttyS0" dev=3D"devtmpfs" ino=3D10128
-scontext=3Dsystem_u:system_r:systemd_generator_t
-tcontext=3Dsystem_u:object_r:tty_device_t tclass=3Dchr_file permissive=3D0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/systemd.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/system/systemd.te b/policy/modules/system/syst=
emd.te
-index f82031a09..fb8d4960f 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -400,6 +400,8 @@ storage_raw_read_fixed_disk(systemd_generator_t)
-=20
- systemd_log_parse_environment(systemd_generator_t)
-=20
-+term_dontaudit_use_unallocated_ttys(systemd_generator_t)
-+
- optional_policy(`
- 	fstools_exec(systemd_generator_t)
- ')
---=20
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0059-policy-modules-servi=
ces-crontab-allow-sysadm_r-to-ru.patch b/recipes-security/refpolicy/refpoli=
cy/0059-policy-modules-services-crontab-allow-sysadm_r-to-ru.patch
new file mode 100644
index 0000000..d5e40d0
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0059-policy-modules-services-cro=
ntab-allow-sysadm_r-to-ru.patch
@@ -0,0 +1,46 @@
+From 1571e6da8a90bb325a94330dcd130d56bae30b37 Mon Sep 17 00:00:00 2001
+From: Roy Li <rongqing.li@windriver.com>
+Date: Thu, 20 Feb 2014 17:07:05 +0800
+Subject: [PATCH] policy/modules/services/crontab: allow sysadm_r to run
+ crontab
+
+This permission has been given if release is not redhat; but we want it
+even we define distro_redhat
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Roy Li <rongqing.li@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/roles/sysadm.te | 8 ++++----
+ 1 file changed, 4 insertions(+), 4 deletions(-)
+
+diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.=
te
+index 1de7e441d..129e94229 100644
+--- a/policy/modules/roles/sysadm.te
++++ b/policy/modules/roles/sysadm.te
+@@ -1277,6 +1277,10 @@ optional_policy(`
+ 	zebra_admin(sysadm_t, sysadm_r)
+ ')
+=20
++optional_policy(`
++	cron_admin_role(sysadm_r, sysadm_t)
++')
++
+ ifndef(`distro_redhat',`
+ 	optional_policy(`
+ 		auth_role(sysadm_r, sysadm_t)
+@@ -1295,10 +1299,6 @@ ifndef(`distro_redhat',`
+ 		chromium_role(sysadm_r, sysadm_t)
+ 	')
+=20
+-	optional_policy(`
+-		cron_admin_role(sysadm_r, sysadm_t)
+-	')
+-
+ 	optional_policy(`
+ 		cryfs_role(sysadm_r, sysadm_t)
+ 	')
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0060-policy-modules-syste=
m-sysnetwork-support-priviledge-.patch b/recipes-security/refpolicy/refpoli=
cy/0060-policy-modules-system-sysnetwork-support-priviledge-.patch
new file mode 100644
index 0000000..64cc90e
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0060-policy-modules-system-sysne=
twork-support-priviledge-.patch
@@ -0,0 +1,120 @@
+From ab462f0022c35fde984dbe792ce386f5d507aeeb Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Thu, 24 Sep 2020 14:05:52 +0800
+Subject: [PATCH] policy/modules/system/sysnetwork: support priviledge
+ separation for dhcpcd
+
+Fixes:
+
+avc:  denied  { sys_chroot } for  pid=3D332 comm=3D"dhcpcd" capability=3D1=
8
+scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023 tclass=3Dcapability
+permissive=3D0
+
+avc:  denied  { setgid } for  pid=3D332 comm=3D"dhcpcd" capability=3D6
+scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023 tclass=3Dcapability
+permissive=3D0
+
+avc:  denied  { setuid } for  pid=3D332 comm=3D"dhcpcd" capability=3D7
+scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023 tclass=3Dcapability
+permissive=3D0
+
+avc:  denied  { setrlimit } for  pid=3D332 comm=3D"dhcpcd"
+scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023 tclass=3Dprocess
+permissive=3D0
+
+avc:  denied  { create } for  pid=3D330 comm=3D"dhcpcd"
+scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
+tclass=3Dnetlink_kobject_uevent_socket permissive=3D0
+
+avc:  denied  { setopt } for  pid=3D330 comm=3D"dhcpcd"
+scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
+tclass=3Dnetlink_kobject_uevent_socket permissive=3D0
+
+avc:  denied  { bind } for  pid=3D330 comm=3D"dhcpcd"
+scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
+tclass=3Dnetlink_kobject_uevent_socket permissive=3D0
+
+avc:  denied  { getattr } for  pid=3D330 comm=3D"dhcpcd"
+scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
+tclass=3Dnetlink_kobject_uevent_socket permissive=3D0
+
+avc:  denied  { read } for  pid=3D330 comm=3D"dhcpcd" name=3D"n1" dev=3D"t=
mpfs"
+ino=3D15616 scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:udev_runtime_t:s0 tclass=3Dfile permissive=3D=
0
+
+avc:  denied  { open } for  pid=3D330 comm=3D"dhcpcd"
+path=3D"/run/udev/data/n1" dev=3D"tmpfs" ino=3D15616
+scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:udev_runtime_t:s0 tclass=3Dfile permissive=3D=
0
+
+avc:  denied  { getattr } for  pid=3D330 comm=3D"dhcpcd"
+path=3D"/run/udev/data/n1" dev=3D"tmpfs" ino=3D15616
+scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:udev_runtime_t:s0 tclass=3Dfile permissive=3D=
0
+
+avc:  denied  { connectto } for  pid=3D1600 comm=3D"dhcpcd"
+path=3D"/run/dhcpcd/unpriv.sock"
+scontext=3Droot:sysadm_r:dhcpc_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
+tclass=3Dunix_stream_socket permissive=3D0
+
+avc:  denied  { kill } for  pid=3D314 comm=3D"dhcpcd" capability=3D5
+scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023 tclass=3Dcapability
+permissive=3D0
+
+avc:  denied  { getattr } for  pid=3D300 comm=3D"dhcpcd"
+path=3D"net:[4026532008]" dev=3D"nsfs" ino=3D4026532008
+scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:nsfs_t:s0 tclass=3Dfile permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/sysnetwork.te | 7 +++++++
+ 1 file changed, 7 insertions(+)
+
+diff --git a/policy/modules/system/sysnetwork.te b/policy/modules/system/s=
ysnetwork.te
+index cb1434180..a9297f976 100644
+--- a/policy/modules/system/sysnetwork.te
++++ b/policy/modules/system/sysnetwork.te
+@@ -72,6 +72,11 @@ allow dhcpc_t self:netlink_route_socket create_netlink_=
socket_perms;
+ allow dhcpc_t self:rawip_socket create_socket_perms;
+ allow dhcpc_t self:unix_dgram_socket { create_socket_perms sendto };
+=20
++allow dhcpc_t self:capability { setgid setuid sys_chroot kill };
++allow dhcpc_t self:netlink_kobject_uevent_socket create_socket_perms;
++allow dhcpc_t self:process setrlimit;
++allow dhcpc_t self:unix_stream_socket connectto;
++
+ allow dhcpc_t dhcp_etc_t:dir list_dir_perms;
+ read_lnk_files_pattern(dhcpc_t, dhcp_etc_t, dhcp_etc_t)
+ exec_files_pattern(dhcpc_t, dhcp_etc_t, dhcp_etc_t)
+@@ -145,6 +150,7 @@ files_manage_var_files(dhcpc_t)
+ fs_getattr_all_fs(dhcpc_t)
+ fs_search_auto_mountpoints(dhcpc_t)
+ fs_search_cgroup_dirs(dhcpc_t)
++fs_read_nsfs_files(dhcpc_t)
+=20
+ term_dontaudit_use_all_ttys(dhcpc_t)
+ term_dontaudit_use_all_ptys(dhcpc_t)
+@@ -180,6 +186,7 @@ ifdef(`init_systemd',`
+ 	init_stream_connect(dhcpc_t)
+ 	init_get_all_units_status(dhcpc_t)
+ 	init_search_units(dhcpc_t)
++	udev_read_runtime_files(dhcpc_t)
+ ')
+=20
+ optional_policy(`
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0061-policy-modules-servi=
ces-acpi-allow-acpid-to-watch-th.patch b/recipes-security/refpolicy/refpoli=
cy/0061-policy-modules-services-acpi-allow-acpid-to-watch-th.patch
new file mode 100644
index 0000000..8de3d5f
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0061-policy-modules-services-acp=
i-allow-acpid-to-watch-th.patch
@@ -0,0 +1,35 @@
+From 7418cd97f2c92579bd4d18cbd9063f811ff9a81e Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 9 Feb 2021 16:42:36 +0800
+Subject: [PATCH] policy/modules/services/acpi: allow acpid to watch the
+ directories in /dev
+
+Fixes:
+acpid: inotify_add_watch() failed: Permission denied (13)
+
+avc:  denied  { watch } for  pid=3D269 comm=3D"acpid" path=3D"/dev/input"
+dev=3D"devtmpfs" ino=3D35 scontext=3Dsystem_u:system_r:acpid_t:s0-s15:c0.c=
1023
+tcontext=3Dsystem_u:object_r:device_t:s0 tclass=3Ddir permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/acpi.te | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/services/acpi.te b/policy/modules/services/acp=
i.te
+index 69f1dab4a..5c22adecd 100644
+--- a/policy/modules/services/acpi.te
++++ b/policy/modules/services/acpi.te
+@@ -105,6 +105,7 @@ dev_rw_acpi_bios(acpid_t)
+ dev_rw_sysfs(acpid_t)
+ dev_dontaudit_getattr_all_chr_files(acpid_t)
+ dev_dontaudit_getattr_all_blk_files(acpid_t)
++dev_watch_dev_dirs(acpid_t)
+=20
+ files_exec_etc_files(acpid_t)
+ files_read_etc_runtime_files(acpid_t)
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0063-policy-modules-syste=
m-setrans-allow-setrans-to-acces.patch b/recipes-security/refpolicy/refpoli=
cy/0062-policy-modules-system-setrans-allow-setrans-to-acces.patch
similarity index 71%
rename from recipes-security/refpolicy/refpolicy/0063-policy-modules-system=
-setrans-allow-setrans-to-acces.patch
rename to recipes-security/refpolicy/refpolicy/0062-policy-modules-system-s=
etrans-allow-setrans-to-acces.patch
index 55d92f0..b692012 100644
--- a/recipes-security/refpolicy/refpolicy/0063-policy-modules-system-setra=
ns-allow-setrans-to-acces.patch
+++ b/recipes-security/refpolicy/refpolicy/0062-policy-modules-system-setra=
ns-allow-setrans-to-acces.patch
@@ -1,4 +1,4 @@
-From fc77db62ce54a33ee04bfc3e4c68b9cbed7251c6 Mon Sep 17 00:00:00 2001
+From 84c69d220ffdd039b88a34f9afc127274a985541 Mon Sep 17 00:00:00 2001
 From: Roy Li <rongqing.li@windriver.com>
 Date: Sat, 22 Feb 2014 13:35:38 +0800
 Subject: [PATCH] policy/modules/system/setrans: allow setrans to access
@@ -14,18 +14,16 @@ scontext=3Droot:sysadm_r:sysadm_t:s0-s15:c0.c1023
 tcontext=3Dsystem_u:system_r:setrans_t:s15:c0.c1023
 tclass=3Dunix_stream_socket
=20
-3. allow setrans_t use fd at any level
-
 Upstream-Status: Inappropriate [embedded specific]
=20
 Signed-off-by: Roy Li <rongqing.li@windriver.com>
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/system/setrans.te | 6 +++---
- 1 file changed, 3 insertions(+), 3 deletions(-)
+ policy/modules/system/setrans.te | 4 +---
+ 1 file changed, 1 insertion(+), 3 deletions(-)
=20
 diff --git a/policy/modules/system/setrans.te b/policy/modules/system/setr=
ans.te
-index 5f020ef78..7f618f212 100644
+index 25aadfc5f..78bd6e2eb 100644
 --- a/policy/modules/system/setrans.te
 +++ b/policy/modules/system/setrans.te
 @@ -23,9 +23,7 @@ mls_trusted_object(setrans_runtime_t)
@@ -39,15 +37,6 @@ index 5f020ef78..7f618f212 100644
 =20
  ifdef(`enable_mcs',`
  	init_ranged_daemon_domain(setrans_t, setrans_exec_t, s0 - mcs_systemhigh=
)
-@@ -73,6 +71,8 @@ mls_net_receive_all_levels(setrans_t)
- mls_socket_write_all_levels(setrans_t)
- mls_process_read_all_levels(setrans_t)
- mls_socket_read_all_levels(setrans_t)
-+mls_fd_use_all_levels(setrans_t)
-+mls_trusted_object(setrans_t)
-=20
- selinux_compute_access_vector(setrans_t)
-=20
 --=20
 2.17.1
=20
diff --git a/recipes-security/refpolicy/refpolicy/0063-policy-modules-syste=
m-modutils-allow-kmod_t-to-write.patch b/recipes-security/refpolicy/refpoli=
cy/0063-policy-modules-system-modutils-allow-kmod_t-to-write.patch
new file mode 100644
index 0000000..b644571
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0063-policy-modules-system-modut=
ils-allow-kmod_t-to-write.patch
@@ -0,0 +1,35 @@
+From 7002b4e33b949b474a0ce0b78a7f2e180dbbc9bb Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 9 Feb 2021 17:31:55 +0800
+Subject: [PATCH] policy/modules/system/modutils: allow kmod_t to write key=
s
+
+Fixes:
+kernel: cfg80211: Problem loading in-kernel X.509 certificate (-13)
+
+avc:  denied  { write } for  pid=3D219 comm=3D"modprobe"
+scontext=3Dsystem_u:system_r:kmod_t tcontext=3Dsystem_u:system_r:kmod_t
+tclass=3Dkey permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/modutils.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/modutils.te b/policy/modules/system/mod=
utils.te
+index ee249ae04..b8769bc02 100644
+--- a/policy/modules/system/modutils.te
++++ b/policy/modules/system/modutils.te
+@@ -43,6 +43,8 @@ allow kmod_t self:rawip_socket create_socket_perms;
+=20
+ allow kmod_t self:lockdown confidentiality;
+=20
++allow kmod_t self:key write;
++
+ # Read module config and dependency information
+ list_dirs_pattern(kmod_t, modules_conf_t, modules_conf_t)
+ read_files_pattern(kmod_t, modules_conf_t, modules_conf_t)
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0056-policy-modules-roles=
-sysadm-allow-sysadm_t-to-watch-.patch b/recipes-security/refpolicy/refpoli=
cy/0064-policy-modules-roles-sysadm-allow-sysadm_t-to-watch-.patch
similarity index 60%
rename from recipes-security/refpolicy/refpolicy/0056-policy-modules-roles-=
sysadm-allow-sysadm_t-to-watch-.patch
rename to recipes-security/refpolicy/refpolicy/0064-policy-modules-roles-sy=
sadm-allow-sysadm_t-to-watch-.patch
index 7cf3763..dbd1390 100644
--- a/recipes-security/refpolicy/refpolicy/0056-policy-modules-roles-sysadm=
-allow-sysadm_t-to-watch-.patch
+++ b/recipes-security/refpolicy/refpolicy/0064-policy-modules-roles-sysadm=
-allow-sysadm_t-to-watch-.patch
@@ -1,4 +1,4 @@
-From 7fd830d6b2c60dcf5b8ee0b2ff94436de63d5b8c Mon Sep 17 00:00:00 2001
+From 291d3329c280b6b8b70fcc3092ac4d3399936825 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Mon, 29 Jun 2020 10:32:25 +0800
 Subject: [PATCH] policy/modules/roles/sysadm: allow sysadm_t to watch runt=
ime
@@ -11,21 +11,18 @@ Upstream-Status: Inappropriate [embedded specific]
=20
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/roles/sysadm.te | 6 ++++++
- 1 file changed, 6 insertions(+)
+ policy/modules/roles/sysadm.te | 3 +++
+ 1 file changed, 3 insertions(+)
=20
 diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.=
te
-index fc0945fe4..07b9faf30 100644
+index 129e94229..a4abaefe4 100644
 --- a/policy/modules/roles/sysadm.te
 +++ b/policy/modules/roles/sysadm.te
-@@ -83,6 +83,12 @@ ifdef(`init_systemd',`
- 	# Allow sysadm to resolve the username of dynamic users by calling
- 	# LookupDynamicUserByUID on org.freedesktop.systemd1.
+@@ -83,6 +83,9 @@ ifdef(`init_systemd',`
  	init_dbus_chat(sysadm_t)
+=20
+ 	systemd_sysadm_user(sysadm_t)
 +
-+	fs_watch_cgroup_files(sysadm_t)
-+	files_watch_etc_symlinks(sysadm_t)
-+	mount_watch_runtime_dirs(sysadm_t)
 +	systemd_filetrans_passwd_runtime_dirs(sysadm_t)
 +	allow sysadm_t systemd_passwd_runtime_t:dir watch;
  ')
diff --git a/recipes-security/refpolicy/refpolicy/0065-policy-modules-syste=
m-selinux-allow-setfiles_t-to-re.patch b/recipes-security/refpolicy/refpoli=
cy/0065-policy-modules-system-selinux-allow-setfiles_t-to-re.patch
new file mode 100644
index 0000000..a824004
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0065-policy-modules-system-selin=
ux-allow-setfiles_t-to-re.patch
@@ -0,0 +1,44 @@
+From bc821718f7e9575a67c4667decad937cbe5f8514 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 2 Mar 2021 14:25:03 +0800
+Subject: [PATCH] policy/modules/system/selinux: allow setfiles_t to read
+ kernel sysctl
+
+Fixes:
+avc: denied { read } for pid=3D171 comm=3D"restorecon" name=3D"cap_last_ca=
p"
+dev=3D"proc" ino=3D1241
+scontext=3Dsystem_u:system_r:setfiles_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:sysctl_kernel_t:s0 tclass=3Dfile permissive=
=3D0
+
+avc: denied { open } for pid=3D171 comm=3D"restorecon"
+path=3D"/proc/sys/kernel/cap_last_cap" dev=3D"proc" ino=3D1241
+scontext=3Dsystem_u:system_r:setfiles_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:sysctl_kernel_t:s0 tclass=3Dfile permissive=
=3D0
+
+avc: denied { getattr } for pid=3D171 comm=3D"restorecon" name=3D"/"
+dev=3D"proc" ino=3D1 scontext=3Dsystem_u:system_r:setfiles_t:s0-s15:c0.c10=
23
+tcontext=3Dsystem_u:object_r:proc_t:s0 tclass=3Dfilesystem permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/selinuxutil.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/selinuxutil.te b/policy/modules/system/=
selinuxutil.te
+index a505b3987..a26f8db03 100644
+--- a/policy/modules/system/selinuxutil.te
++++ b/policy/modules/system/selinuxutil.te
+@@ -597,6 +597,8 @@ kernel_rw_unix_dgram_sockets(setfiles_t)
+ kernel_dontaudit_list_all_proc(setfiles_t)
+ kernel_dontaudit_list_all_sysctls(setfiles_t)
+ kernel_getattr_debugfs(setfiles_t)
++kernel_read_kernel_sysctls(setfiles_t)
++kernel_getattr_proc(setfiles_t)
+=20
+ dev_read_urand(setfiles_t)
+ dev_relabel_all_dev_nodes(setfiles_t)
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0062-policy-modules-syste=
m-mount-make-mount_t-domain-MLS-.patch b/recipes-security/refpolicy/refpoli=
cy/0066-policy-modules-system-mount-make-mount_t-domain-MLS-.patch
similarity index 85%
rename from recipes-security/refpolicy/refpolicy/0062-policy-modules-system=
-mount-make-mount_t-domain-MLS-.patch
rename to recipes-security/refpolicy/refpolicy/0066-policy-modules-system-m=
ount-make-mount_t-domain-MLS-.patch
index 1e7d963..1d6a3c4 100644
--- a/recipes-security/refpolicy/refpolicy/0062-policy-modules-system-mount=
-make-mount_t-domain-MLS-.patch
+++ b/recipes-security/refpolicy/refpolicy/0066-policy-modules-system-mount=
-make-mount_t-domain-MLS-.patch
@@ -1,4 +1,4 @@
-From 7789f70ee3506f11b6bc1954469915214bcb9c58 Mon Sep 17 00:00:00 2001
+From 0d69354886e0b635dd069876b9d53890a5a9cab1 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Sat, 15 Feb 2014 04:22:47 -0500
 Subject: [PATCH] policy/modules/system/mount: make mount_t domain MLS trus=
ted
@@ -19,10 +19,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
=20
 diff --git a/policy/modules/system/mount.te b/policy/modules/system/mount.=
te
-index 282eb3ada..5bb4fe631 100644
+index b628c3b2f..f55457bb0 100644
 --- a/policy/modules/system/mount.te
 +++ b/policy/modules/system/mount.te
-@@ -116,6 +116,8 @@ fs_dontaudit_write_tmpfs_dirs(mount_t)
+@@ -116,6 +116,8 @@ fs_dontaudit_write_all_image_files(mount_t)
  mls_file_read_all_levels(mount_t)
  mls_file_write_all_levels(mount_t)
 =20
diff --git a/recipes-security/refpolicy/refpolicy/0061-policy-modules-roles=
-sysadm-MLS-sysadm-rw-to-clearan.patch b/recipes-security/refpolicy/refpoli=
cy/0067-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch
similarity index 92%
rename from recipes-security/refpolicy/refpolicy/0061-policy-modules-roles-=
sysadm-MLS-sysadm-rw-to-clearan.patch
rename to recipes-security/refpolicy/refpolicy/0067-policy-modules-roles-sy=
sadm-MLS-sysadm-rw-to-clearan.patch
index af7f3ad..f441742 100644
--- a/recipes-security/refpolicy/refpolicy/0061-policy-modules-roles-sysadm=
-MLS-sysadm-rw-to-clearan.patch
+++ b/recipes-security/refpolicy/refpolicy/0067-policy-modules-roles-sysadm=
-MLS-sysadm-rw-to-clearan.patch
@@ -1,4 +1,4 @@
-From 0404c4ad3f92408edcdbf46ac0665bf09d4b2516 Mon Sep 17 00:00:00 2001
+From b83147aa97fe6f51c997256539dff827e3a44edc Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Mon, 28 Jan 2019 14:05:18 +0800
 Subject: [PATCH] policy/modules/roles/sysadm: MLS - sysadm rw to clearance
@@ -23,7 +23,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 3 insertions(+)
=20
 diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.=
te
-index 07b9faf30..ac5239d83 100644
+index a4abaefe4..aaae73fc3 100644
 --- a/policy/modules/roles/sysadm.te
 +++ b/policy/modules/roles/sysadm.te
 @@ -42,6 +42,9 @@ dev_read_kmsg(sysadm_t)
diff --git a/recipes-security/refpolicy/refpolicy/0059-policy-modules-servi=
ces-rpc-fix-policy-for-nfsserver.patch b/recipes-security/refpolicy/refpoli=
cy/0068-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.patch
similarity index 61%
rename from recipes-security/refpolicy/refpolicy/0059-policy-modules-servic=
es-rpc-fix-policy-for-nfsserver.patch
rename to recipes-security/refpolicy/refpolicy/0068-policy-modules-services=
-rpc-make-nfsd_t-domain-MLS-t.patch
index d4bdd37..4403997 100644
--- a/recipes-security/refpolicy/refpolicy/0059-policy-modules-services-rpc=
-fix-policy-for-nfsserver.patch
+++ b/recipes-security/refpolicy/refpolicy/0068-policy-modules-services-rpc=
-make-nfsd_t-domain-MLS-t.patch
@@ -1,8 +1,8 @@
-From fbf98576f32e33e55f3babeb9db255a459fad711 Mon Sep 17 00:00:00 2001
+From 7b8290ba52052f90b6221c1b3ccb8f7536f4c41e Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Fri, 23 Aug 2013 12:01:53 +0800
-Subject: [PATCH] policy/modules/services/rpc: fix policy for nfsserver to
- mount nfsd_fs_t
+Subject: [PATCH] policy/modules/services/rpc: make nfsd_t domain MLS trust=
ed
+ for reading from files up to its clearance
=20
 Upstream-Status: Inappropriate [embedded specific]
=20
@@ -11,13 +11,12 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  policy/modules/kernel/kernel.te    | 2 ++
- policy/modules/services/rpc.fc     | 2 ++
  policy/modules/services/rpc.te     | 2 ++
  policy/modules/services/rpcbind.te | 6 ++++++
- 4 files changed, 12 insertions(+)
+ 3 files changed, 10 insertions(+)
=20
 diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kerne=
l.te
-index c8218bf8c..44c031a39 100644
+index 5ce6e041b..c1557ddb2 100644
 --- a/policy/modules/kernel/kernel.te
 +++ b/policy/modules/kernel/kernel.te
 @@ -356,6 +356,8 @@ mls_process_read_all_levels(kernel_t)
@@ -29,25 +28,11 @@ index c8218bf8c..44c031a39 100644
 =20
  ifdef(`distro_redhat',`
  	# Bugzilla 222337
-diff --git a/policy/modules/services/rpc.fc b/policy/modules/services/rpc.=
fc
-index 6d3c9b68b..75999a57c 100644
---- a/policy/modules/services/rpc.fc
-+++ b/policy/modules/services/rpc.fc
-@@ -1,7 +1,9 @@
- /etc/exports	--	gen_context(system_u:object_r:exports_t,s0)
-=20
- /etc/rc\.d/init\.d/nfs	--	gen_context(system_u:object_r:nfsd_initrc_exec_=
t,s0)
-+/etc/rc\.d/init\.d/nfsserver	--	gen_context(system_u:object_r:nfsd_initrc=
_exec_t,s0)
- /etc/rc\.d/init\.d/nfslock	--	gen_context(system_u:object_r:rpcd_initrc_e=
xec_t,s0)
-+/etc/rc\.d/init\.d/nfscommon	--	gen_context(system_u:object_r:rpcd_initrc=
_exec_t,s0)
- /etc/rc\.d/init\.d/rpcidmapd	--	gen_context(system_u:object_r:rpcd_initrc=
_exec_t,s0)
-=20
- /usr/bin/rpc\..*	--	gen_context(system_u:object_r:rpcd_exec_t,s0)
 diff --git a/policy/modules/services/rpc.te b/policy/modules/services/rpc.=
te
-index c06ff803f..7c0b37ddc 100644
+index 87b6b4561..9618df04e 100644
 --- a/policy/modules/services/rpc.te
 +++ b/policy/modules/services/rpc.te
-@@ -250,6 +250,8 @@ storage_raw_read_removable_device(nfsd_t)
+@@ -341,6 +341,8 @@ storage_raw_read_removable_device(nfsd_t)
 =20
  miscfiles_read_public_files(nfsd_t)
 =20
@@ -57,7 +42,7 @@ index c06ff803f..7c0b37ddc 100644
  	miscfiles_manage_public_files(nfsd_t)
  ')
 diff --git a/policy/modules/services/rpcbind.te b/policy/modules/services/=
rpcbind.te
-index 4f110773a..3cc85a8d5 100644
+index 8972980fa..5c89a1343 100644
 --- a/policy/modules/services/rpcbind.te
 +++ b/policy/modules/services/rpcbind.te
 @@ -73,6 +73,12 @@ logging_send_syslog_msg(rpcbind_t)
diff --git a/recipes-security/refpolicy/refpolicy/0064-policy-modules-admin=
-dmesg-make-dmesg_t-MLS-trusted-.patch b/recipes-security/refpolicy/refpoli=
cy/0069-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch
similarity index 91%
rename from recipes-security/refpolicy/refpolicy/0064-policy-modules-admin-=
dmesg-make-dmesg_t-MLS-trusted-.patch
rename to recipes-security/refpolicy/refpolicy/0069-policy-modules-admin-dm=
esg-make-dmesg_t-MLS-trusted-.patch
index 4fa9968..02aa5e3 100644
--- a/recipes-security/refpolicy/refpolicy/0064-policy-modules-admin-dmesg-=
make-dmesg_t-MLS-trusted-.patch
+++ b/recipes-security/refpolicy/refpolicy/0069-policy-modules-admin-dmesg-=
make-dmesg_t-MLS-trusted-.patch
@@ -1,4 +1,4 @@
-From a51cec2a8d8f47b7a06c59b8af73d96edcc2a993 Mon Sep 17 00:00:00 2001
+From bc6872d164d09355ee82dc97c4e3d99a6b6669b3 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 30 Jun 2020 10:18:20 +0800
 Subject: [PATCH] policy/modules/admin/dmesg: make dmesg_t MLS trusted read=
ing
@@ -19,7 +19,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
=20
 diff --git a/policy/modules/admin/dmesg.te b/policy/modules/admin/dmesg.te
-index 5bbe71b26..228baecd8 100644
+index 0f2835575..9f4f11397 100644
 --- a/policy/modules/admin/dmesg.te
 +++ b/policy/modules/admin/dmesg.te
 @@ -51,6 +51,8 @@ miscfiles_read_localization(dmesg_t)
diff --git a/recipes-security/refpolicy/refpolicy/0065-policy-modules-kerne=
l-kernel-make-kernel_t-MLS-trust.patch b/recipes-security/refpolicy/refpoli=
cy/0070-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
similarity index 96%
rename from recipes-security/refpolicy/refpolicy/0065-policy-modules-kernel=
-kernel-make-kernel_t-MLS-trust.patch
rename to recipes-security/refpolicy/refpolicy/0070-policy-modules-kernel-k=
ernel-make-kernel_t-MLS-trust.patch
index 3a2c235..733fbad 100644
--- a/recipes-security/refpolicy/refpolicy/0065-policy-modules-kernel-kerne=
l-make-kernel_t-MLS-trust.patch
+++ b/recipes-security/refpolicy/refpolicy/0070-policy-modules-kernel-kerne=
l-make-kernel_t-MLS-trust.patch
@@ -1,4 +1,4 @@
-From fdc58fd666915aba89cb07fe6e7eb43a7fbec2ec Mon Sep 17 00:00:00 2001
+From e7b9af24946f5f76e8e6831bfeb444c0153298be Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Fri, 13 Oct 2017 07:20:40 +0000
 Subject: [PATCH] policy/modules/kernel/kernel: make kernel_t MLS trusted f=
or
@@ -59,7 +59,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 3 insertions(+)
=20
 diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kerne=
l.te
-index 44c031a39..4dffaef76 100644
+index c1557ddb2..8f67c6ec9 100644
 --- a/policy/modules/kernel/kernel.te
 +++ b/policy/modules/kernel/kernel.te
 @@ -359,6 +359,9 @@ mls_file_read_all_levels(kernel_t)
diff --git a/recipes-security/refpolicy/refpolicy/0066-policy-modules-syste=
m-init-make-init_t-MLS-trusted-f.patch b/recipes-security/refpolicy/refpoli=
cy/0071-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
similarity index 90%
rename from recipes-security/refpolicy/refpolicy/0066-policy-modules-system=
-init-make-init_t-MLS-trusted-f.patch
rename to recipes-security/refpolicy/refpolicy/0071-policy-modules-system-i=
nit-make-init_t-MLS-trusted-f.patch
index 09e9af2..74d7428 100644
--- a/recipes-security/refpolicy/refpolicy/0066-policy-modules-system-init-=
make-init_t-MLS-trusted-f.patch
+++ b/recipes-security/refpolicy/refpolicy/0071-policy-modules-system-init-=
make-init_t-MLS-trusted-f.patch
@@ -1,4 +1,4 @@
-From 3aa784896315d269be4f43a281d59ad7671b2d07 Mon Sep 17 00:00:00 2001
+From ee3e2bbaf3b94902aadebbb085c7e86b8d074e98 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Fri, 15 Jan 2016 03:47:05 -0500
 Subject: [PATCH] policy/modules/system/init: make init_t MLS trusted for
@@ -27,10 +27,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 4 insertions(+)
=20
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index fe3fcf011..8e85dde72 100644
+index b7d494398..b6750015e 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -208,6 +208,10 @@ mls_process_write_all_levels(init_t)
+@@ -210,6 +210,10 @@ mls_process_write_all_levels(init_t)
  mls_fd_use_all_levels(init_t)
  mls_process_set_level(init_t)
 =20
diff --git a/recipes-security/refpolicy/refpolicy/0067-policy-modules-syste=
m-systemd-make-systemd-tmpfiles_.patch b/recipes-security/refpolicy/refpoli=
cy/0072-policy-modules-system-systemd-make-systemd-tmpfiles_.patch
similarity index 92%
rename from recipes-security/refpolicy/refpolicy/0067-policy-modules-system=
-systemd-make-systemd-tmpfiles_.patch
rename to recipes-security/refpolicy/refpolicy/0072-policy-modules-system-s=
ystemd-make-systemd-tmpfiles_.patch
index b4245ab..2832681 100644
--- a/recipes-security/refpolicy/refpolicy/0067-policy-modules-system-syste=
md-make-systemd-tmpfiles_.patch
+++ b/recipes-security/refpolicy/refpolicy/0072-policy-modules-system-syste=
md-make-systemd-tmpfiles_.patch
@@ -1,4 +1,4 @@
-From fb69dde2c8783e0602dcce3509b69ded9e6331a2 Mon Sep 17 00:00:00 2001
+From 8cdcca3702d69ed5f3aa9ce9d769ad483f977094 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Thu, 4 Feb 2016 06:03:19 -0500
 Subject: [PATCH] policy/modules/system/systemd: make systemd-tmpfiles_t do=
main
@@ -43,10 +43,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 5 insertions(+)
=20
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/syst=
emd.te
-index fb8d4960f..57f4dc40d 100644
+index 7d2ba2796..c50a2ba64 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -1249,6 +1249,11 @@ sysnet_relabel_config(systemd_tmpfiles_t)
+@@ -1396,6 +1396,11 @@ sysnet_relabel_config(systemd_tmpfiles_t)
 =20
  systemd_log_parse_environment(systemd_tmpfiles_t)
 =20
diff --git a/recipes-security/refpolicy/refpolicy/0068-policy-modules-syste=
m-logging-add-the-syslogd_t-to-t.patch b/recipes-security/refpolicy/refpoli=
cy/0073-policy-modules-system-logging-add-the-syslogd_t-to-t.patch
similarity index 86%
rename from recipes-security/refpolicy/refpolicy/0068-policy-modules-system=
-logging-add-the-syslogd_t-to-t.patch
rename to recipes-security/refpolicy/refpolicy/0073-policy-modules-system-l=
ogging-add-the-syslogd_t-to-t.patch
index 921305e..d208752 100644
--- a/recipes-security/refpolicy/refpolicy/0068-policy-modules-system-loggi=
ng-add-the-syslogd_t-to-t.patch
+++ b/recipes-security/refpolicy/refpolicy/0073-policy-modules-system-loggi=
ng-add-the-syslogd_t-to-t.patch
@@ -1,4 +1,4 @@
-From f5a6c667186850ba8c5057742195c46d9f7ff8cf Mon Sep 17 00:00:00 2001
+From 4e7b0040ff558f2d69c8b9a30e73223acb20f35f Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] policy/modules/system/logging: add the syslogd_t to trust=
ed
@@ -18,11 +18,11 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 4 insertions(+)
=20
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logg=
ing.te
-index 1d45a5fa9..eec0560d1 100644
+index 62caa7a56..e608327fe 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -501,6 +501,10 @@ fs_getattr_all_fs(syslogd_t)
- fs_search_auto_mountpoints(syslogd_t)
+@@ -495,6 +495,10 @@ fs_search_auto_mountpoints(syslogd_t)
+ fs_search_tmpfs(syslogd_t)
 =20
  mls_file_write_all_levels(syslogd_t) # Need to be able to write to /var/r=
un/ and /var/log directories
 +mls_file_read_all_levels(syslogd_t)
diff --git a/recipes-security/refpolicy/refpolicy/0069-policy-modules-syste=
m-init-make-init_t-MLS-trusted-f.patch b/recipes-security/refpolicy/refpoli=
cy/0074-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
similarity index 86%
rename from recipes-security/refpolicy/refpolicy/0069-policy-modules-system=
-init-make-init_t-MLS-trusted-f.patch
rename to recipes-security/refpolicy/refpolicy/0074-policy-modules-system-i=
nit-make-init_t-MLS-trusted-f.patch
index 74ef580..b7dcaa8 100644
--- a/recipes-security/refpolicy/refpolicy/0069-policy-modules-system-init-=
make-init_t-MLS-trusted-f.patch
+++ b/recipes-security/refpolicy/refpolicy/0074-policy-modules-system-init-=
make-init_t-MLS-trusted-f.patch
@@ -1,4 +1,4 @@
-From b74b8052fd654d6a242bf3d8773a42f376d08fed Mon Sep 17 00:00:00 2001
+From bbb405ac6270ef945db21cfddda63d283ee5d8af Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 28 May 2019 16:41:37 +0800
 Subject: [PATCH] policy/modules/system/init: make init_t MLS trusted for
@@ -17,10 +17,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+)
=20
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index 8e85dde72..453ae9b6b 100644
+index b6750015e..962c675b0 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -207,6 +207,7 @@ mls_file_write_all_levels(init_t)
+@@ -209,6 +209,7 @@ mls_file_write_all_levels(init_t)
  mls_process_write_all_levels(init_t)
  mls_fd_use_all_levels(init_t)
  mls_process_set_level(init_t)
diff --git a/recipes-security/refpolicy/refpolicy/0070-policy-modules-syste=
m-init-all-init_t-to-read-any-le.patch b/recipes-security/refpolicy/refpoli=
cy/0075-policy-modules-system-init-all-init_t-to-read-any-le.patch
similarity index 88%
rename from recipes-security/refpolicy/refpolicy/0070-policy-modules-system=
-init-all-init_t-to-read-any-le.patch
rename to recipes-security/refpolicy/refpolicy/0075-policy-modules-system-i=
nit-all-init_t-to-read-any-le.patch
index 38a8076..de7271f 100644
--- a/recipes-security/refpolicy/refpolicy/0070-policy-modules-system-init-=
all-init_t-to-read-any-le.patch
+++ b/recipes-security/refpolicy/refpolicy/0075-policy-modules-system-init-=
all-init_t-to-read-any-le.patch
@@ -1,4 +1,4 @@
-From 0e29b493136115b9bf397cc59424552c5b354385 Mon Sep 17 00:00:00 2001
+From 2780811e48663df0265676749a4041c077ae6a89 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Wed, 3 Feb 2016 04:16:06 -0500
 Subject: [PATCH] policy/modules/system/init: all init_t to read any level
@@ -22,10 +22,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 3 insertions(+)
=20
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index 453ae9b6b..feed5af5f 100644
+index 962c675b0..aa57a5661 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -213,6 +213,9 @@ mls_key_write_all_levels(init_t)
+@@ -215,6 +215,9 @@ mls_key_write_all_levels(init_t)
  mls_file_downgrade(init_t)
  mls_file_upgrade(init_t)
 =20
diff --git a/recipes-security/refpolicy/refpolicy/0075-policy-modules-syste=
m-systemd-systemd-networkd-make-.patch b/recipes-security/refpolicy/refpoli=
cy/0075-policy-modules-system-systemd-systemd-networkd-make-.patch
deleted file mode 100644
index addb480..0000000
--- a/recipes-security/refpolicy/refpolicy/0075-policy-modules-system-syste=
md-systemd-networkd-make-.patch
+++ /dev/null
@@ -1,36 +0,0 @@
-From a75847eb2a5a34c18a4fd24383a696d6c077a117 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Thu, 18 Jun 2020 09:59:58 +0800
-Subject: [PATCH] policy/modules/system/systemd: systemd-networkd: make
- systemd_networkd_t MLS trusted for reading from files up to its clearance
-
-Fixes:
-avc:  denied  { search } for  pid=3D219 comm=3D"systemd-network"
-name=3D"journal" dev=3D"tmpfs" ino=3D10956
-scontext=3Dsystem_u:system_r:systemd_networkd_t:s0-s15:c0.c1023
-tcontext=3Dsystem_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=3Ddir
-permissive=3D0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/systemd.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/system/systemd.te b/policy/modules/system/syst=
emd.te
-index 6b0f52d15..cfbd9196a 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -795,6 +795,8 @@ sysnet_read_config(systemd_networkd_t)
-=20
- systemd_log_parse_environment(systemd_networkd_t)
-=20
-+mls_file_read_to_clearance(systemd_networkd_t)
-+
- optional_policy(`
- 	dbus_system_bus_client(systemd_networkd_t)
- 	dbus_connect_system_bus(systemd_networkd_t)
---=20
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0071-policy-modules-syste=
m-logging-allow-auditd_t-to-writ.patch b/recipes-security/refpolicy/refpoli=
cy/0076-policy-modules-system-logging-allow-auditd_t-to-writ.patch
similarity index 88%
rename from recipes-security/refpolicy/refpolicy/0071-policy-modules-system=
-logging-allow-auditd_t-to-writ.patch
rename to recipes-security/refpolicy/refpolicy/0076-policy-modules-system-l=
ogging-allow-auditd_t-to-writ.patch
index 2f7eb44..cd93c08 100644
--- a/recipes-security/refpolicy/refpolicy/0071-policy-modules-system-loggi=
ng-allow-auditd_t-to-writ.patch
+++ b/recipes-security/refpolicy/refpolicy/0076-policy-modules-system-loggi=
ng-allow-auditd_t-to-writ.patch
@@ -1,4 +1,4 @@
-From 71a217de05a084899537462f8b432825b12ab187 Mon Sep 17 00:00:00 2001
+From a74584ba424cd5e392db2a64b4ec66ebb307eb4c Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Thu, 25 Feb 2016 04:25:08 -0500
 Subject: [PATCH] policy/modules/system/logging: allow auditd_t to write so=
cket
@@ -22,10 +22,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
=20
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logg=
ing.te
-index eec0560d1..c22613c0b 100644
+index e608327fe..bdd5c9dff 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -210,6 +210,8 @@ miscfiles_read_localization(auditd_t)
+@@ -211,6 +211,8 @@ miscfiles_read_localization(auditd_t)
 =20
  mls_file_read_all_levels(auditd_t)
  mls_file_write_all_levels(auditd_t) # Need to be able to write to /var/ru=
n/ directory
diff --git a/recipes-security/refpolicy/refpolicy/0076-policy-modules-syste=
m-systemd-systemd-resolved-make-.patch b/recipes-security/refpolicy/refpoli=
cy/0076-policy-modules-system-systemd-systemd-resolved-make-.patch
deleted file mode 100644
index 908fe64..0000000
--- a/recipes-security/refpolicy/refpolicy/0076-policy-modules-system-syste=
md-systemd-resolved-make-.patch
+++ /dev/null
@@ -1,40 +0,0 @@
-From fac0583bea8eb74c43cd715cf5029d3243e38f95 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Thu, 18 Jun 2020 09:47:25 +0800
-Subject: [PATCH] policy/modules/system/systemd: systemd-resolved: make
- systemd_resolved_t MLS trusted for reading from files up to its clearance
-
-Fixes:
-avc:  denied  { search } for  pid=3D220 comm=3D"systemd-resolve"
-name=3D"journal" dev=3D"tmpfs" ino=3D10956
-scontext=3Dsystem_u:system_r:systemd_resolved_t:s0-s15:c0.c1023
-tcontext=3Dsystem_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=3Ddir
-permissive=3D0
-avc:  denied  { search } for  pid=3D220 comm=3D"systemd-resolve" name=3D"/=
"
-dev=3D"tmpfs" ino=3D15102
-scontext=3Dsystem_u:system_r:systemd_resolved_t:s0-s15:c0.c1023
-tcontext=3Dsystem_u:object_r:tmpfs_t:s0 tclass=3Ddir permissive=3D0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/systemd.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/system/systemd.te b/policy/modules/system/syst=
emd.te
-index cfbd9196a..806468109 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -1096,6 +1096,8 @@ init_dgram_send(systemd_resolved_t)
-=20
- seutil_read_file_contexts(systemd_resolved_t)
-=20
-+mls_file_read_to_clearance(systemd_resolved_t)
-+
- systemd_log_parse_environment(systemd_resolved_t)
- systemd_read_networkd_runtime(systemd_resolved_t)
-=20
---=20
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0072-policy-modules-kerne=
l-kernel-make-kernel_t-MLS-trust.patch b/recipes-security/refpolicy/refpoli=
cy/0077-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
similarity index 90%
rename from recipes-security/refpolicy/refpolicy/0072-policy-modules-kernel=
-kernel-make-kernel_t-MLS-trust.patch
rename to recipes-security/refpolicy/refpolicy/0077-policy-modules-kernel-k=
ernel-make-kernel_t-MLS-trust.patch
index f32bb74..6b84403 100644
--- a/recipes-security/refpolicy/refpolicy/0072-policy-modules-kernel-kerne=
l-make-kernel_t-MLS-trust.patch
+++ b/recipes-security/refpolicy/refpolicy/0077-policy-modules-kernel-kerne=
l-make-kernel_t-MLS-trust.patch
@@ -1,4 +1,4 @@
-From 8d1a8ffca75ada3dc576a4013644c9e9cdb45947 Mon Sep 17 00:00:00 2001
+From 1bcb41c20d666761bb407bf34c9e3391e16449a7 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Thu, 31 Oct 2019 17:35:59 +0800
 Subject: [PATCH] policy/modules/kernel/kernel: make kernel_t MLS trusted f=
or
@@ -15,7 +15,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
=20
 diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kerne=
l.te
-index 4dffaef76..34444a2f9 100644
+index 8f67c6ec9..fbcf1413f 100644
 --- a/policy/modules/kernel/kernel.te
 +++ b/policy/modules/kernel/kernel.te
 @@ -362,6 +362,8 @@ mls_fd_use_all_levels(kernel_t)
diff --git a/recipes-security/refpolicy/refpolicy/0077-policy-modules-syste=
m-systemd-make-systemd-modules_t.patch b/recipes-security/refpolicy/refpoli=
cy/0077-policy-modules-system-systemd-make-systemd-modules_t.patch
deleted file mode 100644
index a1013a1..0000000
--- a/recipes-security/refpolicy/refpolicy/0077-policy-modules-system-syste=
md-make-systemd-modules_t.patch
+++ /dev/null
@@ -1,36 +0,0 @@
-From 569033512340d791a13c1ee2f269788c55fff63c Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Sun, 28 Jun 2020 15:19:44 +0800
-Subject: [PATCH] policy/modules/system/systemd: make systemd-modules_t dom=
ain
- MLS trusted for reading from files up to its clearance
-
-Fixes:
-avc:  denied  { search } for  pid=3D142 comm=3D"systemd-modules"
-name=3D"journal" dev=3D"tmpfs" ino=3D10990
-scontext=3Dsystem_u:system_r:systemd_modules_load_t:s0-s15:c0.c1023
-tcontext=3Dsystem_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=3Ddir
-permissive=3D0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/systemd.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/system/systemd.te b/policy/modules/system/syst=
emd.te
-index 806468109..e82a1e64a 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -739,6 +739,8 @@ modutils_read_module_objects(systemd_modules_load_t)
-=20
- systemd_log_parse_environment(systemd_modules_load_t)
-=20
-+mls_file_read_to_clearance(systemd_modules_load_t)
-+
- ########################################
- #
- # networkd local policy
---=20
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0073-policy-modules-syste=
m-systemd-make-systemd-logind-do.patch b/recipes-security/refpolicy/refpoli=
cy/0078-policy-modules-system-systemd-make-systemd-logind-do.patch
similarity index 90%
rename from recipes-security/refpolicy/refpolicy/0073-policy-modules-system=
-systemd-make-systemd-logind-do.patch
rename to recipes-security/refpolicy/refpolicy/0078-policy-modules-system-s=
ystemd-make-systemd-logind-do.patch
index 1e5b474..5ac5a19 100644
--- a/recipes-security/refpolicy/refpolicy/0073-policy-modules-system-syste=
md-make-systemd-logind-do.patch
+++ b/recipes-security/refpolicy/refpolicy/0078-policy-modules-system-syste=
md-make-systemd-logind-do.patch
@@ -1,4 +1,4 @@
-From 212156df805a24852a4762737f7040f1c7bb9b9a Mon Sep 17 00:00:00 2001
+From 7021844f20c5d5c885edf87abf8ce3329bcc5836 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Mon, 23 Jan 2017 08:42:44 +0000
 Subject: [PATCH] policy/modules/system/systemd: make systemd-logind domain=
 MLS
@@ -25,10 +25,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
=20
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/syst=
emd.te
-index 57f4dc40d..1449d2808 100644
+index c50a2ba64..a7390b1cd 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -621,6 +621,8 @@ userdom_relabelto_user_runtime_dirs(systemd_logind_t)
+@@ -693,6 +693,8 @@ userdom_relabelto_user_runtime_dirs(systemd_logind_t)
  userdom_setattr_user_ttys(systemd_logind_t)
  userdom_use_user_ttys(systemd_logind_t)
 =20
diff --git a/recipes-security/refpolicy/refpolicy/0078-policy-modules-syste=
m-systemd-systemd-gpt-auto-gener.patch b/recipes-security/refpolicy/refpoli=
cy/0078-policy-modules-system-systemd-systemd-gpt-auto-gener.patch
deleted file mode 100644
index 303e7cf..0000000
--- a/recipes-security/refpolicy/refpolicy/0078-policy-modules-system-syste=
md-systemd-gpt-auto-gener.patch
+++ /dev/null
@@ -1,70 +0,0 @@
-From 84b86b1a4dd6f8e535c4b9b4ac2bfa38d202d9d3 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Tue, 23 Jun 2020 14:52:43 +0800
-Subject: [PATCH] policy/modules/system/systemd: systemd-gpt-auto-generator=
:
- make systemd_generator_t MLS trusted for writing from files up to its
- clearance
-
-Fixes:
-audit: type=3D1400 audit(1592892455.376:3): avc:  denied  { write } for
-pid=3D120 comm=3D"systemd-gpt-aut" name=3D"kmsg" dev=3D"devtmpfs" ino=3D10=
032
-scontext=3Dsystem_u:system_r:systemd_generator_t:s0-s15:c0.c1023
-tcontext=3Dsystem_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=3Dchr_file
-permissive=3D0
-audit: type=3D1400 audit(1592892455.381:4): avc:  denied  { write } for
-pid=3D119 comm=3D"systemd-getty-g" name=3D"kmsg" dev=3D"devtmpfs" ino=3D10=
032
-scontext=3Dsystem_u:system_r:systemd_generator_t:s0-s15:c0.c1023
-tcontext=3Dsystem_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=3Dchr_file
-permissive=3D0
-audit: type=3D1400 audit(1592892455.382:5): avc:  denied  { read write }
-for  pid=3D119 comm=3D"systemd-getty-g" name=3D"ttyS0" dev=3D"devtmpfs"
-ino=3D10127 scontext=3Dsystem_u:system_r:systemd_generator_t:s0-s15:c0.c10=
23
-tcontext=3Dsystem_u:object_r:tty_device_t:s0 tclass=3Dchr_file permissive=
=3D0
-audit: type=3D1400 audit(1592892455.382:6): avc:  denied  { write } for
-pid=3D124 comm=3D"systemd-system-" name=3D"kmsg" dev=3D"devtmpfs" ino=3D10=
032
-scontext=3Dsystem_u:system_r:systemd_generator_t:s0-s15:c0.c1023
-tcontext=3Dsystem_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=3Dchr_file
-permissive=3D0
-audit: type=3D1400 audit(1592892455.383:7): avc:  denied  { write } for
-pid=3D122 comm=3D"systemd-rc-loca" name=3D"kmsg" dev=3D"devtmpfs" ino=3D10=
032
-scontext=3Dsystem_u:system_r:systemd_generator_t:s0-s15:c0.c1023
-tcontext=3Dsystem_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=3Dchr_file
-permissive=3D0
-audit: type=3D1400 audit(1592892455.385:8): avc:  denied  { write } for
-pid=3D118 comm=3D"systemd-fstab-g" name=3D"kmsg" dev=3D"devtmpfs" ino=3D10=
032
-scontext=3Dsystem_u:system_r:systemd_generator_t:s0-s15:c0.c1023
-tcontext=3Dsystem_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=3Dchr_file
-permissive=3D0
-audit: type=3D1400 audit(1592892455.385:9): avc:  denied  { write } for
-pid=3D121 comm=3D"systemd-hiberna" name=3D"kmsg" dev=3D"devtmpfs" ino=3D10=
032
-scontext=3Dsystem_u:system_r:systemd_generator_t:s0-s15:c0.c1023
-tcontext=3Dsystem_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=3Dchr_file
-permissive=3D0
-audit: type=3D1400 audit(1592892455.386:10): avc:  denied  { write } for
-pid=3D123 comm=3D"systemd-run-gen" name=3D"kmsg" dev=3D"devtmpfs" ino=3D10=
032
-scontext=3Dsystem_u:system_r:systemd_generator_t:s0-s15:c0.c1023
-tcontext=3Dsystem_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=3Dchr_file
-permissive=3D0
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/systemd.te | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/system/systemd.te b/policy/modules/system/syst=
emd.te
-index e82a1e64a..7e573645b 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -401,6 +401,7 @@ storage_raw_read_fixed_disk(systemd_generator_t)
- systemd_log_parse_environment(systemd_generator_t)
-=20
- term_dontaudit_use_unallocated_ttys(systemd_generator_t)
-+mls_file_write_to_clearance(systemd_generator_t)
-=20
- optional_policy(`
- 	fstools_exec(systemd_generator_t)
---=20
-2.17.1
-
diff --git a/recipes-security/refpolicy/refpolicy/0074-policy-modules-syste=
m-systemd-systemd-user-sessions-.patch b/recipes-security/refpolicy/refpoli=
cy/0079-policy-modules-system-systemd-systemd-user-sessions-.patch
similarity index 88%
rename from recipes-security/refpolicy/refpolicy/0074-policy-modules-system=
-systemd-systemd-user-sessions-.patch
rename to recipes-security/refpolicy/refpolicy/0079-policy-modules-system-s=
ystemd-systemd-user-sessions-.patch
index ebe2b52..3ea0085 100644
--- a/recipes-security/refpolicy/refpolicy/0074-policy-modules-system-syste=
md-systemd-user-sessions-.patch
+++ b/recipes-security/refpolicy/refpolicy/0079-policy-modules-system-syste=
md-systemd-user-sessions-.patch
@@ -1,4 +1,4 @@
-From bea1f53ae2ba7608503051b874db9aecb97d4f00 Mon Sep 17 00:00:00 2001
+From 6e3e1a5f79d6deab2966fc74c64720e90d248f3d Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Thu, 18 Jun 2020 09:39:23 +0800
 Subject: [PATCH] policy/modules/system/systemd: systemd-user-sessions: mak=
e
@@ -24,10 +24,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
=20
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/syst=
emd.te
-index 1449d2808..6b0f52d15 100644
+index a7390b1cd..f0b0e8b92 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -1125,6 +1125,8 @@ seutil_read_file_contexts(systemd_sessions_t)
+@@ -1261,6 +1261,8 @@ seutil_read_file_contexts(systemd_sessions_t)
 =20
  systemd_log_parse_environment(systemd_sessions_t)
 =20
diff --git a/recipes-security/refpolicy/refpolicy/0080-policy-modules-syste=
m-systemd-systemd-make-systemd_-.patch b/recipes-security/refpolicy/refpoli=
cy/0080-policy-modules-system-systemd-systemd-make-systemd_-.patch
new file mode 100644
index 0000000..cb8e821
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0080-policy-modules-system-syste=
md-systemd-make-systemd_-.patch
@@ -0,0 +1,162 @@
+From 05ec2d78b44e57ecf188472b903fe66eeb568951 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Thu, 18 Jun 2020 09:59:58 +0800
+Subject: [PATCH] policy/modules/system/systemd: systemd-*: make systemd_*_=
t
+ MLS trusted for writing/reading from files up to its clearance
+
+Fixes:
+avc:  denied  { search } for  pid=3D219 comm=3D"systemd-network"
+name=3D"journal" dev=3D"tmpfs" ino=3D10956
+scontext=3Dsystem_u:system_r:systemd_networkd_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=3Ddir
+permissive=3D0
+
+avc:  denied  { search } for  pid=3D220 comm=3D"systemd-resolve"
+name=3D"journal" dev=3D"tmpfs" ino=3D10956
+scontext=3Dsystem_u:system_r:systemd_resolved_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=3Ddir
+permissive=3D0
+avc:  denied  { search } for  pid=3D220 comm=3D"systemd-resolve" name=3D"/=
"
+dev=3D"tmpfs" ino=3D15102
+scontext=3Dsystem_u:system_r:systemd_resolved_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:tmpfs_t:s0 tclass=3Ddir permissive=3D0
+
+avc:  denied  { search } for  pid=3D142 comm=3D"systemd-modules"
+name=3D"journal" dev=3D"tmpfs" ino=3D10990
+scontext=3Dsystem_u:system_r:systemd_modules_load_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=3Ddir
+permissive=3D0
+
+audit: type=3D1400 audit(1592892455.376:3): avc:  denied  { write } for
+pid=3D120 comm=3D"systemd-gpt-aut" name=3D"kmsg" dev=3D"devtmpfs" ino=3D10=
032
+scontext=3Dsystem_u:system_r:systemd_generator_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=3Dchr_file
+permissive=3D0
+
+audit: type=3D1400 audit(1592892455.381:4): avc:  denied  { write } for
+pid=3D119 comm=3D"systemd-getty-g" name=3D"kmsg" dev=3D"devtmpfs" ino=3D10=
032
+scontext=3Dsystem_u:system_r:systemd_generator_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=3Dchr_file
+permissive=3D0
+
+avc:  denied  { read } for  pid=3D125 comm=3D"systemd-gpt-aut" name=3D"sdb=
"
+dev=3D"devtmpfs" ino=3D42
+scontext=3Dsystem_u:system_r:systemd_generator_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:fixed_disk_device_t:s15:c0.c1023
+tclass=3Dblk_file permissive=3D0
+
+avc:  denied  { search } for  pid=3D302 comm=3D"systemd-hostnam"
+name=3D"journal" dev=3D"tmpfs" ino=3D14165
+scontext=3Dsystem_u:system_r:systemd_hostnamed_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=3Ddir
+permissive=3D0
+
+avc:  denied  { search } for  pid=3D302 comm=3D"systemd-hostnam" name=3D"/=
"
+dev=3D"tmpfs" ino=3D17310
+scontext=3Dsystem_u:system_r:systemd_hostnamed_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:tmpfs_t:s0 tclass=3Ddir permissive=3D0
+
+avc:  denied  { search } for  pid=3D233 comm=3D"systemd-rfkill"
+name=3D"journal" dev=3D"tmpfs" ino=3D14165
+scontext=3Dsystem_u:system_r:systemd_rfkill_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=3Ddir
+permissive=3D0
+
+avc:  denied  { write } for  pid=3D233 comm=3D"systemd-rfkill" name=3D"kms=
g"
+dev=3D"devtmpfs" ino=3D2060
+scontext=3Dsystem_u:system_r:systemd_rfkill_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=3Dchr_file
+permissive=3D0
+
+avc:  denied  { search } for  pid=3D354 comm=3D"systemd-backlig"
+name=3D"journal" dev=3D"tmpfs" ino=3D1183
+scontext=3Dsystem_u:system_r:systemd_backlight_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=3Ddir
+permissive=3D0
+
+avc:  denied  { write } for  pid=3D354 comm=3D"systemd-backlig" name=3D"km=
sg"
+dev=3D"devtmpfs" ino=3D3081
+scontext=3Dsystem_u:system_r:systemd_backlight_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=3Dchr_file
+permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 17 +++++++++++++++++
+ 1 file changed, 17 insertions(+)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/syst=
emd.te
+index f0b0e8b92..7b2d359b7 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -326,6 +326,9 @@ files_search_var_lib(systemd_backlight_t)
+=20
+ kernel_read_kernel_sysctls(systemd_backlight_t)
+=20
++mls_file_write_to_clearance(systemd_backlight_t)
++mls_file_read_to_clearance(systemd_backlight_t)
++
+ #######################################
+ #
+ # Binfmt local policy
+@@ -460,6 +463,9 @@ systemd_log_parse_environment(systemd_generator_t)
+=20
+ term_use_unallocated_ttys(systemd_generator_t)
+=20
++mls_file_write_to_clearance(systemd_generator_t)
++mls_file_read_to_clearance(systemd_generator_t)
++
+ ifdef(`distro_gentoo',`
+ 	corecmd_shell_entry_type(systemd_generator_t)
+ ')
+@@ -497,6 +503,8 @@ sysnet_manage_config(systemd_hostnamed_t)
+=20
+ systemd_log_parse_environment(systemd_hostnamed_t)
+=20
++mls_file_read_to_clearance(systemd_hostnamed_t)
++
+ optional_policy(`
+ 	dbus_connect_system_bus(systemd_hostnamed_t)
+ 	dbus_system_bus_client(systemd_hostnamed_t)
+@@ -818,6 +826,8 @@ modutils_read_module_deps(systemd_modules_load_t)
+=20
+ systemd_log_parse_environment(systemd_modules_load_t)
+=20
++mls_file_read_to_clearance(systemd_modules_load_t)
++
+ ########################################
+ #
+ # networkd local policy
+@@ -876,6 +886,8 @@ sysnet_read_config(systemd_networkd_t)
+=20
+ systemd_log_parse_environment(systemd_networkd_t)
+=20
++mls_file_read_to_clearance(systemd_networkd_t)
++
+ optional_policy(`
+ 	dbus_system_bus_client(systemd_networkd_t)
+ 	dbus_connect_system_bus(systemd_networkd_t)
+@@ -1159,6 +1171,9 @@ udev_read_runtime_files(systemd_rfkill_t)
+=20
+ systemd_log_parse_environment(systemd_rfkill_t)
+=20
++mls_file_write_to_clearance(systemd_rfkill_t)
++mls_file_read_to_clearance(systemd_rfkill_t)
++
+ #########################################
+ #
+ # Resolved local policy
+@@ -1202,6 +1217,8 @@ init_dgram_send(systemd_resolved_t)
+=20
+ seutil_read_file_contexts(systemd_resolved_t)
+=20
++mls_file_read_to_clearance(systemd_resolved_t)
++
+ systemd_log_parse_environment(systemd_resolved_t)
+ systemd_read_networkd_runtime(systemd_resolved_t)
+=20
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0079-policy-modules-servi=
ces-ntp-make-nptd_t-MLS-trusted-.patch b/recipes-security/refpolicy/refpoli=
cy/0081-policy-modules-services-ntp-make-nptd_t-MLS-trusted-.patch
similarity index 89%
rename from recipes-security/refpolicy/refpolicy/0079-policy-modules-servic=
es-ntp-make-nptd_t-MLS-trusted-.patch
rename to recipes-security/refpolicy/refpolicy/0081-policy-modules-services=
-ntp-make-nptd_t-MLS-trusted-.patch
index b939c37..250d89b 100644
--- a/recipes-security/refpolicy/refpolicy/0079-policy-modules-services-ntp=
-make-nptd_t-MLS-trusted-.patch
+++ b/recipes-security/refpolicy/refpolicy/0081-policy-modules-services-ntp=
-make-nptd_t-MLS-trusted-.patch
@@ -1,4 +1,4 @@
-From cb455496193d01761175f35297038f7cf468ebed Mon Sep 17 00:00:00 2001
+From a105ea8b48c5e9ada567c7f6347f3875df7098a0 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Thu, 18 Jun 2020 10:21:04 +0800
 Subject: [PATCH] policy/modules/services/ntp: make nptd_t MLS trusted for
@@ -23,7 +23,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
=20
 diff --git a/policy/modules/services/ntp.te b/policy/modules/services/ntp.=
te
-index 75603e16b..8886cb3bf 100644
+index 1626ae87a..c8a1f041b 100644
 --- a/policy/modules/services/ntp.te
 +++ b/policy/modules/services/ntp.te
 @@ -138,6 +138,8 @@ miscfiles_read_localization(ntpd_t)
@@ -33,7 +33,7 @@ index 75603e16b..8886cb3bf 100644
 +mls_file_read_all_levels(ntpd_t)
 +
  ifdef(`init_systemd',`
- 	allow ntpd_t ntpd_unit_t:file read_file_perms;
+ 	allow ntpd_t self:process setfscreate;
 =20
 --=20
 2.17.1
diff --git a/recipes-security/refpolicy/refpolicy/0082-policy-modules-syste=
m-setrans-allow-setrans_t-use-fd.patch b/recipes-security/refpolicy/refpoli=
cy/0082-policy-modules-system-setrans-allow-setrans_t-use-fd.patch
new file mode 100644
index 0000000..b67f069
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0082-policy-modules-system-setra=
ns-allow-setrans_t-use-fd.patch
@@ -0,0 +1,30 @@
+From e6a08769138d68582c72fe28ed7dd51c118654a5 Mon Sep 17 00:00:00 2001
+From: Roy Li <rongqing.li@windriver.com>
+Date: Sat, 22 Feb 2014 13:35:38 +0800
+Subject: [PATCH] policy/modules/system/setrans: allow setrans_t use fd at =
any
+ level
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Roy Li <rongqing.li@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/setrans.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/setrans.te b/policy/modules/system/setr=
ans.te
+index 78bd6e2eb..0dd3a63cd 100644
+--- a/policy/modules/system/setrans.te
++++ b/policy/modules/system/setrans.te
+@@ -71,6 +71,8 @@ mls_net_receive_all_levels(setrans_t)
+ mls_socket_write_all_levels(setrans_t)
+ mls_process_read_all_levels(setrans_t)
+ mls_socket_read_all_levels(setrans_t)
++mls_fd_use_all_levels(setrans_t)
++mls_trusted_object(setrans_t)
+=20
+ selinux_compute_access_vector(setrans_t)
+=20
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0083-policy-modules-servi=
ces-acpi-make-acpid_t-domain-MLS.patch b/recipes-security/refpolicy/refpoli=
cy/0083-policy-modules-services-acpi-make-acpid_t-domain-MLS.patch
new file mode 100644
index 0000000..cc2d5dd
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0083-policy-modules-services-acp=
i-make-acpid_t-domain-MLS.patch
@@ -0,0 +1,35 @@
+From 15c99854aa21564a6eb1121f58f55a9626ba6297 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 10 Jul 2020 09:07:00 +0800
+Subject: [PATCH] policy/modules/services/acpi: make acpid_t domain MLS tru=
sted
+ for reading from files up to its clearance
+
+Fixes:
+avc:  denied  { search } for  pid=3D265 comm=3D"acpid" name=3D"journal"
+dev=3D"tmpfs" ino=3D14165 scontext=3Dsystem_u:system_r:acpid_t:s0-s15:c0.c=
1023
+tcontext=3Dsystem_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=3Ddir
+permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/acpi.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/services/acpi.te b/policy/modules/services/acp=
i.te
+index 5c22adecd..bd442ff8a 100644
+--- a/policy/modules/services/acpi.te
++++ b/policy/modules/services/acpi.te
+@@ -157,6 +157,8 @@ userdom_dontaudit_use_unpriv_user_fds(acpid_t)
+ userdom_dontaudit_search_user_home_dirs(acpid_t)
+ userdom_dontaudit_search_user_home_content(acpid_t)
+=20
++mls_file_read_to_clearance(acpid_t)
++
+ optional_policy(`
+ 	automount_domtrans(acpid_t)
+ ')
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0080-policy-modules-servi=
ces-avahi-make-avahi_t-MLS-trust.patch b/recipes-security/refpolicy/refpoli=
cy/0084-policy-modules-services-avahi-make-avahi_t-MLS-trust.patch
similarity index 89%
rename from recipes-security/refpolicy/refpolicy/0080-policy-modules-servic=
es-avahi-make-avahi_t-MLS-trust.patch
rename to recipes-security/refpolicy/refpolicy/0084-policy-modules-services=
-avahi-make-avahi_t-MLS-trust.patch
index 2b1ab6f..3cfe2c0 100644
--- a/recipes-security/refpolicy/refpolicy/0080-policy-modules-services-ava=
hi-make-avahi_t-MLS-trust.patch
+++ b/recipes-security/refpolicy/refpolicy/0084-policy-modules-services-ava=
hi-make-avahi_t-MLS-trust.patch
@@ -1,4 +1,4 @@
-From 0a2e2a58a645bd99242ac5ec60f17fab26a80bf9 Mon Sep 17 00:00:00 2001
+From 5cd8a1121685c269238c89ea22743441541cf108 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 23 Jun 2020 08:19:16 +0800
 Subject: [PATCH] policy/modules/services/avahi: make avahi_t MLS trusted f=
or
@@ -12,7 +12,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
=20
 diff --git a/policy/modules/services/avahi.te b/policy/modules/services/av=
ahi.te
-index 5643349e3..5994ff3d5 100644
+index 674cdcb81..8ddd922e5 100644
 --- a/policy/modules/services/avahi.te
 +++ b/policy/modules/services/avahi.te
 @@ -95,6 +95,8 @@ sysnet_etc_filetrans_config(avahi_t)
diff --git a/recipes-security/refpolicy/refpolicy/0085-policy-modules-servi=
ces-bluetooth-make-bluetooth_t-d.patch b/recipes-security/refpolicy/refpoli=
cy/0085-policy-modules-services-bluetooth-make-bluetooth_t-d.patch
new file mode 100644
index 0000000..a784657
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0085-policy-modules-services-blu=
etooth-make-bluetooth_t-d.patch
@@ -0,0 +1,36 @@
+From 3c74f403cb38410ea7e1de0e61dafa80a60c5ba5 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 10 Jul 2020 09:18:12 +0800
+Subject: [PATCH] policy/modules/services/bluetooth: make bluetooth_t domai=
n
+ MLS trusted for reading from files up to its clearance
+
+Fixes:
+avc:  denied  { search } for  pid=3D268 comm=3D"bluetoothd" name=3D"journa=
l"
+dev=3D"tmpfs" ino=3D14165
+scontext=3Dsystem_u:system_r:bluetooth_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=3Ddir
+permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/bluetooth.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/services/bluetooth.te b/policy/modules/service=
s/bluetooth.te
+index b3df695db..931021346 100644
+--- a/policy/modules/services/bluetooth.te
++++ b/policy/modules/services/bluetooth.te
+@@ -132,6 +132,8 @@ userdom_dontaudit_search_user_home_dirs(bluetooth_t)
+ init_dbus_send_script(bluetooth_t)
+ systemd_dbus_chat_hostnamed(bluetooth_t)
+=20
++mls_file_read_to_clearance(bluetooth_t)
++
+ optional_policy(`
+ 	dbus_system_bus_client(bluetooth_t)
+ 	dbus_connect_system_bus(bluetooth_t)
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0086-policy-modules-syste=
m-sysnetwork-make-dhcpc_t-domain.patch b/recipes-security/refpolicy/refpoli=
cy/0086-policy-modules-system-sysnetwork-make-dhcpc_t-domain.patch
new file mode 100644
index 0000000..2ba3100
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0086-policy-modules-system-sysne=
twork-make-dhcpc_t-domain.patch
@@ -0,0 +1,38 @@
+From 1ab2ca67db9205f484ebce022be9c9a42bacc802 Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Thu, 23 Feb 2017 08:18:36 +0000
+Subject: [PATCH] policy/modules/system/sysnetwork: make dhcpc_t domain MLS
+ trusted for reading from files up to its clearance
+
+Allow dhcpc_t to search /run/systemd/journal
+
+Fixes:
+avc:  denied  { search } for  pid=3D218 comm=3D"dhclient" name=3D"journal"
+dev=3D"tmpfs" ino=3D10990 scontext=3Dsystem_u:system_r:dhcpc_t:s0-s15:c0.c=
1023
+tcontext=3Dsystem_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=3Ddir
+permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/sysnetwork.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/sysnetwork.te b/policy/modules/system/s=
ysnetwork.te
+index a9297f976..b6fd3f907 100644
+--- a/policy/modules/system/sysnetwork.te
++++ b/policy/modules/system/sysnetwork.te
+@@ -170,6 +170,8 @@ sysnet_run_ifconfig(dhcpc_t, dhcpc_roles)
+ userdom_use_user_terminals(dhcpc_t)
+ userdom_dontaudit_search_user_home_dirs(dhcpc_t)
+=20
++mls_file_read_to_clearance(dhcpc_t)
++
+ ifdef(`distro_redhat', `
+ 	files_exec_etc_files(dhcpc_t)
+ ')
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0087-policy-modules-servi=
ces-inetd-make-inetd_t-domain-ML.patch b/recipes-security/refpolicy/refpoli=
cy/0087-policy-modules-services-inetd-make-inetd_t-domain-ML.patch
new file mode 100644
index 0000000..abf5cd9
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0087-policy-modules-services-ine=
td-make-inetd_t-domain-ML.patch
@@ -0,0 +1,36 @@
+From 2a54a7cab41aaddc113ed71d68f82e37661c3487 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 3 Jul 2020 08:57:51 +0800
+Subject: [PATCH] policy/modules/services/inetd: make inetd_t domain MLS
+ trusted for reading from files up to its clearance
+
+Allow inetd_t to search /run/systemd/journal
+
+Fixes:
+avc:  denied  { search } for  pid=3D286 comm=3D"xinetd" name=3D"journal"
+dev=3D"tmpfs" ino=3D10990 scontext=3Dsystem_u:system_r:inetd_t:s0-s15:c0.c=
1023
+tcontext=3Dsystem_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=3Ddir
+permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/inetd.te | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/services/inetd.te b/policy/modules/services/in=
etd.te
+index 1a6ad6e1a..8d1fc0241 100644
+--- a/policy/modules/services/inetd.te
++++ b/policy/modules/services/inetd.te
+@@ -161,6 +161,7 @@ mls_socket_read_to_clearance(inetd_t)
+ mls_socket_write_to_clearance(inetd_t)
+ mls_net_outbound_all_levels(inetd_t)
+ mls_process_set_level(inetd_t)
++mls_file_read_to_clearance(inetd_t)
+=20
+ userdom_dontaudit_use_unpriv_user_fds(inetd_t)
+ userdom_dontaudit_search_user_home_dirs(inetd_t)
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0088-policy-modules-servi=
ces-bind-make-named_t-domain-MLS.patch b/recipes-security/refpolicy/refpoli=
cy/0088-policy-modules-services-bind-make-named_t-domain-MLS.patch
new file mode 100644
index 0000000..5be48df
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0088-policy-modules-services-bin=
d-make-named_t-domain-MLS.patch
@@ -0,0 +1,38 @@
+From 0e93ad162cda033935fbac584787417b97b4bc17 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 3 Jul 2020 09:42:21 +0800
+Subject: [PATCH] policy/modules/services/bind: make named_t domain MLS tru=
sted
+ for reading from files up to its clearance
+
+Allow named_t to search /run/systemd/journal
+
+Fixes:
+avc:  denied  { search } for  pid=3D295 comm=3D"isc-worker0000"
+name=3D"journal" dev=3D"tmpfs" ino=3D10990
+scontext=3Dsystem_u:system_r:named_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=3Ddir
+permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/bind.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/services/bind.te b/policy/modules/services/bin=
d.te
+index bf50763bd..be1813cb9 100644
+--- a/policy/modules/services/bind.te
++++ b/policy/modules/services/bind.te
+@@ -165,6 +165,8 @@ miscfiles_read_generic_tls_privkey(named_t)
+ userdom_dontaudit_use_unpriv_user_fds(named_t)
+ userdom_dontaudit_search_user_home_dirs(named_t)
+=20
++mls_file_read_to_clearance(named_t)
++
+ tunable_policy(`named_tcp_bind_http_port',`
+ 	corenet_sendrecv_http_server_packets(named_t)
+ 	corenet_tcp_bind_http_port(named_t)
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0060-policy-modules-servi=
ces-rpc-make-rpcd_t-MLS-trusted-.patch b/recipes-security/refpolicy/refpoli=
cy/0089-policy-modules-services-rpc-make-rpcd_t-MLS-trusted-.patch
similarity index 85%
rename from recipes-security/refpolicy/refpolicy/0060-policy-modules-servic=
es-rpc-make-rpcd_t-MLS-trusted-.patch
rename to recipes-security/refpolicy/refpolicy/0089-policy-modules-services=
-rpc-make-rpcd_t-MLS-trusted-.patch
index 8f68d66..7adaea0 100644
--- a/recipes-security/refpolicy/refpolicy/0060-policy-modules-services-rpc=
-make-rpcd_t-MLS-trusted-.patch
+++ b/recipes-security/refpolicy/refpolicy/0089-policy-modules-services-rpc=
-make-rpcd_t-MLS-trusted-.patch
@@ -1,4 +1,4 @@
-From 1c71d74635c2b39a15c449e75eacae23b3d4f1b8 Mon Sep 17 00:00:00 2001
+From 58cdf21546b973b458a26ea4b3a523275a80aca5 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Thu, 30 May 2019 08:30:06 +0800
 Subject: [PATCH] policy/modules/services/rpc: make rpcd_t MLS trusted for
@@ -19,10 +19,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 2 insertions(+)
=20
 diff --git a/policy/modules/services/rpc.te b/policy/modules/services/rpc.=
te
-index 7c0b37ddc..ef6cb9b63 100644
+index 9618df04e..84caefbbb 100644
 --- a/policy/modules/services/rpc.te
 +++ b/policy/modules/services/rpc.te
-@@ -185,6 +185,8 @@ seutil_dontaudit_search_config(rpcd_t)
+@@ -275,6 +275,8 @@ seutil_dontaudit_search_config(rpcd_t)
 =20
  userdom_signal_all_users(rpcd_t)
 =20
diff --git a/recipes-security/refpolicy/refpolicy/0090-policy-modules-syste=
m-systemd-make-_systemd_t-MLS-tr.patch b/recipes-security/refpolicy/refpoli=
cy/0090-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch
new file mode 100644
index 0000000..0a18ca3
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0090-policy-modules-system-syste=
md-make-_systemd_t-MLS-tr.patch
@@ -0,0 +1,42 @@
+From abb0ef8967130c6a31b45d6dfb0970cf8415fec6 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Mon, 22 Feb 2021 11:28:12 +0800
+Subject: [PATCH] policy/modules/system/systemd: make *_systemd_t MLS trust=
ed
+ for writing/reading from files at all levels
+
+Fixes:
+avc:  denied  { search } for  pid=3D1148 comm=3D"systemd" name=3D"journal"
+dev=3D"tmpfs" ino=3D206
+scontext=3Droot:sysadm_r:sysadm_systemd_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=3Ddir
+permissive=3D0
+avc:  denied  { write } for  pid=3D1148 comm=3D"systemd" name=3D"kmsg"
+dev=3D"devtmpfs" ino=3D3081
+scontext=3Droot:sysadm_r:sysadm_systemd_t:s0-s15:c0.c1023
+tcontext=3Dsystem_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=3Dchr_file
+permissive=3D0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.if | 3 +++
+ 1 file changed, 3 insertions(+)
+
+diff --git a/policy/modules/system/systemd.if b/policy/modules/system/syst=
emd.if
+index 152139261..320619289 100644
+--- a/policy/modules/system/systemd.if
++++ b/policy/modules/system/systemd.if
+@@ -113,6 +113,9 @@ template(`systemd_role_template',`
+=20
+ 	seutil_read_file_contexts($1_systemd_t)
+ 	seutil_search_default_contexts($1_systemd_t)
++
++	mls_file_read_all_levels($1_systemd_t)
++	mls_file_write_all_levels($1_systemd_t)
+ ')
+=20
+ ######################################
+--=20
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-secu=
rity/refpolicy/refpolicy_common.inc
index 6600af5..6e460cb 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -5,8 +5,8 @@ LICENSE =3D "GPLv2"
=20
 LIC_FILES_CHKSUM =3D "file://${S}/COPYING;md5=3D393a5ca445f6965873eca0259a=
17f833"
=20
-PROVIDES +=3D "virtual/refpolicy"
-RPROVIDES_${PN} +=3D "refpolicy"
+PROVIDES =3D "virtual/refpolicy"
+RPROVIDES_${PN} =3D "refpolicy"
=20
 # Specific config files for Poky
 SRC_URI +=3D "file://customizable_types  \
@@ -47,58 +47,67 @@ SRC_URI +=3D " \
         file://0027-fc-init-add-file-context-to-etc-network-if-files.patch=
 \
         file://0028-fc-vlock-apply-policy-to-vlock-alternatives.patch \
         file://0029-fc-cron-apply-policy-to-etc-init.d-crond.patch \
-        file://0030-file_contexts.subs_dist-set-aliase-for-root-director.p=
atch \
-        file://0031-policy-modules-system-logging-add-rules-for-the-syml.p=
atch \
-        file://0032-policy-modules-system-logging-add-rules-for-syslogd-.p=
atch \
-        file://0033-policy-modules-system-logging-add-domain-rules-for-t.p=
atch \
+        file://0030-fc-sysnetwork-update-file-context-for-ifconfig.patch \
+        file://0031-file_contexts.subs_dist-set-aliase-for-root-director.p=
atch \
+        file://0032-policy-modules-system-logging-add-rules-for-the-syml.p=
atch \
+        file://0033-policy-modules-system-logging-add-rules-for-syslogd-.p=
atch \
         file://0034-policy-modules-kernel-files-add-rules-for-the-symlin.p=
atch \
-        file://0035-policy-modules-kernel-terminal-add-rules-for-bsdpty_.p=
atch \
+        file://0035-policy-modules-system-logging-fix-auditd-startup-fai.p=
atch \
         file://0036-policy-modules-kernel-terminal-don-t-audit-tty_devic.p=
atch \
-        file://0037-policy-modules-services-avahi-allow-avahi_t-to-watch.p=
atch \
-        file://0038-policy-modules-system-getty-allow-getty_t-watch-gett.p=
atch \
-        file://0039-policy-modules-services-bluetooth-allow-bluetooth_t-.p=
atch \
-        file://0040-policy-modules-roles-sysadm-allow-sysadm-to-run-rpci.p=
atch \
-        file://0041-policy-modules-services-rpc-add-capability-dac_read_.p=
atch \
-        file://0042-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.p=
atch \
-        file://0043-policy-modules-services-rngd-fix-security-context-fo.p=
atch \
-        file://0044-policy-modules-system-authlogin-allow-chkpwd_t-to-ma.p=
atch \
-        file://0045-policy-modules-system-udev-allow-udevadm_t-to-search.p=
atch \
-        file://0046-policy-modules-udev-do-not-audit-udevadm_t-to-read-w.p=
atch \
-        file://0047-policy-modules-services-rdisc-allow-rdisc_t-to-searc.p=
atch \
-        file://0048-policy-modules-system-logging-fix-auditd-startup-fai.p=
atch \
-        file://0049-policy-modules-services-ssh-make-respective-init-scr.p=
atch \
-        file://0050-policy-modules-kernel-terminal-allow-loging-to-reset.p=
atch \
-        file://0051-policy-modules-system-selinuxutil-allow-semanage_t-t.p=
atch \
-        file://0052-policy-modules-system-sysnetwork-allow-ifconfig_t-to.p=
atch \
-        file://0053-policy-modules-services-ntp-allow-ntpd_t-to-watch-sy.p=
atch \
-        file://0054-policy-modules-system-systemd-enable-support-for-sys.p=
atch \
-        file://0055-policy-modules-system-logging-fix-systemd-journald-s.p=
atch \
-        file://0056-policy-modules-roles-sysadm-allow-sysadm_t-to-watch-.p=
atch \
-        file://0057-policy-modules-system-systemd-add-capability-mknod-f.p=
atch \
-        file://0058-policy-modules-system-systemd-systemd-gpt-auto-gener.p=
atch \
-        file://0059-policy-modules-services-rpc-fix-policy-for-nfsserver.p=
atch \
-        file://0060-policy-modules-services-rpc-make-rpcd_t-MLS-trusted-.p=
atch \
-        file://0061-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.p=
atch \
-        file://0062-policy-modules-system-mount-make-mount_t-domain-MLS-.p=
atch \
-        file://0063-policy-modules-system-setrans-allow-setrans-to-acces.p=
atch \
-        file://0064-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.p=
atch \
-        file://0065-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.p=
atch \
-        file://0066-policy-modules-system-init-make-init_t-MLS-trusted-f.p=
atch \
-        file://0067-policy-modules-system-systemd-make-systemd-tmpfiles_.p=
atch \
-        file://0068-policy-modules-system-logging-add-the-syslogd_t-to-t.p=
atch \
-        file://0069-policy-modules-system-init-make-init_t-MLS-trusted-f.p=
atch \
-        file://0070-policy-modules-system-init-all-init_t-to-read-any-le.p=
atch \
-        file://0071-policy-modules-system-logging-allow-auditd_t-to-writ.p=
atch \
-        file://0072-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.p=
atch \
-        file://0073-policy-modules-system-systemd-make-systemd-logind-do.p=
atch \
-        file://0074-policy-modules-system-systemd-systemd-user-sessions-.p=
atch \
-        file://0075-policy-modules-system-systemd-systemd-networkd-make-.p=
atch \
-        file://0076-policy-modules-system-systemd-systemd-resolved-make-.p=
atch \
-        file://0077-policy-modules-system-systemd-make-systemd-modules_t.p=
atch \
-        file://0078-policy-modules-system-systemd-systemd-gpt-auto-gener.p=
atch \
-        file://0079-policy-modules-services-ntp-make-nptd_t-MLS-trusted-.p=
atch \
-        file://0080-policy-modules-services-avahi-make-avahi_t-MLS-trust.p=
atch \
-        file://0081-fc-sysnetwork-update-file-context-for-ifconfig.patch \
+        file://0037-policy-modules-system-modutils-allow-mod_t-to-access.p=
atch \
+        file://0038-policy-modules-services-avahi-allow-avahi_t-to-watch.p=
atch \
+        file://0039-policy-modules-system-getty-allow-getty_t-to-search-.p=
atch \
+        file://0040-policy-modules-services-bluetooth-fix-bluetoothd-sta.p=
atch \
+        file://0041-policy-modules-roles-sysadm-allow-sysadm-to-run-rpci.p=
atch \
+        file://0042-policy-modules-services-rpc-add-capability-dac_read_.p=
atch \
+        file://0043-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.p=
atch \
+        file://0044-policy-modules-services-rngd-fix-security-context-fo.p=
atch \
+        file://0045-policy-modules-services-ssh-allow-ssh_keygen_t-to-re.p=
atch \
+        file://0046-policy-modules-services-ssh-make-respective-init-scr.p=
atch \
+        file://0047-policy-modules-kernel-terminal-allow-loging-to-reset.p=
atch \
+        file://0048-policy-modules-system-selinuxutil-allow-semanage_t-t.p=
atch \
+        file://0049-policy-modules-system-systemd-enable-support-for-sys.p=
atch \
+        file://0050-policy-modules-system-systemd-fix-systemd-resolved-s.p=
atch \
+        file://0051-policy-modules-system-init-add-capability2-bpf-and-p.p=
atch \
+        file://0052-policy-modules-system-systemd-allow-systemd_logind_t.p=
atch \
+        file://0053-policy-modules-system-logging-set-label-devlog_t-to-.p=
atch \
+        file://0054-policy-modules-system-systemd-support-systemd-user.pat=
ch \
+        file://0055-policy-modules-system-systemd-allow-systemd-generato.p=
atch \
+        file://0056-policy-modules-system-systemd-allow-systemd_backligh.p=
atch \
+        file://0057-policy-modules-system-logging-fix-systemd-journald-s.p=
atch \
+        file://0058-policy-modules-services-cron-allow-crond_t-to-search.p=
atch \
+        file://0059-policy-modules-services-crontab-allow-sysadm_r-to-ru.p=
atch \
+        file://0060-policy-modules-system-sysnetwork-support-priviledge-.p=
atch \
+        file://0061-policy-modules-services-acpi-allow-acpid-to-watch-th.p=
atch \
+        file://0062-policy-modules-system-setrans-allow-setrans-to-acces.p=
atch \
+        file://0063-policy-modules-system-modutils-allow-kmod_t-to-write.p=
atch \
+        file://0064-policy-modules-roles-sysadm-allow-sysadm_t-to-watch-.p=
atch \
+        file://0065-policy-modules-system-selinux-allow-setfiles_t-to-re.p=
atch \
+        file://0066-policy-modules-system-mount-make-mount_t-domain-MLS-.p=
atch \
+        file://0067-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.p=
atch \
+        file://0068-policy-modules-services-rpc-make-nfsd_t-domain-MLS-t.p=
atch \
+        file://0069-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.p=
atch \
+        file://0070-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.p=
atch \
+        file://0071-policy-modules-system-init-make-init_t-MLS-trusted-f.p=
atch \
+        file://0072-policy-modules-system-systemd-make-systemd-tmpfiles_.p=
atch \
+        file://0073-policy-modules-system-logging-add-the-syslogd_t-to-t.p=
atch \
+        file://0074-policy-modules-system-init-make-init_t-MLS-trusted-f.p=
atch \
+        file://0075-policy-modules-system-init-all-init_t-to-read-any-le.p=
atch \
+        file://0076-policy-modules-system-logging-allow-auditd_t-to-writ.p=
atch \
+        file://0077-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.p=
atch \
+        file://0078-policy-modules-system-systemd-make-systemd-logind-do.p=
atch \
+        file://0079-policy-modules-system-systemd-systemd-user-sessions-.p=
atch \
+        file://0080-policy-modules-system-systemd-systemd-make-systemd_-.p=
atch \
+        file://0081-policy-modules-services-ntp-make-nptd_t-MLS-trusted-.p=
atch \
+        file://0082-policy-modules-system-setrans-allow-setrans_t-use-fd.p=
atch \
+        file://0083-policy-modules-services-acpi-make-acpid_t-domain-MLS.p=
atch \
+        file://0084-policy-modules-services-avahi-make-avahi_t-MLS-trust.p=
atch \
+        file://0085-policy-modules-services-bluetooth-make-bluetooth_t-d.p=
atch \
+        file://0086-policy-modules-system-sysnetwork-make-dhcpc_t-domain.p=
atch \
+        file://0087-policy-modules-services-inetd-make-inetd_t-domain-ML.p=
atch \
+        file://0088-policy-modules-services-bind-make-named_t-domain-MLS.p=
atch \
+        file://0089-policy-modules-services-rpc-make-rpcd_t-MLS-trusted-.p=
atch \
+        file://0090-policy-modules-system-systemd-make-_systemd_t-MLS-tr.p=
atch \
         "
=20
 S =3D "${WORKDIR}/refpolicy"
diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-securit=
y/refpolicy/refpolicy_git.inc
index 122b7b6..f131646 100644
--- a/recipes-security/refpolicy/refpolicy_git.inc
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -1,8 +1,8 @@
-PV =3D "2.20200229+git${SRCPV}"
+PV =3D "2.20210203+git${SRCPV}"
=20
 SRC_URI =3D "git://github.com/SELinuxProject/refpolicy.git;protocol=3Dgit;=
branch=3Dmaster;name=3Drefpolicy;destsuffix=3Drefpolicy"
=20
-SRCREV_refpolicy ?=3D "613708cad64943bae4e2de00df7b8e656446dd2f"
+SRCREV_refpolicy ?=3D "1167739da1882f9c89281095d2595da5ea2d9d6b"
=20
 UPSTREAM_CHECK_GITTAGREGEX =3D "RELEASE_(?P<pver>\d+_\d+)"
=20
--=20
2.25.1

