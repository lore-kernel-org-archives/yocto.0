Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB774E0083C; Mon,  6 Mar 2017 12:56:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 404B4E007AD
	for <yocto@yoctoproject.org>; Mon,  6 Mar 2017 12:56:08 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga104.jf.intel.com with ESMTP; 06 Mar 2017 12:56:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,255,1484035200"; d="scan'208";a="72896571"
Received: from ngocnhum-mobl11.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.134.221])
	by fmsmga005.fm.intel.com with ESMTP; 06 Mar 2017 12:56:06 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 07 Mar 2017 09:56:03 +1300
Message-ID: <1603689.QGsDRQ6uvD@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <0156f20f-65fc-9b3e-bc12-a9cca34980f7@mlbassoc.com>
References: <f0b0b440-ecd9-50df-9af7-8990b1a04c11@mlbassoc.com>
	<CAJTo0LaCsa=5UVKLYe+Y6OUsjJpHZ9vA_wrcnFT2saoo+92dmA@mail.gmail.com>
	<0156f20f-65fc-9b3e-bc12-a9cca34980f7@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Files missing from SDK
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
X-List-Received-Date: Mon, 06 Mar 2017 20:56:10 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 7 March 2017 2:28:22 AM NZDT Gary Thomas wrote:
> On 2017-03-06 13:22, Burton, Ross wrote:
> > On 3 March 2017 at 06:39, Gary Thomas <gary@mlbassoc.com 
<mailto:gary@mlbassoc.com>> wrote:
> >     I'm trying to build SDKs for my board, both the native style
> >     using populate_sdk_ext as well as including the SDK packages
> >     in my image.  My image includes some extended libraries of
> >     my own packaging (am335x-pru-support) that I need to get into
> >     these SDKs.  This package (via debian renaming) turns into
> >     
> >       libprussdrv-dbg - 2016-08-30-r0.23 - am335x-pru-support version
> >       2016-08-30-r0 - Debugging files libprussdrv-dev - 2016-08-30-r0.23
> >       - am335x-pru-support version 2016-08-30-r0 - Development files
> >       libprussdrv-staticdev - 2016-08-30-r0.23 - am335x-pru-support
> >       version 2016-08-30-r0 - Development files (St) libprussdrv1 -
> >       2016-08-30-r0.23 - am335x-pru-support version 2016-08-30-r0>     
> >     On my board/image, I can get the files I need but only if I manually
> >     include libprussdrv-dev>     
> >       # opkg files libprussdrv-dev | sort
> >       /usr/bin/pasm
> >       /usr/include/pruss/
> >       /usr/include/pruss/pruss_intc_mapping.h
> >       /usr/include/pruss/prussdrv.h
> >       /usr/lib/libprussdrv.so
> >     
> >     How can I get these automatically added to my SDK images?  To build
> >     the
> >     
> >     board SDK, I'm adding these packages to my image:
> >       CORE_IMAGE_EXTRA_INSTALL = "packagegroup-core-sdk
> >       packagegroup-core-standalone-sdk-target">     
> >     I suppose I could add libprussdrv-dev to that list, but I'd like it a
> >     bit more automated.>     
> >     For the native SDK, I tried adding this to local.conf:
> >       TOOLCHAIN_HOST_TASK_append = " nativesdk-am335x-pru-support"
> >     
> >     which only got me the 'pasm' tool in my sysroot, but nothing else.
> > 
> > If libprussdrv1 is in your image then the -dev package should be pulled
> > into your SDK images, assuming that you have IMAGE_FEATURES+=dev-pkgs
> > already.
> 
> Thanks, that did it for the embedded SDK

That shouldn't actually be necessary. IMAGE_FEATURES controls what goes into 
the image, adding dev-pkgs to that is going to include those in the image, not 
just the SDK. We have a SDKIMAGE_FEATURES and the default value of that 
includes dev-pkgs. If libprussdrv1 is in the image and SDKIMAGE_FEATURES is at 
the default (or otherwise includes dev-pkgs) I have to say I'm not sure what 
would be preventing this from working.

> > The same should mean that standalone SDKs (populate_sdk-style) contain the
> > headers too.  Worse case, TOOLCHAIN_TARGET_TASK_append = "
> > libprussdrvi-dev".
> 
> Sadly, this still doesn't work.  With the TOOLCHAIN* line above, I get:
>    ERROR: Nothing RPROVIDES 'libprussdrv1-dev'
> Without it, no changes - the bits are still missing.

As with almost all variables, in TOOLCHAIN_TARGET_TASK you want the recipe-
space name of the package, not the final (post debian-renamed) name.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

