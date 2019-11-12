Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AB4CE00D60; Tue, 12 Nov 2019 08:48:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00C61E00D46
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 08:48:00 -0800 (PST)
Received: by mail-qk1-f175.google.com with SMTP id m125so15014272qkd.8
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 08:48:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=12MZe1VeLZ/3HVYOFPEQrzfs7q83bZAkF+5iEzzWJ5k=;
	b=k+oLtae1iLz+Xir+f/Z6h8ZokHTtYLfc8jfEo8MQopHFoc3qT88QIc3IZ0civZugXW
	s2PgxAGiRugnD54iUoV3WHyGg542BHzlTofBML5D3FEcBBEOKG7pBrf+/Mhy85VFqsoa
	0MZos/cxgbeTAS5OHT3xXWeZlsYuR4PnJZzVML/E/0qlXWRtRE6WrGsbOjw/FgakiWgq
	VUqDfbtZH7KxfA/acWEZ4DovSVPpFEJeZRhNNqGJUED4FtPxa4Zax+Tz1In7XTNmzNH5
	EOyn8n7IeI6etjK6yST9EdVlkSdNDatHe1AfkkJLXfhLd0sTjRiBlM6CSupyMOacl01x
	BnzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=12MZe1VeLZ/3HVYOFPEQrzfs7q83bZAkF+5iEzzWJ5k=;
	b=quDWJSMp71w3k/ZwQSDfVMgovk0dwwpWepKjaohpNMsC++No/ia+y2+DsW7t1aMXkz
	aI8NrvtJKFyluOcU2j1Jw5cMY7NiGYeQFrJK0w1x3XKI10NKIWdfuH80OlHZV9YtRQ+9
	D0q5g5TRbFJ/upHs8BmsgfQK3qiQeYr/5klS2D2ZKwI0SsTiNJRPmGPHGEdyw3UeMD8j
	oYjJ9gCu0mGf32i16QmekhROCFLPpXhVmQTWPEcIKe5AGn14xUe6AOQVMKnAgN+2Fdwv
	t/WdXLdbMl4j3XvqIw8HxaF5j+LJ1tuNYUv8qP8AkX9+LlbwInBd6Gd0F8OOxDw9qbgd
	JREw==
X-Gm-Message-State: APjAAAVT7uvrhlH4bw2D2RktEDzEVfUDoc85J2vMHRz55a+0bdQXCsz8
	HSSQq0NEZPAwkhfmVJhvKheD+6SK9U4OLpMKUqqi7QZnEtc=
X-Google-Smtp-Source: APXvYqzgmuD22RAYmKM2F3Pds/J9DJni3l5qbhIHbOCI6+DURmzogqTMq4CzpA+wiR9hJeVH0vKxwgGYkfVxkHkucW8=
X-Received: by 2002:a37:a2c3:: with SMTP id l186mr6589528qke.337.1573577279813;
	Tue, 12 Nov 2019 08:47:59 -0800 (PST)
MIME-Version: 1.0
References: <9753c692-17c9-3b27-8c3f-2fdfeac869e6@iwave.net>
In-Reply-To: <9753c692-17c9-3b27-8c3f-2fdfeac869e6@iwave.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 12 Nov 2019 08:47:28 -0800
Message-ID: <CAMKF1sqypzRHXp7-JbumAoSY6rYQRg7o3QPgjcukqrVdqHwD9A@mail.gmail.com>
To: Sheraz Ali <sheraz.ali@iwave.net>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Error Building Valgrind_3.15 for yocto
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
X-List-Received-Date: Tue, 12 Nov 2019 16:48:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 12, 2019 at 5:26 AM Sheraz Ali <sheraz.ali@iwave.net> wrote:
>
> Hi Sir,
>
>         I want to add valgrind to my yocto i am using valgrind version (3=
.15.0-r0 ) i have attached the valgrind source and error log for your refer=
ence.
>
> This is the Build Configuration for which i am trying to build valgrind
>
> Build Configuration:
> BB_VERSION        =3D "1.22.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "Ubuntu-14.04"
> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> MACHINE           =3D "iwg22m"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.6.1"
> TUNE_FEATURES     =3D "armv7a vfp neon callconvention-hard cortexa7"
> TARGET_FPU        =3D "vfp-neon"
> meta
> meta-yocto
> meta-yocto-bsp    =3D "tmp:c4f1f0f491f988901bfd6965f7d10f60cb94a76f"
> meta-renesas
> meta-rzg1         =3D "tmp:19bf1ed97d04009722bb88a780268822ee60ff83"
> meta-oe
> meta-multimedia   =3D "tmp:dca466c074c9a35bc0133e7e0d65cca0731e2acf"
> meta-linaro-toolchain =3D "tmp:8a0601723c06fdb75e62aa0f0cf15fc9d7d90167"
> meta-networking   =3D "tmp:dca466c074c9a35bc0133e7e0d65cca0731e2acf"
>
> I am getting the following error can you suggest me what to do
>
> arm-poky-linux-gnueabi-gcc: error: unrecognized argument in option '-marc=
h=3Darmv7ve'
> arm-poky-linux-gnueabi-gcc: note: valid arguments to '-march=3D' are: arm=
v2 armv2a armv3 armv3m armv4 armv4t armv5 armv5e armv5t armv5te armv6 armv6=
-m armv6j armv6k armv6s-m armv6t2 armv6z armv6zk armv7 armv7-a armv7-m armv=
7-r armv7e-m armv8-a armv8-a+crc iwmmxt iwmmxt2 native
> make[5]: *** [intdiv-intdiv.o] Error 1
> make[5]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iw=
G22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valg=
rind/3.15.0-r0/build/none/tests/arm'
> make[4]: *** [check-am] Error 2
> make[4]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iw=
G22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valg=
rind/3.15.0-r0/build/none/tests/arm'
> make[3]: *** [check-recursive] Error 1
> make[3]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iw=
G22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valg=
rind/3.15.0-r0/build/none/tests'
> make[2]: *** [check-recursive] Error 1
> make[2]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iw=
G22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valg=
rind/3.15.0-r0/build/none'
> make[1]: *** [check-recursive] Error 1
> make[1]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iw=
G22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valg=
rind/3.15.0-r0/build'
> make: *** [check] Error 2
> make: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22=
M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrin=
d/3.15.0-r0/build'
> ERROR: oe_runmake failed
> WARNING: exit code 1 from a shell command.
> ERROR: Function failed: do_compile_ptest_base (log file is located at /ho=
me/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/c=
ortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/temp/log.do_compil=
e_ptest_base.29480)
>

somewhere, its messing up compiler flags -march=3Darmv7ve
-mcpu=3Dcortex-a15 -mthumb is being added can you check if you have
bbapends or other places modifying it

> Thanks and Regards
> Sheraz Ali Shah
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

