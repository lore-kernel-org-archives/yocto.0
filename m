Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28FEFE0071C; Wed, 12 Aug 2015 11:21:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 563C3E003D9
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 11:21:53 -0700 (PDT)
Received: by igbjg10 with SMTP id jg10so48608238igb.0
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 11:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=iPbv8tCRo0o+kqJPSpcwL7El/Yte8Q5fhtZH3Ay1nJ8=;
	b=MA1CNgtSbehOhe/BM/JPvf2QhDnTy7ZFFEq932Y4UVKDnsDHDLF799ySX+M8jdofJs
	oL6levE4X+9bmJjL7di4ulN+k+oaFTxSM+kSvswYqeW6awKSPYr7QeP/FE5CWYlUaZHr
	vsq6qpIYgOzPS0qOn2i0YXahdxEZTYkwOJhQ8Ryzxx0p7ZgZFZOwbW46YoiAWeIw5T8T
	i+nwfD0PxTl3nL5/vbYe7fb5arDCIDD1MXqXijAix0YpXxdRkp9b/zdDBSFs47iBqr5X
	uVzBbln9dhy9cHs9nkqKnrzR/+m1XkB6sEL6hX0ftCw9lhWxSAGlV3oE+BuA+hAqoEOq
	hyqw==
X-Received: by 10.50.47.70 with SMTP id b6mr24683378ign.59.1439403713438;
	Wed, 12 Aug 2015 11:21:53 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	ii1sm10940384igb.10.2015.08.12.11.21.52
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 12 Aug 2015 11:21:52 -0700 (PDT)
To: Juro Bystricky <juro.bystricky@intel.com>, yocto@yoctoproject.org
References: <1439329715-8646-1-git-send-email-juro.bystricky@intel.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55CB8EBD.4080105@gmail.com>
Date: Wed, 12 Aug 2015 14:21:49 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <1439329715-8646-1-git-send-email-juro.bystricky@intel.com>
Subject: Re: [meta-darwin][PATCH] osx-runtime: OSX Yosemite v10.10
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
X-List-Received-Date: Wed, 12 Aug 2015 18:21:55 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 08/11/15 17:48, Juro Bystricky wrote:
> Set of patches to allow building against OSX Yosemite v10.10 runtime.

Excellent! My build failed, then I noticed your patches.

Even with this patch applied, however, my build fails with native-libffi
in do_patch. It appears the existing "darwinfix.patch" no longer
applies. I updated the patch so libffi can now do_patch successfully,
but I don't know if it builds since gcc-crosssdk-i386 fails in do_compile.

|
/z/layerindex/firefly/tmp/work/i386-linux/gcc-crosssdk-i386/4.9.3-r0/gcc-4.9.3/build.x86_64-linux.i386-pokysdk-darwin/./gcc/xgcc
-B/z/layerindex/firefly/tmp/work/i386-linux/gcc-crosssdk-i386/4.9.3-r0/gcc-4.9.3/build.x86_64-linux.i386-pokysdk-darwin/./gcc/
-B/z/layerindex/firefly/tmp/sysroots/x86_64-linux/usr/i386-pokysdk-darwin/bin/
-B/z/layerindex/firefly/tmp/sysroots/x86_64-linux/usr/i386-pokysdk-darwin/lib/
-isystem
/z/layerindex/firefly/tmp/sysroots/x86_64-linux/usr/i386-pokysdk-darwin/include
-isystem
/z/layerindex/firefly/tmp/sysroots/x86_64-linux/usr/i386-pokysdk-darwin/sys-include
--sysroot=/z/layerindex/firefly/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin
  -O2  -g -Os -DIN_GCC  -DCROSS_DIRECTORY_STRUCTURE  -W -Wall
-Wno-narrowing -Wwrite-strings -Wcast-qual -Wstrict-prototypes
-Wmissing-prototypes -Wold-style-definition  -isystem ./include   -pipe
-fno-common -g -DIN_LIBGCC2 -fbuilding-libgcc -fno-stack-protector
-dynamiclib -nodefaultlibs -install_name
/z/layerindex/firefly/tmp/sysroots/x86_64-linux/usr/i386-pokysdk-darwin/lib/libgcc_s.1.dylib
-single_module -o ./libgcc_s.dylib -Wl,-exported_symbols_list,libgcc.map
-compatibility_version 1 -current_version 1.0 -g -Os -B./ _muldi3_s.o
_negdi2_s.o _lshrdi3_s.o _ashldi3_s.o _ashrdi3_s.o _cmpdi2_s.o
_ucmpdi2_s.o _clear_cache_s.o _trampoline_s.o __main_s.o _absvsi2_s.o
_absvdi2_s.o _addvsi3_s.o _addvdi3_s.o _subvsi3_s.o _subvdi3_s.o
_mulvsi3_s.o _mulvdi3_s.o _negvsi2_s.o _negvdi2_s.o _ctors_s.o
_ffssi2_s.o _ffsdi2_s.o _clz_s.o _clzsi2_s.o _clzdi2_s.o _ctzsi2_s.o
_ctzdi2_s.o _popcount_tab_s.o _popcountsi2_s.o _popcountdi2_s.o
_paritysi2_s.o _paritydi2_s.o _powisf2_s.o _powidf2_s.o _powixf2_s.o
_powitf2_s.o _mulsc3_s.o _muldc3_s.o _mulxc3_s.o _multc3_s.o _divsc3_s.o
_divdc3_s.o _divxc3_s.o _divtc3_s.o _bswapsi2_s.o _bswapdi2_s.o
_clrsbsi2_s.o _clrsbdi2_s.o _fixunssfsi_s.o _fixunsdfsi_s.o
_fixunsxfsi_s.o _fixsfdi_s.o _fixdfdi_s.o _fixxfdi_s.o _fixunssfdi_s.o
_fixunsdfdi_s.o _fixunsxfdi_s.o _floatdisf_s.o _floatdidf_s.o
_floatdixf_s.o _floatundisf_s.o _floatundidf_s.o _floatundixf_s.o
_fixsfti_s.o _fixdfti_s.o _fixxfti_s.o _fixtfti_s.o _fixunssfti_s.o
_fixunsdfti_s.o _fixunsxfti_s.o _fixunstfti_s.o _floattisf_s.o
_floattidf_s.o _floattixf_s.o _floattitf_s.o _floatuntisf_s.o
_floatuntidf_s.o _floatuntixf_s.o _floatuntitf_s.o _divdi3_s.o
_moddi3_s.o _udivdi3_s.o _umoddi3_s.o _udiv_w_sdiv_s.o _udivmoddi4_s.o
darwin-64_s.o cpuinfo_s.o tf-signs_s.o sfp-exceptions_s.o addtf3_s.o
divtf3_s.o eqtf2_s.o getf2_s.o letf2_s.o multf3_s.o negtf2_s.o
subtf3_s.o unordtf2_s.o fixtfsi_s.o fixunstfsi_s.o floatsitf_s.o
floatunsitf_s.o fixtfdi_s.o fixunstfdi_s.o floatditf_s.o floatunditf_s.o
extendsftf2_s.o extenddftf2_s.o extendxftf2_s.o trunctfsf2_s.o
trunctfdf2_s.o trunctfxf2_s.o enable-execute-stack_s.o unwind-dw2_s.o
unwind-dw2-fde-darwin_s.o unwind-sjlj_s.o unwind-c_s.o emutls_s.o
libgcc.a -lc
| ld: library not found for -ldylib1.o

It's strange that it says "library not found for -ldylib1.o" because
that library is in my sdk's sysroot:

$ find . -name "*dylib1*" -print
./tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/usr/lib/dylib1.o
./tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/usr/lib/dylib1.10.5.o
./tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/usr/lib/lazydylib1.o


Have you had any success building? The line I'm using to invoke the
build is:

$ SDKMACHINE=i386-darwin bitbake core-image-minimal -c populate_sdk

and the details of my build are:

Build Configuration:
BB_VERSION        = "1.27.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "openSUSE-project-13.2"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "firefly-emmc-mainline"
DISTRO            = "poky"
DISTRO_VERSION    = "1.8+snapshot-20150812"
TUNE_FEATURES     = "arm armv7a vfp neon cortexa15"
TARGET_FPU        = "vfp-neon"
meta              = "master:4c3329630e5bf6f2229c6a85052ce71f7cc71703"
meta-rockchip     =
"contrib/twoerner/emmc-first-draft:be45e46f73c5ea7118e4be9511e1ee7652e1ebcf"
meta-yocto        = "master:eefd3580e451a09e7f4696f306d955a4caa1cf88"
meta-darwin       =
"contrib/twoerner/fixes:6234b82444b1ebf9bfb0ac8deb5cb582c89cb41d"

my layers are:
	openembedded-core/meta
	meta-rockchip
	meta-yocto/meta-yocto
	meta-darwin

Thoughts?

