Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1828E00348
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 11:39:33 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Dec 2012 11:39:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,268,1355126400"; d="scan'208";a="230658372"
Received: from unknown (HELO envy.home) ([10.255.13.227])
	by azsmga001.ch.intel.com with ESMTP; 12 Dec 2012 11:39:33 -0800
Message-ID: <50C8DD74.2030301@linux.intel.com>
Date: Wed, 12 Dec 2012 11:39:32 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
X-Enigmail-Version: 1.4.6
Subject: Strange error with missing "meta-yocto" in bblayers
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
X-List-Received-Date: Wed, 12 Dec 2012 19:39:34 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

When trying to build a machine I had not built in a while, I got the
following error:

$ bitbake core-image-minimal
Pseudo is not present but is required, building this first before the
main build
NOTE: Your conf/bblayers.conf has been automatically updated. Please
re-run bitbake
.
mkdir: cannot create directory `/../../var/pseudo': Permission denied
/home/dvhart/source/poky/scripts/bitbake: line 178: /pseudo: No such
file or direct
ory

It turns out I had "meta" and "meta-yocto-bsp" in bblayers, but not
"meta-yocto". The error wasn't at all helpful, but I figured it had to
be something in my configuration. Would there be someway to better
articulate to the user what the failure actually was?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

