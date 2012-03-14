Return-Path: <darren@apps.dvhart.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98F44E0137C
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 11:57:03 -0700 (PDT)
Received: by iagw33 with SMTP id w33so3584690iag.35
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 11:57:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=gzhW99kjv1LBVRtgrhbE0bnUladO2AH8sxh2N5d8d8U=;
	b=M2Bvqi73aBcnG215JRbNhc/YaUQfUENKnOr1bl1dzMkPdETMWATMS3fsWBdWqNjgS1
	CT5n9+iNk1gtzXNUrhLGb4Lt9pVRGsxdeeSy8y0fkmHIUbMntQPbcHh6tI2NIwfMBxxf
	nShrKyC9f3OJ4GWXDEG9osoze2KzQge89M18X6eCvvQEZgurx+DoK+Mpplt2dC5Un1R5
	otG2mDTefxiAYX4EzG2wBAtbvFdNfUIUSmjdj8KSV1RmG4YmoA13iGQB2BChNRDyUM+T
	9XqEHfq4Zpan3GXq9L3fTz0r38cGLA+Q0VUiOC88na2PfLlrgPS8OI4EpEz5rn0ZNJCi
	BpJA==
Received: by 10.50.94.229 with SMTP id df5mr9953358igb.1.1331751422959;
	Wed, 14 Mar 2012 11:57:02 -0700 (PDT)
Received: from localhost (static-50-53-102-193.bvtn.or.frontiernet.net.
	[50.53.102.193])
	by mx.google.com with ESMTPS id md6sm3937465igc.0.2012.03.14.11.57.00
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 14 Mar 2012 11:57:01 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Wed, 14 Mar 2012 11:56:53 -0700
Message-Id: <cover.1331751319.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
X-Gm-Message-State: ALoCoQk1972eekm/5FPeRjXWx5eLSstNtAfOUzSyKRIoVpgoLvjAoMVEis5UjXR9s/rSPVpTBFY6
Subject: [PATCH 0/1][linux-yocto-3.2/meta] fri2 update
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
X-List-Received-Date: Wed, 14 Mar 2012 18:57:03 -0000

The following changes since commit 64840f55ee144e9814278eaa8e3f33dd60da892c:

  meta/emgd: emgd 1.10 updates (2012-03-12 11:48:22 -0400)

are available in the git repository at:
  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib dvhart/meta/fri2
  http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=dvhart/meta/fri2

Darren Hart (1):
  fri2: Update fri2.cfg for hardware specific support

 meta/cfg/kernel-cache/bsp/fri2/fri2.cfg |   16 ++++++++++++----
 1 files changed, 12 insertions(+), 4 deletions(-)

-- 
1.7.5.4


