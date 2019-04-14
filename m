Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B722E00DAE; Sun, 14 Apr 2019 10:08:07 -0700 (PDT)
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
	*      [209.85.160.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
	[209.85.160.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D108E00DA9
	for <yocto@yoctoproject.org>; Sun, 14 Apr 2019 10:08:04 -0700 (PDT)
Received: by mail-qt1-f195.google.com with SMTP id v32so16607213qtc.10
	for <yocto@yoctoproject.org>; Sun, 14 Apr 2019 10:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=gM2a8UXPV3r/lX4Q7rNdSOsnUNQ2mfTvxk0Os37tp+U=;
	b=DwGPg5hkEv/CYt6mP/Hl9RGciNdHcFGJzPs9OHRRWOSSzAZT0sC+BDVX127zDjtlUh
	nPSOpnjNF0WBUN1oa0sixp5qfMCA/3hX9kr73UhEqbIwt/I+bXtd0V+cK3qEWko1d31B
	o+OcnqeU8WEmat0CsIS4vQaM4VUgxhYKeapGIz1nx5IE3GqDUZJrpIMnBV4kmA5Oe714
	TjEEnwfIm0ptbWu9+FWXJnqnMpGeUF8JtOsnRR1DnGEkY7kNYfK4Rab9rk2YDFgLKabt
	fdg+Qk2hTu7PT+t/+kX5njxICIISc0wtEyOMPubg5jYqAUyAaMJm7F1Cku/M4186IEgc
	UOow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=gM2a8UXPV3r/lX4Q7rNdSOsnUNQ2mfTvxk0Os37tp+U=;
	b=L4AJcaLm4JFVUM076wakGAxPPUeZRxfk8Dug5+Z1kl7TRBuLzKuneOhGBuE+OrYffG
	R8u+h7lGVhctvesrzjKQb62m/i50emTXKsQqdkghVZwF60s/B6l17h+YyxZ8oRUYbA8b
	oW3OWGFbJtjCF+sRxAKW0t43ZcBOVj7QN+0xMNJpMND8nMfe7FnIUPMagKe3u5+/E7PV
	CcAmqN77uTzySM7LQRO+S+Wf7SFoMLdTqY6bpSXDCoMOO1FMIdcf6CCjWweg+UWP3Ves
	tglGYXL98joNcTBy3I/qoR2hUN0YnevcSTJTie4KAJCY4BjM66hjs2V78/1v4Cn6tilt
	rM6g==
X-Gm-Message-State: APjAAAVz0zeU7ZVIDk2CCuHHXz9AxCnKIhIQEgc53OqtBk2AeDPeT1fv
	TwRheCdQLtXiHvrIuTHqenzgpJQiv5OG+jk3mYs=
X-Google-Smtp-Source: APXvYqya7IqqmR2e+ehZLMqeuMm5rkF+WfMFpl3FEPiWsNZJ/tSqJT+QgrNNN64xIPSgq/hiDBqtecy1kSs4zlhL+mw=
X-Received: by 2002:aed:2314:: with SMTP id h20mr55269163qtc.24.1555261684214; 
	Sun, 14 Apr 2019 10:08:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190411182858.11756-1-alistair.francis@wdc.com>
	<CAGAf8Lx6xBcOb_PZD=4QwTxi8FyJC99z=rR_BqckyR9JO-yW7Q@mail.gmail.com>
	<3ff466e5-de1c-b83a-efab-129a2c357017@denx.de>
In-Reply-To: <3ff466e5-de1c-b83a-efab-129a2c357017@denx.de>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Sun, 14 Apr 2019 19:07:52 +0200
Message-ID: <CAGAf8LxqA1x=HaLJ+QG12pMcEj4Okd-EiAUFJYXtHYcnN1XuSw@mail.gmail.com>
To: Stefano Babic <sbabic@denx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"denys@ti.com" <denys@ti.com>, Alistair Francis <Alistair.Francis@wdc.com>,
	"alistair23@gmail.com" <alistair23@gmail.com>
Subject: Re: [meta-yocto-bsp][PATCH v2] beaglebone-yocto: Update u-boot config to match u-boot 19.04
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
X-List-Received-Date: Sun, 14 Apr 2019 17:08:07 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Stefano,

Thank you for your reply. So, as expected, patches are in. Since I see
only this from A. Graf recently:
https://patchwork.ozlabs.org/project/uboot/list/?submitter=1212

After all, Tom Rini did it on A. Graf's behalf.

Once I start trying U-Boot post 2019.01 release on my BBB, I'll
subscribe to U-Boot email list again for the help. Now I am busy with
something else. :-)

I'll also give upon the (successful) event a short notice about BBB
U-Boot EFI shell status on this @ thread.

Once again, thank you,
Zoran
_______





On Sat, Apr 13, 2019 at 8:40 PM Stefano Babic <sbabic@denx.de> wrote:
>
> Hi Zoran,
>
> On 12/04/19 09:00, Zoran Stojsavljevic wrote:
> > Hello to all,
> >
> > I will ask few questions here regarding U-Boot, since U-Boot mailing
> > list is too frequent/clogged...
> >
> > Apropos (Regarding to) U-Boot 2019.04, I have some questions? May I?
> >
> > I know for the fact the following:
> > Alexander Graf (till 03.2019 SUSE developer) said (September 2018. in
> > Erlangen, Bavaria, DE) that U-Boot folks will move his UEFI patches in
> > master U-Boot git somewhere in midst of January 2019.
> >
> > I am wondering, did these patches were moved from Alexander Graf's U-Boot git?
>
> As far as I know, Alex's patches at the time were already integrated in
> 2019.01.
>
> >
> > If yes, from which release UEFI shell support does reside in Coreboot
> > (version number)?
> >
> > Here is the pointer to Alex Graf's Git, I am talking about:
> > https://github.com/agraf/u-boot
>
> As far as I see, Alex's efi-2019.01 was integrated by Tom in 2019.01.
> But I have not tried myself, I fear you have to post U-Boot's ML if you
> need some help.
>
> > _______
> >
> > I have UEFI USB stick with already pre-compiled ready EFI shell 2.40,
> > so I would like to program such an U-Boot (2019.04?!) to my BBB and
> > try to get to the EFI shell with attached UEFI USB stick.
> >
> > Nice exercise, won't you all agree!? ;-)
> >
>
> Best regards,
> Stefano Babic
>
> > Thank you,
> > Zoran Stojsavljevic
> > _______
> >
> > On Fri, Apr 12, 2019 at 12:09 AM Alistair Francis
> > <Alistair.Francis@wdc.com> wrote:
> >>
> >> [YOCTO #13145]
> >>
> >> This was announced at 2019.01:
> >> https://www.mail-archive.com/u-boot@lists.denx.de/msg305424.html
> >>
> >> Basically, am335x_boneblack is just a special subset of am335x_evm config,
> >> created and owned by BeagleBoard.org community. Since it was not migrated to
> >> use CONFIG_BLK in time for 2019.04 release.
> >>
> >> Signed-off-by: Alistair Francis <alistair.francis@wdc.com>
> >> Acked-by: Denys Dmytriyenko <denys@ti.com>
> >> ---
> >>  meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> >> index 70d3cfe..bc18ee8 100644
> >> --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> >> +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> >> @@ -32,7 +32,7 @@ KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
> >>
> >>  SPL_BINARY = "MLO"
> >>  UBOOT_SUFFIX = "img"
> >> -UBOOT_MACHINE = "am335x_boneblack_config"
> >> +UBOOT_MACHINE = "am335x_evm_defconfig"
> >>  UBOOT_ENTRYPOINT = "0x80008000"
> >>  UBOOT_LOADADDRESS = "0x80008000"
> >>
> >> --
> >> 2.21.0
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> =====================================================================
> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
> =====================================================================

