Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 520ECE00596
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 20:33:00 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Apr 2012 20:33:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="154486022"
Received: from unknown (HELO envy.home) ([10.255.12.120])
	by fmsmga002.fm.intel.com with ESMTP; 16 Apr 2012 20:32:59 -0700
Message-ID: <4F8CE449.8060501@linux.intel.com>
Date: Mon, 16 Apr 2012 20:32:25 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
X-Enigmail-Version: 1.4
Subject: Writing do_install_append for target and virtclass-native in a bbappend
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
X-List-Received-Date: Tue, 17 Apr 2012 03:33:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I'm trying to address a symlink naming issue in the bzip2 package when
used with Chrome. Chrome is looking for a specific soname, which the
default install of bzip2 doesn't setup. I can address this easily by
adding the symlink via a bzip2 bbappend in do_install_append().
Unfortunately, this fails for the virtclass-native variant. I tried
adding and empty:

do_install_append_virtclass-native() {
	:
}

function to the bbappend, which still failed. I then added an echo
statement which appeared in the output, but it still ran non-native
do_install_append() and failed. Switching the order of the functions
made the echo output disappear, but the native variant still failed.

I figure I must be missing something rather fundamental here. Any ideas
what it might be?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

