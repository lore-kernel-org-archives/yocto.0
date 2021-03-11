Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web12.4148.1615458519858525456
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Mar 2021 02:28:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZdGTl1d7;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: jonas.vautherin@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id n79so20039768qke.3
        for <yocto@lists.yoctoproject.org>; Thu, 11 Mar 2021 02:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=i8tZFYn9q43nWDaj9PiRm9ZbHeKbCT8qf11OIarO8lM=;
        b=ZdGTl1d7ZJYRFbhRCe3SXmhnZ05+IX1+wXg4yL/o0X6vQue6lWoEzEIyrLVv10aA+P
         bQcPIDSLZle7exgcGtfC89deAOIttGLqQZc9XXxJxrWstT9PE3Qlmkm+JXEqiHeU1tac
         KnVOWLXvxn9hzsDPB8yEpe/SsDsZU+t6fPDvZWKP8svvgryLjhG/1bP0QtBeYAkHPWPM
         2N8LbE0ExI6DjuSmkV/SSrsgjbATalx51Y1fP/CqihKUZG4QJvy5Um7Zxv4qexqHUudr
         h7ThsiW643f2or8IFs0zZQK2jViNC0sutkQbRJcgbMSmo0Yo0Nep8gjhQfpdRtCzJWpO
         lWyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=i8tZFYn9q43nWDaj9PiRm9ZbHeKbCT8qf11OIarO8lM=;
        b=V7lDQi6NaUbnm47/Ow0CUuGZphDhpJ/j+XinOy/xiSeKUHfZVcWmsFfBnnBEtFjcem
         wyxknXtNaFgVfDQM7hqJEF7W784bdL2yqP5a5TTY0n2X7P3cqSm+I5CZeL55WZLz23X3
         L+BQsN6fbwThTyO03mNRLAivDFhvn2bY2WBkzu8SitHCU4QUBjouyyoSjqd+TF+xGzJW
         h3+EUpeaxY8qZ+TRRF43yt/FOlsDwYtvqbNtM+Kw2KDn8zitA2DLcEvebbkcwwvHzhDg
         ONm84I0UyucZNQl56GUAc4QZbwip2GR6bpAwfkwTkQ4HnrtRx0RuftnqjRvd2PuH8woG
         VmRw==
X-Gm-Message-State: AOAM533lgFQSvjxUIJDnaDMXQctu25fjqsgd2iu2LAB2+DU0mWPgGqVz
	2BszFIh+6MO5saMb4ONEE6kynsbbwkfH8kUW90rAwCAplM1Kdg==
X-Google-Smtp-Source: ABdhPJxOMSeVS4dSz/W6p0SddSDGSVui5Nr2CVD855zEcXyyBaxQE2qOnQ57QeSRLPax+4M8NPR0jo9+bvUwQJrh0hg=
X-Received: by 2002:a05:620a:1443:: with SMTP id i3mr6712772qkl.354.1615458518728;
 Thu, 11 Mar 2021 02:28:38 -0800 (PST)
MIME-Version: 1.0
From: "Jonas Vautherin" <jonas.vautherin@gmail.com>
Date: Thu, 11 Mar 2021 11:28:28 +0100
Message-ID: <CAEyb4nHMjTW+UbpQyA0R=gNMJ2k-cmPw4eCwAsP_5qayUX5XpQ@mail.gmail.com>
Subject: Failing to patch u-boot .dts
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000028830605bd403f3a"

--00000000000028830605bd403f3a
Content-Type: text/plain; charset="UTF-8"

Hello!

I am using u-boot on a pocketbeagle which, according to "Default Device
Tree for DT control" in `bitbake -c menuconfig u-boot`, uses am335x-evm,
which I understand is the file
in ./build/tmp/work/pocketbeagle-poky-linux-gnueabi/u-boot/1_2020.07-r0/git/arch/arm/dts/am335x-evm.dts.

My issue is that this file ends up setting usb1 as `dr_mode = "host"` and
usb0 as `dr_mode = "otg"`. I would like to use fastboot on my pocketbeagle,
and therefore set them to `dr_mode = "peripheral"`.

In order to do that, I wrote a .bbappend that does the following:

```
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://am335x-evm.dts.patch"
SRC_URI += "file://logging.cfg"
```

The patch sets both usb0 and usb1 to `dr_mode = "peripheral"`, while the
cfg enables logging in u-boot. Because logging is effectively enabled, I
get that my .bbappend is used. And I can confirm
that ./build/tmp/work/pocketbeagle-poky-linux-gnueabi/u-boot/1_2020.07-r0/git/arch/arm/dts/am335x-evm.dts
is patched indeed.

However, whatever I do, I can't seem to get that modification in my u-boot
device tree at runtime, as usb0 always ends up as "otg" and usb1 as "host".
I have even tried a full clean build where I removed build/tmp and
cache_sstate.

I cannot really tell if my patched file is actually used or not. For
instance, if I `bitbake -c cleansstate u-boot`, then `bitbake -c do_patch
u-boot`, then `rm
-rf ./build/tmp/work/pocketbeagle-poky-linux-gnueabi/u-boot/1_2020.07-r0/git/arch/arm/dts`
and finally `bitbake u-boot`, it does not complain at all about a missing
dts file.

What am I missing, and how could I make sure that my patched am335x-evm.dts
is the device tree being used by my u-boot install?

Best Regards,
Jonas

--00000000000028830605bd403f3a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello!<div><br></div><div>I am using u-boot on a pocketbea=
gle which, according to &quot;Default Device Tree for DT control&quot; in `=
bitbake -c menuconfig u-boot`, uses am335x-evm, which I understand is the f=
ile in=C2=A0./build/tmp/work/pocketbeagle-poky-linux-gnueabi/u-boot/1_2020.=
07-r0/git/arch/arm/dts/am335x-evm.dts.=C2=A0</div><div><br></div><div>My is=
sue is that this file ends up setting usb1 as `dr_mode =3D &quot;host&quot;=
` and usb0 as `dr_mode =3D &quot;otg&quot;`. I would like to use fastboot o=
n my pocketbeagle, and therefore set them to `dr_mode =3D &quot;peripheral&=
quot;`.</div><div><br></div><div>In order to do that, I wrote a .bbappend t=
hat does the following:</div><div><br></div><div>```</div><div>FILESEXTRAPA=
THS_prepend :=3D &quot;${THISDIR}/files:&quot;<br><br>SRC_URI +=3D &quot;fi=
le://am335x-evm.dts.patch&quot;<br>SRC_URI +=3D &quot;file://logging.cfg&qu=
ot;<br></div><div>```<br></div><div><br></div><div>The patch sets both usb0=
 and usb1 to `dr_mode =3D &quot;peripheral&quot;`, while the cfg enables lo=
gging in u-boot. Because logging is effectively enabled, I get that my .bba=
ppend is used. And I can confirm that=C2=A0./build/tmp/work/pocketbeagle-po=
ky-linux-gnueabi/u-boot/1_2020.07-r0/git/arch/arm/dts/am335x-evm.dts is pat=
ched indeed.</div><div><br></div><div>However, whatever I do, I can&#39;t s=
eem to get that modification in my u-boot device tree at runtime, as usb0 a=
lways ends up as &quot;otg&quot; and usb1 as &quot;host&quot;. I have even =
tried a full clean build where I removed build/tmp and cache_sstate.</div><=
div><br></div><div>I cannot really tell if my patched file is actually used=
 or not. For instance, if I `bitbake -c cleansstate u-boot`, then `bitbake =
-c do_patch u-boot`, then `rm -rf=C2=A0./build/tmp/work/pocketbeagle-poky-l=
inux-gnueabi/u-boot/1_2020.07-r0/git/arch/arm/dts` and finally `bitbake u-b=
oot`, it does not complain at all about a missing dts file.</div><div><br><=
/div><div>What am I missing, and how could I make sure that my patched am33=
5x-evm.dts is the device tree being used by my u-boot install?</div><div><b=
r></div><div>Best Regards,</div><div>Jonas</div></div>

--00000000000028830605bd403f3a--
