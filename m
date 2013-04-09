Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98E8DE00499
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 17:58:48 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 08 Apr 2013 17:57:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,434,1363158000"; d="scan'208";a="292052184"
Received: from unknown (HELO [10.255.14.40]) ([10.255.14.40])
	by orsmga001.jf.intel.com with ESMTP; 08 Apr 2013 17:58:47 -0700
Message-ID: <1365469127.17697.70.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 08 Apr 2013 19:58:47 -0500
In-Reply-To: <alpine.DEB.2.02.1304081135020.23038@oneiric>
References: <alpine.DEB.2.02.1304081135020.23038@oneiric>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: working my way through the kernel hands-on labs finally
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
X-List-Received-Date: Tue, 09 Apr 2013 00:58:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2013-04-08 at 11:41 -0400, Robert P. J. Day wrote:
> finally have the time to work my way through the ELC 2013 hands on
> kernel labs described here:
> 
> https://www.yoctoproject.org/tools-resources/presentations/working-kernel
> 
> since i'll almost certainly use some of them in my next yocto course,
> so the occasional question for anyone who's already been down this
> road.  start with lab 1.
> 
>   the doc mentions including the meta-yocto and meta-yocto-bsp layers
> -- are those strictly necessary? the layer.conf definition file for
> the lab1 layer doesn't list those layers as dependencies. what will
> happen if i leave them out? what's the policy on explicitly listing
> dependencies on those two layers in a new layer?
> 

The bblayers.conf for the labs is just the bblayers.conf that gets
generated the first time you source oe-init-build-env in poky, which is
what the lab is based on.  You shouldn't need those layers - the BSPs
should work fine outside of poky, but since this is a yocto lab and it
uses poky, there's no need to make a point of removing them - actually,
I haven't tried removing those layers - meta-yocto-bsp could certainly
be removed since it's all machine-specific to existing BSPs, but it's
easy enough to remove them and see...

>   also, just doing a basic fetch for lab1 produces:
> 
> ERROR: QA Issue:
> /home/rpjday/yocto/k_lab/layers/meta-lab1-qemux86/recipes-kernel/linux/linux_3.0.18.bb:
> Variable FILES is set as not being package specific, please fix this.
> 
>   is that deliberate? something that will be resolved later in the
> lab as part of an exercise? just curious.
> 

The labs are and should be targeted to a specific release for exactly
the reason you just discovered - in this case, the main metadata
promoted various QA Issues into errors immediately following the
release.   In this case you were lucky and hit an example of something
obvious, most of the time it's not that obvious - basically if you do
anything outside of what's specified in the labs, especially working
from master, all bets are off...

Tom

> rday
> 



