Return-Path: <dvhart@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86A17E009A6; Wed, 13 May 2015 21:25:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40F8CE009A1
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 21:25:00 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 13 May 2015 21:25:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,426,1427785200"; d="scan'208";a="571125250"
Received: from npachaur-mobl.amr.corp.intel.com (HELO [10.252.138.50])
	([10.252.138.50])
	by orsmga003.jf.intel.com with ESMTP; 13 May 2015 21:24:56 -0700
User-Agent: Microsoft-MacOutlook/14.4.8.150116
Date: Wed, 13 May 2015 21:24:51 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Dan Rosenqvist <danro@kth.se>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <D1796F74.CCED3%dvhart@linux.intel.com>
Thread-Topic: [yocto] Minimal GPLv3-free x86 image
Mime-version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: Minimal GPLv3-free x86 image
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
X-List-Received-Date: Thu, 14 May 2015 04:25:03 -0000
Content-type: text/plain;
	charset="US-ASCII"
Content-transfer-encoding: 7bit

On 5/13/15, 12:11 AM, "Dan Rosenqvist" <danro@kth.se> wrote:


>Hi,

Hi Dan,

>
>I'm trying to create a minimal GPLv3-free x86 image using the yocto
>project. As I'm looking for ways around the GPLv3 license, I'm unable to
>use certain packages (such as the live-install which depends on parted,
>and grub-2.0).

First - I am not a lawyer - just getting that out there.

>Instead I'm trying to create a minimal filesystem, stored as a tarball,
>which includes grub-0.97.

So dropping the live image type avoids the first set of issues.

Is your target system using legacy PC BIOS or UEFI?

If UEFI, then you can specify EFI_PROVIDER = "gummiboot" and use that
instead of grub-efi as gummiboot is LGPL v2.

If you are using PC BIOS, have you considered not using grub at all and
just relying on syslinux, GPL v2 or later.

> To install the image in the target environment (currently a virtual
>machine) I use a small bootable linux image used to set up the partitions
>and extracting
> the tarball image. After doing so, I mount proc and dev to be able to
>chroot into the target file system and run grub-install (to set up grub
>in the mbr). However, grub-install seem to segfault (a lot), and later
>prints out that the installation was successful.

Grub-install is a nightmare in my experience, and doubly so in atypical
environments as you describe. Without a lot more diagnostics, straces,
etc, I can't offer much advice.

Which device are you attempting to install grub to?

>
>
>This methodology has previously been working with gentoo minimal builds.

Same version of Grub?

--
Darren

>
>It feels like I can't be the only one who is in need of a minimalistic
>GPLv3-free x86 build, is there someone here who might be able to guide me
>in the right direction?
>
>Regards,
>Dan
>
>
>
>-- 
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.orghttps://lists.yoctoproject.org/listinfo/yocto


-- 
Darren Hart
Intel Open Source Technology Center



