Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0C4034C80FD4
	for <yocto@yoctoproject.org>; Tue,  7 Dec 2010 16:00:33 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Dec 2010 14:00:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,312,1288594800"; d="scan'208";a="581517006"
Received: from eflanlinux.jf.intel.com (HELO [10.7.201.99]) ([10.7.201.99])
	by orsmga002.jf.intel.com with ESMTP; 07 Dec 2010 14:00:33 -0800
Message-ID: <4CFEAE72.1030401@intel.com>
Date: Tue, 07 Dec 2010 14:00:18 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.15) Gecko/20101026 SUSE/3.0.10 Lightning/1.0b1
	Thunderbird/3.0.10 ThunderBrowse/3.3.3
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <bug-552-84@http.bugzilla.pokylinux.org/>
	<20101207212853.4282620F48496@mail.opensource.intel.com>
In-Reply-To: <20101207212853.4282620F48496@mail.opensource.intel.com>
Subject: [Bug 552] autobuild missing the non-x86 realboard images
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
X-List-Received-Date: Tue, 07 Dec 2010 22:00:34 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


I wanted to give people a heads up about the addition of a few more
targets to the nightly build and how they'll effect the nightly (and our
overall efficency).

This bug asks for the addition of a few targets:

arm: beagleboard: poky-image-sato, poky-image-minimal, poky-image-sdk
powerpc: mpc8315e-rdb: poky-image-minimal
mips: routerstationpro: poky-image-minimal

I'm going to put these into nightly after the current build is done, but
I want to make people aware of a few things.

First, our build times have been between 26 and 31 hours over the past
month. Adding these builds will increase that time. Depending on how
long this extends the total build time will depend on how big of an
effect it has.

It may also introduce new failures to the nightly which will need to be
dealt with. I know it doesn't mean much for stability since the targets
already are in master and just aren't build built, but what it does mean
is that someone needs to QA these targets.

So, like I said, I'll have this in when our next nightly kicks off. If
folks have any concerns over this, let me know before #141 finishes up.

-b



