Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70991E00782; Tue, 10 Jan 2017 00:54:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	URI_HEX autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4605CE00524
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 00:54:13 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v0A8sDh8024520
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 00:54:13 -0800 (PST)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 10 Jan 2017 00:54:12 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 10 Jan 2017 00:54:10 -0800
Message-ID: <24d2b61f8ad4f2732b8b1757621abefeea8611a8.1484037945.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1484037945.git.wenzong.fan@windriver.com>
References: <cover.1484037945.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 1/2] refpolicy: uprev 2.20151208 -> 2.20161023
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Jan 2017 08:54:16 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 .../ftp-add-ftpd_t-to-mlsfilewrite.patch                          | 0
 .../poky-fc-clock.patch                                           | 0
 .../poky-fc-corecommands.patch                                    | 0
 .../poky-fc-dmesg.patch                                           | 0
 .../poky-fc-fix-bind.patch                                        | 0
 .../poky-fc-fix-real-path_login.patch                             | 0
 .../poky-fc-fix-real-path_resolv.conf.patch                       | 0
 .../poky-fc-fix-real-path_shadow.patch                            | 0
 .../poky-fc-fix-real-path_su.patch                                | 0
 .../poky-fc-fstools.patch                                         | 0
 .../poky-fc-ftpwho-dir.patch                                      | 0
 .../poky-fc-iptables.patch                                        | 0
 .../poky-fc-mta.patch                                             | 0
 .../poky-fc-netutils.patch                                        | 0
 .../poky-fc-nscd.patch                                            | 0
 .../poky-fc-rpm.patch                                             | 0
 .../poky-fc-screen.patch                                          | 0
 .../poky-fc-ssh.patch                                             | 0
 .../poky-fc-su.patch                                              | 0
 .../poky-fc-subs_dist.patch                                       | 0
 .../poky-fc-sysnetwork.patch                                      | 0
 .../poky-fc-udevd.patch                                           | 0
 .../poky-fc-update-alternatives_hostname.patch                    | 0
 .../poky-fc-update-alternatives_sysklogd.patch                    | 0
 .../poky-fc-update-alternatives_sysvinit.patch                    | 0
 .../poky-policy-add-rules-for-bsdpty_device_t.patch               | 0
 .../poky-policy-add-rules-for-syslogd_t-symlink.patch             | 0
 .../poky-policy-add-rules-for-tmp-symlink.patch                   | 0
 .../poky-policy-add-rules-for-var-cache-symlink.patch             | 0
 .../poky-policy-add-rules-for-var-log-symlink-apache.patch        | 0
 ...oky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch | 0
 .../poky-policy-add-rules-for-var-log-symlink.patch               | 0
 .../poky-policy-add-syslogd_t-to-trusted-object.patch             | 0
 .../poky-policy-allow-nfsd-to-exec-shell-commands.patch           | 0
 .../poky-policy-allow-setfiles_t-to-read-symlinks.patch           | 0
 .../poky-policy-allow-sysadm-to-run-rpcinfo.patch                 | 0
 .../poky-policy-don-t-audit-tty_device_t.patch                    | 0
 .../poky-policy-fix-dmesg-to-use-dev-kmsg.patch                   | 0
 .../poky-policy-fix-new-SELINUXMNT-in-sys.patch                   | 0
 .../poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch               | 0
 .../poky-policy-fix-setfiles-statvfs-get-file-count.patch         | 0
 .../poky-policy-fix-seutils-manage-config-files.patch             | 0
 .../refpolicy-update-for_systemd.patch                            | 0
 .../{refpolicy-mcs_2.20151208.bb => refpolicy-mcs_2.20161023.bb}  | 0
 ...licy-minimum_2.20151208.bb => refpolicy-minimum_2.20161023.bb} | 0
 .../{refpolicy-mls_2.20151208.bb => refpolicy-mls_2.20161023.bb}  | 0
 ...cy-standard_2.20151208.bb => refpolicy-standard_2.20161023.bb} | 0
 ...cy-targeted_2.20151208.bb => refpolicy-targeted_2.20161023.bb} | 0
 .../{refpolicy_2.20151208.inc => refpolicy_2.20161023.inc}        | 8 ++++----
 49 files changed, 4 insertions(+), 4 deletions(-)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/ftp-add-ftpd_t-to-mlsfilewrite.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-clock.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-corecommands.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-dmesg.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-fix-bind.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-fix-real-path_login.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-fix-real-path_resolv.conf.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-fix-real-path_shadow.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-fix-real-path_su.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-fstools.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-ftpwho-dir.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-iptables.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-mta.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-netutils.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-nscd.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-rpm.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-screen.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-ssh.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-su.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-subs_dist.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-sysnetwork.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-udevd.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-update-alternatives_hostname.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-update-alternatives_sysklogd.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-update-alternatives_sysvinit.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-add-rules-for-bsdpty_device_t.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-add-rules-for-syslogd_t-symlink.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-add-rules-for-tmp-symlink.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-add-rules-for-var-cache-symlink.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-add-rules-for-var-log-symlink-apache.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-add-rules-for-var-log-symlink.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-add-syslogd_t-to-trusted-object.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-allow-nfsd-to-exec-shell-commands.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-allow-setfiles_t-to-read-symlinks.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-allow-sysadm-to-run-rpcinfo.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-don-t-audit-tty_device_t.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-fix-dmesg-to-use-dev-kmsg.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-fix-new-SELINUXMNT-in-sys.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-fix-setfiles-statvfs-get-file-count.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-fix-seutils-manage-config-files.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/refpolicy-update-for_systemd.patch (100%)
 rename recipes-security/refpolicy/{refpolicy-mcs_2.20151208.bb => refpolicy-mcs_2.20161023.bb} (100%)
 rename recipes-security/refpolicy/{refpolicy-minimum_2.20151208.bb => refpolicy-minimum_2.20161023.bb} (100%)
 rename recipes-security/refpolicy/{refpolicy-mls_2.20151208.bb => refpolicy-mls_2.20161023.bb} (100%)
 rename recipes-security/refpolicy/{refpolicy-standard_2.20151208.bb => refpolicy-standard_2.20161023.bb} (100%)
 rename recipes-security/refpolicy/{refpolicy-targeted_2.20151208.bb => refpolicy-targeted_2.20161023.bb} (100%)
 rename recipes-security/refpolicy/{refpolicy_2.20151208.inc => refpolicy_2.20161023.inc} (91%)

diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/ftp-add-ftpd_t-to-mlsfilewrite.patch b/recipes-security/refpolicy/refpolicy-2.20161023/ftp-add-ftpd_t-to-mlsfilewrite.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/ftp-add-ftpd_t-to-mlsfilewrite.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/ftp-add-ftpd_t-to-mlsfilewrite.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-clock.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-clock.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-clock.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-clock.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-corecommands.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-corecommands.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-corecommands.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-corecommands.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-dmesg.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-dmesg.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-dmesg.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-dmesg.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-fix-bind.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-fix-bind.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-fix-bind.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-fix-bind.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-fix-real-path_login.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-fix-real-path_login.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-fix-real-path_login.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-fix-real-path_login.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-fix-real-path_resolv.conf.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-fix-real-path_resolv.conf.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-fix-real-path_resolv.conf.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-fix-real-path_resolv.conf.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-fix-real-path_shadow.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-fix-real-path_shadow.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-fix-real-path_shadow.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-fix-real-path_shadow.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-fix-real-path_su.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-fix-real-path_su.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-fix-real-path_su.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-fix-real-path_su.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-fstools.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-fstools.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-fstools.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-fstools.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-ftpwho-dir.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-ftpwho-dir.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-ftpwho-dir.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-ftpwho-dir.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-iptables.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-iptables.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-iptables.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-iptables.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-mta.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-mta.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-mta.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-mta.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-netutils.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-netutils.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-netutils.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-netutils.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-nscd.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-nscd.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-nscd.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-nscd.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-rpm.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-rpm.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-rpm.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-rpm.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-screen.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-screen.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-screen.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-screen.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-ssh.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-ssh.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-ssh.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-ssh.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-su.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-su.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-su.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-su.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-subs_dist.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-subs_dist.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-subs_dist.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-subs_dist.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-sysnetwork.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-sysnetwork.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-sysnetwork.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-sysnetwork.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-udevd.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-udevd.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-udevd.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-udevd.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-update-alternatives_hostname.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-update-alternatives_hostname.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-update-alternatives_hostname.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-update-alternatives_hostname.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-update-alternatives_sysklogd.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-update-alternatives_sysklogd.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-update-alternatives_sysklogd.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-update-alternatives_sysklogd.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-update-alternatives_sysvinit.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-update-alternatives_sysvinit.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-update-alternatives_sysvinit.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-fc-update-alternatives_sysvinit.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-rules-for-bsdpty_device_t.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-add-rules-for-bsdpty_device_t.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-rules-for-bsdpty_device_t.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-add-rules-for-bsdpty_device_t.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-rules-for-syslogd_t-symlink.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-add-rules-for-syslogd_t-symlink.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-rules-for-syslogd_t-symlink.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-add-rules-for-syslogd_t-symlink.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-rules-for-tmp-symlink.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-add-rules-for-tmp-symlink.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-rules-for-tmp-symlink.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-add-rules-for-tmp-symlink.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-rules-for-var-cache-symlink.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-add-rules-for-var-cache-symlink.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-rules-for-var-cache-symlink.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-add-rules-for-var-cache-symlink.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-rules-for-var-log-symlink-apache.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-add-rules-for-var-log-symlink-apache.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-rules-for-var-log-symlink-apache.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-add-rules-for-var-log-symlink-apache.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-rules-for-var-log-symlink.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-add-rules-for-var-log-symlink.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-rules-for-var-log-symlink.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-add-rules-for-var-log-symlink.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-syslogd_t-to-trusted-object.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-add-syslogd_t-to-trusted-object.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-syslogd_t-to-trusted-object.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-add-syslogd_t-to-trusted-object.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-allow-nfsd-to-exec-shell-commands.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-allow-nfsd-to-exec-shell-commands.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-allow-nfsd-to-exec-shell-commands.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-allow-nfsd-to-exec-shell-commands.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-allow-setfiles_t-to-read-symlinks.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-allow-setfiles_t-to-read-symlinks.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-allow-setfiles_t-to-read-symlinks.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-allow-setfiles_t-to-read-symlinks.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-allow-sysadm-to-run-rpcinfo.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-allow-sysadm-to-run-rpcinfo.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-allow-sysadm-to-run-rpcinfo.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-allow-sysadm-to-run-rpcinfo.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-don-t-audit-tty_device_t.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-don-t-audit-tty_device_t.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-don-t-audit-tty_device_t.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-don-t-audit-tty_device_t.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-fix-dmesg-to-use-dev-kmsg.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-fix-new-SELINUXMNT-in-sys.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-fix-new-SELINUXMNT-in-sys.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-fix-new-SELINUXMNT-in-sys.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-fix-new-SELINUXMNT-in-sys.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-fix-setfiles-statvfs-get-file-count.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-fix-setfiles-statvfs-get-file-count.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-fix-setfiles-statvfs-get-file-count.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-fix-setfiles-statvfs-get-file-count.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-fix-seutils-manage-config-files.patch b/recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-fix-seutils-manage-config-files.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-fix-seutils-manage-config-files.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/poky-policy-fix-seutils-manage-config-files.patch
diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/refpolicy-update-for_systemd.patch b/recipes-security/refpolicy/refpolicy-2.20161023/refpolicy-update-for_systemd.patch
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-2.20151208/refpolicy-update-for_systemd.patch
rename to recipes-security/refpolicy/refpolicy-2.20161023/refpolicy-update-for_systemd.patch
diff --git a/recipes-security/refpolicy/refpolicy-mcs_2.20151208.bb b/recipes-security/refpolicy/refpolicy-mcs_2.20161023.bb
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-mcs_2.20151208.bb
rename to recipes-security/refpolicy/refpolicy-mcs_2.20161023.bb
diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb b/recipes-security/refpolicy/refpolicy-minimum_2.20161023.bb
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
rename to recipes-security/refpolicy/refpolicy-minimum_2.20161023.bb
diff --git a/recipes-security/refpolicy/refpolicy-mls_2.20151208.bb b/recipes-security/refpolicy/refpolicy-mls_2.20161023.bb
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-mls_2.20151208.bb
rename to recipes-security/refpolicy/refpolicy-mls_2.20161023.bb
diff --git a/recipes-security/refpolicy/refpolicy-standard_2.20151208.bb b/recipes-security/refpolicy/refpolicy-standard_2.20161023.bb
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-standard_2.20151208.bb
rename to recipes-security/refpolicy/refpolicy-standard_2.20161023.bb
diff --git a/recipes-security/refpolicy/refpolicy-targeted_2.20151208.bb b/recipes-security/refpolicy/refpolicy-targeted_2.20161023.bb
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-targeted_2.20151208.bb
rename to recipes-security/refpolicy/refpolicy-targeted_2.20161023.bb
diff --git a/recipes-security/refpolicy/refpolicy_2.20151208.inc b/recipes-security/refpolicy/refpolicy_2.20161023.inc
similarity index 91%
rename from recipes-security/refpolicy/refpolicy_2.20151208.inc
rename to recipes-security/refpolicy/refpolicy_2.20161023.inc
index ce90b13..f4dc0ba 100644
--- a/recipes-security/refpolicy/refpolicy_2.20151208.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20161023.inc
@@ -1,8 +1,8 @@
-SRC_URI = "https://raw.githubusercontent.com/wiki/TresysTechnology/refpolicy/files/refpolicy-${PV}.tar.bz2;"
-SRC_URI[md5sum] = "7b1ca12e9ea0254508391559cb8f2c41"
-SRC_URI[sha256sum] = "2dd2f45a7132137afe8302805c3b7839739759b9ab73dd1815c01afe34ac99de"
+SRC_URI = "https://raw.githubusercontent.com/wiki/TresysTechnology/refpolicy/files/refpolicy-${PV}-1.tar.bz2;"
+SRC_URI[md5sum] = "563c52896fdf5995afa49ca5b28314c7"
+SRC_URI[sha256sum] = "f056de551c17bbbd2775dfa63a94434538548c90ed1e0f0b6c2be6bf9b123e4f"
 
-FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-2.20151208:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-2.20161023:"
 
 # Fix file contexts for Poky
 SRC_URI += "file://poky-fc-subs_dist.patch \
-- 
2.11.0


