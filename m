Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95E63E00AB9; Tue, 30 Oct 2018 14:14:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
	[209.85.167.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14A8BE00718
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 14:14:21 -0700 (PDT)
Received: by mail-oi1-f178.google.com with SMTP id f21-v6so8634989oig.1
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 14:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=XMSJa9WkJCwnPv5CxGO8QT2xLycvmMkCZGNsYJuGdaU=;
	b=cPqoNTXS/1g64NTS/BC5DZg0UWia2XitKi2Sxa5Eq0PzMADipW0i50Jt0SlDXPNEDo
	BttyFvJGwniY6QVpou9vKKsgYdPzcCE5vVnxI2Q6Sb1r/C9HfUOBqUASAXlwjGJ9L8SC
	OUII3gSavjIQP7RJuCwnA1ACF5HaMPu4P+s6XPX27ISxh33gBn7r8GSE87F47OQ/Vk0L
	BH8unH/xgkqeg/O9ySugXx5P3hcp0uL3CLJ/Op3plqbP+oVpID6gn58EeXfiqWFMD+mo
	yY2r46ibemAB9EZuD+dYSsuRdFS4Tq8kPL2nl5frgsdjhC2h8zMJuAzhjxFHE9sh6sUO
	olNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=XMSJa9WkJCwnPv5CxGO8QT2xLycvmMkCZGNsYJuGdaU=;
	b=XfSCBfW/6BpZ63I+mjpuLYeztCXQL+lkVqHjDcH6gIySLW7s/GM27mxrS0o7frqRjS
	iTjT6C5sIi8CVAARMcCRgHXMFV6RhcqZgpBLG//d5HHKFJzMmI3eRHn2cGWKhT5nLbSQ
	9Wyp5TrbApzTB2Qww2IIy74uO9VjsFZzaTEvFMZo2PlcYDl47JiIwXRsmHT8nsSiuRoa
	5r2JzG5vG3U46g+Xkj17X4hEAV4NcS73wEqf5CBUoVH9aGuqXsiFB7aur9Q3MwuMmPSg
	ThI2vT+dbUsPIAsxhAel7+zji9X09zgL43SpiEjDmDArozAmzi0WQ7S2iotDmGuSFWSJ
	mLAw==
X-Gm-Message-State: AGRZ1gLzvxJRvv4IETndYtp7yurpb3jCnmLyCWz7KBajIadW1Nc5o2rm
	8UvZeAK5RBpam7QhIUoPCBTjTQS8XsS+q8Y+TH7+4ciu
X-Google-Smtp-Source: AJdET5dsO3jePcSgikUfQFlImjciVChl9WJMqxXtmZ3mhePnTDZpJTzVraZTrXESkYRjYrD5e06doM53+DTuhSiaw4Y=
X-Received: by 2002:aca:2d16:: with SMTP id
	t22-v6mr230013oit.148.1540934061134; 
	Tue, 30 Oct 2018 14:14:21 -0700 (PDT)
MIME-Version: 1.0
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Tue, 30 Oct 2018 22:14:10 +0100
Message-ID: <CACKFPN2iTOUwTyPoJqFfBzw+5SErkeXeUpVNX0NToB=HRdMw0w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: qemu and grub
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
X-List-Received-Date: Tue, 30 Oct 2018 21:14:22 -0000
Content-Type: multipart/alternative; boundary="00000000000056170c057978ab75"

--00000000000056170c057978ab75
Content-Type: text/plain; charset="UTF-8"

Hi all.

Usually I have a small x86_64 board that I test images. But for the first
time I've tried to use yocto to do some development on grub. I've used
qemu to do grub development before and I know that this works fine. I
just use grub-mkrescue to create images with my grub script and then
boot.

Now I've tried to do the same with yocto after setting these to local.conf

MACHINE ??= "qemux86"
IMAGE_FSTYPES += " wic wic.vmdk"
WKS_FILE ?= "directdisk-multi-rootfs.wks"
IMAGE_INSTALL_append = " grub-efi"

In my wks file I've set:
part /boot --source bootimg-efi --sourceparams="loader=grub-efi" --ondisk
sda --label boot --active --align 1024
part / --source rootfs --ondisk sda --fstype=ext4 --label platform --align
1024
part /rescue --source rootfs --ondisk sda --fstype=ext4 --label secondary
--align 1024

bootloader --ptable gpt --timeout=10 --append="rootwait rootfstype=ext4
video=vesafb vga=0x318 console=tty0 console=ttyS0,115200n8"

So, the problem is that the resulting images are using syslinux instead of
grub and also the runqemu doesn't work with the produced images and
complains the some of the parameters of the architecture is wrong.

Any ideas?

Regards,
Dimitris

--00000000000056170c057978ab75
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr">Hi all.<div><br></div><div>Usually I have a small x86_64 board th=
at I test images. But for the first</div><div>time I&#39;ve tried to use yo=
cto to do some development on grub. I&#39;ve used</div><div>qemu to do grub=
 development before and I know that this works fine. I<br>just use=C2=A0gru=
b-mkrescue to create images with my grub script and then</div><div>boot.</d=
iv><div><br></div><div>Now I&#39;ve tried to do the same with yocto after s=
etting these to local.conf</div><div><br></div><div><div>MACHINE ??=3D &quo=
t;qemux86&quot;</div><div>IMAGE_FSTYPES +=3D &quot; wic wic.vmdk&quot;</div=
><div>WKS_FILE ?=3D &quot;directdisk-multi-rootfs.wks&quot;</div><div>IMAGE=
_INSTALL_append =3D &quot; grub-efi&quot;</div></div><div><br></div><div>In=
 my wks file I&#39;ve set:</div><div><div>part /boot --source bootimg-efi -=
-sourceparams=3D&quot;loader=3Dgrub-efi&quot; --ondisk sda --label boot --a=
ctive --align 1024</div><div>part / --source rootfs --ondisk sda --fstype=
=3Dext4 --label platform --align 1024</div><div>part /rescue --source rootf=
s --ondisk sda --fstype=3Dext4 --label secondary --align 1024</div><div><br=
></div><div>bootloader --ptable gpt --timeout=3D10 --append=3D&quot;rootwai=
t rootfstype=3Dext4 video=3Dvesafb vga=3D0x318 console=3Dtty0 console=3Dtty=
S0,115200n8&quot;</div></div><div><br></div><div>So, the problem is that th=
e resulting images are using syslinux instead of<br>grub and also the runqe=
mu doesn&#39;t work with the produced images and<br>complains the some of t=
he parameters of the architecture is wrong.</div><div><br></div><div>Any id=
eas?</div><div><br></div><div>Regards,</div><div>Dimitris</div></div></div>=
</div></div></div>

--00000000000056170c057978ab75--
