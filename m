Return-Path: <kaiu@gmx.de>
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF4BAE00474
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 12:47:14 -0700 (PDT)
Received: from mail-ve0-f174.google.com ([209.85.128.174]) by mail.gmx.com
	(mrgmx003) with ESMTPSA (Nemesis) id 0Lw1vh-1WzuSS05rJ-017mBa for
	<yocto@yoctoproject.org>; Tue, 22 Apr 2014 21:47:13 +0200
Received: by mail-ve0-f174.google.com with SMTP id oz11so9973293veb.19
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 12:47:11 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.220.101.3 with SMTP id a3mr2742825vco.31.1398196031646; Tue,
	22 Apr 2014 12:47:11 -0700 (PDT)
Received: by 10.58.54.67 with HTTP; Tue, 22 Apr 2014 12:47:11 -0700 (PDT)
In-Reply-To: <CAMKF1srqDaZ_JkdBZLST-rSsCP70m0Q6xuifY3Qxg+cm8v+JAQ@mail.gmail.com>
References: <CAAKMwiouz+=PX1A=Z8x61C7VcOaVQCCVf8P_kvY9HEaK-PHDPQ@mail.gmail.com>
	<CAMKF1srqDaZ_JkdBZLST-rSsCP70m0Q6xuifY3Qxg+cm8v+JAQ@mail.gmail.com>
Date: Tue, 22 Apr 2014 21:47:11 +0200
Message-ID: <CAAKMwioYCwPRP94j-N3UBELJxX2uSmf_yOjGCCaLuZRWsouiCw@mail.gmail.com>
From: Kai Ulrich <kaiu@gmx.de>
To: Khem Raj <raj.khem@gmail.com>
X-Provags-ID: V03:K0:AxTMot5Pq9+/5nctTol7u6n4gifZCu3+5Zn0twvqZ/XqIJXJDWy
	JbjdNDZRgFS6kNLwJZUPUMBgcO7mz85ZcuLUe21d4hS/zDPEkZgO/zNmeFgpuFXloHkk6xN
	zoc3I4N2QUOnOXQI+W1gpfS95rzV5CaH9+XzrFyQTr/JodJNd/qhLEmR6ZjqEmCrQ5nthL9
	XVxKYIspXFpuamDsUmmPQ==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: eglibc-2.18 is not compiling
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: kaiu@gmx.de
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 22 Apr 2014 19:47:17 -0000
Content-Type: multipart/alternative; boundary=047d7b3a8d6acaf45704f7a6e13a

--047d7b3a8d6acaf45704f7a6e13a
Content-Type: text/plain; charset=UTF-8

thanx for your interest
yes, it seams all right
gcc-Version 4.7.3 (Gentoo 4.7.3-r1 p1.4, pie-0.5.5)
make-Version GNU Make 3.82 Built for x86_64-pc-linux-gnu



2014-04-22 18:10 GMT+02:00 Khem Raj <raj.khem@gmail.com>:

> On Tue, Apr 22, 2014 at 7:08 AM, Kai Ulrich <kaiu@gmx.de> wrote:
> >
> tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/shlib.lds:150:
> > syntax error
> > collect2: error: ld returned 1 exit status
> > make[2]: ***
> >
> [/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/libc.so]
> > Error 1
> > make[2]: Leaving directory
> >
> `/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/elf'
> > make[1]: *** [elf/subdir_lib] Error 2
> > make[1]: Leaving directory
> >
> `/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc'
> > make: *** [all] Error 2
>
>
> whats the make version on your build host which is being used here. I
> hope its 3.82 or newer.
>

--047d7b3a8d6acaf45704f7a6e13a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">thanx for your interest <br>yes, it seams all right<br>gcc=
-Version 4.7.3 (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) <br>make-Version GNU Make =
3.82 Built for x86_64-pc-linux-gnu<br><br></div><div class=3D"gmail_extra">=
<br>
<br><div class=3D"gmail_quote">2014-04-22 18:10 GMT+02:00 Khem Raj <span di=
r=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.k=
hem@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div class=3D"">On Tue, Apr 22, 2014 at 7:08 AM, Kai Ulrich &lt;<a href=3D"=
mailto:kaiu@gmx.de">kaiu@gmx.de</a>&gt; wrote:<br>
&gt; tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-p=
oky-linux-gnueabi/shlib.lds:150:<br>
&gt; syntax error<br>
&gt; collect2: error: ld returned 1 exit status<br>
&gt; make[2]: ***<br>
&gt; [/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work=
/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnu=
eabi/libc.so]<br>
&gt; Error 1<br>
&gt; make[2]: Leaving directory<br>
&gt; `/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work=
/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/elf&#39=
;<br>
&gt; make[1]: *** [elf/subdir_lib] Error 2<br>
&gt; make[1]: Leaving directory<br>
&gt; `/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work=
/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc&#39;<br=
>
&gt; make: *** [all] Error 2<br>
<br>
<br>
</div>whats the make version on your build host which is being used here. I=
<br>
hope its 3.82 or newer.<br>
</blockquote></div><br></div>

--047d7b3a8d6acaf45704f7a6e13a--
