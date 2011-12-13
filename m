Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36A60E00305
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 15:33:30 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Dec 2011 15:33:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="101877093"
Received: from unknown (HELO envy.home) ([10.255.12.211])
	by fmsmga002.fm.intel.com with ESMTP; 13 Dec 2011 15:33:29 -0800
Message-ID: <4EE7E0B6.5020009@linux.intel.com>
Date: Tue, 13 Dec 2011 15:33:10 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>, 
	"Ashfield, Bruce" <Bruce.Ashfield@windriver.com>,
	"Zanussi, Tom" <tom.zanussi@intel.com>
X-Enigmail-Version: 1.3.3
Subject: linux-libc-headers 2.6.37
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
X-List-Received-Date: Tue, 13 Dec 2011 23:33:30 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

We currently build at least some MACHINES with 2.6.37 of
linux-libc-headers. This can cause problems for newer packages (such as
connman) that expect more recent headers (if_alg.h is missing prior to
2.6.39). While the proper fix is to ensure these packages can cope with
older headers, for MACHINES shipping 3.0+ kernels, seems to me we should
be using the linux-libc-headers matching the kernels. I know this has
come up in the past, but I don't recall if we have clearly stated and
justified what our policy is here.

Any thoughts on this?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

