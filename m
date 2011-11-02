Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABCD7E006B4
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2011 13:18:18 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 02 Nov 2011 13:18:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="70548269"
Received: from unknown (HELO [10.255.15.209]) ([10.255.15.209])
	by orsmga001.jf.intel.com with ESMTP; 02 Nov 2011 13:18:16 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Jim Abernathy <jfabernathy@gmail.com>
In-Reply-To: <1320264445.13661.18.camel@jim-ubuntu-10>
References: <CANFv2EkrNFQw57X=tV5Wz+a5F-cqp_GQHsOpLhOh7pXeTSnpXg@mail.gmail.com>
	<1320176449.2400.63.camel@elmorro>
	<CANFv2Emacwk4+Z+bYNs3MXZL-uxHmPUiB5tFXNM7Kx+NgFOnig@mail.gmail.com>
	<1320194738.26655.26.camel@elmorro>
	<1320243867.13661.6.camel@jim-ubuntu-10>
	<1320244912.26655.61.camel@elmorro>
	<1320246467.13661.10.camel@jim-ubuntu-10>
	<1320248073.26655.86.camel@elmorro>
	<1320261498.13661.13.camel@jim-ubuntu-10>
	<1320262596.6937.41.camel@elmorro>
	<1320264445.13661.18.camel@jim-ubuntu-10>
Date: Wed, 02 Nov 2011 15:18:29 -0500
Message-ID: <1320265109.6937.56.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build error while following Appendix A. Yocto Project Development manual
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
X-List-Received-Date: Wed, 02 Nov 2011 20:18:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-11-02 at 13:07 -0700, Jim Abernathy wrote:
> On Wed, 2011-11-02 at 14:36 -0500, Tom Zanussi wrote:
> 
> > And what kind of machine are you booting it on?
> > 
> > Tom
> 
> I'm building on Core i5 desktop with Ubuntu 10.10.  One of the odd
> things I've noticed during the build is it takes the usual long time
> (couple of hours) to build. However when it get to task ~4000, it jumps

Yeah, that's not out of line with expectations.  You are using
BB_NUMBER_THREADS and PARALLEL make in your local.conf, I assume.

> quickly to 43xx close to the end. Not sure if it's missing something
> critical and I've not set some parameter about the Root file system
> somewhere.
> 

I wouldn't pay too much attention to the task numbers themselves - some
tasks take very little time and finish in quick progression.  And
there's nothing specific about a root filesystem setting in the appendix
instructions, we're just copying existing working settings, but there is
something wrong with your build nonetheless.

I'm planning on submitting a patch to the appendix as soon as I can
today or tomorrow morning, which I'll work through and verify, so you
shouldn't have to do any guesswork and shouldn't run into any of these
kinds of problems...

Tom

> Jim
> 



