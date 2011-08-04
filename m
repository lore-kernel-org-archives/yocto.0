Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF463E011B6
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 13:18:09 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 Aug 2011 13:18:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,318,1309762800"; d="scan'208";a="34558378"
Received: from vorpal.jf.intel.com (HELO [10.7.199.75]) ([10.7.199.75])
	by orsmga002.jf.intel.com with ESMTP; 04 Aug 2011 13:18:17 -0700
From: Joshua Lock <josh@linux.intel.com>
To: tim.bird@am.sony.com
Date: Thu, 04 Aug 2011 13:22:59 -0700
In-Reply-To: <4E3AEA40.8060200@am.sony.com>
References: <4E39E30B.3080206@am.sony.com> <1522642.ppiasj8dqr@perseus>
	<4E3AEA40.8060200@am.sony.com>
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1312489379.2135.20.camel@vorpal.jf.intel.com>
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Build failure on recent yocto download
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
X-List-Received-Date: Thu, 04 Aug 2011 20:18:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-08-04 at 11:51 -0700, Tim Bird wrote:
> The only thing that looks suspicious to me is:
> 
> ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored.

This is concerning and may cause problems later on. One possible factor
here is SELINUX. Do you have that enabled? We've tried to ensure the
system works with SELINUX but the policay may vary quite a bit from
Fedora 12 to 14 (where I know a build with SELINUX has run).

> I don't know anything about how libpseudo.so is used, so I don't know if this is
> a big problem or not (but I fear host tool or lib contamination if Pseudo is not
> being used correctly.

Pseudo is akin to fakeroot, so it allows us to set appropriate
permissions for the generated image without requiring root privileges on
the build machine.

<snip>

> Once again, I'm running this on Fedora 12, 64-bit system.  (But I would have expected any lib dependencies and configure
> to have been sandboxed from the host libs and environment).

That is how we intend to operate but I know we have had issues with host
contamination in the past and may well again in the future. We have the
beginnings of some machinery in place to catch these issues earlier,
however.

Regards,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes Factotum"
        Intel Open Source Technology Centre


