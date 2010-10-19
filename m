Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D0A854C80B60
	for <yocto@yoctoproject.org>; Mon, 18 Oct 2010 19:54:22 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 18 Oct 2010 17:54:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,347,1283756400"; d="scan'208";a="668624987"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by orsmga001.jf.intel.com with ESMTP; 18 Oct 2010 17:54:22 -0700
Received: from [10.255.12.152] (10.255.12.152) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Mon, 18 Oct 2010 18:54:21 -0600
Message-ID: <4CBCEC3C.5090003@intel.com>
Date: Mon, 18 Oct 2010 17:54:20 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.12) Gecko/20100915 Thunderbird/3.0.8
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
Subject: New issue with git fetcher?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Oct 2010 00:54:23 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Richard,

This afternoon I performed a build from scratch using master, which 
included your git fetcher change to use mirror tarballs 
(1077021f7010388e889d85630b13c4c7901d7718).

When I performed my build from scratch (using a pre-populated DL_DIR 
from previous builds), linux-wrs failed on do_fetch, with the following 
in log.do_fetch:

 From git://git.pokylinux.org/linux-2.6-windriver
   * branch            common_pc-standard -> FETCH_HEAD
  From git://git.pokylinux.org/linux-2.6-windriver
   * [new tag]         v2.6.36-rc5 -> v2.6.36-rc5
   * [new tag]         v2.6.36-rc6 -> v2.6.36-rc6
  NOTE: Creating tarball of git repository
ERROR: Task failed: Unknown fetch Error: coercing to Unicode: need 
string or buffer, NoneType found

I performed a -c clean and then -c fetch, but ran into the same problem.

I then went and deleted the linux-wrs-related sources from DL_DIR, and 
ran -c clean and -c fetch again, and it looks to me like the fetcher is 
actually downloading tarballs from the source mirrors first, and then 
trying git directly:

NOTE: Running task 130 of 130 (ID: 0, 
/raid0/sources/poky/meta/recipes-kernel/linux/linux-wrs_git.bb, do_fetch)
NOTE: package 
linux-wrs-2.6.34+git0+b67e060194a38c6331da1532bd06446087a42b3b_0+0431115c9d720fee5bb105f6a7411efb4f851d26-r12: 
task do_fetch: Started
NOTE: fetch 
http://pokylinux.org/sources/git_git.pokylinux.org.linux-2.6-windriver.git.tar.gz
NOTE: fetch 
http://autobuilder.pokylinux.org/sources/git_git.pokylinux.org.linux-2.6-windriver.git.tar.gz

I confirmed this by seeing wget running in my process list, and then git 
eventually shows up.

Finally, I get the bitbake message:

NOTE: Creating tarball of git repository

...and I see gzip running, but the task ends up failing with the same 
error as the log.do_fetch example I mentioned above.

Scott

