Return-Path: <vidal.develone@gmail.com>
Received: from mail-vb0-f50.google.com (mail-vb0-f50.google.com
	[209.85.212.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 239EBE014D7
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 14:02:10 -0700 (PDT)
Received: by mail-vb0-f50.google.com with SMTP id w15so2449754vbb.23
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2013 14:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=0oHASV2LcNSOcLlv5MBPqAD3hG5Ld0+QkodozRWaSto=;
	b=Z9wqRYnfOYtlDFoFjUlChN/s9iQXlUgpoxOJObbzw1MYZDVYofC4wyVlCHxoYTGXPp
	AozG+6VzCW713F3nRox/mp1VL/+xbmlxnrmrHigpKm2CsEMPCRpg46qzPMrnrHZpCjJu
	Vu1YBT030W6FlzYI+rBu0gVhqSyRBcCAIHqvCWz753LQHTXJ/pqT4douJ0yEPFtfew8V
	hAHAdZtCtQwPMEnmMuhD2NHTWU8wH0lm5LAzOqV2XV2W6jcWQRqqIy9IiKeVH7gLWNo6
	OmkOhIyxrjaol2XzNzHAf9FkWIgiT6Oc9AYohnFameYrzifVc/x+qvTQKVR/PhB0wl+/
	2Vog==
MIME-Version: 1.0
X-Received: by 10.52.31.36 with SMTP id x4mr8242491vdh.44.1365195728914; Fri,
	05 Apr 2013 14:02:08 -0700 (PDT)
Received: by 10.52.159.163 with HTTP; Fri, 5 Apr 2013 14:02:08 -0700 (PDT)
In-Reply-To: <DAE1825C-DECF-40F1-8C62-EBA1ADC46B7B@gmail.com>
References: <CANwz6nzAr3m8rebqwzY_KkU-JFNZUTh=Ks4HW048ugg=Q13wYA@mail.gmail.com>
	<DAE1825C-DECF-40F1-8C62-EBA1ADC46B7B@gmail.com>
Date: Fri, 5 Apr 2013 15:02:08 -0600
Message-ID: <CANwz6nwE14Fmnh2sV3wp9OCqzTEVotC4OLssA3fSRthQLqb6BQ@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: gcc enable-languages
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
X-List-Received-Date: Fri, 05 Apr 2013 21:02:10 -0000
Content-Type: multipart/alternative; boundary=bcaec51d284c788f7804d9a3660a

--bcaec51d284c788f7804d9a3660a
Content-Type: text/plain; charset=ISO-8859-1

Thanks now I get
Summary: 1 task failed:
  /home/vidal/POKY/build032713/poky/meta/recipes-devtools/gcc/
gcc-runtime_4.7.bb, do_configure
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
In the log this is what I see
ERROR: This autoconf log indicates errors, it looked at host include and/or
library paths while determining system capabilities.
Rerun configure task after fixing this. The path was
'/home/vidal/POKY/build032713/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gcc-runtime/4.7.2-r19/gcc-4.7.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libgfortran'
ERROR: Function failed: do_qa_configure
ERROR: Logfile of failure stored in:
/home/vidal/POKY/build032713/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gcc-runtime/4.7.2-r19/temp/log.do_configure.10792
NOTE: recipe gcc-runtime-4.7.2-r19: task do_configure: Failed
ERROR: Task 766
(/home/vidal/POKY/build032713/poky/meta/recipes-devtools/gcc/
gcc-runtime_4.7.bb, do_configure) failed with exit code '1'
Processing files:
kernel-modules-3.4.36+git0+80b4b5110dca5184b57e85f1e775fb006a2e85ad_c994390cfa28339cbc1ec3b56eeec83a5fa75bb7-r4.3.beagleboard
Processing files:
kernel-module-mailbox-mach-3.4.36+git0+80b4b5110dca5184b57e85f1e775fb006a2e85ad_c994390cfa28339cbc1ec3b56eeec83a5fa75bb7-r4.3.beagleboard
MACHINE=beaglebone bitbake -c clean gcc-runtime
Now I running MACHINE=beaglebone bitbake core-image-sato-sdk-ex -vDD




On Fri, Apr 5, 2013 at 11:00 AM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Apr 5, 2013, at 8:51 AM, Edward Vidal <vidal.develone@gmail.com> wrote:
>
> Hello,
> I want to add support for FORTRAN in my image.
> On target gcc -v shows --enable-languages=c,c++
> This needs to --enable-languages=c,c++,fortran.based on my host system.
> How does the variable FORTRAN in
> /home/vidal/POKY/build032813_panda/poky/meta/recipes-devtools/gcc/gcc-configure-common.inc
> get set?  Can this be done in the local.conf file?
> Does the FORTRAN ?= ",f77" this need to be FORTRAN ?= ",fortran" since we
> are building gcc4.7?
>
>
>
> yes thats a bug, I think you can submit a patch for that. in order to
> enable it fully you also need to change gcc-configure-runtime.inc
> add libgfortran to RUNTIMETARGET it would be nice if both knobs were
> turned on or off by one switch so you don't have to do it in two
> different places but such is life
>
>
> /home/vidal/POKY/build032713_panda/poky/meta/recipes-devtools/gcc/gcc-configure-common.inc
> I changed the following
>
> < LANGUAGES ?= "c,c++,fortran${JAVA}"
>
> ---
>
> > LANGUAGES ?= "c,c++${FORTRAN}${JAVA}"
> I am currently testing on a build for the  beagleboard and beaglebone
> Any and all help will be appreciated.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>

--bcaec51d284c788f7804d9a3660a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Thanks now I get <br>Summary: 1 task failed=
:<br>=A0 /home/vidal/POKY/build032713/poky/meta/recipes-devtools/gcc/<a hre=
f=3D"http://gcc-runtime_4.7.bb">gcc-runtime_4.7.bb</a>, do_configure<br>Sum=
mary: There were 2 ERROR messages shown, returning a non-zero exit code.<br=
>
</div>In the log this is what I see<br>ERROR: This autoconf log indicates e=
rrors, it looked at host include and/or library paths while determining sys=
tem capabilities.<br>Rerun configure task after fixing this. The path was &=
#39;/home/vidal/POKY/build032713/poky/build/tmp/work/armv7a-vfp-neon-poky-l=
inux-gnueabi/gcc-runtime/4.7.2-r19/gcc-4.7.2/build.arm-poky-linux-gnueabi.a=
rm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libgfortran&#39;<br>
ERROR: Function failed: do_qa_configure<br>ERROR: Logfile of failure stored=
 in: /home/vidal/POKY/build032713/poky/build/tmp/work/armv7a-vfp-neon-poky-=
linux-gnueabi/gcc-runtime/4.7.2-r19/temp/log.do_configure.10792<br>NOTE: re=
cipe gcc-runtime-4.7.2-r19: task do_configure: Failed<br>
ERROR: Task 766 (/home/vidal/POKY/build032713/poky/meta/recipes-devtools/gc=
c/<a href=3D"http://gcc-runtime_4.7.bb">gcc-runtime_4.7.bb</a>, do_configur=
e) failed with exit code &#39;1&#39;<br>Processing files: kernel-modules-3.=
4.36+git0+80b4b5110dca5184b57e85f1e775fb006a2e85ad_c994390cfa28339cbc1ec3b5=
6eeec83a5fa75bb7-r4.3.beagleboard<br>
Processing files: kernel-module-mailbox-mach-3.4.36+git0+80b4b5110dca5184b5=
7e85f1e775fb006a2e85ad_c994390cfa28339cbc1ec3b56eeec83a5fa75bb7-r4.3.beagle=
board<br></div>MACHINE=3Dbeaglebone bitbake -c clean gcc-runtime<br></div>
Now I running MACHINE=3Dbeaglebone bitbake core-image-sato-sdk-ex -vDD<br><=
br><div><div><div><div><br></div></div></div></div></div><div class=3D"gmai=
l_extra"><br><br><div class=3D"gmail_quote">On Fri, Apr 5, 2013 at 11:00 AM=
, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" targ=
et=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-word"><br><div=
><div class=3D"im"><div>On Apr 5, 2013, at 8:51 AM, Edward Vidal &lt;<a hre=
f=3D"mailto:vidal.develone@gmail.com" target=3D"_blank">vidal.develone@gmai=
l.com</a>&gt; wrote:</div>
<br><blockquote type=3D"cite"><div dir=3D"ltr"><div><div><div><div><div>Hel=
lo,<br></div>I want to add support for FORTRAN in my image.<br></div>On tar=
get gcc -v shows --enable-languages=3Dc,c++<br></div>This needs to --enable=
-languages=3Dc,c++,fortran.based on my host system.<br>


</div>How does the variable FORTRAN in /home/vidal/POKY/build032813_panda/p=
oky/meta/recipes-devtools/gcc/gcc-configure-common.inc get set?=A0 Can this=
 be done in the local.conf file?<br></div><div>Does the FORTRAN ?=3D &quot;=
,f77&quot; this need to be FORTRAN ?=3D &quot;,fortran&quot; since we are b=
uilding gcc4.7?<br>
</div></div></blockquote><div><br></div><div><br></div></div><div>yes thats=
 a bug, I think you can submit a patch for that. in order to enable it full=
y you also need to change=A0gcc-configure-runtime.inc</div><div>add libgfor=
tran to=A0RUNTIMETARGET it would be nice if both knobs were turned on or of=
f by one switch so you don&#39;t have to do it in two</div>
<div>different places but such is life</div><br><blockquote type=3D"cite"><=
div class=3D"im"><div dir=3D"ltr"><div>
/home/vidal/POKY/build032713_panda/poky/meta/recipes-devtools/gcc/gcc-confi=
gure-common.inc<br></div><div>I changed the following <br>


=09
=09
=09
	<p style=3D"margin-bottom:0in">&lt; LANGUAGES ?=3D
&quot;c,c++,fortran${JAVA}&quot;
</p><p style=3D"margin-bottom:0in">---
</p><p style=3D"margin-bottom:0in">&gt; LANGUAGES ?=3D
&quot;c,c++${FORTRAN}${JAVA}&quot;
</p>

I am currently testing on a build for the=A0 beagleboard and beaglebone<br>
</div>Any and all help will be appreciated.</div></div>
_______________________________________________<br>yocto mailing list<br><a=
 href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoprojec=
t.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" targ=
et=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div></blockquote></div><br></div>

--bcaec51d284c788f7804d9a3660a--
