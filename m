Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 455BFE0045D
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 02:20:06 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 18 Oct 2012 02:20:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,606,1344236400"; d="scan'208";a="205985025"
Received: from unknown (HELO helios.localnet) ([10.252.122.102])
	by azsmga001.ch.intel.com with ESMTP; 18 Oct 2012 02:20:04 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Date: Thu, 18 Oct 2012 10:20:02 +0100
Message-ID: <1444424.PbzRs5XmCV@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-32-generic-pae; KDE/4.9.2; i686; ; )
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A86E2E@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A85CDB@ORSMSX101.amr.corp.intel.com>
	<CA+gsK-ovhd30EZ3R68R=o4=iWb5MJqZAAenwRo2yJg+_Tn1NTQ@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A86E2E@ORSMSX101.amr.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Requesting information on some variables
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
X-List-Received-Date: Thu, 18 Oct 2012 09:20:06 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 17 October 2012 21:07:20 Rifenbark, Scott M wrote:
> Thanks for the added investigation here.  The original bug report listed
> COMMON_FEATURES as an undocumented variable.  I see, however, that the
> variable referred to by both you and Paul Eggleton is COMBINED_FEATURES.  I
> just did a grep through my entire poky tree, which had built out the
> core-image-minimal image for the qemux86 MACHINE and came up empty for
> "COMMON_FEATURES" except where the string is part of other variables.  So,
> it appears there is no COMMON_FEATURES variable.
>
> According to Paul, COMBINED_FEATURES is a list of features common to both
> MACHINE_FEATURES and DISTRO_FEATURES.

Yes, the variable is COMBINED_FEATURES.

> It also seems that the lists presented in the documentation for both valid
> distro and machine options are not really finite lists.

Correct, the list is not set in stone. People are free to add new features to 
MACHINE_FEATURES and DISTRO_FEATURES in their own setups and check for them in 
their own recipes/configuration files if it helps them handle different machines 
they want to target or different types of distros they want to build 
respectively. However, we should document all of the features we have defined 
out of the box.

> But, the fact that you grep'ed out such a huge list of
> DF below shows that they far exceed the 16 features listed in the
> documentation.  I'll update the preamble to the "Distro" and "Machine"
> sections in the reference manual when I get the real story on those lists.

I can try to help document all of the features. It's possible that some of 
them that we refer to are effectively placeholders that don't do anything at 
the moment (e.g. ipv6 in DISTRO_FEATURES).

> I don't know the relationship between "features" and "packages"...  maybe it
> is a one-to-one relationship. 

It's definitely not 1-1, and sometimes a feature doesn't just control the 
installation of a package or packages, but influences how certain recipes are 
built, e.g. it might determine whether a particular configure option is 
specified within do_configure for a particular recipe.

> But, there are some other variables that
> affect packages and features (according to the documentation) that are
> considered during the build.  These are the ones listed in the manual's
> glossary section:
> 
> *         MACHINE_ESSENTIAL_EXTRA_RDEPENDS
> 
> *         MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS
> 
> *         MACHINE_EXTRA_RDEPENDS
> 
> *         MACHINE_EXTRA-RRECOMMENDS
> 
> *         DISTRO_EXTRA_RRECOMMENDS

Let's not muddy the waters too much here - these aren't directly related to 
features although they are related to machine and distro configuration.

> I suspect that there is a DISTRO_EXTRA_RDEPENDS variable as well but I don't
> have it in the manual (should be added if so).  

Yes, that exists and should be documented.

> Also, not sure if there are variables for DISTRO_ESSENTIAL_EXTRA_RDEPENDS
> and DISTRO_ESSENTIAL_EXTRA_RRECOMMENDS.  If those really exist, then I need
> to add them as well.

No, there are no such variables.

> Finally, the BACKFILL variables also contribute to the MACHINE_FEATURES and
> DISTRO_FEATURES set.  It looks like *_FEATURES_BACKFILL, which is set in
> the bitbake.conf file, is a way to make sure a feature is always included
> as part of *_FEATURES. While *_BACKFILL_CONSIDERED is used in specific
> machine configurations (<machine>.conf) to disable a particular feature
> when it also appears with *_FEATURES_BACKFILL.   So these variables add to
> the mix also.

We have added the 9.4 section on "Feature backfilling" that should cover what 
these are for and how they work. If the explanation there is not clear enough 
then by all means lets enhance that section and/or the entries in the glossary 
for these variables, but they are at least documented now.
 
Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

