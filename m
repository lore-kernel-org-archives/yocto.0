Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3AECE007F2; Wed, 17 Feb 2016 02:07:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A9DEE00404
	for <yocto@yoctoproject.org>; Wed, 17 Feb 2016 02:07:58 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Feb 2016 02:07:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,459,1449561600"; d="scan'208";a="914065220"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.255.133.6])
	by orsmga002.jf.intel.com with ESMTP; 17 Feb 2016 02:07:28 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: gmane@reliableembeddedsystems.com
Date: Wed, 17 Feb 2016 23:07:25 +1300
Message-ID: <3066941.Zu6KT7nLmM@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.3.5-300.fc23.x86_64; KDE/4.14.16; x86_64; ;
	)
In-Reply-To: <5c17683eb1b7ade5712032f603470aee@reliableembeddedsystems.com>
References: <b30acf5cbe7f661029158ab7e80a2ba4@reliableembeddedsystems.com>
	<CAJTo0LZmM_h3+KcuTeBPmwxGi0RiELLDcghrLhbDo7MEBiadTg@mail.gmail.com>
	<5c17683eb1b7ade5712032f603470aee@reliableembeddedsystems.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, chris_larson@mentor.com
Subject: Re: jethro 2.0.1/ubi-utils not installed on target
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
X-List-Received-Date: Wed, 17 Feb 2016 10:07:59 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Wed, 17 Feb 2016 02:47:46 gmane@reliableembeddedsystems.com wrote:
> On 2016-02-16 05:40, Burton, Ross wrote:
> > On 16 February 2016 at 09:03, <gmane@reliableembeddedsystems.com>
> > wrote:
> >> It seems to be insufficient to add mtd-utils to a packagegroup[1]
> >> and add this to the image for it to be installed in the image.
> >> The package is being built and I can install it afterwards e.g.
> >> opkg install mtd-utils-ubifs_1.5.1+git0+9f107132a6-r0_armv7a
> >> 
> >> Is it intended to be like this?
> > 
> > Yes.  As you said the resulting package is called mtd-utils-ubifs, so
> > that's the name you need to use in the packagegroup.
> 
> Thanks. I figured this out in the meantime;)
> 
> I looked into mtd-utils.bb and the packages built where I found
> mtd-utils-ubifs, which does not seem a very generic approach.
> 
> One recipe can result in more than one packages, so
> 
> -s, --show-versions   Show current and preferred versions of all
> recipes.
> 
> does not show all packages.

No, because bitbake -s lists recipes, not packages.

If you want the complete list of packages you can only get it after a recipe 
has been built, at which time oe-pkgdata-util can be used:

$ oe-pkgdata-util list-pkgs -p mtd-utils
mtd-utils-jffs2
mtd-utils-ubifs
mtd-utils-misc
mtd-utils-dbg
mtd-utils-dev
mtd-utils-doc
mtd-utils

The reason this is only available after building (strictly speaking, after 
do_packagedata has executed for the recipe in question) is that often the list 
of packages isn't determined until then; for example, kernel module packages 
are completely dynamic based on those modules that are enabled.

Cheers,
Paul

PS if you wish to email me could you please use my email address rather than 
the gmane alias you're currently using.

-- 

Paul Eggleton
Intel Open Source Technology Centre

