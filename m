Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA6D6E005B3
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 01:01:40 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 14 Jun 2013 00:59:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,864,1363158000"; d="scan'208";a="349740591"
Received: from unknown (HELO helios.localnet) ([10.252.122.5])
	by fmsmga001.fm.intel.com with ESMTP; 14 Jun 2013 01:02:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Fri, 14 Jun 2013 09:01:36 +0100
Message-ID: <1697634.ESZob0aX4t@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-23-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <CAMKF1sqs4O9s41bnF+Nt_mHw6dB-cmiwo_0-YGovc4vppo8rHw@mail.gmail.com>
References: <AD1643F765234DAB82EE48FFF72638C3@PAULD>
	<CAMKF1sqs4O9s41bnF+Nt_mHw6dB-cmiwo_0-YGovc4vppo8rHw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Where do image names come from?
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
X-List-Received-Date: Fri, 14 Jun 2013 08:01:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 13 June 2013 18:26:10 Khem Raj wrote:
> On Thu, Jun 13, 2013 at 4:04 PM, Paul D. DeRocco <pderocco@ix.netcom.com>
> wrote:
> > Where does the base name of the image files in build/tmp/deploy/images
> > come from? More to the point, if I create my own image recipe in my own
> > layer, what control do I have over the name of the resulting image files?
> > I'd like to be able to create more than one variant, and not have to
> > remember which is which based on the build times appended to the file
> > names.
>
> IMAGE_BASENAME variable is used to define name. by default its same as
> PN of image recipe.

You should probably just have different image recipes for this - problem 
solved.
 
> > A related question: section 5.2.1 of the dev-manual says I can create a
> > custom image based on an existing image by copying that image recipe and
> > then modifying it. Is there some reason I can't use a .bbappend for this,
> > e.g., core-image-base.bbappend?
> 
> you can but then its a different image. You dont have to copy you can
> also include the existing image recipe in your recipe and add
> customizations.

The reasoning for documenting it that way is that usually image recipes are so 
trivial there's not much point in extending an existing recipe, plus you 
usually want to give it your own name; and if you did extend an existing 
recipe you would potentially pick up any changes to the original recipe which 
may not be desirable if you've already examined and approved the content of 
the image. Unlike other recipes most of the time it's just simpler and less 
maintenance to just copy and edit the image recipe as desired.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

