Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F708E00758; Wed, 12 Aug 2015 13:02:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C44BE00474
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 13:02:03 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP; 12 Aug 2015 13:01:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,663,1432623600"; d="scan'208";a="540701927"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by FMSMGA003.fm.intel.com with ESMTP; 12 Aug 2015 13:01:34 -0700
Received: from orsmsx109.amr.corp.intel.com ([169.254.2.247]) by
	ORSMSX107.amr.corp.intel.com ([169.254.1.44]) with mapi id
	14.03.0224.002; Wed, 12 Aug 2015 13:01:34 -0700
From: "Bystricky, Juro" <juro.bystricky@intel.com>
To: Trevor Woerner <twoerner@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [meta-darwin][PATCH] osx-runtime: OSX Yosemite v10.10
Thread-Index: AQHQ1IAXUVkVP3GLZ0WsA8euCLwHg54JI9qA//+icIA=
Date: Wed, 12 Aug 2015 20:01:33 +0000
Message-ID: <6E51916E4A1F32428260031F4C7CD2B6101D623D@ORSMSX109.amr.corp.intel.com>
References: <1439329715-8646-1-git-send-email-juro.bystricky@intel.com>
	<55CB8EBD.4080105@gmail.com>
In-Reply-To: <55CB8EBD.4080105@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
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
X-List-Received-Date: Wed, 12 Aug 2015 20:02:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

yes, I ran into the same libgcc problem, I plan on tackling it eventually.=
=20
Likely some paths are not set correctly.
For what is worth, try to build the SDK against the poky "dizzy" branch.
I was able to build Darwin SDK with it. You may need to patch some other fi=
les though.
Anyway, there is new repo https://git.yoctoproject.org/cgit/cgit.cgi/meta-d=
arwin-contrib/
where I will place some Darwin patches, most notably those I used to build=
=20
the "dizzy" SDK (later next week).



> -----Original Message-----
> From: Trevor Woerner [mailto:twoerner@gmail.com]
> Sent: Wednesday, August 12, 2015 11:22 AM
> To: Bystricky, Juro; yocto@yoctoproject.org
> Cc: richard.purdie@linuxfoundation.org
> Subject: Re: [meta-darwin][PATCH] osx-runtime: OSX Yosemite v10.10
>=20
> On 08/11/15 17:48, Juro Bystricky wrote:
> > Set of patches to allow building against OSX Yosemite v10.10 runtime.
>=20
> Excellent! My build failed, then I noticed your patches.
>=20
> Even with this patch applied, however, my build fails with native-libffi =
in
> do_patch. It appears the existing "darwinfix.patch" no longer applies. I
> updated the patch so libffi can now do_patch successfully, but I don't kn=
ow if
> it builds since gcc-crosssdk-i386 fails in do_compile.
>=20
> |
> /z/layerindex/firefly/tmp/work/i386-linux/gcc-crosssdk-i386/4.9.3-r0/gcc-
> 4.9.3/build.x86_64-linux.i386-pokysdk-darwin/./gcc/xgcc
> -B/z/layerindex/firefly/tmp/work/i386-linux/gcc-crosssdk-i386/4.9.3-r0/gc=
c-
> 4.9.3/build.x86_64-linux.i386-pokysdk-darwin/./gcc/
> -B/z/layerindex/firefly/tmp/sysroots/x86_64-linux/usr/i386-pokysdk-
> darwin/bin/
> -B/z/layerindex/firefly/tmp/sysroots/x86_64-linux/usr/i386-pokysdk-
> darwin/lib/
> -isystem
> /z/layerindex/firefly/tmp/sysroots/x86_64-linux/usr/i386-pokysdk-
> darwin/include
> -isystem
> /z/layerindex/firefly/tmp/sysroots/x86_64-linux/usr/i386-pokysdk-
> darwin/sys-include
> --sysroot=3D/z/layerindex/firefly/tmp/sysroots/i386-nativesdk-darwin-
> pokysdk-darwin
>   -O2  -g -Os -DIN_GCC  -DCROSS_DIRECTORY_STRUCTURE  -W -Wall -Wno-
> narrowing -Wwrite-strings -Wcast-qual -Wstrict-prototypes
> -Wmissing-prototypes -Wold-style-definition  -isystem ./include   -pipe
> -fno-common -g -DIN_LIBGCC2 -fbuilding-libgcc -fno-stack-protector -
> dynamiclib -nodefaultlibs -install_name
> /z/layerindex/firefly/tmp/sysroots/x86_64-linux/usr/i386-pokysdk-
> darwin/lib/libgcc_s.1.dylib
> -single_module -o ./libgcc_s.dylib -Wl,-exported_symbols_list,libgcc.map
> -compatibility_version 1 -current_version 1.0 -g -Os -B./ _muldi3_s.o
> _negdi2_s.o _lshrdi3_s.o _ashldi3_s.o _ashrdi3_s.o _cmpdi2_s.o
> _ucmpdi2_s.o _clear_cache_s.o _trampoline_s.o __main_s.o _absvsi2_s.o
> _absvdi2_s.o _addvsi3_s.o _addvdi3_s.o _subvsi3_s.o _subvdi3_s.o
> _mulvsi3_s.o _mulvdi3_s.o _negvsi2_s.o _negvdi2_s.o _ctors_s.o _ffssi2_s.=
o
> _ffsdi2_s.o _clz_s.o _clzsi2_s.o _clzdi2_s.o _ctzsi2_s.o _ctzdi2_s.o
> _popcount_tab_s.o _popcountsi2_s.o _popcountdi2_s.o _paritysi2_s.o
> _paritydi2_s.o _powisf2_s.o _powidf2_s.o _powixf2_s.o _powitf2_s.o
> _mulsc3_s.o _muldc3_s.o _mulxc3_s.o _multc3_s.o _divsc3_s.o _divdc3_s.o
> _divxc3_s.o _divtc3_s.o _bswapsi2_s.o _bswapdi2_s.o _clrsbsi2_s.o
> _clrsbdi2_s.o _fixunssfsi_s.o _fixunsdfsi_s.o _fixunsxfsi_s.o _fixsfdi_s.=
o
> _fixdfdi_s.o _fixxfdi_s.o _fixunssfdi_s.o _fixunsdfdi_s.o _fixunsxfdi_s.o
> _floatdisf_s.o _floatdidf_s.o _floatdixf_s.o _floatundisf_s.o _floatundid=
f_s.o
> _floatundixf_s.o _fixsfti_s.o _fixdfti_s.o _fixxfti_s.o _fixtfti_s.o
> _fixunssfti_s.o _fixunsdfti_s.o _fixunsxfti_s.o _fixunstfti_s.o _floattis=
f_s.o
> _floattidf_s.o _floattixf_s.o _floattitf_s.o _floatuntisf_s.o _floatuntid=
f_s.o
> _floatuntixf_s.o _floatuntitf_s.o _divdi3_s.o _moddi3_s.o _udivdi3_s.o
> _umoddi3_s.o _udiv_w_sdiv_s.o _udivmoddi4_s.o darwin-64_s.o
> cpuinfo_s.o tf-signs_s.o sfp-exceptions_s.o addtf3_s.o divtf3_s.o eqtf2_s=
.o
> getf2_s.o letf2_s.o multf3_s.o negtf2_s.o subtf3_s.o unordtf2_s.o fixtfsi=
_s.o
> fixunstfsi_s.o floatsitf_s.o floatunsitf_s.o fixtfdi_s.o fixunstfdi_s.o
> floatditf_s.o floatunditf_s.o extendsftf2_s.o extenddftf2_s.o
> extendxftf2_s.o trunctfsf2_s.o trunctfdf2_s.o trunctfxf2_s.o enable-
> execute-stack_s.o unwind-dw2_s.o unwind-dw2-fde-darwin_s.o unwind-
> sjlj_s.o unwind-c_s.o emutls_s.o libgcc.a -lc
> | ld: library not found for -ldylib1.o
>=20
> It's strange that it says "library not found for -ldylib1.o" because that=
 library is
> in my sdk's sysroot:
>=20
> $ find . -name "*dylib1*" -print
> ./tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/usr/lib/dylib1.o
> ./tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/usr/lib/dylib1.10.5.o
> ./tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/usr/lib/lazydylib1.o
>=20
>=20
> Have you had any success building? The line I'm using to invoke the build=
 is:
>=20
> $ SDKMACHINE=3Di386-darwin bitbake core-image-minimal -c populate_sdk
>=20
> and the details of my build are:
>=20
> Build Configuration:
> BB_VERSION        =3D "1.27.1"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "openSUSE-project-13.2"
> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> MACHINE           =3D "firefly-emmc-mainline"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.8+snapshot-20150812"
> TUNE_FEATURES     =3D "arm armv7a vfp neon cortexa15"
> TARGET_FPU        =3D "vfp-neon"
> meta              =3D "master:4c3329630e5bf6f2229c6a85052ce71f7cc71703"
> meta-rockchip     =3D
> "contrib/twoerner/emmc-first-
> draft:be45e46f73c5ea7118e4be9511e1ee7652e1ebcf"
> meta-yocto        =3D "master:eefd3580e451a09e7f4696f306d955a4caa1cf88"
> meta-darwin       =3D
> "contrib/twoerner/fixes:6234b82444b1ebf9bfb0ac8deb5cb582c89cb41d"
>=20
> my layers are:
> 	openembedded-core/meta
> 	meta-rockchip
> 	meta-yocto/meta-yocto
> 	meta-darwin
>=20
> Thoughts?

