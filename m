Return-Path: <dskrishna8074@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA1ED16262
	for <webhook@archiver.kernel.org>; Mon, 14 Oct 2024 13:15:36 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web10.54786.1728911731472169067
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Oct 2024 06:15:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mWvkONHz;
 spf=pass (domain: gmail.com, ip: 209.85.218.53, mailfrom: dskrishna8074@gmail.com)
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a999521d0c3so712568166b.1
        for <yocto@lists.yoctoproject.org>; Mon, 14 Oct 2024 06:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728911729; x=1729516529; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Su+HoSEuQnh9Rob8ymfSbaEHGdJSt0JwMKoeeozIZ+I=;
        b=mWvkONHzgQEY021gMxUcUyGkC+FFj92XHSbjOWyV0jnZhJpOHS81/e+xgx/E4XqNNN
         xpByc374h/52RG4KfwXzW6KXq65Y8Z35qYltn9vy48rBI5UNi6IHsLd6wbGjZcoLaq7k
         yIxwt2lmxBPHXk9U0l7xmHwb13gfABZw2BBNEIgMy3Cy91c4QzHOXScicqHvvP2NRlGS
         dGnQjPJhUkIaY2n5qlUey/C2Lqz9uVIh5jJKpCKfq79huoAnlhSxQNw7w/rqBjnwIzT8
         9xQmR3gsz3vN373TQBcOmqo4nZxNTXRWY1sSmVQhnx4dnGa70Ql7MvmP8HuYv1b8W5Qo
         5DZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728911729; x=1729516529;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Su+HoSEuQnh9Rob8ymfSbaEHGdJSt0JwMKoeeozIZ+I=;
        b=iQ08bXJcxcP9nCq6oGaGBbSM9W8vWkTg2w9dv1+5sOyPUWPDWPwMOhZIvlxXDcpP+0
         wnZxU6E2W9DL8DK9i2ixFLeWmuoecdFmi/hOeIgCROtL7SSJH52/AMYL4RWU+8bQlKfa
         JTWpwfqDZIMurK5P5ZiB83tnO5Thl+6O0j15//ruzQuJOD9xjLwxO/qXQrv841CCMiYd
         q0n0TzBdxrdkLg1oMXHhA1vtQVWAnCYOGjmaqcawMeyOHSDGMEHWjZr/Esco2dD+K6IW
         UBa7niG+1X8KEAJCEJliEJ8lGNfnlI/x64WrAR1F4t2sp32bb9cnzC0dGS2gRwpJyZJB
         Hssw==
X-Gm-Message-State: AOJu0YzA4wlIiVlYSMwQaiqogtqx+ozFqNfiyyGypsLqGOreLo7M3CxF
	DPD428hVjzPcGtet6XDq+D2KxhsvhJ3S5ZOBWryIKXsGlMkpasn3XrpngKkPzbCR/NBbOvvuOIB
	1vZDhGlzHA2FbwcvLbrrGr2zM4nNmaD05
X-Google-Smtp-Source: AGHT+IFbbT/6RxZN3iDBsI9jbQ74MCbH/4qOsGJBaCst2COIF1OgiMDG4multCY9w4PxrgxnoNl+Z/qYsBpxpPasIW8=
X-Received: by 2002:a17:907:7246:b0:a99:ebbb:1307 with SMTP id
 a640c23a62f3a-a99ebbb1413mr684015866b.59.1728911729308; Mon, 14 Oct 2024
 06:15:29 -0700 (PDT)
MIME-Version: 1.0
From: Ds Krishna <dskrishna8074@gmail.com>
Date: Mon, 14 Oct 2024 18:45:17 +0530
Message-ID: <CAFMiirNqxKPbRK_H8TFpkZHuoEYsARtY7QqkT3ztWM=FyMDx8A@mail.gmail.com>
Subject: Facing issue with creating vm's using xen
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000079465406246fa1c7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Oct 2024 13:15:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64018

--00000000000079465406246fa1c7
Content-Type: text/plain; charset="UTF-8"

Hi,
I am facing an issue with creating vm's by using xen which is built from
yocto.
like below, I am facing an issue.
>
> root@raspberrypi4-64:~# xl create -c /etc/linux/linux_vm.cfg
> Parsing config from /etc/linux/linux_vm.cfg
> libxl: error: libxl_device.c:1109:device_backend_callback: Domain 3:unable
> to add device with path /local/domain/0/backend/vbd/3/51712
> libxl: error: libxl_create.c:1643:domcreate_launch_dm: Domain 3:unable to
> add disk devices
> libxl: error: libxl_device.c:1109:device_backend_callback: Domain 3:unable
> to remove device with path /local/domain/0/backend/vbd/3/51712
> libxl: error: libxl_domain.c:1530:devices_destroy_cb: Domain
> 3:libxl__devices_destroy failed
> libxl: error: libxl_domain.c:1183:libxl__destroy_domid: Domain
> 3:Non-existant domain
> libxl: error: libxl_domain.c:1137:domain_destroy_callback: Domain 3:Unable
> to destroy guest
> libxl: error: libxl_domain.c:1064:domain_destroy_cb: Domain 3:Destruction
> of domain failed


These are the configuration and version of the yocto kirkstone branch.

Host OS: Ubuntu 22.04LTS (which is used for building yocto image)

RPI :4 B
RAM:8GB
Yocto branch name:kirkstone
Image version :
Image--5.15.166+git0+567f0adb9d_a78a104311-r0-raspberrypi4-64-20241011122756.bin
xen version:4.16.1

and my linux_vm.cfg is

kernel = "/root/vmlinuz"                  # Path to the VM kernel
> memory = 512                              # Allocate 512 MB RAM
> vcpus = 2                                 # Number of virtual CPUs
> name = "linux_vm"                         # Name of the VM
> disk = [ 'file:/root/linux_vm.img,xvda,w' ] # Path to disk image, writable
> vif = [ 'bridge=xenbr0' ]                 # Networking using Xen bridge
> root = "/dev/xvda"                        # Root filesystem on xvda (the
> disk image)
> extra = "console=hvc0 root=/dev/xvda rw"  # Kernel parameters


and i have these files in that path

> root@raspberrypi4-64:~# ls -l /etc/linux/
> total 1509244
> -rwxrwxrwx    1 root     root           561 Mar  9 13:47 linux_vm.cfg
> -rwxrwxrwx    1 root     root     1533018112 Mar  9 14:10 linux_vm.img
> -rwxrwxrwx    1 root     root      12439203 Mar  9 13:48 vmlinuz


Please help me to solve this issue.
I am thinking like I am using the latest version of the kernel which is
5.15.166.
maybe this kernel version is not supporting the xen for creating vm's.

If I am wrong, suggest that I resolve the issue.

Thank you in advance.

--00000000000079465406246fa1c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br>I am facing an issue with creating vm&#39;s by usin=
g xen which is built from yocto.<br>like below, I am facing=C2=A0an issue.<=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">root@raspberrypi4-64:~# xl=
 create -c /etc/linux/linux_vm.cfg<br> Parsing config from /etc/linux/linux=
_vm.cfg<br>libxl: error: libxl_device.c:1109:device_backend_callback: Domai=
n 3:unable to add device with path /local/domain/0/backend/vbd/3/51712<br>l=
ibxl: error: libxl_create.c:1643:domcreate_launch_dm: Domain 3:unable to ad=
d disk devices<br>libxl: error: libxl_device.c:1109:device_backend_callback=
: Domain 3:unable to remove device with path /local/domain/0/backend/vbd/3/=
51712<br>libxl: error: libxl_domain.c:1530:devices_destroy_cb: Domain 3:lib=
xl__devices_destroy failed<br>libxl: error: libxl_domain.c:1183:libxl__dest=
roy_domid: Domain 3:Non-existant domain<br>libxl: error: libxl_domain.c:113=
7:domain_destroy_callback: Domain 3:Unable to destroy guest<br>libxl: error=
: libxl_domain.c:1064:domain_destroy_cb: Domain 3:Destruction of domain fai=
led</blockquote><div><br></div><div>These are the configuration and version=
 of the yocto kirkstone branch.</div><div><br></div><div>Host OS: Ubuntu 22=
.04LTS (which is used for building yocto image)</div><div><br>RPI :4 B</div=
><div>RAM:8GB</div><div>Yocto branch name:kirkstone</div><div>Image version=
 : Image--5.15.166+git0+567f0adb9d_a78a104311-r0-raspberrypi4-64-2024101112=
2756.bin</div><div>xen version:4.16.1</div><div><br></div><div>and my linux=
_vm.cfg is</div><div><br></div><div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">kernel =3D &quot;/root/vmlinuz&quot; =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Path to the VM kernel<br>memory =3D 51=
2 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Allocate 512 MB RAM<br>vcpus =3D 2 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Number of virtual CPUs<br>name =3D &quot;=
linux_vm&quot; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 # Name of the VM<br>disk =3D [ &#39;file:/root/lin=
ux_vm.img,xvda,w&#39; ] # Path to disk image, writable<br>vif =3D [ &#39;br=
idge=3Dxenbr0&#39; ] =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 # Networking using Xen bridge<br>root =3D &quot;/dev/xvda&quot; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0# Root filesystem on xvda (the disk image)<br>extra =3D &quot;console=3D=
hvc0 root=3D/dev/xvda rw&quot; =C2=A0# Kernel parameters</blockquote><br>an=
d i have these files in that path<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">root@raspberrypi4-64:~# ls -l /etc/linux/<br>total 1509244<br>-=
rwxrwxrwx =C2=A0 =C2=A01 root =C2=A0 =C2=A0 root =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 561 Mar =C2=A09 13:47 linux_vm.cfg<br>-rwxrwxrwx =C2=A0 =C2=A01 =
root =C2=A0 =C2=A0 root =C2=A0 =C2=A0 1533018112 Mar =C2=A09 14:10 linux_vm=
.img<br>-rwxrwxrwx =C2=A0 =C2=A01 root =C2=A0 =C2=A0 root =C2=A0 =C2=A0 =C2=
=A012439203 Mar =C2=A09 13:48 vmlinuz</blockquote><div><br></div><div>Pleas=
e help me to solve this issue.<br>I am thinking like I am using the latest =
version of the kernel which is 5.15.166.<br>maybe this kernel version is no=
t supporting the xen for creating=C2=A0vm&#39;s.</div><div><br></div><div>I=
f I am wrong, suggest that I resolve the issue.</div><div><br></div><div>Th=
ank you in advance.<br><br></div><br>=C2=A0</div><div><br></div><div><br></=
div></div>

--00000000000079465406246fa1c7--

