Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9A31E00AF0; Mon, 10 Apr 2017 19:30:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.181 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.181 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f181.google.com (mail-wr0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 038FCE00A9B
	for <yocto@yoctoproject.org>; Mon, 10 Apr 2017 19:30:35 -0700 (PDT)
Received: by mail-wr0-f181.google.com with SMTP id l28so30313825wre.0
	for <yocto@yoctoproject.org>; Mon, 10 Apr 2017 19:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=f0B4iP2H7k35bAv4i4eXTsHJ3/kNZUwHIfTwrENJtdM=;
	b=oNaOFiMvlFuD9TQQ3ruGogEh7JguP6gUDApQh2lxDFcJglaphqp2ELHMXXy8yOoMRt
	o+wXX4qKXWszxg7MlZo/9pvu8eJy07A7ZXdi1zBppOzHwuv9e4zf1EjLYpF8YGmEd8Jl
	VGIy46n2EzTM4ig3/HzYn8TVA3sHXaNYZiNQtTR8VnZwMCrt0lrObBIMByQYjC61o4PL
	vmfnDHraZ/9+TtRPMkUYQkuBlaxYzv8IT+Pcj9KG3ThfBeFycsCBlD/uf49OLdlmeEeQ
	o4/1vY6sg0aqYM9EWGQkER6Rxv8iNmZjUJE9H3Qx3Mkc//Xb1CzximrK7dbcCvn05y4/
	LHFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=f0B4iP2H7k35bAv4i4eXTsHJ3/kNZUwHIfTwrENJtdM=;
	b=OMGz6bkoPkU5Mx9w123lF+xaRQbsJepzJrPdyDJ37eJzDHl4sbV+860Ue6uopFx8D2
	B9sB0kmal3cpd0lv+85E8X2z8sUrWFYYg2Kr6AgZN9S3E7aVIrLcelYcCzqWHahtJiCS
	z9rt8q9dsvttkN2dB1lk18ufXZELQYoicPXvCllVDWcwZnBRKnKeju2BL5+fjZi8qjup
	nUlnKLaffa+PYYUiOdbYkVz8bNSewm86TrWsdLbv+IHHluC/ohPi7xwv5We7ZU6MnJTI
	3Sw3u2c0JgeUqhchjcQZW+yVFJj0bU/613KQSWvs3aEsOdMG+hMy3Vp1yGZjLDT8Rp0A
	Rs0A==
X-Gm-Message-State: AN3rC/6qOoBPYXUcgbxmU1grcRLsdc64RX6+tHSgUDxh7R93jwUlDQFPo512zsKIKVO9dLCWzs1e9Swh8bpuUg==
X-Received: by 10.223.166.170 with SMTP id t39mr10418448wrc.72.1491877834742; 
	Mon, 10 Apr 2017 19:30:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.153.248 with HTTP; Mon, 10 Apr 2017 19:30:34 -0700 (PDT)
In-Reply-To: <2AA7D088591C49498E92D6491C58159334CCEFDD@gcxdb1.corp.geze.com>
References: <2AA7D088591C49498E92D6491C58159334CCEFDD@gcxdb1.corp.geze.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 10 Apr 2017 19:30:34 -0700
Message-ID: <CAJ86T=WxgyhsdEiH84KgE5Vr7qdC9KCko08RNCLRugcWLiDzUg@mail.gmail.com>
To: "Maier, Chris" <C.Maier@geze.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Install rootfs.tar.bz2 to ${D}/home/root/
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
X-List-Received-Date: Tue, 11 Apr 2017 02:30:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 10, 2017 at 4:28 AM, Maier, Chris <C.Maier@geze.com> wrote:
> Hi,
>
> I want to create a deployable SD card image. My board (beaglebone based) =
boots from SD card and runs a script which copies the rootfs.tar.bz2 to the=
 flash memory.
> So how can I deploy a copy of the whole rootfs to ${D}/home/root?
> A rootfs in the rootfs, does that make sense?

Assuming you have two image recipes (inner-image.bb and
outer-image.bb), add something like the following to the
outer-image.bb recipe:

  do_rootfs[depends] +=3D "inner-image:do_image_complete"
  ROOTFS_POSTPROCESS_COMMAND +=3D "copy_inner_image; "
  copy_inner_image () {
    install -d ${IMAGE_ROOTFS}/home/root
    install -m644 ${DEPLOY_DIR_IMAGE}/inner-image-${MACHINE}.tar.bz2
${IMAGE_ROOTFS}/home/root/rootfs.tar.bz2
  }

Also ensure that either the machine config or inner-image.bb includes:

  IMAGE_FSTYPES +=3D "tar.bz2"

> Any help is appreciated.
>
> Chris Maier
>
> Gesch=C3=A4ftsf=C3=BChrung: Brigitte V=C3=B6ster-Alber (Vorsitzende), And=
rea Alexandra Alber, Marc Alber, Florian Birkenmayer
> Vorsitzender des Aufsichtsrates: Prof. Dr. Dr. Ulli Arnold, Amtsgericht S=
tuttgart HRB 250329, Tel: +49 7152 203 0
> GEZE GmbH, Reinhold-V=C3=B6ster-Stra=C3=9Fe 21-29, 71229 Leonberg, German=
y
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

