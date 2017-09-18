Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF574E009F5; Mon, 18 Sep 2017 12:30:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41524E0090A
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 12:30:15 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id j16so744412pga.2
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 12:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DZRrLqb0xgIq3U+kAC+652527HC+NARcmtU1mFEqpl8=;
	b=p1Zg6otnws5iQS0IIhE6fjyzx0Tfvbi6L5d7sgFJDJYunZU8TQ/DCuxB6V+Wt+99K9
	HxvD9NS+rsuwsicyXjRVQ559eB4HlwRRiz5Zvt9/4BJt1lFSG168CGS/ARa/WYdqEi0/
	zzmPWv8qcgIDQ11gIqw4YgyQ1Y6+aMAlmddlgZycK+LnjhnSCe79qrgV/AaR7wrhd1nR
	46q+f53zVWUO0kRO6oppjzTeUTS9ruTrR/oJNGqmyTqbnwU0BWZuITfp+OgP/QumzSK1
	fE+KAJFiRJG0K26cAsgWpNyDkEx77E9tyGmYe/c7PWKPmozdAWDaIx2XtBu9LaVAfzTG
	CbdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DZRrLqb0xgIq3U+kAC+652527HC+NARcmtU1mFEqpl8=;
	b=RwsMDRETXtI0A7MQ9j72MYhLzM/wzinzAoFlODS23aZ9cI1lZ5EQYLdPYYzRBj5KiS
	m96yJ8KilQ7E02pJ8PJr0ki3ydBcXzEVgGbTgkGGjXJiOL9b3laRR14vbLGdP0Ut0EX6
	mMtpaago3sdIG1ZPKbt1hXuzXbD1rur+THUHIsGj3K6uHW8o/2ntm2IBLwi17NdZNWJy
	1ZyCN4gPnku6V20kCExBp3y4lRT05XnqcPfy66M0+aA0dF/g8ZUedL0o9h2aAF8lQrsG
	nA+byKqVDSbPoOQkCIHBhCkQ6Y1QtO0roE+9Muohh3WoSnm3469rTxyt7nMM9fRbb73v
	nCCQ==
X-Gm-Message-State: AHPjjUgOGQWg2+3Jt0NE1lMCazRZPEUVkGG33ammpRZDHko0a+1Twe08
	8+7oeoUn/VDdlu9vvJU73CW7NjylEgNPUCV17KA=
X-Google-Smtp-Source: AOwi7QAbNViHKr+FOM0lHDh6m7axrF7+dqL5GKjmyJdg7YFhZiEvcRHEf6itKYoa/6ChNVmq+0Dn4gjr31sXsLQwt+c=
X-Received: by 10.99.51.15 with SMTP id z15mr20006494pgz.287.1505763015310;
	Mon, 18 Sep 2017 12:30:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.149.73 with HTTP; Mon, 18 Sep 2017 12:29:44 -0700 (PDT)
In-Reply-To: <CA+chaQc8ZLh=hOmr+iecg1EZUM+vORLV0=ej8eJefB0GubFSpQ@mail.gmail.com>
References: <20170918054137.33583-1-raj.khem@gmail.com>
	<CA+chaQc8ZLh=hOmr+iecg1EZUM+vORLV0=ej8eJefB0GubFSpQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Sep 2017 12:29:44 -0700
Message-ID: <CAMKF1srPjVO5Ep5ZCsxWozpzzbQxO69sderkgWfnEhg8et4RWA@mail.gmail.com>
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
X-List-Received-Date: Mon, 18 Sep 2017 19:30:16 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 18, 2017 at 11:48 AM, Martin Jansa <martin.jansa@gmail.com> wrote:
> With these 3 changes included I see following failure with raspberrypi3-64,
> it might be something caused by last oe-core upgrade, but I haven't noticed
> anything suspicious there.
>
> Looks familiar?

havent seen it here. I would say unbolt these changes and try out see
if it goes away or not.

>
> |   VDSOL   arch/arm64/kernel/vdso/vdso.so.dbg
> |
> /OE/build/owpb/webos-ports/tmp-glibc/work/raspberrypi3_64-webos-linux/linux-raspberrypi/1_4.9.50+gitAUTOINC+46e2d4d1bd-r0/recipe-sysroot-native/usr/bin/aarch64-webos-linux/../../libexec/aarch64-webos-linux/gcc/aarch64-webos-linux/7.2.0/ld:
> fatal error: -shared and -static are incompatible
> | collect2: error: ld returned 1 exit status
> | make[3]: ***
> [/OE/build/owpb/webos-ports/tmp-glibc/work-shared/raspberrypi3-64/kernel-source/arch/arm64/kernel/vdso/Makefile:34:
> arch/arm64/kernel/vdso/vdso.so.dbg] Error 1
> | make[2]: *** [arch/arm64/Makefile:144: vdso_prepare] Error 2
> | make[1]: *** [Makefile:150: sub-make] Error 2
> | make: *** [Makefile:24: __sub-make] Error 2
> | ERROR: oe_runmake failed
> | WARNING:
> /OE/build/owpb/webos-ports/tmp-glibc/work/raspberrypi3_64-webos-linux/linux-raspberrypi/1_4.9.50+gitAUTOINC+46e2d4d1bd-r0/temp/run.do_compile.29341:1
> exit 1 from 'exit 1'
>
>
> On Mon, Sep 18, 2017 at 7:41 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
>> b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
>> index ba17020..068965f 100644
>> --- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
>> +++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
>> @@ -1,8 +1,8 @@
>>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>>
>> -LINUX_VERSION ?= "4.9.41"
>> +LINUX_VERSION ?= "4.9.50"
>>
>> -SRCREV = "4153f509b449f1c1c816cf124c314975c3daa824"
>> +SRCREV = "46e2d4d1bd2c17e2f84dd90768321ee0bbaa6b8a"
>>  SRC_URI = "git://github.com/raspberrypi/linux.git;branch=rpi-4.9.y"
>>
>>  require linux-raspberrypi.inc
>> --
>> 2.14.1
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>

