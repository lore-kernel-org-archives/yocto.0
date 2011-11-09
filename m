Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42083E013B5
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2011 16:16:21 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 08 Nov 2011 16:16:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,480,1315206000"; d="scan'208";a="87695001"
Received: from unknown (HELO envy.home) ([10.255.12.17])
	by fmsmga002.fm.intel.com with ESMTP; 08 Nov 2011 16:16:19 -0800
Message-ID: <4EB9C653.5040804@linux.intel.com>
Date: Tue, 08 Nov 2011 16:16:19 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>, 
	"Rifenbark, Scott M" <scott.m.rifenbark@intel.com>,
	Josh Lock <joshua.lock@intel.com>
X-Enigmail-Version: 1.3.2
Subject: Documentation Gaps: Quick Start on Fedora 15, OpenSUSE 11.4, and Ubuntu 11.10
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
X-List-Received-Date: Wed, 09 Nov 2011 00:16:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I just installed several virtual machines and have gone through the
quick start guide on each.

Fedora 15, 32 bit
OpenSUSE 11.4, 64 bit
Ubuntu 11.10, 32 bit

A few thoughts:

1) The breakup of "debian" and "rpm-based" installation commands
   doesn't really work - especially since there are two rpm-based
   commands, one for yum and one for zypper. We would be better off
   just saying:

Install the prerequisites:
Ubuntu:
	aptitude install...
Fedora:
	yum groupinstal ...
OpenSUSE:
	zypper install ...

I think it would be clearer. I was a bit confused by having both Fedora
and SUSE under RPM, with two commands for Fedora and one for SUSE.

2) OpenSUSE triggered the sanity checker and complains about "." being
   in the path.

3) OpenSUSE triggered complaints about missing packages as well. The
   required additional packages to build core-image-sato for qemux86
   are:
     make
     freeglut-devel
     libSDL-devel

4) Ubuntu triggered the dash sanity checker. While there is a bug open
   against this and I expect it to be fixed for 1.2, we should update
   our documentation so that the Ubuntu users can use the quickstart
   guide without getting errors from the build commands.

Ubuntu users should ensure they are running the bash shell (dash will be
supported in the 1.2 release):
# sudo dpkg-reconfigure dash
Select "No"


Other bugs I need to open:
* OpenSUSE listed the path error and missing make on the same line,
  with no punctuation to separate the errors.

* Sanity checker lists ubuntu package names on OpenSuse, we should get
  these right for Fedora, Ubuntu, and OpenSuse. It also lists them with
  commas, so you can't copy and paste into a zypper command to install.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

