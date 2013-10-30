Return-Path: <laurentiu.palcu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B6A4E016E5
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 06:34:59 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 30 Oct 2013 06:34:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="382245083"
Received: from lpalcu-linux.rb.intel.com (HELO lpalcu-linux) ([10.237.105.41])
	by azsmga001.ch.intel.com with ESMTP; 30 Oct 2013 06:34:52 -0700
Date: Wed, 30 Oct 2013 15:34:51 +0200
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Message-ID: <20131030133451.GA25490@lpalcu-linux>
References: <CAFZh4h8aKoop0wdU7THaBD6+5FnEgfPKW0zM_-wqpOOcLgXdsg@mail.gmail.com>
	<CAFZh4h-ULci3FhdeNJDE1zEFRqAQpwVJyLY95-PVW0z2sQFGHQ@mail.gmail.com>
	<20131030054112.GA23839@lpalcu-linux>
	<CAFZh4h_oN02R_Z2ymVd6Df0RRnyWichQAD0dtvarUefd4k_eSQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFZh4h_oN02R_Z2ymVd6Df0RRnyWichQAD0dtvarUefd4k_eSQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Getting a relocate_sdk.py issue when installing a sdk on Centos
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
X-List-Received-Date: Wed, 30 Oct 2013 13:34:59 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 30, 2013 at 09:19:56AM -0400, Brian Hutchinson wrote:
> On Wed, Oct 30, 2013 at 1:41 AM, Laurentiu Palcu <laurentiu.palcu@intel.com>
> wrote:
> 
>                     ^
>     This commit:
> 
>     commit 39356f622d3d2226f12c4930beeaf4b392d90ca5
>     Author: Konrad Scherer <Konrad.Scherer@windriver.com>
>     Date:   Thu Oct 17 10:17:20 2013 -0400
> 
>         relocate_sdk.py: Allow script to work with Python 2.4 and 3.
> 
>     should fix your issue.
> 
>     Thanks,
>     Laurentiu
> 
> 
> Hi Laurentiu,
> 
> Which git repo?  I couldn't find it?   Is this contrib or mainline?
http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=39356f622d3d2226f12c4930beeaf4b392d90ca5

or

http://cgit.openembedded.org/openembedded-core/commit/?id=1e2ec5f576f167673d7980737826987fefdc74a9

Laurentiu
> 
> Regards,
> 
> Brian
> 

