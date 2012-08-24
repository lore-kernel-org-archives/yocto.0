Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C837E00344
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 20:09:41 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 Aug 2012 20:09:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,301,1344236400"; d="scan'208";a="184285850"
Received: from unknown (HELO envy.home) ([10.255.13.19])
	by azsmga001.ch.intel.com with ESMTP; 23 Aug 2012 20:09:39 -0700
Message-ID: <5036EFFB.7080705@linux.intel.com>
Date: Thu, 23 Aug 2012 20:07:39 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: Ross Burton <ross.burton@intel.com>, 
	Yocto Project <yocto@yoctoproject.org>,
	"Zanussi, Tom" <tom.zanussi@intel.com>, 
	"Serban, Laurentiu" <laurentiu.serban@intel.com>
X-Enigmail-Version: 1.4.3
Subject: Shuku requirements for BSP testing
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
X-List-Received-Date: Fri, 24 Aug 2012 03:09:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Ross,

After working through some testing requirements for the FRI2, I think we
should include packages to enable the following. I don't know the exact
packages required for all of them, and some are likely already supported
in your plan for shuku.

testing network
testing wifi
	iw ?
testing 3g
	connman-tests
	ofono-tests
testing audio mixer
	alsa-utils-alsamixer
	alsa-utils-amixer (both are nice to have)
testing audio playback
	alsa-utils-aplay
	alsa-utils-alsactl
	(maybe just all of alsa-utils really)
testing hardware accelerated 3D (GL)
	Open for suggestions here, GLX Gears doesn't seem quite adequate
testing video playback (vaapi, etc.)
	gstreamer and enough codecs to play a few formats
	vaapi bits
	Tom, can you provide the exact package names required here?


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

