Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E301CE009A5; Thu,  2 Feb 2017 17:54:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5255E00998
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2017 17:54:12 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga105.jf.intel.com with ESMTP; 02 Feb 2017 17:54:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,327,1477983600"; d="scan'208";a="1090300983"
Received: from shermanc-mobl2.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.134.229])
	by orsmga001.jf.intel.com with ESMTP; 02 Feb 2017 17:54:09 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 03 Feb 2017 14:54:07 +1300
Message-ID: <7584430.GtjaL60tIm@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/5.3.3 (Linux/4.9.6-200.fc25.x86_64; KDE/5.29.0; x86_64; ; )
In-Reply-To: <6be2ac85-ea27-993e-faff-f3c4a8a53ecf@mlbassoc.com>
References: <f13af171-a99e-cfb4-176b-4c1a5d459c44@mlbassoc.com>
	<61560e1d-6f14-58ec-0a87-36320fe8c0d8@mlbassoc.com>
	<6be2ac85-ea27-993e-faff-f3c4a8a53ecf@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: esdk without using Poky?
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
X-List-Received-Date: Fri, 03 Feb 2017 01:54:16 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 31 January 2017 8:09:01 AM NZDT Gary Thomas wrote:
> On 2017-01-04 14:25, Gary Thomas wrote:
> > On 2017-01-04 13:54, Patrick Ohly wrote:
> >> On Wed, 2017-01-04 at 12:05 +0100, Gary Thomas wrote:
> >>> On 2016-11-04 04:41, Paul Eggleton wrote:
> >>>> On Wed, 02 Nov 2016 07:25:13 Gary Thomas wrote:
> >>>>> I've tested your patches for this (from the OE-core mailing list)
> >>>>> and I can now build and use the eSDK for my board :-)
> >>>> 
> >>>> Great!
> >>>> 
> >>>>> I do have a couple observations/questions:
> >>>>> 
> >>>>> * I added my missing tool with this line in my local.conf
> >>>>> 
> >>>>>       TOOLCHAIN_HOST_TASK_append = " nativesdk-ti-cgt-pru"
> >>>>>    
> >>>>>    Why did this cause many of the nativesdk tools to have to be
> >>>>>    rebuilt?
> >>>> 
> >>>> So just FYI this will only work for the standard SDK, it's not the
> >>>> right way to add these tools for the eSDK - in fact it may break the
> >>>> eSDK due to bringing things into the native sysroot that shouldn't be
> >>>> there.
> >>>> 
> >>>> At the moment I think the only way to properly add this to the eSDK is
> >>>> to do this:
> >>>> 
> >>>> SDK_TARGETS += "ti-cgt-pru-native:do_populate_sysroot"
> >>>> 
> >>>> We don't document this, and it's a little awkward in any case. I'll
> >>>> work on
> >>>> it.
> >>> 
> >>> This was working great for me until I just upgraded to the latest [poky]
> >>> master (rev dbb247cac5fbf7b037e4955f9793828451723924).  With the
> >>> SDK_TARGETS line in my local.conf, I get this error:
> >>> 
> >>> ERROR: Error for
> >>> /local/poky-cutting-edge/meta-rainier-am335x-p8701/packages/images/magi
> >>> card-demo-image_1.0.bb, dependency
> >>> ti-cgt-pru-native:do_populate_sysroot:do_populate_sysroot>>> 
> >>                                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> >>>  
> >>>  does not contain exactly one ':' character.
> >>>  
> >>>   Task 'rdepends' should be specified in the form 'packagename:task'
> >>> 
> >>> Any ideas what changed and how I get it working again?
> >> 
> >> I enhanced the error checking, and the rdepends varflag in your example
> >> indeed isn't valid. ":do_populate_sysroot" got appended twice to the
> >> recipe name. That error got ignored silently earlier.
> >> 
> >> populate_sdk_ext.bbclass appends ":do_populate_sysroot" when setting
> >> 
> >> do_sdk_depends[rdepends], so you should use just:
> >>    SDK_TARGETS += "ti-cgt-pru-native"
> > 
> > Thanks that worked - at least I can build, I haven't checked the esdk yet.
> 
> Sadly, this is broken once again.  I just upgraded my Poky/Yocto
> to rev d45d4a5a21ab4209b87331dddf515ecdb62367fa and if I have the
>    SDK_TARGETS += "ti-cgt-pru-native"
> in my local.conf, I get this hard error:
> 
> ERROR: Task do_sdk_depends in
> /home/gary/tmp/p8701_2017-01-31/opt/amltd/poky/meta-rainier-am335x-p8701/pac
> kages/images/installer-image.bb rdepends upon non-existent task
> do_package_write_ipk in
> virtual:native:/home/gary/tmp/p8701_2017-01-31/opt/amltd/poky/meta-ti/recipe
> s-ti/devtools/ti-cgt-pru_2.1.1.bb ERROR: Command execution failed: 1
> 
> Any ideas how to proceed?

Sorry for the delay - I have a fix for this that I'll send out soon (basically 
drop setting SDK_RDEPENDS in populate_sdk_ext.bbclass). I'm not sure what 
happened recently to cause this to come up, but the dependency is erroneous 
and it appears SDK_REPENDS doesn't need to be set anyway.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

