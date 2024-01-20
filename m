Return-Path: <daniele.lugli@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA0BC47258
	for <webhook@archiver.kernel.org>; Sat, 20 Jan 2024 20:38:48 +0000 (UTC)
Subject: Re: [yocto] etherlab
To: Ross Burton <ross.burton@arm.com>,yocto@lists.yoctoproject.org
From: "Daniele Lugli" <daniele.lugli@gmail.com>
X-Originating-Location: IT (31.26.241.23)
X-Originating-Platform: Windows Opera 106
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 20 Jan 2024 12:38:47 -0800
References: <8585005B-41BF-42D5-9703-D40F12655E0B@arm.com>
In-Reply-To: <8585005B-41BF-42D5-9703-D40F12655E0B@arm.com>
Message-ID: <23719.1705783127454182611@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="JU2nx37W2g0VcGd0FKOV"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 20 Jan 2024 20:38:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62206

--JU2nx37W2g0VcGd0FKOV
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you Marek and Ross.

@Ross: I had a look into log.do_configure and found

checking for Linux kernel sources... /usr/src/linux-headers-6.5.0-14-generi=
c (Kernel 6.5)

but these are from the host, my target kernel is a 6.1 with PREEMPT_RT !
Also it suggests to look into config.log, where I find

$ ../ethercat/configure --build=3Dx86_64-linux --host=3Dx86_64-poky-linux -=
-target=3Dx86_64-poky-linux --prefix=3D/usr --exec_prefix=3D/usr --bindir=
=3D/usr/bin --sbindir=3D/usr/sbin --libexecdir=3D/usr/libexec --datadir=3D/=
usr/share --sysconfdir=3D/etc --sharedstatedir=3D/com --localstatedir=3D/va=
r --libdir=3D/usr/lib --includedir=3D/usr/include --oldincludedir=3D/usr/in=
clude --infodir=3D/usr/share/info --mandir=3D/usr/share/man --disable-silen=
t-rules --disable-dependency-tracking --with-libtool-sysroot=3D/home/vboxus=
er/yocto/poky/build/tmp/work/corei7-64-poky-linux/etherlab/0.1/recipe-sysro=
ot --disable-static

so in fact my arguments aren't there.

--------

I tried the recipe from Marek (leaving --enable-igb and removing --disable-=
igb as suggested by Ross) and I got

| checking for kernel for igb driver... configure: error: kernel 6.1 not av=
ailable for igb driver!

An internet search shows that the intel igb driver failing to build with se=
veral recent kernels 6.x seems known, and not related to yocto. So I gave u=
p igb and settled for the generic driver with the following modification:

EXTRA_OECONF =3D "--enable-generic --disable-igb --disable-8139too --with-l=
inux-dir=3D${STAGING_KERNEL_BUILDDIR}"

This way, bitbake completes without errors and I am able to test my image.

When I try to start the ethercat master with

/etc/init.d/ethercat start

I get:

Start EtherCAT master 1.6.0-rc1 modprobe: FATAL: Module ec_master not found=
 in directory /lib/modules/6.1.59-rt16-intel-pk-preempt-rt failed

and in fact there is no ec_master.ko in /lib/modules (nor anywhere else).

If I understand correctly https://docs.yoctoproject.org/ref-manual/classes.=
html#autotools, the inherited autotools run configure behind the scenes. Bu=
t the Etherlab installation instructions are:

./bootstrap
./configure { with args as needed }
make all modules
make modules_install install
depmod

bootstrap just contains an "autoreconf -i" which, according to the doc, is =
also automatically run behind the scenes.
Arguments for configure are supplied through EXTRA_OECONF and are OK
make modules and make modules_install are probably not run.

I see from the doc that there is also an EXTRA_OEMAKE variable which should=
 pass additional arguments to make. So I try:

EXTRA_OEMAKE =3D "all modules"

but so bitbake fails. I see in log.do_compile:

/home/vboxuser/yocto/poky/build/tmp/work-shared/intel-corei7-64/kernel-sour=
ce/scripts/Makefile.build:44: /home/vboxuser/yocto/poky/build/tmp/work/core=
i7-64-poky-linux/ethercat/1.6.0-rc1+git/build/../git/Makefile: No such file=
 or directory

I also see a worrying warning:

warning: the compiler differs from the one used to build the kernel
The kernel was built by: x86_64-poky-linux-gcc (GCC) 13.2.0
You are using:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gcc (Ubuntu 11.4.0-1=
ubuntu1~22.04) 11.4.0

Why is it using the compiler from the host?
How can I add the custom make commands and depmod?

Thank you in advance for your replies.

--
Daniele Lugli
General Logic srl
Viale Curreno, 41
10133 Torino
Italy
tel +39 329 3933041
www.general-logic.com ( http://www.general-logic.com/ )
www.linkedin.com/in/daniele- lugli ( http://www.linkedin.com/in/daniele-lug=
li )

--JU2nx37W2g0VcGd0FKOV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Thank you Marek and Ross.</div>
<div>&nbsp;</div>
<div>@Ross: I had a look into log.do_configure and found</div>
<div>&nbsp;</div>
<div><span style=3D"color: #ff0000;">checking for Linux kernel sources... /=
usr/src/linux-headers-6.5.0-14-generic (Kernel 6.5)</span></div>
<div>&nbsp;</div>
<div>but these are from the host, my target kernel is a 6.1 with PREEMPT_RT=
 !</div>
<div>Also it suggests to look into config.log, where I find</div>
<div>&nbsp;</div>
<div>&nbsp;<span style=3D"color: #ff0000;"> $ ../ethercat/configure --build=
=3Dx86_64-linux --host=3Dx86_64-poky-linux --target=3Dx86_64-poky-linux --p=
refix=3D/usr --exec_prefix=3D/usr --bindir=3D/usr/bin --sbindir=3D/usr/sbin=
 --libexecdir=3D/usr/libexec --datadir=3D/usr/share --sysconfdir=3D/etc --s=
haredstatedir=3D/com --localstatedir=3D/var --libdir=3D/usr/lib --includedi=
r=3D/usr/include --oldincludedir=3D/usr/include --infodir=3D/usr/share/info=
 --mandir=3D/usr/share/man --disable-silent-rules --disable-dependency-trac=
king --with-libtool-sysroot=3D/home/vboxuser/yocto/poky/build/tmp/work/core=
i7-64-poky-linux/etherlab/0.1/recipe-sysroot --disable-static</span></div>
<div>&nbsp;</div>
<div>so in fact my arguments aren't there.</div>
<div>&nbsp;</div>
<div>--------</div>
<div>&nbsp;</div>
<div>I tried the recipe from Marek (leaving --enable-igb and removing --dis=
able-igb as suggested by Ross) and I got</div>
<div>&nbsp;</div>
<div><span style=3D"color: #ff0000;">| checking for kernel for igb driver..=
. configure: error: kernel 6.1 not available for igb driver!</span></div>
<div>&nbsp;</div>
<div>An internet search shows that the intel igb driver failing to build wi=
th several recent kernels 6.x seems known, and not related to yocto. So I g=
ave up igb and settled for the generic driver with the following modificati=
on:</div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">EXTRA_OECONF =3D "--enable-generic --d=
isable-igb --disable-8139too --with-linux-dir=3D${STAGING_KERNEL_BUILDDIR}"=
</span></div>
<div>&nbsp;</div>
<div>This way, bitbake completes without errors and I am able to test my im=
age.</div>
<div>&nbsp;</div>
<div>When I try to start the ethercat master with</div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">/etc/init.d/ethercat start</span></div=
>
<div>&nbsp;</div>
<div>I get:</div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">Start EtherCAT master 1.6.0-rc1 modpro=
be: FATAL: Module ec_master not found in directory /lib/modules/6.1.59-rt16=
-intel-pk-preempt-rt failed</span></div>
<div>&nbsp;</div>
<div>and in fact there is no ec_master.ko in /lib/modules (nor anywhere els=
e).</div>
<div>&nbsp;</div>
<div>If I understand correctly https://docs.yoctoproject.org/ref-manual/cla=
sses.html#autotools, the inherited autotools run configure behind the scene=
s. But the Etherlab installation instructions are:</div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">./bootstrap</span></div>
<div><span style=3D"color: #0000ff;">./configure { with args as needed }</s=
pan></div>
<div><span style=3D"color: #0000ff;">make all modules</span></div>
<div><span style=3D"color: #0000ff;">make modules_install install</span></d=
iv>
<div><span style=3D"color: #0000ff;">depmod</span></div>
<div>&nbsp;</div>
<div>bootstrap just contains an "autoreconf -i" which, according to the doc=
, is also automatically run behind the scenes.</div>
<div>Arguments for configure are supplied through EXTRA_OECONF and are OK<b=
r />make modules and make modules_install are probably not run.</div>
<div>&nbsp;</div>
<div>I see from the doc that there is also an EXTRA_OEMAKE variable which s=
hould pass additional arguments to make. So I try:</div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">EXTRA_OEMAKE =3D "all modules"</span><=
/div>
<div>&nbsp;</div>
<div>but so bitbake fails. I see in log.do_compile:</div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">/home/vboxuser/yocto/poky/build/tmp/wo=
rk-shared/intel-corei7-64/kernel-source/scripts/Makefile.build:44: /home/vb=
oxuser/yocto/poky/build/tmp/work/corei7-64-poky-linux/ethercat/1.6.0-rc1+gi=
t/build/../git/Makefile: No such file or directory</span></div>
<div>&nbsp;</div>
<div>I also see a worrying warning:</div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">warning: the compiler differs from the=
 one used to build the kernel</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; The kernel was built by: x86_64=
-poky-linux-gcc (GCC) 13.2.0</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; You are using:&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0</span></d=
iv>
<div>&nbsp;&nbsp;</div>
<div>Why is it using the compiler from the host?</div>
<div>How can I add the custom make commands and depmod?</div>
<div>&nbsp;</div>
<div>Thank you in advance for your replies.</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
-- <br />
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">
<div dir=3D"ltr">
<div>Daniele Lugli</div>
General Logic srl</div>
<div>Viale Curreno, 41</div>
<div>10133 Torino<br />Italy</div>
<div>tel +39 329 3933041</div>
</div>
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><a style=3D"color: #1155cc;" href=3D"http://www.general-lo=
gic.com/" target=3D"_blank" rel=3D"noopener" data-saferedirecturl=3D"https:=
//www.google.com/url?q=3Dhttp://www.general-logic.com&amp;source=3Dgmail&am=
p;ust=3D1702484712598000&amp;usg=3DAOvVaw3caieBojp7RHbXjtN3Avtg">www.genera=
l-logic.com</a></div>
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><a style=3D"color: #1155cc;" href=3D"http://www.linkedin.c=
om/in/daniele-lugli" target=3D"_blank" rel=3D"noopener" data-saferedirectur=
l=3D"https://www.google.com/url?q=3Dhttp://www.linkedin.com/in/daniele-lugl=
i&amp;source=3Dgmail&amp;ust=3D1702484712598000&amp;usg=3DAOvVaw2CJ1YOxQZd7=
TCndA_wq8ak">www.linkedin.com/in/daniele-<wbr />lugli</a></div>

--JU2nx37W2g0VcGd0FKOV--

