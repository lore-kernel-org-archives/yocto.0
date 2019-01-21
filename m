Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2EE0E00A1A; Mon, 21 Jan 2019 08:19:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f178.google.com (mail-it1-f178.google.com
	[209.85.166.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19A91E0090E
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 08:19:18 -0800 (PST)
Received: by mail-it1-f178.google.com with SMTP id g85so17111269ita.3
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 08:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=LbddugxI87O7xGeOesCYUId03G+YHcwOaLc6u76MqoM=;
	b=ASVXo6fkSLo9AdmlkR83H2G0FQYDbwo8yrzWWPZDfMXaApeGSvYwROQfzkhV4uF5B+
	kEnTcEl7fQpydRIRcT1LVzvMoVLMdYwzXK6gPfs9rdBOzJedsDdfYwQqBwikkz9mu0l7
	dfgc8i/fJP9zZPiJsZ+D9BFIyMF2mielQmntLxhMNStQwzj+hqbtegqmbzHZ72dj5eDz
	XdN/SMzA3zjWB8ZkUnDxAKOtv8TXFp6akA0WPB7Q7ZsUv0eET2a79sXJR9sz8WLu+vs4
	fuPVvDJHgqAwcmay0yvE/cWCCH9YeVaXg2hKfLa/gTFbUnTY5qKd8XyfY0NGBJZjRV/M
	xQRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=LbddugxI87O7xGeOesCYUId03G+YHcwOaLc6u76MqoM=;
	b=sq66IvgfkS968ODmymhrHs12LSZTOfLyaHaFO0tZXSXYxSnNxqHxz7PyJvRC3RnfZV
	E80iZQoPtP770y5JDfG7Z54SrtYDea1nvLmroBow1zph/qGTiPkw5vpj7QmCu/TyhCKM
	TgLqoCHHNEMKhO6X6jHn1qcvZJf3LWq2fW+oYq9nbcKSjEhYPWotOW/i9D5UmSRh2Qyc
	pzVKEQcbB/qL+Bk/8fqKWzD1odKrMj0AdrJAvePjoFiWMDAsBcoSxWHFy/wQCFvfekb+
	3dWUCes65ksDNju/A/7a2BvtDqUrr2FZtlH3gsVmkF/BvhT3hWurZOzp1kzZ+nqkv1Ed
	Ch1g==
X-Gm-Message-State: AJcUukcp4CkMN/0sWhPmzDpSztp76oHLwx6BZHa4vUmoGWqvhAEYSyYv
	NfPs0sa2jaOgH+kEdC7l69w+A4hliuLH/Dj+jXvbmg==
X-Google-Smtp-Source: ALg8bN6rex29Tj84oJvo/vsaLY75PrAgkBthBHxPil0sr40LX2Q4J2rtyOwN+WAgjk1aayjufVSildeSG8Dge7oBCQc=
X-Received: by 2002:a24:8e43:: with SMTP id h64mr64640ite.26.1548087558490;
	Mon, 21 Jan 2019 08:19:18 -0800 (PST)
MIME-Version: 1.0
References: <CAMBu-336+bCzi__2ujQ33hj56kYUn59RqsUy3JsHHwT7=QTiiA@mail.gmail.com>
In-Reply-To: <CAMBu-336+bCzi__2ujQ33hj56kYUn59RqsUy3JsHHwT7=QTiiA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 21 Jan 2019 16:19:07 +0000
Message-ID: <CAJTo0LaLOJr4G2NZHqN7mV1StVHbt+YqMKsN2QA_sNuZmkCz3w@mail.gmail.com>
To: Johannes Humpert <humpertjohannes83@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Using old version of Recipe with new Yocto Release
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
X-List-Received-Date: Mon, 21 Jan 2019 16:19:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That's because we now prune what tools the recipes can see on the
host, and cc isn't on the list.  Override cc to be ${BUILD_CC} and
this will work.

Ross

On Mon, 21 Jan 2019 at 16:14, Johannes Humpert
<humpertjohannes83@gmail.com> wrote:
>
> Hallo Yocto,
>
> Is it possible to use old versions of the recipe with newer yocto release=
s? For example, I am currently trying to compile a 2015.01 version of the U=
-boot recipe with the Yocto Sumo release, but unfortunately it throws a com=
pilation error that oe-runmake failed. Could anyone please guide me with th=
is issue.
>
> The build config is as follows:
>
> Build Configuration:
> BB_VERSION           =3D "1.37.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal-4.8"
> TARGET_SYS           =3D "arm-poky-linux-gnueabi"
> MACHINE              =3D "arm-cortex-a8"
> DISTRO               =3D "poky"
> DISTRO_VERSION       =3D "2.5"
> TUNE_FEATURES        =3D "arm armv7a vfp neon callconvention-hard cortexa=
8"
> TARGET_FPU           =3D "hard"
> meta
> meta-poky
> meta-yocto-bsp
> meta-oe              =3D "master:45ee3c0e98bd3ed81419aaeae1e7324e486161a2=
"
>
> The error log message is as follows:
>
> DEBUG: Executing shell function do_compile
> NOTE: make -j 2 CROSS_COMPILE=3Darm-poky-linux-gnueabi- CC=3Darm-poky-lin=
ux-gnueabi-gcc  --sysroot=3D/source/yocto/build/tmp/work/arm_cortex_a8-poky=
-linux-gnueabi/u-boot/v2015.01+gitAUTOINC+92fa7f53f1-r0/recipe-sysroot V=3D=
1 KCFLAGS=3D-fgnu89-inline am335x_evm_config
> make -f ./scripts/Makefile.build obj=3Dscripts/basic
>   cc -Wp,-MD,scripts/basic/.fixdep.d -Wall -Wstrict-prototypes -O2 -fomit=
-frame-pointer     -o scripts/basic/fixdep scripts/basic/fixdep.c
> /bin/sh: cc: command not found
> make[1]: *** [scripts/Makefile.host:91: scripts/basic/fixdep] Error 127
> make: *** [Makefile:390: scripts_basic] Error 2
> ERROR: oe_runmake failed
> WARNING: /source/yocto/build/tmp/work/arm_cortex_a8-poky-linux-gnueabi/u-=
boot/v2015.01+gitAUTOINC+92fa7f53f1-r0/temp/run.do_compile.20414:1 exit 1 f=
rom 'exit 1'
> ERROR: Function failed: do_compile (log file is located at /source/yocto/=
build/tmp/work/arm_cortex_a8-poky-linux-gnueabi/u-boot/v2015.01+gitAUTOINC+=
92fa7f53f1-r0/temp/log.do_compile.20414)
>
> Thanks,
> -Johannes
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

