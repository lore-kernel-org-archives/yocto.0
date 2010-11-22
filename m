Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id ED6954C80BEF
	for <yocto@yoctoproject.org>; Mon, 22 Nov 2010 07:48:47 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Nov 2010 05:48:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,236,1288594800"; d="scan'208";a="679831478"
Received: from unknown (HELO [10.255.16.135]) ([10.255.16.135])
	by orsmga001.jf.intel.com with ESMTP; 22 Nov 2010 05:48:46 -0800
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
In-Reply-To: <4CE704C6.6010203@linux.intel.com>
References: <4CE704C6.6010203@linux.intel.com>
Date: Mon, 22 Nov 2010 13:48:40 +0000
Message-ID: <1290433720.2579.10.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.0 (2.32.0-2.fc14) 
Subject: Re: RFC: Rapid iterative development
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
X-List-Received-Date: Mon, 22 Nov 2010 13:48:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-11-19 at 15:14 -0800, Darren Hart wrote:
> While working on a single package, I need to be able to tweak a variable 
> in the new recipe, change the MACHINE in local.conf, etc. I'd like to be 
> able to rapidly test my changes, but some of these changes trigger a 
> long list of dependencies for various commands. While working on a new 
> linux kernel recipe, I found it rebuilding a number of things that were 
> either -native (can I force it to use the system version rather than 
> building one) or seemed unrelated to the process at hand.

You can use ASSUME_PROVIDED to use system versions of native tools,
though it's generally not recommended. git grep for the term to find
some examples.

As to building things which seem unrelated, this is possibly because you
have BB_NUMBER_THREADS set high and bitbake is just using the
opportunity to finish some uncompleted tasks - oft a desirable
behaviour.

You could always try BB_NUMBER_THREADS=1 bitbake whatever-package and
see if that behaves more like you expect?


> 
> Are there some best practices for iterative recipe development that 
> speed things along?
> 
> Thanks,
> 

-- 
Joshua Lock
        Intel Open Source Technology Centre


