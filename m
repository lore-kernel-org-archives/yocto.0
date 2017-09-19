Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31B6CE00C62; Tue, 19 Sep 2017 08:53:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F3B8E00C01
	for <yocto@yoctoproject.org>; Tue, 19 Sep 2017 08:53:47 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id a7so10239pfj.5
	for <yocto@yoctoproject.org>; Tue, 19 Sep 2017 08:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=D65kZK8W7cJiiZqsadmOmHQkgG4g08GnmQrqby0UnuU=;
	b=LyBysQKlrb+76G59zbdr6y7cIDjwZtyLn7IzsCdmLJX3jqBOIeeudLiR8KWgNMDJ7s
	rxcI6wlR2hKEHGkXt/wl0odajZWEynVSrbVqznYBJ4YcEr2MxcrEl8Twqd+eL5RCSp03
	TrAjqFPk7ghMK/BZLDu3MfUdFhXkPuJU6xavsUzbYnc/+0fPemXFnP6Lr08X5nj0HEhH
	8gTUuXN3cjrc4leHHVEwxayVFDV4053qDQMcV2TcCws3yCAHDCli4JsEVC5KZBOIXpdv
	uGG4uaXEAd35cAwF6Vs3d7NMCE2V9p2lK8H56dDDE3TzfqQW1ZQJhvuMErbsCNuy6fNq
	1+TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=D65kZK8W7cJiiZqsadmOmHQkgG4g08GnmQrqby0UnuU=;
	b=Xou58ZnZhBLuUCv8uob3root2i80GyD0EjvRvoeCKZ+HWTPuXrRTGGisWGWFTlV3lS
	WOPDeHzGnGUd2BL+UiNieLUF1QWfMk6yEHSd9M4qAEG/KQdj7ZJilVmPqEYCKgPivm1F
	RnpbviljiVRmUM5cmHLB6emGSYklf+b04PTzJ3Wls/ml7CDX4/V1VUrYaH7SvQBR8aWR
	t17wpTQxKJbnFCBRN8GKqT4oHsSvojyeyCqtyTdSqsSq4KyVL+SHFABFGAahFnFEXoYZ
	RB+Xsse03WM1PggQjfwa1sLJEzB/V8HY+CevOO5onyCHTnpxwNMwbtgPnu9lTlTxy6h9
	7zyQ==
X-Gm-Message-State: AHPjjUiGgEdPJyYp/Y2uFSurRV7iRU2+R+Vl5argMJIfPMftx/MfM7Yu
	o3O86d0gwxhewseBqerJge6YehCwBitza3zo/3E=
X-Google-Smtp-Source: AOwi7QB6/VAIsPWZePNlTXcgnUqdJX2kTifb2JxKhSXUpvUsp1rLhYCxte/MSFue5UJn/+mhwEszIZDkcLgGjXwdQK0=
X-Received: by 10.84.138.1 with SMTP id 1mr1715427plo.404.1505836426461; Tue,
	19 Sep 2017 08:53:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.149.73 with HTTP; Tue, 19 Sep 2017 08:53:15 -0700 (PDT)
In-Reply-To: <CA+chaQdvo_sL-5CyAedD4fXX8oaVFHrJrp-g=4S0N4THVEvcRw@mail.gmail.com>
References: <20170918054137.33583-1-raj.khem@gmail.com>
	<CA+chaQc8ZLh=hOmr+iecg1EZUM+vORLV0=ej8eJefB0GubFSpQ@mail.gmail.com>
	<CAMKF1srPjVO5Ep5ZCsxWozpzzbQxO69sderkgWfnEhg8et4RWA@mail.gmail.com>
	<20170919135829.GA3797@jama>
	<CAMKF1sq9=uHJfKGtBkH79fqNFiztVbiepMY__LdMTtOk0wMQYA@mail.gmail.com>
	<CA+chaQdvo_sL-5CyAedD4fXX8oaVFHrJrp-g=4S0N4THVEvcRw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 19 Sep 2017 08:53:15 -0700
Message-ID: <CAMKF1sqhPG3cZamhtchO2nY4uWXPPMN9shFr2HU8=CFqxDkJgw@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/3] linux-raspberrypi_4.9.bb: Upgrade to 4.9.50
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
X-List-Received-Date: Tue, 19 Sep 2017 15:53:48 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Sep 19, 2017 at 7:13 AM, Martin Jansa <martin.jansa@gmail.com> wrote:
> Yes,
>
> GNU gold (GNU Binutils 2.29.0.20170912) 1.14

that is the problem. We can't use gold for kernel.

>
> On Tue, Sep 19, 2017 at 4:01 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> is
>>
>> /OE/build/owpb/webos-ports/tmp-glibc/work/raspberrypi3_64-webos-linux/linux-raspberrypi/1_4.9.50+gitAUTOINC+46e2d4d1bd-r0/recipe-sysroot-native/usr/bin/aarch64-webos-linux/../../libexec/aarch64-webos-linux/gcc/aarch64-webos-linux/7.2.0/ld
>>
>> gold ?
>>
>> On Tue, Sep 19, 2017 at 6:58 AM, Martin Jansa <martin.jansa@gmail.com>
>> wrote:
>> > On Mon, Sep 18, 2017 at 12:29:44PM -0700, Khem Raj wrote:
>> >> On Mon, Sep 18, 2017 at 11:48 AM, Martin Jansa <martin.jansa@gmail.com>
>> >> wrote:
>> >> > With these 3 changes included I see following failure with
>> >> > raspberrypi3-64,
>> >> > it might be something caused by last oe-core upgrade, but I haven't
>> >> > noticed
>> >> > anything suspicious there.
>> >> >
>> >> > Looks familiar?
>> >>
>> >> havent seen it here. I would say unbolt these changes and try out see
>> >> if it goes away or not.
>> >
>> > The last one "linux-raspberrypi: Build dtbs with dtbs make target for
>> > rpi64" is causing this error.
>> >
>> >>
>> >> >
>> >> > |   VDSOL   arch/arm64/kernel/vdso/vdso.so.dbg
>> >> > |
>> >> >
>> >> > /OE/build/owpb/webos-ports/tmp-glibc/work/raspberrypi3_64-webos-linux/linux-raspberrypi/1_4.9.50+gitAUTOINC+46e2d4d1bd-r0/recipe-sysroot-native/usr/bin/aarch64-webos-linux/../../libexec/aarch64-webos-linux/gcc/aarch64-webos-linux/7.2.0/ld:
>> >> > fatal error: -shared and -static are incompatible
>> >> > | collect2: error: ld returned 1 exit status
>> >> > | make[3]: ***
>> >> >
>> >> > [/OE/build/owpb/webos-ports/tmp-glibc/work-shared/raspberrypi3-64/kernel-source/arch/arm64/kernel/vdso/Makefile:34:
>> >> > arch/arm64/kernel/vdso/vdso.so.dbg] Error 1
>> >> > | make[2]: *** [arch/arm64/Makefile:144: vdso_prepare] Error 2
>> >> > | make[1]: *** [Makefile:150: sub-make] Error 2
>> >> > | make: *** [Makefile:24: __sub-make] Error 2
>> >> > | ERROR: oe_runmake failed
>> >> > | WARNING:
>> >> >
>> >> > /OE/build/owpb/webos-ports/tmp-glibc/work/raspberrypi3_64-webos-linux/linux-raspberrypi/1_4.9.50+gitAUTOINC+46e2d4d1bd-r0/temp/run.do_compile.29341:1
>> >> > exit 1 from 'exit 1'
>> >> >
>> >> >
>> >> > On Mon, Sep 18, 2017 at 7:41 AM, Khem Raj <raj.khem@gmail.com> wrote:
>> >> >>
>> >> >> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> >> >> ---
>> >> >>  recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
>> >> >>  1 file changed, 2 insertions(+), 2 deletions(-)
>> >> >>
>> >> >> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
>> >> >> b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
>> >> >> index ba17020..068965f 100644
>> >> >> --- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
>> >> >> +++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
>> >> >> @@ -1,8 +1,8 @@
>> >> >>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>> >> >>
>> >> >> -LINUX_VERSION ?= "4.9.41"
>> >> >> +LINUX_VERSION ?= "4.9.50"
>> >> >>
>> >> >> -SRCREV = "4153f509b449f1c1c816cf124c314975c3daa824"
>> >> >> +SRCREV = "46e2d4d1bd2c17e2f84dd90768321ee0bbaa6b8a"
>> >> >>  SRC_URI = "git://github.com/raspberrypi/linux.git;branch=rpi-4.9.y"
>> >> >>
>> >> >>  require linux-raspberrypi.inc
>> >> >> --
>> >> >> 2.14.1
>> >> >>
>> >> >> --
>> >> >> _______________________________________________
>> >> >> yocto mailing list
>> >> >> yocto@yoctoproject.org
>> >> >> https://lists.yoctoproject.org/listinfo/yocto
>> >> >
>> >> >
>> >
>> > --
>> > Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>
>

