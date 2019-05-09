Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA18DE00D6F; Thu,  9 May 2019 12:41:05 -0700 (PDT)
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
	*      [209.85.160.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
	[209.85.160.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 011C9E00D46
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 12:41:04 -0700 (PDT)
Received: by mail-qt1-f193.google.com with SMTP id t1so3893542qtc.12
	for <yocto@yoctoproject.org>; Thu, 09 May 2019 12:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=DCRDu+o8avErJasjuaEtA+rNkrlAa4Mx3+Q5BzBR+pk=;
	b=AD0czAntipxIRAlh6H0NgKzgwiuj0mrAVkD3pePgP0jxsprIiMIm3W4WQHpx00mlOT
	Fzu2TTUJRLBDUwHpPaf5UVE3uafqFdSbra2ry6qEwVMSj3cCRdG58IYArzh1iDUfJv6o
	Cd/xo7ZvTXe3kpr2FaIgkuaiVGMvh4IRAPFWPQLlOW20ZQ4iuxb1LAuxnsQ1sECcBqoJ
	lHW2IaLfHKmum50VN86F2l58LXGidRYhmbwZ/CgwK6EG0Hq2fECbzjcsLP76n6PvmY0K
	a40zkUWgXqeXwHobdh9zy+yd8PIXduuyZshuZdkKrNJswRLHPp6PWdbt7dGJD8KMPL+L
	ZAhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=DCRDu+o8avErJasjuaEtA+rNkrlAa4Mx3+Q5BzBR+pk=;
	b=Al0L5y5xmWfnYd6iCrU+Zhyfk1+qlan6y8q07LWrJuouRKnN+PpQt/DbXE4O1hpYB7
	3/qahcWwe/nyIqDd8Ii+ZiJes20zS4czJQVmLfj3Jc63rBRnKfLXjqPAiVzzi2nt2jGX
	UBuPWweGP3+cVFaCQppJnf4JYAeG/1lS9KVrNu3Qb9C3Ypjv4EjpbscYogkp2EfJg/Pr
	oIfI+8Dx08H6qhxshoG3O5eJHEdTfBCdYeisZ6B8Z6JQrgu8IAnaE0vttNhZkJySpFNX
	hG+2zWZckjegsSFhw2TK6qCRoRNqFLfSTYyH5Q+FqIYssSNhfiK+mn0HCMDFDmnVyxL8
	Todg==
X-Gm-Message-State: APjAAAUzce+nlcGx6SMf03I4Zhh1bkWSKiNj8gUxw3ylAKDTv0dH3c3+
	OemUHFDXv1fbLJFpqT1qBiBBnxhikSn41aFOUgo=
X-Google-Smtp-Source: APXvYqybmNV3WGrq+DYnVJ2Pv48VFwzPOA1bDhzOmsVZcqz0En+EZnayjTvhXZPngTJOokifmlHKH50F9YiQxUrMZ3E=
X-Received: by 2002:a05:6214:24a:: with SMTP id
	k10mr5265495qvt.121.1557430864237; 
	Thu, 09 May 2019 12:41:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190509115933.23465-1-kexin.hao@windriver.com>
	<CADkTA4Ocyat40N4Fcgf3d95WT27fDnPMppiFWvPuFKj5ATOw4g@mail.gmail.com>
	<CAGAf8LzL9W7gX4gfadTbcsrMDwE4_S3cmn629FeJWheJuniEfA@mail.gmail.com>
	<CADkTA4MnWTA6omqQ5Hu9zED9zWf4i_HMj24ydCgaYgN7VZv80Q@mail.gmail.com>
In-Reply-To: <CADkTA4MnWTA6omqQ5Hu9zED9zWf4i_HMj24ydCgaYgN7VZv80Q@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 9 May 2019 21:40:52 +0200
Message-ID: <CAGAf8LwX8_e4pVbzD72eACyAdS1bHz5y-b78KWrKZ1N4pBe5mA@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH] meta-yocto-bsp: Bump to the latest stable kernel for all the BSP
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
X-List-Received-Date: Thu, 09 May 2019 19:41:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

There is always around, lurking, the replacement crew... Please, do
not forget about that!

And the replacement crew is always ahead... ;-)

Zoran
_______

On Thu, May 9, 2019 at 9:32 PM Bruce Ashfield <bruce.ashfield@gmail.com> wr=
ote:
>
>
>
> On Thu, May 9, 2019 at 12:30 PM Zoran Stojsavljevic <zoran.stojsavljevic@=
gmail.com> wrote:
>>
>> From yesterday... Latest stable release of:
>> https://github.com/jumpnow/meta-bbb
>>
>> My GitHub for BBB (BeagleBone Black):
>> https://github.com/ZoranStojsavljevic/bbb-yocto
>>
>> Both worked out for my bash script (adopted for my needs -> sticks and
>> ropes) and KAS tool!
>> https://github.com/ZoranStojsavljevic/bbb-yocto/tree/master/bbb-releases=
/bbb-warrior
>>
>> Kernel 5.0.13 (please, look into/upon the traces):
>> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases=
/bbb-warrior/target-bbb-platform-traces.txt
>>
>
> While interesting .. it really isn't relevant in this context. But thanks=
 for sharing anyway!
>
> Cheers,
>
> Bruce
>
>
>>
>> Thank you,
>> Zoran
>> _______
>>
>> On Thu, May 9, 2019 at 2:53 PM Bruce Ashfield <bruce.ashfield@gmail.com>=
 wrote:
>> >
>> >
>> >
>> > On Thu, May 9, 2019 at 8:10 AM Kevin Hao <kexin.hao@windriver.com> wro=
te:
>> >>
>> >> Boot test for all these boards.
>> >>
>> >
>> > I do have more -stable updates coming, and you are seeing some queued =
5.0.x changes that I haven't sent yet (since I'm hung up on resolving a 4.1=
9 conflict for one of the SoC branches), but yes, the changes here are good=
 and I'll be bumping the qemu boards in the next day or so.
>> >
>> > Bruce
>> >
>> >
>> >>
>> >> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
>> >> ---
>> >>  .../recipes-kernel/linux/linux-yocto_4.19.bbappend   | 20 ++++++++++=
----------
>> >>  .../recipes-kernel/linux/linux-yocto_5.0.bbappend    | 20 ++++++++++=
----------
>> >>  2 files changed, 20 insertions(+), 20 deletions(-)
>> >>
>> >> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bba=
ppend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
>> >> index 6025230c7306..ec269d905c4b 100644
>> >> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
>> >> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
>> >> @@ -8,11 +8,11 @@ KMACHINE_genericx86 ?=3D "common-pc"
>> >>  KMACHINE_genericx86-64 ?=3D "common-pc-64"
>> >>  KMACHINE_beaglebone-yocto ?=3D "beaglebone"
>> >>
>> >> -SRCREV_machine_genericx86    ?=3D "11e0e616ed095bb8012e1b4a231254c96=
56a0193"
>> >> -SRCREV_machine_genericx86-64 ?=3D "11e0e616ed095bb8012e1b4a231254c96=
56a0193"
>> >> -SRCREV_machine_edgerouter ?=3D "eebb51300a07804a020ec468b5f8c5bf7201=
98d9"
>> >> -SRCREV_machine_beaglebone-yocto ?=3D "eebb51300a07804a020ec468b5f8c5=
bf720198d9"
>> >> -SRCREV_machine_mpc8315e-rdb ?=3D "8b60f968823256f5d2889c4520d70299ca=
21411b"
>> >> +SRCREV_machine_genericx86    ?=3D "5664dc14399edcaad210bbeb6343d8456=
1fb3ea8"
>> >> +SRCREV_machine_genericx86-64 ?=3D "5664dc14399edcaad210bbeb6343d8456=
1fb3ea8"
>> >> +SRCREV_machine_edgerouter ?=3D "5664dc14399edcaad210bbeb6343d84561fb=
3ea8"
>> >> +SRCREV_machine_beaglebone-yocto ?=3D "5664dc14399edcaad210bbeb6343d8=
4561fb3ea8"
>> >> +SRCREV_machine_mpc8315e-rdb ?=3D "d419f4ca6ba4b097b8ad710a93b89510f5=
b2998c"
>> >>
>> >>  COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
>> >>  COMPATIBLE_MACHINE_genericx86-64 =3D "genericx86-64"
>> >> @@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter =3D "edgerouter"
>> >>  COMPATIBLE_MACHINE_beaglebone-yocto =3D "beaglebone-yocto"
>> >>  COMPATIBLE_MACHINE_mpc8315e-rdb =3D "mpc8315e-rdb"
>> >>
>> >> -LINUX_VERSION_genericx86 =3D "4.19.19"
>> >> -LINUX_VERSION_genericx86-64 =3D "4.19.19"
>> >> -LINUX_VERSION_edgerouter =3D "4.19.14"
>> >> -LINUX_VERSION_beaglebone-yocto =3D "4.19.14"
>> >> -LINUX_VERSION_mpc8315e-rdb =3D "4.19.14"
>> >> +LINUX_VERSION_genericx86 =3D "4.19.34"
>> >> +LINUX_VERSION_genericx86-64 =3D "4.19.34"
>> >> +LINUX_VERSION_edgerouter =3D "4.19.34"
>> >> +LINUX_VERSION_beaglebone-yocto =3D "4.19.34"
>> >> +LINUX_VERSION_mpc8315e-rdb =3D "4.19.34"
>> >> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbap=
pend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
>> >> index 5cf6e1f0649e..d7cf1216f45d 100644
>> >> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
>> >> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
>> >> @@ -8,11 +8,11 @@ KMACHINE_genericx86 ?=3D "common-pc"
>> >>  KMACHINE_genericx86-64 ?=3D "common-pc-64"
>> >>  KMACHINE_beaglebone-yocto ?=3D "beaglebone"
>> >>
>> >> -SRCREV_machine_genericx86    ?=3D "3df4aae6074e94e794e27fe7f17451d93=
53cdf3d"
>> >> -SRCREV_machine_genericx86-64 ?=3D "3df4aae6074e94e794e27fe7f17451d93=
53cdf3d"
>> >> -SRCREV_machine_edgerouter ?=3D "3df4aae6074e94e794e27fe7f17451d9353c=
df3d"
>> >> -SRCREV_machine_beaglebone-yocto ?=3D "3df4aae6074e94e794e27fe7f17451=
d9353cdf3d"
>> >> -SRCREV_machine_mpc8315e-rdb ?=3D "8b62af7f252af10588276802c4c6d7c502=
e875be"
>> >> +SRCREV_machine_genericx86    ?=3D "f990fd0ce123aa6035042efad09b2ddc3=
e7d48f4"
>> >> +SRCREV_machine_genericx86-64 ?=3D "f990fd0ce123aa6035042efad09b2ddc3=
e7d48f4"
>> >> +SRCREV_machine_edgerouter ?=3D "f990fd0ce123aa6035042efad09b2ddc3e7d=
48f4"
>> >> +SRCREV_machine_beaglebone-yocto ?=3D "f990fd0ce123aa6035042efad09b2d=
dc3e7d48f4"
>> >> +SRCREV_machine_mpc8315e-rdb ?=3D "670ce7e9db627d0c2067cfdb571ddc1f11=
7818d8"
>> >>
>> >>  COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
>> >>  COMPATIBLE_MACHINE_genericx86-64 =3D "genericx86-64"
>> >> @@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter =3D "edgerouter"
>> >>  COMPATIBLE_MACHINE_beaglebone-yocto =3D "beaglebone-yocto"
>> >>  COMPATIBLE_MACHINE_mpc8315e-rdb =3D "mpc8315e-rdb"
>> >>
>> >> -LINUX_VERSION_genericx86 =3D "5.0.3"
>> >> -LINUX_VERSION_genericx86-64 =3D "5.0.3"
>> >> -LINUX_VERSION_edgerouter =3D "5.0.3"
>> >> -LINUX_VERSION_beaglebone-yocto =3D "5.0.3"
>> >> -LINUX_VERSION_mpc8315e-rdb =3D "5.0.3"
>> >> +LINUX_VERSION_genericx86 =3D "5.0.13"
>> >> +LINUX_VERSION_genericx86-64 =3D "5.0.13"
>> >> +LINUX_VERSION_edgerouter =3D "5.0.13"
>> >> +LINUX_VERSION_beaglebone-yocto =3D "5.0.13"
>> >> +LINUX_VERSION_mpc8315e-rdb =3D "5.0.13"
>> >> --
>> >> 2.14.4
>> >>
>> >> --
>> >> _______________________________________________
>> >> yocto mailing list
>> >> yocto@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/yocto
>> >
>> >
>> >
>> > --
>> > - Thou shalt not follow the NULL pointer, for chaos and madness await =
thee at its end
>> > - "Use the force Harry" - Gandalf, Star Trek II
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await the=
e at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>

