Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16899E0084F; Fri, 20 Feb 2015 01:51:19 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC425E00831
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 01:51:09 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 20 Feb 2015 01:51:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,613,1418112000"; d="scan'208";a="654758797"
Received: from marazel-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.23.180])
	by orsmga001.jf.intel.com with ESMTP; 20 Feb 2015 01:51:05 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jim Rafert <jimr@spectralogic.com>
Date: Fri, 20 Feb 2015 09:51:04 +0000
Message-ID: <1674116.AmgqaYKJqr@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.6-100.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <86196249137E0843B2E0673D4F731E0C0108E3D34E@reactor.sldomain.com>
References: <86196249137E0843B2E0673D4F731E0C0108E3D34E@reactor.sldomain.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Simple recipe quit working in dizzy
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
X-List-Received-Date: Fri, 20 Feb 2015 09:51:19 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jim,

On Wednesday 18 February 2015 20:33:43 Jim Rafert wrote:
> The following recipe, spectra-postbuild_0.1.bb, quit working when I ported
> from 1.6 daisy to 1.7.1 dizzy.  I include the recipe in my image by adding
> it at the end of of the IMAGE_INSTALL_append variable in my local.conf
> file.  The purpose of the recipe is simply to lay down some files that will
> later be used by an installer script.  Two if the files are deposited in
> the root directory, and the rest are placed in the /install/spectra
> directory, which is created by the recipe.  Nothing is compiled or
> transformed in any way.
> 
> When I bitbake the recipe, then bitbake core-image-full-cmdline, both
> complete without errors. When I look at the contents of the rpm file
> produced by the recipe, all the files and directories are listed. However,
> when I examine the file system images created, only the two files that I
> place in the root directory (/) are there, and the entire /install
> directory hierarchy is missing. If I modify the recipe such that the
> missing files are placed in a directory that is already created by other
> recipes (/home/root), all the files are deposited as expected.
> 
> I have looked at section 5.6 of the Yocto reference manual, "Moving to the
> Yocto Project 1.7 Release", but did not see anything that was obviously
> relevant.
> 
> Can someone tell me how to fix this for dizzy?
> 
> ######################################################
> # spectra-postbuild_0.1.bb
> ######################################################
> 
> SUMMARY = "Post processing of configuration files for SpectraOS"
> SECTION = "base"
> LICENSE = "GPLv2"
> LIC_FILES_CHKSUM =
> "file://${WORKDIR}/COPYRIGHT;md5=349c872e0066155e1818b786938876a4" 
> PR = "r0"
> 
> SRC_URI = "file://inittab \
>        file://fstab \
>        file://rsyslog.conf \
>            file://profile \
>        file://grub.cfg \
>        file://mount.sh \
>        file://RELEASE-NOTES.txt \
>        file://Spectra-OS-Version \
>        file://initializeCustomKernelModules \
>        file://firewall \
>        file://sysctl.conf \
>            file://InstallOS.sh \
>        file://COPYRIGHT \
>            file://WinCE_LCM.tar.bz \
>        "
> 
> FILES_${PN} =  "/RELEASE-NOTES.txt \
>                 /Spectra-OS-Version \
>                 /install \
>                 /install/spectra \
>                 /install/spectra/InstallOS.sh \
>                 /install/spectra/fstab \
>                 /install/spectra/mount.sh \
>                 /install/spectra/grub.cfg \
>                 /install/spectra/rsyslog.conf \
>                 /install/spectra/profile \
>                 /install/spectra/inittab \
>                 /install/spectra/WinCE_LCM.tar.bz \
>                 /install/spectra/sysctl.conf \
>                 /install/spectra/init.d \
>                 /install/spectra/rc5.d \
>                 /install/spectra/init.d/initializeCustomKernelModules \
>                 /install/spectra/init.d/firewall \
>                 "
> 
> do_install () {
>     install -m 755 ${WORKDIR}/RELEASE-NOTES.txt ${D}
>     install -m 755 ${WORKDIR}/Spectra-OS-Version ${D}
>         install -d ${D}/install
>         install -d ${D}/install/spectra
>         install -m 544 ${WORKDIR}/inittab ${D}/install/spectra
>         install -m 755 ${WORKDIR}/fstab ${D}/install/spectra
>         install -m 755 ${WORKDIR}/rsyslog.conf ${D}/install/spectra
>         install -m 755 ${WORKDIR}/profile ${D}/install/spectra
>         install -m 755 ${WORKDIR}/grub.cfg ${D}/install/spectra
>         install -m 755 ${WORKDIR}/mount.sh ${D}/install/spectra
>         install -m 755 ${WORKDIR}/InstallOS.sh ${D}/install/spectra
>         install -m 755 ${WORKDIR}/sysctl.conf ${D}/install/spectra
>         install -m 644 ${WORKDIR}/WinCE_LCM.tar.bz ${D}/install/spectra
>         install -m 755 ${WORKDIR}/firewall ${D}/install/spectra
>         install -m 755 ${WORKDIR}/initializeCustomKernelModules
> ${D}/install/spectra
> 
> }

Hmm, so I can't see anything immediately wrong with the recipe that would lead 
to a problem such as what you describe, so rather than something expected 
change between releases this looks more like a bug. Is there anything in the 
log.do_rootfs for the image that might indicate something going wrong? Perhaps 
an uncaught error?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

