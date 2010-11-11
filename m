Return-Path: <sachindhiman123@gmail.com>
Received: from mail-gw0-f48.google.com (mail-gw0-f48.google.com [74.125.83.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2F4584C80815
	for <yocto@yoctoproject.org>; Thu, 11 Nov 2010 10:18:35 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gwj15 with SMTP id 15so1444662gwj.35
	for <yocto@yoctoproject.org>; Thu, 11 Nov 2010 08:18:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:sender:received
	:in-reply-to:references:date:x-google-sender-auth:message-id:subject
	:from:to:cc:content-type;
	bh=eHHrPOmJ5uOABCzpDzcxqS56/eRqwx68aC0gfiF17VI=;
	b=qwGtzE0eyDPcnqhLG/W7bc0h/c14yJPPtCGPprhN3aBqVYE3c+LuoGbF8BwWTrqTwY
	R9qfmBG7w5vJ+xuJ4UVoaWasTX0CrDp88BSdsxJwwg7Jrd7o6Fp9WJXj4594ROCvJND9
	mUhUcJ4NpvIHR9QjPhS4/ICIFmsLrD0Poc/Zs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	b=HtRqT0uncURNk0ePNWNhkXkznzlPdC5zJdVbZ6gYFM3Wk3L//Tw+x/pqlJI2WXvngn
	maJeFD4DH4znsFozKmXgvL/OXFFkBZ0NzCxTQjKaFJrb2hxndMXLdl7HXHYNPe7lztM0
	RI1Bk9gjXbIQbSo9tD+X9oTvBh5t6nCXt0Wzw=
MIME-Version: 1.0
Received: by 10.100.232.1 with SMTP id e1mr681383anh.13.1289492314394; Thu, 11
	Nov 2010 08:18:34 -0800 (PST)
Sender: sachindhiman123@gmail.com
Received: by 10.100.225.17 with HTTP; Thu, 11 Nov 2010 08:18:34 -0800 (PST)
In-Reply-To: <B08D4353009C0E4FB5FE1A4D0041EBC4B20453@orsmsx001.amr.corp.intel.com>
References: <AANLkTi=77Owty-Qf1J8-GeNv17ZBjE98YNYGxuH4-_ek@mail.gmail.com>
	<B08D4353009C0E4FB5FE1A4D0041EBC4B20453@orsmsx001.amr.corp.intel.com>
Date: Thu, 11 Nov 2010 21:48:34 +0530
X-Google-Sender-Auth: G60cnCqhASF3-RUB0bx4GhPeCPY
Message-ID: <AANLkTik1hgwSfbLxndtJq93KW0Q312V4i8hCXEn6PTDo@mail.gmail.com>
From: sachin kumar <sachinsomeone@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem in running poky-qemu
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
X-List-Received-Date: Thu, 11 Nov 2010 16:18:35 -0000
Content-Type: multipart/alternative; boundary=0016368e1f63570ea90494c95330

--0016368e1f63570ea90494c95330
Content-Type: text/plain; charset=ISO-8859-1

Hello Jessica:

Thanks for your swift response, as per your suggestions i have downloaded
yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2 file from yocto website.
I have installed the same.
you can see now content of my /opt/poky folder as following

[sachin@sachinlinux yocto_tools]$ ls /opt/poky/
environment-setup-i586-poky-linux     site-config-i586-poky-linux
sysroots                 version-ppc603e-poky-linux
environment-setup-ppc603e-poky-linux  site-config-ppc603e-poky-linux
version-i586-poky-linux
[sachin@sachinlinux yocto_tools]$

But despite that i am getting same message

[sachin@sachinlinux yocto_tools]$ poky-qemu zImage-2.6.34-qemuppc-0.9.bin
yocto-image-minimal-qemuppc-0.9.rootfs.ext3
Set MACHINE to [qemuppc-0] based on kernel [zImage-2.6.34-qemuppc-0.9.bin]
In order for this script to dynamically infer paths
to kernels or filesystem images, you either need
bitbake in your PATH or to source poky-init-build-env
before running this script
[sachin@sachinlinux yocto_tools]$


I do not which script this is referring.
Please help me.

Kind regards

Sachin




On Thu, Nov 11, 2010 at 7:59 AM, Zhang, Jessica <jessica.zhang@intel.com>wrote:

>  Hi Sachin,
>
> First of all, if you want to run ppc, the toolchain you need to download is
> yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2.  After you install it
> under /opt/poky, you should go under /opt/poky and source the
> environment-setup-ppc* and try start qemu again...
>
> Let us know if you still run into issues.
>
> Thanks,
> Jessica
>
>  ------------------------------
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *sachin kumar
> *Sent:* Wednesday, November 10, 2010 6:09 PM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] Problem in running poky-qemu
>
> Dear All:
>
> I am new to qemu, so please excuse me, i am asking basic question.
>
> Actually i want to run linux image for ppc on qemu.
>
> My host machine is running Fedora13.
>
> For that i have downloaded following from yocto project website.
>
> Disk Image: yocto-image-minimal-qemuppc-0.9.rootfs.ext3
> Kernel Image : zImage-2.6.34-qemuppc-0.9.bin
> Toolchain: yocto-eglibc-i586-i586-toolchain-sdk-0.9.tar.bz2
>
> Now toolchain was installed properly.
>
> Now when i am running poky-qemu from command line it is giving following
> message
>
> =============================================================================================
> [root@sachinlinux yocto_tools]# poky-qemu zImage-2.6.34-qemuppc-0.9.bin
> yocto-image-minimal-qemuppc-0.9.rootfs.ext3
> Set MACHINE to [qemuppc-0] based on kernel [zImage-2.6.34-qemuppc-0.9.bin]
> In order for this script to dynamically infer paths
> to kernels or filesystem images, you either need
> bitbake in your PATH or to source poky-init-build-env
> before running this script
>
>
> =============================================================================================
> I am blank about this message, which script they are referring.
> Please help me for the same.
> This will be a great help for me as i am at critical phase of one of my
> project.
>
> Kind Regards
> Sachin
>
>
>
>
>

--0016368e1f63570ea90494c95330
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello Jessica:<br><br>Thanks for your swift response, as per your suggestio=
ns i have downloaded yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2 fi=
le from yocto website.<br>I have installed the same.<br>you can see now con=
tent of my /opt/poky folder as following<br>
<br>[sachin@sachinlinux yocto_tools]$ ls /opt/poky/<br>environment-setup-i5=
86-poky-linux=A0=A0=A0=A0 site-config-i586-poky-linux=A0=A0=A0=A0 sysroots=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 version-ppc603e-poky-linux=
<br>environment-setup-ppc603e-poky-linux=A0 site-config-ppc603e-poky-linux=
=A0 version-i586-poky-linux<br>
[sachin@sachinlinux yocto_tools]$ <br><br>But despite that i am getting sam=
e message<br><br>[sachin@sachinlinux yocto_tools]$ poky-qemu zImage-2.6.34-=
qemuppc-0.9.bin yocto-image-minimal-qemuppc-0.9.rootfs.ext3<br>Set MACHINE =
to [qemuppc-0] based on kernel [zImage-2.6.34-qemuppc-0.9.bin]<br>
In order for this script to dynamically infer paths<br>to kernels or filesy=
stem images, you either need<br>bitbake in your PATH or to source poky-init=
-build-env<br>before running this script<br>[sachin@sachinlinux yocto_tools=
]$ <br>
<br><br>I do not which script this is referring.<br>Please help me.<br><br>=
Kind regards<br><br>Sachin <br><br><br><br><br><div class=3D"gmail_quote">O=
n Thu, Nov 11, 2010 at 7:59 AM, Zhang, Jessica <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:jessica.zhang@intel.com">jessica.zhang@intel.com</a>&gt;</span>=
 wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">



<div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" face=3D"Arial=
" size=3D"2">Hi Sachin,</font></span></div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" face=3D"Arial=
" size=3D"2"></font></span>=A0</div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" face=3D"Arial=
" size=3D"2">First of all, if you want to run ppc, the toolchain you need=
=20
to download is yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2.=A0 Afte=
r=20
you install it under /opt/poky, you should go under /opt/poky and source th=
e=20
environment-setup-ppc* and try start qemu again...</font></span></div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" face=3D"Arial=
" size=3D"2"></font></span>=A0</div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" face=3D"Arial=
" size=3D"2">Let us know if you still run into issues.</font></span></div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" face=3D"Arial=
" size=3D"2"></font></span>=A0</div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" face=3D"Arial=
" size=3D"2">Thanks,</font></span></div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" face=3D"Arial=
" size=3D"2">Jessica</font></span></div><br>
<div dir=3D"ltr" lang=3D"en-us" align=3D"left">
<hr>
<font face=3D"Tahoma" size=3D"2"><b>From:</b> <a href=3D"mailto:yocto-bounc=
es@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>=
=20
[mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank"=
>yocto-bounces@yoctoproject.org</a>] <b>On Behalf Of </b>sachin=20
kumar<br><b>Sent:</b> Wednesday, November 10, 2010 6:09 PM<br><b>To:</b>=20
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br><b>Subject:</b> [yocto] Problem in running=20
poky-qemu<br></font><br></div><div><div></div><div class=3D"h5">
<div></div>Dear All:<br><br>I am new to qemu, so please excuse me, i am ask=
ing=20
basic question.<br><br>Actually i want to run linux image for ppc on qemu.=
=20
<br><br>My host machine is running Fedora13.<br><br>For that i have downloa=
ded=20
following from yocto project website.<br><br>Disk Image:=20
yocto-image-minimal-qemuppc-0.9.rootfs.ext3<br>Kernel Image :=20
zImage-2.6.34-qemuppc-0.9.bin<br>Toolchain:=20
yocto-eglibc-i586-i586-toolchain-sdk-0.9.tar.bz2<br><br>Now toolchain was=
=20
installed properly.<br><br>Now when i am running poky-qemu from command lin=
e it=20
is giving following=20
message<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>[root=
@sachinlinux=20
yocto_tools]# poky-qemu zImage-2.6.34-qemuppc-0.9.bin=20
yocto-image-minimal-qemuppc-0.9.rootfs.ext3 <br>Set MACHINE to [qemuppc-0] =
based=20
on kernel [zImage-2.6.34-qemuppc-0.9.bin]<br>In order for this script to=20
dynamically infer paths<br>to kernels or filesystem images, you either=20
need<br>bitbake in your PATH or to source poky-init-build-env<br>before run=
ning=20
this=20
script<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>I=
=20
am blank about this message, which script they are referring.<br>Please hel=
p me=20
for the same. <br>This will be a great help for me as i am at critical phas=
e of=20
one of my project.<br><br>Kind Regards<br>Sachin=20
<br><br><br><br><br></div></div></div>
</blockquote></div><br>

--0016368e1f63570ea90494c95330--
