Return-Path: <darren.hart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEAA3E00746
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 15:13:03 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Jun 2012 15:13:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="155085971"
Received: from jstreic1-mobl.amr.corp.intel.com (HELO envy.home)
	([10.7.199.154])
	by orsmga001.jf.intel.com with ESMTP; 18 Jun 2012 15:13:02 -0700
Message-ID: <4FDFA7A0.9040904@intel.com>
Date: Mon, 18 Jun 2012 15:11:44 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
References: <D956029D25CF204F948EA0FB515E1EE20ACDE589@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE20ACDE589@ORSMSX105.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: grub-efi-native_1.99.bb fails in master branch
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
X-List-Received-Date: Mon, 18 Jun 2012 22:13:03 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 06/18/2012 03:10 PM, Bodke, Kishore K wrote:
> Hi,
> 
> I see a build fail for grub-efi-native_1.99 recipe in master branch for Cedartrail BSP.

Appears to be the same as:

 https://bugzilla.yoctoproject.org/show_bug.cgi?id=2527

Thanks,

Darren

> 
> 
> NOTE: package grub-efi-i586-native-1.99-r9: task do_compile: Started
> ERROR: Function failed: do_compile (see /usr/local/src/gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/temp/log.do_compile.1788 for further information)
> ERROR: Logfile of failure stored in: /usr/local/src/gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/temp/log.do_compile.1788
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 12
> | make  all-recursive
> | make[1]: Entering directory `/usr/local/src/gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/grub-1.99'
> | Making all in grub-core/gnulib
> | make[2]: Entering directory `/usr/local/src/gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/grub-1.99/grub-core/gnulib'
> | make  all-recursive
> | make[3]: Entering directory `/usr/local/src/gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/grub-1.99/grub-core/gnulib'
> | make[4]: Entering directory `/usr/local/src/gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/grub-1.99/grub-core/gnulib'
> | make[4]: Nothing to be done for `all-am'.
> | make[4]: Leaving directory `/usr/local/src/gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/grub-1.99/grub-core/gnulib'
> | make[3]: Leaving directory `/usr/local/src/gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/grub-1.99/grub-core/gnulib'
> | make[2]: Leaving directory `/usr/local/src/gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/grub-1.99/grub-core/gnulib'
> | Making all in .
> | make[2]: Entering directory `/usr/local/src/gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/grub-1.99'
> | rm -f libgrubkern.a
> | ar cru libgrubkern.a   util/libgrubkern_a-misc.o grub-core/kern/libgrubkern_a-command.o grub-core/kern/libgrubkern_a-device.o grub-core/kern/libgrubkern_a-disk.o grub-core/kern/emu/libgrubkern_a-getroot.o grub-core/kern/emu/libgrubkern_a-hostdisk.o grub-core/kern/emu/libgrubkern_a-misc.o grub-core/kern/emu/libgrubkern_a-mm.o grub-core/kern/libgrubkern_a-env.o grub-core/kern/libgrubkern_a-err.o grub-core/kern/libgrubkern_a-file.o grub-core/kern/libgrubkern_a-fs.o grub-core/kern/libgrubkern_a-list.o grub-core/kern/libgrubkern_a-misc.o grub-core/kern/libgrubkern_a-partition.o
> | rm -f libgrubmods.a
> | ar cru libgrubmods.a   grub-core/commands/libgrubmods_a-blocklist.o grub-core/commands/libgrubmods_a-extcmd.o grub-core/commands/libgrubmods_a-ls.o grub-core/disk/libgrubmods_a-dmraid_nvidia.o grub-core/disk/libgrubmods_a-loopback.o grub-core/disk/libgrubmods_a-lvm.o grub-core/disk/libgrubmods_a-mdraid_linux.o grub-core/disk/libgrubmods_a-mdraid1x_linux.o grub-core/disk/libgrubmods_a-raid5_recover.o grub-core/disk/libgrubmods_a-raid6_recover.o grub-core/disk/libgrubmods_a-raid.o grub-core/fs/libgrubmods_a-affs.o grub-core/fs/libgrubmods_a-afs_be.o grub-core/fs/libgrubmods_a-afs.o grub-core/fs/libgrubmods_a-befs_be.o grub-core/fs/libgrubmods_a-befs.o grub-core/fs/libgrubmods_a-btrfs.o grub-core/fs/libgrubmods_a-cpio.o grub-core/fs/libgrubmods_a-ext2.o grub-core/fs/libgrubmods_a-fat.o grub-core/fs/libgrubmods_a-fshelp.o grub-core/fs/libgrubmods_a-hfs.o grub-core/fs/libgrubmods_a-hfsplus.o grub-core/fs/libgrubmods_a-iso9660.o grub-core/fs/libgrubmods_a-jfs.o grub-core/fs/libgrubmods_
a-minix.o grub-core/fs/libgrubmods_a-minix2.o grub-core/fs/libgrubmods_a-nilfs2.o grub-core/fs/libgrubmods_a-ntfs.o grub-core/fs/libgrubmods_a-ntfscomp.o grub-core/fs/libgrubmods_a-reiserfs.o grub-core/fs/libgrubmods_a-sfs.o grub-core/fs/libgrubmods_a-tar.o grub-core/fs/libgrubmods_a-udf.o grub-core/fs/libgrubmods_a-ufs2.o grub-core/fs/libgrubmods_a-ufs.o grub-core/fs/libgrubmods_a-xfs.o grub-core/fs/zfs/libgrubmods_a-zfs.o grub-core/fs/zfs/libgrubmods_a-zfs_lzjb.o grub-core/fs/zfs/libgrubmods_a-zfs_sha256.o grub-core/fs/zfs/libgrubmods_a-zfs_fletcher.o grub-core/lib/libgrubmods_a-arg.o grub-core/lib/libgrubmods_a-crypto.o grub-core/lib/libgrubmods_a-envblk.o grub-core/lib/libgrubmods_a-hexdump.o grub-core/lib/libgcrypt-grub/cipher/libgrubmods_a-sha512.o grub-core/lib/libgcrypt-grub/cipher/libgrubmods_a-crc.o grub-core/lib/libgrubmods_a-LzFind.o grub-core/lib/libgrubmods_a-LzmaEnc.o grub-core/lib/libgrubmods_a-pbkdf2.o grub-core/lib/libgrubmods_a-crc.o grub-core/normal/libgrubmods_a-d
atetime.o grub-core/normal/libgrubmods_a-misc.o grub-core/partmap/libgrubmods_a-acorn.o grub-core/partmap/libgrubmods_a-amiga.o grub-core/partmap/libgrubmods_a-apple.o grub-core/partmap/libgrubmods_a-gpt.o grub-core/partmap/libgrubmoERROR: Function failed: do_compile (see /usr/local/src/gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/temp/log.do_compile.1788 for further information)
> | ds_a-msdos.o grub-core/partmap/libgrubmods_a-sun.o grub-core/partmap/libgrubmods_a-sunpc.o grub-core/partmap/libgrubmods_a-bsdlabel.o grub-core/script/libgrubmods_a-function.o grub-core/script/libgrubmods_a-lexer.o grub-core/script/libgrubmods_a-main.o grub-core/script/libgrubmods_a-script.o grub-core/script/libgrubmods_a-argv.o grub-core/io/libgrubmods_a-gzio.o           libgrubmods_a-grub_script.tab.o libgrubmods_a-grub_script.yy.o libgrubmods_a-libgrub_a_init.o
> | chmod a+x grub-mkrescue
> | chmod a+x grub-install
> | chmod a+x grub-mknetdir
> | chmod a+x grub-mkconfig
> | PATH=.:$PATH /usr/local/src/gst-master/scripts/help2man --section=8 -i ./docs/man/grub-install.h2m -o grub-install.8 grub-install
> | PATH=.:$PATH /usr/local/src/gst-master/scripts/help2man --section=1 -i ./docs/man/grub-mkrescue.h2m -o grub-mkrescue.1 grub-mkrescue
> | PATH=.:$PATH /usr/local/src/gst-master/scripts/help2man --section=8 -i ./docs/man/grub-mknetdir.h2m -o grub-mknetdir.8 grub-mknetdir
> | chmod a+x grub-set-default
> | PATH=.:$PATH /usr/local/src/gst-master/scripts/help2man --section=8 -i ./docs/man/grub-mkconfig.h2m -o grub-mkconfig.8 grub-mkconfig
> | chmod a+x grub-reboot
> | PATH=.:$PATH /usr/local/src/gst-master/scripts/help2man --section=8 -i ./docs/man/grub-set-default.h2m -o grub-set-default.8 grub-set-default
> | PATH=.:$PATH /usr/local/src/gst-master/scripts/help2man --section=8 -i ./docs/man/grub-reboot.h2m -o grub-reboot.8 grub-reboot
> | make[2]: *** [grub-mkrescue.1] Error 1
> | make[2]: *** Waiting for unfinished jobs....
> | make[2]: *** [grub-install.8] Error 1
> | make[2]: *** [grub-mknetdir.8] Error 1
> | make[2]: *** [grub-mkconfig.8] Error 1
> | make[2]: *** [grub-reboot.8] Error 1
> | make[2]: *** [grub-set-default.8] Error 1
> | ranlib libgrubkern.a
> | ranlib libgrubmods.a
> | make[2]: Leaving directory `/usr/local/src/gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/grub-1.99'
> | make[1]: *** [all-recursive] Error 1
> | make[1]: Leaving directory `/usr/local/src/gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/grub-1.99'
> | make: *** [all] Error 2
> | ER
> NOTE: package grub-efi-i586-native-1.99-r9: task do_compile: Failed
> ERROR: Task 151 (/usr/local/src/gst-master/meta/recipes-bsp/grub/grub-efi-native_1.99.bb, do_compile) failed with exit code '1'
> 
> 
> 
> 
> Thanks
> Kishore.
> 


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



