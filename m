Return-Path: <vidal.develone@gmail.com>
Received: from mail-qe0-f43.google.com (mail-qe0-f43.google.com
	[209.85.128.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93C66E01653
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 08:05:09 -0700 (PDT)
Received: by mail-qe0-f43.google.com with SMTP id nc12so678619qeb.2
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 08:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=IZ0LYMZUp9ESUfLWnrlMU83WcRp+fC5Q4XcLCOjVwV8=;
	b=k8BiTogVyEBr4SyCy0k0Jd1IV6PSieHPNMP//3RtoDUDLbNBaJTwnjcYEvLcjiQfOt
	jYAw3+GQtG+EV4Pd/coxyIwCUc64rLOZG629G9AyJmW3Xe1Uv9wVT0lhhA9J3YOKl4pw
	Go3mFmOrQo0m3EYrBU5gKuOfX4sytHnt33u10epI0+X81gxqa7t7tl6gqZinF4d0lhCP
	EVxQhVvA22u9n+2hTK4RZyw4MK3SgsSkO6FK18krjkEUXXzBrV5qqu52oDnUYj5Qq0gI
	F5ffqlg3ayqqsjRnF6YnLfUjNeACuWePt+Ab9dorYNJEoM7habvtGvqJUF9dgPxqRYqo
	/upw==
MIME-Version: 1.0
X-Received: by 10.49.12.14 with SMTP id u14mr4728098qeb.74.1382022308055; Thu,
	17 Oct 2013 08:05:08 -0700 (PDT)
Received: by 10.96.26.37 with HTTP; Thu, 17 Oct 2013 08:05:07 -0700 (PDT)
In-Reply-To: <CANwz6nztSJxx5NmTqy_D2jSDgKeFRT0y7Jj4Z6QjenCjTbvZug@mail.gmail.com>
References: <CANwz6nz_dzPR9L2i39BXCSTHgWK+kLGs6ie-y806rBi-VMTcSw@mail.gmail.com>
	<6C2F2091-CD52-4D83-AE39-80B5B5E32C62@gmail.com>
	<CANwz6nztSJxx5NmTqy_D2jSDgKeFRT0y7Jj4Z6QjenCjTbvZug@mail.gmail.com>
Date: Thu, 17 Oct 2013 09:05:07 -0600
Message-ID: <CANwz6nzqUicXUPJR=4VFTuApCDv8F4ij-pRDsveDAoiU=-q19Q@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-xilinx
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
X-List-Received-Date: Thu, 17 Oct 2013 15:05:13 -0000
Content-Type: multipart/alternative; boundary=047d7b6daa48be50f204e8f124d1

--047d7b6daa48be50f204e8f124d1
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I got the following error.
DEBUG: Executing shell function do_compile
NOTE: make -C
/home/vidal/POKY/build101613_zedboard/poky/build/tmp/sysroots/zedboard-zynq7/usr/src/kernel/tools/perf
O=/home/vidal/POKY/build101613_zedboard/poky/build/tmp/work/zedboard_zynq7-poky-linux-gnueabi/perf/1.0-r8/perf-1.0
CROSS_COMPILE=arm-poky-linux-gnueabi- ARCH=arm
CC=arm-poky-linux-gnueabi-gcc  -march=armv7-a -mthumb-interwork
-mfloat-abi=softfp -mfpu=neon
--sysroot=/home/vidal/POKY/build101613_zedboard/poky/build/tmp/sysroots/zedboard-zynq7
AR=arm-poky-linux-gnueabi-ar perfexecdir=/usr/lib/perf NO_GTK2=1 NO_DWARF=1
prefix=/usr bindir=/usr/bin sharedir=/usr/share sysconfdir=/etc
perfexecdir=/usr/lib/perf/perf-core ETC_PERFCONFIG=../etc sharedir=share
mandir=share/man infodir=share/info all
    CHK -fstack-protector-all
    CHK -Wstack-protector
    CHK -Wvolatile-register-var
    CHK bionic
    CHK libelf
    CHK libdw
make: Entering directory
`/home/vidal/POKY/build101613_zedboard/poky/build/tmp/sysroots/zedboard-zynq7/usr/src/kernel/tools/perf'
Makefile:554: No libdw.h found or old libdw.h found or elfutils is older
than 0.138, disables dwarf support. Please install new
elfutils-devel/libdw-dev
    CHK libunwind
Makefile:570: No libunwind found, disabling post unwind support. Please
install libunwind-dev[el] >= 0.99
I installed libunwind-devel-1.0.1-5.fc18.x86_64
Is this a zedboard-zynq specific error?  Is this an error in building the
kernel?
 I did not see this when building for the beagleboard. I installed
libunwind-devel-1.0.1-5.fc18.x86_64
I removed the package libunwind-devel-1.0.1-5.fc18.x86_64 since nothing
improved with the package installed.
I am in the process of running a clean build after  all repository were
loaded in clean folder.
I appreciate any and all help.
Regards


On Wed, Oct 16, 2013 at 5:06 PM, Edward Vidal <vidal.develone@gmail.com>wrote:

> Hello Khem,
> Thanks for the help after modifying my local.conf
> MACHINE ?= "zedboard-zynq7"
> My build "MACHINE=zedboard-zynq7 bitbake core-image-sato" is in the
> process now 295 of 5076 tasks
> should take a short time to complete.
> regards
>
>
>
> On Wed, Oct 16, 2013 at 4:45 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>>
>> On Oct 16, 2013, at 2:57 PM, Edward Vidal <vidal.develone@gmail.com>
>> wrote:
>>
>> > Hello,
>> > I built a zedboard core-image-sato on 09/21/13 with meta-xilinx at that
>> time I had the following folders.
>> >
>> > meta-kc705
>> > meta-zc702
>> > meta-zedboard
>> >
>> > Build Configuration:
>> > BB_VERSION        = "1.19.1"
>> > BUILD_SYS         = "x86_64-linux"
>> > NATIVELSBSTRING   = "Fedora-18"
>> > TARGET_SYS        = "arm-poky-linux-gnueabi"
>> > MACHINE           = "zedboard"
>> > DISTRO            = "poky"
>> > DISTRO_VERSION    = "1.4+snapshot-20130921"
>> > TUNE_FEATURES     = " armv7a vfp neon zynq"
>> > TARGET_FPU        = "vfp-neon"
>> > meta
>> > meta-yocto        =
>> "(nobranch):3dee534f1e25109e0bdb681de0746c336f4b8840"
>> > meta-xilinx
>> > meta-kc705
>> > meta-zc702
>> > meta-zedboard     = "master:46f4c79d6d55b556a90bb0fd89c2c09acf2aebff"
>> > meta-yocto-bsp    =
>> "(nobranch):3dee534f1e25109e0bdb681de0746c336f4b8840"
>> >
>> > With the dora release I did a new clone of git://
>> git.yoctoproject.org/meta-xilinx
>> > now I do not see
>> > meta-kc705
>> > meta-zc702
>> > meta-zedboard
>> >
>> > When I execute MACHINE=zedboard bitbake core-image-sato
>> > ERROR:  OE-core's config sanity checker detected a potential
>> misconfiguration.
>> >     Either fix the cause of this error or at your own risk disable the
>> checker (see sanity.conf).
>> >     Following is the list of potential problems / advisories:
>> >
>> >     Please set a valid MACHINE in your local.conf or environment
>> >
>> > ERROR: Execution of event handler 'check_sanity_eventhandler' failed
>> > In my local.conf I have the following.
>> >
>> > MACHINE ?= "zedboard"
>> >
>> > bblayers.conf
>> > # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
>> > # changes incompatibly
>> > LCONF_VERSION = "6"
>> >
>> > BBPATH = "${TOPDIR}"
>> > BBFILES ?= ""
>> >
>> > BBLAYERS ?= " \
>> >   /home/vidal/POKY/build101613_zedboard/poky/meta \
>> >   /home/vidal/POKY/build101613_zedboard/poky/meta-yocto \
>> >   /home/vidal/POKY/build101613_zedboard/poky/meta-xilinx \
>> >   /home/vidal/POKY/build101613_zedboard/poky/meta-yocto-bsp \
>> >   "
>> > BBLAYERS_NON_REMOVABLE ?= " \
>> >   /home/vidal/POKY/build101613_zedboard/poky/meta \
>> >   /home/vidal/POKY/build101613_zedboard/poky/meta-yocto \
>> >   "
>> > Any help will be appreciated.
>> > Regards
>>
>> it seems like layer went thru some restructuring e.g. see
>> commit d9617006376d73e37f1db17857ee06c24e6b7c03
>> Author: Nathan Rossi <nathan.rossi@xilinx.com>
>> Date:   Fri Aug 2 12:41:14 2013 +1000
>>
>>     meta-*: Remove deprecated sublayers
>>
>>     * The machines supported in the sublayer BSPs are now supported in
>> the base
>>       meta-xilinx layer, these sublayers are no longer required.
>>     * Relevant documentation has also been relocated into
>> meta-xilinx/docs/*.
>>
>>
>>
>> So may be zedboard -> zedboard-zynq7
>>
>>
>> >
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--047d7b6daa48be50f204e8f124d1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Hello,<br></div>I got t=
he following error.<br>DEBUG: Executing shell function do_compile<br>NOTE: =
make -C /home/vidal/POKY/build101613_zedboard/poky/build/tmp/sysroots/zedbo=
ard-zynq7/usr/src/kernel/tools/perf O=3D/home/vidal/POKY/build101613_zedboa=
rd/poky/build/tmp/work/zedboard_zynq7-poky-linux-gnueabi/perf/1.0-r8/perf-1=
.0 CROSS_COMPILE=3Darm-poky-linux-gnueabi- ARCH=3Darm CC=3Darm-poky-linux-g=
nueabi-gcc=A0 -march=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=
=3Dneon --sysroot=3D/home/vidal/POKY/build101613_zedboard/poky/build/tmp/sy=
sroots/zedboard-zynq7 AR=3Darm-poky-linux-gnueabi-ar perfexecdir=3D/usr/lib=
/perf NO_GTK2=3D1 NO_DWARF=3D1 prefix=3D/usr bindir=3D/usr/bin sharedir=3D/=
usr/share sysconfdir=3D/etc perfexecdir=3D/usr/lib/perf/perf-core ETC_PERFC=
ONFIG=3D../etc sharedir=3Dshare mandir=3Dshare/man infodir=3Dshare/info all=
<br>
=A0=A0=A0 CHK -fstack-protector-all<br>=A0=A0=A0 CHK -Wstack-protector<br>=
=A0=A0=A0 CHK -Wvolatile-register-var<br>=A0=A0=A0 CHK bionic<br>=A0=A0=A0 =
CHK libelf<br>=A0=A0=A0 CHK libdw<br>make: Entering directory `/home/vidal/=
POKY/build101613_zedboard/poky/build/tmp/sysroots/zedboard-zynq7/usr/src/ke=
rnel/tools/perf&#39;<br>
Makefile:554: No libdw.h found or old libdw.h found or elfutils is older th=
an 0.138, disables dwarf support. Please install new elfutils-devel/libdw-d=
ev<br>=A0=A0=A0 CHK libunwind<br>Makefile:570: No libunwind found, disablin=
g post unwind support. Please install libunwind-dev[el] &gt;=3D 0.99<br>
</div>I installed libunwind-devel-1.0.1-5.fc18.x86_64<br></div>Is this a ze=
dboard-zynq specific error?=A0 Is this an error in building the kernel?<br>=
=A0I did not see this when building for the beagleboard. I installed libunw=
ind-devel-1.0.1-5.fc18.x86_64<br>
</div>I removed the package libunwind-devel-1.0.1-5.fc18.x86_64 since nothi=
ng improved with the package installed.<br></div>I am in the process of run=
ning a clean build after=A0 all repository were loaded in clean folder.<br>
</div>I appreciate any and all help.<br></div>Regards<br></div><div class=
=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed, Oct 16, 2013 at=
 5:06 PM, Edward Vidal <span dir=3D"ltr">&lt;<a href=3D"mailto:vidal.develo=
ne@gmail.com" target=3D"_blank">vidal.develone@gmail.com</a>&gt;</span> wro=
te:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div>Hello Khem,<=
br></div>Thanks for the help after modifying my local.conf <br>MACHINE ?=3D=
 &quot;zedboard-zynq7&quot;<br>
</div>My build &quot;MACHINE=3Dzedboard-zynq7 bitbake core-image-sato&quot;=
 is in the process now 295 of 5076 tasks<br>
</div>should take a short time to complete.<br>regards <br><div><div><div><=
br></div></div></div></div><div class=3D"HOEnZb"><div class=3D"h5"><div cla=
ss=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed, Oct 16, 2013 =
at 4:45 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail=
.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div><br>
On Oct 16, 2013, at 2:57 PM, Edward Vidal &lt;<a href=3D"mailto:vidal.devel=
one@gmail.com" target=3D"_blank">vidal.develone@gmail.com</a>&gt; wrote:<br=
>
<br>
&gt; Hello,<br>
&gt; I built a zedboard core-image-sato on 09/21/13 with meta-xilinx at tha=
t time I had the following folders.<br>
&gt;<br>
&gt; meta-kc705<br>
&gt; meta-zc702<br>
&gt; meta-zedboard<br>
&gt;<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.19.1&quot;<br>
&gt; BUILD_SYS =A0 =A0 =A0 =A0 =3D &quot;x86_64-linux&quot;<br>
&gt; NATIVELSBSTRING =A0 =3D &quot;Fedora-18&quot;<br>
&gt; TARGET_SYS =A0 =A0 =A0 =A0=3D &quot;arm-poky-linux-gnueabi&quot;<br>
&gt; MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;zedboard&quot;<br>
&gt; DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<br>
&gt; DISTRO_VERSION =A0 =A0=3D &quot;1.4+snapshot-20130921&quot;<br>
&gt; TUNE_FEATURES =A0 =A0 =3D &quot; armv7a vfp neon zynq&quot;<br>
&gt; TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp-neon&quot;<br>
&gt; meta<br>
&gt; meta-yocto =A0 =A0 =A0 =A0=3D &quot;(nobranch):3dee534f1e25109e0bdb681=
de0746c336f4b8840&quot;<br>
&gt; meta-xilinx<br>
&gt; meta-kc705<br>
&gt; meta-zc702<br>
&gt; meta-zedboard =A0 =A0 =3D &quot;master:46f4c79d6d55b556a90bb0fd89c2c09=
acf2aebff&quot;<br>
&gt; meta-yocto-bsp =A0 =A0=3D &quot;(nobranch):3dee534f1e25109e0bdb681de07=
46c336f4b8840&quot;<br>
&gt;<br>
&gt; With the dora release I did a new clone of git://<a href=3D"http://git=
.yoctoproject.org/meta-xilinx" target=3D"_blank">git.yoctoproject.org/meta-=
xilinx</a><br>
&gt; now I do not see<br>
&gt; meta-kc705<br>
&gt; meta-zc702<br>
&gt; meta-zedboard<br>
&gt;<br>
&gt; When I execute MACHINE=3Dzedboard bitbake core-image-sato<br>
&gt; ERROR: =A0OE-core&#39;s config sanity checker detected a potential mis=
configuration.<br>
&gt; =A0 =A0 Either fix the cause of this error or at your own risk disable=
 the checker (see sanity.conf).<br>
&gt; =A0 =A0 Following is the list of potential problems / advisories:<br>
&gt;<br>
&gt; =A0 =A0 Please set a valid MACHINE in your local.conf or environment<b=
r>
&gt;<br>
&gt; ERROR: Execution of event handler &#39;check_sanity_eventhandler&#39; =
failed<br>
&gt; In my local.conf I have the following.<br>
&gt;<br>
&gt; MACHINE ?=3D &quot;zedboard&quot;<br>
&gt;<br>
&gt; bblayers.conf<br>
&gt; # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf<b=
r>
&gt; # changes incompatibly<br>
&gt; LCONF_VERSION =3D &quot;6&quot;<br>
&gt;<br>
&gt; BBPATH =3D &quot;${TOPDIR}&quot;<br>
&gt; BBFILES ?=3D &quot;&quot;<br>
&gt;<br>
&gt; BBLAYERS ?=3D &quot; \<br>
&gt; =A0 /home/vidal/POKY/build101613_zedboard/poky/meta \<br>
&gt; =A0 /home/vidal/POKY/build101613_zedboard/poky/meta-yocto \<br>
&gt; =A0 /home/vidal/POKY/build101613_zedboard/poky/meta-xilinx \<br>
&gt; =A0 /home/vidal/POKY/build101613_zedboard/poky/meta-yocto-bsp \<br>
&gt; =A0 &quot;<br>
&gt; BBLAYERS_NON_REMOVABLE ?=3D &quot; \<br>
&gt; =A0 /home/vidal/POKY/build101613_zedboard/poky/meta \<br>
&gt; =A0 /home/vidal/POKY/build101613_zedboard/poky/meta-yocto \<br>
&gt; =A0 &quot;<br>
&gt; Any help will be appreciated.<br>
&gt; Regards<br>
<br>
</div></div>it seems like layer went thru some restructuring e.g. see<br>
commit d9617006376d73e37f1db17857ee06c24e6b7c03<br>
Author: Nathan Rossi &lt;<a href=3D"mailto:nathan.rossi@xilinx.com" target=
=3D"_blank">nathan.rossi@xilinx.com</a>&gt;<br>
Date: =A0 Fri Aug 2 12:41:14 2013 +1000<br>
<br>
=A0 =A0 meta-*: Remove deprecated sublayers<br>
<br>
=A0 =A0 * The machines supported in the sublayer BSPs are now supported in =
the base<br>
=A0 =A0 =A0 meta-xilinx layer, these sublayers are no longer required.<br>
=A0 =A0 * Relevant documentation has also been relocated into meta-xilinx/d=
ocs/*.<br>
<br>
<br>
<br>
So may be zedboard -&gt; zedboard-zynq7<br>
<br>
<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--047d7b6daa48be50f204e8f124d1--
