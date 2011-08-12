Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8837EE011B2
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2011 09:27:37 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Aug 2011 09:27:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,363,1309762800"; d="scan'208";a="38831706"
Received: from unknown (HELO envy.home) ([10.255.14.228])
	by fmsmga002.fm.intel.com with ESMTP; 12 Aug 2011 09:27:47 -0700
Message-ID: <4E455483.6020602@linux.intel.com>
Date: Fri, 12 Aug 2011 09:27:47 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: core-image-rt building a lot more packages than expected
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
X-List-Received-Date: Fri, 12 Aug 2011 16:27:37 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I have been surprised over the last few days at the number of packages
being built for the core-image-rt target, which for reference is as follows:

#
# Copyright (C) 2010 Intel Corporation.
#

DESCRIPTION = "Real-Time Linux Image"
DEPENDS = "linux-yocto-rt"

require recipes-core/images/core-image-minimal.bb

IMAGE_INSTALL += "rt-tests"

LICENSE = "MIT"


The only dependencies of rt-tests are:

DEPENDS = "linux-libc-headers eglibc"


Building core-image-rt schedules 3154 tasks, and among them are things like:
lttng-viewer
gst-plugins-base (bad, good, etc)
gtk+
libogg
libtheora
owl-video
clutter
libglade
librsvg
mesa-demos
x11-perf
xvideo-tests
etc etc etc

I noticed my local.conf contains:
EXTRA_IMAGE_FEATURES = "tools-debug tools-profile tools-testapps
debug-tweaks"

That hasn't changed in a while, but perhaps those features now pull in
more than they used to? Or if they don't, are we unintentionally pulling
in a lot more packages for what is essentially a minimal image?

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

