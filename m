Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD503E004D2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 13:22:05 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Jan 2012 13:22:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="108448963"
Received: from unknown (HELO envy.home) ([10.255.13.210])
	by fmsmga001.fm.intel.com with ESMTP; 18 Jan 2012 13:22:04 -0800
Message-ID: <4F1737E6.1020209@linux.intel.com>
Date: Wed, 18 Jan 2012 13:21:42 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
X-Enigmail-Version: 1.3.4
Cc: Darren Hart <dvhart@linux.intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: Minutes: Kernel Team 1.2 M3/4 Planning (Jan 18)
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
X-List-Received-Date: Wed, 18 Jan 2012 21:22:05 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Attendees:
Darren Hart
Tom Zanussi
Bruce Ashfield

Bug Query:
http://bugzilla.yoctoproject.org/buglist.cgi?query_format=advanced&emailtype2=regexp&bug_status=NEW&bug_status=ACCEPTED&bug_status=REOPENED&bug_status=NEEDINFO&bug_status=WaitForUpstream&email2=.*%28zanussi|dvhart|ashfield%29.*&emailassigned_to2=1&target_milestone=1.2&target_milestone=1.2%20M1&target_milestone=1.2%20M2&target_milestone=1.2%20M3&target_milestone=1.2%20M4

As a group, Tom, Bruce, and I reviewed all the bugs assigned to us for 1.2. With
all the non-bug work we are committed to over the next three months comprising
M3 and M4, we have moved a number of bugs to post 1.2. The post 1.2 kernel bugs
include:

ID 	Sev 	Pri 	Status 	Summary 	Whiteboard
1883 	maj 	Med 	ACCE 	No space left on device 	
1634 	enh 	Low 	ACCE 	BSP: research and update/refresh reference platforms
1614 	enh 	Med 	ACCE 	Target module build
927 	nor 	Low 	ACCE 	[POSIX] case pthread_cond_broadcast does not kill itself after finished
1094 	nor 	Low 	ACCE 	module.bbclass is well out of sync with the version in openembedded 	
1138 	nor 	Low 	ACCE 	[LTP] Some growfiles cases failed with Yocto 1.1 M1 build16)
1635 	enh 	Low 	ACCE 	Drop Grub for Syslinux
1648 	enh 	Low 	ACCE 	Real-time process-executed timers
1795 	enh 	Low 	NEW 	Simplify core-image-minimal-initramfs and reduce dependencies 	
1830 	enh 	Low 	NEW 	Add bluetooth config fragment and add to yocto/standard or appropriate BSPs
418 	nor 	Med 	ACCE 	uvesafb is required to be a module on qemux86/qemux86-64 target
1552 	enh 	Low 	ACCE 	Tracing: create separate recipe for perf
1553 	enh 	Low 	ACCE 	Tracing: perf trace scripting support

We would like some assistance finding owners for the following bugs:

1635 	enh 	Low 	ACCE 	Drop Grub for Syslinux
1728 	nor 	Med 	ACCE 	Uses native lzma when lzma is selected for bzImage compression
1919 	nor 	Med 	NEW 	Accommodate EFI via the live image "install" label
1843 	nor 	Med 	NEED 	Error screen when I input "clear" in the terminal 
1886 	nor 	Med 	NEW 	Glxgears failed in qemux86.
1669 	nor 	Med 	ACCE 	emenlow: glxgears running slowly on 3.0 kernel
1840 	nor 	Med 	NEW 	glxgears fail to run on Blacksand

Possibly 1826 [HuronRiver] only 3/4 screen is used when psplash loading
Tom, what did we decide on this one?

If you have concerns about items dropped from the 1.2 plan, or (better still)
would like to volunteer to help with some of the bugs listed, please respond in
the bugzilla record directly.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

