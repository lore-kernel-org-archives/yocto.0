Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A460E00E3C; Wed,  7 Feb 2018 06:01:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F372EE00D6D
	for <yocto@yoctoproject.org>; Wed,  7 Feb 2018 06:01:37 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id w17E1WNa001697
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Wed, 7 Feb 2018 16:01:33 +0200
To: Robert Berger <yocto.user.mailinglist@gmail.com>,
	Yocto Project <yocto@yoctoproject.org>
References: <ac8ff7de-889b-f948-87ba-cac758900512@vitheia.com>
	<4662d7ee-4215-e81e-58aa-a98a42c5ad56@gmail.com>
	<b2a06fdc-c5b5-42be-e1e9-1005c5c531e6@vitheia.com>
	<f14fc372-f394-2d32-4c95-c8b71fa43a51@gmail.com>
From: Mircea Gliga <mircea.gliga@vitheia.com>
Message-ID: <e412b2d0-6e14-983e-b7cc-63938705344a@vitheia.com>
Date: Wed, 7 Feb 2018 16:01:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <f14fc372-f394-2d32-4c95-c8b71fa43a51@gmail.com>
Subject: Re: static libraries missing from sdk
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
X-List-Received-Date: Wed, 07 Feb 2018 14:01:40 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi

This is the directory tree from the recipes packages-split/ folder, 
notice the empty main pkg, empty dbg etc

$ /usr/bin/tree
.
├── fmt
├── fmt-dbg
├── fmt-dev
│   └── usr
│       ├── include
│       │   └── fmt
│       │       ├── format.cc
│       │       ├── format.h
│       │       ├── ostream.cc
│       │       ├── ostream.h
│       │       ├── posix.h
│       │       ├── printf.h
│       │       ├── string.h
│       │       └── time.h
│       └── lib
│           └── cmake
│               └── fmt
│                   ├── fmt-config.cmake
│                   ├── fmt-config-version.cmake
│                   ├── fmt-targets.cmake
│                   └── fmt-targets-release.cmake
├── fmt-doc
├── fmt-locale
└── fmt-staticdev
     └── usr
         └── lib
             └── libfmt.a

See my notes below:


On 07/02/18 14:12, Robert Berger wrote:
> Hi,
>
> On 2018-02-07 09:46, Mircea Gliga wrote:
>> Thanks for your answer.
>> I already have the ALLOW_EMPTY_${PN} = "1" in the recipe
>>
>> What I still don't get is why the -dev gets installed but the 
>> -staticdev doesn't, even though the dependency is satisfied (the 
>> empty pkg exists).
>>
>>
> Just to understand what you are trying to do:
>
> Would like to have both .a and .so files for your library in your SDK?
I need the headers and the static library in the SDK, fmt-dev, 
fmt-staticdev
>
> What should be on the rootfs? I guess the .so
Nothing regarding this package.
>
> You can check the contents of your packages with:
>
> oe-pkgdata-util list-pkg-files -p <package-name>
$ oe-pkgdata-util list-pkg-files -p fmt
fmt:
fmt-dbg:
fmt-dev:
     /usr/include/fmt/format.cc
     /usr/include/fmt/format.h
     /usr/include/fmt/ostream.cc
     /usr/include/fmt/ostream.h
     /usr/include/fmt/posix.h
     /usr/include/fmt/printf.h
     /usr/include/fmt/string.h
     /usr/include/fmt/time.h
     /usr/lib/cmake/fmt/fmt-config-version.cmake
     /usr/lib/cmake/fmt/fmt-config.cmake
     /usr/lib/cmake/fmt/fmt-targets-release.cmake
     /usr/lib/cmake/fmt/fmt-targets.cmake
fmt-staticdev:
     /usr/lib/libfmt.a
>
> How do you build your stuff? autotools?
The pkg is compiled using cmake, hence the inherit cmake:
     FILES_${PN}-dev += "${libdir}/*"

     #we need the empty main pkg, as -dev and -staticdev depend on it = 
 > they end up in the SDK
     ALLOW_EMPTY_${PN} = "1"

     inherit cmake

It's a simple recipe, other than that it has the license info, SRC_URI, 
S vars set.

>
> I needed to do the following in my recipe with autotools:
>
> # By default EXTRA_OECONF is set to --disable-static ...
> # Let's get rid of this
> DISABLE_STATIC = ""
> EXTRA_OECONF := "${@oe_filter_out('--disable-static', 
> '${EXTRA_OECONF}', d)}"
> # enable static and disable shared (for fun)
> EXTRA_OECONF += "--enable-static --enable-shared"
>
> ----
>
> I added this to local.conf:
>
> # -->
> IMAGE_INSTALL_append = " libhw-so-a"
> # add libhw-so-a-dev and libhw-so-a-staticdev to SDK:
> TOOLCHAIN_TARGET_TASK_append = " libhw-so-a-staticdev libhw-so-a-dev"
> # <--
In my local.conf I have:
     SDKIMAGE_FEATURES += "dev-pkgs dbg-pkgs staticdev-pkgs"
There is *no*  usr/lib/libfmt.a in the SDK (no 
[...]toolchain/sysroots/cortexa5hf-neon-poky-linux-gnueabi/usr/lib/libfmt.a)

If I then add in local.conf also the following line:
     TOOLCHAIN_TARGET_TASK_append = " fmt-staticdev"

then I get the .a file in the SDK:
[...]toolchain/sysroots/cortexa5hf-neon-poky-linux-gnueabi/usr/lib/libfmt.a

Doesn't the staticdev-pkgs in the SDKIMAGE_FEATURES specify to install 
*all* the staticdev pkgs in the SDK ?
>
> That's the content of the packages produced:
>
> libhw-so-a:
>         /usr/lib/libhw.so.0
>         /usr/lib/libhw.so.0.0.0
> libhw-so-a-dbg:
>         /usr/lib/debug/usr/lib/libhw.so.0.0.0.debug
> /usr/src/debug/libhw-so-a/1.0-r0/libhw-so-a-1.0/lib/lib_hw1.c
> /usr/src/debug/libhw-so-a/1.0-r0/libhw-so-a-1.0/lib/lib_hw2.c
> libhw-so-a-dev:
>         /usr/include/lib_hw.h
>         /usr/lib/libhw.so
> libhw-so-a-staticdev:
>         /usr/lib/libhw.a
>
> in the rootfs:
>
> ./usr/lib/libhw.so.0
> ./usr/lib/libhw.so.0.0.0
>
> in the SDK:
>
> ./opt/poky/2.4/sysroots/armv7a-neon-poky-linux-gnueabi/usr/lib/libhw.so
> ./opt/poky/2.4/sysroots/armv7a-neon-poky-linux-gnueabi/usr/lib/libhw.a
> ./opt/poky/2.4/sysroots/armv7a-neon-poky-linux-gnueabi/usr/lib/libhw.so.0
> ./opt/poky/2.4/sysroots/armv7a-neon-poky-linux-gnueabi/usr/lib/libhw.so.0.0.0 
>
> ./opt/poky/2.4/sysroots/armv7a-neon-poky-linux-gnueabi/usr/include/lib_hw.h 
>
>
> Can you cook up an example where we can see/reproduce your problem?
Is the above enough ?
>
> ----
>
> Regards,
>
> Robert
>


Regards

