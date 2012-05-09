Return-Path: <andrea.adami@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3913EE0140E
	for <yocto@yoctoproject.org>; Wed,  9 May 2012 11:41:09 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so1109443pbb.35
	for <yocto@yoctoproject.org>; Wed, 09 May 2012 11:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=j2QVM6HNJ4EC2v+Mak4KeStigrk1MQQH9ZtwimufFY4=;
	b=0P+97K2qfnUTiYvYSNcd85AiyMSLySdyc94gFFBO5f1KSKxAmZimkCP8uBUIrDekvJ
	+RVNVSHYxpuvqT7KLXBLJLj+/b2TbgaPyiM7sMR64gdKOJXTnu0BtT6rEFX3A7RTk+pV
	2hvWt2zQJpLrWagCiyToJz7Yh9a/1z0g46Cw3TOkFKi061OP4lsPLnf+/3R9/4rLqtrI
	knilw6iv046rsvx/jW7H62e9ywrDIFeH4e0wIw50KTykhB9+LO9r0gagySHS+pFCdJZi
	2HWAldxuSR7oFBSO9VMJK/9ASBhgYWNLGyqlxkSy1TcCDpeZMA+IuMgEei7hUIb2mR7l
	TacQ==
MIME-Version: 1.0
Received: by 10.68.190.7 with SMTP id gm7mr11562331pbc.156.1336588868624; Wed,
	09 May 2012 11:41:08 -0700 (PDT)
Received: by 10.142.54.11 with HTTP; Wed, 9 May 2012 11:41:08 -0700 (PDT)
In-Reply-To: <CAAQYJAuR5hTaxfQCYxOd0a-hXVavHEpaVRMLtYLffVgHbNBTuA@mail.gmail.com>
References: <OF2A8EADBF.1A016282-ONC12579F3.0038D0CC-C12579F3.00390132@Sitek.it>
	<CAAQYJAs5EVfq+3E0J1FiZZMppvDUd=xpmEj2R1Hr3V3APQrL7g@mail.gmail.com>
	<OF3FED1B75.579277FB-ONC12579F3.0057B45D-C12579F3.0057F44E@Sitek.it>
	<CAAQYJAuR5hTaxfQCYxOd0a-hXVavHEpaVRMLtYLffVgHbNBTuA@mail.gmail.com>
Date: Wed, 9 May 2012 20:41:08 +0200
Message-ID: <CAAQYJAviOZDqBYrDGECG9KJ4WxN=KNGPXgCTTKROj9=_LqDo9A@mail.gmail.com>
From: Andrea Adami <andrea.adami@gmail.com>
To: yocto@yoctoproject.org
Subject: Need help for building kernel image with embeddedinitramfs.cpio
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
X-List-Received-Date: Wed, 09 May 2012 18:41:09 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

I've realized my answer was not sent to the list.

I'll do it now, being the subject may be of interest.

Andrea


---------- Forwarded message ----------
From: Andrea Adami <andrea.adami@gmail.com>
Date: Thu, May 3, 2012 at 6:24 PM
Subject: Re: [yocto] Need help for building kernel image with
embeddedinitramfs.cpio
To: giovanni.pavoni@exorint.it


On Thu, May 3, 2012 at 6:00 PM, =A0<giovanni.pavoni@exorint.it> wrote:
> Thanks for your suggestion. I have not yet tried with kernel modules
> but the whole build sequence appears fine and the output is running.
>
> I am hitting a problem thought with step 3
>
> I have this layout (meta-mylayer is parallel to meta-yocto):
>
> meta-mylayer/conf/machine/mymachine.conf
> meta-mylayer/recipes-kernel/linux/linux.inc
> meta-mylayer/recipes-kernel/linux/linux_2.6.37.bb
> meta-mylayer/recipes-kernel/linux/linux_2.6.37/mymachine/defconfig
>
> linux.inc inherit from kernel and I am setting
> PREFERRED_PROVIDER_virtual/kernel =3D "linux"
> PREFERRED_VERSION_linux ?=3D "2.6.37"
> in mymachine.conf.
>
> This builds and deploys a uImage-mymachine-"stamp1".bin fine for mymachin=
e.
>
> I added a kernel recipe in my recipe-kernel layer
> like this:
>
> meta-mylayer/recipes-kernel/linux/linuxramfs_2.6.37.bb
> meta-mylayer/recipes-kernel/linux/linuxramfs_2.6.37/mymachine/defconfig
>
> in linuxramfs_2.6.37/mymachine/defconfig I patched all options for ramfs
> (source / compression etc)
> and tweaked linuxramfs_2.6.37.bb as per your indication (starting from th=
e
> linux_2.6.37.bb
> I had up and running).
>
> Problems:
>
> 1. when I run "bitbake linuxramfs" I get
> "ERROR: Multiple .bb files are due to be built which each provide
> virtual/kernel"
>
> I am seeing multiple reference on the net about this error but I am not
> understanding
> how to handle. Both linuxramfs_2.6.37.bb and linux_2.6.37.bb are providin=
g
> virtual/kernel.
>
this can be solved adding =A0PROVIDES =3D ""
(see the kexecboot kernels linked above)

> 2. "bitbake linuxramfs" deploys a uImage-mymachine-"stamp2".bin
> To overwrite this in a way I get a uImage-ramfs-mymachine-"stampxxx".bin
> (so that I can easily identify it against a normal uImage - only kernel)
> what do_* task should I reimplement in my linuxramfs_2.6.37.bb recipe?
>
KERNEL_IMAGE_BASE_NAME
KERNEL_IMAGE_SYMLINK_NAME

see:
http://cgit.openembedded.org/meta-openembedded/tree/meta-initramfs/recipes-=
kernel/linux/linux-yocto-tiny-kexecboot_3.2.bb

> Thanks in advance for your attention
>
YW

Cheers

Andrea (from Verona)

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

