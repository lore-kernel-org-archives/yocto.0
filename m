Return-Path: <bremenpl@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49482C47077
	for <webhook@archiver.kernel.org>; Sun, 14 Jan 2024 16:19:19 +0000 (UTC)
Subject: extlinux.conf file and fdtoverlay_addr_r  #kirkstone
To: yocto@lists.yoctoproject.org
From: "Lukasz Przenioslo" <bremenpl@gmail.com>
X-Originating-Location: Poznan, Greater Poland, PL (83.20.76.70)
X-Originating-Platform: Windows Firefox 121
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 14 Jan 2024 08:19:17 -0800
Message-ID: <kE5w.1705249157157023068.XJQy@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LMTObyT8Ov7ODVP0zRvu"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 14 Jan 2024 16:19:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62141

--LMTObyT8Ov7ODVP0zRvu
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

Hello,
I am trying to load a custom device tree overlay file in the `extlinux/extl=
inux.conf` file (Kirkstone branch and beaglebone yocto machine). At boot ti=
me uboot complains:

```
Invalid fdtoverlay_addr_r for loading overlays
```

Full uboot output till that point:
```
U-Boot 2022.01 (Jan 10 2022 - 18:46:34 +0000)

CPU  : AM335X-GP rev 2.1
Model: TI AM335x BeagleBone Black
DRAM:  512 MiB
WDT:   Started wdt@44e35000 with servicing (60s timeout)
NAND:  0 MiB
MMC:   OMAP SD/MMC: 0, OMAP SD/MMC: 1
Loading Environment from FAT... Unable to read "uboot.env" from mmc0:1... <=
ethaddr> not set. Validating first E-fuse MAC
Net:   eth2: ethernet@4a100000, eth3: usb_ether
Hit any key to stop autoboot:  0=20
switch to partitions #0, OK
mmc0 is current device
Scanning mmc 0:1...
Found /extlinux/extlinux.conf
Retrieving file: /extlinux/extlinux.conf
1:      Yocto
Retrieving file: /zImage
append: root=3DPARTUUID=3D18e99beb-02 rootwait console=3DttyS0,115200
Retrieving file: /am335x-bonegreen.dtb
Invalid fdtoverlay_addr_r for loading overlays
Kernel image @ 0x82000000 [ 0x000000 - 0x77b738 ]
## Flattened Device Tree blob at 88000000
   Booting using the fdt blob at 0x88000000
   Loading Device Tree to 8ffed000, end 8ffff9dc ... OK
```

Where, how and to what values can I set this variable, so it is possible to=
 load the `dtbo` file? I have found some references here: https://docs.u-bo=
ot.org/en/latest/develop/bootstd.html , but still cannot figure out how to =
configure this in the yocto build.

I would appreciate all help.=20

--LMTObyT8Ov7ODVP0zRvu
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello,
I am trying to load a custom device tree overlay file in the <code>extlinux=
/extlinux.conf</code> file (Kirkstone branch and beaglebone yocto machine).=
 At boot time uboot complains:</p>
<pre class=3D"prettyprint"><code class=3D"language-unknown">Invalid fdtover=
lay_addr_r for loading overlays
</code></pre>
<p>Full uboot output till that point:</p>
<pre class=3D"prettyprint"><code class=3D"language-unknown">U-Boot 2022.01 =
(Jan 10 2022 - 18:46:34 +0000)

CPU  : AM335X-GP rev 2.1
Model: TI AM335x BeagleBone Black
DRAM:  512 MiB
WDT:   Started wdt@44e35000 with servicing (60s timeout)
NAND:  0 MiB
MMC:   OMAP SD/MMC: 0, OMAP SD/MMC: 1
Loading Environment from FAT... Unable to read &#34;uboot.env&#34; from mmc=
0:1... &lt;ethaddr&gt; not set. Validating first E-fuse MAC
Net:   eth2: ethernet@4a100000, eth3: usb_ether
Hit any key to stop autoboot:  0=20
switch to partitions #0, OK
mmc0 is current device
Scanning mmc 0:1...
Found /extlinux/extlinux.conf
Retrieving file: /extlinux/extlinux.conf
1:      Yocto
Retrieving file: /zImage
append: root=3DPARTUUID=3D18e99beb-02 rootwait console=3DttyS0,115200
Retrieving file: /am335x-bonegreen.dtb
Invalid fdtoverlay_addr_r for loading overlays
Kernel image @ 0x82000000 [ 0x000000 - 0x77b738 ]
## Flattened Device Tree blob at 88000000
   Booting using the fdt blob at 0x88000000
   Loading Device Tree to 8ffed000, end 8ffff9dc ... OK
</code></pre>
<p>Where, how and to what values can I set this variable, so it is possible=
 to load the <code>dtbo</code> file? I have found some references here: <a =
href=3D"https://docs.u-boot.org/en/latest/develop/bootstd.html" target=3D"_=
blank">https://docs.u-boot.org/en/latest/develop/bootstd.html</a> , but sti=
ll cannot figure out how to configure this in the yocto build.</p>

<p>I would appreciate all help.</p>

--LMTObyT8Ov7ODVP0zRvu--

