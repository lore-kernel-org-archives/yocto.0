Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF30DE013AE
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 03:48:37 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Jul 2013 03:48:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,777,1367996400"; d="scan'208";a="373380340"
Received: from unknown (HELO helios.localnet) ([10.252.122.217])
	by fmsmga001.fm.intel.com with ESMTP; 30 Jul 2013 03:48:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Navani Srivastava <navani.srivastava@gmail.com>
Date: Tue, 30 Jul 2013 11:48:35 +0100
Message-ID: <1843652.5ibqSWhFnV@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-26-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CA+Z6RkWUnice-MrWSXpfA1_+cuFYXgukbfK69oFgmPjWow4W9g@mail.gmail.com>
References: <CA+Z6RkUS6gZw3-fzW_muVBC5Cq5Wz7Bo3P+YEVJKf+1OV9=sKg@mail.gmail.com>
	<4728393.KjK4Yh0aOO@helios>
	<CA+Z6RkWUnice-MrWSXpfA1_+cuFYXgukbfK69oFgmPjWow4W9g@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org,
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: bitbake -c populate_sdk -v poky-image
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
X-List-Received-Date: Tue, 30 Jul 2013 10:48:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 30 July 2013 14:35:40 Navani Srivastava wrote:
> > I think the problem is this:
> > require recipes-core/meta/meta-toolchain.bb
> 
> Yes, it worked.. Thanks
> 
> > You shouldn't be adding this to an image recipe, and definitely not poky-
> > image.bbclass.
> then? Is it possible to create .bbappend kind of file for .bbclass which
> can append the information or I have to duplicate toolchain-script.bbclass
> in my layer?

Sure, you can add the script append and the additional TOOLCHAIN_HOST_TASK 
items in an additional bbclass in your layer and then inherit that in your 
image recipe; just don't require meta-toolchain.bb because that has other 
side-effects.

> >>What version of the build system are you using?
> 
> I am using poky danny (8.0.2)

OK, in that case why are you using poky-image.bbclass? That was replaced by 
core-image.bbclass in the edison release if I recall correctly, which was 
quite a while ago.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

