Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1B2BE0070B
	for <yocto@yoctoproject.org>; Wed, 30 May 2012 08:31:33 -0700 (PDT)
Received: from mail-wi0-f178.google.com ([209.85.212.178])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 30 May 2012 08:31:33 -0700
Received: by wibhn6 with SMTP id hn6so3191097wib.13
	for <yocto@yoctoproject.org>; Wed, 30 May 2012 08:31:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=yFmXxAAW+C4H/4n1RtaQlsZMrhXtkoM8pdSicL2ttOo=;
	b=E2Sn3TKlOaBHNV4Zclx0oIlL6UQmh4SxBdbipc9hfFPlFl7EtuGAybE2sX7n86+dMr
	e4+AArz3VmCxLaU2r9G4DObvYN1Var71nSUNqF9WUxGpnldW3lu5VQi5HrKNd+lUF6YT
	ppuvrO9qv5QJIYi/EhEuev68OTEHbutBxasjgs5whWUBjnP1Pwuc8MKU6tIZ7xT2bJQs
	+XDxRKmLNL6cTRJfs+vRU7ZjkL/+9LL8xCVDE6e3ifhjAbohF3IF77VPmyXo+O03Sw2j
	Yw2/FD/gEyd7b/+YDmMqGYz5Xii2yNtl01Q3t6w179sJIxUyUwjTI3jPo+iLHUZQmF3N
	qo8A==
Received: by 10.216.226.32 with SMTP id a32mr10313349weq.190.1338391891101;
	Wed, 30 May 2012 08:31:31 -0700 (PDT)
Received: from localhost.localdomain (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id
	gc6sm34055306wib.0.2012.05.30.08.31.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 30 May 2012 08:31:30 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 30 May 2012 16:29:45 +0100
Message-Id: <cover.1338390959.git.ross.burton@intel.com>
X-Mailer: git-send-email 1.7.7.6
X-Gm-Message-State: ALoCoQnmMf5LczxpzRP29vh2DKbVw0/GcSUx/rrnBmIdJgHl1VaUbPSCiG4CtFLwy01TLDRfMmiM
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/1] [1.1.2] Fix syslinux on kernel 3.3
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
X-List-Received-Date: Wed, 30 May 2012 15:31:34 -0000

Backporting a patch from master that fixes building syslinux on kernel 3.3.

The following changes since commit 1cdea4cf5f8ec8b32aa406b1767338a11618dba5:

  syslinux: Avoid using linux.ext2_fs.h if possible (2012-05-28 12:29:04 +0100)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib ross/edison-2236
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=ross/edison-2236

Darren Hart (1):
  syslinux: Avoid using linux.ext2_fs.h if possible

 .../libinstaller-Avoid-using-linux-ext2_fs.h.patch |  975 ++++++++++++++++++++
 meta/recipes-devtools/syslinux/syslinux_4.03.bb    |    5 +-
 2 files changed, 978 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-devtools/syslinux/files/libinstaller-Avoid-using-linux-ext2_fs.h.patch

-- 
1.7.7.6


