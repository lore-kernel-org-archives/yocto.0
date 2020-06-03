Subject: #yocto
To: yocto@lists.yoctoproject.org
From: "Baabu Ms" <Baabu3e@gmail.com>
X-Originating-Location: Kollam, Kerala, IN (42.109.146.245)
X-Originating-Platform: Linux Firefox 74
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 03 Jun 2020 06:56:10 -0700
Message-ID: <pbpY.1591192570633717844.r7Yb@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rR2s9PqoYQM4nvCKoyyw"

--rR2s9PqoYQM4nvCKoyyw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

# Hello all

# =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 im trying build =
pam package in core-image-sato i added pam package in local.conf file

# *DISTRO_FEATURES_append=C2=A0 =3D "pam"*

# =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 when i added pam =
package i facing *error* , so i removed the pam package in local.conf
# =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 i attached log please g=
ive me solution to build the pam package

# update-alternatives: Error: not linking /home/jenkinsagent/5.5.6/build-s=
cript/riscv-yocto-sato-base/openembedded/openembedded-core/riscv-build/tmp-=
glibc/work/exaleapsemi-oe-linux/core-image-sato/1.0-r0/rootfs/usr/bin/vlock=
 to=C2=A0 /bin/busybox.suid
# since /home/jenkinsagent/5.5.6/build-script/riscv-yocto-sato-base/openem=
bedded/openembedded-core/riscv-build/tmp-glibc/work/exaleapsemi-oe-linux/co=
re-image-sato/1.0-r0/rootfs/usr/bin/vlock exists and is not a link

# ERROR: core-image-sato-1.0-r0 do_rootfs: Postinstall scriptlets of ['bus=
ybox'] have failed. If the intention is to defer them to first boot,
# then please place them into pkg_postinst_ontarget_${PN} ().
# Deferring to first boot via 'exit 1' is no longer supported.

--
Thanks & Regards
Exaleap
Babu p

--rR2s9PqoYQM4nvCKoyyw
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

# Hello all<br /><br /># &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; im trying build pam package in core-image-sato i added pam package in=
 local.conf file<br /><br />#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp; DISTRO_FEATURES_append=
&nbsp; =3D "pam" &nbsp;&nbsp;&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;<br /><=
br /># &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; when i added =
pam package i facing<strong> error</strong> , so i removed the pam package =
in local.conf&nbsp; &nbsp;<br /># &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; i attached log please give me solution to build the pam package&nbs=
p; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br /><br />&nbsp;# update-al=
ternatives: Error: not linking /home/jenkinsagent/5.5.6/build-script/riscv-=
yocto-sato-base/openembedded/openembedded-core/riscv-build/tmp-glibc/work/e=
xaleapsemi-oe-linux/core-image-sato/1.0-r0/rootfs/usr/bin/vlock to&nbsp; /b=
in/busybox.suid <br /># since /home/jenkinsagent/5.5.6/build-script/riscv-y=
octo-sato-base/openembedded/openembedded-core/riscv-build/tmp-glibc/work/ex=
aleapsemi-oe-linux/core-image-sato/1.0-r0/rootfs/usr/bin/vlock exists and i=
s not a link<br /><br /># ERROR: core-image-sato-1.0-r0 do_rootfs: Postinst=
all scriptlets of ['busybox'] have failed. If the intention is to defer the=
m to first boot,<br /># then please place them into pkg_postinst_ontarget_$=
{PN} ().<br /># Deferring to first boot via 'exit 1' is no longer supported=
.<br /><br /><br /><br /><br />-- <br />Thanks &amp; Regards&nbsp;<br />Exa=
leap<br />Babu p

--rR2s9PqoYQM4nvCKoyyw--
