Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B91B2E01404
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 17:36:46 -0700 (PDT)
Received: by iagt4 with SMTP id t4so349896iag.35
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 17:36:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=PT25XvUPn1Q0gZrJ3g9JYbT8BOvDXYjfDquP7XPI9io=;
	b=Pi1JSMX3YpHqhhuiQrSLa7sbUsmt8oJaeuGkDIiUxFetXe+MJTs2dS6si7UQ9pthXc
	CnMjOj8OB0eXBSs+dkt6f+816Rs/TaIUV94q+tvbmQPr6Gr2XhDJuVKiXNtBijOTfWR3
	RWw0MAnacYB8R7GfNWB3Ftwy51q4EYB/y69vDiSeMOoGPQaT4V7YhcdykKU20vv0sC76
	33x4h8NbxXK59KPX1m65qz1sQ01hXxurtnnDheWeX4iVrVIDHwZmILX7TvMfbwVm0aKr
	fd17qDNVCKahq8HWx0A1pgqSprwQkmsHaD7hIWrzmiH68Ua8Z/y0uBznfCS1mHsgIYWB
	N3EQ==
MIME-Version: 1.0
Received: by 10.50.184.227 with SMTP id ex3mr4040362igc.26.1345682206124; Wed,
	22 Aug 2012 17:36:46 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.64.142.134 with HTTP; Wed, 22 Aug 2012 17:36:46 -0700 (PDT)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46AE4A2C@ORSMSX101.amr.corp.intel.com>
References: <CA+gsK-pFJV-Lab1E8chP0KOcEs9hg=Oxe_5CNZaobKj0P5Xmaw@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C46AE4A2C@ORSMSX101.amr.corp.intel.com>
Date: Wed, 22 Aug 2012 17:36:46 -0700
X-Google-Sender-Auth: W2SI4QSpvLiPP_L1hboK2Lr_2dA
Message-ID: <CA+gsK-qXNiWQg0ztFFtjuSLz=qp9iL4A3Gex37+MZN5iFV-Eow@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
X-Gm-Message-State: ALoCoQnCrrT4oAV7Haf4OkfGMlxIwbn989+XsLL9EPfBHfWyzA2T2oQ9NFGeAOnDiAxcUH3l2Eta
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Garman,
	Scott A" <scott.a.garman@intel.com>
Subject: Re: [ADT] Sysroot setup issue
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
X-List-Received-Date: Thu, 23 Aug 2012 00:36:46 -0000
Content-Type: multipart/alternative; boundary=14dae9340d81e0697f04c7e40d54

--14dae9340d81e0697f04c7e40d54
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Jessica,

Thanks while responding while on vacation.

No worries. I have resolved the NFS boot issue. I entirely missed that my
dev system had a firewall running blocking ports 3048 and 3049 used by the
user-space rpc.mountd and rpc.nfsd daemons that runquemu-export-rootfs sets
up. My fault. Sorry about that.

The kernel images may be an incorrect expectation from my side. I checked
the ADT installer scripts and they do not seem to do anything with the
kernel images they download. From my point of view it would make sense to
copy them into <sysroot>/boot.

The adt_installer.conf file suggests that minimal, minimal-dev, sato,
sato-dev, sato-sdk,lsb, lsb-dev, lsb-sdk are valid images
for YOCTOADT_ROOTFS_<arch>, but really only the *-dev and *-sdk images make
sense for an ADT as the others are missing the dev headers and libs.

While the ADT installer downloads all the image files specified in
YOCTOADT_ROOTFS_<arch> it really only extracts the one specified
by YOCTOADT_TARGET_SYSROOT_IMAGE_<arch> into the location specified
by YOCTOADT_TARGET_SYSROOT_LOC_<arch>. If you keep the installer files
around you can of course later install them with runqemu-extract-sdk but
that's not necessarily intuitive.

I eventually extracted all the sysroot images into separate directories and
created a link to the one I wanted to use with the name specified
by YOCTOADT_TARGET_SYSROOT_LOC_<arch>. That works well.

I don't know what the overall direction of development for the ADT
installer is but I could make some patches to address these items if that
makes sense to the community.

:rjs



On Wed, Aug 22, 2012 at 5:16 PM, Zhang, Jessica <jessica.zhang@intel.com>wr=
ote:

>  Hi Rudi,****
>
> ** **
>
> I=92m currently on vacation so have very limited access to my YP setup.
>  We=92ve been using the sysroot and nfs like below to start qemu after
> adt-installation, can you give it a try to see whether there=92s problem =
or
> not?****
>
> ** **
>
> Runqemu youradtinstallerdir/download_image/bzImage-qemux86.bin
> ${HOME}/test-yocto/x86****
>
> ** **
>
> ** **
>
> Scott,****
>
> ** **
>
> Can you help answer or look into the boot dir missing kernel file issue
> that Rudi=92s reporting to see whether it=92s a bug on our end?****
>
> ** **
>
> Thanks,****
>
> Jessica****
>
> ** **
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Rudolf Streif
> *Sent:* Tuesday, August 21, 2012 1:17 PM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] [ADT] Sysroot setup issue****
>
> ** **
>
> Hi, ****
>
> ** **
>
> I am trying to setup the ADT using an ADT installer. I have downloaded th=
e
> installer from
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.2.1/adt_installe=
r/ as
> well as created my own installer using a build environment with Denzil
> 7.0.1.****
>
> ** **
>
> The adt_installer.conf contains these settings:****
>
> ** **
>
> YOCTOADT_REPO=3D"http://adtrepo.yoctoproject.org/1.2.1"****
>
> YOCTOADT_TARGETS=3D"arm x86"****
>
> YOCTOADT_QEMU=3D"Y"****
>
> YOCTOADT_NFS_UTIL=3D"Y"****
>
> ** **
>
> YOCTOADT_ROOTFS_arm=3D"minimal"****
>
> YOCTOADT_TARGET_SYSROOT_IMAGE_arm=3D"minimal"****
>
> YOCTOADT_TARGET_SYSROOT_LOC_arm=3D"$HOME/test-yocto/arm"****
>
> ** **
>
> YOCTOADT_ROOTFS_x86=3D"minimal"****
>
> YOCTOADT_TARGET_SYSROOT_IMAGE_x86=3D"minimal"****
>
> YOCTOADT_TARGET_SYSROOT_LOC_x86=3D"$HOME/test-yocto/x86"****
>
> ** **
>
> The installer downloads kernel and root fs images. After the installation
> has finished****
>
> ** **
>
> ${HOME}/test-yocto/arm/boot does not contain any kernel images and****
>
> ** **
>
> ${HOME}/test-yocto/x86/boot only contains a empty link bzImage ->
> bzImage-3.2.18-yocto-standard****
>
> ** **
>
> I manually copied the x86 kernel image bzImage-qemux86.bin from the
> download_image directory of the extracted installer tarball into the
> directory, initialized the ADT environment and then ran****
>
> ** **
>
>
> runqemu ${HOME}/test-yocto/x86/boot/bzImage-qemux86.bin ${HOME}/test-yoct=
o/x86
> ****
>
> ** **
>
> The NFS user-space server initializes on the tap0 interface and the kerne=
l
> boots. However, it panics because it cannot locate the root fs. rpcbind i=
s
> started with the -i option on my system.****
>
> ** **
>
> I also ran QEMU directly using:****
>
> ** **
>
> /opt/poky/1.2.1/sysroots/x86_64-pokysdk-linux/usr/bin/qemu -kernel
> /home/rudi/test-yocto/x86/boot/bzImage-qemux86.bin -show-cursor -usb
> -usbdevice wacom-tablet -vga vmware -enable-gl -no-reboot -m 128 --append
> "root=3D/dev/nfs nfsroot=3D192.168.100.199://home/rudi/test-yocto/x86 rw
> ip=3D192.168.100.38::192.168.100.199:255.255.255.0 mem=3D128M
> oprofile.timer=3D1 "****
>
> ** **
>
> with my dev system's NFS server running and exporting the file system (I
> verified that I can mount the exported file system via NFS).****
>
> ** **
>
> Questions:****
>
>    1. Why do the sysroot boot directory not contain any kernel images? I
>    don't think that is what it is supposed to be.****
>    2. Is there anything broken with the sysroot causing the boot process
>    to fail when the kernel tries to access the root fs?****
>    3. Any hints on how to fix it?****
>
>  Thanks,****
>
> Rudi****
>
> ** **
>

--14dae9340d81e0697f04c7e40d54
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Jessica,<div><br></div><div>Thanks while responding while on vacation.</=
div><div><br></div><div>No worries. I have resolved the NFS boot issue. I e=
ntirely missed that my dev system had a firewall running blocking ports 304=
8 and 3049 used by the user-space rpc.mountd and rpc.nfsd daemons that runq=
uemu-export-rootfs sets up. My fault. Sorry about that.</div>
<div><br></div><div>The kernel images may be an incorrect expectation from =
my side. I checked the ADT installer scripts and they do not seem to do any=
thing with the kernel images they download. From my point of view it would =
make sense to copy them into &lt;sysroot&gt;/boot.</div>
<div><br></div><div>The adt_installer.conf file suggests that=A0minimal, mi=
nimal-dev, sato, sato-dev, sato-sdk,lsb, lsb-dev, lsb-sdk are valid images =
for=A0YOCTOADT_ROOTFS_&lt;arch&gt;, but really only the *-dev and *-sdk ima=
ges make sense for an ADT as the others are missing the dev headers and lib=
s.</div>
<div><br></div><div>While the ADT installer downloads all the image files s=
pecified in YOCTOADT_ROOTFS_&lt;arch&gt; it really only extracts the one sp=
ecified by=A0YOCTOADT_TARGET_SYSROOT_IMAGE_&lt;arch&gt; into the location s=
pecified by=A0YOCTOADT_TARGET_SYSROOT_LOC_&lt;arch&gt;. If you keep the ins=
taller files around you can of course later install them with=A0runqemu-ext=
ract-sdk but that&#39;s not necessarily intuitive.</div>
<div><br></div><div>I eventually extracted all the sysroot images into sepa=
rate directories and created a link to the one I wanted to use with the nam=
e specified by=A0YOCTOADT_TARGET_SYSROOT_LOC_&lt;arch&gt;. That works well.=
</div>
<div><br></div><div>I don&#39;t know what the overall direction of developm=
ent for the ADT installer is but I could make some patches to address these=
 items if that makes sense to the community.</div><div><br></div><div>:rjs<=
/div>
<div><br></div><div><br><br><div class=3D"gmail_quote">On Wed, Aug 22, 2012=
 at 5:16 PM, Zhang, Jessica <span dir=3D"ltr">&lt;<a href=3D"mailto:jessica=
.zhang@intel.com" target=3D"_blank">jessica.zhang@intel.com</a>&gt;</span> =
wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hi Rudi,<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">I=92m currently on vacati=
on so have very limited access to my YP setup. =A0We=92ve been using the sy=
sroot and nfs like below to start qemu after adt-installation,
 can you give it a try to see whether there=92s problem or not?<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Runqemu youradtinstallerd=
ir/download_image/</span>bzImage-qemux86.bin ${HOME}/test-yocto/x86<u></u><=
u></u></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Scott,<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Can you help answer or lo=
ok into the boot dir missing kernel file issue that Rudi=92s reporting to s=
ee whether it=92s a bug on our end?<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Thanks,<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Jessica<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> <a href=
=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.o=
rg" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Rudolf Streif<br>
<b>Sent:</b> Tuesday, August 21, 2012 1:17 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] [ADT] Sysroot setup issue<u></u><u></u></span></p><=
div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">Hi, <u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I am trying to setup the ADT using an ADT installer.=
 I have downloaded the installer from=A0<a href=3D"http://downloads.yoctopr=
oject.org/releases/yocto/yocto-1.2.1/adt_installer/" target=3D"_blank">http=
://downloads.yoctoproject.org/releases/yocto/yocto-1.2.1/adt_installer/</a>=
=A0as
 well as created my own installer using a build environment with Denzil 7.0=
.1.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">The adt_installer.conf contains these settings:<u></=
u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">YOCTOADT_REPO=3D&quot;<a href=3D"http://adtrepo.yoct=
oproject.org/1.2.1" target=3D"_blank">http://adtrepo.yoctoproject.org/1.2.1=
</a>&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">YOCTOADT_TARGETS=3D&quot;arm x86&quot;<u></u><u></u>=
</p>
</div>
<div>
<p class=3D"MsoNormal">YOCTOADT_QEMU=3D&quot;Y&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">YOCTOADT_NFS_UTIL=3D&quot;Y&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">YOCTOADT_ROOTFS_arm=3D&quot;minimal&quot;<u></u><u><=
/u></p>
</div>
<div>
<p class=3D"MsoNormal">YOCTOADT_TARGET_SYSROOT_IMAGE_arm=3D&quot;minimal&qu=
ot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">YOCTOADT_TARGET_SYSROOT_LOC_arm=3D&quot;$HOME/test-y=
octo/arm&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">YOCTOADT_ROOTFS_x86=3D&quot;minimal&quot;<u></u><u><=
/u></p>
</div>
<div>
<p class=3D"MsoNormal">YOCTOADT_TARGET_SYSROOT_IMAGE_x86=3D&quot;minimal&qu=
ot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">YOCTOADT_TARGET_SYSROOT_LOC_x86=3D&quot;$HOME/test-y=
octo/x86&quot;<u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">The installer downloads kernel and root fs images. A=
fter the installation has finished<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">${HOME}/test-yocto/arm/boot does not contain any ker=
nel images and<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">${HOME}/test-yocto/x86/boot only contains a empty li=
nk=A0bzImage -&gt; bzImage-3.2.18-yocto-standard<u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I manually copied the x86 kernel image bzImage-qemux=
86.bin from the download_image directory of the extracted installer tarball=
 into the directory, initialized the ADT environment and then ran<u></u><u>=
</u></p>

</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">runqemu=A0${HOME}/test-yocto/x86/boot/bzImage-qemux8=
6.bin=A0${HOME}/test-yocto/x86<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">The NFS user-space server initializes on the tap0 in=
terface and the kernel boots. However, it panics because it cannot locate t=
he root fs. rpcbind is started with the -i option on my system.<u></u><u></=
u></p>

</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I also ran QEMU directly using:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">/opt/poky/1.2.1/sysroots/x86_64-pokysdk-linux/usr/bi=
n/qemu -kernel /home/rudi/test-yocto/x86/boot/bzImage-qemux86.bin -show-cur=
sor -usb -usbdevice wacom-tablet -vga vmware -enable-gl -no-reboot -m 128 -=
-append &quot;root=3D/dev/nfs nfsroot=3D<a href=3D"http://192.168.100.199" =
target=3D"_blank">192.168.100.199</a>://home/rudi/test-yocto/x86
 rw ip=3D192.168.100.38::192.168.100.199:255.255.255.0 mem=3D128M oprofile.=
timer=3D1 &quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">with my dev system&#39;s NFS server running and expo=
rting the file system (I verified that I can mount the exported file system=
 via NFS).<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Questions:<u></u><u></u></p>
</div>
<div>
<ol start=3D"1" type=3D"1">
<li class=3D"MsoNormal">
Why do the sysroot boot directory not contain any kernel images? I don&#39;=
t think that is what it is supposed to be.<u></u><u></u></li><li class=3D"M=
soNormal">
Is there anything broken with the sysroot causing the boot process to fail =
when the kernel tries to access the root fs?<u></u><u></u></li><li class=3D=
"MsoNormal">
Any hints on how to fix it?<u></u><u></u></li></ol>
<div>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal">Rudi<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
</div></div></div>
</div>

</blockquote></div><br></div>

--14dae9340d81e0697f04c7e40d54--
