Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EF9BE00C81; Tue,  9 Jul 2019 06:31:38 -0700 (PDT)
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
	*      [209.85.160.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
	[209.85.160.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E16E5E00C46
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2019 06:31:37 -0700 (PDT)
Received: by mail-qt1-f196.google.com with SMTP id y26so9032424qto.4
	for <yocto@yoctoproject.org>; Tue, 09 Jul 2019 06:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=e5HZGjG9ypyv+ooKO2WWo7RgxgIMTCMOxzkoVXN1zhw=;
	b=adowmQ7jJ/pmlHO+Wgh+sRyox4sZA6jQeYu2Er47rNR87E2IVwM6vqQfDVDWj2hFZi
	rSfGRNaMBJaPo7/K99fRCvKPVaYIJHe4z/2/uOOV0yR0nYQMk6v9xdel33dZFL0/VPUP
	AvjSZI27LgSZSVl2Xvy7TwcHNazBsuqqPWOrA7bg8qDulFAWYNpp8y4NFliPvrIg8EzB
	tikH1BPKUZm9ENe44hJ5mTY1Vl/vxMFGzZXqho4Y4D8Jh5/Kb0ELZc1EPyikhFizAL3k
	km7hz49GZasBETcq5jkU8iLhV2OeruBdMTVk2PggUI7uKXZxVOalXVr1FMEB8VWidSUZ
	hf4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=e5HZGjG9ypyv+ooKO2WWo7RgxgIMTCMOxzkoVXN1zhw=;
	b=VYAyHGVNmo4gdjAN8ID7XVl75EYocMYim5LiKSYcDwQN2NMSST0I9fsyFeeor7fgE9
	haX3eBWy3npfxLnhBZfqJv8ucxd3HQC5uliskedBT2oyFMJ+0lDM2dey6lkFDrSr4uzY
	+nJ1rw0R6jz/M887RnJQHFJ/QP2dxqZnSpfJxJqh0OzHB85rRdQ7W1ENkp1LvsfbCbqL
	+mHWNEFBYSQYl+aHEjJf/YdX3oWNng+8f34kDYFvXKII4SzhvhCqTMjHx3HIv6JMSUXe
	VOhPHnnjqMoCJGFY4TO0eSwoO9jhB4O/+b6aYAgcojIacgK70vBCax+TFtoIDy/T8BUE
	7y8Q==
X-Gm-Message-State: APjAAAWGUgTrejI1z5vyJ9BY+uv/AhyspNkx+EHY49nfarV64NveAPC5
	O/WJZ7RBFTtJNBh/YEdD7A5pL5bxjVSz5wquKPk=
X-Google-Smtp-Source: APXvYqwvbB/YsuB+cpExN/Bvjmqn0MM8NkDS+hrG7TUlpzAvUgqAApLNHEG2aCKu1pmX/+4T+PJgBQSeBZbFRqiriLk=
X-Received: by 2002:a0c:96e7:: with SMTP id b36mr19491377qvd.155.1562679097104;
	Tue, 09 Jul 2019 06:31:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWREgSBse3oq8FhH2bCNcr5FC4SYTyeFuW9_b-KdTX1VGQ@mail.gmail.com>
	<CAGAf8Ly56LcA3wih1BOqi0rbm+z2nwonTi5=jBjjQ_+=55uQNg@mail.gmail.com>
	<CAA=hcWSrfdSbKdhDUznCJs2KvfhZPueCdZd6A+PdNXxLZsywkg@mail.gmail.com>
In-Reply-To: <CAA=hcWSrfdSbKdhDUznCJs2KvfhZPueCdZd6A+PdNXxLZsywkg@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 9 Jul 2019 15:31:25 +0200
Message-ID: <CAGAf8LwOkrn2TFRai_jnO7KO-7tJSrapXpnRPRWRgLcVOgdPcQ@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Stuck to build zImage-initramfs
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
X-List-Received-Date: Tue, 09 Jul 2019 13:31:38 -0000
Content-Type: text/plain; charset="UTF-8"

Jupiter,

I never read carefully the whole mechanism how to bundle kernel with
initramfs in YOCTO.

I have there a description how to organize kernel image WITHOUT
initramfs (only kernel image by itself) and separately initramfs as
final stage, so I can do the tests with Lava, but I developed another
meanings with such a configuration: some another way of testing
various proofs of concepts.

What you are asking is a classical approach: kernel bundled with
initramfs, which is called Dracut phase, before mounting HDD/SSD
permanent rootfs... It is non-trivial process, controlled by various
kernel scripts.

I also need to analyse this @ thread regarding what you have asked
for... Maybe this is good time do to such a analysis! If?

Zoran
_______

On Tue, Jul 9, 2019 at 1:47 PM JH <jupiter.hce@gmail.com> wrote:
>
> Thanks Zoran, I did see that link and your post to run mkimage. Did
> you get zImage-initramfs? I have to admit, I lost in that long email
> discussion with different approaches, I tried all set up, but there is
> no zImage-initramfs to be generated, files built in deploy/images just
> could not be used to run uuu on imx6 RAM.
>
> There is post for add KERNEL_INITRAMFS = "-initramfs", it looks like
> very close to generate zImage-initramfs, but I could still not get it
> :-(.
>
> Thank you very much.
>
> On 7/9/19, Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com> wrote:
> > Please, read the following thread:
> > https://lists.yoctoproject.org/pipermail/yocto/2018-July/041680.html
> >
> > Zoran
> > _______
> >
> > On Mon, Jul 8, 2019 at 11:43 PM JH <jupiter.hce@gmail.com> wrote:
> >>
> >> Hi,
> >>
> >> I have been stuck to build zImage-initramfs for weeks. I've read Yocto
> >> latest document, but still failed to generate the initarmfs to run on
> >> RAM. I added following statements in local.conf:
> >>
> >> UBOOT_CONFIG = "ram"
> >> INITRAMFS_IMAGE_BUNDLE = "1"
> >> DISTRO_FEATURES_append = " ram"
> >> IMAGE_FSTYPES_append = " cpio.xz"
> >>
> >> It built to following images:
> >>
> >> dev-image.rootfs.cpio.xz
> >> u-boot.imx-ram
> >> zImage.bin
> >>
> >> If I extract the dev-image.rootfs.cpio.xz, it contains zImage at boot
> >> directory.
> >>
> >> What I need is the zImage-initramfs to contain the rootfs in initramfs
> >> format.
> >>
> >> I see there is document ramfs-rootfs-initramfs.txt, but it did not
> >> mention how to generate zImage-initramfs.
> >>
> >> There is core-image-minimal-initramfs.bb, but it cannot be run:
> >>
> >> $ MACHINE="imx6evk" DISTRO="imx6evk" bitbake core-image-minimal-initramfs
> >> ERROR: Nothing PROVIDES 'core-image-minimal-initramfs'
> >> core-image-minimal-initramfs was skipped: incompatible with host
> >> arm-oe-linux-gnueabi (not in COMPATIBLE_HOST)
> >>
> >> Could any one help what I am missing here and how to build the
> >> zImage-initramfs?
> >>
> >> Thank you.
> >>
> >> Kind regards,
> >>
> >> - jh
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >

