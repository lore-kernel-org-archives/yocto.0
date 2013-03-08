Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f43.google.com (mail-pb0-f43.google.com
	[209.85.160.43]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id B6948E0151B
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 00:46:16 -0800 (PST)
Received: by mail-pb0-f43.google.com with SMTP id md12so1053333pbc.30
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 00:46:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:message-id:references:to:x-mailer;
	bh=pdGxB0Sx/FTRMCOXRwac/zpyrWwVaT+Tn0bBLCccjw4=;
	b=tTWbCakHLAT7UG42gdFp0L1qQ8TuCWgOkLncvqhn0kwj012ho70bmmwL/DNeEwYCS+
	63fGo3rw6cUmhDaQGdFFnLfVZ1aGc9dqhTyQVasoZYRPMACwemH4yaaPxqzE4pIWtagl
	EGnGn9pidpzljIC/BwwRjB/wjmaWg2fJsvA0I2N52CE95jRgXnmVHVVtRjXjWrFGP6jr
	11V4CVwHVezp7FkstGHjaObG+q0CPryspNubSfHRnXEFdGXJNRBrDShxP9rtIWnQp8q+
	VkBd86v+QDKW3oZYT0yOfUruT6czZ0MUZSUqGNeGDB/Jv/Cwr1Ux13OzvaxE/0i8uHAS
	pgvA==
X-Received: by 10.66.188.175 with SMTP id gb15mr2924957pac.42.1362732376285;
	Fri, 08 Mar 2013 00:46:16 -0800 (PST)
Received: from [192.168.1.91] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id xx10sm5508809pac.15.2013.03.08.00.46.14
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 08 Mar 2013 00:46:15 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CABTzgQ6W3ymW_-gQEo3Rja0VeKLo-3Q8K9kgWXWv3ozkjun0vA@mail.gmail.com>
Date: Fri, 8 Mar 2013 00:46:13 -0800
Message-Id: <E4068A04-BF47-4052-BA07-F14EADCC3564@gmail.com>
References: <CABTzgQ4aGxsRgpFMBZf0t7KVfmBYihePSbkD_D8azAGdCpTgiA@mail.gmail.com>
	<CA+gsK-osjB9NK4gdMBuJU98d3RZiZqJ6yZBh9jR21hJrkx3gkQ@mail.gmail.com>
	<CABTzgQ6pWQD8Rs=NRCvemTy1WWfeH_Rvb2+XaeSLVx_urXkw5A@mail.gmail.com>
	<CA+gsK-rp8LOrmJ6k+3Xja-j4Acu559g9BE1-eJT5-kZOi7457Q@mail.gmail.com>
	<CABTzgQ6MuY=+-63b5jwxQzaFa3F8pV-jXWyKqLCtwb7oBd2BAw@mail.gmail.com>
	<5130B1EA.4040004@windriver.com>
	<CABTzgQ4cZf6YUmgB52oA39rRoRqo9=C=CJ7vjMj=Q+o0XsuEzg@mail.gmail.com>
	<CA+gsK-qrq5LjQ9tzxAyxM_fn1gr8cRW-n4CLNQFsr5BrHDvf2Q@mail.gmail.com>
	<CABTzgQ6W3ymW_-gQEo3Rja0VeKLo-3Q8K9kgWXWv3ozkjun0vA@mail.gmail.com>
To: Satya Swaroop DAMARLA <swaroop@weisser.at>
X-Mailer: Apple Mail (2.1499)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: uboot.bin and rootfs but not uImage
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
X-List-Received-Date: Fri, 08 Mar 2013 08:46:16 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_104E35A3-1D29-4E90-B654-60AB0E3C2E82"

--Apple-Mail=_104E35A3-1D29-4E90-B654-60AB0E3C2E82
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


On Mar 3, 2013, at 4:12 AM, Satya Swaroop DAMARLA <swaroop@weisser.at> =
wrote:

> hi Rudy, hi guys
>=20
> Thank you for the chnages to be made. I always do in two steps, I =
fetch all and then compile the image...
> After fetching then I renamed the file to defconfig. but can you tell =
where should I add "do_fetch_append". Should I add in =
linux-skidata.bbappend (if here where should this append file should =
be?) or in linux-skidata.bb itself?
>=20
> An other important question is how does the kernel decide about the =
device compiler tree... I have several device tree compilers and I want =
to know which parameter is used to and where should this parameter be =
placed so that the kernel and uboot use the right device tree compiler. =
I think this would end my troubles on the whole and I can start playing =
witht the kernel in the near future :)

for device tee you would=20

require recipes-kernel/linux/linux-dtb.inc =20

in your kernel recipe and then in your machine config
data define KERNEL_DEVICETREE =3D "${S}/git/.=85."
this is the path to dts file and you can have more than
one fie each separated by a space in above definition
resulting dtb files will show up in deploy_dir

HTH

-Khem


--Apple-Mail=_104E35A3-1D29-4E90-B654-60AB0E3C2E82
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Mar 3, 2013, at 4:12 AM, Satya Swaroop DAMARLA &lt;<a =
href=3D"mailto:swaroop@weisser.at">swaroop@weisser.at</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div dir=3D"ltr">hi Rudy, hi guys<div><br></div><div>Thank =
you for the chnages to be made. I always do in two steps, I fetch all =
and then compile the image...<div style=3D"">After fetching then I =
renamed the file to defconfig. but can you tell where should I add =
"do_fetch_append". Should I add in linux-skidata.bbappend (if here where =
should this append file should be?) or in <a =
href=3D"http://linux-skidata.bb/">linux-skidata.bb</a> itself?</div>
<div style=3D""><br></div><div style=3D"">An other important question is =
how does the kernel decide about the device compiler tree... I have =
several device tree compilers and I want to know which parameter is used =
to and where should this parameter be placed so that the kernel and =
uboot use the right device tree compiler. I think this would end my =
troubles on the whole and I can start playing witht the kernel in the =
near future :)</div>
</div></div></blockquote><br></div><div>for device tee you =
would&nbsp;</div><div><br></div><div>require&nbsp;recipes-kernel/linux/lin=
ux-dtb.inc &nbsp;</div><div><br></div><div>in your kernel recipe and =
then in your machine config</div>data define&nbsp;KERNEL_DEVICETREE =3D =
"${S}/git/.=85."<div>this is the path to dts file and you can have more =
than</div><div>one fie each separated by a space in above =
definition</div><div>resulting dtb files will show up in =
deploy_dir</div><div><br></div><div>HTH</div><div><br></div><div>-Khem</di=
v><div><br></div></body></html>=

--Apple-Mail=_104E35A3-1D29-4E90-B654-60AB0E3C2E82--
