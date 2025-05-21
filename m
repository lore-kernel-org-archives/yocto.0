Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72F6AC54E65
	for <webhook@archiver.kernel.org>; Wed, 21 May 2025 10:23:47 +0000 (UTC)
Subject: meson upgrade issue dunfell (0.53 I want to upgrade 0.63)
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: IN (123.63.39.83)
X-Originating-Platform: Windows Chrome 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 21 May 2025 03:23:38 -0700
Message-ID: <urlO.1747823018739136306.ditq@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jlKPuUHrLTf1v45qqVfz"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 May 2025 10:23:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65383

--jlKPuUHrLTf1v45qqVfz
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi team,

I want to upgrade meson version 0.53.2 to 0.63 in my yocto build. I am curr=
ently using 3.1 dunfell.

Facing below expansion issue. Can anyone know this issue can help me to fix=
 this issue.

ERROR: ExpansionError during parsing /home/p_60123/hdd/NC/poky/../meta-cve-=
patch/recipes-extended/meson/meson_0.63.3.bb
Traceback (most recent call last):
File "Var <install_templates>", line 1, in <module>
File "/home/p_60123/hdd/NC/poky/../meta-cve-patch/classes/meson-routines.bb=
class", line 10, in meson_array(var=3D'BUILD_READELF', d=3D<bb.data_smart.D=
ataSmart object at 0x7ff52c2f1c50>):
def meson_array(var, d):
>=C2=A0=C2=A0=C2=A0 items =3D d.getVar(var).split()
return repr(items[0] if len(items) =3D=3D 1 else items)
bb.data_smart.ExpansionError: Failure expanding variable install_templates,=
 expression was=C2=A0=C2=A0=C2=A0=C2=A0 install -d /home/p_60123/hdd/NC/bui=
ld-pony/tmp/work/x86_64-linux/meson-native/0.63.3-r0/image/home/p_60123/hdd=
/NC/build-pony/tmp/work/x86_64-linux/meson-native/0.63.3-r0/recipe-sysroot-=
native/usr/share/meson

cat >/home/p_60123/hdd/NC/build-pony/tmp/work/x86_64-linux/meson-native/0.6=
3.3-r0/image/home/p_60123/hdd/NC/build-pony/tmp/work/x86_64-linux/meson-nat=
ive/0.63.3-r0/recipe-sysroot-native/usr/share/meson/meson.native.template <=
<EOF
[binaries]
c =3D ${@meson_array('BUILD_CC', d)}
cpp =3D ${@meson_array('BUILD_CXX', d)}
ar =3D ${@meson_array('BUILD_AR', d)}
nm =3D ${@meson_array('BUILD_NM', d)}
strip =3D ${@meson_array('BUILD_STRIP', d)}
readelf =3D ${@meson_array('BUILD_READELF', d)}
pkgconfig =3D 'pkg-config-native'

[built-in options]
c_args =3D ['-isystem@{OECORE_NATIVE_SYSROOT}/usr/include' , ${@var_list2st=
r('BUILD_OPTIMIZATION', d)}]
c_link_args =3D ${@generate_native_link_template(d)}
cpp_args =3D ['-isystem@{OECORE_NATIVE_SYSROOT}/usr/include' , ${@var_list2=
str('BUILD_OPTIMIZATION', d)}]
cpp_link_args =3D ${@generate_native_link_template(d)}
[properties]
sys_root =3D '@OECORE_NATIVE_SYSROOT'
EOF

cat >/home/p_60123/hdd/NC/build-pony/tmp/work/x86_64-linux/meson-native/0.6=
3.3-r0/image/home/p_60123/hdd/NC/build-pony/tmp/work/x86_64-linux/meson-nat=
ive/0.63.3-r0/recipe-sysroot-native/usr/share/meson/meson.cross.template <<=
EOF
[binaries]
c =3D @CC
cpp =3D @CXX
ar =3D @AR
nm =3D @NM
strip =3D @STRIP
pkgconfig =3D 'pkg-config'

[built-in options]
c_args =3D @CFLAGS
c_link_args =3D @LDFLAGS
cpp_args =3D @CPPFLAGS
cpp_link_args =3D @LDFLAGS

[properties]
needs_exe_wrapper =3D true
sys_root =3D @OECORE_TARGET_SYSROOT

[host_machine]
system =3D '$host_system'
cpu_family =3D '$host_cpu_family'
cpu =3D '$host_cpu'
endian =3D '$host_endian'
EOF
which triggered exception AttributeError: 'NoneType' object has no attribut=
e 'split'

Summary: There were 3 WARNING messages shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

Thanks & Regards,

Sateesh

--jlKPuUHrLTf1v45qqVfz
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<p>Hi team,</p>
<p>&nbsp;</p>
<p>I want to upgrade meson version 0.53.2 to 0.63 in my yocto build. I am c=
urrently using 3.1 dunfell.</p>
<p>Facing below expansion issue. Can anyone know this issue can help me to =
fix this issue.</p>
<p>ERROR: ExpansionError during parsing /home/p_60123/hdd/NC/poky/../meta-c=
ve-patch/recipes-extended/meson/meson_0.63.3.bb<br />Traceback (most recent=
 call last):<br />&nbsp; File "Var &lt;install_templates&gt;", line 1, in &=
lt;module&gt;<br />&nbsp; File "/home/p_60123/hdd/NC/poky/../meta-cve-patch=
/classes/meson-routines.bbclass", line 10, in meson_array(var=3D'BUILD_READ=
ELF', d=3D&lt;bb.data_smart.DataSmart object at 0x7ff52c2f1c50&gt;):<br />&=
nbsp;&nbsp;&nbsp;&nbsp; def meson_array(var, d):<br />&gt;&nbsp;&nbsp;&nbsp=
; items =3D d.getVar(var).split()<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; return repr(items[0] if len(items) =3D=3D 1 else items)<br />b=
b.data_smart.ExpansionError: Failure expanding variable install_templates, =
expression was&nbsp;&nbsp;&nbsp;&nbsp; install -d /home/p_60123/hdd/NC/buil=
d-pony/tmp/work/x86_64-linux/meson-native/0.63.3-r0/image/home/p_60123/hdd/=
NC/build-pony/tmp/work/x86_64-linux/meson-native/0.63.3-r0/recipe-sysroot-n=
ative/usr/share/meson</p>
<p>&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp; cat &gt;/home/p_60123/hdd/NC/build-pony/tmp/work/x86_=
64-linux/meson-native/0.63.3-r0/image/home/p_60123/hdd/NC/build-pony/tmp/wo=
rk/x86_64-linux/meson-native/0.63.3-r0/recipe-sysroot-native/usr/share/meso=
n/meson.native.template &lt;&lt;EOF<br />[binaries]<br />c =3D ${@meson_arr=
ay('BUILD_CC', d)}<br />cpp =3D ${@meson_array('BUILD_CXX', d)}<br />ar =3D=
 ${@meson_array('BUILD_AR', d)}<br />nm =3D ${@meson_array('BUILD_NM', d)}<=
br />strip =3D ${@meson_array('BUILD_STRIP', d)}<br />readelf =3D ${@meson_=
array('BUILD_READELF', d)}<br />pkgconfig =3D 'pkg-config-native'</p>
<p>[built-in options]<br />c_args =3D ['-isystem@{OECORE_NATIVE_SYSROOT}/us=
r/include' , ${@var_list2str('BUILD_OPTIMIZATION', d)}]<br />c_link_args =
=3D ${@generate_native_link_template(d)}<br />cpp_args =3D ['-isystem@{OECO=
RE_NATIVE_SYSROOT}/usr/include' , ${@var_list2str('BUILD_OPTIMIZATION', d)}=
]<br />cpp_link_args =3D ${@generate_native_link_template(d)}<br />[propert=
ies]<br />sys_root =3D '@OECORE_NATIVE_SYSROOT'<br />EOF</p>
<p>&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp; cat &gt;/home/p_60123/hdd/NC/build-pony/tmp/work/x86_=
64-linux/meson-native/0.63.3-r0/image/home/p_60123/hdd/NC/build-pony/tmp/wo=
rk/x86_64-linux/meson-native/0.63.3-r0/recipe-sysroot-native/usr/share/meso=
n/meson.cross.template &lt;&lt;EOF<br />[binaries]<br />c =3D @CC<br />cpp =
=3D @CXX<br />ar =3D @AR<br />nm =3D @NM<br />strip =3D @STRIP<br />pkgconf=
ig =3D 'pkg-config'</p>
<p>&nbsp;</p>
<p>[built-in options]<br />c_args =3D @CFLAGS<br />c_link_args =3D @LDFLAGS=
<br />cpp_args =3D @CPPFLAGS<br />cpp_link_args =3D @LDFLAGS</p>
<p>&nbsp;</p>
<p>[properties]<br />needs_exe_wrapper =3D true<br />sys_root =3D @OECORE_T=
ARGET_SYSROOT</p>
<p>&nbsp;</p>
<p>[host_machine]<br />system =3D '$host_system'<br />cpu_family =3D '$host=
_cpu_family'<br />cpu =3D '$host_cpu'<br />endian =3D '$host_endian'<br />E=
OF<br />which triggered exception AttributeError: 'NoneType' object has no =
attribute 'split'</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>Summary: There were 3 WARNING messages shown.<br />Summary: There was 1 =
ERROR message shown, returning a non-zero exit code.</p>
<p>&nbsp;</p>
<p>Thanks &amp; Regards,</p>
<p>Sateesh</p>
</div>

--jlKPuUHrLTf1v45qqVfz--

