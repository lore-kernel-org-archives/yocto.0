Return-Path: <billmartin544@gmail.com>
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0C38E01885
	for <yocto@yoctoproject.org>; Fri,  8 Nov 2013 15:13:21 -0800 (PST)
Received: by mail-ie0-f175.google.com with SMTP id u16so1063478iet.6
	for <yocto@yoctoproject.org>; Fri, 08 Nov 2013 15:13:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=VG/g5IJNhj5xPrhFpdsLJR9xV6Sop5vR+kcp+TYvkko=;
	b=mKNsBpVh8FmBdxI9ctgsCd3sANo5i8p22G6H0Xb0yk3bIuoj2xbbqZTUlexFoKrmSr
	vCwpr/kOIDJ9C1ehz2MOUVFfyzs4B8hcZUF4reJo/iB9l4b5EYfTzyVyYSmmGiVbZAXb
	tuGVu/R0EJKwOj7eqcpLfVlh98D+ittjyf9xNhKySfnkmvgRfU0x2fHaVPphPumad/up
	Ysjj4KkdWGm17HQrqbhvN4RDe5X44yA+bW19H3+gQMlsu0B/AEhhkAgC3/IPDj+cyRbU
	Il6IIU+eM5m+uDHyCYfhkbAEguyUprK4dfb9CKIvhaPiQhb5Bx54kKoqA8I5YTQZp2pc
	vCyg==
MIME-Version: 1.0
X-Received: by 10.50.61.35 with SMTP id m3mr4248220igr.56.1383952400178; Fri,
	08 Nov 2013 15:13:20 -0800 (PST)
Received: by 10.64.228.199 with HTTP; Fri, 8 Nov 2013 15:13:20 -0800 (PST)
Date: Fri, 8 Nov 2013 15:13:20 -0800
Message-ID: <CAJGS5=FCOtjyx8wEgLLWAFWqCTRnZsbnywYBo9WB56-XEEyQ3g@mail.gmail.com>
From: Bill Martin <billmartin544@gmail.com>
To: yocto@yoctoproject.org
Subject: Core-image-minimal-initramfs (Second ping)
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
X-List-Received-Date: Fri, 08 Nov 2013 23:13:23 -0000
Content-Type: multipart/alternative; boundary=001a1134b62c332f4004eab287db

--001a1134b62c332f4004eab287db
Content-Type: text/plain; charset=ISO-8859-1

Please refer to my question in Volume 8 issue 35. I am very desperate in
wanting to use the initramfs in m yoctobuild for an embedded x86 target
architecture. I am using Yocto Dylan 9.0.2 for crown bay.

The root directory for my boot is in /dev/sda1

After normal boot, the root directory is presumably at /dev/sda. Hence my
grub has "root (hd0,0)"

My grub 0.97 initrd command looks good

My dmesg spits out information and stops at the line

XT3-fs: mounted filesystem with ordered data


And that's where it ends up. No panic.

I noticed in meta/recipes-core/images the
core-image-minimal-initramfs.bbhas its IMAGE_ROOT size set to 8192. Is
that too small?

I found absolutely no help in the Yocto documentation on this initramfs
stuff.

I found a CONFIG_INITRAMFS_SOURCE and read that this tells the kernel where
the initramfs is. I am not sure if I need to set it. Again, no
Yocto documentation on how to use one of its builds!!!!!

I presume my grub stage 1 and stage 2 completed and by the time my dmesg
command dumps out messages, init is running. In fact I did see a familiar
message that is in the init file.

I googled all day on what this problem could be. Unfortunately a variety of
different causes. I don't know where to begin.

I did see a question in May 2012 from a guy wanting to see if Yocto
supports INITRAMFS. The responder was referring to Grub 2.0 and said in the
kernel command initrd=config-image-minimal<target>.cpio.gz /dev/ram0

Is there someone out there, especially from Yocto, who at least tested the
capability of Core-image-minimal-initramfs? And not on the simulator but in
a real boot?

thanks

Bill

--001a1134b62c332f4004eab287db
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Please refer to my question in Volume 8 issue 35. I am ver=
y desperate in wanting to use the initramfs in m yoctobuild for an embedded=
 x86 target architecture. I am using Yocto Dylan 9.0.2 for crown bay.<div>
<br></div><div>The root directory for my boot is in /dev/sda1</div><div><br=
></div><div>After normal boot, the root directory is presumably at /dev/sda=
. Hence my grub has &quot;root (hd0,0)&quot;<br><div><br></div><div>My grub=
 0.97 initrd command looks good<br>
<div><br></div><div>My dmesg spits out information and stops at the line</d=
iv><div><br></div><div><span style=3D"font-family:arial,sans-serif;font-siz=
e:13px">XT3-fs: mounted filesystem with ordered data</span><br></div><div>
<span style=3D"font-family:arial,sans-serif;font-size:13px"><br></span></di=
v><div><span style=3D"font-family:arial,sans-serif;font-size:13px"><br></sp=
an></div><div><font face=3D"arial, sans-serif">And that&#39;s where it ends=
 up. No panic.=A0</font></div>
</div><div><font face=3D"arial, sans-serif"><br></font></div><div><font fac=
e=3D"arial, sans-serif">I noticed in meta/recipes-core/images the <a href=
=3D"http://core-image-minimal-initramfs.bb">core-image-minimal-initramfs.bb=
</a> has its IMAGE_ROOT size set to 8192. Is=A0that too small?</font></div>
<div><font face=3D"arial, sans-serif"><br></font></div><div><font face=3D"a=
rial, sans-serif">I found absolutely no help in the Yocto documentation on =
this initramfs stuff.=A0</font></div><div><font face=3D"arial, sans-serif">=
<br>
</font></div><div><font face=3D"arial, sans-serif">I found a CONFIG_INITRAM=
FS_SOURCE and read that this tells the kernel where the initramfs is. I am =
not sure if I need to set it. Again, no Yocto=A0documentation on how to use=
 one of its builds!!!!!</font></div>
<div><font face=3D"arial, sans-serif"><br></font></div><div><font face=3D"a=
rial, sans-serif">I presume my grub stage 1 and stage 2 completed and by th=
e time my dmesg command dumps out messages, init is=A0running. In fact I di=
d see a familiar message that is in the init file.</font></div>
<div><font face=3D"arial, sans-serif"><br></font></div><div><font face=3D"a=
rial, sans-serif">I googled all day on what this problem could be. Unfortun=
ately a variety of different causes. I don&#39;t know where to begin.</font=
></div>
</div><div><font face=3D"arial, sans-serif"><br></font></div><div><font fac=
e=3D"arial, sans-serif">I did see a question in May 2012 from a guy wanting=
 to see if Yocto supports INITRAMFS. The responder was referring to Grub 2.=
0 and said in the kernel command initrd=3Dconfig-image-minimal&lt;target&gt=
;.cpio.gz /dev/ram0</font></div>
<div><font face=3D"arial, sans-serif"><br></font></div><div><font face=3D"a=
rial, sans-serif">Is there someone out there, especially from Yocto, who at=
 least tested the capability of Core-image-minimal-initramfs? And not on th=
e simulator but in a real boot?</font></div>
<div><font face=3D"arial, sans-serif"><br></font></div><div><font face=3D"a=
rial, sans-serif">thanks</font></div><div><font face=3D"arial, sans-serif">=
<br></font></div><div><font face=3D"arial, sans-serif">Bill</font></div></d=
iv>

--001a1134b62c332f4004eab287db--
