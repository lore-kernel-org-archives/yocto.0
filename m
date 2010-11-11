Return-Path: <sachindhiman123@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 15D6C4C80BCF
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 20:08:39 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gyf2 with SMTP id 2so1005818gyf.35
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 18:08:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:sender:received:date
	:x-google-sender-auth:message-id:subject:from:to:content-type;
	bh=BwfLtOHdQvwnjQQJ9nC5DRsGnHbOjUGJvwdahYfpuHA=;
	b=knjjJw5tavte4d/MsliFItjX9uI9JZ+nTlK0DD8ifezyO9B4xiz5URanA1qjM8ErSx
	6Liyre5S4KQ/Am9tuDh4FWleDvkJPU94CZsMN6VGmwynPSBkDa5k0xu3qRUCjm0NiXhG
	NhprBVPYyY8nKEjoJhKk62+YRmgurz9jVzqpY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	b=c8+i77MprcbwoYeCVitob4ir+M4U644DF/3gF4O3P8qM5JBhqGYyQUJao5OUzJenb6
	WGLJ3g3T8FAJ/ClS2PmtbfGOVm5XtEKXgBTVZFZAEt0q4U8vEEw2OogCzsxkmfv//zzP
	xIrC9cCohv1W5XTC1BtMxoF8wliLjDvIN1AHA=
MIME-Version: 1.0
Received: by 10.100.126.11 with SMTP id y11mr71714anc.115.1289441318606; Wed,
	10 Nov 2010 18:08:38 -0800 (PST)
Sender: sachindhiman123@gmail.com
Received: by 10.100.225.17 with HTTP; Wed, 10 Nov 2010 18:08:38 -0800 (PST)
Date: Thu, 11 Nov 2010 07:38:38 +0530
X-Google-Sender-Auth: Gc7Lk_FG956_c8zMPdcxl-Ezy7U
Message-ID: <AANLkTi=77Owty-Qf1J8-GeNv17ZBjE98YNYGxuH4-_ek@mail.gmail.com>
From: sachin kumar <sachinsomeone@gmail.com>
To: yocto@yoctoproject.org
Subject: Problem in running poky-qemu
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
X-List-Received-Date: Thu, 11 Nov 2010 02:08:39 -0000
Content-Type: multipart/alternative; boundary=0016e645a3c0c11e770494bd73bd

--0016e645a3c0c11e770494bd73bd
Content-Type: text/plain; charset=ISO-8859-1

Dear All:

I am new to qemu, so please excuse me, i am asking basic question.

Actually i want to run linux image for ppc on qemu.

My host machine is running Fedora13.

For that i have downloaded following from yocto project website.

Disk Image: yocto-image-minimal-qemuppc-0.9.rootfs.ext3
Kernel Image : zImage-2.6.34-qemuppc-0.9.bin
Toolchain: yocto-eglibc-i586-i586-toolchain-sdk-0.9.tar.bz2

Now toolchain was installed properly.

Now when i am running poky-qemu from command line it is giving following
message
=============================================================================================
[root@sachinlinux yocto_tools]# poky-qemu zImage-2.6.34-qemuppc-0.9.bin
yocto-image-minimal-qemuppc-0.9.rootfs.ext3
Set MACHINE to [qemuppc-0] based on kernel [zImage-2.6.34-qemuppc-0.9.bin]
In order for this script to dynamically infer paths
to kernels or filesystem images, you either need
bitbake in your PATH or to source poky-init-build-env
before running this script

=============================================================================================
I am blank about this message, which script they are referring.
Please help me for the same.
This will be a great help for me as i am at critical phase of one of my
project.

Kind Regards
Sachin

--0016e645a3c0c11e770494bd73bd
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Dear All:<br><br>I am new to qemu, so please excuse me, i am asking basic q=
uestion.<br><br>Actually i want to run linux image for ppc on qemu. <br><br=
>My host machine is running Fedora13.<br><br>For that i have downloaded fol=
lowing from yocto project website.<br>
<br>Disk Image: yocto-image-minimal-qemuppc-0.9.rootfs.ext3<br>Kernel Image=
 : zImage-2.6.34-qemuppc-0.9.bin<br>Toolchain: yocto-eglibc-i586-i586-toolc=
hain-sdk-0.9.tar.bz2<br><br>Now toolchain was installed properly.<br><br>
Now when i am running poky-qemu from command line it is giving following me=
ssage<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>[root@sa=
chinlinux yocto_tools]# poky-qemu zImage-2.6.34-qemuppc-0.9.bin yocto-image=
-minimal-qemuppc-0.9.rootfs.ext3 <br>
Set MACHINE to [qemuppc-0] based on kernel [zImage-2.6.34-qemuppc-0.9.bin]<=
br>In order for this script to dynamically infer paths<br>to kernels or fil=
esystem images, you either need<br>bitbake in your PATH or to source poky-i=
nit-build-env<br>
before running this script<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br>I am blank about this message, which script they are ref=
erring.<br>Please help me for the same. <br>
This will be a great help for me as i am at critical phase of one of my pro=
ject.<br><br>Kind Regards<br>Sachin <br><br><br><br><br>

--0016e645a3c0c11e770494bd73bd--
