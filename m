Return-Path: <vidal.develone@gmail.com>
Received: from mail-ea0-f179.google.com (mail-ea0-f179.google.com
	[209.85.215.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CA25E013B0
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2013 06:17:03 -0700 (PDT)
Received: by mail-ea0-f179.google.com with SMTP id b15so2064241eae.24
	for <yocto@yoctoproject.org>; Mon, 01 Jul 2013 06:17:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=lKJIfMIlHKwWj9hCiM4D9PR8mD253ID13gLjQod7DhM=;
	b=iDETDLqN3vXvpsrz83wezeKNU4aoEs0X0oUpVMPz4+n0wY/A9tDQE5QDTZCHKPSEUb
	ftbnR5QoL8OBTz8ng0cXY3yoQ7kmSy1+Kfwm7oUguvIoivaadmpNsLsUXqTsD25EZpnA
	3v5yV+TiknHkjWi9HgTtyVf64zuv51IAbW1eAluqwe9mo1BnUgsErXrM2C+1UUvK98JF
	H1a9d10HFHFMloP6i8hGmdcCYYRTdLzBq72Pe+94592uetfdvBjudytplz9KBRKmK+cZ
	NsvGrOEXjBpkXxazUYUbfPseMYiGxpI/rQHP67ZtU1I7ESQ0qPGQ0CPCR7RcSW1NpM87
	O9mg==
MIME-Version: 1.0
X-Received: by 10.15.93.134 with SMTP id w6mr21436238eez.25.1372684622530;
	Mon, 01 Jul 2013 06:17:02 -0700 (PDT)
Received: by 10.223.74.139 with HTTP; Mon, 1 Jul 2013 06:17:02 -0700 (PDT)
In-Reply-To: <CANwz6nxGkJQkvZv_gbP4sDpsuHOBXRqULS03Vc50a3HQ+1ktbA@mail.gmail.com>
References: <CANwz6nwTb=h0mMevpb07eHGjtaf+fKv3R7-KR=MaAhPNscQOZg@mail.gmail.com>
	<CAJTo0Lbr=eHoKyMVikEM5rkRMwqGVX187d=jU7awZqPfMo5axw@mail.gmail.com>
	<CANwz6nxGkJQkvZv_gbP4sDpsuHOBXRqULS03Vc50a3HQ+1ktbA@mail.gmail.com>
Date: Mon, 1 Jul 2013 07:17:02 -0600
Message-ID: <CANwz6nyNHGmk9oJUfwDEcDSDSUOE6WVS6cRok_fOzWunUpLe4A@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Fedora 18 CentOS 6.4 yocto difference
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
X-List-Received-Date: Mon, 01 Jul 2013 13:17:14 -0000
Content-Type: multipart/alternative; boundary=089e0160c86450b66504e0730b2f

--089e0160c86450b66504e0730b2f
Content-Type: text/plain; charset=ISO-8859-1

---------- Forwarded message ----------
From: Edward Vidal <vidal.develone@gmail.com>
Date: Mon, Jul 1, 2013 at 7:16 AM
Subject: Re: [yocto] Fedora 18 CentOS 6.4 yocto difference
To: "Burton, Ross" <ross.burton@intel.com>


/usr/bin/gfortran -Wall -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed
build/temp.linux-x86_64-2.7/numpy/linalg/lapack_litemodule.o
build/temp.linux-x86_64-2.7/numpy/linalg/python_xerbla.o -L/usr/lib64
-L/home/vidal/POKY/build062913_dylan/poky/build/tmp/sysroots/beagleboard/usr/lib
-Lbuild/temp.linux-x86_64-2.7 -llapack -lblas -lpython2.7 -lgfortran -o
build/lib.linux-x86_64-2.7/numpy/linalg/lapack_lite.so
 ERROR: Function failed: do_compile (see
/home/vidal/POKY/build062913_dylan/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/python-numpy/1.7.0-r0/temp/log.do_compile.11041
for further information)
ERROR: Task 1470
(/home/vidal/POKY/build062913_dylan/poky/meta-oe/meta-oe/recipes-devtools/python/
python-numpy_1.7.0.bb, do_compile) failed with exit code '1'
some thing the text must of strip this
Thanks



On Mon, Jul 1, 2013 at 6:47 AM, Burton, Ross <ross.burton@intel.com> wrote:

> On 1 July 2013 13:37, Edward Vidal <vidal.develone@gmail.com> wrote:
> > This is the error that I get.
> > | /usr/bin/gfortran -Wall -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed
> > build/temp.linux-x86_64-2.7/numpy/linalg/lapack_litemodule.o
> > build/temp.linux-x86_64-2.7/numpy/linalg/python_xerbla.o -L/usr/lib64
> >
> -L/home/vidal/POKY/build062913_dylan/poky/build/tmp/sysroots/beagleboard/usr/lib
> > -Lbuild/temp.linux-x86_64-2.7 -llapack -lblas -lpython2.7 -lgfortran -o
> > build/lib.linux-x86_64-2.7/numpy/linalg/lapack_lite.so
> > | ERROR: Function failed: do_compile (see
> >
> /home/vidal/POKY/build062913_dylan/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/python-numpy/1.7.0-r0/temp/log.do_compile.11041
> > for further information)
> > ERROR: Task 1470
> >
> (/home/vidal/POKY/build062913_dylan/poky/meta-oe/meta-oe/recipes-devtools/python/
> python-numpy_1.7.0.bb,
> > do_compile) failed with exit code '1'
>
> That's not the error, all we have there is a build command and bitbake
> concluding that there was an error.  Because we do parallel make
> builds, you'll have to scroll back through the compile log to get the
> actual error.  Just sending the entire log to a pastebin will be
> useful.
>
> Ross
>

--089e0160c86450b66504e0730b2f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote">---------- Forwarded me=
ssage ----------<br>From: <b class=3D"gmail_sendername">Edward Vidal</b> <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:vidal.develone@gmail.com">vidal.devel=
one@gmail.com</a>&gt;</span><br>
Date: Mon, Jul 1, 2013 at 7:16 AM<br>Subject: Re: [yocto] Fedora 18 CentOS =
6.4 yocto difference<br>To: &quot;Burton, Ross&quot; &lt;<a href=3D"mailto:=
ross.burton@intel.com">ross.burton@intel.com</a>&gt;<br><br><br><div dir=3D=
"ltr">
<div><div class=3D"im"><div>/usr/bin/gfortran -Wall -Wl,-O1 -Wl,--hash-styl=
e=3Dgnu -Wl,--as-needed build/temp.linux-x86_64-2.7/numpy/linalg/lapack_lit=
emodule.o build/temp.linux-x86_64-2.7/numpy/linalg/python_xerbla.o -L/usr/l=
ib64 -L/home/vidal/POKY/build062913_dylan/poky/build/tmp/sysroots/beagleboa=
rd/usr/lib -Lbuild/temp.linux-x86_64-2.7 -llapack -lblas -lpython2.7 -lgfor=
tran -o build/lib.linux-x86_64-2.7/numpy/linalg/lapack_lite.so<br>

=A0ERROR: Function failed: do_compile (see /home/vidal/POKY/build062913_dyl=
an/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/python-numpy/1.7.=
0-r0/temp/log.do_compile.11041 for further information)<br>ERROR: Task 1470=
 (/home/vidal/POKY/build062913_dylan/poky/meta-oe/meta-oe/recipes-devtools/=
python/<a href=3D"http://python-numpy_1.7.0.bb" target=3D"_blank">python-nu=
mpy_1.7.0.bb</a>, do_compile) failed with exit code &#39;1&#39;<br>

</div></div>some thing the text must of strip this <br></div>Thanks<br><br>=
</div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><b=
r><br><div class=3D"gmail_quote">On Mon, Jul 1, 2013 at 6:47 AM, Burton, Ro=
ss <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D=
"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On 1 July 2013 13:37, Edward Vidal &lt;=
<a href=3D"mailto:vidal.develone@gmail.com" target=3D"_blank">vidal.develon=
e@gmail.com</a>&gt; wrote:<br>


&gt; This is the error that I get.<br>
&gt; | /usr/bin/gfortran -Wall -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-need=
ed<br>
&gt; build/temp.linux-x86_64-2.7/numpy/linalg/lapack_litemodule.o<br>
&gt; build/temp.linux-x86_64-2.7/numpy/linalg/python_xerbla.o -L/usr/lib64<=
br>
&gt; -L/home/vidal/POKY/build062913_dylan/poky/build/tmp/sysroots/beagleboa=
rd/usr/lib<br>
&gt; -Lbuild/temp.linux-x86_64-2.7 -llapack -lblas -lpython2.7 -lgfortran -=
o<br>
&gt; build/lib.linux-x86_64-2.7/numpy/linalg/lapack_lite.so<br>
&gt; | ERROR: Function failed: do_compile (see<br>
&gt; /home/vidal/POKY/build062913_dylan/poky/build/tmp/work/armv7a-vfp-neon=
-poky-linux-gnueabi/python-numpy/1.7.0-r0/temp/log.do_compile.11041<br>
&gt; for further information)<br>
&gt; ERROR: Task 1470<br>
&gt; (/home/vidal/POKY/build062913_dylan/poky/meta-oe/meta-oe/recipes-devto=
ols/python/<a href=3D"http://python-numpy_1.7.0.bb" target=3D"_blank">pytho=
n-numpy_1.7.0.bb</a>,<br>
&gt; do_compile) failed with exit code &#39;1&#39;<br>
<br>
</div>That&#39;s not the error, all we have there is a build command and bi=
tbake<br>
concluding that there was an error. =A0Because we do parallel make<br>
builds, you&#39;ll have to scroll back through the compile log to get the<b=
r>
actual error. =A0Just sending the entire log to a pastebin will be<br>
useful.<br>
<span><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>
</div></div></div><br></div>

--089e0160c86450b66504e0730b2f--
