Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B202AE00905; Sun, 11 Dec 2016 11:33:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EE93E00848
	for <yocto@yoctoproject.org>; Sun, 11 Dec 2016 11:33:29 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga105.jf.intel.com with ESMTP; 11 Dec 2016 11:33:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,332,1477983600"; d="scan'208";a="39043735"
Received: from pmishrax-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.157.250])
	by orsmga004.jf.intel.com with ESMTP; 11 Dec 2016 11:33:25 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org, Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Mon, 12 Dec 2016 08:33:22 +1300
Message-ID: <1654285.bzP9cumZNH@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.11-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <9db74365-d016-5183-0654-8ed27089ad71@windriver.com>
References: <5ee0797a85054ea6ab6a0d8f02f47856@drift35.mia.local>
	<CAC+thW1Hdj8MSdwf-oJegtd8eTfV6Kc_z8NRBtkrN=3Th+xn-g@mail.gmail.com>
	<9db74365-d016-5183-0654-8ed27089ad71@windriver.com>
MIME-Version: 1.0
Subject: Re: Kernel config incremental modification not working.
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
X-List-Received-Date: Sun, 11 Dec 2016 19:33:32 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Fri, 09 Dec 2016 11:19:56 Bruce Ashfield wrote:
> On 2016-12-09 11:17 AM, Andrea Galbusera wrote:
> > Hi Bruce,
> > 
> > On Thu, Dec 8, 2016 at 3:36 PM, Bruce Ashfield
> > 
> > <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>> 
wrote:
> >     On 2016-12-08 09:06 AM, Bent Bisballe Nyeng wrote:
> >         Hi list
> >         
> >         I am working on a project based on the iMX6UL-EVK using the
> >         meta-fsl-arm
> >         layer for the kernel.
> >         In a local layer I have a bbappend recipe containing a patch for
> >         an
> >         extra kernel feature (a framebuffer device) in that kernel as
> >         well as a
> >         .cfg enabling said feature.
> >         The bbappend recipe is located in
> >         recipes-kernel/linux/linux-fslc-imx_%.bbappend and looks like
> >         this:
> >         FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> >         
> >         SRC_URI += " \
> >         
> >                 file://0001-mxc-4.1.patch \
> >                 file://ST7789S.cfg \
> >         
> >         "
> >         
> >         KERNEL_DEVICETREE = "imx6ul-14x14-evk.dtb"
> >         
> >         The .cfg is located in
> >         recipes-kernel/linux/linux-fslc-imx/ST7789S.cfg
> >         and looks like:
> >         CONFIG_FB_MXS_ST7789S_QVGA=y
> >         
> >         The 0001-mxc-4.1.patch patch is correctly applied but the .cfg
> >         is either
> >         ignored or overwritten by some later buyild step since the
> >         resulting
> >         .config after kernel compilation contains:
> >         # CONFIG_FB_MXS_ST7789S_QVGA is not set
> >         
> >         I have tried finding the script in the build/.../temp folder
> >         that takes
> >         care of the .cfg file patching but have not been able to find
> >         anything
> >         useful.
> >         
> >         Any hints as to where I should start looking for a solution?
> >     
> >     Fragment processing using the kernel tools + auditing is only
> >     currently
> >     available to kernel recipes that use the kernel-yocto bbclass. That
> >     opt-in requirement was to ensure that existing recipes and workflows
> >     weren't broken by the new features.
> >     
> >     Last time I checked, the meta-fsl* kernel recipes don't use the
> >     kernel-yocto bbclass, so the fragment would be ignored.
> >     
> >     I'm taking the processing of fragments and making it universally
> >     available in the upcoming 2.3 release, so what I just described
> >     won't be an issue for much longer.
> >     
> >     In the mean time, you have a few options:
> >      - in your bbappend, add "inherit kernel-yocto" and the processing
> >      
> >        of fragments will be enabled (I can't say that I've tested
> >        it against that recipe .. but the entire point of the new tasks
> >        is that they are transparent/don't break existing worflows)
> >      
> >      - carry a defconfig in your layer, and add it to the SRC_URI. That
> >      
> >        defconfig would be the existing kernel recipe's defconfig + your
> >        options
> > 
> > I was just testing one of my layers against your recent patchset on
> > kernel-yocto when I noticed this thread. My build is broken by commit
> > 476ffd57cf5b6fba40d4e3f5dd913824ab8a8d3d on oe-core
> > (e38775a1d82e6dc60fc96cf243ecb94be964d9b2 on the poky repo side).
> > 
> > WARNING: linux-altera-ltsi-4.1.22-ltsi+gitAUTOINC+76bdba2700-r0
> > do_kernel_metadata: GIZERO: before 'cmp'
> > ERROR: linux-altera-ltsi-4.1.22-ltsi+gitAUTOINC+76bdba2700-r0
> > do_kernel_metadata: Function failed: do_kernel_metadata (log file is
> > located at
> > /scratch/gizero/mitysom-5csx-master-build/tmp/work/cyclone5-poky-linux-gnu
> > eabi/linux-altera-ltsi/4.1.22-ltsi+gitAUTOINC+76bdba2700-r0/temp/log.do_ke
> > rnel_metadata.28274) ERROR: Logfile of failure stored in:
> > /scratch/gizero/mitysom-5csx-master-build/tmp/work/cyclone5-poky-linux-gnu
> > eabi/linux-altera-ltsi/4.1.22-ltsi+gitAUTOINC+76bdba2700-r0/temp/log.do_ke
> > rnel_metadata.28274> 
> > Log data follows:
> > | DEBUG: Executing shell function do_kernel_metadata
> > | WARNING: GIZERO: before 'cmp'
> > 
> > /scratch/gizero/mitysom-5csx-master-build/tmp/work/cyclone5-poky-linux-gnu
> > eabi/linux-altera-ltsi/4.1.22-ltsi+gitAUTOINC+76bdba2700-r0/defconfig
> > /scratch/gizero/mitysom-5csx-master-build/tmp/work-shared/cyclone5/kernel
> > -source/arch/arm/configs/socfpga_defconfig differ: byte 1525, line 72
> > 
> > | WARNING: exit code 1 from a shell command.
> > | ERROR: Function failed: do_kernel_metadata (log file is located at
> > 
> > /scratch/gizero/mitysom-5csx-master-build/tmp/work/cyclone5-poky-linux-gnu
> > eabi/linux-altera-ltsi/4.1.22-ltsi+gitAUTOINC+76bdba2700-r0/temp/log.do_ke
> > rnel_metadata.28274) ERROR: Task
> > (/home/gizero/work/decos/repo-master/poky/../meta-altera/recipes-kernel/li
> > nux/linux-altera-ltsi_4.1.22.bb:do_kernel_metadata) failed with exit code
> > '1'
> > 
> > The commit in the patch remove the 'set +e' bits, but the following
> > legit code path expects the cmp command to have a non-zero return value.
> 
> Aha. Indeed that is true. Clearly there aren't many people going
> through that path.

Can we please have some automated tests covering all of this? Perhaps it would 
be worth talking to Francisco Pedraza who is looking at adding tests under bug 
6359:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=6359

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

