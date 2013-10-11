Return-Path: <giannis.damigos@gmail.com>
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A0B8E01610
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2013 05:09:54 -0700 (PDT)
Received: by mail-wg0-f47.google.com with SMTP id f12so3996947wgh.26
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2013 05:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:mime-version:content-type
	:content-disposition:user-agent;
	bh=1Eh698teWmVBprPLmbVrI7D0h6+ietP9S7A2Vtbt6dc=;
	b=flJG4ImiGt3cGIHfbV9dnBFW5pd/PE+aDqk0Bw81MzL3lU0vl+LN4+2hY30bULyZc6
	OltX0bKoM7DPf+WXM4+CiH7o/zNHQgmeJz7akamgk3CW0UDkTfZQiEJEJR+p7xQH21dQ
	2XkO2mWIUb0OpXuyozmIqEeVMswQhOvff6eFxQt7emL7QSzqm3o/fZWOl+LUvsEG6ABT
	cTOjXoCDziKafqEvVLVUEHXDwomclqk7oBvVs8q4Ybx002cAwm9VNvAxFUgoDdkI2TNz
	q8AYCpWjofYcRtmmGCP0DjhRoCKnbdEd43ER5jdgKD+nP6japIqBfWRCZPPmKj1g8ZBB
	uz7A==
X-Received: by 10.194.123.227 with SMTP id md3mr16872794wjb.17.1381493393371; 
	Fri, 11 Oct 2013 05:09:53 -0700 (PDT)
Received: from localhost (athedsl-17757.home.otenet.gr. [87.202.69.231])
	by mx.google.com with ESMTPSA id b7sm5122697wiz.8.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 11 Oct 2013 05:09:52 -0700 (PDT)
Date: Fri, 11 Oct 2013 15:09:49 +0300
From: Yannis Damigos <giannis.damigos@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20131011120949.GA664@xekarfwtos-lp>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Possible issue when supported distros update their GNU tar package to version 1.27
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
X-List-Received-Date: Fri, 11 Oct 2013 12:09:56 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi everyone,

I work on Archlinux (64bit) and build a beagleboard image.
Build Configuration:
BB_VERSION        = "1.20.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Arch-Linux"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.5"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta              
meta-yocto        
meta-yocto-bsp    = "master:102bf5e0f640fe85068452a42b85077f1c81e0c9"

The build process stops at the task "quilt-native_0.60.bb, do_populate_sysroot"
with the following error:
    tar: --same-order option cannot be used with -c
    Try 'tar --help' or 'tar --usage' for more information.
    tar: This does not look like a tar archive
    tar: Exiting with failure status due to previous errors

Searching around I found out that the problem was found at the file
meta/classes/staging.bbclass at line 16: 
    tar -cf - -C "$src" -ps . | tar -xf - -C "$dest"

The issue comes up if user's distro is using  GNU tar version 1.27
Here is a link to the tar patch that causing the problem:
http://git.savannah.gnu.org/cgit/tar.git/commit/?id=74ce228f6df956e6b7be9fd4f993bada4b7ea645

If I downgrade the tar package to version 1.26, the build ends with success.

Here is a list with all the files that should be updated/patched
./meta/lib/oe/path.py: cmd = 'tar -cf - -C %s -ps . | tar -xf - -C %s' % (src, dst)
./meta/lib/oe/path.py: cmd = 'cd %s; find . -type d -print | tar -cf - -C %s -ps --files-from - | tar -xf - -C %s' % (src, src, dst)
./meta/classes/package.bbclass: cmd = 'tar -cf - -C %s -ps . | tar -xf - -C %s' % (dest, dvar)
./meta/classes/populate_sdk_deb.bbclass: tar -cf - -C ${STAGING_ETCDIR_NATIVE} -ps apt | tar -xf - -C ${target_rootfs}/etc
./meta/classes/libc-package.bbclass: tar -cf - -C ${LOCALETREESRC}${datadir} -ps i18n | tar -xf - -C $treedir/${datadir}
./meta/classes/libc-package.bbclass: tar -cf - -C ${LOCALETREESRC}${base_libdir} -ps . | tar -xf - -C $treedir/${base_libdir}
./meta/classes/libc-package.bbclass: tar -cf - -C ${STAGING_DIR_NATIVE}/${prefix_native}/${base_libdir} -ps libgcc_s.* | tar -xf - -C $treedir/${base_libdir}
./meta/classes/libc-package.bbclass: tar -cf - -C $treedir/$parent -ps $(basename ${localedir}) | tar -xf - -C ${PKGD}$parent
./meta/classes/staging.bbclass: tar -cf - -C "$src" -ps . | tar -xf - -C "$dest"
./bitbake/lib/bb/fetch2/__init__.py: #cmd = 'tar -cf - -C "%d" -ps . | tar -xf - -C "%s/%s/"' % (file, rootdir, destdir)

Best regards,
Yannis

