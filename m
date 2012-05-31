Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 758B9E006D9
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 11:10:01 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 31 May 2012 11:09:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="146709235"
Received: from jlstreix-mobl.amr.corp.intel.com (HELO envy.home)
	([10.7.199.145])
	by orsmga001.jf.intel.com with ESMTP; 31 May 2012 11:09:34 -0700
Message-ID: <4FC7B3A3.4030706@linux.intel.com>
Date: Thu, 31 May 2012 11:08:35 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
References: <CBED6054.10464%belen.barros.pena@intel.com>
In-Reply-To: <CBED6054.10464%belen.barros.pena@intel.com>
X-Enigmail-Version: 1.4.1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hob implementation: vanilla or branded?
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
X-List-Received-Date: Thu, 31 May 2012 18:10:01 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/31/2012 09:55 AM, Barros Pena, Belen wrote:
> Hi all,
> 
> As part of the Hob work for the 1.3 release it looks like we need to make
> a visual design and implementation decision: do we want a 'vanilla' or a
> 'branded' look for Hob? Sorry if the choice of words is not the best.
> Neither 'vanilla' nor 'branded' are meant in any negative way.
> 
> We did have this conversation when we started work on the 1.2 release of
> Hob, but somehow we settled for a middle way that is not working well and
> is causing issues like bug 1701. From my conversations with UI engineers
> and people with lots of experience in building applications using the GTK
> toolkit, the middle way just doesn't work.
> 
> What I mean by 'vanilla' is an implementation that takes the visual
> appearance from the theme installed in the Hob host. The main advantage of
> vanilla implementations is they guarantee that Hob will play nicely with
> its host computer.

This would be very much preferred in my opinion. Having applications
that ignore the preferences I have set for theme, colors, fonts, etc. is
very annoying. Applications that ignore the GNOME HIG are even more
irritating as the button layout and general workflow is enough different
from the rest of the applications in my desktop that they become awkward
to use and break the continuity of the desktop experience.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

