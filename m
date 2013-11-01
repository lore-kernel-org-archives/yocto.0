Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B73C7E017DC
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 04:32:30 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Nov 2013 04:32:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="383285576"
Received: from unknown (HELO helios.localnet) ([10.252.121.84])
	by azsmga001.ch.intel.com with ESMTP; 01 Nov 2013 04:32:28 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Date: Fri, 01 Nov 2013 11:32:27 +0000
Message-ID: <10981400.qX3sYBV1WQ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <52737C80.2020702@dynamicdevices.co.uk>
References: <52737C80.2020702@dynamicdevices.co.uk>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-mono] Question about Q/A installed vs shipped failure
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
X-List-Received-Date: Fri, 01 Nov 2013 11:32:31 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alex,

On Friday 01 November 2013 10:03:44 Alex J Lennon wrote:
> I'm looking at at the gtk-sharp recipe in meta-mono:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-mono/tree/recipes-mono/gtk-sh
> arp/gtk-sharp_2.10.2.bb
> 
> This defines the contents of various gtk-sharp related packages making
> use of FILES_foo = and PACKAGES =
> 
> When I try to build against the Yocto head it fails a Q/A check with
> "ERROR: QA Issue: gtk-sharp: Files/directories were installed but not
> shipped"
>
> Normally I would expect the extraneous files to be found in the image
> tree and add do_install_append() to rm the unneeded files from {$}D/foo/bar
> 
> However the behaviour of this recipe seems different.
> 
> For some reason the extraneous files are being found in the ../package
> tree. They are put there by the do_package() step, which is executed
> after my do_install_append().

This sounds a bit odd. Out of curiosity I just built gtk-sharp and it seems to 
me the files it's reporting as unpackages are under image/, which should allow 
them to be deleted. What are you adding to the recipe to try to fix this?

> I have tried adding a do_package_append() which I thought might help but
> bitbake won't accept this.

This shouldn't be necessary.
 
Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

