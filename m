Return-Path: <andrea.adami@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22D40E00A0A; Mon, 24 Sep 2018 01:28:43 -0700 (PDT)
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
	*      [209.85.210.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91A5FE0090C
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2018 01:28:42 -0700 (PDT)
Received: by mail-pf1-f193.google.com with SMTP id k19-v6so8727567pfi.1
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2018 01:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=6DNMYz4Duna76wqJE4Ca/kEUNPeOP+cVEu2U9gKi7TE=;
	b=TGjzhoa8LYG6C2QGTnl8W1JO/2QJ16JE0QCkOJszWJqkRrIdgSAKo4eekEsRQetCuM
	6ll7I0CKRXYVihtNxGm4oPy/1DF4rwOhBd9OousNlGdjTy/bsFBso0LL4wVOHTqaM3yv
	QJASbYYlg/gtHUgjN/j/lk7zt5vnAQb19Yme3H75P/L08Df6iYNEPnM6s0hvmTwB+Sk1
	3lvrJ2valD4Vzxc2GjiBrI0F5gBPdRcSjcIWWRaHoz9pAPsZgwy9x7SEMFQsl4Ev+kOw
	ccRRYo9VXyKteh28ehsj6AWxIA9zCFSdgZOt1CpNHTvrBmM3ytaJysZXxDVCLTcQsivh
	LiMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=6DNMYz4Duna76wqJE4Ca/kEUNPeOP+cVEu2U9gKi7TE=;
	b=S9bHCIudmtj2AB7lJygELN0HGGeuBSFqzkaAMwBAGYpBEY42ugIF4dHfd/UPUUcBgC
	HIsKdZgiF32aYIAnyNfeAS9Rmdu0Un1XWLtjSS7uwemqglXb+5tqmkiURJQPxsYL1FGU
	SOOwsKIx4GV5b1O7vNlb/AlW0OeexIJNrnqm+hPSNl6ShaFb+FWXjIsxgC8iCPMtipYa
	viry5o/kkawmGTIWhe6wQoLKWSvmU6wYSdDJsFq4HGZ7B9Fx551S6WB4V/bR1b63rIuD
	z9PDK3gee1jNAd+z/4BXBMMN8tWE//AZlgTRCMdHQvdsXRfoSR/QNYzoq3cO5MlwwqTn
	hV3A==
X-Gm-Message-State: APzg51AnU+3t6ywIGPG9M3Bb7PQeyp3EuCkZ2Rfx9LGhBLVn18k5Y7Ce
	TKGYpi1SUbosoGfU1ETEexSp+/evTJX6r06Dj/M=
X-Google-Smtp-Source: ANB0VdYvGimTZjGdQicrd2VihYe0irOtpdmOrvPWPqWB7Ftka+jcpAoiIBd+40IDHORSiyg433SJjG06ES/CYXMjDZk=
X-Received: by 2002:a62:990f:: with SMTP id
	d15-v6mr9332390pfe.162.1537777721981; 
	Mon, 24 Sep 2018 01:28:41 -0700 (PDT)
MIME-Version: 1.0
References: <f9f3b3b3-237b-55c2-531b-fa03a8e62f73@berginkonsult.se>
	<d75c6307-7071-bbbc-5ace-4e1db0f15cea@windriver.com>
	<c9071e74-5a04-408e-6a5b-87490fc9b167@berginkonsult.se>
	<CAJTo0LbjCN31UUNUP9WX_NxMhoAr0xCt45WrQaWDvqovDeNhYw@mail.gmail.com>
	<570c7242-e0a8-a65c-aa8f-93b4c331da08@berginkonsult.se>
	<CAAQYJAvccEtSj1VpXJ-KdaB8Q=s+rQ2SQ8oRn2Bo2ojo5+U3xg@mail.gmail.com>
	<CAAQYJAs7Wi5S1Qf2-TgQZC76wf7NxEATnr2dR1pfVi6r3zn30Q@mail.gmail.com>
	<f6f533e1-7215-6eb0-c9bb-a25a158521a7@berginkonsult.se>
In-Reply-To: <f6f533e1-7215-6eb0-c9bb-a25a158521a7@berginkonsult.se>
From: Andrea Adami <andrea.adami@gmail.com>
Date: Mon, 24 Sep 2018 10:28:27 +0200
Message-ID: <CAAQYJAuJy6fZAkJsuXO7O8eU9K5OhWfF88L161==pASDyJj0YA@mail.gmail.com>
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
X-List-Received-Date: Mon, 24 Sep 2018 08:28:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 24, 2018 at 9:08 AM Peter Bergin <peter@berginkonsult.se> wrote=
:
>
> On 2018-09-24 00:06, Andrea Adami wrote:
> > On Fri, Sep 21, 2018 at 1:04 AM Andrea Adami <andrea.adami@gmail.com> w=
rote:
> >> On Thu, Sep 20, 2018 at 1:03 PM Peter Bergin <peter@berginkonsult.se> =
wrote:
> >>> On 2018-09-17 10:27, Burton, Ross wrote:
> >>>
> >>> On Mon, 17 Sep 2018 at 08:13, Peter Bergin <peter@berginkonsult.se> w=
rote:
> >>>
> >>> I'm pretty sure I have narrowed down the root cause to the restrictio=
n
> >>> of virtual memory and that liblzma base its memory calculations on
> >>> physical RAM.
> >>>
> >>> To prove this I added a printout in rpm-native/rpmio/rpmio.c and the
> >>> function lzopen_internal.
> >>>
> >>>           uint64_t memory_usage =3D lzma_stream_encoder_mt_memusage(&=
mt_options);
> >>>          rpmlog(RPMLOG_NOTICE, "DBG: memory_usage %lu\n", memory_usag=
e);
> >>>
> >>>
> >>> The value of memory_usage is the same regardless of which 'ulimit -v'
> >>> value I set. On the host with 256GB of physical RAM and 32GB of virtu=
al
> >>> memory, memory_usage is ~5.1GB. On another host with 16GB of physical
> >>> RAM I get memory_usage of ~660MB.
> >>>
> >>> I guess you have not seen this kind of failure if you not have
> >>> restricted virutal memory on your host. If you want to try to reprodu=
ce
> >>> this set 'ulimit -v 8388608' (8GB) in your shell and then 'bitbake
> >>> glibc-locale -c package_write_rpm -f'.
> >>>
> >>> Wouldn't a solution be to change lzma to look at free memory, not
> >>> total physical memory?
> >>>
> >>> Ross
> >>>
> >>> I have been in contact with the maintainer of liblzma. There is curre=
ntly no way to restrict the memory usage in liblzma during multi threaded c=
ompression. He recommended to adjust the number of threads used during comp=
ression. This kind of check is done for 32-bits but not when running 64-bit=
s (in rpmio/rpmio.c lzopen_internal). To rewrite liblzma is another option =
but I took an easier way out.
> >>>
> >>> I have come up with a patch (https://patchwork.openembedded.org/patch=
/155017/) that solves my problem and do a restriction of memory usage when =
the 'ulimit -v' is set. The calculation is based on the assumption that lzo=
pen_internal is run in parallel with as many instances as cpu threads as '#=
pragma omp parallel' is used in build/pack.c.
> >>>
> >>> When running test on my machine with 4 cores 16GB of physical RAM and=
 'ulimit -v 2097152' (2GB). It works good and the log shows:
> >>>
> >>> XZ: virtual memory restricted to 2147483648 and per CPU thread 536870=
912
> >>> XZ: Adjusted the number of threads from 4 to 3 to not exceed the memo=
ry usage limit of 2147483648 bytes
> >>>
> >>> Didn't get a clear answer if this is something Yocto/OE should suppor=
t but I hope my patch solves the issue and it will not affect the normal en=
vironments where 'ulimit -v' is not set.
> >>>
> >>> /Peter
> >>> --
> >> Peter,
> >> first of all sorry for butting-in again. My bad I misunderstood the po=
int,
> >>
> >> Looking properly at it, I see the sources do restrict only #if __WORDS=
IZE =3D=3D 32.
> >>
> >> Again, there is the other way to reduce total memory footprint just
> >> using lower preset in mt_options.
> >> As far as I see default is  #define LZMA_PRESET_DEFAULT     UINT32_C(6=
)
> >> so you could tr to modify   mt_options.preset to your needs.
> >> I think more threads is normally  better.
> >>
> >> Cheers
> >> Andrea
> >>
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/yocto
> >
> > Well,
> > call it luck, I now get similar problems with
> > -  opkg-utils: use multithreaded xz when building packages
> >     369c43cca4f0
> >
> > I build in tmpfs (8GB) and have 8 cores.
> > Strange enough, it does happen with only one machine of our bsp (akita)=
.
> >
> > Build Configuration:
> > BB_VERSION           =3D "1.39.1"
> > BUILD_SYS            =3D "x86_64-linux"
> > NATIVELSBSTRING      =3D "ubuntu-16.04"
> > TARGET_SYS           =3D "arm-oe-linux-gnueabi"
> > MACHINE              =3D "akita"
> > DISTRO               =3D "nodistro"
> > DISTRO_VERSION       =3D "nodistro.0"
> > TUNE_FEATURES        =3D "arm armv5 thumb dsp"
> > TARGET_FPU           =3D "soft"
> > meta                 =3D "master:8cc08e44cf3e969c124456d459c6c06a76cad0=
18"
> > meta-handheld        =3D "master:61e16e253ea870b87592075efd87727e8b5c57=
4d"
> > meta-initramfs
> > meta-oe              =3D "master:7ac8d82fec470a8c8e66cfc4216381e2364cb4=
b2"
> >
> > ...
> > Installing kernel-module-nls-cp1251-4.14.62-handheld (4.14) on root
> > Downloading file:/tmp/build/tmp-glibc/work/akita-oe-linux-gnueabi/core-=
image-base/1.0-r0/oe-rootfs-repo/akita/kernel-module-nls-cp1251-4.14.62-han=
dheld_4.14-r0_akita.ipk.
> > Installing kernel-mo
> > ERROR: core-image-base-1.0-r0 do_rootfs: Function failed: do_rootfs
> > ERROR: Logfile of failure stored in:
> > /tmp/build/tmp-glibc/work/akita-oe-linux-gnueabi/core-image-base/1.0-r0=
/temp/log.do_rootfs.28481
> > ERROR: Task (/oe/oe-core/meta/recipes-core/images/core-image-base.bb:do=
_rootfs)
> > failed with exit code '1'
> > ...
> >
> > and in dmesg you see opkg segfaulting and OOM kicking in.
> > It is the same issue...unnoticed building for other similar devices
> > (spitz). Maybe it did not happen using musl as TC_LIBC.
> >
> > Reverting the patch fixes that.
> > Ross, worth opening a bug?
> >
> > Cheers
> > Andrea
> Andrea,
>
> do you have any virtual memory restrictions (ulimit -v) or overcommit
> settings (vm.overcommit_memory)  on your build host?
>

Anything special, is just Ubuntu 16.04 on x86_64.

The point is, I do build since years with this setup:
- TMPDIR in tmpfs  (80% of 16GiB set in fstab)
- 8 cores
- rm_work

Lately I have been testing musl libc so probably I missed it back in march.
As for the opkg backend, the solution is very easy (if we want to keep
the parallelism):

- compressorargs=3D"--threads 0"
+ compressorargs=3D"--threads 0 -O 3"

The preset could be even 4 or 5, we need to test and accept a minimum.
I'll test on my setup.

> Regarding my problem with rpm and liblzma when virtual memory is
> restricted I have supplied a patch to oe-core
> https://patchwork.openembedded.org/patch/155017/ with a suggested solutio=
n.
>

Yes, I have seen it. IMHO the sources are buggy.

I still think we are giving too much memory (default is -O 6)
Cheers
Andrea

> Regards,
> /Peter

