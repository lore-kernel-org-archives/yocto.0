Return-Path: <andrea.adami@gmail.com>
Received: from mail-pz0-f46.google.com (mail-pz0-f46.google.com
	[209.85.210.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E506E00723
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 05:40:08 -0700 (PDT)
Received: by dady13 with SMTP id y13so1499477dad.33
	for <yocto@yoctoproject.org>; Thu, 03 May 2012 05:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=bh4mGenRfWh01v8kiGdoF7fcYGR9rICdp0IicUcdsqE=;
	b=A0ZNj/IXK20TL2xoJE6O9ThJgum1tDr8V0utT4FCpRsnvKDe6oN9v3iv0oEBZ9BMzx
	aoh8Xh3N3I9kB3m2Sew3eEnV18ehKPrbiRIN8meydAIptDtdr0E4D7TabC6XZP2/UKjl
	mPEv1qcEhJ1FsdA2+Yt/co/YQ+bkgs5eeLeD/M0fRjUJoqjRH/DVRtio8RMPtytGb/mi
	tuqbpWPhpWjcrAY5NyOTdHS+u/5nOKmvz0JTxjUcv3zs9y62tBd9s1e5+vTJKpXttgv8
	I974Ol51NiRFuKJH3jE0HyF5KMGjDhyd7oSTDnbgDbTpMN66S6dPqSsFhMpb4UR6aTvf
	3UEA==
MIME-Version: 1.0
Received: by 10.68.212.193 with SMTP id nm1mr6955196pbc.156.1336048808267;
	Thu, 03 May 2012 05:40:08 -0700 (PDT)
Received: by 10.142.54.11 with HTTP; Thu, 3 May 2012 05:40:08 -0700 (PDT)
In-Reply-To: <OF2A8EADBF.1A016282-ONC12579F3.0038D0CC-C12579F3.00390132@Sitek.it>
References: <OF2A8EADBF.1A016282-ONC12579F3.0038D0CC-C12579F3.00390132@Sitek.it>
Date: Thu, 3 May 2012 14:40:08 +0200
Message-ID: <CAAQYJAs5EVfq+3E0J1FiZZMppvDUd=xpmEj2R1Hr3V3APQrL7g@mail.gmail.com>
From: Andrea Adami <andrea.adami@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Need help for building kernel image with embedded initramfs.cpio
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 May 2012 12:40:08 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Thu, May 3, 2012 at 12:22 PM,  <giovanni.pavoni@exorint.it> wrote:
> Dear Sirs,
>
> for my cortex A8 based system, I am in the need to deploy
> a sort of "safe mode image" that should bootstrap only
> in case of system recovery.
>
> This image fits particularily well the model of a ramfs based system
> with contents such as core-image-minimal-mtdutils plus some tools additio=
n.
>
> I defined a "myimage.bb" recipe for this image that generates a
> "myimage.cpio"
>
> However I am in the need to:
>
> 1. establish in myimage.bb a relation with virtual/kernel and ask to
> generate
> kernel modules only.
>
> 2. retrieve modules only from the kernel staging area and made them part =
of
> "myimage.cpio"
>
> 3. change the config of my kernel to add CONFIG_INITRAMFS_SOURCE =3D
> "myimage.cpio"
> and copy myimage.cpio from staging area to kernel build location.
>
> 4. build kernel and deploy the emitted uImage as "mykernel+myimage"
>
> Anyone can help with suggestions/guidelines and/or codesnips?
>
Hi Giovanni,

we have already done something similar for kexecboot project.
You need:

1) set in your $machine.conf :
INITRAMFS_FSTYPES ?=3D "cpio.gz cpio.lzma"
KERNEL_IMAGETYPE ?=3D "uImage"

2) a XYZ-image.bb recipe for the image which will be the cpio containing:
IMAGE_FSTYPES =3D "${INITRAMFS_FSTYPES}"
and custom  IMAGE_INSTALL =3D "your list of packages and modules"
For the modules you can use kernel-modules meta-package or the single
kernel-module xyz.

3) a recipe for the kernel containing the line:
INITRAMFS_IMAGE =3D "XYZ-image"

This will be embedded in the kernel.


> Kind regards
>

Cheers
Andrea


>
> Giovanni Pavoni
> R&D Department
>
> Exor International S.p.A.
> Via Monte Fiorino,9
> I-37057 San Giovanni Lupatoto (VR)
> Phone:+390458774839 - Fax:+390458779023
>
> giovanni.pavoni@exorint.it - www.exorint.net - www.exorint.it
>
>
> ATTENZIONE: Privacy Policy =96 D.Lgs. 196/2003
> =A0Le informazioni contenute in questo messaggio di posta elettronica son=
o di
> carattere privato e confidenziale ed esclusivamente rivolte al destinatar=
io
> sopra indicato. Nel caso aveste ricevuto questo messaggio di posta
> elettronica per errore, vi comunichiamo che ai sensi del suddetto decreto=
 =E8
> vietato l=92uso, la diffusione, distribuzione o riproduzione da parte di =
ogni
> altra persona. Siete pregati di segnalarlo immediatamente rispondendo al
> mittente e di distruggere quanto ricevuto (compresi i file allegati) senz=
a
> farne copia o leggerne il contenuto.
>
> This e-mail transmission contains information that is confidential and ma=
y
> be privileged. It is intended only for the addressee(s) named above. If y=
ou
> receive this e-mail in error, please do not read, copy or disseminate it =
in
> any manner. If you are not the intended recipient, any disclosure, copyin=
g,
> distribution or use of the contents of this information is prohibited.
> Please reply to the message immediately by informing the sender that the
> message was misdirected. After replying, please erase it from your comput=
er
> system. Your assistance in correcting this error is appreciated.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

