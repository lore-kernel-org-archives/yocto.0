Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7902E013AE;
	Sun, 21 Jul 2013 22:26:40 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r6M5Qakl011419
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 21 Jul 2013 22:26:36 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.20.26) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.342.3; Sun, 21 Jul 2013 22:26:36 -0700
Message-ID: <51ECC28B.80607@windriver.com>
Date: Mon, 22 Jul 2013 01:26:35 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130620 Thunderbird/17.0.7
MIME-Version: 1.0
To: Sipke Vriend <sipke.vriend@xilinx.com>
References: <f3d58573-6847-4a3d-b374-f4fca920d921@AM1EHSMHS016.ehs.local>
In-Reply-To: <f3d58573-6847-4a3d-b374-f4fca920d921@AM1EHSMHS016.ehs.local>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"meta-xilinx@yoctoproject.org" <meta-xilinx@yoctoproject.org>
Subject: Re: linux-yocto fragments meta branch
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
X-List-Received-Date: Mon, 22 Jul 2013 05:26:40 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 13-07-22 1:12 AM, Sipke Vriend wrote:
> Hi Bruce,
>
> The linux-yocto orphaned meta branch commit
> 8ef9136539464c145963ac2b8ee0196fea1c2337
> .gitignore: do not ignore meta directory
>
> causes the linux-yocto targets in meta-xilinx/master to fail with the following
> error(s):
> ---- snip ---
> [ERROR] unable to complete push
> | ERROR. could not update git tree
> | ERROR. Could not apply patches for zedboard.
> |        Patch failures can be resolved in the devshell (bitbake -c devshell linux-yocto)
> | ERROR: Function failed: do_patch (log file is located at /home/sipkev/yocto/5-poky/build/tmp/work/zedboard-poky-linux-gnueabi/linux-yocto/3.8.13+gitAUTOINC+8ef9136539_f20047520a-r4.2/temp/log.do_patch.4403)
> --- snip ---
> (See full BUILD LOG below).
>
> It seems the kernel tools scripts are seeing a change in the .gitignore file (see
> TERMINAL OUTPUT below) and attempt a git push for which we don’t have access.
>
> The diff of .gitignore in the working linux directory (see TERMINAL OUTPUT
> below) is that of the commit above.
> Checking linux-yocto-3.8 repository shows that the meta branch .gitignore
> contains the commit, but the .gitignore in the master (or standard/meta) does
> not.
>
> Should the .gitignore files match between the linux-yocto-3.8 branches?
> If not, can we do something in meta-xilinx to avoid the attempted git push?
>

Aha. I don't have all the tweaks to the tools in place, I knew I should
have wait on merging that change .. but yet, my tests passed.

You can't avoid the git push, or you won't have any changes made to the
tree :)

I'll revert that change for now, and synchronize it with my tools 
update. But yes, they really should match since with the meta directory
being untracked on purpose in the non-meta branches, we can't have the
gitignore different between the two.

I've pushed the change and will send a pull request later. But if you
update your SRCREV_meta to my latest for now, you should be good to go.

Cheers,

Bruce

> Cheers
> Sipke
>
>
> === BUILD LOG =====
> build$ bitbake linux-yocto
> WARNING: Host distribution "Ubuntu-11.10" has not been validated with this version of the build system; you may possibly experience unexpected failures. It is recommended that you use a tested distribution.
> Parsing recipes: 100% |###########################################################################################################################################################################| Time: 00:00:40
> Parsing of 850 .bb files complete (0 cached, 850 parsed). 1177 targets, 47 skipped, 0 masked, 0 errors.
>
> Build Configuration:
> BB_VERSION        = "1.19.1"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-11.10"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "zedboard"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.4+snapshot-20130722"
> TUNE_FEATURES     = " armv7a vfp neon zynq"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto
> meta-yocto-bsp    = "master:31e6eee860b5f9f4ac9ef0889bcff5648de6e3f9"
> meta-xilinx
> meta-zedboard
> meta-zc702
> meta-kc705        = "master:6e3ba04dbacc1d1d5bcad80f5e554e7fcc51f602"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Function failed: do_patch (log file is located at /home/sipkev/yocto/5-poky/build/tmp/work/zedboard-poky-linux-gnueabi/linux-yocto/3.8.13+gitAUTOINC+8ef9136539_f20047520a-r4.2/temp/log.do_patch.4403)
> ERROR: Logfile of failure stored in: /home/sipkev/yocto/5-poky/build/tmp/work/zedboard-poky-linux-gnueabi/linux-yocto/3.8.13+gitAUTOINC+8ef9136539_f20047520a-r4.2/temp/log.do_patch.4403
> Log data follows:
> | DEBUG: Executing shell function do_patch
> | Branch meta-temp set up to track remote branch meta from origin by rebasing.
> | Unstaged changes after reset:
> | M     .gitignore
> | Deleted branch meta-temp (was 37fdb0c).
> | [INFO] validating against known patches  (zedboard-standard-meta)
> Branch standard/meta set up to track remote branch standard/base from origin by rebasing.
> Uncommited changes detected. Refresh first.##########] (-)(101 %))
> | [ERROR] unable to complete push
> | pending patches are:
> | links/linux-yocto/xilinx-v14.5/0001-Zynq-specific-changes-to-arch-arm.patch
> | links/linux-yocto/xilinx-v14.5/0002-Microblaze-changes-to-arch.patch
> | links/linux-yocto/xilinx-v14.5/0003-PowerPC-changes-to-arch.patch
> | links/linux-yocto/xilinx-v14.5/0004-Xilinx-modifications-to-driver-block-and-driver-char.patch
> | links/linux-yocto/xilinx-v14.5/0005-Xilinx-modifications-to-drivers-clk-cpufreq-misc.patch
> | links/linux-yocto/xilinx-v14.5/0006-Xilinx-modifications-to-drivers-dma.patch
> | links/linux-yocto/xilinx-v14.5/0007-Xilinx-modifications-to-drivers-gpio.patch
> | links/linux-yocto/xilinx-v14.5/0008-Xilinx-modifications-to-drivers-hwmon.patch
> | links/linux-yocto/xilinx-v14.5/0009-Xilinx-modifications-to-drivers-media.patch
> | links/linux-yocto/xilinx-v14.5/0010-Xilinx-modifications-to-drivers-memory.patch
> | links/linux-yocto/xilinx-v14.5/0011-Xilinx-modifications-to-drivers-mmc.patch
> | links/linux-yocto/xilinx-v14.5/0012-Xilinx-modifications-to-drivers-mtd.patch
> | links/linux-yocto/xilinx-v14.5/0013-Xilinx-modifications-to-drivers-net.patch
> | links/linux-yocto/xilinx-v14.5/0014-Xilinx-modifications-to-drivers-remoteproc.patch
> | links/linux-yocto/xilinx-v14.5/0015-Xilinx-modifications-to-drivers-rpmsg.patch
> | links/linux-yocto/xilinx-v14.5/0016-Xilinx-modifications-to-drivers-spi-mfd-and-timerdal.patch
> | links/linux-yocto/xilinx-v14.5/0017-Xilinx-modifications-to-drivers-tty.patch
> | links/linux-yocto/xilinx-v14.5/0018-Xilinx-modifications-to-drivers-uio.patch
> | links/linux-yocto/xilinx-v14.5/0019-Xilinx-modifications-to-drivers-usb-and-i2c.patch
> | links/linux-yocto/xilinx-v14.5/0020-Xilinx-modifications-to-drivers-video.patch
> | links/linux-yocto/xilinx-v14.5/0021-Xilinx-modifications-to-drivers-watchdog.patch
> | links/linux-yocto/xilinx-v14.5/0022-Addition-of-drivers-xilinx_common.patch
> | links/linux-yocto/xilinx-v14.5/0023-Xilinx-specific-documentation-update.patch
> | links/linux-yocto/xilinx-v14.5/0024-Remove-redundant-driver-files.patch
> | links/linux-xlnx/microblaze_Do_not_use_r6_in_head.S.patch
> | links/linux-xlnx/microblaze_Fix_free_init_pages_function.patch
> | links/linux-xlnx/microblaze_Fix_initrd_support.patch
> | links/linux-xlnx/arch_microblaze_Add_linux.bin.ub_target.patch
> | ERROR. could not update git tree
> | ERROR. Could not apply patches for zedboard.
> |        Patch failures can be resolved in the devshell (bitbake -c devshell linux-yocto)
> | ERROR: Function failed: do_patch (log file is located at /home/sipkev/yocto/5-poky/build/tmp/work/zedboard-poky-linux-gnueabi/linux-yocto/3.8.13+gitAUTOINC+8ef9136539_f20047520a-r4.2/temp/log.do_patch.4403)
> ERROR: Task 3 (/home/sipkev/yocto/5-poky/poky/meta/recipes-kernel/linux/linux-yocto_3.8.bb, do_patch) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 286 tasks of which 32 didn't need to be rerun and 1 failed.
> Waiting for 0 running tasks to finish:
>
> Summary: 1 task failed:
>    /home/sipkev/yocto/5-poky/poky/meta/recipes-kernel/linux/linux-yocto_3.8.bb, do_patch
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> ===== END BUILD LOG =======
>
>
> === TERMINAL OUTPUT ===
> $:build/tmp/work/zedboard-poky-linux-gnueabi/linux-yocto/3.8.13+gitAUTOINC+8ef9136539_f20047520a-r4.2/linux$ git status
> # On branch standard/meta
> # Changes not staged for commit:
> #   (use "git add <file>..." to update what will be committed)
> #   (use "git checkout -- <file>..." to discard changes in working directory)
> #
> #       modified:   .gitignore
> #
> # Untracked files:
> #   (use "git add <file>..." to include in what will be committed)
> #
> #       meta/
> no changes added to commit (use "git add" and/or "git commit -a")
> $:build/tmp/work/zedboard-poky-linux-gnueabi/linux-yocto/3.8.13+gitAUTOINC+8ef9136539_f20047520a-r4.2/linux$ git diff
> diff --git a/.gitignore b/.gitignore
> index 92c7a67..5e7bc98 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -91,4 +91,4 @@ extra_certificates
>   signing_key.priv
>   signing_key.x509
>   x509.genkey
> -/meta
> +#/meta
> $:build/tmp/work/zedboard-poky-linux-gnueabi/linux-yocto/3.8.13+gitAUTOINC+8ef9136539_f20047520a-r4.2/linux$ tail .gitignore
> \#*#
>
> #
> # Leavings from module signing
> #
> extra_certificates
> signing_key.priv
> signing_key.x509
> x509.genkey
> #/meta
> $:build/tmp/work/zedboard-poky-linux-gnueabi/linux-yocto/3.8.13+gitAUTOINC+8ef9136539_f20047520a-r4.2/linux$ git branch
>    eg20t
>    emgd-1.16
>    emgd-1.18
>    master
>    meta
>    standard/arm-versatile-926ejs
>    standard/base
>    standard/beagleboard
>    standard/ck
>    standard/common-pc-64/base
>    standard/common-pc-64/chiefriver
>    standard/common-pc-64/crystalforest
>    standard/common-pc-64/jasperforest
>    standard/common-pc-64/rangeley
>    standard/common-pc-64/romley
>    standard/common-pc-64/sugarbay
>    standard/common-pc/atom-pc
>    standard/common-pc/base
>    standard/crownbay
>    standard/edf
>    standard/emenlow
>    standard/fri2
>    standard/fsl-mpc8315e-rdb
> * standard/meta
>    standard/minnow
>    standard/mti-malta32
>    standard/mti-malta64
>    standard/preempt-rt/base
>    standard/preempt-rt/fri2
>    standard/preempt-rt/qemuppc
>    standard/preempt-rt/routerstationpro
>    standard/qemuppc
>    standard/routerstationpro
>    standard/sys940x
>    standard/tiny/base
>    standard/tiny/common-pc
>    standard/tiny/fri2
> === END TERMINAL OUTPUT ===
>
>


