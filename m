Return-Path: <sleepylight@jive-turkey.net>
Received: from mail-ee0-f44.google.com (mail-ee0-f44.google.com [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64FB6E01716
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 17:41:20 -0800 (PST)
Received: by mail-ee0-f44.google.com with SMTP id d41so1320247eek.17
	for <yocto@yoctoproject.org>; Mon, 04 Nov 2013 17:41:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=IMcaBboNffiALPqImtwibeRWElJh98Qr46ww+Jin37w=;
	b=TcDlc7cbPBwHiV+yoRi3Shtqa6RXLWQ6k6LivVwA4JgfFHACU94EfTmuqlXFcCr4q/
	EoDFuOt1IKE+EeVMNg8cyaXjj1gl/yXk4eTfkmCkYgWQ2xcf7ehgC6oRgmHKz3AMn5yT
	1QBS+AKia+QWJ2/5I4Ia59GhJ8PqZPpzjEJvZNPK/Sv+KcPDDO1FhjfC84sEsH4aW8sw
	ngbF/oGyZSYxtuQ7L36QYXOqWJrtOYTcFNHgvBtzf6Lb2fUXh53d32SKQLxa+PyluQAD
	Kmrc2uJgydnFx1jxLXTn7IZymzDEjMzEqvj0Ox0/JWh8FerpTbt3inQRQePLA/SCx0x9
	1gDg==
X-Gm-Message-State: ALoCoQkIuBXBTGj2F9mL3xdBlh2/HM9ozxwrJi0FCFfEyxY+BZzjUOBQXoLVGPJ+Lt9leO3uU1e2
MIME-Version: 1.0
X-Received: by 10.14.38.194 with SMTP id a42mr14661564eeb.12.1383615679462;
	Mon, 04 Nov 2013 17:41:19 -0800 (PST)
Received: by 10.223.132.7 with HTTP; Mon, 4 Nov 2013 17:41:19 -0800 (PST)
Date: Mon, 4 Nov 2013 20:41:19 -0500
Message-ID: <CADi-vsxH-E=StkCnZtw9-U7RLSC6cn-RFw684GXfANEhhMAe7Q@mail.gmail.com>
From: Maxwell Bottiger <sleepylight@jive-turkey.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: architecture mismatch during kernel build (40 to 3)
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
X-List-Received-Date: Tue, 05 Nov 2013 01:41:21 -0000
Content-Type: multipart/alternative; boundary=089e016816ec1492e004ea6421f2

--089e016816ec1492e004ea6421f2
Content-Type: text/plain; charset=ISO-8859-1

I'm building a custom kernel, and I think I'm nearly there.  I'm seeing an
error when running mkimage.  bitbake is complaining about an architecure
mismatch, but I don't know which files it is comparing, or if the mismatch
really matters (32bit x86 vs 64bit x86 or whatever)

Here's the error string:

WARNING: File '/usr/src/kernel/mkimage' from linux-yocto-custom was already
stripped, this will prevent future debugging!

ERROR: QA Issue: Architecture did not match (40 to 3) on
/work/at91sam9x5ek-poky-linux-gnueabi/linux-yocto-custom/2.6.39-r1/packages-split/kernel-dev/usr/src/kernel/mkimage

ERROR: QA run found fatal errors. Please consider fixing them.

ERROR: Function failed: do_package_qa

ERROR: Logfile of failure stored in:
/home/sleepylight/workspace/yocto/poky/build-atmel/tmp/work/at91sam9x5ek-poky-linux-gnueabi/linux-yocto-custom/2.6.39-r1/temp/log.do_package.11527

ERROR: Task 18
(/home/sleepylight/workspace/yocto/poky/meta-atmel/recipes-kernel/linux/
linux-yocto-custom_2.6.39.bb, do_package) failed with exit code '1'


I'm building on a 64 bit linux platform, I don't know if that makes a
difference.

Thanks all.  I'm nearly there!

-Max

--089e016816ec1492e004ea6421f2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>I&#39;m building a custom kernel, and I thi=
nk I&#39;m nearly there.=A0 I&#39;m seeing an error when running mkimage.=
=A0 bitbake is complaining about an architecure mismatch, but I don&#39;t k=
now which files it is comparing, or if the mismatch really matters (32bit x=
86 vs 64bit x86 or whatever)<br>
<br>Here&#39;s the error string:<br><br>WARNING: File &#39;/usr/src/kernel/=
mkimage&#39; from linux-yocto-custom was already stripped, this will preven=
t future debugging!<br><br>ERROR: QA Issue: Architecture did not match (40 =
to 3) on /work/at91sam9x5ek-poky-linux-gnueabi/linux-yocto-custom/2.6.39-r1=
/packages-split/kernel-dev/usr/src/kernel/mkimage<br>
<br>ERROR: QA run found fatal errors. Please consider fixing them.<br><br>E=
RROR: Function failed: do_package_qa<br><br>ERROR: Logfile of failure store=
d in: /home/sleepylight/workspace/yocto/poky/build-atmel/tmp/work/at91sam9x=
5ek-poky-linux-gnueabi/linux-yocto-custom/2.6.39-r1/temp/log.do_package.115=
27<br>
<br>ERROR: Task 18 (/home/sleepylight/workspace/yocto/poky/meta-atmel/recip=
es-kernel/linux/<a href=3D"http://linux-yocto-custom_2.6.39.bb">linux-yocto=
-custom_2.6.39.bb</a>, do_package) failed with exit code &#39;1&#39;<br><br=
>
<br></div>I&#39;m building on a 64 bit linux platform, I don&#39;t know if =
that makes a difference.<br><br></div>Thanks all.=A0 I&#39;m nearly there!<=
br><br></div>-Max<br></div>

--089e016816ec1492e004ea6421f2--
