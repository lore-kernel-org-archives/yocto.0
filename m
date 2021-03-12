Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by mx.groups.io with SMTP id smtpd.web09.6764.1615547873231012787
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 03:17:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=asKa+3ws;
 spf=pass (domain: gmx.de, ip: 212.227.17.21, mailfrom: afraser@gmx.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1615547871;
	bh=jp+hTpAg6YnOVW4rxSSYFPxCnyLNqI3GCHppUrZZTRM=;
	h=X-UI-Sender-Class:To:From:Subject:Date;
	b=asKa+3ws/NZ6/velwvMSeNFwpBUYhS3s8NrQQD02Vg0EzeuC//Vv0rx47E24Ex2LW
	 OOl8zeEnRcSaPqmDssIcuY0cJUnDjwoe2la4Dy1PGO4wiT63J+d7GlkOyL1yDE7U5v
	 Jp9RSTVIwhVrG5EPQaQCdTGsT7qHHqFNphQGXME4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.200.52] ([217.92.212.59]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MOzSu-1l6JEp10gu-00PNSc for
 <yocto@lists.yoctoproject.org>; Fri, 12 Mar 2021 12:17:51 +0100
To: yocto@lists.yoctoproject.org
From: "AFraser" <afraser@gmx.de>
Subject: debug symbols and INHIBIT_PACKAGE_STRIP = "1"
Message-ID: <95b72d76-a731-dd29-3385-1bf03de08f58@gmx.de>
Date: Fri, 12 Mar 2021 12:17:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:L20MjAkb9mlt3skf5HKsXqiEhEBp2zHMA9CHb2BH5veMJyXszM7
 AgnWe4H8W7vAx1tBqQu28GzuybkolKCsO/Awt0p8LNB6xbkIU0kAvhG9KC95x6n1+rsa5EX
 B889Io6W03+RN6QZQLJn1XDnUJD9nlAdxagcUBSe+iD7AfZwvdvcXhWFJUxghV7nVA2xbkQ
 EO9zyBctVMgauODjb3xjQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:02oY+N1I/2Y=:VcGbvu/Nn0Ur9421g0Cg/M
 VKhmvYnUit95QRpfu+pgDs2ZBPgI3drtRJPlOjQ1pktlFvClq+wvKo95UWMWI5hQRE9f6Iqfs
 RSJhl1jEFpKFIoK/cZ5aZoVa/be1LVd2C5UyOZQ0oj6OXDkHidtPjNfoUhumodYx6DXg/QRHX
 q/AyR46iVX9qCATzOLs9mcf4wvfG4rdC42acSnbKhBMhSY58Jhh+ZUFzUYHe77q++0LT3zGTQ
 t+k/SXoadoHFX0L8EdlHdQRw1r5Hzb2qth3YkOrU1ILt3dnVovrV3c7JlCNEysc+ywm7gEoWi
 M6kFqpssLGyM214x9TZC2CiBz368ovguIyo5VCLtWULoYlBYm+8hnaRAM4jotAKx1a8cWY3if
 U2gx75GHeDushm5DJ9SscMfV/gG5BpqAM4kC06kwTSEusF9sQbYmlpuSvdbZg0CH594MsP5iX
 GtkQNCjkjTP2LA/ApmXTSbQDFf+ke3MqsYK8UFFf0NLBPZFlCVv8084f0dZz2+KgRxeWC7KlY
 cl0bEJALPaLcx03j2rZYD4pBHM6PMbldJFdcj6X3pfRaPRAUENAeig16evBIeJGoyH6AEY1Dz
 CxTSpcTJC/b0QvFRZ8Kw9/8/ac1kJXu4PAY0tl1SSgRVmo8zdDNMJweSL4KJyoj0y1nDjjHFE
 EIdMGStnLlh3Q79G2kbybWSfavqreLFYLZEYDskwYk93R+MdQ5igLBYB7qbKXeNHgBm3T5g9c
 94cd9G6IwjtSBP81Ueh12FxW/XpVUyYi4oMPCZlQTaO1NKqGwjE2RnUxwZ5lXv48SRLncm/h+
 GvS7+kqHqwu/ySndaCU2/+5o8rWdGTa2SbQrJXNjvMQjwDmpXS8Bwl1JUYvQRcat6YVU4sbbd
 Iqz8M55Kvi8prlljlQKg==
Content-Type: multipart/alternative;
 boundary="------------90507A4A5FF534103BDDFAA2"
Content-Language: en-US

--------------90507A4A5FF534103BDDFAA2
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,

I'm using bitbake to build an application and I'd like to troubleshoot
some segfaults that are taking place. I've set up gdbserver on a virtual
machine running the application and can connect. My problem is that I
cannot seem to get the image to build my binaries without stripping the
symbol table.

Whenever I run:

|objdump -t _binary_|

it shows 'no symbols' under 'SYMBOL TABLE'.

So far I've added the following to build/conf/local.conf

|EXTRA_IMAGE_FEATURES =3D "debug-tweaks dbg-pkgs tools-sdk tools-debug "|

|INHIBIT_PACKAGE_STRIP =3D "1"|

|INHIBIT_PACKAGE_DEBUG_SPLIT=3D "1"|

I also tried adding the following to bitbake.conf:

|export CFLAGS =3D "${TARGET_CFLAGS} -g"|

|export LDFLAGS =3D "${TARGET_LDFLAGS} -g"|

Strangely, the size of the binary I'm looking at has increased. Since
making these changes and the new build took much longer to run.

Running |bitbake -e _recipe_ | shows the environment of my recipe and
reflects the changes made in local.conf.

Is there a way I can look at the exact gcc command that is being run to
make sure it's not still being stripped somewhere? I can't seem to see
it in the logs

--------------90507A4A5FF534103BDDFAA2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi,<br>
    </p>
    <p>I'm using bitbake to build an application and I'd like to
      troubleshoot some segfaults that are taking place.
      I've set up gdbserver on a virtual machine running the application
      and can connect.
      My problem is that I cannot seem to get the image to build my
      binaries without stripping the symbol table.
    </p>
    <p>Whenever I run:</p>
    <p><code>objdump -t _binary_</code></p>
    <p>it shows 'no symbols' under 'SYMBOL TABLE'.</p>
    <p>So far I've added the following to build/conf/local.conf</p>
    <p><code>EXTRA_IMAGE_FEATURES = "debug-tweaks dbg-pkgs tools-sdk
        tools-debug "</code></p>
    <p><code>INHIBIT_PACKAGE_STRIP = "1"</code></p>
    <p><code>INHIBIT_PACKAGE_DEBUG_SPLIT= "1"</code></p>
    <p>I also tried adding the following to bitbake.conf:</p>
    <p><code>export CFLAGS = "${TARGET_CFLAGS} -g"</code></p>
    <p><code>export LDFLAGS = "${TARGET_LDFLAGS} -g"</code></p>
    <p>Strangely, the size of the binary I'm looking at has increased.
      Since making these changes and the new build took much longer to
      run.</p>
    <p>Running <code>bitbake -e _recipe_ </code> shows the environment
      of my recipe and reflects the changes made in local.conf.</p>
    Is there a way I can look at the exact gcc command that is being run
    to make sure it's not still being stripped somewhere? I can't seem
    to see it in the logs
  </body>
</html>

--------------90507A4A5FF534103BDDFAA2--
