Return-Path: <darren.hart@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8084EE006D9
	for <yocto@yoctoproject.org>; Fri,  8 Jun 2012 07:41:37 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 08 Jun 2012 07:41:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="153548402"
Received: from unknown (HELO envy.home) ([10.255.12.197])
	by azsmga001.ch.intel.com with ESMTP; 08 Jun 2012 07:41:36 -0700
Message-ID: <4FD20ED9.4090809@intel.com>
Date: Fri, 08 Jun 2012 07:40:25 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
References: <CBF7C947.109A2%belen.barros.pena@intel.com>
In-Reply-To: <CBF7C947.109A2%belen.barros.pena@intel.com>
Cc: "Lock, Joshua" <joshua.lock@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 08 Jun 2012 14:41:37 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 06/08/2012 07:28 AM, Barros Pena, Belen wrote:
> Vanilla 5 - branded 0 :)
> 
> Shane, Dongxiao and Alex: from an implementation point of view, I guess
> this means eliminating any hardcoded UI-related values (button colours and
> styles, for example).

GTK should be able to pull those colors and styles from the existing
theme. As Joshua mentioned in a hallway conversation, the highlight
color of the theme can be requested and used, rather than using a
hardcoded one. This still allows for customization of the UI, but keeps
the color scheme consistent.

> Joshua: if you have a rough idea of the things that
> will need to be changed from the work you did before the 1.2 release,
> please let us know. I think we should keep the existing icons, though.
> What do you think?

The existing artwork and general layout are nice and help indicate
intended usage. In my humble opinion, they should stay.

--
Darren

> 
> Shane: will I log this in bugzilla so that you can assign it a milestone
> and an owner?
> 
> Thanks
> 
> Belen
> 
> On 31/05/2012 20:01, "Burton, Ross" <ross.burton@intel.com> wrote:
> 
>> Hi Belen,
>>
>> On 31 May 2012 17:55, Barros Pena, Belen <belen.barros.pena@intel.com>
>> wrote:
>>> As part of the Hob work for the 1.3 release it looks like we need to
>>> make
>>> a visual design and implementation decision: do we want a 'vanilla' or a
>>> 'branded' look for Hob? Sorry if the choice of words is not the best.
>>> Neither 'vanilla' nor 'branded' are meant in any negative way.
>>
>> Vanilla, definitely.  Aside from sticking out like a sore thumb on the
>> user's desktop, a "branded" interface in something like GTK+ is
>> normally trickier to implement.
>>
>> Ross
> 
> ---------------------------------------------------------------------
> Intel Corporation (UK) Limited
> Registered No. 1134945 (England)
> Registered Office: Pipers Way, Swindon SN3 1RJ
> VAT No: 860 2173 47
> 
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

