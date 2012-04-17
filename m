Return-Path: <darren@apps.dvhart.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 411B3E01206
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 18:06:11 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so8984484pbb.35
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 18:06:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=Qx3ySK48himx+7rqogR+FTiN45q/UIZC7FKMETSxTbY=;
	b=jLUGzHJOeBcVbUq6fnXsrvw/28vIhXjn7K753MsJ7ql4P6sayLVBVssc2sP6sutztV
	+pZHyNMwaH+bx3gAMsEmN51KxIimXh5R7RAO05BMhd3Q33H/LYPUwBiJ3z9Nq5i4GMSX
	3DeIZQC4UvSMwl91GS1QDOTr2dUUZTbCrB5ElOAeKWv8fjQnqZrH5dj68zb4i1Jzt8Rl
	B4Ue0KKRjKrKf/NJBMtD5PQv6cem4/iPZkg7vjoEsO3Ba0lulEmco1QOA9SwrbnZ8PgD
	L4RnFN00fVFCfoihgDD3+HyNSpccgEmS7L90h8IikaYzgZ2yCMRhMkWJfNUZ8cbK+jkb
	xpJg==
Received: by 10.68.219.34 with SMTP id pl2mr31903295pbc.56.1334624771533;
	Mon, 16 Apr 2012 18:06:11 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id d4sm19155690pbe.36.2012.04.16.18.06.09
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 16 Apr 2012 18:06:10 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Mon, 16 Apr 2012 18:06:04 -0700
Message-Id: <cover.1334624662.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
X-Gm-Message-State: ALoCoQkIf6sehbxTCAxgpolxZNsOE/X+v2rMxve7g79r14cDdQVtugatT+JXOFkuL9+Cm31ukLCA
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/1] [1.2] poky-tiny: Separate the libc features required for meta-toolchain
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
X-List-Received-Date: Tue, 17 Apr 2012 01:06:12 -0000

This addresses [YOCTO #2295], in which the meta-toolchain target would fail for
the poky-tiny DISTRO definition due to its reduced libc feature set. This is not
an optimal solution as it significantly increases the size of the C libraries
(by 461KB). However, by making the features easily removed, those looking for
truly tiny libc configurations can easily revert to the smaller set. Out of the
box, we want poky-tiny to be able to build meta-toolchain.

In the future, we need to address WHY meta-toolchain cannot be built without
these features and look at how to reduce the impact of meta-toolchain on the
target eglibc build.

The following changes since commit c936fca6e163bc19bc08cbd0036b31ca6f6c3ed6:

  bitbake.conf: Add PARALLEL_MAKE to BB_HASHBASE_WHITELIST (2012-04-16 23:37:45 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dvhart/tiny
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/tiny

Darren Hart (1):
  poky-tiny: Separate the libc features required for meta-toolchain

 meta-yocto/conf/distro/poky-tiny.conf |   18 ++++++++++++------
 1 files changed, 12 insertions(+), 6 deletions(-)

-- 
1.7.5.4


