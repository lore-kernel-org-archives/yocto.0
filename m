Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 025BDE0086F; Tue, 23 Sep 2014 02:10:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5A89E00853
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 02:09:57 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by fmsmga103.fm.intel.com with ESMTP; 23 Sep 2014 02:00:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,578,1406617200"; d="scan'208";a="479396341"
Received: from curranmi-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.123.194])
	by azsmga001.ch.intel.com with ESMTP; 23 Sep 2014 02:09:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Matt Schuckmann <Matt.Schuckmann@planar.com>
Date: Tue, 23 Sep 2014 10:09:55 +0100
Message-ID: <37147476.ADdIiFqJFs@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.16.2-200.fc20.x86_64; KDE/4.14.1; x86_64; ; )
In-Reply-To: <4B07ADD556F70043925DA2E9C5D4346D2FD87281CF@MSXBEBVT12.planar.net>
References: <4B07ADD556F70043925DA2E9C5D4346D2FD87281CF@MSXBEBVT12.planar.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to include static library and headers in sdk
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
X-List-Received-Date: Tue, 23 Sep 2014 09:10:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 22 September 2014 18:57:03 Matt Schuckmann wrote:
> I've got a custom image and 2 custom recipes both very simple libraries that
> use cmake. I included the libraries into my image by adding
> EXTRA_IMAGEDEPENDS += "simple1"
> EXTRA_IMAGEDEPENDS += "simple2"
> To my image recipe.

Except this doesn't actually add those things into your image, it only ensures
they are built alongside it. To actually add them to the image you need to
ensure you add them to IMAGE_INSTALL; see:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage

> When I build my image (i.e. bitbake custom-image ) I can see that the
> library header files and .a files are placed in the correct place in the
> sysroot directory.
> 
> However when I try to create an sdk (i.e. bitbake custom-image -c
> populate_sdk) and then install the SDK the headers and .a files are nowhere
> to be found in the installed sysroot.

If you want all -staticdev packages in the SDK for the libraries in your
image, add the following to your local.conf (or the image recipe, doesn't
matter which):

 SDKIMAGE_FEATURES = "dev-pkgs dbg-pkgs staticdev-pkgs"

If you want a single staticdev package in the SDK you'd need to add the
following instead:

 TOOLCHAIN_HOST_TASK_append = " simple1-staticdev"

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

