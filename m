Subject: #yocto - meta-anaconda installer gives "An unknown error has occurred"
To: yocto@lists.yoctoproject.org
From: srijan.nandi@gmail.com
X-Originating-Location: Ahmedabad, Gujarat, IN (14.102.160.178)
X-Originating-Platform: Mac Safari 13.1
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 18 Jun 2020 08:28:20 -0700
Message-ID: <zfUG.1592494100488823620.BO2C@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="SSelPirxGoQsDyppPe7t"

--SSelPirxGoQsDyppPe7t
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

I created a core-image-full-cmdline for genericx86-64 machine. I am trying=
 to configure meta-anaconda with it. I have used the following bblayers.con=
f file and added the requirements in the local.conf file.

1. Target Build:
bblayers.conf:
BBLAYERS ?=3D " \
/opt/graylog-poky/meta \
/opt/graylog-poky/meta-poky \
/opt/graylog-poky/meta-yocto-bsp \
/opt/graylog-poky/meta-graylog \
/opt/graylog-poky/meta-openembedded/meta-oe \
/opt/graylog-poky/meta-openembedded/meta-python \
/opt/graylog-poky/meta-openembedded/meta-networking \
/opt/graylog-poky/meta-openembedded/meta-gnome \
/opt/graylog-poky/meta-openembedded/meta-filesystems \
/opt/graylog-poky/meta-openembedded/meta-initramfs \
/opt/graylog-poky/meta-anaconda \
"
local.conf file:
PACKAGE_CLASSES ?=3D "package_deb package_rpm"
DISTRO_FEATURES_append =3D " systemd keyboard ldconfig pam"
EXTRA_IMAGE_FEATURES_append =3D " package-management ssh-server-openssh"
CORE_IMAGE_EXTRA_INSTALL_append =3D " kernel-modules iptables bash vim par=
ted tcpdump dhcp-server dhcp-client"
VIRTUAL-RUNTIME_init_manager =3D "systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
VIRTUAL-RUNTIME_initscripts =3D ""
IMAGE_FSTYPES =3D "ext4 iso wic wic.vmdk"

The target directory is /opt/graylog-poky/build.

Then I created the install build with the following bblayers.conf and loca=
l.conf with the following customizations

bblayers.conf:
BBLAYERS ?=3D " \
/opt/graylog-poky/meta \
/opt/graylog-poky/meta-poky \
/opt/graylog-poky/meta-yocto-bsp \
/opt/graylog-poky/meta-graylog \
/opt/graylog-poky/meta-openembedded/meta-oe \
/opt/graylog-poky/meta-openembedded/meta-python \
/opt/graylog-poky/meta-openembedded/meta-networking \
/opt/graylog-poky/meta-openembedded/meta-gnome \
/opt/graylog-poky/meta-openembedded/meta-filesystems \
/opt/graylog-poky/meta-openembedded/meta-initramfs \
/opt/graylog-poky/meta-anaconda \
"

local.conf:
MACHINE ??=3D "qemux86-64"
PACKAGE_CLASSES ?=3D "package_ipk"
PACKAGE_CLASSES =3D "package_rpm"
DISTRO =3D "anaconda"
INSTALLER_TARGET_IMAGE =3D "core-image-full-cmdline"
INSTALLER_TARGET_BUILD =3D "/opt/graylog-poky/build"

It gave me an iso, when I try to boot in a vmware or on a virtualbox with =
the iso, it boots up and then after opening up the anaconda installer it co=
mes up with the error message "An unknown error has occurred" and it hangs =
on the screen.

Any help will be highly appreciated.

Also would like to know if it is possible to boot an x86-64 using the abov=
e method.

--SSelPirxGoQsDyppPe7t
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,<br /><br />I created a core-image-full-cmdline for genericx86-64=
 machine. I am trying to configure meta-anaconda with it. I have used the f=
ollowing bblayers.conf file and added the requirements in the local.conf fi=
le.<br /><br />1. Target Build:<br />bblayers.conf:<br />
<div>BBLAYERS ?=3D " \</div>
<div>&nbsp; /opt/graylog-poky/meta \</div>
<div>&nbsp; /opt/graylog-poky/meta-poky \</div>
<div>&nbsp; /opt/graylog-poky/meta-yocto-bsp \</div>
<div>&nbsp; /opt/graylog-poky/meta-graylog \</div>
<div>&nbsp; /opt/graylog-poky/meta-openembedded/meta-oe \</div>
<div>&nbsp; /opt/graylog-poky/meta-openembedded/meta-python \</div>
<div>&nbsp; /opt/graylog-poky/meta-openembedded/meta-networking \</div>
<div>&nbsp; /opt/graylog-poky/meta-openembedded/meta-gnome \</div>
<div>&nbsp; /opt/graylog-poky/meta-openembedded/meta-filesystems \</div>
<div>&nbsp; /opt/graylog-poky/meta-openembedded/meta-initramfs \</div>
<div>&nbsp; /opt/graylog-poky/meta-anaconda \<br />"<br />local.conf file:=
<br />
<div>PACKAGE_CLASSES ?=3D "package_deb package_rpm"</div>
<div>DISTRO_FEATURES_append =3D " systemd keyboard ldconfig pam"</div>
<div>EXTRA_IMAGE_FEATURES_append =3D " package-management ssh-server-opens=
sh"</div>
<div>CORE_IMAGE_EXTRA_INSTALL_append =3D " kernel-modules iptables bash vi=
m parted tcpdump dhcp-server dhcp-client"</div>
<div>VIRTUAL-RUNTIME_init_manager =3D "systemd"</div>
<div>DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"</div>
<div>VIRTUAL-RUNTIME_initscripts =3D ""</div>
<div>IMAGE_FSTYPES =3D "ext4 iso wic wic.vmdk"<br /><br />The target direc=
tory is /opt/graylog-poky/build.<br /><br />Then I created the install buil=
d with the following bblayers.conf and local.conf with the following custom=
izations<br /><br />bblayers.conf:<br />
<div>BBLAYERS ?=3D " \</div>
<div>&nbsp; /opt/graylog-poky/meta \</div>
<div>&nbsp; /opt/graylog-poky/meta-poky \</div>
<div>&nbsp; /opt/graylog-poky/meta-yocto-bsp \</div>
<div>&nbsp; /opt/graylog-poky/meta-graylog \</div>
<div>&nbsp; /opt/graylog-poky/meta-openembedded/meta-oe \</div>
<div>&nbsp; /opt/graylog-poky/meta-openembedded/meta-python \</div>
<div>&nbsp; /opt/graylog-poky/meta-openembedded/meta-networking \</div>
<div>&nbsp; /opt/graylog-poky/meta-openembedded/meta-gnome \</div>
<div>&nbsp; /opt/graylog-poky/meta-openembedded/meta-filesystems \</div>
<div>&nbsp; /opt/graylog-poky/meta-openembedded/meta-initramfs \</div>
<div>&nbsp; /opt/graylog-poky/meta-anaconda \</div>
<div>&nbsp; "</div>
</div>
</div>
<br />local.conf:<br />MACHINE ??=3D "qemux86-64"<br />PACKAGE_CLASSES ?=
=3D "package_ipk"<br />
<div>PACKAGE_CLASSES =3D "package_rpm"</div>
<div>DISTRO =3D "anaconda"</div>
<div>INSTALLER_TARGET_IMAGE =3D "core-image-full-cmdline"</div>
<div>INSTALLER_TARGET_BUILD =3D "/opt/graylog-poky/build"<br /><br />It ga=
ve me an iso, when I try to boot in a vmware or on a virtualbox with the is=
o, it boots up and then after opening up the anaconda installer it comes up=
 with the error message "An unknown error has occurred" and it hangs on the=
 screen.</div>
<div>&nbsp;</div>
<div>Any help will be highly appreciated.&nbsp;<br /><br />Also would like=
 to know if it is possible to boot an x86-64 using the above method.</div>

--SSelPirxGoQsDyppPe7t--
