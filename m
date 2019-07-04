Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD03AE00C43; Thu,  4 Jul 2019 03:13:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93C40E00C43
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2019 03:13:08 -0700 (PDT)
Received: by mail-qt1-f174.google.com with SMTP id m29so5265835qtu.1
	for <yocto@yoctoproject.org>; Thu, 04 Jul 2019 03:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=F9l6XaEdjK2+oocfHdE2ItI7qvIPSyw/tAMegAh7Bfg=;
	b=MCPUuHDXSmqbIo4Kgsv/NKmb5Uh0ti+U6KFQ6tIvm9ipfRAJ4XkisSQL66WHFDMUu3
	avRS1wDrP+RTUzMHaEA970PDW1sTr2Abp5/ZQfloVCV62IlLSHp9ZKbm8HDqznwY5nMU
	vRacdDat558ADc0WfkN1PPRyKrsrEYJnYLsVQYv/SjCoRRF9v/1lRewEzeZNmb4sSo5Q
	KTQJ9HO0vny7nTRgynjYSttCmgUOqK/qMtzo6M7V55EUzP0MLxLG3dlcKqkylynj9pHu
	ZWCZFDpYryjMw5qJILgneue1bn7hR0d2S3stLskwje1/CJs7NuAomD3XP51bDpv3bcV5
	HMuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=F9l6XaEdjK2+oocfHdE2ItI7qvIPSyw/tAMegAh7Bfg=;
	b=Jz8Wc6Iv4g/vk9wdWYP7CcMQq0ip7bJThZj4apYKqoaQ3vClCLJaYkCUmPfq3JZm2g
	SXXaSDFqpWunZo7p5J7mgodqjJpwY9zQLK7uE4jApL8S7cmHCP4zs9Zx53FNn7t4YBht
	sxQ/Xf4JfZsXzq+LPRd4IcY6IFitquCFoKR8a69EZh09RYrrA1PXyGTT2qBl6/Ar6Ic3
	sKanJgNWfblnquUz/J1EV88ngyOHPV9b/dkAZuversgwtQIxlNxe4UPQ/nMlrqE5ov4D
	qX9XC97gE4br72eOx8/Cz99NGYHdN2y7+d2+qGyHN6lXHz8X+EpFe6L87yKiQI1UJGwl
	PyxA==
X-Gm-Message-State: APjAAAUzQOrbkwTR0ZltiyeITz7j1MwC6nLgzHV6ecindJYl+FVYZIzT
	hfscRr3EQLJwSVfshRanX8Cv1FtGLNHAkpjNkj/8mVnMnKg=
X-Google-Smtp-Source: APXvYqx/gFU9UYcm0Ver3HmQIxOlroUdGLxHugLz7/XRDE1D/fQh+yZGm21/c1Z3kjnq1fkIX3WexJ+8Db5/Uy0usQg=
X-Received: by 2002:ac8:2fce:: with SMTP id m14mr35582491qta.22.1562235188341; 
	Thu, 04 Jul 2019 03:13:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAG+Ob8YjxmmHaEJ-N80QzNKcrP8=5PbMewVApk4tW7J994KfJg@mail.gmail.com>
	<CAGAf8LxzH6BLd43+di7Wy3pRJnNiqPimRW0c6CQWnpTo2X9Xsg@mail.gmail.com>
	<CAG+Ob8b2zq-qftVPV+UBMvZh6CYrw4saHVT1EfCcL3phLRoiuw@mail.gmail.com>
In-Reply-To: <CAG+Ob8b2zq-qftVPV+UBMvZh6CYrw4saHVT1EfCcL3phLRoiuw@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 4 Jul 2019 12:12:57 +0200
Message-ID: <CAGAf8LznNRmK=-jp7YP+wa0J1_NosTRiSY2QA8vW94SZLWbukQ@mail.gmail.com>
To: Onur Eser <onureser12@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Json-Glib failed to build during the building of Weston image
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
X-List-Received-Date: Thu, 04 Jul 2019 10:13:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> closx@closx-pc:~$ uname -a
> Linux closx-pc 4.15.0-54-generic #58~16.04.1-Ubuntu SMP Mon Jun 24 13:21:=
41 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux

This has nuthin' to do with target platform IMX6. Has everything to do
with Ur host building machine, where you cross-compile Ur target YOCTO
build. It says to me that you are on x86_64 platform (INTEL 64 host
architecture) using Ubuntu 16.4.1 distro with the kernel version
4.15.0-54-generic, and the update you did (sudo apt-get update) was
not later than latest introduction of presented kernel successor in
Ubuntu updater mirror databases.

U need to sit and really concentrate (probably to spend some time to
learn quite of useful things).

Good Luck,
Zoran
_______

On Thu, Jul 4, 2019 at 11:53 AM Onur Eser <onureser12@gmail.com> wrote:
>
> Hello Zoran,
> Using weston just for testing GPU acceleration. Then will be converted to=
 X11.
> SYS info:
> closx@closx-pc:~$ uname -a
> Linux closx-pc 4.15.0-54-generic #58~16.04.1-Ubuntu SMP Mon Jun 24 13:21:=
41 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux
>
> Onur
>
> Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, 4 Tem 2019 Per, 12:4=
3 tarihinde =C5=9Funu yazd=C4=B1:
>>
>> Hello Onur,
>>
>> Why Weston protocol? Why not classical X11 Client Server in user
>> space? Which DeskTop are U using in Ur YOCTO build?
>>
>> Thank you,
>> Zoran
>> _______
>>
>>
>>
>> On Thu, Jul 4, 2019 at 10:46 AM Onur Eser <onureser12@gmail.com> wrote:
>> >
>> > Hello Yocto Community!
>> > When I was trying to build core-image-weston with meta-qt5 and meta-fs=
l-arm layer for my imx6 (Humming Board 2 - Armv7) board, it gave an error o=
n compilation of the "jason-glib". I would suprised if my image was builded=
 without errors. I never could have finished a Yocto or Qt-cross building i=
n my life...
>> >
>> > So, my error log is,
>> >
>> > Got pkgconfig variable girdir :
>> > Program g-ir-scanner found: YES (/home/closx/poky/build/tmp-glibc/work=
/cortexa9hf-neon-oe-linux-gnueabi/json-glib/1.4.2-r0/recipe-sysroot-native/=
usr/bin/g-ir-scanner)
>> > Adding test "array".
>> > Adding test "boxed".
>> > Adding test "builder".
>> > Adding test "generator".
>> > Adding test "gvariant".
>> > Adding test "invalid".
>> > Adding test "node".
>> > Adding test "object".
>> > Adding test "parser".
>> > Adding test "path".
>> > Adding test "reader".
>> > Adding test "serialize-simple".
>> > Adding test "serialize-complex".
>> > Adding test "serialize-full".
>> > ERROR: meson failed
>> > WARNING: exit code 1 from a shell command.
>> > ERROR: Function failed: do_configure (log file is located at /home/clo=
sx/poky/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/json-glib/1.4=
.2-r0/temp/log.do_configure.13333)
>> >
>> > Thanks,
>> > Have a good day!
>> > Onur
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto

