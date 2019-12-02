Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.8399.1575321839909972515
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 13:24:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HAvp62gN;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: waynli329@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B49BE01081; Mon,  2 Dec 2019 13:23:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (waynli329[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.196 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com [209.85.166.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52A87E0107D
	for <yocto@yoctoproject.org>; Mon,  2 Dec 2019 13:23:58 -0800 (PST)
Received: by mail-il1-f196.google.com with SMTP id t9so1093361iln.4
        for <yocto@yoctoproject.org>; Mon, 02 Dec 2019 13:23:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=CDEloTuG5cKJPNnBy3BfuP+tFFQQltdT8xd+UlR4RsQ=;
        b=HAvp62gNUIfEEPZMvJ2dDNYYnfW8KKwbJKat9FAD8pH0huakOgNvIMX4+w11J6WqSh
         49h2hJlpjC42ZGd8j0QvmOW054GtaDnWCRwRTWF+3B5xaiqLDYYAx/P0cE2r8Lyz9LU6
         Ldm2VFaSDTIr35K/iO8XCxUjqmIJ+YfepLP4kEqueh9gHMyvKm1AqTqkN8lDsZ+NZ1me
         M7Wrh39U5VMcURsmHIoeP7EyzkoIEUT3yDTdJ74YsrTcVxLqCP5qRgmMKbmP6SIQkP4N
         TKdBy3gfQQtDkQPFA+EwUxWcEC05wwJQLRmdUiq0p0mHa0d0IJp1g6bj2VbJpqQwOXQo
         FwkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=CDEloTuG5cKJPNnBy3BfuP+tFFQQltdT8xd+UlR4RsQ=;
        b=FGaJ+dW+ux39JordiUC59/nTfJAVYaArJ8BZFhfONGePIKxuhZvIN/23hEOhuSFwY6
         LpJ6+aw1hTvbpyyZY4jJvJgINkMMw3Ksujwn+MGduHoC2ZV/ep/fBpVZqN6CM7uVelbG
         HzgMiEOthdNsGEKmHdiSwH8rWR7tx3f2073izqishMi+/lEUfS1eFjHKINelDCVGa/sZ
         8E3NQLyw4qydu5+xZKnpK2Uaf7B8d0bq8mGEr4+IRTkwRV9l/u8KOmNFiygp8uCOZFwC
         6qJZlZPWJKZEguzZIyxXh7Mrq+48w0spUb9FZ/Y16sl+CsXENFOyjsWu5C1BCnre1w/C
         cXTw==
X-Gm-Message-State: APjAAAVdw2aEQeakeECe9PfVbYwU+1Y1hWIMsbL2UrZIJbsrONKJqJIt
	bRR/hh1oQk+YXohPCv+U/286gRJEzDRjalYAGtwpg8Fd
X-Google-Smtp-Source: APXvYqzjWSuqPMAouNLIZ9gAs67J5MyJBTtRKaH/42aU3gbTuhVtGPjrDIIYR30EJGfoYiG7bXO8xtQ5JGHpH7Ss4oo=
X-Received: by 2002:a92:d5cf:: with SMTP id d15mr1056977ilq.306.1575321837537;
 Mon, 02 Dec 2019 13:23:57 -0800 (PST)
MIME-Version: 1.0
From: "Wayne Li" <waynli329@gmail.com>
Date: Mon, 2 Dec 2019 21:23:46 +0000
Message-ID: <CAM2K0nqqNemNd0xoHQK164qjP2UwTJt4GS6A5PDyKN0GWmWkQg@mail.gmail.com>
Subject: KVM Kernel Module not being built for Yocto Kernel
To: kvm@vger.kernel.org, kvm-ppc@vger.kernel.org, 
	bitbake-devel <bitbake-devel@lists.openembedded.org>, 
	Yocto Project Discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000888f870598bf32fe"

--000000000000888f870598bf32fe
Content-Type: text/plain; charset="UTF-8"

Dear KVM community,

First of all I'd like mention I've posted this question on the Yocto
mailing list as well as the KVM mailing list because my question has huge
ties to the bitbake process (a concept related to the Yocto project).
Though I believe I'm mainly addressing the KVM community because my problem
is more directly related to the intricacies of the KVM build process.

So I am trying to build the kvm-kmod from source and I'm running into an
issue where the compilation doesn't produce any kernel modules.  But before
I describe my issue and question any further, here's a little background
information on my current endeavour.

My goal right now is to get KVM to work on a T4240RDB running on a
Yocto-based kernel.  For those of you who don't know what a Yocto kernel
is, it is a kernel that you can build/customize yourself using a program
called bitbake.  Anyway, the KVM kernel modules are supposed to be included
in the Yocto kernel by default but they aren't there.  And no tweaking of
the configuration for the bitbake process to build the Yocto kernel has
made the KVM kernel modules appear in the kernel (I've tried pretty much
everything!  Just search my name in the Yocto mailing list archive
haha...).  So my final solution was to download the kvm-kmod source code
and write a custom recipe to bitbake it into the kernel module (in layman
terms this means I just download the code and write a "recipe" to tell
bitbake how to compile the kvm-kmod source code and insert the output files
into the kernel).  Here's the recipe that I wrote for this:

LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=c616d0e7924e9e78ee192d99a3b26fbd"

inherit module

SRC_URI =
"file:///homead/QorIQ-SDK-V2.0-20160527-yocto/sources/meta-virtualization/recipes-kernel/kvm-kmodule/kvm-kmod-3.10.21.tar.bz2"

S = "${WORKDIR}/kvm-kmod-3.10.21"

do_configure() {
    ./configure --arch=ppc64
--kerneldir=/homead/QorIQ-SDK-V2.0-20160527-yocto/build_t4240rdb-64b/tmp/work/t4240rdb_64b-fsl-linux/kernel-devsrc/1.0-r0/image/usr/src/kernel
}

FILES_${PN} += "/lib/modules/4.1.8-rt8+gbd51baf"

Anyway when I run "bitbake kvm-kmod", it runs fine with no errors.  This
runs the recipe I wrote (I conveniently named my recipe kvm-kmod) which
runs the configure file present in the kvm-kmod source code and then runs
make.  In other words I ran make on the kvm-kmod source code with no
errors.  But the problem is there is no kvm.ko or anything like that
anywhere in my project code.

Compiling the kvm-kmod source code *is* supposed to produce kvm kernel
modules right?  I mean kvm-kmod literally stands for kvm kernel module?
Could I have forgotten to do something when building the kvm-kmod source
code?  Or maybe my problem has something to do with my recipe?  Let me know
your thoughts.

-Thanks!, Wayne Li

--000000000000888f870598bf32fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear KVM community,</div><div><br></div><div>First of=
 all I&#39;d like mention I&#39;ve posted this question on the Yocto mailin=
g list as well as the KVM mailing list because my question has huge ties to=
 the bitbake process (a concept related to the Yocto project).=C2=A0 Though=
 I believe I&#39;m mainly addressing the KVM community because my problem i=
s more directly related to the intricacies of the KVM build process.<br></d=
iv><div><br></div><div>So I am trying to build the kvm-kmod from source and=
 I&#39;m running into an issue where the compilation doesn&#39;t produce an=
y kernel modules.=C2=A0 But before I describe my issue and question any fur=
ther, here&#39;s a little background information on my current endeavour.</=
div><div><br></div><div>My goal right now is to get KVM to work on a T4240R=
DB running on a Yocto-based kernel.=C2=A0 For those of you who don&#39;t kn=
ow what a Yocto kernel is, it is a kernel that you can build/customize your=
self using a program called bitbake.=C2=A0 Anyway, the KVM kernel modules a=
re supposed to be included in the Yocto kernel by default but they aren&#39=
;t there.=C2=A0 And no tweaking of the configuration for the bitbake proces=
s to build the Yocto kernel has made the KVM kernel modules appear in the k=
ernel (I&#39;ve tried pretty much everything!=C2=A0 Just search my name in =
the Yocto mailing list archive haha...).=C2=A0 So my final solution was to =
download the kvm-kmod source code and write a custom recipe to bitbake it i=
nto the kernel module (in layman terms this means I just download the code =
and write a &quot;recipe&quot; to tell bitbake how to compile the kvm-kmod =
source code and insert the output files into the kernel).=C2=A0 Here&#39;s =
the recipe that I wrote for this:</div><div><br></div><div style=3D"margin-=
left:40px">LICENSE =3D &quot;GPLv2&quot;<br>LIC_FILES_CHKSUM =3D &quot;file=
://COPYING;md5=3Dc616d0e7924e9e78ee192d99a3b26fbd&quot;<br><br>inherit modu=
le<br><br>SRC_URI =3D &quot;file:///homead/QorIQ-SDK-V2.0-20160527-yocto/so=
urces/meta-virtualization/recipes-kernel/kvm-kmodule/kvm-kmod-3.10.21.tar.b=
z2&quot;<br><br>S =3D &quot;${WORKDIR}/kvm-kmod-3.10.21&quot;<br><br>do_con=
figure() {<br>=C2=A0 =C2=A0 ./configure --arch=3Dppc64 --kerneldir=3D/homea=
d/QorIQ-SDK-V2.0-20160527-yocto/build_t4240rdb-64b/tmp/work/t4240rdb_64b-fs=
l-linux/kernel-devsrc/1.0-r0/image/usr/src/kernel<br>}<br><br>FILES_${PN} +=
=3D &quot;/lib/modules/4.1.8-rt8+gbd51baf&quot;</div><div style=3D"margin-l=
eft:40px"><br></div><div>Anyway when I run &quot;bitbake kvm-kmod&quot;, it=
 runs fine with no errors.=C2=A0 This runs the recipe I wrote (I convenient=
ly named my recipe kvm-kmod) which runs the configure file present in the k=
vm-kmod source code and then runs make.=C2=A0 In other words I ran make on =
the kvm-kmod source code with no errors.=C2=A0 But the problem is there is =
no kvm.ko or anything like that anywhere in my project code.</div><div><br>=
</div><div>Compiling the kvm-kmod source code <i>is</i> supposed to produce=
 kvm kernel modules right?=C2=A0 I mean kvm-kmod literally stands for kvm k=
ernel module?=C2=A0 Could I have forgotten to do something when building th=
e kvm-kmod source code?=C2=A0 Or maybe my problem has something to do with =
my recipe?=C2=A0 Let me know your thoughts.</div><div><br></div><div>-Thank=
s!, Wayne Li<br></div></div>

--000000000000888f870598bf32fe--
