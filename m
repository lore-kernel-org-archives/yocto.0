Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CE39E00C60; Wed,  6 Jul 2016 07:23:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5C60E00855
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 07:23:16 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 1A6BF68A01B; Wed,  6 Jul 2016 15:23:15 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id B42C968A019;
	Wed,  6 Jul 2016 15:23:11 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 5E0556740071;
	Wed,  6 Jul 2016 16:23:11 +0200 (CEST)
From: Gary Thomas <gary@mlbassoc.com>
To: "Chris Z." <winotu.email@gmail.com>
References: <577CD922.4000405@mlbassoc.com>
	<CAEjjReJO62jjENv868u8owRazP0yBV+kBVG9yt2rxPBTxSfj2Q@mail.gmail.com>
Message-ID: <577D144F.8050208@mlbassoc.com>
Date: Wed, 6 Jul 2016 16:23:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <CAEjjReJO62jjENv868u8owRazP0yBV+kBVG9yt2rxPBTxSfj2Q@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What keeps sstate from being used?
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
X-List-Received-Date: Wed, 06 Jul 2016 14:23:20 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-07-06 13:51, Chris Z. wrote:
> Hi,
>
> Check:
> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#shared-state-cache
>
> "... the build system detects changes in the "inputs" to a given task by creating a checksum (or signature) of the
> task's inputs. If the checksum changes, the system assumes the inputs have changed and the task needs to be rerun. For
> the second question, the shared state (sstate) code tracks which tasks add which output to the build process.... "
>

I don't see how anything could have changed between the two runs.  Literally, I ran:
   % bitbake target
   ... failed with error building webkitgtk after some 6000 tasks
   % mv tmp old
   % bitbake target

I traced this down to [at least] these tasks:

gthomas@europa:p0382_2016-01-13$ bitbake-diffsigs 
sstate-cache/66/sstate:binutils-cross-arm::2.26:r0::3:66ee1a83fd248d206fd4fd9fb33ffe26_fetch.tgz.siginfo 
sstate-cache/db/sstate:binutils-cross-arm::2.26:r0::3:dbdcf77671cb88d7220531471eae70a2_fetch.tgz.siginfo
basehash changed from 366d439ed05d276413ffabf7423ebe44 to acc4c0150665538a4bdd394b6b6bda13
Variable SRC_URI value changed from ' 
git://sourceware.org/git/binutils-gdb.git;branch=binutils-${BINUPV}-branch;protocol=git 
file://0002-configure-widen-the-regexp-for-SH-architectures.patch 
file://0003-Point-scripts-location-to-libdir.patch 
file://0004-Only-generate-an-RPATH-entry-if-LD_RUN_PATH-is-not-e.patch 
file://0005-Explicitly-link-with-libm-on-uclibc.patch      file://0006-Use-libtool-2.4.patch 
file://0007-Add-the-armv5e-architecture-to-binutils.patch 
file://0008-don-t-let-the-distro-compiler-point-to-the-wrong-ins.patch 
file://0009-warn-for-uses-of-system-directories-when-cross-linki.patch 
file://0010-Fix-rpath-in-libtool-when-sysroot-is-enabled.patch 
file://0011-Change-default-emulation-for-mips64-linux.patch      file://0012-Add-support-for-Netlogic-XLP.patch 
file://0013-Fix-GOT-address-computations-in-initial-PLT-entries-.patch 
file://0014-Correct-nios2-_gp-address-computation.patch 
file://0015-fix-the-incorrect-assembling-for-ppc-wait-mnemonic.patch 
file://MIPS-GAS-Fix-an-ISA-override-not-lifting-ABI-restrictions.patch ' to ' 
git://sourceware.org/git/binutils-gdb.git;branch=binutils-${BINUPV}-branch;protocol=git 
file://0002-configure-widen-the-regexp-for-SH-architectures.patch 
file://0003-Point-scripts-location-to-libdir.patch 
file://0004-Only-generate-an-RPATH-entry-if-LD_RUN_PATH-is-not-e.patch 
file://0005-Explicitly-link-with-libm-on-uclibc.patch      file://0006-Use-libtool-2.4.patch 
file://0007-Add-the-armv5e-architecture-to-binutils.patch 
file://0008-don-t-let-the-distro-compiler-point-to-the-wrong-ins.patch 
file://0009-warn-for-uses-of-system-directories-when-cross-linki.patch 
file://0010-Fix-rpath-in-libtool-when-sysroot-is-enabled.patch 
file://0011-Change-default-emulation-for-mips64-linux.patch      file://0012-Add-support-for-Netlogic-XLP.patch 
file://0013-Fix-GOT-address-computations-in-initial-PLT-entries-.patch 
file://0014-Correct-nios2-_gp-address-computation.patch 
file://0015-fix-the-incorrect-assembling-for-ppc-wait-mnemonic.patch '
Dependency on checksum of file MIPS-GAS-Fix-an-ISA-override-not-lifting-ABI-restrictions.patch was removed

gthomas@europa:p0382_2016-01-13$ ls -l 
sstate-cache/66/sstate:binutils-cross-arm::2.26:r0::3:66ee1a83fd248d206fd4fd9fb33ffe26_fetch.tgz.siginfo 
sstate-cache/db/sstate:binutils-cross-arm::2.26:r0::3:dbdcf77671cb88d7220531471eae70a2_fetch.tgz.siginfo
-rw-rw-r-- 1 gthomas gthomas 3966 Jul  6 09:16 
sstate-cache/66/sstate:binutils-cross-arm::2.26:r0::3:66ee1a83fd248d206fd4fd9fb33ffe26_fetch.tgz.siginfo
-rw-rw-r-- 1 gthomas gthomas 3787 Jun 28 05:55 
sstate-cache/db/sstate:binutils-cross-arm::2.26:r0::3:dbdcf77671cb88d7220531471eae70a2_fetch.tgz.siginfo

Notice that the timestamp from today was 09:16.  I had updated my Poky/Yocto repo
at 08:04 today and then immediately made the first run (seen above).  When I started
the second run it was 11:57, and binutils-cross-arm was created (I think from setscene)
at 12:00.  So why could these hashes have caused all those other ripples (which took
until 14:15 to finish).

I also saw some very weird behaviour in all of this.  I noticed that my virtual/kernel
was totally rebuilt, but the image that's in the deploy directory came from the setscene
task, i.e. the first run :-(

None of this seems quite right to me and I'd really like to understand it and, if needed,
help figure out how to make it correct (and robust).

I'll save the total state of everything in case I can provide more data...

> On Wed, Jul 6, 2016 at 12:10 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     I just had a [nearly] complete build failed (building webkitgtk
>     after some 6000 tasks).  I decided to try the 'rebuild from sstate'
>     by removing my 'tmp' directory and rebuild.  Bitbake proceeded to
>     run 2200 setscene tasks and then [it seems] started over on the
>     build, rebuilding the target gcc, the kernel, who knows what else...
>     These are all things that I thought had been completed before
>     during the initial ~6000 steps.
>
>     What could be going on and why couldn't it just pick up using
>     sstate from where it left off?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

