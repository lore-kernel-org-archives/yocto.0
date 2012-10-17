Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50286E0027E
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 08:58:56 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 17 Oct 2012 08:58:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,601,1344236400"; d="scan'208";a="235106958"
Received: from unknown (HELO helios.localnet) ([10.252.122.85])
	by fmsmga001.fm.intel.com with ESMTP; 17 Oct 2012 08:58:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Date: Wed, 17 Oct 2012 16:58:54 +0100
Message-ID: <8390795.VYneHzJZUd@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-32-generic-pae; KDE/4.9.2; i686; ; )
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A85CDB@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A85CDB@ORSMSX101.amr.corp.intel.com>
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
X-List-Received-Date: Wed, 17 Oct 2012 15:58:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 17 October 2012 15:32:40 Rifenbark, Scott M wrote:
> There is a bug (https://bugzilla.yoctoproject.org/show_bug.cgi?id=3292)
> stating that we need better documentation describing how DISTRO_FEATURES,
> COMMON_FEATURES, and MACHINE_FEATURES actually affect the build.  I don't
> know anything about these variables beyond what is in the reference manual:
> 
> http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.html#va
> r-DISTRO_FEATURES
> http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.html#v
> ar-MACHINE_FEATURES (no current entry for  COMMON_FEATURES)
> 
> Can anyone provide additional information for these three variables and how
> they interact with the build system and with one another?

Looking at the bug report I'm guessing Darren was looking at the current 
version of the documentation prior to adding a link to the section that lists 
DISTRO_FEATURES options (which only got added recently). However that list is 
incomplete and even then it does not explain how you would determine what the 
actual effect of adding or removing a feature would be.

I think Darren's suggestion of using "git grep" to find the actual effect is 
good, after some preamble that mentions we use the "base_contains" function in 
various recipes and configuration files in order to change behaviour based on 
the presence or absence of features, giving at least one example from the 
current metadata.

Some explanation of how these variables relate to eachother:

* DISTRO_FEATURES is used to enable/disable software features (some of which 
are related to hardware feature support). This is set in the distro .conf file.

* MACHINE_FEATURES describes what hardware features a specific machine 
supports. It is set in the machine .conf file.

* COMBINED_FEATURES lists features both enabled by DISTRO_FEATURES and 
supported by the hardware as declared by MACHINE_FEATURES. It is set 
automatically by the build system.

The COMBINED_FEATURES mechanism allows a BSP to declare that a piece of 
hardware supports a feature, but a person building a distro (or OS) to decide 
that they don't want to support the feature; thus the feature only gets 
enabled in the software if it appears on in both places.

Cheers,
Paul

 
> Thanks,
> Scott
> 
> 
> Bug 3292
> 
> The documentation for the following variables:
> 
> DISTRO_FEATURES
> COMMON_FEATURES
> MACHINE_FEATURES
> 
> is inadequate to instruct would-be users of how changes will impact the
> system.
> 
> These variables combine to determine various aspects of how images and
> packages are built. They impact RDEPENDS of various packagegroups, impact
> the way live images are built, and certainly others. MACHINE_FEATURES as a
> documented list of values, DISTRO_FEATURES does not. I do not see
> COMMON_FEATURES listed at all.
> 
> A discussion of how these interrelate and how someone can discover the exact
> impact from the sources would be useful. For example, using "git grep
> 'contains.*MACHINE_FEATURES.*<FEATURE>'" to discover how the build is
> impacted would be a useful addition.
> 
> It isn't practical to define the dependency chains in the documentation, but
> providing the user with the background and tools to discover them seems
> appropriate.
> 
> 
> Scott Rifenbark
> Intel Corporation
> Yocto Project Documentation
> 503.712.2702
> 503.341.0418 (cell)
-- 

Paul Eggleton
Intel Open Source Technology Centre

