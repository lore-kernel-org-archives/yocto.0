Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A29F8E00BB6; Mon, 19 Jun 2017 21:51:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54027E00B05
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 21:51:37 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id d17so20595514wme.3
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 21:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=/nuuC+z809v/AU9LaCZabo6IxJfepUcCZijP3lCL3no=;
	b=hUprlZamnnO2zVGiRpmhhEWEKui2wCisuXeOa9BjgjHsdTg458yM8zmABJx2jZeOju
	xY4g1vq95W9BzChYwT0Db/kNG9qulWuow9RzSAZtIU8J4RSorD5C8d5kv5sq0+gr5HST
	lMNk4lH0L+rXDsRffCmh/b0MbnabrqfKti4+aoKpsqLg8l8OdpWgutiL7JQVwx71lChR
	CZ/nVBN/iOd/h5wnK6AokTg/jcRO6uMv85wMFF9sdLECV8fl6FwFmuZwYNdnvwf2b/mM
	6XjeCxiEMZqXM/5DRyEwiBrS8Kdq0KE63D1Lqs/znadtWNaq7Z3p7PyQRQVptMi6IvQ/
	sHOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=/nuuC+z809v/AU9LaCZabo6IxJfepUcCZijP3lCL3no=;
	b=MhqXsKZrETodnCaM18Yl0hquTzU4atDsgibxdUMz/xNJvYRzkIGQVpJ1VpKj0TMkQD
	boZCvgOkAbPGif+xl/ZuSi0ArqYRsAUYQyZvOI2748G11/qU02Q6DVnlAv3yeXaUTA7m
	ftEx9WumoRY63o6vof+rhA7KtCdPkHugaUR75OPJ7h4EWm7o3IkCgaRqUU6nEW3GRh19
	D/kbB4SvcbRQ8DGjL6nApY+XHrlnCAAOwtGavNwjkCVFO5i7hHLVVzPfL3i8bLlzY8kQ
	w21y8boDJa84d2gzPdyUGZX6461uKbQhimK555Y5k3AhkDgd0HH9pEN27bb5AnTmoXyb
	dPwA==
X-Gm-Message-State: AKS2vOyeyNiOEfZuUB6moAenm9hrGZC99HNWfGvhVgYKU7I6RXgvZPr6
	8CM+0BgFr28QtA59PO6gQ7tmgvyf9g==
X-Received: by 10.80.137.36 with SMTP id e33mr19792671ede.67.1497934296698;
	Mon, 19 Jun 2017 21:51:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.153.222 with HTTP; Mon, 19 Jun 2017 21:51:06 -0700 (PDT)
In-Reply-To: <10259d92-4277-21d6-e0e0-ca4949eb419e@gmail.com>
References: <ed57e154-cbd7-176a-02fb-496c6f730d2a@gmail.com>
	<CAMKF1sp9ESKxDiarsNTu89BXLpk8nBNZXefwYs-6dYHpVnBMFg@mail.gmail.com>
	<1bfe90cd-590a-47e6-95d1-3ad77ec3a46b@gmail.com>
	<CAAfyv348RhuesS-suUGnVgquxVX0Gv2625Qd1Lw5NJH6FMXMQQ@mail.gmail.com>
	<c0c0b79d-12c0-27b3-1ef9-f3798c95e02e@gmail.com>
	<CA+chaQcwEW7=Wmrk0LYN0ubfvwxTNZQnCDh=wwWRWmSaXgWJdg@mail.gmail.com>
	<08efb082-02a8-7ff9-c5be-e6b4b09edea2@gmail.com>
	<CAMKF1spe4TmYe5uE4ddcObCnMbk1usXhNg+=fZ1XrERduP0MAA@mail.gmail.com>
	<10259d92-4277-21d6-e0e0-ca4949eb419e@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 19 Jun 2017 21:51:06 -0700
Message-ID: <CAMKF1spo=pDw1XDhwwbPoQTMjkY-fXmvSgvLrNh5Tum5tn_-wA@mail.gmail.com>
To: Riko Ho <antonius.riko@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RTL8192EU rev B (SMIC) ==> rtl8192eu_nic.bin ?
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
X-List-Received-Date: Tue, 20 Jun 2017 04:51:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 19, 2017 at 8:46 PM, Riko Ho <antonius.riko@gmail.com> wrote:
> I got all the files needed, but now I get no response from the dongle whe=
n I
> plug it,

you might want to check logs and see if there are udev events generated
on insertion.

>
> Here's the files on the board :
> root@beaglebone:/lib/firmware/rtlwifi# ls
> rtl8188efw.bin           rtl8192eu_ap_wowlan.bin  rtl8723bs_bt.bin
> rtl8188eufw.bin          rtl8192eu_nic.bin        rtl8723bs_nic.bin
> rtl8192cfw.bin           rtl8192eu_wowlan.bin     rtl8723bs_wowlan.bin
> rtl8192cfwU.bin          rtl8192sefw.bin          rtl8723bu_ap_wowlan.bin
> rtl8192cfwU_B.bin        rtl8712u.bin             rtl8723bu_nic.bin
> rtl8192cufw.bin          rtl8723aufw_A.bin        rtl8723bu_wowlan.bin
> rtl8192cufw_A.bin        rtl8723aufw_B.bin        rtl8723fw.bin
> rtl8192cufw_B.bin        rtl8723aufw_B_NoBT.bin   rtl8723fw_B.bin
> rtl8192cufw_TMSC.bin     rtl8723befw.bin          rtl8821aefw.bin
> rtl8192defw.bin          rtl8723befw_36.bin       rtl8821aefw_29.bin
> rtl8192eefw.bin          rtl8723bs_ap_wowlan.bin  rtl8821aefw_wowlan.bin
>
>
> On 20/06/17 03:57, Khem Raj wrote:
>
> On Sun, Jun 18, 2017 at 8:00 PM, Riko Ho <antonius.riko@gmail.com> wrote:
>
> Hello Everyone,
>
> How can I obtain : rtl8192eu_nic.bin?
>
> I got this message :
>
> RTL8192EU rev B (SMIC) 2T2R, TX queues 3, WiFi=3D1, BT=3D0, GPS=3D0, HI P=
A=3D0
> usb 1-1: RTL8192EU MAC: 00:0b:81:a2:a5:60
> usb 1-1: rtl8xxxu: Loading firmware rtlwifi/rtl8192eu_nic.bin
> usb 1-1: Direct firmware load for rtlwifi/rtl8192eu_nic.bin failed with
> error -2
> usb 1-1: request_firmware(rtlwifi/rtl8192eu_nic.bin) failed
>
> you probably need to add the nonfree firmware bits something like this
>
> https://github.com/resin-os/meta-resin/blob/master/meta-resin-common/reci=
pes-kernel/linux-firmware/linux-firmware_git.bbappend
>
> and
>
> https://github.com/resin-os/meta-resin/blob/master/meta-resin-common/reci=
pes-kernel/rtl8192cu/rtl8192cu_4.0.2_9000.bb
>
> might help
>
> Thanks,
>
> On 18/06/17 15:49, Martin Jansa wrote:
>
> You didn't say which versions you're using.
>
> If you're using latest oe-core with gcc7 then you will need v3 version of
> this change:
> http://lists.openembedded.org/pipermail/openembedded-devel/2017-June/1132=
47.html
> I'll send it later today.
>
> And how can I clean after building it ? It took about 70Gb of my drive
>
> Like any other recipe:
> bitbake -c clean foo
>
> On Sun, Jun 18, 2017 at 1:41 AM, Riko Ho <antonius.riko@gmail.com> wrote:
>
> Hello Everyone,
>
> I tried to compile chromium but never succeeded, took me already 12 hours
> and stopped on 99%,
> I used bitbake for doing it,
>
> Is chromium not compatible with arm CPU ? it was working with X86_64
> before.
> And how can I clean after building it ? It took about 70Gb of my drive
>
> Thanks
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> --
>
> /*******/
> Sent by Ubuntu LTS 16.04,
> =E8=B0=A2=E8=B0=A2,
> Regards,
> Riko Ho
> /*******/
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> --
>
> /*******/
> Sent by Ubuntu LTS 16.04,
> =E8=B0=A2=E8=B0=A2,
> Regards,
> Riko Ho
> /*******/

