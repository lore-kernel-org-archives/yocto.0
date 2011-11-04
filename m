Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 815DEE00307
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2011 09:04:00 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 04 Nov 2011 09:03:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,456,1315206000"; d="scan'208";a="81279396"
Received: from unknown (HELO [10.255.15.248]) ([10.255.15.248])
	by fmsmga001.fm.intel.com with ESMTP; 04 Nov 2011 09:03:56 -0700
Message-ID: <4EB40CEC.4030106@linux.intel.com>
Date: Fri, 04 Nov 2011 09:03:56 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1111041153170.6678@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1111041153170.6678@localhost6.localdomain6>
Subject: Re: why do numerous .bb files set "PARALLEL_MAKE"?
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
X-List-Received-Date: Fri, 04 Nov 2011 16:04:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 04/11/11 08:57, Robert P. J. Day wrote:
> 
>   stumbled over this so i did a more thorough search:
> 
> $ grep -w PARALLEL_MAKE $(find . -name *.bb)
> ./meta/recipes-qt/qt-apps/qmmp_0.5.1.bb:PARALLEL_MAKE = ""
> ./meta/recipes-core/eggdbus/eggdbus_0.6.bb:PARALLEL_MAKE = ""
> ./meta/recipes-core/gettext/gettext_0.16.1.bb:PARALLEL_MAKE = ""
> ./meta/recipes-core/gettext/gettext_0.18.1.1.bb:#PARALLEL_MAKE = ""
> ./meta/recipes-bsp/pciutils/pciutils_3.1.7.bb:PARALLEL_MAKE = ""
> ./meta/recipes-extended/sat-solver/sat-solver_git.bb:PARALLEL_MAKE=""
> ./meta/recipes-extended/bash/bash_3.2.48.bb:PARALLEL_MAKE = ""
> ./meta/recipes-extended/tcp-wrappers/tcp-wrappers_7.6.bb:PARALLEL_MAKE = ""
> ./meta/recipes-extended/groff/groff_1.20.1.bb:PARALLEL_MAKE = ""
> ... more snipped ...
> 
>   why are individual recipes setting PARALLEL_MAKE to the empty
> string?  it's a *build* option, why would it have any relevance to
> individual .bb files?

Because that individual BB file has problems being run with parallel
make (make -j).

> 
>   conversely, i don't see a single .bb file that sets
> BB_NUMBER_THREADS.  the above just looks ... odd.

That's the amount of threads BitBake creates, tasks it will run in parallel.

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

