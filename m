Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C07A0E01440
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 11:55:47 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 15 Aug 2013 11:55:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,887,1367996400"; d="scan'208";a="282523651"
Received: from unknown (HELO [10.255.14.106]) ([10.255.14.106])
	by AZSMGA002.ch.intel.com with ESMTP; 15 Aug 2013 11:55:38 -0700
Message-ID: <520D242A.6040103@linux.intel.com>
Date: Thu, 15 Aug 2013 11:55:38 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: pderocco@ix.netcom.com
References: <D2ED8A5A8E3F4F688EF59142D375B80B@PAULD>
In-Reply-To: <D2ED8A5A8E3F4F688EF59142D375B80B@PAULD>
Cc: yocto@yoctoproject.org
Subject: Re: My stuff is missing from rootfs
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
X-List-Received-Date: Thu, 15 Aug 2013 18:55:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/15/2013 11:37 AM, Paul D. DeRocco wrote:
> I've done exactly this in a different Yocto-based project, and it worked.
> Now I'm trying to do the same thing in a Gumstix build, and it's not
> working. I have a dumb little recipe that merely copies some files into
> particlar places in the rootfs. It adds a systemd service unit, as well as
> .bashrc and .inputrc to /home/root.
>
> The build logs show the recipe being processed, including the do_install
> task which copies the files. No errors are produced. If I rummage through
> build/tmp/work, I can find the fragment of the rootfs containing the
> /home/root and /etc/systemd/system directories with my files in them. Yet no
> matter what I try, these things never wind up in the final rootfs.
>
> I've tried clean and cleansstate on the recipe, as well as on my top-level
> recipe. I've bumped PR from r0 to r1. It dutifully reprocesses my recipe,
> with no errors, and I end up with a perfectly functioning rootfs without
> these particular files.
>
> This is a slightly modified version of gumstix-console-image. I believe it's
> based on Danny, as the gumstix Dylan stuff is still a work in progress.
>
> What could conceivably be wrong?
>
Where do you add your recipe's generated packages to the image, this 
could be in your custom image with an RDEPENDS or via something in 
local.conf like CORE_IMAGE_EXTRA_INSTALL_append = " <packagename>".

Do you have other recipes that DEPEND or RDEPEND on your recipe?

That might point you in the right direction.

Sau!


