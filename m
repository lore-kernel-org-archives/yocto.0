Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B64FDE01275
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 08:34:01 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Oct 2012 08:33:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,608,1344236400"; d="scan'208";a="229280755"
Received: from unknown (HELO helios.localnet) ([10.252.122.102])
	by orsmga002.jf.intel.com with ESMTP; 18 Oct 2012 08:33:39 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Marc Ferland <ferlandm@sonatest.com>
Date: Thu, 18 Oct 2012 16:33:38 +0100
Message-ID: <12867217.E4rI3ONfyG@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-32-generic-pae; KDE/4.9.2; i686; ; )
In-Reply-To: <87a9vj3iix.fsf@sonatest.com>
References: <87mwzj3jau.fsf@sonatest.com> <20121018152150.GA3087@jama.jama.net>
	<87a9vj3iix.fsf@sonatest.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Problem genrerating module autoloading commands
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
X-List-Received-Date: Thu, 18 Oct 2012 15:34:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 18 October 2012 11:29:58 Marc Ferland wrote:
> Martin Jansa <martin.jansa@gmail.com> writes:
> > On Thu, Oct 18, 2012 at 11:13:13AM -0400, Marc Ferland wrote:
> >> Hi,
> >> 
> >> I'm having trouble generating the module auto-loading instructions in
> >> /etc for one of my modules. I have already many modules that all work
> >> fine, but for some reason this one does not get listed in /etc/modules
> >> nor /etc/modules-load.d.
> >> 
> >> The only thing that distinguishes this module from the other ones is that
> >> it has the same name has the MACHINE and layer. So basically I have
> >> something like:
> >> 
> >> build/conf/local.conf:
> >> MACHINE = foo
> >> 
> >> poky/meta-foo/conf/machine/foo.conf:
> >> module_autoload_foo = "foo"
> >> 
> >> The module gets built correctly and is included in the images. Running
> >> 'modprobe foo' works as intended on the target hardware.
> >> 
> >> Did I fall in some edge case?
> > 
> > Does foo have any '-' or '_'?
> 
> No. Just lower case letters.
> Marc

I suspect this is falling foul of OVERRIDES since it matches ${MACHINE} which 
is in OVERRIDES. What the workaround would be for this I'm not sure.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

