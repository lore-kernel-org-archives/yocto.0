Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 231A1E01482
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 02:40:25 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Jun 2013 02:41:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,958,1363158000"; d="scan'208";a="361936476"
Received: from unknown (HELO helios.localnet) ([10.252.122.97])
	by fmsmga002.fm.intel.com with ESMTP; 28 Jun 2013 02:40:22 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Chris Tapp <opensource@keylevel.com>
Date: Fri, 28 Jun 2013 10:40:21 +0100
Message-ID: <76247853.lJbnn8TcbK@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-25-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <14A8E2D5-FF50-4903-A839-806D77B12FF8@keylevel.com>
References: <14A8E2D5-FF50-4903-A839-806D77B12FF8@keylevel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Bitbake requires Python 2.7.3
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Jun 2013 09:40:26 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Chris,

On Friday 28 June 2013 09:55:42 Chris Tapp wrote:
> I'm experimenting with meta-fsl-arm and I need to use 'master' for some of
> the latest updates. However, when I build I get told that "Bitbake requires
> Python 2.7.3".
> 
> My development system is Ubuntu 11.10, which only has 2.7.2 (and is out of
> support, so no updates!) and the "latest" "Quick Start" manual simply says
> that 2.7 is required.
> 
> Is 2.7.3 now a hard requirement (in which case the documentation could do
> with a minor change), or is the version test being too specific?

It is now a requirement, yes (as are git >= 1.7.5 and tar >= 1.24). As I 
understand it a documentation update is queued to cover this.

FWIW, for older hosts where installing these tools in the normal fashion is 
difficult or impractical, there is now buildtools-tarball (which replaces and 
extends the old external-python-tarball). This builds on the relocatable SDK 
installer to provide suitable versions of python, git, tar and other tools 
required on the build host. I believe the plan is to offer this for download so 
that people can get started immediately (and of course point to this in the 
documentation).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

