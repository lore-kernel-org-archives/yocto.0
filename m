Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91874E013D6
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2013 16:10:57 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Oct 2013 16:10:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1036,1371106800"; d="scan'208";a="411747434"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.174])
	by fmsmga002.fm.intel.com with ESMTP; 04 Oct 2013 16:09:22 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sat,  5 Oct 2013 00:09:13 +0100
Message-Id: <cover.1380928084.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [meta-baryon][PATCH 0/6] Remove unneeded recipes
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
X-List-Received-Date: Fri, 04 Oct 2013 23:11:04 -0000

Remove recipes that are no longer needed (mostly due to the removal of
ffmpeg.)


The following changes since commit 39866861a66d62aada6c0dae07521aedb6fe2d35:

  samba: fix QA error due to volatiles presence (2013-09-23 14:01:41 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/baryon-cleanup
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/baryon-cleanup

Paul Eggleton (6):
  faad2: remove
  libgsm: remove
  faac: remove
  schroedinger: remove
  orc: remove
  netperf: remove

 .../netperf/netperf-2.4.4/cpu_set.patch            |  32 ----
 recipes-connectivity/netperf/netperf-2.4.4/init    |  51 -------
 .../netperf/netperf-2.4.4/vfork.patch              |  35 -----
 recipes-connectivity/netperf/netperf_2.4.4.bb      |  46 ------
 recipes-multimedia/faac/faac_1.24.bb               |  24 ---
 recipes-multimedia/faad2/faad2_2.7.bb              |  28 ----
 .../libgsm/libgsm-1.0.12/01_makefile.patch         |  82 -----------
 .../libgsm/libgsm-1.0.12/02_cplusplus.patch        |  33 -----
 .../libgsm/libgsm-1.0.12/03_config.patch           | 162 ---------------------
 .../libgsm/libgsm-1.0.12/04_includes.patch         |  51 -------
 .../libgsm-1.0.12/05_compiler_warnings.patch       | 106 --------------
 recipes-multimedia/libgsm/libgsm_1.0.12.bb         |  40 -----
 recipes-multimedia/orc/orc.inc                     |  23 ---
 recipes-multimedia/orc/orc_0.4.5.bb                |   7 -
 .../schroedinger/files/configure.ac.patch          |  21 ---
 recipes-multimedia/schroedinger/schroedinger.inc   |  21 ---
 .../schroedinger/schroedinger_1.0.9.bb             |  15 --
 17 files changed, 777 deletions(-)
 delete mode 100644 recipes-connectivity/netperf/netperf-2.4.4/cpu_set.patch
 delete mode 100644 recipes-connectivity/netperf/netperf-2.4.4/init
 delete mode 100755 recipes-connectivity/netperf/netperf-2.4.4/vfork.patch
 delete mode 100644 recipes-connectivity/netperf/netperf_2.4.4.bb
 delete mode 100644 recipes-multimedia/faac/faac_1.24.bb
 delete mode 100644 recipes-multimedia/faad2/faad2_2.7.bb
 delete mode 100644 recipes-multimedia/libgsm/libgsm-1.0.12/01_makefile.patch
 delete mode 100644 recipes-multimedia/libgsm/libgsm-1.0.12/02_cplusplus.patch
 delete mode 100644 recipes-multimedia/libgsm/libgsm-1.0.12/03_config.patch
 delete mode 100644 recipes-multimedia/libgsm/libgsm-1.0.12/04_includes.patch
 delete mode 100644 recipes-multimedia/libgsm/libgsm-1.0.12/05_compiler_warnings.patch
 delete mode 100644 recipes-multimedia/libgsm/libgsm_1.0.12.bb
 delete mode 100644 recipes-multimedia/orc/orc.inc
 delete mode 100644 recipes-multimedia/orc/orc_0.4.5.bb
 delete mode 100644 recipes-multimedia/schroedinger/files/configure.ac.patch
 delete mode 100644 recipes-multimedia/schroedinger/schroedinger.inc
 delete mode 100644 recipes-multimedia/schroedinger/schroedinger_1.0.9.bb

-- 
1.8.1.2


