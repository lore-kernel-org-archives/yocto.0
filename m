Return-Path: <hchanuy@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4A26D60CE5
	for <webhook@archiver.kernel.org>; Mon, 18 Nov 2024 21:19:45 +0000 (UTC)
Subject: Re: [yocto] Sanity check on a flashing process design
To: "Yoann Congal" <yoann.congal@smile.fr>, yocto@lists.yoctoproject.org
From: "Uy Ha" <hchanuy@gmail.com>
X-Originating-Location: Helsinki, Uusimaa, FI (87.92.135.50)
X-Originating-Platform: Linux Firefox 132
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 18 Nov 2024 13:19:38 -0800
References: <CAMSfU+6Jp4=WmLE1UZVUsEk6FaApuOAqEsqkjZQ9TCj=_CNsLQ@mail.gmail.com>
In-Reply-To: <CAMSfU+6Jp4=WmLE1UZVUsEk6FaApuOAqEsqkjZQ9TCj=_CNsLQ@mail.gmail.com>
Message-ID: <6663.1731964778664692649@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="SOaRhTvtEBoXsE3cuQFq"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Nov 2024 21:19:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64294

--SOaRhTvtEBoXsE3cuQFq
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> Or you can boot your system not using eMMC (external USB, network
> TFTP/NFS, ...) and then use bmaptool on your target to flash the eMMC.
>=20

I am trying this approach now. I created a bootable USB (well, theoreticall=
y bootable, I haven't actually managed to boot from it) using `bmaptool`. H=
owever, I am not sure how to boot from it from the U-Boot console. I tried =
loading the `fitImage` in the /boot and run `bootm` to boot (I am just tryi=
ng random things at this point, I am not really sure what I am doing) but t=
he kernel panics.

The steps I have done:
* Run: `usb start`
* Load the `fitImage` into memory: `load usb 0:1 $loadaddr /boot/fitImage`
* Boot: `bootm`
Then the kernel panics with the following error message

>=20
> /dev/root: Can't open blockdev
> VFS: Cannot open root device "(null)" or unknown-block(0,0): error -6
> Please append a correct "root=3D" boot option; here are the available
> partitions:
> 0100 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram0
> (driver?)
> 0101 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram1
> (driver?)
> 0102 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram2
> (driver?)
> 0103 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram3
> (driver?)
> 0104 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram4
> (driver?)
> 0105 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram5
> (driver?)
> 0106 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram6
> (driver?)
> 0107 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram7
> (driver?)
> 0108 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram8
> (driver?)
> 0109 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram9
> (driver?)
> 010a =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram10
> (driver?)
> 010b =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram11
> (driver?)
> 010c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram12
> (driver?)
> 010d =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram13
> (driver?)
> 010e =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram14
> (driver?)
> 010f =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram15
> (driver?)
> b300 =C2=A0 =C2=A0 =C2=A0 =C2=A0 7634944 mmcblk2
> driver: mmcblk
> b301 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0134010 mmcblk2p1 076c4a2a-01
> b302 =C2=A0 =C2=A0 =C2=A0 =C2=A0 7496704 mmcblk2p2 076c4a2a-02
> b308 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04096 mmcblk2boot0
> (driver?)
> b310 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04096 mmcblk2boot1
> (driver?)
> Kernel panic - not syncing: VFS: Unable to mount root fs on
> unknown-block(0,0)
>=20

What am I missing here?

--SOaRhTvtEBoXsE3cuQFq
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote>
<div>Or you can boot your system not using eMMC (external USB, network TFTP=
/NFS, ...) and then use bmaptool on your target to flash the eMMC.</div>
</blockquote>
<div>I am trying this approach now. I created a bootable USB (well, theoret=
ically bootable, I haven't actually managed to boot from it) using `bmaptoo=
l`. However, I am not sure how to boot from it from the U-Boot console. I t=
ried loading the `fitImage` in the /boot and run `bootm` to boot (I am just=
 trying random things at this point, I am not really sure what I am doing) =
but the kernel panics.</div>
<div>&nbsp;</div>
<div>The steps I have done:</div>
<ol>
<li>Run: `usb start`</li>
<li>Load the `fitImage` into memory: `load usb 0:1 $loadaddr /boot/fitImage=
`</li>
<li>Boot: `bootm`</li>
</ol>
<div>Then the kernel panics with the following error message</div>
<blockquote>
<div>
<div>/dev/root: Can't open blockdev<br />VFS: Cannot open root device "(nul=
l)" or unknown-block(0,0): error -6<br />Please append a correct "root=3D" =
boot option; here are the available partitions:<br />0100 &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; 65536 ram0<br />&nbsp;(driver?)<br />0101 &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; 65536 ram1<br />&nbsp;(driver?)<br />0102 &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; 65536 ram2<br />&nbsp;(driver?)<br />0103 &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; 65536 ram3<br />&nbsp;(driver?)<br />0104 &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; 65536 ram4<br />&nbsp;(driver?)<br />0105 &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 65536 ram5<br />&nbsp;(driver?)<br />0106 &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; 65536 ram6<br />&nbsp;(driver?)<br />0107 &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; 65536 ram7<br />&nbsp;(driver?)<br />0108 &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 65536 ram8<br />&nbsp;(driver?)<br />0109=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 65536 ram9<br />&nbsp;(driver?)<br />01=
0a &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 65536 ram10<br />&nbsp;(driver?)<br /=
>010b &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 65536 ram11<br />&nbsp;(driver?)<b=
r />010c &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 65536 ram12<br />&nbsp;(driver?=
)<br />010d &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 65536 ram13<br />&nbsp;(driv=
er?)<br />010e &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 65536 ram14<br />&nbsp;(d=
river?)<br />010f &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 65536 ram15<br />&nbsp=
;(driver?)<br />b300 &nbsp; &nbsp; &nbsp; &nbsp; 7634944 mmcblk2<br />&nbsp=
;driver: mmcblk<br />&nbsp; b301 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;134010 m=
mcblk2p1 076c4a2a-01</div>
<div>&nbsp; b302 &nbsp; &nbsp; &nbsp; &nbsp; 7496704 mmcblk2p2 076c4a2a-02<=
/div>
<div>b308 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4096 mmcblk2boot0<br />&=
nbsp;(driver?)<br />b310 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4096 mmcb=
lk2boot1<br />&nbsp;(driver?)<br />Kernel panic - not syncing: VFS: Unable =
to mount root fs on unknown-block(0,0)</div>
</div>
</blockquote>
<div>What am I missing here?</div>

--SOaRhTvtEBoXsE3cuQFq--

