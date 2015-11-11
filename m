Return-Path: <randy.e.witt@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01946E008A2; Tue, 10 Nov 2015 16:06:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31719E007C3
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2015 16:06:04 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 10 Nov 2015 16:06:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,272,1444719600"; d="scan'208";a="847462569"
Received: from bitbang.jf.intel.com ([10.7.199.99])
	by orsmga002.jf.intel.com with ESMTP; 10 Nov 2015 16:06:04 -0800
To: Michael Habibi <mikehabibi@gmail.com>, yocto@yoctoproject.org
References: <CAOsp8o8rHuiaWjOKWSbW+a5kVX1kegKpfiVto4VtK3V99ZY=mA@mail.gmail.com>
From: Randy Witt <randy.e.witt@linux.intel.com>
Message-ID: <5642866B.8090501@linux.intel.com>
Date: Tue, 10 Nov 2015 16:06:03 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CAOsp8o8rHuiaWjOKWSbW+a5kVX1kegKpfiVto4VtK3V99ZY=mA@mail.gmail.com>
Subject: Re: Transitioning to Yocto, some basic questions about workflow
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
X-List-Received-Date: Wed, 11 Nov 2015 00:06:06 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Michael,

See my replies below.

On 11/10/2015 02:27 PM, Michael Habibi wrote:

>
>
> This is fundamentally why I have been looking into Yocto/BB/OE as a
> potential replacement distribution. However, I have a couple questions
> stemming from my research. We can leverage the existing Yocto build for
> various open source utilities where it pulls from the web, patches, builds,
> and installs into the deployable image. We would probably want to colocate
> the tarballs locally, because we would like to prevent people from having
> to fetch from the web during build cycles.
>

This is pretty common. You can set up SOURCE_MIRROR_URL, to specify local 
mirrors to try before using the upstream url in the recipe. So each person 
building would at least have to fetch from the local mirror for a build, but 
subsequent builds wouldn't require fetching again as long as the DL_DIR was 
preserved.
https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-SOURCE_MIRROR_URL
https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-DL_DIR

>
> I see that Yocto thinks of the deployable image and applications as
> separate entities: first you'd build the distribution, then you would use
> ADT/cross-toolchain/etc to build the applications and install them
> separately. However, in our environment, we would need all of our custom IP
> applications to be built as part of the deployable image, and not as a
> separate procdure. For example, if I were to call "bitbake our-image", I
> would like the deployable image to contain 1) the kernel, 2) various core
> utilities and libraries for booting, and 3) our custom applications for our
> device.
>
>
> This means that somewhere in the yocto framework, we'd ideally have some
> source code somewhere that would also be compiled via recipes/classes that
> we'd have to custom write. Is there a best practice for this kind of
> workflow? I don't mind not having source checked in to our VCS for things
> like the kernel, OpenSSL, etc (those can be tarballs obtained from a local
> server), but we likely wouldn't want to host tarballs for the applications
> we are writing and modifying day-to-day by dozens of engineers. Is there a
> place where this source would best fit? Would it be under build/tmp/etc, or
> perhaps we can locate the source under a layer directory, like
> meta/source/our-ip-applications?
>

For all the internal applications at my previous employer we had a layer for all 
internal items, it's quite common.

And if you're not aware, source code is not restricted to tarballs. You can use 
git repos, svn and any mechanism the fetcher supports.(even local directories) 
The following URL lists the types the fetcher supports.
https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-SRC_URI

The workflow now encouraged, is to use recipetool to assist in creating recipes. 
And then once the recipes are created, you can use devtool to actually do the 
iterative development on the application represented by the recipe.
https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#using-devtool-in-your-workflow

>
> Or perhaps this workflow is just not recommended or supported by the Yocto
> Project? If that's the case, does Yocto only recommend building the
> distribution then building the applications as completely separate
> workflows? Or is there another workflow that I haven't stumbled across yet?
>

There is nothing "wrong" with building the image each time as a developer. 
However, it is time consuming to construct the full image and deploy it.

A much more appealing mechanism would be to use devtool to build the recipe you 
are working on, and then use "devtool deploy-target" to then deploy the output 
to a live machine. This would require a writeable filesystem on the target 
device, but if that is available, the workflow and turnaround time is much faster.

>
> Thanks again for all your help, and let me know if I can help clarify
> anything,
>
>
> Michael
>
>
>


