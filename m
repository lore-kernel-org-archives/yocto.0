Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D326FE006B5
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 21:56:16 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 Dec 2011 21:56:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="92473624"
Received: from unknown (HELO envy.home) ([10.255.13.53])
	by orsmga002.jf.intel.com with ESMTP; 28 Dec 2011 21:56:14 -0800
Message-ID: <4EFC00EE.8080105@linux.intel.com>
Date: Wed, 28 Dec 2011 21:55:58 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Leon Woestenberg <sidebranch.openembedded@gmail.com>
References: <cover.1325115602.git.dvhart@linux.intel.com>
	<CAMvUbCx59KWAN0qeS5Ga9mAb9cMPVvxeKxJS6f6OYC2+mbu0Xw@mail.gmail.com>
In-Reply-To: <CAMvUbCx59KWAN0qeS5Ga9mAb9cMPVvxeKxJS6f6OYC2+mbu0Xw@mail.gmail.com>
X-Enigmail-Version: 1.3.3
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH V3 0/3] New distribution definition for poky-tiny
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
X-List-Received-Date: Thu, 29 Dec 2011 05:56:17 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 12/28/2011 05:07 PM, Leon Woestenberg wrote:
> Hello Darren,
> 
> 
> On Thu, Dec 29, 2011 at 12:45 AM, Darren Hart <dvhart@linux.intel.com
> <mailto:dvhart@linux.intel.com>> wrote:
> 
>     V3:
>        o Rebase on master
>        o Dependent on oe-core series "Fixes for tiny distros and
>     linux-yocto-tiny"
> 
>     RFC V2:
>        o Use VIRTUAL-RUNTIME_keymaps as suggested by Martin Jansa
>        o Drop poky-common abstraction as suggested by Richard Purdie in
>          favor of POKY_DEFAULT_EXTRA_R* variables.
> 
>     Poky-tiny defines a new distro policy for building tiny Linux
>     images.  Rather
> 
> 
> Such images are useful for small Linux firmwares, both often also
> require a read-only fs img.
> 
> Does this current image require write access at first boot?

I have done a readonly first-boot successfully, and as Chris points out,
it is one of the policy goals. That said, I have not yet looked to see
if there are some post-inst scripts which should be run. There isn't any
kind of init going on, and we'll need to decide how to best handle that
for poky-tiny. Right now I boot using an initramfs with root=/dev/ram0,
it reads an empty /init and falls back to /bin/sh - a more robust and
functional init is probably needed even for poky-tiny.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

