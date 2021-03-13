Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web09.28.1615594716009063859
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 16:18:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AnVnXm/1;
 spf=pass (domain: gmail.com, ip: 209.85.160.177, mailfrom: jonas.vautherin@gmail.com)
Received: by mail-qt1-f177.google.com with SMTP id c6so5237836qtc.1
        for <yocto@lists.yoctoproject.org>; Fri, 12 Mar 2021 16:18:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=6FbM7pObStoXhrLTXGUaGSXyKE8u6qjgtfIS3HWkgik=;
        b=AnVnXm/1QL1mGlet8t4Rcq7sy3f0bNJfHfQnDPSf7Ggi/TFMt8UCqoLATJkC9WmLhg
         Ecxnes4Hc2FyJ/e45srMZ2vv60hP1ezToMiv0WJM/Ibk3Jxawo9vU/QN9Axg88WnS4e1
         f4Xrtj1xZ7CNy/RKjwSuHpw0w8WEbwWvk+k24vOIzOD8qJIH1LEaY74JHHIIqYdtaPuX
         1XD5M42AHgMVzPwriwOZUivzAQD64bIxld3kcPmVaLUiIANCp/JRYBYBO69zczE/K/lM
         sKCxpCcE8IbLNawkFt1e91eulk2yM8mqykehfToKr1rM4Nms4tUZcRcFH4cqLR1BTNNO
         WW1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=6FbM7pObStoXhrLTXGUaGSXyKE8u6qjgtfIS3HWkgik=;
        b=E1BVPRaX/7nzwiusXdFbtFLHpXh1OQrZ1sI6Iejjwy1GhCOgno5FZxs+YinF5jM0bp
         UuK/oF1YwlsCj+STNnKq5XQ/VZl9dOwxhSxhPbF54n+M4irf3fAI1eQjk6Xj50jKCvfA
         AiyfmLxjwwrIW3YhL/cOvJYwqvBVi/H7T5Ymftv66UROzEzI1MEWscsgPIAeRAfZgbHp
         3y8Zeyrw4bm2iYwmQL4QcjX+mLzU7u+fm8zocUUNsxSADnyJXGMoNqNlCI3ZUZo2Unpf
         nRDzgtfV2BUixxMNt/d60thcBgT0l0RbQjQ2rY8sV6RoDLC2XBe03TcpiKARkLPIRk5k
         FwTw==
X-Gm-Message-State: AOAM530YEVEiMtW4QRK1pkrAncQG+G6GW6OfGlDNGvDd5XFOnzUaJyIO
	gAAp1owSOfEyBrAkZ/iQiJY6npaidlD/1bxLeo+bh61/x7ykFw==
X-Google-Smtp-Source: ABdhPJwBS7QVYXdPyb07BE1DtXl7QNLsPKO1vD5rpafNakg4KJyYJSRpu3kOo3Z6npQiT5CcBjvS1pJ4rxcU4QsRb9E=
X-Received: by 2002:ac8:66d6:: with SMTP id m22mr14229543qtp.56.1615594714997;
 Fri, 12 Mar 2021 16:18:34 -0800 (PST)
MIME-Version: 1.0
References: <CAEyb4nHMjTW+UbpQyA0R=gNMJ2k-cmPw4eCwAsP_5qayUX5XpQ@mail.gmail.com>
In-Reply-To: <CAEyb4nHMjTW+UbpQyA0R=gNMJ2k-cmPw4eCwAsP_5qayUX5XpQ@mail.gmail.com>
From: "Jonas Vautherin" <jonas.vautherin@gmail.com>
Date: Sat, 13 Mar 2021 01:18:24 +0100
Message-ID: <CAEyb4nHu9CnJ7jRuNiJkhLS5WiwssvYHZA6ACjDCwx2gJA45VA@mail.gmail.com>
Subject: Re: Failing to patch u-boot .dts
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000016a46d05bd5ff55f"

--00000000000016a46d05bd5ff55f
Content-Type: text/plain; charset="UTF-8"

Finally understood how to do it properly, and hence explaining here for the
record.

In my machine configuration, I have this line (that I overlooked):

```
IMAGE_BOOT_FILES ?= "u-boot.${UBOOT_SUFFIX} MLO zImage
am335x-pocketbeagle.dtb"
```

Which says that it should use the `am335x-pocketbeagle` device tree. I
assume that it infers that it should compile `am335x-pocketbeagle.dts` into
`am335x-pocketbeagle.dtb`. Because `am335x-evm` is listed as the default in
the defconfig, I thought it was the one being used. But I was wrong.

I patched `am335x-pocketbeagle.dts` this time and it just worked.

On Thu, Mar 11, 2021 at 11:28 AM Jonas Vautherin <jonas.vautherin@gmail.com>
wrote:

> Hello!
>
> I am using u-boot on a pocketbeagle which, according to "Default Device
> Tree for DT control" in `bitbake -c menuconfig u-boot`, uses am335x-evm,
> which I understand is the file
> in ./build/tmp/work/pocketbeagle-poky-linux-gnueabi/u-boot/1_2020.07-r0/git/arch/arm/dts/am335x-evm.dts.
>
> My issue is that this file ends up setting usb1 as `dr_mode = "host"` and
> usb0 as `dr_mode = "otg"`. I would like to use fastboot on my pocketbeagle,
> and therefore set them to `dr_mode = "peripheral"`.
>
> In order to do that, I wrote a .bbappend that does the following:
>
> ```
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>
> SRC_URI += "file://am335x-evm.dts.patch"
> SRC_URI += "file://logging.cfg"
> ```
>
> The patch sets both usb0 and usb1 to `dr_mode = "peripheral"`, while the
> cfg enables logging in u-boot. Because logging is effectively enabled, I
> get that my .bbappend is used. And I can confirm
> that ./build/tmp/work/pocketbeagle-poky-linux-gnueabi/u-boot/1_2020.07-r0/git/arch/arm/dts/am335x-evm.dts
> is patched indeed.
>
> However, whatever I do, I can't seem to get that modification in my u-boot
> device tree at runtime, as usb0 always ends up as "otg" and usb1 as "host".
> I have even tried a full clean build where I removed build/tmp and
> cache_sstate.
>
> I cannot really tell if my patched file is actually used or not. For
> instance, if I `bitbake -c cleansstate u-boot`, then `bitbake -c do_patch
> u-boot`, then `rm
> -rf ./build/tmp/work/pocketbeagle-poky-linux-gnueabi/u-boot/1_2020.07-r0/git/arch/arm/dts`
> and finally `bitbake u-boot`, it does not complain at all about a missing
> dts file.
>
> What am I missing, and how could I make sure that my patched
> am335x-evm.dts is the device tree being used by my u-boot install?
>
> Best Regards,
> Jonas
>

--00000000000016a46d05bd5ff55f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Finally understood how to do it properly, and hence explai=
ning here for the record.<div><br></div><div>In my machine configuration, I=
 have this line (that I overlooked):</div><div><br></div><div>```</div><div=
>IMAGE_BOOT_FILES ?=3D &quot;u-boot.${UBOOT_SUFFIX} MLO zImage am335x-pocke=
tbeagle.dtb&quot;<br></div><div>```</div><div><br></div><div>Which says tha=
t it should use the `am335x-pocketbeagle` device tree. I assume that it inf=
ers that it should compile `am335x-pocketbeagle.dts` into `am335x-pocketbea=
gle.dtb`. Because `am335x-evm` is listed as the default in the defconfig, I=
 thought it was the one being used. But I was wrong.</div><div><br></div><d=
iv>I patched `am335x-pocketbeagle.dts` this time and it just worked.</div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Thu, Mar 11, 2021 at 11:28 AM Jonas Vautherin &lt;<a href=3D"mailto:jonas=
.vautherin@gmail.com">jonas.vautherin@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello!<div>=
<br></div><div>I am using u-boot on a pocketbeagle which, according to &quo=
t;Default Device Tree for DT control&quot; in `bitbake -c menuconfig u-boot=
`, uses am335x-evm, which I understand is the file in=C2=A0./build/tmp/work=
/pocketbeagle-poky-linux-gnueabi/u-boot/1_2020.07-r0/git/arch/arm/dts/am335=
x-evm.dts.=C2=A0</div><div><br></div><div>My issue is that this file ends u=
p setting usb1 as `dr_mode =3D &quot;host&quot;` and usb0 as `dr_mode =3D &=
quot;otg&quot;`. I would like to use fastboot on my pocketbeagle, and there=
fore set them to `dr_mode =3D &quot;peripheral&quot;`.</div><div><br></div>=
<div>In order to do that, I wrote a .bbappend that does the following:</div=
><div><br></div><div>```</div><div>FILESEXTRAPATHS_prepend :=3D &quot;${THI=
SDIR}/files:&quot;<br><br>SRC_URI +=3D &quot;file://am335x-evm.dts.patch&qu=
ot;<br>SRC_URI +=3D &quot;file://logging.cfg&quot;<br></div><div>```<br></d=
iv><div><br></div><div>The patch sets both usb0 and usb1 to `dr_mode =3D &q=
uot;peripheral&quot;`, while the cfg enables logging in u-boot. Because log=
ging is effectively enabled, I get that my .bbappend is used. And I can con=
firm that=C2=A0./build/tmp/work/pocketbeagle-poky-linux-gnueabi/u-boot/1_20=
20.07-r0/git/arch/arm/dts/am335x-evm.dts is patched indeed.</div><div><br><=
/div><div>However, whatever I do, I can&#39;t seem to get that modification=
 in my u-boot device tree at runtime, as usb0 always ends up as &quot;otg&q=
uot; and usb1 as &quot;host&quot;. I have even tried a full clean build whe=
re I removed build/tmp and cache_sstate.</div><div><br></div><div>I cannot =
really tell if my patched file is actually used or not. For instance, if I =
`bitbake -c cleansstate u-boot`, then `bitbake -c do_patch u-boot`, then `r=
m -rf=C2=A0./build/tmp/work/pocketbeagle-poky-linux-gnueabi/u-boot/1_2020.0=
7-r0/git/arch/arm/dts` and finally `bitbake u-boot`, it does not complain a=
t all about a missing dts file.</div><div><br></div><div>What am I missing,=
 and how could I make sure that my patched am335x-evm.dts is the device tre=
e being used by my u-boot install?</div><div><br></div><div>Best Regards,</=
div><div>Jonas</div></div>
</blockquote></div>

--00000000000016a46d05bd5ff55f--
