Return-Path: <hartmut.behrens@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D8FCE013FE
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2012 04:04:20 -0700 (PDT)
Received: by obbtb18 with SMTP id tb18so813849obb.35
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2012 04:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=mz6kJ2QHTdAl0/1sjjZ5+k750pc8jliG9eRtaP8icQ4=;
	b=SnhmJ2H20Uzczboh2LmlxN5EoVoTssGVfFmXuABfj1VTCvlm2UzInMcjRbguNonAM+
	2RB5GATZCG0E26mg29vViGhAnuLd6+kMOBB1VOsjGEIXZEVTCDQpmpl0J7DcGMbHofXm
	2J7dOa40/o32Cy29M9m7jsy1Kb8S4ZQPhVgUkX9o8tMxIBnKJZeDlMDyx+UJcEWxGNXS
	zR4vVJ3p9eabmrrXmJHTWO45BwMaTLoTPHMIkWON/jX5SoQm8DgFftH7236E8oOTjU28
	2/ftW+lzfXF1kUDB5Klp9c92xxo9emk8r714tcf6+jQotGaKk8Co+a/sr7uCnV6qK1YB
	IO2w==
MIME-Version: 1.0
Received: by 10.182.73.65 with SMTP id j1mr864571obv.42.1346238245498; Wed, 29
	Aug 2012 04:04:05 -0700 (PDT)
Received: by 10.182.187.33 with HTTP; Wed, 29 Aug 2012 04:04:05 -0700 (PDT)
Date: Wed, 29 Aug 2012 13:04:05 +0200
Message-ID: <CA+69FtDmQvB_ex4guS12Xrf0oXhQj-7A4tZ7-PWof4YWWCcRyA@mail.gmail.com>
From: Hartmut Behrens <hartmut.behrens@gmail.com>
To: yocto@yoctoproject.org
Subject: Kernel does not emit any boot-up messages
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 29 Aug 2012 11:04:20 -0000
Content-Type: multipart/alternative; boundary=f46d044472e367edcf04c86584ce

--f46d044472e367edcf04c86584ce
Content-Type: text/plain; charset=ISO-8859-1

Hi All,

A newbie question:

After creating a new bsp for an Overo using the yocto-bsp script and
modifying some kernel config's using menuconfig, I successfully created and
loaded the image (core-image-minimal) onto an SD card and booted it.

However, I do not see the kernel emitting any boot messages. Am I
forgetting to include some recipes?




> OMAP36XX/37XX-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
> OMAP3 Beagle board + LPDDR/NAND
> I2C:   ready
> DRAM:  512 MiB
> NAND:  512 MiB
> MMC:   OMAP SD/MMC: 0
> *** Warning - bad CRC, using default environment
>
> In:    serial
> Out:   serial
> Err:   serial
> Beagle Rev Ax/Bx
> No EEPROM on expansion board
> Die ID #36be00029ff80000016071640201b009
> Hit any key to stop autoboot:  0
> SD/MMC found on device 0
> reading uEnv.txt
>
> ** Unable to read "uEnv.txt" from mmc 0:1 **
> reading uImage
>
> 3356520 bytes read
> Booting from mmc ...
> ## Booting kernel from Legacy Image at 82000000 ...
>    Image Name:   Linux-3.2.18-rt16-yocto-preempt-
>    Image Type:   ARM Linux Kernel Image (uncompressed)
>    Data Size:    3356456 Bytes = 3.2 MiB
>    Load Address: 80008000
>    Entry Point:  80008000
>    Verifying Checksum ... OK
>    Loading Kernel Image ... OK
> OK
>
> Starting kernel ...
>
> Uncompressing Linux... done, booting the kernel.
>
> Yocto (Built by Poky 7.0) 1.2+snapshot-20120828
>  ttyO2
>
> overo login: root
> root@overo:~# uname -a
> Linux overo 3.2.18-rt16-yocto-preempt-rt #4 PREEMPT RT Tue Aug 28 22:36:26
> SAST 2012 armv7l GNU/Linux
>
>

--f46d044472e367edcf04c86584ce
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote"><div>Hi All,</div><div><br></div><div>A newbie q=
uestion:</div><div><br></div><div>After creating a new bsp for an Overo usi=
ng the yocto-bsp script and modifying some kernel config&#39;s using menuco=
nfig, I=A0successfully=A0created and loaded the image (core-image-minimal) =
onto an SD card and booted it.</div>
<div><br></div><div>However, I do not see the kernel emitting any boot mess=
ages. Am I forgetting to include some recipes?</div><div><br></div><div><br=
></div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div></div><div>OMAP36XX/37XX-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock =
1 Ghz</div><div>OMAP3 Beagle board + LPDDR/NAND</div><div>I2C: =A0 ready</d=
iv><div>DRAM: =A0512 MiB</div>
<div>NAND: =A0512 MiB</div><div>MMC: =A0 OMAP SD/MMC: 0</div><div>*** Warni=
ng - bad CRC, using default environment</div><div><br></div><div>In: =A0 =
=A0serial</div><div>Out: =A0 serial</div><div>Err: =A0 serial</div><div>Bea=
gle Rev Ax/Bx</div>

<div>No EEPROM on expansion board</div><div>Die ID #36be00029ff800000160716=
40201b009</div><div>Hit any key to stop autoboot: =A00=A0</div><div>SD/MMC =
found on device 0</div><div>reading uEnv.txt</div><div><br></div><div>** Un=
able to read &quot;uEnv.txt&quot; from mmc 0:1 **</div>

<div>reading uImage</div><div><br></div><div>3356520 bytes read</div><div>B=
ooting from mmc ...</div><div>## Booting kernel from Legacy Image at 820000=
00 ...</div><div>=A0 =A0Image Name: =A0 Linux-3.2.18-rt16-yocto-preempt-</d=
iv>

<div>=A0 =A0Image Type: =A0 ARM Linux Kernel Image (uncompressed)</div><div=
>=A0 =A0Data Size: =A0 =A03356456 Bytes =3D 3.2 MiB</div><div>=A0 =A0Load A=
ddress: 80008000</div><div>=A0 =A0Entry Point: =A080008000</div><div>=A0 =
=A0Verifying Checksum ... OK</div>

<div>=A0 =A0Loading Kernel Image ... OK</div><div>OK</div><div><br></div><d=
iv>Starting kernel ...</div><div><br></div><div>Uncompressing Linux... done=
, booting the kernel.</div><div><br></div><div>Yocto (Built by Poky 7.0) 1.=
2+snapshot-20120828=A0</div>

<div>=A0ttyO2</div><div><br></div><div>overo login: root</div><div>root@ove=
ro:~# uname -a</div><div>Linux overo 3.2.18-rt16-yocto-preempt-rt #4 PREEMP=
T RT Tue Aug 28 22:36:26 SAST 2012 armv7l GNU/Linux</div><div><br></div>

</blockquote></div><br>

--f46d044472e367edcf04c86584ce--
