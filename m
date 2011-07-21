Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id EB04B4C800A1
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2011 17:53:21 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 Jul 2011 15:53:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,244,1309762800"; d="scan'208";a="33194505"
Received: from unknown (HELO [10.255.14.55]) ([10.255.14.55])
	by fmsmga001.fm.intel.com with ESMTP; 21 Jul 2011 15:53:19 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Andre Haupt <andre@bitwigglers.org>
In-Reply-To: <20110719101547.GA18149@localhost.localdomain>
References: <20110719101547.GA18149@localhost.localdomain>
Date: Thu, 21 Jul 2011 17:53:17 -0500
Message-ID: <1311288797.2316.20.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: building crownbay images
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
X-List-Received-Date: Thu, 21 Jul 2011 22:53:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-07-19 at 03:15 -0700, Andre Haupt wrote:
> Hi all,
> 
> I am new to Yocto and to Distro work in general.
> 
> I want to use Yocto on the Kontron nanoETXexpressTT boards.
> (http://de.kontron.com/products/computeronmodules/com+express/com+express+ultra/nanoetxexpresstt.html)
> 
> These boards are based on the Intel Atom E6xx and the EG20T platform
> controller hub, so i think it is a good idea to start with the crownbay
> BSP.
> 
> What would be the best, known to work, way to produce crownbay-noemgd images
> for poky bernard?
> Should i use git? Which branches should i use (the docs are contraditing
> at least in parts)?
> 

Hi Andre,

Sorry for not replying earlier - was (and still am) out on vacation.  In
the Downloads | BSP section on the Yocto site, there's a 'transcript
from git checkout to meta-intel BSP' link that you should be able to use
to get started building meta-intel images using git, including crownbay.
You'll have to adapt it slightly for crownbay-noemgd e.g. use
'crownbay-noemgd' machine name instead of the 'fishriver' that the
example uses, change directory names for your system, etc.

Also, if you follow the 'Board Support Package (BSP) Downloads' link on
the same page, to the 'Intel Atom Processor E660 with Intel Platform
Controller Hub EG20T Development Kit', Version 5.0 Bernard, to the
'Building the Meta-crownbay BSP Layer' section, you can find
instructions on building the 'crownbay-noemgd' BSP from the
poky-bernard-5.0 tarballs and the crownbay-noemgd-bernard-5.0 tarball.
These are also contained in README file in the BSP download.

You should be able to use either method to get a crownbay-noemgd image
for bernard, depending only on your preference.

If there are contradictions in the documentation, or if you can think of
a better way to make this info accessible to new users, please let me
know the specifics and we can fix the website and/or documentation...

> I read somewhere, that i should install Yocto to /usr/local/src/yocto.
> Is this really necessary?
> 

No, this isn't necessary - it just happens to be where I did the build
for the example.  You can use any location you want for the BSP build
directory.

Hope that helps,

Tom

> Thanks for any hints.
> 
> regards,
> 
> Andre
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



