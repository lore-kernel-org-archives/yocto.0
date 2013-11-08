Return-Path: <billmartin544@gmail.com>
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF752E01828
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2013 19:34:24 -0800 (PST)
Received: by mail-ie0-f181.google.com with SMTP id ar20so2335552iec.40
	for <yocto@yoctoproject.org>; Thu, 07 Nov 2013 19:34:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=WJUBQrfB7OVN1Xj0dg+ETyKOkN3CxHi03088VUcXlrg=;
	b=gKiGYEn5qbPGcT/p/jmhfUV3PhKnpQlFTC5qZeL/uigIwH5MjIZhGMyPV8z/c+nGAE
	HKSBsgjiBaEDVjnp6U0tAyf38J+WUqEsUKk9t8muk4Xk0Il22Qvvh0uxj6/iXzX1s+Ay
	nPzFXRVn8ovuf+fNzJMWt7MCe3brI8ibsF8UXAK0lSPtaZfF0oGXgv86ohORPa7juRJr
	I4cWOMZAFdCiTv7+LFo2bcLmI8FWLWee6EioD3cBbc/CRmbe9pWTKlwN8VkX+PLcUXVH
	fqW32GAg2hdpOqE2Sk8PU2TmsKXwAjuo76xoQtcVkzFQ21TXPZfVN3oX3+EWkk3M/HMs
	2lWg==
MIME-Version: 1.0
X-Received: by 10.50.87.36 with SMTP id u4mr615402igz.40.1383881663582; Thu,
	07 Nov 2013 19:34:23 -0800 (PST)
Received: by 10.64.228.199 with HTTP; Thu, 7 Nov 2013 19:34:23 -0800 (PST)
Date: Thu, 7 Nov 2013 19:34:23 -0800
Message-ID: <CAJGS5=F0VpnqdRX3YwQ+JScws5EGO6ASQT-L9k4D+8c77EFUCw@mail.gmail.com>
From: Bill Martin <billmartin544@gmail.com>
To: yocto@yoctoproject.org
Subject: how do you use core-image-minimal-initramfs in grub?
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
X-List-Received-Date: Fri, 08 Nov 2013 03:34:25 -0000
Content-Type: multipart/alternative; boundary=089e0111d0d8f861bd04eaa20e2e

--089e0111d0d8f861bd04eaa20e2e
Content-Type: text/plain; charset=ISO-8859-1

I need to have an initramfs to run special commands prior to the rootfs
being installed. My application must decrypt the rootfs. So I cannot use
tpm-luks to open the rootfs LUKS device.

I found the core-image-minimal-initramfs's rootfs shows my
IMAGE_INSTALL_append packages I specified in local.conf are in the
installed list for the initramfs. So my tpm-luks scripts and my trousers
binaries should be available if I call them from init.

First things first. I have grub 0.97 (I have to because I need to use
TrustedGRUB, which is only based on the old grub). My grub command lines are

root (hd0,0)
kernel /boot/bzImage root=/dev/sda1
initrd /boot/core-image-minimal-initramfs<target>.cpio.gz
boot

Well without the initrd this boots up nicely. But with initrd n grub the
boot stops with the message "EXT3-fs: mounted filesystem with ordered data."

Without the initrd I see that same message, followed by one that says the
rootfs is installed (or mounted, I forget).

I am wondering if my grub initrd command is right, but if somehow the init
file that initrd it trying to use does not know where to put rootfs? I did
not touch the init file in the recipe for it.

Anyone out there see this problem? I'm pretty new to Linux still.

regards

Bill

--089e0111d0d8f861bd04eaa20e2e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div><div>I need t=
o have an initramfs to run special commands prior to the rootfs being insta=
lled. My application must decrypt the rootfs. So I cannot use tpm-luks to o=
pen the rootfs LUKS device. <br>
<br></div>I found the core-image-minimal-initramfs&#39;s rootfs shows my IM=
AGE_INSTALL_append packages I specified in local.conf are in the installed =
list for the initramfs. So my tpm-luks scripts and my trousers binaries sho=
uld be available if I call them from init.<br>
<br>First things first. I have grub 0.97 (I have to because I need to use T=
rustedGRUB, which is only based on the old grub). My grub command lines are=
<br></div><br></div>root (hd0,0)<br></div>kernel /boot/bzImage root=3D/dev/=
sda1<br>
</div>initrd /boot/core-image-minimal-initramfs&lt;target&gt;.cpio.gz<br></=
div><div>boot<br></div><div><br></div>Well without the initrd this boots up=
 nicely. But with initrd n grub the boot stops with the message &quot;EXT3-=
fs: mounted filesystem with ordered data.&quot;<br>
<br></div>Without the initrd I see that same message, followed by one that =
says the rootfs is installed (or mounted, I forget).<br><br></div>I am wond=
ering if my grub initrd command is right, but if somehow the init file that=
 initrd it trying to use does not know where to put rootfs? I did not touch=
 the init file in the recipe for it.<br>
<br></div>Anyone out there see this problem? I&#39;m pretty new to Linux st=
ill.<br><br></div>regards<br><br>Bill<br></div>

--089e0111d0d8f861bd04eaa20e2e--
