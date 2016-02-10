Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F555E0090C; Wed, 10 Feb 2016 10:35:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE232E008B4
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 10:35:33 -0800 (PST)
Received: from poczta.nazwa.pl (unknown [10.252.0.17])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 72DFA1AB3C4;
	Wed, 10 Feb 2016 19:35:31 +0100 (CET)
Date: Wed, 10 Feb 2016 19:35:31 +0100 (CET)
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: Oliver Graute <oliver.graute@gmail.com>, yocto@yoctoproject.org
Message-ID: <406998638.322917.1455129331256.JavaMail.open-xchange@ox7.netart.com.pl>
In-Reply-To: <20160210161659.GC27824@graute-opti>
References: <20160210161659.GC27824@graute-opti>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.6.2-Rev33
X-Originating-Client: com.openexchange.ox.gui.dhtml
Subject: Re: dtb filename mismatch prevents booting
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 10 Feb 2016 18:35:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


> Dnia 10 luty 2016 o 17:16 Oliver Graute <oliver.graute@gmail.com> napisa=
=C5=82(a):
>
>
> Hello list,
>
> if I try to boot from my yocto generated SD-card image my u-boot can't
> start the kernel because the imx6ul-14x14-evk.dtb is missing.
>
>
> reading boot.scr
> ** Unable to read file boot.scr **
> reading zImage
> 5072288 bytes read in 328 ms (14.7 MiB/s)
> Booting from mmc ...
> reading imx6ul-14x14-evk.dtb
> ** Unable to read file imx6ul-14x14-evk.dtb **
> Kernel image @ 0x82000000 [ 0x000000 - 0x4d65a0 ]
>
> Starting kernel ...
>
>
> In my /boot folder I saw a dtb file, but the filename is a bit different.
>
> zImage-imx6ul-14x14-evk.dtb instead of imx6ul-14x14-evk.dtb
>
> So I changed these filename manually and my Image is booting.
>
> mv zImage-imx6ul-14x14-evk.dtb imx6ul-14x14-evk.dtb
> =C2=BBzImage-imx6ul-14x14-evk.dtb=E2=80=9C -> =C2=BBimx6ul-14x14-evk.dtb=
=E2=80=9C
>
> What is the right way to define these dtb filename?
>
> I saw the IMAGE_BOOT_FILES in local.conf
>
> #IMAGE_BOOT_FILES =3D "zImage zImage-imx6ul-14x14-evk.dtb"
> IMAGE_BOOT_FILES =3D "zImage imx6ul-14x14-evk.dtb"
>
> but after I changed it my build fails.
>
> ERROR: Error: The image creation script
> '/home/graute/5411_IBIS/yocto/build-imx6ulevk/tmp/work/imx6ulevk-poky-lin=
ux-gnueabi/fsl-image/1.0-r0/temp/create_image.wic'
> returned 1:
> Error: exec_cmd: install -m 0644 -D
> /home/graute/5411_IBIS/yocto/build-imx6ulevk/tmp/deploy/images/imx6ulevk/=
imx6ul-14x14-evk.dtb
> /home/graute/5411_IBIS/yocto/build-imx6ulevk/tmp/deploy/images/imx6ulevk/=
fsl-image-imx6ulevk-20160208144228/build/boot/imx6ul-14x14-evk.dtb
> returned '1' instead of 0
> Checking basic build environment...
> Done.
>
> Creating image(s)...
>
> WARNING:
> /home/graute/5411_IBIS/yocto/build-imx6ulevk/tmp/work/imx6ulevk-poky-linu=
x-gnueabi/fsl-image/1.0-r0/temp/create_image.wic:1
> exit 1 from
> BUILDDIR=3D/home/graute/5411_IBIS/yocto/build-imx6ulevk wic create $wks -=
-vars
> /home/graute/5411_IBIS/yocto/build-imx6ulevk/tmp/sysroots/imx6ulevk/imgda=
ta/
> -e fsl-image -o $out/
>
> ERROR: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
> /home/graute/5411_IBIS/yocto/build-imx6ulevk/tmp/work/imx6ulevk-poky-linu=
x-gnueabi/fsl-image/1.0-r0/temp/log.do_rootfs.17681
> ERROR: Task 7
> (/home/graute/5411_IBIS/yocto/os-meta-dnt/meta-fsl/recipes-fsl/images/fsl=
-image.bb,
> do_rootfs) failed with exit code '1'
>
> some ideas whats going wrong here?
>

IIRC the usual way was to add kernel-devicetree package and let u-boot
pick the proper dtb during boot.

As for IMAGE_BOOT_FILES, you can tell wic to automatically rename files
by passing the desired name after a semicolon like this:

  IMAGE_BOOT_FILES =3D "zImage zImage-imx6ul-14x14-evk.dtb;mx6ul-14x14-evk.=
dtb"

--
Maciej Borz=C4=99cki
Senior Software Engineer at Open-RnD Sp. z o.o.
www.open-rnd.pl, Facebook, Twitter

