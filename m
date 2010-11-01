Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 01D124C80132
	for <yocto@yoctoproject.org>; Mon,  1 Nov 2010 04:38:12 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Nov 2010 02:38:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,272,1286175600"; d="scan'208";a="569151512"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by orsmga002.jf.intel.com with ESMTP; 01 Nov 2010 02:38:12 -0700
Received: from [10.255.12.110] (10.255.12.110) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Mon, 1 Nov 2010 03:38:12 -0600
Message-ID: <4CCE8A82.7070000@intel.com>
Date: Mon, 1 Nov 2010 02:38:10 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Thunderbird/3.0.10
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: nightly-release takes more than 24 hours to build.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 01 Nov 2010 09:38:13 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

Leading up to our 0.9 release, our autobuilder has been building an 
increasing number of targets for our nightly-release buildset. We've now 
reached the point that the nightly build takes more than 24 hours to run 
(> 26 hours, in fact) - which is clearly a problem on a build that we'd 
like to generate on a daily basis.

The following is a list of everything which is built within nightly-release:

The following targets are built for qemux86, qemux86-64, qemuarm, 
qemumips, and qemuppc:

* poky-image-minimal
* poky-image-sato
* poky-image-lsb
* poky-image-sdk
* meta-toolchain-sdk (SDKMACHINE=i586 and also x86_64)

For emenlow and atom-pc, we build:

* poky-image-minimal-live
* poky-image-sato-live
* poky-image-sdk-live
* meta-toolchain-sdk (SDKMACHINE=i586 and also x86_64)

Finally, we also build the Eclipse plugin, and copy the shared state 
prebuilds and RPM output at the end of the build.

I was going to post build times for some of these targets for reference, 
but it would be misleading as we build the targets in succession (e.g, 
we start with poky-image-sdk which takes the bulk of the time, and then 
the other targets can largely rely on the shared state builds).

Ideally I think our nightly build should take much less than 24 hours to 
build. The question is what we can move out of the nightly build and do 
on perhaps a weekly basis instead?

Our buildserver hardware is a dual quad-core Xeon server with 12 GB of 
RAM. Throwing hardware at the problem is another solution, but not an 
inexpensive one (we'd be looking at a 4-socket machine filled with 
quad-cores and 32 GB of RAM).

I'm open to ideas on how to address this issue. QA will be driving a lot 
of the requirements and I'm especially interested to hear your thoughts.

Scott



