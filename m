Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8922E4C80205
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 08:36:49 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Jul 2011 06:36:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,535,1304319600"; d="scan'208";a="30723391"
Received: from unknown (HELO [10.255.14.50]) ([10.255.14.50])
	by fmsmga001.fm.intel.com with ESMTP; 15 Jul 2011 06:36:48 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
In-Reply-To: <1310736210.20015.1225.camel@rex>
References: <cover.1310689271.git.tom.zanussi@intel.com>
	<f69321f9d19943ec1815681e6568524387cfe5c0.1310689271.git.tom.zanussi@intel.com>
	<1310736210.20015.1225.camel@rex>
Date: Fri, 15 Jul 2011 08:36:39 -0500
Message-ID: <1310736999.19790.45.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/6] meta-intel: add a couple common .inc files
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
X-List-Received-Date: Fri, 15 Jul 2011 13:36:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-07-15 at 06:23 -0700, Richard Purdie wrote:
> Hi Tom,
> 
> On Thu, 2011-07-14 at 19:55 -0500, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> > 
> > The meta-intel BSPs currently have a number of machine settings common
> > to all - factor these out into a couple common include files.
> 
> For reference common include files are usually placed in
> conf/machine/include/. If that happens they also need non-generic
> suitably namespaced names, likely including "x86" or "ia32" in this
> case.
> 
> The benefit is you can then refer to one of these includes from another
> layer.
> 
> It also means you can refer to them as:
> 
> include conf/machine/includes/xxx
> 
> in other conf files removing some of the potential path issues.
> 
> I do like the cleanup this gives though, this is just a detail! :)
> 

Yeah, I wasn't sure all that would be welcome in there. ;-)

I'll respin it that way and resubmit...

Thanks for the input,

Tom

> Cheers,
> 
> Richard
> 



