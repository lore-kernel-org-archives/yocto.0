Return-Path: <darren@apps.dvhart.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64F12E0137C
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 12:05:56 -0700 (PDT)
Received: by eeke49 with SMTP id e49so1515667eek.35
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 12:05:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=s9mgO0mbCHpMB19/4YdGzwoqPThLcQbblGHuq6NC0J8=;
	b=QNzhOBwrisE2N5H+8hKYVcPMc5MV3lpwzAOTY6tAv60e+YB9GcCpabl0/h6/ZfDc1t
	qmvY6zAqWh1TCwfS4rVOFihYNqLI/VHsRa/uaUA/vvfowrrC+YLSJe/FdIRm5TCAYHG8
	dtSsrgTfsyxRezhIIloy09CUX6cM+MWPbbuppokEI9kVk4o56gbPRL1kjqXghU8Abw6P
	eCPBXJ6a9r8wYV8dMOOfsPbv+UO34Amepxw5QI7rZS9XFY+Lm8Be+hXg+Didk5jggRjZ
	4Sf7u6t4feDx6R/yXD+0lH2YzEBd0iTcsQ/bRmqRobT9MU+3hm/DkjPCVxxv4yTs1TOB
	pkTA==
Received: by 10.50.160.196 with SMTP id xm4mr6506840igb.24.1331751954578;
	Wed, 14 Mar 2012 12:05:54 -0700 (PDT)
Received: from localhost (static-50-53-102-193.bvtn.or.frontiernet.net.
	[50.53.102.193])
	by mx.google.com with ESMTPS id ko6sm14880939igc.2.2012.03.14.12.05.52
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 14 Mar 2012 12:05:52 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed, 14 Mar 2012 12:05:46 -0700
Message-Id: <cover.1331751494.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
X-Gm-Message-State: ALoCoQmqrSDgXqXi09CLV/QaJYZVJmZ3qU+VXjonolnQl0MzBefg6Ojks+Rf/rckSitSG4f9CdDq
Subject: [PATCH 0/1][linux-yocto-3.0/meta] fri2 update
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
X-List-Received-Date: Wed, 14 Mar 2012 19:05:56 -0000

The following changes since commit e559129b4a6f39f68b75141096b2d516cf7a7f35:

  fri2: Add SMP and EFI support (2012-03-02 16:02:35 -0500)

are available in the git repository at:
  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib dvhart/3.0/meta/fri2
  http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=dvhart/3.0/meta/fri2

Darren Hart (1):
  fri2: Update fri2.cfg for hardware specific support

 meta/cfg/kernel-cache/bsp/fri2/fri2.cfg |   16 ++++++++++++----
 1 files changed, 12 insertions(+), 4 deletions(-)

-- 
1.7.5.4


