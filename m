Return-Path: <darren@apps.dvhart.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B06DDE01304
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2012 07:44:55 -0700 (PDT)
Received: by dajx4 with SMTP id x4so736112daj.28
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2012 07:44:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=Y3O+9SIbXen1pXS5s6ZtEzs2SM1/QU0r40Whm6pbqzA=;
	b=OlGxg4fNBXLMAxWrP6eCvaxSmCDs2bTTVACSHUzGF92Esg/0K2N0U/oFW6rfTV02s4
	H027mL5QjmiSBReUIIbFkaSds/xwnjhzPF7Usj6Dfxh6xallQjL6B6X8Ycb3tpt/0JPx
	EMwzCfOTJmMRObspPc8EeVMfcm1hsvGkMQ5fBc43nSw9G0bGBwLs64vLrqyA7cSsOQ0Q
	unEDE1xlKJTOwOHJ7knP0XD4/hPHFoWS4FKObnrh/adLzwJF7B3Y5OV6iQMz3EAZTdho
	5Hk5ZWG7XICY8L39TZz5APWpdaybnTamI6VY4rEG1f4wXxaMaOk1yiKOgDOjuFjDIl5w
	cYwg==
Received: by 10.68.191.230 with SMTP id hb6mr6123899pbc.87.1333205095359;
	Sat, 31 Mar 2012 07:44:55 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id b4sm9828332pbc.7.2012.03.31.07.44.53
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 31 Mar 2012 07:44:53 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Sat, 31 Mar 2012 07:44:42 -0700
Message-Id: <cover.1333204567.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
X-Gm-Message-State: ALoCoQn5gAMBB76GPqK8JBQ073RQuk/0X8jIk/4y19Iog2EURJr6rJI3kSMoc1AdcuzuD60HtqBf
Subject: [PATCH 0/3][linux-yocto-3.2][meta] tiny: Refactor tiny ktype config
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 31 Mar 2012 14:44:55 -0000

Prepare for the linux-yocto-tiny_3.2 recipe by consolidating the tiny config
and factoring out what should be common functinionality.

Once included, I'll send the linux-yocto-tiny_3.2 patch against oe-core with
the proper SRCREV_meta. The other linux-yocto recipes don't need an updated
meta SRCREV necessarily.

The following changes since commit 867fc7a19f2ea74253d1f20c3d61b7829635175b:

  common-pc: Add PCNET32 to the config (2012-03-26 09:49:06 -0400)

are available in the git repository at:
  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib dvhart/meta/tiny
  http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=dvhart/meta/tiny

Darren Hart (3):
  meta: common-pc add dependencies to cfg
  tiny: Minimize the tiny config
  meta: Add common-pc-tiny.scc

 .../kernel-cache/bsp/common-pc/common-pc-tiny.scc  |   12 +
 meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg  |   13 +-
 .../tiny/serial.cfg => cfg/serial-8250.cfg}        |    0
 meta/cfg/kernel-cache/ktypes/tiny/debug.cfg        |    5 -
 meta/cfg/kernel-cache/ktypes/tiny/devtmpfs.cfg     |    6 -
 meta/cfg/kernel-cache/ktypes/tiny/ext2.cfg         |    1 -
 meta/cfg/kernel-cache/ktypes/tiny/ext3.cfg         |    2 -
 meta/cfg/kernel-cache/ktypes/tiny/fb.cfg           |   16 -
 meta/cfg/kernel-cache/ktypes/tiny/lzma.cfg         |    3 -
 meta/cfg/kernel-cache/ktypes/tiny/net.cfg          |   26 -
 meta/cfg/kernel-cache/ktypes/tiny/rtc-pc.cfg       |   13 -
 meta/cfg/kernel-cache/ktypes/tiny/smp.cfg          |    7 -
 meta/cfg/kernel-cache/ktypes/tiny/sysfs.cfg        |    2 -
 meta/cfg/kernel-cache/ktypes/tiny/tiny.cfg         |  613 +-------------------
 meta/cfg/kernel-cache/ktypes/tiny/tiny.scc         |   17 +-
 meta/cfg/kernel-cache/ktypes/tiny/vt.cfg           |    5 -
 .../ktypes/tiny/{core.cfg => yocto.cfg}            |   23 +-
 17 files changed, 63 insertions(+), 701 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/common-pc/common-pc-tiny.scc
 rename meta/cfg/kernel-cache/{ktypes/tiny/serial.cfg => cfg/serial-8250.cfg} (100%)
 delete mode 100644 meta/cfg/kernel-cache/ktypes/tiny/debug.cfg
 delete mode 100644 meta/cfg/kernel-cache/ktypes/tiny/devtmpfs.cfg
 delete mode 100644 meta/cfg/kernel-cache/ktypes/tiny/ext2.cfg
 delete mode 100644 meta/cfg/kernel-cache/ktypes/tiny/ext3.cfg
 delete mode 100644 meta/cfg/kernel-cache/ktypes/tiny/fb.cfg
 delete mode 100644 meta/cfg/kernel-cache/ktypes/tiny/lzma.cfg
 delete mode 100644 meta/cfg/kernel-cache/ktypes/tiny/net.cfg
 delete mode 100644 meta/cfg/kernel-cache/ktypes/tiny/rtc-pc.cfg
 delete mode 100644 meta/cfg/kernel-cache/ktypes/tiny/smp.cfg
 delete mode 100644 meta/cfg/kernel-cache/ktypes/tiny/sysfs.cfg
 delete mode 100644 meta/cfg/kernel-cache/ktypes/tiny/vt.cfg
 rename meta/cfg/kernel-cache/ktypes/tiny/{core.cfg => yocto.cfg} (49%)

-- 
1.7.5.4


