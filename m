Return-Path: <darren@apps.dvhart.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 398B9E0044D
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 14:09:57 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so2500729pbb.35
	for <yocto@yoctoproject.org>; Thu, 05 Apr 2012 14:09:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=6Y6mrDwfzabNuIuV+k91UYFANbnmuSt3Fqzvxlnw1kA=;
	b=jKgAT3ilzUM9dPu0DE3ptLR/W8dRM9iNcBjUIJ34jtpza6vfAw9LXH43SIXFfBKgN/
	bHg/84EzZA8KguRuaf6OxStGSEf7K6O8Y1VJAOslWM1zaKHgu4toxrkp4cwwU0ngCU9D
	/My/iuwQ9iZTz1sMUtaACby5jjGDWNqdSIXz8dOYhjkbM0aarygCoqYuxN+3law5sb40
	rWqD02778uFNl6XaB/Ui8qWp3HrmdjS385PWJZD5+1OmjezAAtN1FJroDnIvN2SEBz/r
	vk5/vT8WymFEi2Nuis0ESkgfWKqVhMRov5q8Ank6FtCaozlZ7rqU65olzlzevRizLwnl
	XjPg==
Received: by 10.68.213.137 with SMTP id ns9mr5917094pbc.95.1333660197682;
	Thu, 05 Apr 2012 14:09:57 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id z5sm4220170pbn.35.2012.04.05.14.09.56
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 05 Apr 2012 14:09:56 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	josh@linux.intel.com
Date: Thu,  5 Apr 2012 14:09:45 -0700
Message-Id: <cover.1333660034.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
X-Gm-Message-State: ALoCoQmc7e3gJqH8bXQB+OEUbSKSkCN3zEOl6rx2aJEZG7xJUPp+rfwPSH7mDG4CYaeLWL09fISF
Subject: [PATCH 0/4][edison] Fix bootimg bug 2138 for 1.1.2
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
X-List-Received-Date: Thu, 05 Apr 2012 21:09:58 -0000

Backport the following patches to edison. The backport involves massaging
this minimal set of patches to apply to bootimg.bbclass without pulling
in the refactoring or EFI support added in master about the same time.

These patches have been tested by building atom-pc core-image-minimal with
edison, a dosfsck and mount test on resulting image, and booting on the n450.

The following changes since commit 0fbd6a161576b2cafa8583adde0ffb15347c884a:

  poky.conf: Bumping SKD_VERSION (2012-03-14 15:49:33 -0700)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dvhart/edison/bug/2138
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/edison/bug/2138

Darren Hart (4):
  bootimg: Use mcopy to construct the hddimg
  bootimg: Account for FAT filesystem overhead in image size
  bootimg: Fix a math thinko in the block count calculation
  bootimg: Do not force FAT32 on all images, it violates the FAT
    specification

 meta/classes/bootimg.bbclass |   53 ++++++++++++++++++++++++++++++++++++-----
 1 files changed, 46 insertions(+), 7 deletions(-)

-- 
1.7.5.4


