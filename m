Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A0CBE00D74; Wed, 18 Sep 2019 02:20:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D0FAE00D74
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2019 02:20:12 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Sep 2019 02:20:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,520,1559545200"; d="scan'208";a="191663899"
Received: from abloeckn-mobl.ger.corp.intel.com (HELO blackadder.local)
	([10.249.38.226])
	by orsmga006.jf.intel.com with ESMTP; 18 Sep 2019 02:20:09 -0700
To: yocto@yoctoproject.org
References: <CA+FhBv9bStUZ1kMrmxRh7AnxbxT9Uth8Jh1wWtiQ-a9e7SXKPA@mail.gmail.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <3805babd-5eda-2fed-f539-3d5defc1bfe2@intel.com>
Date: Wed, 18 Sep 2019 10:20:08 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CA+FhBv9bStUZ1kMrmxRh7AnxbxT9Uth8Jh1wWtiQ-a9e7SXKPA@mail.gmail.com>
Subject: Re: Changing HOST_CC_ARCH temporarily in recipe
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
X-List-Received-Date: Wed, 18 Sep 2019 09:20:13 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 18/09/2019 09:26, Damien LEFEVRE wrote:
> I have a package which requires to first build a x64 binary which is 
> then used to compile the target platform binaries.
> 
> The way I got away with it was to build that host binary from 
> do_configure_prepend() and then continue with the build procedure.
> 
> I recently upgraded to GCC7 + warrior and now building the host binary 
> from do_configure_prepend fails due to this error:
> testCCompiler.c:1:0: error: bad value (armv8-a+crc) for -march= switch
> 
> I figured that the arch switch (building for tegra) is defined 
> in HOST_CC_ARCH as:
> -march=armv8-a+crc -fstack-protector-strong  -D_FORTIFY_SOURCE=2 
> -Wformat -Wformat-security -Werror=format-security
> 
> If I clear HOST_CC_ARCH in my recipe file, do_configure_prepend succeeds 
> but of course the rest of the build will fail.
> 
> So i'm trying to do something like this:
> do_configure_prepend(){
>      export HOST_CC_ARCH_BACKUP="${HOST_CC_ARCH}"
>      HOST_CC_ARCH=""
>      echo "HOST_CC_ARCH before cmake: ${HOST_CC_ARCH}"
>      CC="${BUILD_CC}" CXX="${BUILD_CXX}" CCFLAGS="${BUILD_CFLAGS}" 
>   CXXFLAGS="${BUILD_CPPFLAGS} -std=c++11" LDFLAGS="${BUILD_LDFLAGS}" 
> cmake ${S}
>      make
>      HOST_CC_ARCH="${HOST_CC_ARCH_BACKUP}"
> }

Two solutions:
1) Work around the problem by manually building the tool yourself.  This 
should be done in do_compile_prepend so that it isn't newer than the 
makefiles, which would cause it to be regenerated.

There's no need to mess around with HOST_CC_ARCH. That is only used in 
CC/CXX/FC/CPP, and you should be using BUILD_CC etc anyway.  This 
*should* work:

do_compile_prepend() {
   CC="${BUILD_CC}" CPP=... CFLAGS=... CXXFLAGS=... LDFLAGS=... make 
[target]
}

(expand the ..., I'm lazy)

If HOST_CC_ARCH is being used then there's only a limited number of 
variables that use it, so override the right ones. May be CPP, may be 
CXX. Looking at the makefile will tell you. Always just build exactly 
what you need with the native compiler, not more.

However the proper solution is
2) fix the cmakefiles to work in cross builds.  CMake actually makes 
this even harder than autotools which is quite an achievement: 
https://gitlab.kitware.com/cmake/community/wikis/doc/cmake/CrossCompiling#using-executables-in-the-build-created-during-the-build. 
  Quite likely easier to port to Meson, where you just set the native 
property on a binary target.

Ross

