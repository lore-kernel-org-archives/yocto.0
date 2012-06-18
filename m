Return-Path: <darren@apps.dvhart.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A48FE00746
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 13:18:22 -0700 (PDT)
Received: by dadz8 with SMTP id z8so8948301dad.35
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 13:18:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=BUnFjpxSrpSgJDvz7HgafsmX/i79xB44AAPMDq0gnLI=;
	b=S01TaUJGGgf+XHzemQle8qJIR3YaXYaaTjJotxbUWTPzPxN3Qvzb2BXVFet8y0aWGT
	mnrYuNANYcLLCjg5s0NUHGudhwMkfQXHxTAfXtCrRU6IAvYg40/QXVblh5P4Ika99WYt
	1SEuqVqggULrzgyRmcn2NH502jIn3z3BDmMGkOXgO7yECa64A3vCoY2CLq1oEnEftzL1
	RlWWESR6QRNBYn5c2yw7hsVVj7i6ECC6vx4jLKHnRICLd6DooYLXwlFEo2Q0TSsFM9qE
	VLwRzKxbQXYAxWEmi5R2XGJNYY096ySzw2L5ePWDA+d8YuDx3FlU/UKGzdAvxqLtW0JY
	/syw==
Received: by 10.68.201.9 with SMTP id jw9mr55972808pbc.28.1340050702644;
	Mon, 18 Jun 2012 13:18:22 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id qp9sm7450867pbc.9.2012.06.18.13.18.21
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 18 Jun 2012 13:18:21 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Mon, 18 Jun 2012 13:18:19 -0700
Message-Id: <cover.1340050502.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
X-Gm-Message-State: ALoCoQlP2w8cH6R9fJvr/4UxGxzhsqK664tPSSzGsg8x1jzD61gPs/Ky4PDgWF+pf+TVHECJnZGW
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Phil Blundell <philb@gnu.org>, Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/2] [meta-yocto] poky-tiny: busybox bbappend and tiny-init
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
X-List-Received-Date: Mon, 18 Jun 2012 20:18:23 -0000

Fix job control in the root shell on poky-tiny images by adding SETSID and
CTTYHACK support to busybox and providing a simple tiny-init startup script.

The following changes since commit e0a70547069fe7e8a2d6bdaffc985fb172d46c31:

  perl: Allow perl to cross build and native build in a directory named "t" (2012-06-18 17:33:04 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dvhart/tiny
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/tiny

Darren Hart (2):
  busybox: Introduce poky-tiny defconfig override
  tiny-init: Basic init mechanism for poky-tiny

 meta-yocto/conf/distro/poky-tiny.conf              |    2 +-
 .../busybox/busybox-1.19.4/poky-tiny/defconfig     | 1009 ++++++++++++++++++++
 .../recipes-core/busybox/busybox_1.19.4.bbappend   |    2 +
 meta-yocto/recipes-core/tiny-init/files/init       |   21 +
 .../recipes-core/tiny-init/files/rc.local.sample   |   23 +
 meta-yocto/recipes-core/tiny-init/tiny-init.bb     |   26 +
 6 files changed, 1082 insertions(+), 1 deletions(-)
 create mode 100644 meta-yocto/recipes-core/busybox/busybox-1.19.4/poky-tiny/defconfig
 create mode 100644 meta-yocto/recipes-core/busybox/busybox_1.19.4.bbappend
 create mode 100644 meta-yocto/recipes-core/tiny-init/files/init
 create mode 100644 meta-yocto/recipes-core/tiny-init/files/rc.local.sample
 create mode 100644 meta-yocto/recipes-core/tiny-init/tiny-init.bb

-- 
1.7.5.4


