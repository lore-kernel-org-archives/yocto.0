Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1E74E0049A; Tue, 12 Jul 2016 16:36:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65AF6E0043B
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 16:36:44 -0700 (PDT)
Received: by mail-qk0-f175.google.com with SMTP id p74so29148503qka.0
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 16:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=z0oNxmOvyNRUPmuWY/aFGh+2vFoElIX1wCI6j2r6uKE=;
	b=o36GHasvUlVgKurpjh1sG3A9DzP11znONO0l9Fnil7ECekpsPcaiKih3OMhdcyhKp7
	moOyYvU5pRBoIydNIniS9e66dmvINHn++nQjguI7aasSYvoreKLJnsIkOpwmntejteEg
	t78MrNN0MwpzeiE7X886rGZVKrGJuQDDrAmdOZQHTLptou+BTKzZQjdKhwfXqb/rqbX8
	YOeZr2dMtzED3QCOPlyXPXLeoFaKhApB6Ez/LN9p9sVxfxnWrdfZzqssrKh0LHenfauy
	/lqMnUOZKdbwUuAT+tgyM43x/8uLH5KOtRQ4ZcfcPHPU47NyYGCBQ7bgsoJPw566SfUO
	IUwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=z0oNxmOvyNRUPmuWY/aFGh+2vFoElIX1wCI6j2r6uKE=;
	b=Vs5G9KqP6D1j06FjIz3W1fkTRGlrjLlltqT/C/TgstcGEWK283gOD4ZQ2Hdhk7seXv
	FFo/yXsLPMk+pAR3QplTZMCDxbhUbDmqosSj717LozUJC+9p8RtPP6g5tuK7n63v1K/W
	9kmgR41U0PCs+W4E4KgFunk6KO8I5Y6C5UzMsJqk2OvYSTgJCpdaTyMCvVkHULCS36SI
	txgkK6Onqcg9sLplrFFl9egvFOWbFuRNObLUe4uJI43bDoIn0lGWiCgH6D57iVPsl6j+
	1/6rrlBL1mNAqw/NTXmJLJmZLA9Wz0JSloM9qgaMIHVL8zBldrTAtFu87cYr72YyQYgD
	3GJQ==
X-Gm-Message-State: ALyK8tLhqFRRAyygMMu4/Yyh8pTSlcQuvfw5gC39BW2UxOkKEPt8+qP6n6r0P9+5xh+GwXl1AZpTDoATXBGQyw==
X-Received: by 10.55.187.4 with SMTP id l4mr6814911qkf.152.1468366603390; Tue,
	12 Jul 2016 16:36:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Tue, 12 Jul 2016 16:36:14 -0700 (PDT)
In-Reply-To: <CAEfap_CAJpEnc6xWUbcYUkMx2CRa2HVT+FOBXy+rYb67jv16gw@mail.gmail.com>
References: <CAEfap_CAJpEnc6xWUbcYUkMx2CRa2HVT+FOBXy+rYb67jv16gw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 12 Jul 2016 16:36:14 -0700
Message-ID: <CAMKF1soyZBMzFUo0FLgk3Hb69PfMGiyQ7TNqsDBdVdHz7UNX8w@mail.gmail.com>
To: Simon Bolek <simon.bolek@googlemail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [genericx86-jethro] core-image-sato HDDIMG 'install' - no hard drive selected - /etc/fstab no such file or directory
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
X-List-Received-Date: Tue, 12 Jul 2016 23:36:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 12, 2016 at 3:45 AM, Simon Bolek <simon.bolek@googlemail.com> w=
rote:
> Hello everyone!
>
> I am trying to install genericx86 core-image-sato (jethro) HDDIMG to an
> atom-pc.
> For this 2GB USB stick is used.
> When choosing 'install' option from boot menu I get the message:
>
> "Searching for hard drives...
> No hard drive selected. Installation aborted."
>
> Installatiion stops and i get the console.
> When I try to run fsck, it says: can't read '/etc/fstab': No such file or
> directory
>
> fdisk -l  shows only the partitions of USB stick.
>
> After I choose 'boot' option to boot into live image, SDD drive is under
> /dev/sdb and USB installation stick under /dev/sda,
>
> What recipe/package is my installation missing? The SSD hard drive is not
> recognized for some reason. With previous yocto releases this package lis=
t
> DID work fine.
> So there is something missing in the background.
> Do you have any idea what this might be?

udev should have run and found your hdd. So it seems its not finding
it when running from initramfs. Can you try to add logs to initramfs
and see what udev is doing ?

>
> Below is my package list from local.conf.
>
> thank you and kind regards
> Simon :-)
>
> EXTRA_IMAGE_FEATURES =3D "debug-tweaks ssh-server-openssh"
> IMAGE_INSTALL_append =3D " make \
>      initscripts \
>      grub \
>      initramfs-boot \
>      syslinux \
>      initramfs-live-install \
>      initramfs-live-install-efi \
>      initramfs-live-boot \
>      xinit \
>      xwininfo \
>      openssh-sftp \
>      openssh-sftp-server \
>      qtbase-plugins \
>      qtconnectivity \
>      qtdeclarative \
>      qtdeclarative-plugins \
>      qtdeclarative-tools \
>      qtdeclarative-qmlplugins \
>      qtenginio \
>      qtlocation \
>      qtmultimedia \
>      qtmultimedia-plugins \
>      qtmultimedia-qmlplugins \
>      qtsystems \
> "
>
> Viele Gr=C3=BCsse
> Simon Bolek :-)
>
> mit freundlichem Gruss / kind regards / pozdrawiam
> Simon P. Bolek
> ------------------------------------------------------
> Dipl. Inf. Simon P. Bolek
> SAP Integration Architect
> Business Mobile and IVI Solutions
> mailto: simon.bolek@arcom-ivi.de
> http://www.arcom-ivi.de/
> XING: https://www.xing.com/profile/SimonP_Bolek
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

