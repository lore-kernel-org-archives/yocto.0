Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E976E00597
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 08:47:41 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 26 Jan 2012 08:47:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="60265445"
Received: from unknown (HELO helios.localnet) ([10.252.122.174])
	by AZSMGA002.ch.intel.com with ESMTP; 26 Jan 2012 08:47:39 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Date: Thu, 26 Jan 2012 16:47:37 +0000
Message-ID: <1631142.4mMYpoiV90@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8 rc2 (Linux/3.0.0-15-generic-pae; KDE/4.7.97; i686; ; )
In-Reply-To: <CAFZh4h-5m535Uod4=7hYmZzhRaqM8LtpHw1bfE0CQdXPdpFz7A@mail.gmail.com>
References: <CAFZh4h9YHz9VhdT3qHrrXQwaWn_qK4wpQ-JzPihO0qyhRfdE5A@mail.gmail.com>
	<CAFZh4h-5m535Uod4=7hYmZzhRaqM8LtpHw1bfE0CQdXPdpFz7A@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to get opkg in rootfilesystem
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
X-List-Received-Date: Thu, 26 Jan 2012 16:47:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 26 January 2012 11:36:31 Brian Hutchinson wrote:
> Update,
> 
> I'm still not doing something right.  I did a clean rebuild of
> core-image-base and a tar jtvf core-image-base-beagleboard.tar.bz2
> reveals opkg stuff in /var/lib/opkg only.  No opkg bin.
> 
> I guess I'm still in shock over this.  I mean why should I have to do
> anything other than:
> PACKAGE_CLASSES ?= "package_ipk"
> 
> I mean, if I specify I want package_ipk in the "Package Management
> configuration" section, doesn't logic follow that the image would be
> created with opkg and some sample opkg.conf files?  What use is it to
> generate all those .ipk's for the repository the build does without
> opkg being there?

Not necessarily. The way our rootfs construction works, it has to be done via 
some package management backend, but many people don't want/need it in their 
final image. FYI some image recipes default to adding the package-management 
feature but core-image-base clearly does not.

It's actually easier to enable this than Khem suggested, however. The default 
Yocto local.conf contains a line that sets EXTRA_IMAGE_FEATURES - just add 
package-management within this, and you'll get package management in your 
image. (FYI the reason his example probably didn't work when you tried it is I 
think you may have left out the initial space - the list is space-separated 
and _append does not add a space beforehand.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

