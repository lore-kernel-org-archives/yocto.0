Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 075A0E011BF
	for <yocto@yoctoproject.org>; Sat,  6 Aug 2011 11:23:22 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 06 Aug 2011 11:23:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,329,1309762800"; d="scan'208";a="35233233"
Received: from unknown (HELO [10.255.14.173]) ([10.255.14.173])
	by orsmga002.jf.intel.com with ESMTP; 06 Aug 2011 11:23:31 -0700
Message-ID: <4E3D86A2.9080802@linux.intel.com>
Date: Sat, 06 Aug 2011 11:23:30 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: "Yan, Xiaofeng" <Xiaofeng.Yan@windriver.com>, 
	"Purdie, Richard" <richard.purdie@intel.com>,
	"Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: 3 Failures in RC3
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
X-List-Received-Date: Sat, 06 Aug 2011 18:23:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Folks,

We currently have 3 failures on the RC3 build for M3. They are all 
related to LSB builds.  If you are on the TO: line please review your 
issues as we need a prompt fix.

1348: Qt3 Fails to build for ARM LSB

1349: Shared State Information gets lost for Mips FSTests
    I am trying to reproduce this on the Autobuilder

1450: ccache directory does not get created correct
    I can reproduce this one very easily by building, saving the 
sstate-cache directory and then building again with a clean tmp 
directory.  The ccache/x86-64-poky-linux directory does not get created 
and the kernel-configme task fail during the HOSTCC execution.

Please take a look or if you know of these issues, please let me know.

Thanks

-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


