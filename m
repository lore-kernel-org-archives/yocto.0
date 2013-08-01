Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85088E014E4
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2013 07:27:20 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 01 Aug 2013 07:27:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,794,1367996400"; d="scan'208";a="276307272"
Received: from unknown (HELO helios.localnet) ([10.252.122.169])
	by AZSMGA002.ch.intel.com with ESMTP; 01 Aug 2013 07:27:18 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brian Karcz <briank@russound.com>
Date: Thu, 01 Aug 2013 15:27:17 +0100
Message-ID: <2224533.7EszYEDFKv@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <5b0db42f24db43c9a5ac1348d1dee721@HERMES.RUSSOUND.com>
References: <7941E07E1E020448937ACA7D4279E632018398AF5AA8@powerhog>
	<4649053.56DKkDXgDi@helios>
	<5b0db42f24db43c9a5ac1348d1dee721@HERMES.RUSSOUND.com>
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
X-List-Received-Date: Thu, 01 Aug 2013 14:27:21 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 01 August 2013 14:00:24 Brian Karcz wrote:
> I'll keep the do_rootfs dependency adjustment for the main image on ready.
> I'd like to try to fix the simple case first of only building the ramdisk
> image directly then trying to rebuild it. With the latter case fixed, the
> former might be fine as is.
> 
> As a sanity check last night, I blew away the entire build directory and
> only built the ramdisk image recipe. I wanted to make sure there was
> nothing left in there from a main image build that might be effecting an
> explicit ramdisk image build. This overnight build succeeded. When I
> performed the rebuild this morning, the same behavior occurred of the
> IMAGE_PREPROCESS_COMMAND not being able to find a file in the WORKDIR.
>
> Sorry for the confusion about the license data. I wasn't interested,
> necessarily, in the content or cause of the warning, but more the task flow
> of the build that was causing the warning to appear in one build and not
> the other. I wasn't sure if the do_populate_lic dependency change might
> trigger any thoughts on the do_fetch dependencies.
> 
> One thing I had a question about was in regards to image vs package recipes
> and the population of the rootfs. Package recipes populate the rootfs by
> appending/prepending the do_install task and install things from the
> WORKDIR to the $D destination directory. 

To be completely accurate, they don't populate the rootfs directly, they 
install files into the ${D} directory (${WORKDIR}/image) during do_install, 
then do_package creates package definitions from this, then do_package_write_* 
create the actual packages based upon the definitions, and then later when the 
image is constructed some subset of those packages may be installed into the 
rootfs.

> Our image recipes, as I've inherited them, create and assign a new
> IMAGE_PREPROCESS_COMMAND, that install files from the WORKDIR to the
> IMAGE_ROOTFS destination directory. Is it abnormal/non-standard for an image
> recipe to have its own SRC_URI entries and subsequent WORKDIR population?

It is considered so, yes. We disabled this functionality by default in the 
denzil release (1.2) on the assumption that image recipes shouldn't really be 
doing this - additional files that need to be pulled in should be pulled in via 
packages created by a separate recipe. It's perfectly fine for the image to be 
modifying or creating small files from scratch particularly if they're 
constructed from dynamic data, but bringing in extra static files should really 
be handled via additional packages.

> I'm wondering if there is a catch-22 going on here regarding the use of
> RM_WORK and the fact that the checksums for the SRC_URI contents haven't
> changed. It seems as though the build is determining that do_fetch doesn't
> need to be run because nothing is changed, like in a package recipe, but
> doesn't realize that do_rootfs will always be executed for an image recipe
> build and might depend on those contents. I'm wondering if this worked
> under Edison because it didn't have the SRC_URI checksums and a different
> dependency model that forced the do_fetch prior to do_rootfs for image
> recipe builds.

Could you run a test for me - if you comment out the setting of noexec on all 
of the tasks at the end image.bbclass does the rebuilding problem go away?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

