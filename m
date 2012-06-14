Return-Path: <darren@apps.dvhart.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8AD8E013A6
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 22:19:36 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so3951251pbb.35
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 22:19:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=It28uLEHW7l3k4k7VCzXf6/25TzDfuaRtYg2GcCyt+s=;
	b=ejpL5+fNRzplVa9Itpqy94IBvHNLXk1vEdS6/epHUuFkiE6MNuxF9l+5i55NvRbJe4
	KTl925OgywI1shYHCmG2qgbqWInrn/ph5lf0yjTyFJV+etH47jho4InWMoiaPV6YR8V3
	hl+jUM2daB7iQGF88qvCqlTQXjwEX9eX5v9UrJGZNQwmPbEqrPExqsQKVSMIiahtIscM
	7lS0K5S78oSTPKGiJit26R1JShlSnM5ePh/fL007XPsrwhBQ4q0uZ2w2P/D2ldi/uFl1
	1n2ryh+WJmK/S7zcaBYEx3UJCtazJ65kXNOOHa4vi1ATbLSBhOdSMIFxvZtjx4fd+9hO
	lx/g==
Received: by 10.68.242.162 with SMTP id wr2mr3765949pbc.125.1339651176342;
	Wed, 13 Jun 2012 22:19:36 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id sy3sm8245138pbc.18.2012.06.13.22.19.35
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 13 Jun 2012 22:19:35 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed, 13 Jun 2012 22:19:30 -0700
Message-Id: <cover.1339650859.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
X-Gm-Message-State: ALoCoQlVdDUs0QnTdmJpoLuQnYPB4oaZfG0GPnp2uw5RuxEk8eLM3/TT95zhfxv5GQ1wxvxCZBpQ
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [RFC PATCH 0/3] poky-tiny: Add tiny-init mechanism for poky-tiny distro
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
X-List-Received-Date: Thu, 14 Jun 2012 05:19:36 -0000

Provide a basic functional init mechanism for poky-tiny. This defines a new
"tiny" DISTRO_FEATURE in poky-tiny.conf, updates the busybox config based on
this DISTRO_FEATURE, and creates a new tiny-init recipe which is made the
default VIRTUAL-RUNTIME_init_manager for poky-tiny.

The busybox changes are for oe-core to avoide a bbappend in meta-yocto. That
one patch is CC'd to oe-core.


The following changes since commit 7f017cab0b3e4d5a4fc356eccd8eb8429b0531d0:

  connman: bump PR and add some comments (2012-06-13 13:11:23 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dvhart/tiny
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/tiny

Darren Hart (3):
  poky-tiny: Define the "tiny" DISTRO_FEATURE
  busybox: Add setsid and cttyhack for tiny DISTRO_FEATURE
  tiny-init: Basic init mechanism for poky-tiny

 meta-yocto/conf/distro/poky-tiny.conf              |    8 ++----
 meta-yocto/recipes-core/tiny-init/files/init       |   21 ++++++++++++++++
 .../recipes-core/tiny-init/files/rc.local.sample   |   23 +++++++++++++++++
 meta-yocto/recipes-core/tiny-init/tiny-init.bb     |   26 ++++++++++++++++++++
 meta/recipes-core/busybox/busybox.inc              |    2 +
 5 files changed, 75 insertions(+), 5 deletions(-)
 create mode 100644 meta-yocto/recipes-core/tiny-init/files/init
 create mode 100644 meta-yocto/recipes-core/tiny-init/files/rc.local.sample
 create mode 100644 meta-yocto/recipes-core/tiny-init/tiny-init.bb

-- 
1.7.5.4


