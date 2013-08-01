Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2D00E01572
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2013 01:25:35 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Aug 2013 01:22:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,792,1367996400"; d="scan'208";a="355374046"
Received: from unknown (HELO helios.localnet) ([10.252.122.169])
	by orsmga001.jf.intel.com with ESMTP; 01 Aug 2013 01:25:33 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brian Karcz <briank@russound.com>
Date: Thu, 01 Aug 2013 09:25:32 +0100
Message-ID: <4649053.56DKkDXgDi@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <7e294eee26c84bb695cfc001d9c0fbcb@HERMES.RUSSOUND.com>
References: <7941E07E1E020448937ACA7D4279E632018398AF5AA8@powerhog>
	<4980830.1VfIILUjWT@helios>
	<7e294eee26c84bb695cfc001d9c0fbcb@HERMES.RUSSOUND.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Image recipes in Yocto 1.4 (dylan-9.0.0)
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
X-List-Received-Date: Thu, 01 Aug 2013 08:25:36 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 31 July 2013 20:27:16 Brian Karcz wrote:
> Here is a little background of what is going on. I inherited a project that
> was implemented under and works with Edison. The project has two image
> recipes, abc-main.bb and abc-ramdisk.bb. The way the project builds under
> Edison, abc-main.bb has abc-ramdisk listed in the DEPENDS variable.
> Abc-main then has an image preprocess command that sneakily goes into the
> DEPLOY_DIR_IMAGE and retrieves the ramdisk image and inserts it into its
> own IMAGE_ROOTFS.
> 
> As I've been working on porting to the Dylan version of the build system, I
> found the whole issue with do_fetch and do_unpack not being run at all for
> images. I applied the fix you advised of to add a python function that
> removes the noexec flag for the two tasks. This apparently only works for
> one build of the image. I either need to do a "cleanall" on the image or
> bump the rev to get it to build again.

I haven't had time to try to reproduce this here yet, sorry.
 
However, aside from the files in SRC_URI which could presumably be handled in a 
separate recipe, one possible solution for the ramdisk part did occur to me - 
I'd suggest doing the following in the main image:

do_rootfs[depends] += "abc-ramdisk:do_rootfs"

Then add to ROOTFS_POSTPROCESS_COMMAND or IMAGE_POSTPROCESS_COMMAND (whichever 
is appropriate) a call to a shell function that performs whatever needed 
operation on the abc-ramdisk.

> Another interesting note that might be of interest is that our LICENCE is
> defined to "XYZ" and issues the following warning, "WARNING: abc-ramdisk: No
> generic license file exists for: XYZ in any provider", in the first build that
> succeeds.

I'm no expert on this area but to me it doesn't make sense for an image 
containing multiple differently-licensed components to have a declared license 
in the recipe. We tend to keep things simple and just set LICENSE = "MIT" on 
the image recipe (*not* implying anything about the contents of the image), 
with each installed package license and therefore the image's license manifest 
indicating all of the licenses of the components that make up the image. 
Perhaps a LICENSE value of "N/A" for the image would be more appropriate, 
although the system currently doesn't support any special casing of LICENSE 
for image recipes, and if you are pulling in files in SRC_URI in the image 
recipe there might be some validity to having a LICENSE value to apply to 
those.

> When the second build is run the warning does not appear and the build
> jumps right to the do_rootfs task where it fails.

That's because this check is done in do_populate_lic which isn't getting re-
executed on the second time (presumably because nothing that that task depends 
upon has changed).

Cheers,
Paul
 
-- 

Paul Eggleton
Intel Open Source Technology Centre

