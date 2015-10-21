Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BAD2E00708; Wed, 21 Oct 2015 13:58:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.177 listed in list.dnswl.org]
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B9C8E006D5
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 13:58:53 -0700 (PDT)
Received: by wicll6 with SMTP id ll6so108606963wic.0
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 13:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=BMSefQHyL1O/7AbZTvIMElhI5H3aBYBAAm9FGSnbxJ0=;
	b=B6P1dK/gQUKcttKHvcXUtbURaJ9vmGElKwLiwEKoiG2Wq9+SW0pGBGb4pKEPttPyKv
	7WY+R2dxhqOrBJZJIn2deZDHiEIp/ShohYLcvEZ9K6v2+F2BdmiahPPNi180zmdigTwx
	G9T2coRxGnJaJWEgFCan8zpLZ+Dmt2q0i6IUDdmn0RIdMmP5MofJcoWJZ03FNYrYMwlS
	zHJNrpztCCLGzi9/DtGYAUJIGhuH1QVAOvfkx6cUUK94PvFUTaeB3vv1vkPTSgn57SgA
	c4aZqMs2BdwcHnB/CZrMMo4SSdZTIGuE8l+K9GgNwqLHTBrpGkRmOX8+URwiCa3lRbrR
	eNdw==
MIME-Version: 1.0
X-Received: by 10.194.90.169 with SMTP id bx9mr14570856wjb.1.1445461133083;
	Wed, 21 Oct 2015 13:58:53 -0700 (PDT)
Received: by 10.194.140.38 with HTTP; Wed, 21 Oct 2015 13:58:53 -0700 (PDT)
In-Reply-To: <DUB125-W342E248876E903AA3E9B3F8A380@phx.gbl>
References: <DUB125-W70B91D5FCA7A2A9CC289A78A3A0@phx.gbl>
	<1530167.LUOFWmWLxU@peggleto-mobl.ger.corp.intel.com>
	<DUB125-W342E248876E903AA3E9B3F8A380@phx.gbl>
Date: Wed, 21 Oct 2015 13:58:53 -0700
Message-ID: <CAJ86T=Wjmgb+B5HVX+o2Vcamxry0+AfenmUKbQyTCt8pm9H1zg@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
To: =?UTF-8?B?SsOpcsO0bWUgT0xJVklFUg==?= <jerome.olivier@outlook.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gcc LIBRARY_PATH sstate-cache issue
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
X-List-Received-Date: Wed, 21 Oct 2015 20:58:57 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 21, 2015 at 5:10 AM, J=C3=A9r=C3=B4me OLIVIER
<jerome.olivier@outlook.com> wrote:
>
> My situation is I have two machines:
> * machineA
> * machineB: inherits from machine B (only PREFERRED_VERSION for libxml2
> added)
>
> two images:
> * imageA
> * imageB: inherits from image A
>
> I have one build directory for each machine:
> * build-machineA
> * build-machineB (only new packages added), two of the package are shared
> libraries : libA and libB. libA is linked to libB. libB depends on libA.
> libA and libB are cmake recipes
>
> First I build the imageA in build-machineA for machineA
>
> In the build-machineB directory I build imageB for machineB. Moreover I
> point SSTATE_DIR or SSTATE_MIRRORS of build-machineB/conf/local.conf to
> build-machineA's sstate-cache directory.
>
> libA is built with success but libB's do_compile fails:
>
> /.../build-machineB$ bitbake libB
> [...]
>
> /.../build-machineB/tmp-glibc/sysroots/i686-linux/usr/bin/arm-opensdk-lin=
ux-gnueabi/arm-opensdk-linux-gnueabi-gcc
> -fPIC -g -O2 -W -Werror -Wall -Wextra -Wuninitialized -Wstrict-prototypes
> -Wcast-align -Wmissing-prototypes -Wchar-subscripts -Wpointer-arith -Winl=
ine
> -Wno-conversion -Wshadow  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed
> -shared -Wl,-soname,libsys.so.1 -o libsys.so.1
> CMakeFiles/sys.dir/src/crc.c.o CMakeFiles/sys.dir/src/fast_32k_utils.c.o
> CMakeFiles/sys.dir/src/filemap.c.o CMakeFiles/sys.dir/src/hash_tables.c.o
> CMakeFiles/sys.dir/src/hash_tables_2.c.o
> CMakeFiles/sys.dir/src/ipcs_keys.c.o CMakeFiles/sys.dir/src/log.c.o
> CMakeFiles/sys.dir/src/MM.c.o CMakeFiles/sys.dir/src/MM_no_mutex.c.o
> CMakeFiles/sys.dir/src/random.c.o CMakeFiles/sys.dir/src/registry.c.o
> CMakeFiles/sys.dir/src/time.c.o CMakeFiles/sys.dir/src/watchdog_timer.c.o
> CMakeFiles/sys.dir/src/watchdog_client.c.o
> CMakeFiles/sys.dir/src/watchdog_server.c.o
> CMakeFiles/sys.dir/src/state_machine.c.o
> CMakeFiles/sys.dir/src/thread_manager.c.o
> CMakeFiles/sys.dir/src/sg_log_eina.c.o -lpthread -leina -lpthread -leina
>
> /.../build-machineB/tmp-glibc/sysroots/i686-linux/usr/bin/arm-opensdk-lin=
ux-gnueabi/../../libexec/arm-opensdk-linux-gnueabi/gcc/arm-opensdk-linux-gn=
ueabi/4.9.1/ld:
> cannot find -llibA
>
> collect2: error: ld returned 1 exit status
>
> ERROR: Function failed: do_compile (log file is located at
> /.../build-machineB/tmp-glibc/work/cortexa9t2hf-vfp-neon-opensdk-linux-gn=
ueabi/libB/1.0.0/temp/log.do_compile.2284)
>
>
> At this moment I had to find why ld cannot find libA.so in sysroots so I
> launched a devshell on libB. In the devshell I cd-ed to the B dir of libB
> and run the cross-gcc command with the verbose "-v" option.
>
> /.../build-machineB$ bitbake libB -c devshell
>
> [devshell]
> /.../build-machineB/tmp-glibc/work/cortexa9t2hf-vfp-neon-opensdk-linux-gn=
ueabi/libB/1.0.0/git
> $ cd ../build
>
> [devshell]
> /.../build-machineB/tmp-glibc/work/cortexa9t2hf-vfp-neon-opensdk-linux-gn=
ueabi/libB/1.0.0/build$
> /.../build-machineB/tmp-glibc/sysroots/i686-linux/usr/bin/arm-opensdk-lin=
ux-gnueabi/arm-opensdk-linux-gnueabi-gcc
> -fPIC -g -O2 -W -Werror -Wall -Wextra -Wuninitialized -Wstrict-prototypes
> -Wcast-align -Wmissing-prototypes -Wchar-subscripts -Wpointer-arith -Winl=
ine
> -Wno-conversion -Wshadow  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed
> -shared -Wl,-soname,libsys.so.1 -o libsys.so.1
> CMakeFiles/sys.dir/src/crc.c.o CMakeFiles/sys.dir/src/fast_32k_utils.c.o
> CMakeFiles/sys.dir/src/filemap.c.o CMakeFiles/sys.dir/src/hash_tables.c.o
> CMakeFiles/sys.dir/src/hash_tables_2.c.o
> CMakeFiles/sys.dir/src/ipcs_keys.c.o CMakeFiles/sys.dir/src/log.c.o
> CMakeFiles/sys.dir/src/MM.c.o CMakeFiles/sys.dir/src/MM_no_mutex.c.o
> CMakeFiles/sys.dir/src/random.c.o CMakeFiles/sys.dir/src/registry.c.o
> CMakeFiles/sys.dir/src/time.c.o CMakeFiles/sys.dir/src/watchdog_timer.c.o
> CMakeFiles/sys.dir/src/watchdog_client.c.o
> CMakeFiles/sys.dir/src/watchdog_server.c.o
> CMakeFiles/sys.dir/src/state_machine.c.o
> CMakeFiles/sys.dir/src/thread_manager.c.o
> CMakeFiles/sys.dir/src/sg_log_eina.c.o -lpthread -leina -lpthread -leina
>
> /.../build-machineB/tmp-glibc/sysroots/i686-linux/usr/bin/arm-opensdk-lin=
ux-gnueabi/../../libexec/arm-opensdk-linux-gnueabi/gcc/arm-opensdk-linux-gn=
ueabi/4.9.1/ld:
> cannot find =E2=80=93leina =E2=80=93v
>

Try using ${CC} to call the compiler instead of giving an explicit PATH.

It's normal for the default sysroot compiled into the OE toolchain to
be wrong or deliberately set to something invalid. You therefore need
to take great care to always include the correct --sysroot option when
calling the compiler or linker.

The CC, LD, etc definitions provided by OE should always include the
correct --sysroot option, but you will see problems if the package
you're building over-rides or doesn't use these standard variables (
e.g. calls the compiler via ${CROSS_COMPILE}gcc ).

> I will only show you the interesting part of the result.
>
> [...]
>
>
> LIBRARY_PATH=3D/.../build-machineB/tmp-glibc/sysroots/i686-linux/usr/bin/=
arm-opensdk-linux-gnueabi/../../lib/arm-opensdk-linux-gnueabi/gcc/arm-opens=
dk-linux-gnueabi/4.9.1/:/.../build-machineB/tmp-glibc/sysroots/i686-linux/u=
sr/bin/arm-opensdk-linux-gnueabi/../../lib/arm-opensdk-linux-gnueabi/gcc/:/=
.../build-machineA/tmp-glibc/sysroots/machineA/lib/:/.../build-machineA/tmp=
-glibc/sysroots/machineA/usr/lib/arm-opensdk-linux-gnueabi/4.9.1//.../build=
-machineA/tmp-glibc/sysroots/machineA/usr/lib/
>
>  [...]
>
>
> The symptom is here. Instead of
> =E2=80=98/.../build-machineA/tmp-glibc/sysroots/machineA/usr/lib/=E2=80=
=99 it should be
> =E2=80=98/.../build-machineB//tmp-glibc/sysroots/machineB/usr/lib/=E2=80=
=99
>
>
> I couldn=E2=80=99t find in libB=E2=80=99s recipe (and included bbclasses)=
 where LIBRARY_PATH
> is set so I guess it comes from elswhere.
>
> My guess is that there is a problem in cross-gcc recipe and somewhere the
> <sysroots-target>/usr/lib path is hardcoded in sstate-cache. When
> recompilling for a different build bitbake use this cache that is pollute=
d
> by this hardcoded path.
>
>
> Note: I have the same problem if I do same build type (machine, builddir
> name) but different locations.
>
> The meta layer of machineB/imageB has a override of gcc 4.9 which consist=
s
> only on:
> EXTRA_OECONF_GCC_FLOAT =3D "${@get_gcc_float_setting(bb, d)}"
>
> I had some problem two while changing the version the PREFERRED_VERSION o=
f a
> recipe in local.conf. When recompiling bitbake don't redo do_unpack so
> configure/compile/install, one of them fails to find file in S directory.=
 I
> had to run cleanall on this package before doing a full bitbake.
>
> I hop I have been clear in my explanation of the situation.
>
> Kind Regards,
> --
> J=C3=A9r=C3=B4me OLIVIER
> TEL : +337 52 46 29 25
> @ : jerome.olivier@outlook.com
>
>> From: paul.eggleton@linux.intel.com
>> To: jerome.olivier@outlook.com
>> CC: yocto@yoctoproject.org
>> Subject: Re: [yocto] Disable sstate-cache for one recipe
>> Date: Mon, 19 Oct 2015 12:21:48 +0100
>>
>> Hi J=C3=A9r=C3=B4me,
>>
>> On Monday 19 October 2015 10:18:41 J=C3=A9r=C3=B4me OLIVIER wrote:
>> > I use yocto 1.7.2. I have some problem with sstate-cache.
>> > I would like to disable totally sstate_cache for only one recipe. Is
>> > that
>> > possible?
>>
>> Not really I'm afraid - what is the problem you are experiencing?
>>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

