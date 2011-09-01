Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3840CE01211
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2011 11:22:03 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 Sep 2011 11:22:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,314,1312182000"; d="scan'208";a="47283196"
Received: from unknown (HELO [10.255.14.33]) ([10.255.14.33])
	by fmsmga001.fm.intel.com with ESMTP; 01 Sep 2011 11:22:02 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Saxena, Rahul" <rahul.saxena@intel.com>
In-Reply-To: <4FF5AC937153B0459463C1A88EB478F2012E1E590F@orsmsx505.amr.corp.intel.com>
References: <4FF5AC937153B0459463C1A88EB478F2012E1E54F9@orsmsx505.amr.corp.intel.com>
	<4FF5AC937153B0459463C1A88EB478F2012E1E590F@orsmsx505.amr.corp.intel.com>
Date: Thu, 01 Sep 2011 13:21:56 -0500
Message-ID: <1314901316.10191.26.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: e100 driver does not build
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
X-List-Received-Date: Thu, 01 Sep 2011 18:22:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-09-01 at 11:11 -0700, Saxena, Rahul wrote:
> Yes, the problem was due to missing dependent options..
> I had incorrectly assumed that dependent options would get pulled in 
> or perhaps a error would  be generated.
> It worked after I added following 3 options stated as dependent options
> in a Kernel configuration database that I saw:
> 
> CONFIG_ISA
> CONFIG_EISA
> CONFIG_NET_PCI
> 
> I am still iterating to check if all three of the above are really needed or
> or if just the CONFIG_NET_PCI option is needed. 
> 
> I had enabled the option using a .cfg file.  Also checking again to see if a warning
> gets generated when the dependent options are not included.
> 

Note that it's also part of the intel-1xxxx feature, which is basically
there for reusability - they were all together in a bunch of BSPs so I
moved them into a feature.  I'm wondering whether we want to break them
up or at least create a separate e100 feature.

> BTW what does a message such as following in the .config file mean ?
> 
> "CONFIG_xxxxx is not set"  
> 

It means that config option was never set or got turned off because of
unmet depencies.

Tom

> 
> Thanks
> Rahul
> 
> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com] 
> Sent: Wednesday, August 31, 2011 6:27 PM
> To: Zanussi, Tom
> Cc: Saxena, Rahul; yocto@yoctoproject.org
> Subject: Re: [yocto] e100 driver does not build
> 
> On 11-08-31 7:18 PM, Tom Zanussi wrote:
> >
> > On Wed, 2011-08-31 at 16:04 -0700, Saxena, Rahul wrote:
> >> I am unable to get the e100 driver to build for my BSP.
> >>
> >> I have configured to build it as a module. I do  not see the e100.ko
> >> file being generated nor does
> >>
> >>   CONFIG_E100 appear in the generated .config file in my build area.
> >>
> >>
> >>
> >> However I do see the driver source file e100.c in
> >>    tmp/work/bspname-poky-linux/linux-yocto-3.0.3+git1
> >> +xxxx ../linux/drivers/net
> >>
> >>
> >>
> >> I do not have any problems with other drivers (igb, E1000 etc)  that I
> >> have configured in exactly similar way.
> >>
> >>
> >>
> >> Any insight on this issue ?
> >>
> >
> > It's probably missing another option it depends on e.g. is
> > CONFIG_NET_PCI and CONFIG_MII enabled in your .config?
> 
> This is most likely what it is.
> 
> Out of curiosity, how did you enable the option ? Via a config fragement
> (.cfg file) or via menuconfig .. or something else?
> 
> If you tried to set something via a fragment and it doesn't make it to
> the final .config, you should see a warning during the kernel build
> phase.
> 
> Cheers,
> 
> Bruce
> 
> >
> > Tom
> >
> >>
> >>
> >> Thanks
> >>
> >> Rahul
> >>
> >>
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



