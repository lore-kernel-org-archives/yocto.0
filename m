Return-Path: <kaiu@gmx.de>
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92458E006EC
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 01:33:30 -0700 (PDT)
Received: from mail-vc0-f179.google.com ([209.85.220.179]) by mail.gmx.com
	(mrgmx102) with ESMTPSA (Nemesis) id 0LgvEY-1XEunm2cXm-00oI1P for
	<yocto@yoctoproject.org>; Wed, 23 Apr 2014 10:33:28 +0200
Received: by mail-vc0-f179.google.com with SMTP id ij19so762774vcb.10
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 01:33:27 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.220.105.4 with SMTP id r4mr5960283vco.27.1398242007373; Wed,
	23 Apr 2014 01:33:27 -0700 (PDT)
Received: by 10.58.54.67 with HTTP; Wed, 23 Apr 2014 01:33:27 -0700 (PDT)
In-Reply-To: <CAMKF1sr6sSdinsXyA6SFKkCfnyBAK=iwWX=3fMKtV_mQ9hcKAQ@mail.gmail.com>
References: <CAAKMwiouz+=PX1A=Z8x61C7VcOaVQCCVf8P_kvY9HEaK-PHDPQ@mail.gmail.com>
	<CAMKF1srqDaZ_JkdBZLST-rSsCP70m0Q6xuifY3Qxg+cm8v+JAQ@mail.gmail.com>
	<CAAKMwioYCwPRP94j-N3UBELJxX2uSmf_yOjGCCaLuZRWsouiCw@mail.gmail.com>
	<CAMKF1sr6sSdinsXyA6SFKkCfnyBAK=iwWX=3fMKtV_mQ9hcKAQ@mail.gmail.com>
Date: Wed, 23 Apr 2014 10:33:27 +0200
Message-ID: <CAAKMwiqnkO26HmhknTziT99T7=P=QBcGTs+jqAXKaWj3r2RkgA@mail.gmail.com>
From: Kai Ulrich <kaiu@gmx.de>
To: Khem Raj <raj.khem@gmail.com>
X-Provags-ID: V03:K0:KVBlrF5ux4F37SulzSX1azNQMezN9HvMIdLoR7PX9MjQtygrecy
	KbOqzZ6WNjYoHk/igvsOcqClkRIV/5DPDg1xDKi+HIu+AgQT72MQwxnzFg4F26MSEcd97xj
	kxpuxovJE1nhbLK903IABd5j9y6r/knLeNMioAI4c/DGlsqVTJkRmFNbNWBeu9E9e51M+SK
	3OJ+xa0s02IIuh6Ch/KHA==
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
X-List-Received-Date: Wed, 23 Apr 2014 08:33:34 -0000
Content-Type: multipart/alternative; boundary=089e0122f33228de3b04f7b19697

--089e0122f33228de3b04f7b19697
Content-Type: text/plain; charset=UTF-8

I am using GNU Awk 4.0.2



2014-04-22 22:01 GMT+02:00 Khem Raj <raj.khem@gmail.com>:

>
> On Apr 22, 2014 12:47 PM, "Kai Ulrich" <kaiu@gmx.de> wrote:
> >
> > thanx for your interest
> > yes, it seams all right
> > gcc-Version 4.7.3 (Gentoo 4.7.3-r1 p1.4, pie-0.5.5)
> > make-Version GNU Make 3.82 Built for x86_64-pc-linux-gnu
> >
> >
> >
> > 2014-04-22 18:10 GMT+02:00 Khem Raj <raj.khem@gmail.com>:
> >
> >> On Tue, Apr 22, 2014 at 7:08 AM, Kai Ulrich <kaiu@gmx.de> wrote:
> >> >
> tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/shlib.lds:150:
> >> > syntax error
> >> > collect2: error: ld returned 1 exit status
> >> > make[2]: ***
> >> >
> [/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/libc.so]
> >> > Error 1
> >> > make[2]: Leaving directory
> >> >
> `/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/elf'
> >> > make[1]: *** [elf/subdir_lib] Error 2
> >> > make[1]: Leaving directory
> >> >
> `/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc'
> >> > make: *** [all] Error 2
> >>
> >>
> >> whats the make version on your build host which is being used here. I
> >> hope its 3.82 or newer.
> >
> >
>
> and you are using gawk and not mawk or something else
>

--089e0122f33228de3b04f7b19697
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">I am using GNU Awk 4.0.2<br></div><br></d=
iv><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">2014-04-22=
 22:01 GMT+02:00 Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@=
gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span>:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5"><p d=
ir=3D"ltr"><br>
On Apr 22, 2014 12:47 PM, &quot;Kai Ulrich&quot; &lt;<a href=3D"mailto:kaiu=
@gmx.de" target=3D"_blank">kaiu@gmx.de</a>&gt; wrote:<br>
&gt;<br>
&gt; thanx for your interest <br>
&gt; yes, it seams all right<br>
&gt; gcc-Version 4.7.3 (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) <br>
&gt; make-Version GNU Make 3.82 Built for x86_64-pc-linux-gnu<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; 2014-04-22 18:10 GMT+02:00 Khem Raj &lt;<a href=3D"mailto:raj.khem@gma=
il.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;:<br>
&gt;<br>
&gt;&gt; On Tue, Apr 22, 2014 at 7:08 AM, Kai Ulrich &lt;<a href=3D"mailto:=
kaiu@gmx.de" target=3D"_blank">kaiu@gmx.de</a>&gt; wrote:<br>
&gt;&gt; &gt; tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/bu=
ild-arm-poky-linux-gnueabi/shlib.lds:150:<br>
&gt;&gt; &gt; syntax error<br>
&gt;&gt; &gt; collect2: error: ld returned 1 exit status<br>
&gt;&gt; &gt; make[2]: ***<br>
&gt;&gt; &gt; [/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml=
/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-=
linux-gnueabi/libc.so]<br>
&gt;&gt; &gt; Error 1<br>
&gt;&gt; &gt; make[2]: Leaving directory<br>
&gt;&gt; &gt; `/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml=
/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/lib=
c/elf&#39;<br>
&gt;&gt; &gt; make[1]: *** [elf/subdir_lib] Error 2<br>
&gt;&gt; &gt; make[1]: Leaving directory<br>
&gt;&gt; &gt; `/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml=
/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/lib=
c&#39;<br>
&gt;&gt; &gt; make: *** [all] Error 2<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; whats the make version on your build host which is being used here=
. I<br>
&gt;&gt; hope its 3.82 or newer.<br>
&gt;<br>
&gt;</p>
</div></div><p dir=3D"ltr">and you are using gawk and not mawk or something=
 else</p>
</blockquote></div><br></div>

--089e0122f33228de3b04f7b19697--
