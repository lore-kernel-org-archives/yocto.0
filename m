Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A615E003FA
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2013 09:56:07 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 30 Aug 2013 09:56:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,992,1367996400"; d="scan'208";a="371157999"
Received: from dvhart-mobl4.jf.intel.com (HELO [10.7.201.58]) ([10.7.201.58])
	by orsmga001.jf.intel.com with ESMTP; 30 Aug 2013 09:56:06 -0700
Message-ID: <1377881765.14029.4.camel@dvhart-mobl4.amr.corp.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Asier <atamayoarbide@gmail.com>
Date: Fri, 30 Aug 2013 09:56:05 -0700
In-Reply-To: <CAMZj-5MD+kLf3JVS7Mmyq-JfREKPdcoam0NFCTrqsFw4bnrx4A@mail.gmail.com>
References: <CAMZj-5MD+kLf3JVS7Mmyq-JfREKPdcoam0NFCTrqsFw4bnrx4A@mail.gmail.com>
Organization: Intel
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Embedded Linux with Xenomai support
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
X-List-Received-Date: Fri, 30 Aug 2013 16:56:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi Asier,

On Fri, 2013-08-30 at 12:34 +0200, Asier wrote:
> Hello all,
> 
> 
> I've just started studying the Yocto project, so I beg your pardon if
> this question has been already solved or it's just too easy (RT*M).
> 
> 
> I've got a working embedded system running Xenomai v2.5.5. The user
> interface has been developed with Qt Embedded. The kernel has been
> compiled using the ELinOS Embedded Linux distribution.
> 
> Now, I want to change that interface to X11 so that I can use a
> desktop manager as well as some other X11 applications. The ELinOS
> distribution has an XServer, but it lacks a way of easily adding any
> desktop manager. Thus, I’m thinking about using another Linux
> distribution.
> 
> 
> That is how I have found the Yocto project. I think this can be the
> best solution for my new system.
> 
> 
> Is there any Linux distribution based on the Yocto project that lets
> me configure my embedded kernel with Xenomai? If not, has anybody got
> any experinece in adding Xenomai to the Yocto project? 

I am not aware of anyone using Xenomai with Yocto to date (although that
doesn't mean nobody is). Our Real-Time focus has been on the PREEMPT_RT
Linux kernel, which we do have recipes for.

It appears as though Xenomai has changed quite a bit over the years. If
my quick re-reading of their material is correct, the Xenomai core is
implemented as a Linux kernel module which can built in to a standard
Linux kernel?

If that is the case, consider having a look at the hello-mod example for
a recipe building an out of tree kernel module. Then have a look at the
Yocto project Linux kernel development manual:

http://www.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.html

Out of curiosity, what sort of real-time requirements do you have?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



