Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48B17E0074B
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2012 07:21:46 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so1527153pbb.35
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2012 07:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=references:in-reply-to:mime-version:content-transfer-encoding
	:content-type:message-id:cc:x-mailer:from:subject:date:to;
	bh=tDasMxqUFoGIqMr3N4ZLp++7va850mXU4NbM+ogimKk=;
	b=hKstEYMfTzJ51CpY6M7nY+6AzvfSWTsX+p6W0ZHrGfOgbKjuJhhEQHtBa9FCtvFuqc
	NDV8BvMzMovx6s6QFttJs399sluYvYIVqjsLoJN8OmCA2va88PKVFqoAlc9FBSXJzsdy
	lToER1a1BxwgYKUg61Goe8YXlRy4qnp8MtrQ8GZM7YFZpB0pXJFHKWXrDyJE/jQgUUg7
	E3xq+aOwcKHbODGKUj2ZX8otbkYmiBRk8VAdXXek5TumEKykp4ermWbUiMFTSLS3FxFi
	nKdHuj9uuxEM2Pt0cSonogd9lc2aswpDxAvIuUcEEWTU3uoSUXj3iYBz5sCkn8VX8YPF
	3u6A==
Received: by 10.66.88.1 with SMTP id bc1mr4075843pab.18.1346250103919;
	Wed, 29 Aug 2012 07:21:43 -0700 (PDT)
Received: from [192.168.1.66] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id b4sm19445161pbw.28.2012.08.29.07.21.41
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 29 Aug 2012 07:21:42 -0700 (PDT)
References: <CA+69FtDmQvB_ex4guS12Xrf0oXhQj-7A4tZ7-PWof4YWWCcRyA@mail.gmail.com>
In-Reply-To: <CA+69FtDmQvB_ex4guS12Xrf0oXhQj-7A4tZ7-PWof4YWWCcRyA@mail.gmail.com>
Mime-Version: 1.0 (1.0)
Message-Id: <355A3A69-B4E5-4DA3-9E0B-C243280D864A@gmail.com>
X-Mailer: iPad Mail (9B206)
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 29 Aug 2012 07:21:41 -0700
To: Hartmut Behrens <hartmut.behrens@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel does not emit any boot-up messages
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
X-List-Received-Date: Wed, 29 Aug 2012 14:21:46 -0000
Content-Transfer-Encoding: 7bit
Content-Type: multipart/alternative;
	boundary=Apple-Mail-B5A9AE3E-9AC1-4BED-B79A-68718EDFF960

--Apple-Mail-B5A9AE3E-9AC1-4BED-B79A-68718EDFF960
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

What does your. Overo  machine.conf looks like ?

-Khem

On Aug 29, 2012, at 4:04 AM, Hartmut Behrens <hartmut.behrens@gmail.com> wro=
te:

> Hi All,
>=20
> A newbie question:
>=20
> After creating a new bsp for an Overo using the yocto-bsp script and modif=
ying some kernel config's using menuconfig, I successfully created and loade=
d the image (core-image-minimal) onto an SD card and booted it.
>=20
> However, I do not see the kernel emitting any boot messages. Am I forgetti=
ng to include some recipes?
>=20
>=20
> =20
> OMAP36XX/37XX-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
> OMAP3 Beagle board + LPDDR/NAND
> I2C:   ready
> DRAM:  512 MiB
> NAND:  512 MiB
> MMC:   OMAP SD/MMC: 0
> *** Warning - bad CRC, using default environment
>=20
> In:    serial
> Out:   serial
> Err:   serial
> Beagle Rev Ax/Bx
> No EEPROM on expansion board
> Die ID #36be00029ff80000016071640201b009
> Hit any key to stop autoboot:  0=20
> SD/MMC found on device 0
> reading uEnv.txt
>=20
> ** Unable to read "uEnv.txt" from mmc 0:1 **
> reading uImage
>=20
> 3356520 bytes read
> Booting from mmc ...
> ## Booting kernel from Legacy Image at 82000000 ...
>    Image Name:   Linux-3.2.18-rt16-yocto-preempt-
>    Image Type:   ARM Linux Kernel Image (uncompressed)
>    Data Size:    3356456 Bytes =3D 3.2 MiB
>    Load Address: 80008000
>    Entry Point:  80008000
>    Verifying Checksum ... OK
>    Loading Kernel Image ... OK
> OK
>=20
> Starting kernel ...
>=20
> Uncompressing Linux... done, booting the kernel.
>=20
> Yocto (Built by Poky 7.0) 1.2+snapshot-20120828=20
>  ttyO2
>=20
> overo login: root
> root@overo:~# uname -a
> Linux overo 3.2.18-rt16-yocto-preempt-rt #4 PREEMPT RT Tue Aug 28 22:36:26=
 SAST 2012 armv7l GNU/Linux
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--Apple-Mail-B5A9AE3E-9AC1-4BED-B79A-68718EDFF960
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=utf-8

<html><head></head><body bgcolor="#FFFFFF"><div>What does your. Overo&nbsp;<span class="Apple-style-span" style="-webkit-tap-highlight-color: rgba(26, 26, 26, 0.296875); -webkit-composition-fill-color: rgba(175, 192, 227, 0.230469); -webkit-composition-frame-color: rgba(77, 128, 180, 0.230469); ">&nbsp;machine.conf looks like ?</span></div><div><br>-Khem</div><div><br>On Aug 29, 2012, at 4:04 AM, Hartmut Behrens &lt;<a href="mailto:hartmut.behrens@gmail.com">hartmut.behrens@gmail.com</a>&gt; wrote:<br><br></div><div></div><blockquote type="cite"><div><div class="gmail_quote"><div>Hi All,</div><div><br></div><div>A newbie question:</div><div><br></div><div>After creating a new bsp for an Overo using the yocto-bsp script and modifying some kernel config's using menuconfig, I&nbsp;successfully&nbsp;created and loaded the image (core-image-minimal) onto an SD card and booted it.</div>
<div><br></div><div>However, I do not see the kernel emitting any boot messages. Am I forgetting to include some recipes?</div><div><br></div><div><br></div><div>&nbsp;</div><blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div></div><div>OMAP36XX/37XX-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz</div><div>OMAP3 Beagle board + LPDDR/NAND</div><div>I2C: &nbsp; ready</div><div>DRAM: &nbsp;512 MiB</div>
<div>NAND: &nbsp;512 MiB</div><div>MMC: &nbsp; OMAP SD/MMC: 0</div><div>*** Warning - bad CRC, using default environment</div><div><br></div><div>In: &nbsp; &nbsp;serial</div><div>Out: &nbsp; serial</div><div>Err: &nbsp; serial</div><div>Beagle Rev Ax/Bx</div>

<div>No EEPROM on expansion board</div><div>Die ID #36be00029ff80000016071640201b009</div><div>Hit any key to stop autoboot: &nbsp;0&nbsp;</div><div>SD/MMC found on device 0</div><div>reading uEnv.txt</div><div><br></div><div>** Unable to read "uEnv.txt" from mmc 0:1 **</div>

<div>reading uImage</div><div><br></div><div>3356520 bytes read</div><div>Booting from mmc ...</div><div>## Booting kernel from Legacy Image at 82000000 ...</div><div>&nbsp; &nbsp;Image Name: &nbsp; Linux-3.2.18-rt16-yocto-preempt-</div>

<div>&nbsp; &nbsp;Image Type: &nbsp; ARM Linux Kernel Image (uncompressed)</div><div>&nbsp; &nbsp;Data Size: &nbsp; &nbsp;3356456 Bytes = 3.2 MiB</div><div>&nbsp; &nbsp;Load Address: 80008000</div><div>&nbsp; &nbsp;Entry Point: &nbsp;80008000</div><div>&nbsp; &nbsp;Verifying Checksum ... OK</div>

<div>&nbsp; &nbsp;Loading Kernel Image ... OK</div><div>OK</div><div><br></div><div>Starting kernel ...</div><div><br></div><div>Uncompressing Linux... done, booting the kernel.</div><div><br></div><div>Yocto (Built by Poky 7.0) 1.2+snapshot-20120828&nbsp;</div>

<div>&nbsp;ttyO2</div><div><br></div><div>overo login: root</div><div>root@overo:~# uname -a</div><div>Linux overo 3.2.18-rt16-yocto-preempt-rt #4 PREEMPT RT Tue Aug 28 22:36:26 SAST 2012 armv7l GNU/Linux</div><div><br></div>

</blockquote></div><br>
</div></blockquote><blockquote type="cite"><div><span>_______________________________________________</span><br><span>yocto mailing list</span><br><span><a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a></span><br><span><a href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a></span><br></div></blockquote></body></html>

--Apple-Mail-B5A9AE3E-9AC1-4BED-B79A-68718EDFF960--
