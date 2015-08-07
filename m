Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46766E00A49; Fri,  7 Aug 2015 03:05:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEE7CE00A53
	for <yocto@yoctoproject.org>; Fri,  7 Aug 2015 03:05:38 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 07 Aug 2015 03:05:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,629,1432623600"; d="scan'208";a="621085753"
Received: from jsmcbrid-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.24.154])
	by orsmga003.jf.intel.com with ESMTP; 07 Aug 2015 03:05:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto yocto <yoctomailinglist@gmail.com>
Date: Fri, 07 Aug 2015 11:04:42 +0100
Message-ID: <13203725.Xi0gkI3gNl@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.0.8-200.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <CACTu1LisUnCWjJxrPeUnYyZRpcAoCEA9YQ6QduJhDjH8DFEnYA@mail.gmail.com>
References: <CACTu1LisUnCWjJxrPeUnYyZRpcAoCEA9YQ6QduJhDjH8DFEnYA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: libmcrypt not part of the image
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
X-List-Received-Date: Fri, 07 Aug 2015 10:05:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 07 August 2015 11:25:40 yocto yocto wrote:
> I added the meta-openembedded layer to my configuration. I want to have
> libmcrypt (in meta-openembedded/meta-oe/recipes-support) on my system:
> 
> IMAGE_INSTALL += "libmcrypt"

Where did you add this exactly?

> The library (libmcrypt.so) is actually being built. Everything is located
> in "libmcrypt/2.5.8-r0/package/usr", however after flashing the image
> libmcrypt is not part of the filesystem.
> 
> I tried writing some kind of "libmcrypt_%.bbappend" with
> 
> do_install() {
> install -m 0755 ${WORKDIR}/package/usr ${D}/
> }
> 
> However, I get a bitbake error that do_install failed but there is exact
> message. Any ideas how to solve this properly?

If the files are under package/ then do_install is already working fine, so your 
hack definitely isn't going to help.

When I have problems like this I generally follow this procedure to find the 
issue:

1) Is do_install working? (check "image" subdirectory under the workdir for 
the recipe, which is ${D})

2) Has do_package put the file in the package you think it should be in? (look 
in "packages-split" under the workdir for the recipe; there are subdirectories 
for each package created by the recipe)

3) Is the package really being installed? (check bitbake -e imagename and look 
at the IMAGE_INSTALL value to see if it's really in there, and also look at 
log.do_rootfs for the image - is the package mentioned?)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

