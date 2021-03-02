Received: from NAM12-MW2-obe.outbound.protection.outlook.com (NAM12-MW2-obe.outbound.protection.outlook.com [40.107.244.72])
 by mx.groups.io with SMTP id smtpd.web11.5958.1614675142201534390
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 00:52:22 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=k3o5zARM;
 spf=pass (domain: windriver.com, ip: 40.107.244.72, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y9pK8ZcZbq13B0NO36VpdX96cclIyEa5dhPYMDT8YTApDrFuNmSkmAteFLVbegctBm/JRQCo5zdi/9NvkqbU4b4HkYGIgHSBmuyNTKCzoU79YA7Qi5y4CFel+2G9gpz44NDlDnIILbSzaGtzWhUud1UDtxdRe6v3nLFbUJBgNQIHVg6Z1dB0mLSLGp1SIBNuChRZc6496Nyx/3CDGDVT1V9jqLeWVCHeFNYUGnPh+y0npxjog+FOQMD9Wu1jLL2UlNwduSZPkMZFmyEIQfXBSPlrK1C6lQyyn4a+aRm/wshpr/KGDJp3Gvsatu6Aho0CCy15U16q2WEAgPyGLT5m2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cnLHbjutx8K/0NFqxhvIJLlODJHj37HUbyWwZOOENJ4=;
 b=gakYE0ml6pH8NM3DQMQfuusd0qlM60hO5jj5WK4Y4jyo4nJt6bMgiJds9i4babSPsQ2mM6B6vaBggTkGl4P0ajd6em8j0jEkxxuUcGNSnBI8X8iaJQgZnr9CYAvx1V/5CGIqcPp5E4kY3D6iacOvOTNlcqp25g5xw1TpN4Cx9x8vDfgns3pPsGgZWjSOh00+jWLtXIWV5zqxgkCHVFvXp1uyzqGi5RANb47bUrVJcgoQqkNjf/7KLmXg00tHd4stfU5tzGDOtf22fTxrUDVLo901+sn5Io3emz5F5+U7UaZL9a9ZWUmOk4IFAFE63vXGUT+Ko1L/Ul52DRTT1tW/eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cnLHbjutx8K/0NFqxhvIJLlODJHj37HUbyWwZOOENJ4=;
 b=k3o5zARMtInuFwAGbtqWCE9hISRQoRGigO6lwOV3uAzsbiD3CuU0zw07F5FeUPka7eDZ4H15M6s3KOuZD7IYmkqWMFexaCLtVG3CkOqMEFoMup2XkmrV4QslGm2LwUoyrMeHXEzOtyeex7XeLx2ApdkDE3ucNZTLzoGwvaSzU5w=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR1101MB2352.namprd11.prod.outlook.com (2603:10b6:300:7e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.26; Tue, 2 Mar
 2021 08:52:19 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3890.023; Tue, 2 Mar 2021
 08:52:19 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 0/7] selinux: upgrade refpolicy
Date: Tue,  2 Mar 2021 16:51:59 +0800
Message-ID: <20210302085206.56794-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2P15301CA0009.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::19) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
Return-Path: yi.zhao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2P15301CA0009.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.8 via Frontend Transport; Tue, 2 Mar 2021 08:52:17 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 33aadb46-9eb1-4a72-9d5b-08d8dd587c84
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2352:
X-Microsoft-Antispam-PRVS: 
	<MWHPR1101MB23522538AB605A2498BFF741F9999@MWHPR1101MB2352.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:935;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	FqBhGJlYqlaiBBAiW/AIZWF/XSEeKoiXA+CIMNl/IRUtGnF5kWGQS1PPCFjJjuFM3oTvIWKuOsB4rjQ6ZhrRb1bbQLKV7X5+S2YDPcbXoyikpu1WP5y/285GlgSpGlpy6DvcPZQV/yVaa9XDySARI3n2Yas7ILIqR5DMNW5+YpyaVa9VyDM8kkn/YQ07ra0k0VNuEXUFGyyZPsWLBApIxmnljBy8TCcSRWb9M4cAeTLr9EBstSiXCc2OsyMfms6i2uQDtx3LrZmCxDMMrJ5siqOZofp06Rih7/zDAcwGevSxKdtqIYu539cV2xY47AUpmwjuNCZS0pSLCsYK2U+/ZPcXoSN3l6+1tvIPuBCS/cKPCi+OLz7Ru9j2p6G9ju1wYHMVyPtMadrxJrDCQ96W//ZskMyKJ2qYJQ9BNSaEOAT/yscKDqN4wQWxXlTynjVbrk8/XQBUVzXZ314zW6erJcM2Xqk2oDr+YvyjZdSUNL/pfE+/vDDJF7B6J8n/cb7z2xSuPCT0Mj492Iw6MVNMsQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(39850400004)(366004)(346002)(376002)(136003)(2616005)(36756003)(2906002)(8676002)(956004)(6666004)(316002)(44832011)(478600001)(6506007)(5660300002)(6512007)(30864003)(83380400001)(66476007)(52116002)(66556008)(66946007)(8936002)(186003)(16526019)(86362001)(1076003)(6486002)(26005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?NjujtYMHuHu5vS/hbxl8E4Tkrx4YbmeKGrNMo8CWe2Yb50MCn0ldcOz3n9L2?=
 =?us-ascii?Q?EML9RoBlAwV/FIfthOGj5lBd7E5NqMMtrKQR9lWUsjU2Lmii3jXxshWJRT8D?=
 =?us-ascii?Q?v/WR/+BzQv8X0qcktIREbJMNTqwToE/mCdTVae3L7kYgj23LLx9p3lX5oGgX?=
 =?us-ascii?Q?qrhullKebGff1Xln26PLP+BDdd3MpqmSJC9aBcTlRHj7ntWIXUDaO1jsS2r0?=
 =?us-ascii?Q?Nhh3/Tf8JIDqw/9A2M2HiYZCk5g/a4Qo8VB6/KuqfnGIKye6Y/MEamTQ0Mj5?=
 =?us-ascii?Q?iwAK5N1UfOgd50sowvHiaYgoL4+ASEfOfkmMOQjaWC0hG+0+PtM3ynR78OeZ?=
 =?us-ascii?Q?glpPulTnCy0iDDvVtLkjdjkOCdIYFS74m/t5i2KoqLM4MhGw0je5mgLPLB+b?=
 =?us-ascii?Q?PGeO16fXoiRKliak4KZcw3hm0eCaRwGwV75WgVdWTfTmVVfyWMelV+GQGpuq?=
 =?us-ascii?Q?AFXzfIWCAh4tsQ5I2BslLv3guoJkphmOyAI9w1GJMAwXNCNFGOY31SBtIhnV?=
 =?us-ascii?Q?HtObcJKliL1gPNLc3/xLvhdyGU6bmP8GvVQVVia6NdPLfqwGdn7qX226qkTl?=
 =?us-ascii?Q?rlOC6WBr+ydcL1L7NeaXMnKukFEuEMG0ZMIqr/5SrcGpaYT25w7gqIj/EfJF?=
 =?us-ascii?Q?OtYUwHBcOt34s8acLl6/l5mKazsGQ0vPAV6grht0NoGPuIkHo70I7L9ivx4t?=
 =?us-ascii?Q?mbQPacYTlt90X8yAch/7I6ZjzSUZvqueQohuZsGh++klgTeVHyLezg3/XZMb?=
 =?us-ascii?Q?8m4iGwU3MtXtBeT1s8qyCGgPogervwGbKIe6Bf2n5s+twvNtzgTb1UQ8Dyqq?=
 =?us-ascii?Q?dKmgm1n3KpeDP8iy1Gos8E7Qpi5kjQ3TSeYkg3xYaLExFedUzu232k/FlX1o?=
 =?us-ascii?Q?ioe44aAwOCwAkcL1Ium8unypHvLAvVlDGzqwKtmyUvMWz551sqo7bIBxW837?=
 =?us-ascii?Q?MEKHWtY7Krp5cmx5zofl2RP2tjxIP9VSKAjiFPDPv64pCVqnBmBsTbHGR9no?=
 =?us-ascii?Q?gcxcki0CUIOCjMEAxRQzoJbCDG4wGu0M+gs+1TGZb2Q16lu6DpUUb3/pVdhO?=
 =?us-ascii?Q?Ws1hmvDOK1rvVtITXVU9KoQZmeak2LbGAsOe+GMhgpqJJJo1wgqsqV/HlcUF?=
 =?us-ascii?Q?qz/dtXNYPaIHNKcaEecKZGJK0MSbXSYPnhC+fytVc19eBZvuCw2McoX+Nw3R?=
 =?us-ascii?Q?QZU2/f9ILmdArA4HihLZqKBEg0RV9cLe9nwapm0ILfgVUysobRyp6zBTCexP?=
 =?us-ascii?Q?0aVM/kWQw2Ik+Dmwc5WPt8swOvMU0z1ikjiYMXMxaSkcuvmbQN+c+pMm7qoi?=
 =?us-ascii?Q?tS+/axI5HB8NrrJXgbP821L2?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33aadb46-9eb1-4a72-9d5b-08d8dd587c84
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2021 08:52:19.4267
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7wVF6LtUs3KN3v03ioM3fh9VWQ3SAKXasZuxxBsaJGYz13zc6fMbc4r+aUlX+oUCk1+7HEKXvfnvbGB5nt739A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2352
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Upgrade refpolicy from 20200229+git to 20210203+git

Yi Zhao (7):
  selinux-python: depend on libselinux
  parted: remove bbappend
  audit: move audisp-* to audispd-plugins package
  audit: upgrade 3.0 -> 3.0.1
  packagegroup-core-selinux: add auditd
  initscripts: restore security contexts after running
    populate-volatile.sh
  refpolicy: upgrade 20200229+git -> 20210203+git

 .../initscripts/initscripts-1.0_selinux.inc   |   2 +-
 recipes-extended/parted/parted_%.bbappend     |   1 -
 ...arm_table.h-update-arm-syscall-table.patch |  49 -----
 .../audit/{audit_3.0.bb =3D> audit_3.0.1.bb}    |  17 +-
 .../packagegroup-core-selinux.bb              |   1 +
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
 recipes-security/selinux/selinux-python.inc   |   2 +-
 121 files changed, 1918 insertions(+), 1240 deletions(-)
 delete mode 100644 recipes-extended/parted/parted_%.bbappend
 delete mode 100644 recipes-security/audit/audit/0001-lib-arm_table.h-updat=
e-arm-syscall-table.patch
 rename recipes-security/audit/{audit_3.0.bb =3D> audit_3.0.1.bb} (87%)
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

--=20
2.25.1

