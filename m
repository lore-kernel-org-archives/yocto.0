Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9440CE00BD6; Fri, 23 Jun 2017 19:46:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.173 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f173.google.com (mail-wr0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11CABE00B28
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 19:46:11 -0700 (PDT)
Received: by mail-wr0-f173.google.com with SMTP id 77so87009287wrb.1
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 19:46:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=yD5MrfXnRHGenr9mwRZdNq8MJ8u+B811p1/94Ess1eQ=;
	b=hnWyT0dTCj8cFoya8uqtofTjYx3uADqhJY6k8wtIUfGpDFQSYFPAyBh1wdbIQsHXTR
	NW6FO+hKXxrN7B8NnaSm2wgxYa+uJx/6wgZC1Arl5OPnkJYKDFH2lpZozE7p4Tq2Y0Fx
	vLgk4mH9SxZO0Z0VpW4RjuIJeCBKEW0+bP+ZVsoSu6YR5yz4K8e7iRcksdULTLpbYR39
	laiQjF8DEua6wVd/0MGr2lMng6g8tC7jS6OIhLFiFSPRmu7UVqB877tfPC2Hnde6AsPp
	oM+FiwN5SrvRjJ24wA3Xb8PfLsLm2SHC+tvVXoZFzh0yp2CXkHnIZ6SvDLlz1RE5eKhy
	Xfpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=yD5MrfXnRHGenr9mwRZdNq8MJ8u+B811p1/94Ess1eQ=;
	b=lqqvdV9Wa4skP3r3JcwN/m08ElUa/EcEAOe4anLodhSUIeeGNGn0ppnlRLJUucZUyo
	i9AXCuW6E4BYxu3XtyiqheAgYw6GmsD0IuzX7o6NemOqbdr2pkUZ/ZaGOKStnLmoPua0
	mLTn99NcfexoiLVz87Gq2n77RTuVekyMOJ6ulvwSCjHJdAjzWSeoT6D7cMC1IWqO9HI0
	wZ2Nyns5BJGEJaeHpggDcmZrzCEwB/wdK9KIWPvOUiiYMxOXsP5trq0VFYBbjKD4P58i
	ar3vZ4q7UYDRDFYD9WJPKaO44xnnO0Om7UF8TvuOGec8888ydBOoZ5M7Ie3CQKzMq7/F
	2Ubw==
X-Gm-Message-State: AKS2vOykeDDtDlqDnSK4zKskRSRM2cGw0BYaI46IULjOIOWH10wQZZ/N
	W2R7gCWuBVdt0vlzNlBB2TkKLFVqBA==
X-Received: by 10.80.131.6 with SMTP id 6mr8276028edh.178.1498272371216; Fri,
	23 Jun 2017 19:46:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.165.198 with HTTP; Fri, 23 Jun 2017 19:45:40 -0700 (PDT)
In-Reply-To: <20170624015504.GA21604@linux-uys3>
References: <CAHUNapRZG_qxTXd7JLNwp7918Y_Vasr8nS60EatyjP2QGhbZ-A@mail.gmail.com>
	<CAMKF1sopiKLcmpD7pCn69mW0jhR0QFYWwNpBfztdQba5GJzwHw@mail.gmail.com>
	<20170624015504.GA21604@linux-uys3>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 23 Jun 2017 19:45:40 -0700
Message-ID: <CAMKF1sotOE_qKdV-_2oKu8AvvbnZ3z2UD6TwWhaXpYf08=2usQ@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: using clang for one recipe
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
X-List-Received-Date: Sat, 24 Jun 2017 02:46:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 23, 2017 at 6:55 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> On Fri 2017-06-23 @ 03:57:06 PM, Khem Raj wrote:
>> On Fri, Jun 23, 2017 at 3:39 PM, Trevor Woerner <twoerner@gmail.com> wro=
te:
>> > Adding that line, and adding meta-clang to bblayers.conf, did get the
>> > llvm/clang compiler built and installed to recipe-sysroot-native. But
>> > the moment it starts to build the package, it fails immediately with:
>> >
>> >     | fatal error: 'string' file not found
>> >     | #include <string>
>> >     |          ^~~~~~~~
>> >
>> > Did I miss a step? That seems like a pretty basic thing that would be
>> > needed for using a toolchain. If feels like I'm missing something;
>> > like I need to add something else to my local.conf. Thoughts?
>> > Suggestions?
>>
>> which package is it ? it seems its missing proper -I paths.?
>
> I'm investigating moving chromium to a newer version, specifically someth=
ing
> much closer to the current Linux stable (59.0.3071.109). My understanding=
 is
> the chromium developers use clang, which would explain why it's always so=
 much
> work to get it to compile with gcc. If I can get chromium to build with c=
lang,
> I think it would make future maintenance much easier. Switching from gyp =
to gn
> was easy, but getting this newer version to build with gcc7 is a challeng=
e.
>
> When I go to the recipe-sysroot-native, I find clang in usr/bin. But from=
 that
> base location if I do a
>
>         $ find . -name "*string*" -print
>
> I don't find any such include files. Should they not be installed to the
> native sysroot alongside clang itself?
>
> Here's one example of a failing compile:
>
> | [16/25529] CXX obj/base/allocator/tcmalloc/sysinfo.o
> | FAILED: obj/base/allocator/tcmalloc/sysinfo.o
> | ../../../recipe-sysroot-native/usr/bin/clang++ -MMD -MF obj/base/alloca=
tor/tcmalloc/sysinfo.o.d -DNO_HEAP_CHECK -DV8_DEPRECATION_WARNINGS -DUSE_UD=
EV -DUSE_AURA=3D1 -DUSE_PANGO=3D1 -DUSE_CAIRO=3D1 -DUSE_GLIB=3D1 -DUSE_NSS_=
CERTS=3D1 -DUSE_X11=3D1 -DDISABLE_NACL -DFULL_SAFE_BROWSING -DSAFE_BROWSING=
_CSD -DSAFE_BROWSING_DB_LOCAL -DCHROMIUM_BUILD -DENABLE_MEDIA_ROUTER=3D1 -D=
FIELDTRIAL_TESTING_ENABLED -DCR_CLANG_REVISION=3D\"299960-1\" -D_FILE_OFFSE=
T_BITS=3D64 -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -DCOMPONENT_BUILD -D_=
DEBUG -DDYNAMIC_ANNOTATIONS_ENABLED=3D1 -DWTF_USE_DYNAMIC_ANNOTATIONS=3D1 -=
DTCMALLOC_FOR_DEBUGALLOCATION -DTCMALLOC_DONT_REPLACE_SYSTEM_ALLOC -I../../=
base/allocator -I../../third_party/tcmalloc/chromium/src/base -I../../third=
_party/tcmalloc/chromium/src -I../.. -Igen -fno-strict-aliasing --param=3Ds=
sp-buffer-size=3D4 -fstack-protector -Wno-builtin-macro-redefined -D__DATE_=
_=3D -D__TIME__=3D -D__TIMESTAMP__=3D -funwind-tables -fPIC -pipe -fcolor-d=
iagnostics --target=3Darm-linux-gnueabihf -march=3Darmv7-a -mfloat-abi=3Dha=
rd -mtune=3Dgeneric-armv7-a -pthread -mfpu=3Dneon -O0 -fno-omit-frame-point=
er -g2 --sysroot=3D../../build/linux/debian_jessie_arm-sysroot -fvisibility=
=3Dhidden -Wheader-hygiene -Wstring-conversion -Wtautological-overlap-compa=
re -Wall -Wno-unused-variable -Wno-missing-field-initializers -Wno-unused-p=
arameter -Wno-c++11-narrowing -Wno-covered-switch-default -Wno-unneeded-int=
ernal-declaration -Wno-inconsistent-missing-override -Wno-undefined-var-tem=
plate -Wno-nonportable-include-path -Wno-address-of-packed-member -Wno-unus=
ed-lambda-capture -Wno-user-defined-warnings -Wno-reorder -Wno-unused-funct=
ion -Wno-unused-local-typedefs -Wno-unused-private-field -Wno-sign-compare =
-Wno-unused-result -fvisibility-inlines-hidden -Wno-undefined-bool-conversi=
on -Wno-tautological-undefined-compare -std=3Dgnu++11 -fno-rtti -fno-except=
ions -Wno-deprecated -c ../../third_party/tcmalloc/chromium/src/base/sysinf=
o.cc -o obj/base/allocator/tcmalloc/sysinfo.o
> | In file included from ../../third_party/tcmalloc/chromium/src/base/sysi=
nfo.cc:62:
> | In file included from ../../third_party/tcmalloc/chromium/src/base/sysi=
nfo.h:49:
> | In file included from ../../third_party/tcmalloc/chromium/src/base/logg=
ing.h:49:
> | ../../third_party/tcmalloc/chromium/src/base/commandlineflags.h:52:10: =
fatal error: 'string' file not found
> | #include <string>
> |          ^~~~~~~~
> | 1 error generated.
>
>
> I can send you the non-working, partial recipe if you're interested too.


Yes chrome uses clang primarily. I think whats missing it dependency
on C++ runtime. default is libstdc++ so I guess you have to add a
dependency on gcc-runtime

