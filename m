Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0A3EE00A4C; Thu, 19 Jan 2017 22:34:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.68 listed in list.dnswl.org]
Received: from mail-vk0-f68.google.com (mail-vk0-f68.google.com
	[209.85.213.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2FD4E00A31
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 22:34:24 -0800 (PST)
Received: by mail-vk0-f68.google.com with SMTP id t8so5448917vke.0
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 22:34:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=i+mYWhM2+9mHPt+laF9WGeaxQyhdWXDD1OT+xgyVEYM=;
	b=pBz2QDVRDiI2KlSUN2kDRxt8+LBYRySvwCvprafS8W8a7MoECHLN3fnSKANBn1yRwP
	5H3vzrrDS8DAVvyhK/1fif9yc7omLy0wR0ILAIkSrKSeeMOgXGjq7wryn7IQVOSVyb2T
	4J83h1f1KGgbt8D7exhzYhqzkHGF3ZFqWoWO3UV9iGF34839a+azur32WOEDAgYPFlh3
	/3Veb7NvLgaX15F9VX5k9V2Wij2U4wbECkHLDKEulyUDk/5n5ogjPOxFLRPm4oHwMJuM
	6/K4RDEFGd1r4E/xdOCORyTXdvByp7ZxHwVlRDVfFCop+2eirDhB/E2u7EHEJayiJ9ns
	7Qrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=i+mYWhM2+9mHPt+laF9WGeaxQyhdWXDD1OT+xgyVEYM=;
	b=VpRv4lAQa7m9TWlNIxovSuHMV6sY/oFwioeYpjRUKxnz4oBki3G9SkOel2+NU7YIhF
	5OWevl63q4Suq1frWSolG4vN3PWXYOTE3QDZ0IaV9vV7vkUUR3MkBBKpZowC0HD7hs0h
	7jDfSoy3kOxefUn8qLxjZrRKYsOWlwBrvhTwDCCR6Szq/lWlv9oGI2HANq98YB2+fS6E
	o1bengiKthSzEE5DLZCLQZBDCGfUoVCt+O/TxKQ1m2jYgmV6zF/DT7B0Xds1RKwph3X0
	1pXiu1InqE/qgcC7tHzsREPfQA71vsQguAFChlJ9Hcnd2W7x+rRBhPZi4o9LozgYKC0H
	sIbA==
X-Gm-Message-State: AIkVDXJdK/H+4rj12XcqhumewhpXWLBUUo5I20cROC7iX6gz21goGfJxsBAQLwGyHuhppJEndxOOHS+hp9CZCQ==
X-Received: by 10.31.234.199 with SMTP id i190mr6351826vkh.31.1484894063420;
	Thu, 19 Jan 2017 22:34:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Thu, 19 Jan 2017 22:33:53 -0800 (PST)
In-Reply-To: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
References: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 19 Jan 2017 22:33:53 -0800
Message-ID: <CAMKF1srfx_rTnJO3GQ=4yGR8ydm-R9WXfXN3Q9u=WkGi6XMk=g@mail.gmail.com>
To: colin.helliwell@ln-systems.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Changing over to systemd (no dhcp)
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
X-List-Received-Date: Fri, 20 Jan 2017 06:34:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 18, 2017 at 7:10 AM,  <colin.helliwell@ln-systems.com> wrote:
> We have a configuration for our embedded system which is working via SysV=
,
> but we=E2=80=99re investigating moving over to systemd.
>
> Not sure if this is =E2=80=98wise=E2=80=99 =E2=80=93 if anyone has techno=
logical arguments
> for/against then I=E2=80=99d be interested =E2=80=93 but I wanted to inve=
stigate it anyway.
>
>
>
> I=E2=80=99ve modified local.conf (right or wrong) with
>
>   DISTRO_FEATURES_append =3D " systemd"
>
>   VIRTUAL-RUNTIME_init_manager =3D "systemd"
>
>   DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
>
>   VIRTUAL-RUNTIME_initscripts =3D ""
>
>   KERNEL_ENABLE_CGROUPS =3D "1"
>
>
>
> I also found a readme
> (https://cgit.freedesktop.org/systemd/systemd/tree/README#n37) about the
> kernel requirements for systemd, and it does at least now boot.
>
> However although eth0 is coming up (=E2=80=98ifconfig eth0=E2=80=99), the=
re doesn=E2=80=99t seem to
> be any dhcp happening =E2=80=93 no IP etc.
>
> Previously (under SysV) I had the busybox dhcp client; now it seems that =
is
> missing. There=E2=80=99s a symlink /etc/systemd/system/busybox-udhcpc.ser=
vice to
> /dev/null
>
> I=E2=80=99m using
>
>   Poky Jethro
>
>   Kernel 4.4.0
>
>   Busybox 1.23.2 (with =E2=80=98CONFIG_FEATURE_SYSTEMD=3Dy=E2=80=99)
>
>
>
> I wondered if this is just a simple switch I=E2=80=99m missing somewhere,=
 or is
> there a whole load more modifications I need to dig into and hand-craft?
> (Was hoping for something =E2=80=98out of the box=E2=80=99=E2=80=A6.)

you need to enable right packageconfigs for systemd e.g. see
https://github.com/kraj/meta-himvis/tree/master/recipes-core/systemd

>
>
>
> Thanks
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

