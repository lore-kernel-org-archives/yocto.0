Return-Path: <lsorense@csclub.uwaterloo.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14E16E009EF; Wed, 24 Aug 2016 13:49:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 386 seconds by postgrey-1.32 at yocto-www;
	Wed, 24 Aug 2016 13:49:42 PDT
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
	[129.97.134.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2E61E00874
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 13:49:42 -0700 (PDT)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
	id C24A3C025C; Wed, 24 Aug 2016 16:43:15 -0400 (EDT)
Date: Wed, 24 Aug 2016 16:43:15 -0400
To: Ottavio Campana <o.campana@videotec.com>
Message-ID: <20160824204315.GA14313@csclub.uwaterloo.ca>
References: <5637116E3E13BE46B0D936BF364783C1F651AD@MAIA.sede.videotec.com>
MIME-Version: 1.0
In-Reply-To: <5637116E3E13BE46B0D936BF364783C1F651AD@MAIA.sede.videotec.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
From: lsorense@csclub.uwaterloo.ca (Lennart Sorensen)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Tuning for a machine based on Cortex-A9
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
X-List-Received-Date: Wed, 24 Aug 2016 20:49:46 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 24, 2016 at 07:51:40AM +0000, Ottavio Campana wrote:
> Hello,
> 
> I am trying to port a third-party BSP based on buildroot to yocto, but I am not able to tune the compiler to extactly match the original one.
> 
> Particularly, if I run readelf on a binary compiled with the gcc that is used by buildroot I get this output
> 
> ottavio@ottavio:~$ readelf -A hello_world
> Attribute Section: aeabi
> File Attributes
>   Tag_CPU_name: "Cortex-A9"
>   Tag_CPU_arch: v7
>   Tag_CPU_arch_profile: Application
>   Tag_ARM_ISA_use: Yes
>   Tag_THUMB_ISA_use: Thumb-2
>   Tag_FP_arch: VFPv3
>   Tag_Advanced_SIMD_arch: NEONv1
>   Tag_ABI_PCS_wchar_t: 4
>   Tag_ABI_FP_rounding: Needed
>   Tag_ABI_FP_denormal: Needed
>   Tag_ABI_FP_exceptions: Needed
>   Tag_ABI_FP_number_model: IEEE 754
>   Tag_ABI_align_needed: 8-byte
>   Tag_ABI_align_preserved: 8-byte, except leaf SP
>   Tag_ABI_enum_size: int
>   Tag_CPU_unaligned_access: v6
>   Tag_MPextension_use: Allowed
>   Tag_Virtualization_use: TrustZone
> ottavio@ottavio:~$
> 
> I tried to replicate this by configuring a new machine, and my machine configuration looks like this
> 
> require ../../../meta/conf/machine/include/tune-cortexa9.inc
> 
> AVAILTUNES += "cortexa9t-vfpv3-neon"
> ARMPKGARCH_tune-cortexa9t-vfpv3-neon          = "cortexa9"
> TUNE_FEATURES_tune-cortexa9t-vfpv3-neon       = "${TUNE_FEATURES_tune-armv7at-vfpv3} neon cortexa9"
> PACKAGE_EXTRA_ARCHS_tune-cortexa9t-vfpv3-neon = "${PACKAGE_EXTRA_ARCHS_tune-armv7at-vfpv3} cortexa9-vfp cortexa9-vfpv3 cortexa9t2-vfp cortexa9t2-vfpv3 cortexa9-neon"
> 
> DEFAULTTUNE = "cortexa9t-vfpv3-neon"
> 
> If I run readelf on any compiled binary obtained with yocto, I get this result:
> 
> ottavio@ottavio:~/poky/build-xxx/tmp/work/cortexa9-vfpv3-poky-linux-gnueabi/bzip2/1.0.6-r5/build$ readelf -A .libs/bzip2
> Attribute Section: aeabi
> File Attributes
>   Tag_CPU_name: "Cortex-A9"
>   Tag_CPU_arch: v7
>   Tag_CPU_arch_profile: Application
>   Tag_ARM_ISA_use: Yes
>   Tag_THUMB_ISA_use: Thumb-2
>   Tag_FP_arch: VFPv3
>   Tag_ABI_PCS_wchar_t: 4
>   Tag_ABI_FP_rounding: Needed
>   Tag_ABI_FP_denormal: Needed
>   Tag_ABI_FP_exceptions: Needed
>   Tag_ABI_FP_number_model: IEEE 754
>   Tag_ABI_align_needed: 8-byte
>   Tag_ABI_align_preserved: 8-byte, except leaf SP
>   Tag_ABI_enum_size: int
>   Tag_CPU_unaligned_access: v6
>   Tag_MPextension_use: Allowed
>   Tag_Virtualization_use: TrustZone
> ottavio@ottavio:~/poky/build-xxx/tmp/work/cortexa9-vfpv3-poky-linux-gnueabi/bzip2/1.0.6-r5/build$
> 
> I am quite close to get a similar binary, the missing part is the Tag_Advanced_SIMD_arch: NEONv1 .  I get exactly the same result if I use DEFAULTTUNE = "cortexa9t-vfpv3", thus it seems that the neon and cortexa9-neon options I tried to add are ignored.
> 
> At this point I have two questions
> 
> Question #1
> 
> How should I change ARMPKGARCH_tune-cortexa9t-vfpv3-neon , TUNE_FEATURES_tune-cortexa9t-vfpv3-neon and PACKAGE_EXTRA_ARCHS_tune-cortexa9t-vfpv3-neon to have exactly the same kind of elf?
> 
> Question # 2
> 
> Why the only options for neon in meta/conf/machine/include/tune-cortexa9.inc are offered for HF tunes?

Well it looks to me like the HF neon options imply vfp, while the vfp3
tunes imply not neon.  Since they share registers the performance may
in fact be better if they are not mixed.

Of course there exists A9's without neon, so one might want to build
for that.

The git commit that added the vfpv3 tunes says they are for 32 register
VFP on A9s.  Neon already implies 32 registers for the vfp.

As far as I can tell, you can set DEFAULTTUNE to cortexa9t-neon to get
softfp with neon support, or you can set it to cortexa9thf-neon to get
hardfp with neon support.

Certainly cortexa9t-vfpv3 should NOT do neon as far as I can tell.

Getting the output you had above with neon support in it, I believe
means doing DEFAULTTUNE=cortexa9thf-neon

There is no such option as cortexa9t-vfpv3-neon that I can find in the
files anywhere, so that wouldn't work.  No point trying to invent one
since neon implies vfpv3 already.

-- 
Len Sorensen

