Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65228E01351
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2012 03:56:26 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Jun 2012 03:56:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="163916608"
Received: from unknown (HELO helios.localnet) ([10.252.120.222])
	by orsmga002.jf.intel.com with ESMTP; 28 Jun 2012 03:56:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: maniacbug <maniacbug@ymail.com>
Date: Thu, 28 Jun 2012 11:56:21 +0100
Message-ID: <4370319.CbK9Nk4c9m@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-25-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <1340763740.43451.YahooMailNeo@web121605.mail.ne1.yahoo.com>
References: <1340763740.43451.YahooMailNeo@web121605.mail.ne1.yahoo.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to include libstdc++ in an image?
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
X-List-Received-Date: Thu, 28 Jun 2012 10:56:26 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 26 June 2012 19:22:20 maniacbug wrote:
> Hi.  I am using denzil, trying to build a core-image-minimal with
> libstdc++ installed.  I want to cross-develop in c++, and run the
> resulting apps on the image.  For now, I am using qemu-arm as the
> machine.  I've been able to build and run core-image-minimal out of the
> box. build the cross tools, and build apps using the cross tools (and
> even add ssh to the image).  What I cannot figure out how to do is get
> libstdc++ (and libgcc1 and libc6) onto the target machine.
> 
> The task-core-standalone-sdk-target looks super promising,
> seeming to contain the exact pieces I need.  I thought I could add this
> to the IMAGE_INSTALL line in core-image-minimal.bb, and have the libs
> show up.  This didn't happen, so clearly I have some more to learn about
> poky.
> 
> Can anyone advise the appropriate way to inject libsdtc++ (and its
> dependencies) into a poky image?  Please note that I do not need to
> compile/link apps on the target, only run them.

Adding libstdc++ to IMAGE_INSTALL should work - in fact I just tried it and it 
worked here (although I used the alternative of adding it to 
CORE_IMAGE_EXTRA_INSTALL in local.conf, but the result should be the same). 

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

