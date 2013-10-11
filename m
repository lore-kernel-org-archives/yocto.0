Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54730E0159B
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2013 13:51:20 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 Oct 2013 13:48:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,1082,1378882800"; d="scan'208";a="417936422"
Received: from unknown (HELO [10.255.15.234]) ([10.255.15.234])
	by orsmga002.jf.intel.com with ESMTP; 11 Oct 2013 13:51:19 -0700
Message-ID: <525864C7.40509@linux.intel.com>
Date: Fri, 11 Oct 2013 13:51:19 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130923 Thunderbird/17.0.9
MIME-Version: 1.0
To: Yannis Damigos <giannis.damigos@gmail.com>
References: <20131011120949.GA664@xekarfwtos-lp>
In-Reply-To: <20131011120949.GA664@xekarfwtos-lp>
Cc: yocto@yoctoproject.org
Subject: Re: Possible issue when supported distros update their GNU tar package to version 1.27
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
X-List-Received-Date: Fri, 11 Oct 2013 20:51:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/11/2013 05:09 AM, Yannis Damigos wrote:
> Hi everyone,
>
> I work on Archlinux (64bit) and build a beagleboard image.
> Build Configuration:
> BB_VERSION        = "1.20.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Arch-Linux"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "beagleboard"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.5"
> TUNE_FEATURES     = "armv7a vfp neon"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto
> meta-yocto-bsp    = "master:102bf5e0f640fe85068452a42b85077f1c81e0c9"
>
> The build process stops at the task "quilt-native_0.60.bb, do_populate_sysroot"
> with the following error:
>      tar: --same-order option cannot be used with -c
>      Try 'tar --help' or 'tar --usage' for more information.
>      tar: This does not look like a tar archive
>      tar: Exiting with failure status due to previous errors
>
> Searching around I found out that the problem was found at the file
> meta/classes/staging.bbclass at line 16:
>      tar -cf - -C "$src" -ps . | tar -xf - -C "$dest"
>
> The issue comes up if user's distro is using  GNU tar version 1.27
> Here is a link to the tar patch that causing the problem:
> http://git.savannah.gnu.org/cgit/tar.git/commit/?id=74ce228f6df956e6b7be9fd4f993bada4b7ea645
>
> If I downgrade the tar package to version 1.26, the build ends with success.
>

It's just a little too late to get this fixed for 1.5, we are in the 
middle of the final full pass test.  But you can also use the Buildtools 
SDK Tarball.

This was created for systems that don't have the correct versions of 
Python, Git, Tar and Make.  It can be downloaded from the following link:

https://www.yoctoproject.org/download/buildtools-sdk

Sau!

> Here is a list with all the files that should be updated/patched
> ./meta/lib/oe/path.py: cmd = 'tar -cf - -C %s -ps . | tar -xf - -C %s' % (src, dst)
> ./meta/lib/oe/path.py: cmd = 'cd %s; find . -type d -print | tar -cf - -C %s -ps --files-from - | tar -xf - -C %s' % (src, src, dst)
> ./meta/classes/package.bbclass: cmd = 'tar -cf - -C %s -ps . | tar -xf - -C %s' % (dest, dvar)
> ./meta/classes/populate_sdk_deb.bbclass: tar -cf - -C ${STAGING_ETCDIR_NATIVE} -ps apt | tar -xf - -C ${target_rootfs}/etc
> ./meta/classes/libc-package.bbclass: tar -cf - -C ${LOCALETREESRC}${datadir} -ps i18n | tar -xf - -C $treedir/${datadir}
> ./meta/classes/libc-package.bbclass: tar -cf - -C ${LOCALETREESRC}${base_libdir} -ps . | tar -xf - -C $treedir/${base_libdir}
> ./meta/classes/libc-package.bbclass: tar -cf - -C ${STAGING_DIR_NATIVE}/${prefix_native}/${base_libdir} -ps libgcc_s.* | tar -xf - -C $treedir/${base_libdir}
> ./meta/classes/libc-package.bbclass: tar -cf - -C $treedir/$parent -ps $(basename ${localedir}) | tar -xf - -C ${PKGD}$parent
> ./meta/classes/staging.bbclass: tar -cf - -C "$src" -ps . | tar -xf - -C "$dest"
> ./bitbake/lib/bb/fetch2/__init__.py: #cmd = 'tar -cf - -C "%d" -ps . | tar -xf - -C "%s/%s/"' % (file, rootdir, destdir)
>
> Best regards,
> Yannis
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

