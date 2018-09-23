Return-Path: <andrea.adami@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0663FE009CF; Sun, 23 Sep 2018 15:06:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andrea.adami[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
	[209.85.214.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCC6FE003DB
	for <yocto@yoctoproject.org>; Sun, 23 Sep 2018 15:06:53 -0700 (PDT)
Received: by mail-pl1-f193.google.com with SMTP id 30-v6so1587124plb.10
	for <yocto@yoctoproject.org>; Sun, 23 Sep 2018 15:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=e8qpgWuUnlbxvx9HHASZx3JfKC+q/NIyt3/FD+nL4e8=;
	b=PCry9DDxmNJTI5nXwOb1zbZR86yANuXond7Tvsp+ERLQM1z/jL07t83AvaFsgNSF6Y
	Q31q8JrPYIMDKp8Rerm4QvjohlQ+gn6dXzp3YTp6DAYmHV2LljCSjvOHdi5IiLllfdhE
	zj81ZJ1Dv7OhRZRILVk9MBnwRg6bckYLD/BCrh/sVE/Vsljw1Rh/k9G9LQuNoxVAoqrr
	tazaOQ4AYksRC5kNIMkqUzTQX9m7pm9oBGpgVwX6lVO/o9860ebRpntbcNawFBf4FoQs
	13WU7jTxu1tjjWhGfENX69M56dZd6Oh8aW0n+WI58IPdZKPIbgbtQyKmCG3mhZA7+yC9
	jUHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=e8qpgWuUnlbxvx9HHASZx3JfKC+q/NIyt3/FD+nL4e8=;
	b=HyvyL8EgGsAN9AZmTCY+a0kWNRbmpoX3wdcdH7jsyVCSohGmVwS/5Lm7BGIElB7CvG
	PXZguft5zMw1EBPnftNydGAo2ZyE1AOAj8ZShLOzA5UZbcGELvE/pdvud7f5ad9ihMOm
	/9o8/AMcIl8XZVBJJjQ7QC7GmsqNPFW+zO7AFfBXnpvif0IOiEACSsToQYq+NPYTFHm3
	2BiO9ns1O+Z5h/htkTrPGdg3+FanCIa+qQCk/MuzbVcODZuBZ7P+a08dNPIJxoC2ye4i
	xyL1sPS32qxYiyzGiFQ552GhpFluUQQV7vSFK4CnCCvTLdpwmo+e5Ub/Tk9mKpD8FOIH
	4DCg==
X-Gm-Message-State: ABuFfoiUmwAuU24FocOHK5Y9zxsMaH1kx9nOJLV3RL1TVV/Ikb14nCSS
	jaEjH8Rq0UFtoZng0vGW8PLEAxTW6tNxa5cs64/bDiCZ
X-Google-Smtp-Source: ACcGV603MqMfmO8oGkP23tY7cAz6oSYU5uBRGqxwV9qq3+HRknlxs9XvAB9dPw1BqoLVTOR0lz/+zIJIzPToQ0vgB+Q=
X-Received: by 2002:a17:902:b945:: with SMTP id
	h5-v6mr7860429pls.248.1537740413221; 
	Sun, 23 Sep 2018 15:06:53 -0700 (PDT)
MIME-Version: 1.0
References: <f9f3b3b3-237b-55c2-531b-fa03a8e62f73@berginkonsult.se>
	<d75c6307-7071-bbbc-5ace-4e1db0f15cea@windriver.com>
	<c9071e74-5a04-408e-6a5b-87490fc9b167@berginkonsult.se>
	<CAJTo0LbjCN31UUNUP9WX_NxMhoAr0xCt45WrQaWDvqovDeNhYw@mail.gmail.com>
	<570c7242-e0a8-a65c-aa8f-93b4c331da08@berginkonsult.se>
	<CAAQYJAvccEtSj1VpXJ-KdaB8Q=s+rQ2SQ8oRn2Bo2ojo5+U3xg@mail.gmail.com>
In-Reply-To: <CAAQYJAvccEtSj1VpXJ-KdaB8Q=s+rQ2SQ8oRn2Bo2ojo5+U3xg@mail.gmail.com>
From: Andrea Adami <andrea.adami@gmail.com>
Date: Mon, 24 Sep 2018 00:06:41 +0200
Message-ID: <CAAQYJAs7Wi5S1Qf2-TgQZC76wf7NxEATnr2dR1pfVi6r3zn30Q@mail.gmail.com>
To: peter@berginkonsult.se
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: liblzma: memory allocation failed
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
X-List-Received-Date: Sun, 23 Sep 2018 22:06:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 21, 2018 at 1:04 AM Andrea Adami <andrea.adami@gmail.com> wrote=
:
>
> On Thu, Sep 20, 2018 at 1:03 PM Peter Bergin <peter@berginkonsult.se> wro=
te:
> >
> > On 2018-09-17 10:27, Burton, Ross wrote:
> >
> > On Mon, 17 Sep 2018 at 08:13, Peter Bergin <peter@berginkonsult.se> wro=
te:
> >
> > I'm pretty sure I have narrowed down the root cause to the restriction
> > of virtual memory and that liblzma base its memory calculations on
> > physical RAM.
> >
> > To prove this I added a printout in rpm-native/rpmio/rpmio.c and the
> > function lzopen_internal.
> >
> >          uint64_t memory_usage =3D lzma_stream_encoder_mt_memusage(&mt_=
options);
> >         rpmlog(RPMLOG_NOTICE, "DBG: memory_usage %lu\n", memory_usage);
> >
> >
> > The value of memory_usage is the same regardless of which 'ulimit -v'
> > value I set. On the host with 256GB of physical RAM and 32GB of virtual
> > memory, memory_usage is ~5.1GB. On another host with 16GB of physical
> > RAM I get memory_usage of ~660MB.
> >
> > I guess you have not seen this kind of failure if you not have
> > restricted virutal memory on your host. If you want to try to reproduce
> > this set 'ulimit -v 8388608' (8GB) in your shell and then 'bitbake
> > glibc-locale -c package_write_rpm -f'.
> >
> > Wouldn't a solution be to change lzma to look at free memory, not
> > total physical memory?
> >
> > Ross
> >
> > I have been in contact with the maintainer of liblzma. There is current=
ly no way to restrict the memory usage in liblzma during multi threaded com=
pression. He recommended to adjust the number of threads used during compre=
ssion. This kind of check is done for 32-bits but not when running 64-bits =
(in rpmio/rpmio.c lzopen_internal). To rewrite liblzma is another option bu=
t I took an easier way out.
> >
> > I have come up with a patch (https://patchwork.openembedded.org/patch/1=
55017/) that solves my problem and do a restriction of memory usage when th=
e 'ulimit -v' is set. The calculation is based on the assumption that lzope=
n_internal is run in parallel with as many instances as cpu threads as '#pr=
agma omp parallel' is used in build/pack.c.
> >
> > When running test on my machine with 4 cores 16GB of physical RAM and '=
ulimit -v 2097152' (2GB). It works good and the log shows:
> >
> > XZ: virtual memory restricted to 2147483648 and per CPU thread 53687091=
2
> > XZ: Adjusted the number of threads from 4 to 3 to not exceed the memory=
 usage limit of 2147483648 bytes
> >
> > Didn't get a clear answer if this is something Yocto/OE should support =
but I hope my patch solves the issue and it will not affect the normal envi=
ronments where 'ulimit -v' is not set.
> >
> > /Peter
> > --
>
> Peter,
> first of all sorry for butting-in again. My bad I misunderstood the point=
,
>
> Looking properly at it, I see the sources do restrict only #if __WORDSIZE=
 =3D=3D 32.
>
> Again, there is the other way to reduce total memory footprint just
> using lower preset in mt_options.
> As far as I see default is  #define LZMA_PRESET_DEFAULT     UINT32_C(6)
> so you could tr to modify   mt_options.preset to your needs.
> I think more threads is normally  better.
>
> Cheers
> Andrea
>
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto


Well,
call it luck, I now get similar problems with
-  opkg-utils: use multithreaded xz when building packages
   369c43cca4f0

I build in tmpfs (8GB) and have 8 cores.
Strange enough, it does happen with only one machine of our bsp (akita).

Build Configuration:
BB_VERSION           =3D "1.39.1"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "ubuntu-16.04"
TARGET_SYS           =3D "arm-oe-linux-gnueabi"
MACHINE              =3D "akita"
DISTRO               =3D "nodistro"
DISTRO_VERSION       =3D "nodistro.0"
TUNE_FEATURES        =3D "arm armv5 thumb dsp"
TARGET_FPU           =3D "soft"
meta                 =3D "master:8cc08e44cf3e969c124456d459c6c06a76cad018"
meta-handheld        =3D "master:61e16e253ea870b87592075efd87727e8b5c574d"
meta-initramfs
meta-oe              =3D "master:7ac8d82fec470a8c8e66cfc4216381e2364cb4b2"

...
Installing kernel-module-nls-cp1251-4.14.62-handheld (4.14) on root
Downloading file:/tmp/build/tmp-glibc/work/akita-oe-linux-gnueabi/core-imag=
e-base/1.0-r0/oe-rootfs-repo/akita/kernel-module-nls-cp1251-4.14.62-handhel=
d_4.14-r0_akita.ipk.
Installing kernel-mo
ERROR: core-image-base-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/tmp/build/tmp-glibc/work/akita-oe-linux-gnueabi/core-image-base/1.0-r0/tem=
p/log.do_rootfs.28481
ERROR: Task (/oe/oe-core/meta/recipes-core/images/core-image-base.bb:do_roo=
tfs)
failed with exit code '1'
...

and in dmesg you see opkg segfaulting and OOM kicking in.
It is the same issue...unnoticed building for other similar devices
(spitz). Maybe it did not happen using musl as TC_LIBC.

Reverting the patch fixes that.
Ross, worth opening a bug?

Cheers
Andrea

