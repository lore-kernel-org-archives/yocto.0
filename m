Return-Path: <kaiu@gmx.de>
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42D20E00B76
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 11:14:40 -0700 (PDT)
Received: from mail-ve0-f170.google.com ([209.85.128.170]) by mail.gmx.com
	(mrgmx003) with ESMTPSA (Nemesis) id 0Mg42v-1WI7tT205l-00NU9V for
	<yocto@yoctoproject.org>; Thu, 24 Apr 2014 20:14:38 +0200
Received: by mail-ve0-f170.google.com with SMTP id pa12so3443703veb.29
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 11:14:37 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.220.249.6 with SMTP id mi6mr1595047vcb.33.1398363277216;
	Thu, 24 Apr 2014 11:14:37 -0700 (PDT)
Received: by 10.58.54.67 with HTTP; Thu, 24 Apr 2014 11:14:37 -0700 (PDT)
In-Reply-To: <CAAKMwiqnkO26HmhknTziT99T7=P=QBcGTs+jqAXKaWj3r2RkgA@mail.gmail.com>
References: <CAAKMwiouz+=PX1A=Z8x61C7VcOaVQCCVf8P_kvY9HEaK-PHDPQ@mail.gmail.com>
	<CAMKF1srqDaZ_JkdBZLST-rSsCP70m0Q6xuifY3Qxg+cm8v+JAQ@mail.gmail.com>
	<CAAKMwioYCwPRP94j-N3UBELJxX2uSmf_yOjGCCaLuZRWsouiCw@mail.gmail.com>
	<CAMKF1sr6sSdinsXyA6SFKkCfnyBAK=iwWX=3fMKtV_mQ9hcKAQ@mail.gmail.com>
	<CAAKMwiqnkO26HmhknTziT99T7=P=QBcGTs+jqAXKaWj3r2RkgA@mail.gmail.com>
Date: Thu, 24 Apr 2014 20:14:37 +0200
Message-ID: <CAAKMwioQgwSZr5rf+1rd_PWO14ts8j=YgAbn2LOrRr6ViRjE4g@mail.gmail.com>
From: Kai Ulrich <kaiu@gmx.de>
To: Khem Raj <raj.khem@gmail.com>
X-Provags-ID: V03:K0:SNvMZAnKlNU/MVrRax43bx5c62ALV8dV9rBSigd5GchVEJZ1Smu
	geYSItfIomAin3fNJlRXECLMxx/W4ni6TYA7BF4AUvv4ADP07r6rsU0fuT+fqhQhpqJEuct
	DOEjKULuw0x8u8J1O4x/EXlD6LJog6s4uAIoVCLHjWSARR9E8w4sK+EKtsFu8tks5vgwIqx
	aCiKbIqPq8rxiC8GJpKxw==
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
X-List-Received-Date: Thu, 24 Apr 2014 18:14:40 -0000
Content-Type: multipart/alternative; boundary=089e013a062c67d19904f7cdd208

--089e013a062c67d19904f7cdd208
Content-Type: text/plain; charset=UTF-8

Hi,

good news  tried it with
- GNU Awk 4.1.1, API: 1.1
- GNU Make 4.0

it worked fine.
Thanx


2014-04-23 10:33 GMT+02:00 Kai Ulrich <kaiu@gmx.de>:

> I am using GNU Awk 4.0.2
>
>
>
> 2014-04-22 22:01 GMT+02:00 Khem Raj <raj.khem@gmail.com>:
>
>
>> On Apr 22, 2014 12:47 PM, "Kai Ulrich" <kaiu@gmx.de> wrote:
>> >
>> > thanx for your interest
>> > yes, it seams all right
>> > gcc-Version 4.7.3 (Gentoo 4.7.3-r1 p1.4, pie-0.5.5)
>> > make-Version GNU Make 3.82 Built for x86_64-pc-linux-gnu
>> >
>> >
>> >
>> > 2014-04-22 18:10 GMT+02:00 Khem Raj <raj.khem@gmail.com>:
>> >
>> >> On Tue, Apr 22, 2014 at 7:08 AM, Kai Ulrich <kaiu@gmx.de> wrote:
>> >> >
>> tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/shlib.lds:150:
>> >> > syntax error
>> >> > collect2: error: ld returned 1 exit status
>> >> > make[2]: ***
>> >> >
>> [/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/libc.so]
>> >> > Error 1
>> >> > make[2]: Leaving directory
>> >> >
>> `/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/elf'
>> >> > make[1]: *** [elf/subdir_lib] Error 2
>> >> > make[1]: Leaving directory
>> >> >
>> `/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc'
>> >> > make: *** [all] Error 2
>> >>
>> >>
>> >> whats the make version on your build host which is being used here. I
>> >> hope its 3.82 or newer.
>> >
>> >
>>
>> and you are using gawk and not mawk or something else
>>
>
>

--089e013a062c67d19904f7cdd208
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br></div>good news=C2=A0 tried it w=
ith <br>- GNU Awk 4.1.1, API: 1.1<br>- GNU Make 4.0<br><br></div>it worked =
fine.<br></div>Thanx <div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">
2014-04-23 10:33 GMT+02:00 Kai Ulrich <span dir=3D"ltr">&lt;<a href=3D"mail=
to:kaiu@gmx.de" target=3D"_blank">kaiu@gmx.de</a>&gt;</span>:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">
<div class=3D""><div dir=3D"ltr"><div dir=3D"ltr">I am using GNU Awk 4.0.2<=
br></div><br></div></div><div class=3D"gmail_extra"><br><br><div class=3D"g=
mail_quote">2014-04-22 22:01 GMT+02:00 Khem Raj <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&g=
t;</span>:<div>
<div class=3D"h5"><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div><p dir=3D"ltr"><br>
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
</blockquote></div></div></div><br></div>
</blockquote></div><br></div></div>

--089e013a062c67d19904f7cdd208--
