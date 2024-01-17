Return-Path: <daniele.lugli@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB822C47258
	for <webhook@archiver.kernel.org>; Wed, 17 Jan 2024 22:11:43 +0000 (UTC)
Subject: etherlab
To: yocto@lists.yoctoproject.org
From: "Daniele Lugli" <daniele.lugli@gmail.com>
X-Originating-Location: IT (31.26.241.23)
X-Originating-Platform: Windows Opera 106
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 17 Jan 2024 14:11:35 -0800
Message-ID: <WdJZ.1705529495910244509.KX6t@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WjeFAt3IVNcFwUqKdGi4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Jan 2024 22:11:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62180

--WjeFAt3IVNcFwUqKdGi4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I am trying to add an EtherLAB Ethercat master to my target.

I added a new recipes-etherlab directory at the same level of other working=
 recipes:

recipes-etherlab
|
+-etherlab
|
+-etherlab_0.1.bb
|
+-files
|
+-ethercat

The ethercat directory is from https://gitlab.com/etherlab.org/ethercat.git

etherlab_0.1.bb says:

DESCRIPTION =3D "EtherLAB Ethercat master"

LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D59530bdf33659b29e73d4adb9f9f6552=
"
LICENSE =3D "GPLv2"

S =3D "${WORKDIR}/etherlab/ethercat"

FILES:${PN} =3D "\
/etc/init.d/ethercat \
/etc/sysconfig/ethercat \
${libdir}/libethercat.so.1.1.0 \
${libdir}/libethercat.so.1.1 \
${libdir}/libethercat.so.1 \
${bindir}/ethercat"

do_compile() {
autoreconf
sh configure --sysconfdir=3D/etc --enable-igb
make
}

do_install() {
install -d ${D}${bindir}/
install -d ${D}${libdir}/
install -d ${D}/etc/init.d/
install -m 0755 ${S}/lib/.libs/libethercat.so.1.0.0 ${D}${libdir}/libetherc=
at.so.1.0.0
install -m 0755 ${S}/tool/ethercat ${D}${bindir}/ethercat
install -m 0755 ${S}/script/init.d/ethercat.in ${D}/etc/init.d/ethercat
ln -s libethercat.so.1.1.0 ${D}${libdir}/libethercat.so.1.1
ln -s libethercat.so.1.1 ${D}${libdir}/libethercat.so.1
}

Last, I added

IMAGE_INSTALL +=3D "etherlab"

to mytest-image.bb

Now, bitbake mytest-image complains:

/home/vboxuser/yocto/poky/build/tmp/work/corei7-64-poky-linux/etherlab/0.1/=
temp/run.do_compile.5355: 141: autoreconf: not found

The build configuration is

BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "2.6.0"
BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-linux"
NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D "universal"
TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "x86_64-poky-linux"
MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "intel-corei7-6=
4"
DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "poky"
DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "4.3.2"
TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "m64 corei7"
TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D ""
meta
meta-poky
meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "nanbield:f768ffb8916feb6542fc=
be3e946cbf30e247b151"
meta-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "nanbield:2da6e=
1b0e43a8993fd422fee3f83940100b59f4c"
meta-intel=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "nanbield:039e45e21d=
2973fc3ce318a25beceae348e4428a"
meta-mytest=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "<unknown>:<unknown>"

and I have tools-sdk among my IMAGE_FEATURES.

Thank you in advance for any hint.

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

--WjeFAt3IVNcFwUqKdGi4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi all,</div>
<div>&nbsp;</div>
<div>I am trying to add an EtherLAB Ethercat master to my target.</div>
<div>&nbsp;</div>
<div>I added a new recipes-etherlab directory at the same level of other wo=
rking recipes:</div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">recipes-etherlab</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; |</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; +-etherlab</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp;|</span></d=
iv>
<div><span style=3D"white-space: normal; color: #0000ff;"><span style=3D"wh=
ite-space: pre;"> </span>&nbsp; &nbsp;+-etherlab_0.1.bb</span></div>
<div><span style=3D"white-space: normal; color: #0000ff;"><span style=3D"wh=
ite-space: pre;"> </span>&nbsp; &nbsp;|</span></div>
<div><span style=3D"white-space: normal; color: #0000ff;"><span style=3D"wh=
ite-space: pre;"> </span>&nbsp; &nbsp;+-files</span></div>
<div><span style=3D"white-space: normal; color: #0000ff;"><span style=3D"wh=
ite-space: pre;"> </span>&nbsp; &nbsp; &nbsp; &nbsp;|</span></div>
<div><span style=3D"white-space: normal; color: #0000ff;"><span style=3D"wh=
ite-space: pre;"> </span>&nbsp; &nbsp;+-ethercat</span></div>
<div>&nbsp;</div>
<div><br />The ethercat directory is from https://gitlab.com/etherlab.org/e=
thercat.git</div>
<div>&nbsp;</div>
<div>etherlab_0.1.bb says:</div>
<div><br /><br /></div>
<div><span style=3D"color: #0000ff;">DESCRIPTION =3D "EtherLAB Ethercat mas=
ter"</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">LIC_FILES_CHKSUM =3D "file://COPYING;m=
d5=3D59530bdf33659b29e73d4adb9f9f6552"</span></div>
<div><span style=3D"color: #0000ff;">LICENSE =3D "GPLv2"</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">S =3D "${WORKDIR}/etherlab/ethercat"</=
span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">FILES:${PN} =3D "\</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; /etc/init.=
d/ethercat \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; /etc/sysco=
nfig/ethercat \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; ${libdir}/=
libethercat.so.1.1.0 \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; ${libdir}/=
libethercat.so.1.1 \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; ${libdir}/=
libethercat.so.1 \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; ${bindir}/=
ethercat"</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">do_compile() {</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; autoreconf</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; sh configure --sysconfdir=3D/etc --enable-igb</span></div=
>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; make</span></div>
<div><span style=3D"color: #0000ff;">}</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">do_install() {</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; install -d ${D}${bindir}/</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; install -d ${D}${libdir}/</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; install -d ${D}/etc/init.d/</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; install -m 0755 ${S}/lib/.libs/libethercat.so.1.0.0 ${D}$=
{libdir}/libethercat.so.1.0.0</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; install -m 0755 ${S}/tool/ethercat ${D}${bindir}/ethercat=
</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; install -m 0755 ${S}/script/init.d/ethercat.in ${D}/etc/i=
nit.d/ethercat</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; ln -s libethercat.so.1.1.0 ${D}${libdir}/libethercat.so.1=
.1</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; ln -s libethercat.so.1.1 ${D}${libdir}/libethercat.so.1</=
span></div>
<div><span style=3D"color: #0000ff;">}</span></div>
<div>&nbsp;</div>
<div>Last, I added</div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">IMAGE_INSTALL +=3D "etherlab"</span></=
div>
<div>&nbsp;</div>
<div>to mytest-image.bb</div>
<div>&nbsp;</div>
<div>Now, bitbake mytest-image complains:</div>
<div>&nbsp;</div>
<div><span style=3D"color: #ff0000;">/home/vboxuser/yocto/poky/build/tmp/wo=
rk/corei7-64-poky-linux/etherlab/0.1/temp/run.do_compile.5355: 141: autorec=
onf: not found</span></div>
<div>&nbsp;</div>
<div>The build configuration is</div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">BB_VERSION&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;=3D "2.6.0"</span></div>
<div><span style=3D"color: #0000ff;">BUILD_SYS&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; =3D "x86_64-linux"</span></div>
<div><span style=3D"color: #0000ff;">NATIVELSBSTRING&nbsp; &nbsp; &nbsp; =
=3D "universal"</span></div>
<div><span style=3D"color: #0000ff;">TARGET_SYS&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;=3D "x86_64-poky-linux"</span></div>
<div><span style=3D"color: #0000ff;">MACHINE&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; =3D "intel-corei7-64"</span></div>
<div><span style=3D"color: #0000ff;">DISTRO&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;=3D "poky"</span></div>
<div><span style=3D"color: #0000ff;">DISTRO_VERSION&nbsp; &nbsp; &nbsp; &nb=
sp;=3D "4.3.2"</span></div>
<div><span style=3D"color: #0000ff;">TUNE_FEATURES&nbsp; &nbsp; &nbsp; &nbs=
p; =3D "m64 corei7"</span></div>
<div><span style=3D"color: #0000ff;">TARGET_FPU&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;=3D ""</span></div>
<div><span style=3D"color: #0000ff;">meta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;</span></div>
<div><span style=3D"color: #0000ff;">meta-poky&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;&nbsp;</span></div>
<div><span style=3D"color: #0000ff;">meta-yocto-bsp&nbsp; &nbsp; &nbsp; &nb=
sp;=3D "nanbield:f768ffb8916feb6542fcbe3e946cbf30e247b151"</span></div>
<div><span style=3D"color: #0000ff;">meta-oe&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; =3D "nanbield:2da6e1b0e43a8993fd422fee3f83940100b59f4c"</=
span></div>
<div><span style=3D"color: #0000ff;">meta-intel&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;=3D "nanbield:039e45e21d2973fc3ce318a25beceae348e4428a"</span>=
</div>
<div><span style=3D"color: #0000ff;">meta-mytest&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; =3D "&lt;unknown&gt;:&lt;unknown&gt;"</span></div>
<div>&nbsp;</div>
<div>and I have tools-sdk among my IMAGE_FEATURES.</div>
<div>&nbsp;</div>
<div>Thank you in advance for any hint.</div>
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

--WjeFAt3IVNcFwUqKdGi4--

