Return-Path: <ayoub.zaki@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54006E00D9F; Fri, 15 Apr 2016 03:25:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ayoub.zaki[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86F1CE00C1E
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 03:25:03 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id a140so24837141wma.0
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 03:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=fsUPu7fxegv4SD3ioVYQsLcOOuvAKvhAHmYXHC7NO+U=;
	b=bdh9p5gd2/gqUlo6M0CMXgSYu4HDITqgOQ4kQZLXt0c0ilpWAMoB+qRyTiN98AP57T
	aGsX9mItdueTQ/xwRjbA/68U95kOK8j/YmpvGAP4Veznk2+Td9tnxRg7R+dEm5O1744H
	pLVlQHiYV8nW78tgZy2z+cMTF75NsVc9I287xcazqajKQEVHKqWVR0NVyNcqpuQa40/j
	QyO0D+GqBU/w8IBOAgEFeTRSnFdP1D72bFVgy92UFjnGUhGDFrsjQmLjj6c+Z0YMmqKx
	h4slg/Y/fAKAaCtamlRLsmptivKGS+11IAjkhhprvt65Je/EmMxlAxYZ4eoUIO37l5aj
	nTyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=fsUPu7fxegv4SD3ioVYQsLcOOuvAKvhAHmYXHC7NO+U=;
	b=NJyIMaq+YSdJgkepZpIE3XISZp+qgAel5l1VXhQB7IC6RQ4h+NnK9Smi25RNm1yN4t
	6LUZN8NIkWBme0e2oJuOdatZZjNIpFYyfY3E0bAsDE4rBmAw2pCXEyyZTQWfxyAZXBj2
	DUax+KCILLa6BPmVD9RbIkbYbizGnd8225gxYhpYWH0Tadki7Jsh00yrXZU9+OSUM6qD
	TPdRnuBmA4FQ4J58cJKPbMMkLAALsUd3hf4xNJvPpwA6KtAY3VpyvzeC4fLNkjPG4u2c
	XffKBCWiyBI7h2Ah6ZN93PfVu9dKJ10XScdZuGlwcI/JnbdHU3e1aFTIUSEs5z3vw8Td
	PwHQ==
X-Gm-Message-State: AOPr4FXvqrhJLMQu0j1iOxqPmYAwqyOhKm8TiX4W5td6Tt6tYPQ1uWJOUwZ7Szc7zObf74fCZX1n71sRkNOJgA==
MIME-Version: 1.0
X-Received: by 10.28.179.84 with SMTP id c81mr3508786wmf.13.1460715902460;
	Fri, 15 Apr 2016 03:25:02 -0700 (PDT)
Received: by 10.28.185.69 with HTTP; Fri, 15 Apr 2016 03:25:02 -0700 (PDT)
Date: Fri, 15 Apr 2016 12:25:02 +0200
Message-ID: <CA+-BmJaoj+D=gfQO+mVO3U3eST4Bg-6q1FCucWBpBcq8p8pQ5Q@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
To: yocto@yoctoproject.org
Subject: Bundled Initramfs inside rootfs
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
X-List-Received-Date: Fri, 15 Apr 2016 10:25:05 -0000
Content-Type: multipart/alternative; boundary=001a1145392c7bed840530836cef

--001a1145392c7bed840530836cef
Content-Type: text/plain; charset=UTF-8

Hello all,

I'm building two images :

my-image
my-image-initramfs

I want that to have a single binary that contains both the kernel image and
the initial RAM disk (initramfs) for that I set in my local.conf :

INITRAMFS_IMAGE = "my-image-initramfs"
INITRAMFS_IMAGE_BUNDLE = "1

After building my two image I get in the DEPLOYDIR both uImage and
uImage-initramfs binaries.

But inside the my-image root filesystem under /boot folder only NOT bundled
Kernel Image uImage is present.
Is there anyway to include the bundled  Kernel image uImage-initramfs
inside /boot folder of my my-image rootfs ?

Thank you

Ayoub Zaki

--001a1145392c7bed840530836cef
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hello all,<br><br></div>I&#3=
9;m building two images :<br><br>my-image<br>my-image-initramfs<br><br></di=
v>I want that  to have a single binary that contains both the
                    kernel image and the initial RAM disk (initramfs) for t=
hat I set in my local.conf :<br><br>INITRAMFS_IMAGE =3D &quot;my-image-init=
ramfs&quot;<br>INITRAMFS_IMAGE_BUNDLE =3D &quot;1<br><br></div>After buildi=
ng my two image I get in the DEPLOYDIR both uImage and uImage-initramfs bin=
aries.<br><br></div>But inside the my-image root filesystem under /boot fol=
der only NOT bundled Kernel Image uImage is present. <br>Is there anyway to=
 include the bundled=C2=A0 Kernel image uImage-initramfs inside  /boot fold=
er of my  my-image rootfs ?<br><br></div>Thank you<br><br></div>Ayoub Zaki<=
br></div>

--001a1145392c7bed840530836cef--
