Return-Path: <darren@apps.dvhart.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA34CE0138D
	for <yocto@yoctoproject.org>; Sun,  1 Apr 2012 00:23:33 -0700 (PDT)
Received: by dajx4 with SMTP id x4so1345600daj.28
	for <yocto@yoctoproject.org>; Sun, 01 Apr 2012 00:23:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=KDlWqf0WuNkPb2ulg26zylbDlYVuTx/700U8g5zB3+s=;
	b=ci+olVvD2KOvglKUvk54Jb337VP5Y+yN7R+R9n4zjGQXt0A2Ytuc4BAW7yfkf+qhPE
	tYRH8Qw48buJPC5yzOcSmuBBzqlgEdopvPhaQfdR0p0n4eSobCQHeYTSntbk4O7IroPV
	z5IGcB6kqLE31FPyGZhnwLG4Df/193T+0I+D7IVMPsNcthUC4dsIgvk4vGkWS29GN3KD
	5EmwZGdxSKf81utltoX5y0aPs7sys2r2m1pePul+fKnMEsf37UjSW2XelbX/JRiQ12kL
	puSZYcgmk/1aR6fmI9FNJi+BgCXgpxivPF99ZNFcTm+sBcoZGDcBMW3xLkptSNI4Puau
	Zynw==
Received: by 10.68.131.74 with SMTP id ok10mr5481048pbb.95.1333265013145;
	Sun, 01 Apr 2012 00:23:33 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id i5sm11335995pbf.19.2012.04.01.00.23.31
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 01 Apr 2012 00:23:32 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Sun,  1 Apr 2012 00:23:23 -0700
Message-Id: <cover.1333264933.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
X-Gm-Message-State: ALoCoQki2V2QoSAr7Xwu2CCmY3tNEielEIC4h6LWeRKvFvBjEleVrN2+aPmD1nknqEw4dEfyNqAS
Subject: [PATCH 0/1] linux-yocto-tiny: Prefer 3.2
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
X-List-Received-Date: Sun, 01 Apr 2012 07:23:33 -0000

The following changes since commit 140cb7973365f747f1a1c831ba3e160a9b9eb19c:

  tiny: Update linux-yocto-tiny to 3.2 (2012-04-01 00:16:00 -0700)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dvhart/tiny
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/tiny

Darren Hart (1):
  linux-yocto-tiny: Prefer 3.2

 meta-yocto/conf/distro/poky-tiny.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

-- 
1.7.5.4


