Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74464E005B3
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 08:12:35 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 12 Sep 2013 08:12:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,891,1371106800"; d="scan'208";a="394789959"
Received: from ks-mobl3.gar.corp.intel.com (HELO helios.localnet)
	([10.252.123.176])
	by fmsmga001.fm.intel.com with ESMTP; 12 Sep 2013 08:12:33 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Ashish Dalela <ashish.dalela@gmail.com>
Date: Thu, 12 Sep 2013 16:12:32 +0100
Message-ID: <2226787.84MgiCFZLh@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-29-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CABhkJRc+Ae1oYAP8821rYU8z0d5C9cHpoXVXL3vXdVnzSbx2jA@mail.gmail.com>
References: <CABhkJRdQQ2HaXCrah=544uAn6Ys=gspTdmuSOa2VHv_gJASmKA@mail.gmail.com>
	<CAP71WjwqPUS3JTZAswd6ULWXX8CTh4_F1X_MLjJO8tAw47mOYg@mail.gmail.com>
	<CABhkJRc+Ae1oYAP8821rYU8z0d5C9cHpoXVXL3vXdVnzSbx2jA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Error while building a custom image
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
X-List-Received-Date: Thu, 12 Sep 2013 15:12:36 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 12 September 2013 19:31:59 Ashish Dalela wrote:
> On Thu, Sep 12, 2013 at 7:27 PM, Nicolas Dechesne <
> nicolas.dechesne@linaro.org> wrote:
> > On Thu, Sep 12, 2013 at 3:52 PM, Ashish Dalela
> > <ashish.dalela@gmail.com>wrote:
> >> I tried a small change. I removed the packagegroup entry and added the
> >> following to meta/recipes-extended/images/core-image-basic.bb
> >> 
> >> IMAGE_INSTALL += "tpmc"
> >> 
> >> Now, when I do a bitbake core-image-basic, I get this error:
> >> 
> >> *Error: tpmc not found in the base feeds (qemux86 i586 i486 i386 x86
> >> noarch any all).*
> >> *
> >> *
> >> Can someone please help? It's probably something quite simple but I'm not
> >> getting it.
> > 
> > did you add your layer to BBLAYERS in conf/bblayer.conf file?
> > 
> > does "bitbake tpmc" actually build your recipe?
>
> Yes, bitbake tpmc is successful.
> 
> Also, I added my layer to the BBLAYERS in the build/conf/bblayers.conf file.

Without further details it sounds like a "tpmc" package is being provided by a 
recipe, but when it came to packaging for that recipe, the "tpmc" package was 
empty. Check that the "tpmc" recipe has appropriate PACKAGES / FILES values 
and that files are being installed into the correct paths within in do_install.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

