Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF024E00D34; Fri,  9 Dec 2016 08:20:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A367E00C40
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2016 08:20:02 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id uB9GJvk0004698
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 9 Dec 2016 08:19:57 -0800 (PST)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 9 Dec 2016 08:19:56 -0800
To: Andrea Galbusera <gizero@gmail.com>
References: <5ee0797a85054ea6ab6a0d8f02f47856@drift35.mia.local>
	<30c3c6d7-9f12-e082-33bb-1a218c8f4bd5@windriver.com>
	<CAC+thW1Hdj8MSdwf-oJegtd8eTfV6Kc_z8NRBtkrN=3Th+xn-g@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <9db74365-d016-5183-0654-8ed27089ad71@windriver.com>
Date: Fri, 9 Dec 2016 11:19:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <CAC+thW1Hdj8MSdwf-oJegtd8eTfV6Kc_z8NRBtkrN=3Th+xn-g@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 09 Dec 2016 16:20:04 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-12-09 11:17 AM, Andrea Galbusera wrote:
> Hi Bruce,
>
> On Thu, Dec 8, 2016 at 3:36 PM, Bruce Ashfield
> <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>> wrote:
>
>     On 2016-12-08 09:06 AM, Bent Bisballe Nyeng wrote:
>
>         Hi list
>
>         I am working on a project based on the iMX6UL-EVK using the
>         meta-fsl-arm
>         layer for the kernel.
>         In a local layer I have a bbappend recipe containing a patch for an
>         extra kernel feature (a framebuffer device) in that kernel as
>         well as a
>         .cfg enabling said feature.
>         The bbappend recipe is located in
>         recipes-kernel/linux/linux-fslc-imx_%.bbappend and looks like this:
>         FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
>         SRC_URI += " \
>                 file://0001-mxc-4.1.patch \
>                 file://ST7789S.cfg \
>         "
>
>         KERNEL_DEVICETREE = "imx6ul-14x14-evk.dtb"
>
>         The .cfg is located in
>         recipes-kernel/linux/linux-fslc-imx/ST7789S.cfg
>         and looks like:
>         CONFIG_FB_MXS_ST7789S_QVGA=y
>
>         The 0001-mxc-4.1.patch patch is correctly applied but the .cfg
>         is either
>         ignored or overwritten by some later buyild step since the resulting
>         .config after kernel compilation contains:
>         # CONFIG_FB_MXS_ST7789S_QVGA is not set
>
>         I have tried finding the script in the build/.../temp folder
>         that takes
>         care of the .cfg file patching but have not been able to find
>         anything
>         useful.
>
>         Any hints as to where I should start looking for a solution?
>
>
>     Fragment processing using the kernel tools + auditing is only currently
>     available to kernel recipes that use the kernel-yocto bbclass. That
>     opt-in requirement was to ensure that existing recipes and workflows
>     weren't broken by the new features.
>
>     Last time I checked, the meta-fsl* kernel recipes don't use the
>     kernel-yocto bbclass, so the fragment would be ignored.
>
>     I'm taking the processing of fragments and making it universally
>     available in the upcoming 2.3 release, so what I just described
>     won't be an issue for much longer.
>
>     In the mean time, you have a few options:
>
>      - in your bbappend, add "inherit kernel-yocto" and the processing
>        of fragments will be enabled (I can't say that I've tested
>        it against that recipe .. but the entire point of the new tasks
>        is that they are transparent/don't break existing worflows)
>
>      - carry a defconfig in your layer, and add it to the SRC_URI. That
>        defconfig would be the existing kernel recipe's defconfig + your
>        options
>
>
> I was just testing one of my layers against your recent patchset on
> kernel-yocto when I noticed this thread. My build is broken by commit
> 476ffd57cf5b6fba40d4e3f5dd913824ab8a8d3d on oe-core
> (e38775a1d82e6dc60fc96cf243ecb94be964d9b2 on the poky repo side).
>
> WARNING: linux-altera-ltsi-4.1.22-ltsi+gitAUTOINC+76bdba2700-r0
> do_kernel_metadata: GIZERO: before 'cmp'
> ERROR: linux-altera-ltsi-4.1.22-ltsi+gitAUTOINC+76bdba2700-r0
> do_kernel_metadata: Function failed: do_kernel_metadata (log file is
> located at
> /scratch/gizero/mitysom-5csx-master-build/tmp/work/cyclone5-poky-linux-gnueabi/linux-altera-ltsi/4.1.22-ltsi+gitAUTOINC+76bdba2700-r0/temp/log.do_kernel_metadata.28274)
> ERROR: Logfile of failure stored in:
> /scratch/gizero/mitysom-5csx-master-build/tmp/work/cyclone5-poky-linux-gnueabi/linux-altera-ltsi/4.1.22-ltsi+gitAUTOINC+76bdba2700-r0/temp/log.do_kernel_metadata.28274
> Log data follows:
> | DEBUG: Executing shell function do_kernel_metadata
> | WARNING: GIZERO: before 'cmp'
> |
> /scratch/gizero/mitysom-5csx-master-build/tmp/work/cyclone5-poky-linux-gnueabi/linux-altera-ltsi/4.1.22-ltsi+gitAUTOINC+76bdba2700-r0/defconfig
> /scratch/gizero/mitysom-5csx-master-build/tmp/work-shared/cyclone5/kernel-source/arch/arm/configs/socfpga_defconfig
> differ: byte 1525, line 72
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_kernel_metadata (log file is located at
> /scratch/gizero/mitysom-5csx-master-build/tmp/work/cyclone5-poky-linux-gnueabi/linux-altera-ltsi/4.1.22-ltsi+gitAUTOINC+76bdba2700-r0/temp/log.do_kernel_metadata.28274)
> ERROR: Task
> (/home/gizero/work/decos/repo-master/poky/../meta-altera/recipes-kernel/linux/linux-altera-ltsi_4.1.22.bb:do_kernel_metadata)
> failed with exit code '1'
>
> The commit in the patch remove the 'set +e' bits, but the following
> legit code path expects the cmp command to have a non-zero return value.

Aha. Indeed that is true. Clearly there aren't many people going
through that path.

I'll spin up a new patch that restores the set +e and instead traps
the return codes for the commands that are allowed to fail.

Bruce

>
>         if [ -n "${KBUILD_DEFCONFIG}" ]; then
>                 if [ -f "${S}/arch/${ARCH}/configs/${KBUILD_DEFCONFIG}"
> ]; then
>                         if [ -f "${WORKDIR}/defconfig" ]; then
>                                 # If the two defconfig's are different,
> warn that we didn't overwrite the
>                                 # one already placed in WORKDIR by the
> fetcher.
>                                 cmp "${WORKDIR}/defconfig"
> "${S}/arch/${ARCH}/configs/${KBUILD_DEFCONFIG}"
>                                 if [ $? -ne 0 ]; then
>                                         bbwarn "defconfig detected in
> WORKDIR. ${KBUILD_DEFCONFIG} skipped"
>                                 fi
>
> My layer provides a defconfig on top of a bsp layer which
> defines KBUILD_DEFCONFIG. So, in my opinion, if this scenario is still
> supported as you confirm in this thread, we should expect cmp to always
> return nonzero when this is the case.
>
> Sorry for posting here, but I wasn't subscribed to the oe-core mailing
> list, so I don't have the original email to oe-core mailing list with
> the patch to reply to...
>
>
>
>      - write a custom task that runs before configuration to add your
>        options (cat, merge, etc, etc).
>
>     I wouldn't really suggest the custom task route, but it is a valid
>     option, so I put it in my list.
>
>     The quickest is probably the defconfig option, and then the new
>     inherit. If you had issues with the inherit, I could lend a hand to
>     debug what is wrong .. since I'll run into it eventually with my
>     feature work for the 2.3 release.
>
>     Bruce
>
>
>
>
>         Kind regards
>         Bent Bisballe Nyeng
>
>
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
>
>


