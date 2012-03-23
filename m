Return-Path: <darren@apps.dvhart.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 910EAE00596
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2012 14:53:05 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so3613185pbb.35
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2012 14:53:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=t+UBpMJFxRSB2K6qwLpyACTRAtCcJGMV4ZMx2YUr7p0=;
	b=ARWpJ2arM4wpWwCElh15kqyEf84CGaWKrDRcZiQnNwdWY7nyxwppdANeYmicf3GsN7
	sEpkc5HJm3zTFXy6X/4zS2c0mKgdCTW8VhwlUdel6IRIqNdoDaeukPROJPdGZT/LRfmx
	0tI8Nry5GEA6ybXzRWaNxfnpDY8FfRmzCKGcphHgtsxsEVAouBqLHorjosiNFKjS935a
	B6UBXBfeUbrIlS6abEY+AwIoq0hCxG2M3dvnYFs/Gf0l+rroeUfV7CCW+T3hpno0ibzU
	hL4EfQ+iFoFtgU0/spOaFuTMVk2EeJZIbF7QEcl6i7C1dnO30tdqY3CyQHPUkxITj8X1
	tboA==
Received: by 10.68.225.194 with SMTP id rm2mr32415644pbc.95.1332539585216;
	Fri, 23 Mar 2012 14:53:05 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id f6sm6622752pbt.4.2012.03.23.14.53.03
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 23 Mar 2012 14:53:03 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Saul Wold <sgw@linux.intel.com>
Date: Fri, 23 Mar 2012 14:52:50 -0700
Message-Id: <cover.1332539317.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
X-Gm-Message-State: ALoCoQlwQdxOg1yA0pWTAu0FDTDdqWncS43g2jHutM0RS3cBqyh2vtBZTa2I6mdG+OuNk+qks/fS
Subject: [PATCH 0/1] [linux-yocto-3.2][meta] common-pc: Add PCNET32 to the config
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
X-List-Received-Date: Fri, 23 Mar 2012 21:53:05 -0000

In support of the self-hosted-image, add CONFIG_PCNET32 to the common-pc BSP
default cfg. This enables the qemux86 image to be run on both qemux86 machines
as well as the vmware 32b machine. Since the qemux86 machine optionally supports
pcnet, this seems a reasonable compromise to managing a dedicated BSP for a
self-hosted-image machine which would be superset of the qemux86 machine.

As this is a single CONFIG_ option, add it to the common-pc.cfg directly, rather
than defining a new feature.

The following changes since commit 514847185c78c07f52e02750fbe0a03ca3a31d8f:

  meta: update kver to v3.2.11 (2012-03-16 10:42:41 -0400)

are available in the git repository at:
  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib dvhart/meta/pcnet
  http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=dvhart/meta/pcnet

Darren Hart (1):
  [meta] common-pc: Add PCNET32 to the config

 meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg |    3 +++
 meta/cfg/kernel-cache/bsp/common-pc/hardware.cfg  |    1 +
 2 files changed, 4 insertions(+), 0 deletions(-)

-- 
1.7.5.4


