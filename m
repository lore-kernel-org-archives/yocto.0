Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 860BFE00C1A; Tue, 12 Sep 2017 19:43:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AE37E00BB7
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 19:43:03 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v8D2h2PD007834
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 12 Sep 2017 19:43:03 -0700 (PDT)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 12 Sep 2017 19:43:01 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@windriver.com>,
	<Joe_MacDonald@mentor.com>
Date: Tue, 12 Sep 2017 19:42:42 -0700
Message-ID: <cover.1505270194.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
MIME-Version: 1.0
Subject: [PATCH 00/20 V2] selinux: uprev to 2.7 (20170804)
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
X-List-Received-Date: Wed, 13 Sep 2017 02:43:05 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

V2 changes:
* fix incorrect 'Subject' in patches
* apply patches base on mgh/master-next:
  - drop applied patch: refpolicy: fix a typo in RDEPENDS

The following changes since commit ae9553c0d22bc079947aa31170dbe096b20f9de6:

  systemd: Remove inherit enable-selinux, obsolete (2017-09-08 13:23:20 -0500)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib wenzong/mgh-master-next
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/mgh-master-next

Wenzong Fan (20):
  selinux: uprev include file to 20170804
  libsepol: uprev to 2.7 (20170804)
  libselinux: uprev to 2.7 (20170804)
  libsemanage: uprev to 2.7 (20170804)
  checkpolicy: uprev to 2.7 (20170804)
  secilc: uprev to 2.7 (20170804)
  policycoreutils: uprev to 2.7 (20170804)
  sepolgen: remove package
  mcstrans: add package 2.7 (20170804)
  restorecond: add package 2.7 (20170804)
  selinux-sandbox: add package 2.7 (20170804)
  selinux-python: add package 2.7 (20170804)
  semodule-utils: add package 2.7 (20170804)
  selinux-dbus: add package 2.7 (20170804)
  selinux-gui: add package 2.7 (20170804)
  policycoreutils: fixes for 2.7 uprev
  refpolicy_common: depends on semodule-utils-native
  setools: uprev to 4.1.1
  packagegroup-*: sync package names
  selinux-python: add setools to RDEPENDS

 .../packagegroups/packagegroup-core-selinux.bb     |   2 +-
 .../packagegroup-selinux-policycoreutils.bb        |  25 +-
 recipes-security/refpolicy/refpolicy_common.inc    |   2 +-
 recipes-security/selinux/checkpolicy.inc           |   3 +-
 .../checkpolicy-Do-not-link-against-libfl.patch    |  46 ---
 recipes-security/selinux/checkpolicy_2.6.bb        |   7 -
 recipes-security/selinux/checkpolicy_2.7.bb        |   7 +
 recipes-security/selinux/libselinux.inc            |   3 +-
 .../{libselinux_2.6.bb => libselinux_2.7.bb}       |   6 +-
 recipes-security/selinux/libsemanage.inc           |   2 +
 ...anage-simplify-string-utilities-functions.patch | 115 --------
 ...-add-semanage_str_replace-utility-functio.patch | 164 -----------
 ...manage-genhomedircon-drop-ustr-dependency.patch | 323 ---------------------
 ...-remove-ustr-library-from-Makefiles-READM.patch |  61 ----
 ...ibsemanage-allow-to-disable-audit-support.patch |  68 +++--
 .../libsemanage-fix-path-len-limit.patch           |  28 --
 .../{libsemanage_2.6.bb => libsemanage_2.7.bb}     |  11 +-
 .../selinux/{libsepol_2.6.bb => libsepol_2.7.bb}   |   6 +-
 recipes-security/selinux/mcstrans.inc              |  49 ++++
 .../0001-mcstrans-fix-the-init-script.patch        |   9 +-
 .../selinux/mcstrans/mcstrans-de-bashify.patch     |  26 ++
 recipes-security/selinux/mcstrans_2.7.bb           |   7 +
 recipes-security/selinux/policycoreutils.inc       | 195 +------------
 .../selinux/policycoreutils/enable-mcstrans.patch  |  17 --
 .../policycoreutils/mcstrans-de-bashify.patch      |  12 -
 .../policycoreutils-fixfiles-de-bashify.patch      |  53 ++--
 .../policycoreutils-fts_flags-FTS_NOCHDIR.patch    |  25 --
 recipes-security/selinux/policycoreutils_2.6.bb    |  17 --
 recipes-security/selinux/policycoreutils_2.7.bb    |   8 +
 recipes-security/selinux/restorecond.inc           |  28 ++
 .../policycoreutils-make-O_CLOEXEC-optional.patch  |   8 +-
 recipes-security/selinux/restorecond_2.7.bb        |   7 +
 recipes-security/selinux/secilc_2.6.bb             |   7 -
 recipes-security/selinux/secilc_2.7.bb             |   7 +
 recipes-security/selinux/selinux-dbus.inc          |  14 +
 recipes-security/selinux/selinux-dbus_2.7.bb       |   7 +
 recipes-security/selinux/selinux-gui.inc           |  15 +
 recipes-security/selinux/selinux-gui_2.7.bb        |   7 +
 recipes-security/selinux/selinux-python.inc        | 107 +++++++
 .../fix-TypeError-for-seobject.py.patch}           |   0
 .../fix-sepolicy-install-path.patch}               |   0
 ...process-ValueError-for-sepolicy-seobject.patch} |   0
 recipes-security/selinux/selinux-python_2.7.bb     |   7 +
 recipes-security/selinux/selinux-sandbox.inc       |  28 ++
 .../sandbox-de-bashify.patch}                      |  13 +-
 recipes-security/selinux/selinux-sandbox_2.7.bb    |   7 +
 .../{selinux_20161014.inc => selinux_20170804.inc} |   2 +-
 recipes-security/selinux/semodule-utils.inc        |  27 ++
 recipes-security/selinux/semodule-utils_2.7.bb     |   7 +
 recipes-security/selinux/sepolgen.inc              |  34 ---
 recipes-security/selinux/sepolgen_2.6.bb           |   7 -
 recipes-security/selinux/sepolgen_git.bb           |   7 -
 ...-Don-t-check-selinux-policies-if-disabled.patch |  25 --
 .../setools-Fix-man-pages-and-getoptions.patch     |  80 -----
 .../setools-Fix-output-to-match-policy-lines.patch |  36 ---
 ...-Fix-python-setools-Makefile.am-for-cross.patch |  33 ---
 ...-sepol-calls-to-work-with-latest-libsepol.patch |  36 ---
 .../setools-Fix-test-bug-for-unary-operator.patch  |  25 --
 .../setools/setools-Remove-unused-variables.patch  | 279 ------------------
 ...s-Update-for-2015-02-02-Userspace-release.patch | 114 --------
 .../setools/setools/setools-configure-ac.patch     | 107 -------
 .../setools-configure-with-latest-libsepol.patch   |  33 ---
 .../setools/setools/setools-cross-ar.patch         |  17 --
 .../setools-neverallow-rules-all-always-fail.patch |  31 --
 ...ols-seinfo-should-exit-with-correct-errno.patch | 134 ---------
 recipes-security/setools/setools/setools.pam       |   4 -
 ...x-cross-compiling-errors-for-powerpc-mips.patch |  35 +++
 .../setools4-fixes-for-cross-compiling.patch       |  40 +++
 recipes-security/setools/setools_3.3.8.bb          | 103 -------
 recipes-security/setools/setools_4.1.1.bb          |  35 +++
 70 files changed, 588 insertions(+), 2222 deletions(-)
 delete mode 100644 recipes-security/selinux/checkpolicy/checkpolicy-Do-not-link-against-libfl.patch
 delete mode 100644 recipes-security/selinux/checkpolicy_2.6.bb
 create mode 100644 recipes-security/selinux/checkpolicy_2.7.bb
 rename recipes-security/selinux/{libselinux_2.6.bb => libselinux_2.7.bb} (72%)
 delete mode 100644 recipes-security/selinux/libsemanage/0001-libsemanage-simplify-string-utilities-functions.patch
 delete mode 100644 recipes-security/selinux/libsemanage/0002-libsemanage-add-semanage_str_replace-utility-functio.patch
 delete mode 100644 recipes-security/selinux/libsemanage/0003-libsemanage-genhomedircon-drop-ustr-dependency.patch
 delete mode 100644 recipes-security/selinux/libsemanage/0004-libsemanage-remove-ustr-library-from-Makefiles-READM.patch
 delete mode 100644 recipes-security/selinux/libsemanage/libsemanage-fix-path-len-limit.patch
 rename recipes-security/selinux/{libsemanage_2.6.bb => libsemanage_2.7.bb} (50%)
 rename recipes-security/selinux/{libsepol_2.6.bb => libsepol_2.7.bb} (49%)
 create mode 100644 recipes-security/selinux/mcstrans.inc
 rename recipes-security/selinux/{policycoreutils => mcstrans}/0001-mcstrans-fix-the-init-script.patch (74%)
 create mode 100644 recipes-security/selinux/mcstrans/mcstrans-de-bashify.patch
 create mode 100644 recipes-security/selinux/mcstrans_2.7.bb
 delete mode 100644 recipes-security/selinux/policycoreutils/enable-mcstrans.patch
 delete mode 100644 recipes-security/selinux/policycoreutils/mcstrans-de-bashify.patch
 delete mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-fts_flags-FTS_NOCHDIR.patch
 delete mode 100644 recipes-security/selinux/policycoreutils_2.6.bb
 create mode 100644 recipes-security/selinux/policycoreutils_2.7.bb
 create mode 100644 recipes-security/selinux/restorecond.inc
 rename recipes-security/selinux/{policycoreutils => restorecond}/policycoreutils-make-O_CLOEXEC-optional.patch (90%)
 create mode 100644 recipes-security/selinux/restorecond_2.7.bb
 delete mode 100644 recipes-security/selinux/secilc_2.6.bb
 create mode 100644 recipes-security/selinux/secilc_2.7.bb
 create mode 100644 recipes-security/selinux/selinux-dbus.inc
 create mode 100644 recipes-security/selinux/selinux-dbus_2.7.bb
 create mode 100644 recipes-security/selinux/selinux-gui.inc
 create mode 100644 recipes-security/selinux/selinux-gui_2.7.bb
 create mode 100644 recipes-security/selinux/selinux-python.inc
 rename recipes-security/selinux/{policycoreutils/policycoreutils-fix-TypeError-for-seobject.py.patch => selinux-python/fix-TypeError-for-seobject.py.patch} (100%)
 rename recipes-security/selinux/{policycoreutils/policycoreutils-fix-sepolicy-install-path.patch => selinux-python/fix-sepolicy-install-path.patch} (100%)
 rename recipes-security/selinux/{policycoreutils/policycoreutils-process-ValueError-for-sepolicy-seobject.patch => selinux-python/process-ValueError-for-sepolicy-seobject.patch} (100%)
 create mode 100644 recipes-security/selinux/selinux-python_2.7.bb
 create mode 100644 recipes-security/selinux/selinux-sandbox.inc
 rename recipes-security/selinux/{policycoreutils/policycoreutils-sandbox-de-bashify.patch => selinux-sandbox/sandbox-de-bashify.patch} (79%)
 create mode 100644 recipes-security/selinux/selinux-sandbox_2.7.bb
 rename recipes-security/selinux/{selinux_20161014.inc => selinux_20170804.inc} (84%)
 create mode 100644 recipes-security/selinux/semodule-utils.inc
 create mode 100644 recipes-security/selinux/semodule-utils_2.7.bb
 delete mode 100644 recipes-security/selinux/sepolgen.inc
 delete mode 100644 recipes-security/selinux/sepolgen_2.6.bb
 delete mode 100644 recipes-security/selinux/sepolgen_git.bb
 delete mode 100644 recipes-security/setools/setools/setools-Don-t-check-selinux-policies-if-disabled.patch
 delete mode 100644 recipes-security/setools/setools/setools-Fix-man-pages-and-getoptions.patch
 delete mode 100644 recipes-security/setools/setools/setools-Fix-output-to-match-policy-lines.patch
 delete mode 100644 recipes-security/setools/setools/setools-Fix-python-setools-Makefile.am-for-cross.patch
 delete mode 100644 recipes-security/setools/setools/setools-Fix-sepol-calls-to-work-with-latest-libsepol.patch
 delete mode 100644 recipes-security/setools/setools/setools-Fix-test-bug-for-unary-operator.patch
 delete mode 100644 recipes-security/setools/setools/setools-Remove-unused-variables.patch
 delete mode 100644 recipes-security/setools/setools/setools-Update-for-2015-02-02-Userspace-release.patch
 delete mode 100644 recipes-security/setools/setools/setools-configure-ac.patch
 delete mode 100644 recipes-security/setools/setools/setools-configure-with-latest-libsepol.patch
 delete mode 100644 recipes-security/setools/setools/setools-cross-ar.patch
 delete mode 100644 recipes-security/setools/setools/setools-neverallow-rules-all-always-fail.patch
 delete mode 100644 recipes-security/setools/setools/setools-seinfo-should-exit-with-correct-errno.patch
 delete mode 100644 recipes-security/setools/setools/setools.pam
 create mode 100644 recipes-security/setools/setools/setools4-fix-cross-compiling-errors-for-powerpc-mips.patch
 create mode 100644 recipes-security/setools/setools/setools4-fixes-for-cross-compiling.patch
 delete mode 100644 recipes-security/setools/setools_3.3.8.bb
 create mode 100644 recipes-security/setools/setools_4.1.1.bb

-- 
2.13.0


