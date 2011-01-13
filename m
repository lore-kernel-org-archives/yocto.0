Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7D3304C80039
	for <yocto@yoctoproject.org>; Thu, 13 Jan 2011 10:32:51 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Jan 2011 08:32:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,318,1291622400"; d="scan'208";a="592644073"
Received: from eflanlinux.jf.intel.com (HELO [10.7.201.154]) ([10.7.201.154])
	by orsmga002.jf.intel.com with ESMTP; 13 Jan 2011 08:32:51 -0800
Message-ID: <4D2F2977.90007@intel.com>
Date: Thu, 13 Jan 2011 08:33:59 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.16) Gecko/20101125 SUSE/3.0.11 Lightning/1.0b1
	Thunderbird/3.0.11 ThunderBrowse/3.3.3
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Current Build Failures for d82f205cfa790b40e132e11b7937050bc3b97ff3
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
X-List-Received-Date: Thu, 13 Jan 2011 16:32:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

All,

The current nightly based on d82f205cfa790b40e132e11b7937050bc3b97ff3 is
showing 3 build failures so far.

Machine: qemux86
Failure: intermittent tasks_0.18 failure at do_compile
Description: Tasks_0.18 has failed during one buildset, however it's not
failing on the other.


Machine: arm
Failure: sanity tests time out and cause cascading failures.
Description: I'm patching the autobuilder today so that sanity tests
timing out shouldn't cause a cascading failure, however the arm sanity
tests are still timing out.

Machine: qemux86-64
Failure: linux-yocto_git failing at do_compile_perf
Description:
|     CC util/scripting-engines/trace-event-perl.o
| cc1: warnings being treated as errors
| cc1: error: include location "/usr/local/include" is unsafe for
cross-compilation
| make: *** [util/scripting-engines/trace-event-perl.o] Error 1


