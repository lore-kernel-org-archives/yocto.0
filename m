Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
 by mx.groups.io with SMTP id smtpd.web12.21590.1608454965880988210
 for <yocto@lists.yoctoproject.org>;
 Sun, 20 Dec 2020 01:02:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=t7mF8V+8;
 spf=pass (domain: gmail.com, ip: 209.85.222.178, mailfrom: jonas.vautherin@gmail.com)
Received: by mail-qk1-f178.google.com with SMTP id f26so4737299qka.0
        for <yocto@lists.yoctoproject.org>; Sun, 20 Dec 2020 01:02:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=D7k+YtKCyblIkHl3ZAzLE0w2T/Ws0lFHdBidIbolgkE=;
        b=t7mF8V+8hoHtdqwhC0f0HOe1fgzBIgV6Ws83Zf+4+co+JVDFCUHKCDfICfFjzpUk/G
         1UQ3wRjb4cqjLkCdHqay3AmUjqQoK7iBybmgsYDLNGAoJfWRdsZyID8V0h1JLV3zTUSN
         TLpINgR0Mzl5FdFLrPc0hgWywrn0Fiz7THvg6X6DteE5Xaq7D/tCfFhmVRg4Rip+KkjX
         +A8AdonkMKgGDP0iCYakI9CkXkdJmteS988HX0y/QaoxihpHAUTsb26nekHxE4wBJ9Ei
         JSbfMMyVxrpxUMOJPsNacxpefcQ+By3of54STGatAu5R3mwbSZ4jpvL+HEQXciZxaCpb
         1RkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=D7k+YtKCyblIkHl3ZAzLE0w2T/Ws0lFHdBidIbolgkE=;
        b=ZjemDgTVdR4deUHDyGuV4/7bLN+XCTb2dEQJNdQLL6d9Q6Sx1OMy+honNUD2qV7gIK
         jCgnGJrLzi1tjck35yiOk9yAMTrewABbtGWfpJTHVinlb5W+ISCobIhJL9mqoSjiv92k
         BXMAsnbunvFOatTdSNp71jacFpUveuBHhw4UiZ2L5bh6Se2mFQMcJVCNin9Dr/Vhzqim
         JboCqKqsPffy8X56O80owYwjBjyQA7jjsIRKc/RrLZl4WYVyqlDE165yGnkwDGFgP61J
         8gr227KSk5HEEKSiYte8WxiPARpAq4yzDsQsRvZsKcF2Zz2oyZORC//os/dboT8EdEjZ
         chUA==
X-Gm-Message-State: AOAM531RGA1DSvijC5yT4TqXX1gAxnXw6EJLJunoE4U5z+KKsPqk36px
	jrXoESggGiTJIGr3+JvFu+f+D+lZGw3UPN4gTQzyhdt7OApbvg==
X-Google-Smtp-Source: ABdhPJytfU6Uy3kcIj/OHVHONMkdvZATdKzGmZo1BguQeOpNDDxvUvEtzbsnFIafcayc6m8gJbCDQwPf0+BzkyTpmLA=
X-Received: by 2002:a37:994:: with SMTP id 142mr12599526qkj.257.1608454964848;
 Sun, 20 Dec 2020 01:02:44 -0800 (PST)
MIME-Version: 1.0
From: jonas.vautherin@gmail.com
Date: Sun, 20 Dec 2020 10:02:34 +0100
Message-ID: <CAEyb4nEw6=TZ62bnBbBUGfN+qT4w1W8rNpOy6ADQbwTu81bAQw@mail.gmail.com>
Subject: Using U-boot in Yocto
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d12c6e05b6e19a44"

--000000000000d12c6e05b6e19a44
Content-Type: text/plain; charset="UTF-8"

Hello!

I am new to Yocto, and hope that this is the right way to ask for help :-).

I would like to have a way to flash my RPi over USB using `fastboot`, and
it seems to me that one way to do that is to enable a "fastboot mode" in
U-boot. Therefore, I am trying to use U-boot in my Yocto image.

There seems to be a recipe for it, hence I just added the package to my `-
image.bb` file:

```
IMAGE_INSTALL += "u-boot"
```

However, I am not really used to bootloaders, and I am not sure it is
booting with it. How can I check if my system is booting with U-boot? It
does not seem like it's appearing in `dmesg` (which I presume is only
starting with the kernel). Do I need to observe that with a serial
connection to my RPi, or is there a log saved somewhere on the system?

Note that my image uses `meta-raspberrypi` for MACHINE "raspberrypi4-64"
(Raspberry Pi 4 Model B).

Cheers,

--000000000000d12c6e05b6e19a44
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello!</div><div><br></div><div>I am new to Yocto, an=
d hope that this is the right way to ask for help :-).</div><div><br></div>=
I would like to have a way to flash my RPi over USB using `fastboot`, and i=
t seems to me that one way to do that is to enable a &quot;fastboot mode&qu=
ot; in U-boot. Therefore, I am trying to use U-boot in my Yocto image.<br><=
br>There seems to be a recipe for it, hence I just added the package to my =
`-<a href=3D"http://image.bb">image.bb</a>` file:<br><br>```<br>IMAGE_INSTA=
LL +=3D &quot;u-boot&quot;<br>```<br><br>However, I am not really used to b=
ootloaders, and I am not sure it is booting with it. How can I check if my =
system is booting with U-boot? It does not seem like it&#39;s appearing in =
`dmesg` (which I presume is only starting with the kernel). Do I need to ob=
serve that with a serial connection to my RPi, or is there a log saved some=
where on the system?<br><br>Note that my image uses `meta-raspberrypi` for =
MACHINE &quot;raspberrypi4-64&quot; (Raspberry Pi 4 Model B).<br><br>Cheers=
,</div>

--000000000000d12c6e05b6e19a44--
