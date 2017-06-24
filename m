Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2392DE00B9D; Fri, 23 Jun 2017 18:55:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF4CCE00B1B
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 18:55:08 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id h64so11306502iod.0
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 18:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=zpYfSG53Rl5QtiqndW/05gBLFI55HHKaRWP6Cbhr894=;
	b=Fuc6Jz/VpmRV9bdtaz/2A3wGJejOtjcUifsw8hQCPEuBU75zXl9/mPEJSOAqf3S7gu
	cL1+gdvrfxdKH5HRLS8jR/MyA9pnt9HjL9WKHllroE8PpPd0QmBX7VVuRrz7qGtsnMN9
	PV4Q3P7ZyST9dw+mcp8O3SczpF9U5etzHpVk1Q0YNpaiDoSC/U9RjUpVaiA6KOvZXNrK
	5B66h6HLCu8JXyk/66IJpUBGNgHGFylAmQLBUMjIUFd8JgXShsrf+PG8M6Y0GP93wyKl
	Du5KFV5AMhpftR/9V/QAJUGpMyWWYKT1mh2PhDH2jIfiYR3DFN5jrUypRGYFeIXE93Ze
	2GbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=zpYfSG53Rl5QtiqndW/05gBLFI55HHKaRWP6Cbhr894=;
	b=F51OqkWGw+rfCwyqA9MT8p65IYOLw0YkMzXZSnQAaizxdm/aTK8BHH6fxyZgJrNSAV
	2oO77uQ2CITrbymXQgcR0sXQ35FMRgd1kIVooqoFRS2z1ump78r4VtVeMXkopX2UZzAI
	jNv36WWpbdbf9ZVwnaSce6h+31bDzu0tdwYafW+Gt9g4uXwMO8qyQDe2Mk0zLC77p5o7
	Ecmw7VlA1Bu+8Oczj2L53P0j2RL6FLfOptsxrNAH9rtL+GP+9AX6ROeTXF3+E6pikyog
	HwMFNJ3SLYEZBu9tTC/knkhKnQN4wysD1iRJDU4xPZSUlanB//i7OfpgCv266NP+HUzs
	xlgQ==
X-Gm-Message-State: AKS2vOxX6PLPrplBOUIZLmBLG6JGfu6Pmwwyom/cK3F9pI3/LF2URpCL
	CDf7xcergb6AIa4XdmY=
X-Received: by 10.107.47.66 with SMTP id j63mr12336691ioo.117.1498269308102;
	Fri, 23 Jun 2017 18:55:08 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95]) by smtp.gmail.com with ESMTPSA id
	k141sm1056629iok.42.2017.06.23.18.55.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 23 Jun 2017 18:55:07 -0700 (PDT)
Date: Fri, 23 Jun 2017 21:55:05 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170624015504.GA21604@linux-uys3>
References: <CAHUNapRZG_qxTXd7JLNwp7918Y_Vasr8nS60EatyjP2QGhbZ-A@mail.gmail.com>
	<CAMKF1sopiKLcmpD7pCn69mW0jhR0QFYWwNpBfztdQba5GJzwHw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1sopiKLcmpD7pCn69mW0jhR0QFYWwNpBfztdQba5GJzwHw@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
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
X-List-Received-Date: Sat, 24 Jun 2017 01:55:12 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri 2017-06-23 @ 03:57:06 PM, Khem Raj wrote:
> On Fri, Jun 23, 2017 at 3:39 PM, Trevor Woerner <twoerner@gmail.com> wrot=
e:
> > Adding that line, and adding meta-clang to bblayers.conf, did get the
> > llvm/clang compiler built and installed to recipe-sysroot-native. But
> > the moment it starts to build the package, it fails immediately with:
> >
> >     | fatal error: 'string' file not found
> >     | #include <string>
> >     |          ^~~~~~~~
> >
> > Did I miss a step? That seems like a pretty basic thing that would be
> > needed for using a toolchain. If feels like I'm missing something;
> > like I need to add something else to my local.conf. Thoughts?
> > Suggestions?
>=20
> which package is it ? it seems its missing proper -I paths.?

I'm investigating moving chromium to a newer version, specifically something
much closer to the current Linux stable (59.0.3071.109). My understanding is
the chromium developers use clang, which would explain why it's always so m=
uch
work to get it to compile with gcc. If I can get chromium to build with cla=
ng,
I think it would make future maintenance much easier. Switching from gyp to=
 gn
was easy, but getting this newer version to build with gcc7 is a challenge.

When I go to the recipe-sysroot-native, I find clang in usr/bin. But from t=
hat
base location if I do a

	$ find . -name "*string*" -print

I don't find any such include files. Should they not be installed to the
native sysroot alongside clang itself?

Here's one example of a failing compile:

| [16/25529] CXX obj/base/allocator/tcmalloc/sysinfo.o
| FAILED: obj/base/allocator/tcmalloc/sysinfo.o
| ../../../recipe-sysroot-native/usr/bin/clang++ -MMD -MF obj/base/allocato=
r/tcmalloc/sysinfo.o.d -DNO_HEAP_CHECK -DV8_DEPRECATION_WARNINGS -DUSE_UDEV=
 -DUSE_AURA=3D1 -DUSE_PANGO=3D1 -DUSE_CAIRO=3D1 -DUSE_GLIB=3D1 -DUSE_NSS_CE=
RTS=3D1 -DUSE_X11=3D1 -DDISABLE_NACL -DFULL_SAFE_BROWSING -DSAFE_BROWSING_C=
SD -DSAFE_BROWSING_DB_LOCAL -DCHROMIUM_BUILD -DENABLE_MEDIA_ROUTER=3D1 -DFI=
ELDTRIAL_TESTING_ENABLED -DCR_CLANG_REVISION=3D\"299960-1\" -D_FILE_OFFSET_=
BITS=3D64 -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -DCOMPONENT_BUILD -D_DE=
BUG -DDYNAMIC_ANNOTATIONS_ENABLED=3D1 -DWTF_USE_DYNAMIC_ANNOTATIONS=3D1 -DT=
CMALLOC_FOR_DEBUGALLOCATION -DTCMALLOC_DONT_REPLACE_SYSTEM_ALLOC -I../../ba=
se/allocator -I../../third_party/tcmalloc/chromium/src/base -I../../third_p=
arty/tcmalloc/chromium/src -I../.. -Igen -fno-strict-aliasing --param=3Dssp=
-buffer-size=3D4 -fstack-protector -Wno-builtin-macro-redefined -D__DATE__=
=3D -D__TIME__=3D -D__TIMESTAMP__=3D -funwind-tables -fPIC -pipe -fcolor-di=
agnostics --target=3Darm-linux-gnueabihf -march=3Darmv7-a -mfloat-abi=3Dhar=
d -mtune=3Dgeneric-armv7-a -pthread -mfpu=3Dneon -O0 -fno-omit-frame-pointe=
r -g2 --sysroot=3D../../build/linux/debian_jessie_arm-sysroot -fvisibility=
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
| In file included from ../../third_party/tcmalloc/chromium/src/base/sysinf=
o.cc:62:
| In file included from ../../third_party/tcmalloc/chromium/src/base/sysinf=
o.h:49:
| In file included from ../../third_party/tcmalloc/chromium/src/base/loggin=
g.h:49:
| ../../third_party/tcmalloc/chromium/src/base/commandlineflags.h:52:10: fa=
tal error: 'string' file not found
| #include <string>
|          ^~~~~~~~
| 1 error generated.


I can send you the non-working, partial recipe if you're interested too.

