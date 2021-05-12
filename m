Subject: Yocto Zeus : facing error regarding hostapd #zeus
To: yocto@lists.yoctoproject.org
From: "rohit jadhav" <rohitbjadhav1@gmail.com>
X-Originating-Location: Pune, Maharashtra, IN (157.33.8.97)
X-Originating-Platform: Linux Firefox 66
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 12 May 2021 05:01:33 -0700
Message-ID: <v3iM.1620820893433035646.BQdl@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="TjLtwTrUW9WeftexY5Se"

--TjLtwTrUW9WeftexY5Se
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Facing following issue :
ERROR: core-image-minimal-1.0-r0 do_rootfs: Postinstall scriptlets of ['ho=
stapd'] have failed. If the intention is to defer them to first boot,
then please place them into pkg_postinst_ontarget_${PN} ().
Deferring to first boot via 'exit 1' is no longer supported.
Details of the failure are in /home/tel/imx_yocto_bsp_Zeus/Yocto_setup/bui=
ld_imx6ull/tmp/work/imx6ull14x14evk-poky-linux-gnueabi/core-image-minimal/1=
.0-r0/temp/log.do_rootfs.
ERROR: Logfile of failure stored in: /home/tel/imx_yocto_bsp_Zeus/Yocto_se=
tup/build_imx6ull/tmp/work/imx6ull14x14evk-poky-linux-gnueabi/core-image-mi=
nimal/1.0-r0/temp/log.do_rootfs.31340
ERROR: Task (/home/tel/imx_yocto_bsp_Zeus/Yocto_setup/sources/poky/meta/re=
cipes-core/images/core-image-minimal.bb:do_rootfs) failed with exit code '1=
'

Please guide me if anyone have any idea to resolve.

Thanks in advance.

--TjLtwTrUW9WeftexY5Se
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Facing following issue :<br />ERROR: core-image-minimal-1.0-r0 do_rootfs: P=
ostinstall scriptlets of ['hostapd'] have failed. If the intention is to de=
fer them to first boot,<br />then please place them into pkg_postinst_ontar=
get_${PN} ().<br />Deferring to first boot via 'exit 1' is no longer suppor=
ted.<br />Details of the failure are in /home/tel/imx_yocto_bsp_Zeus/Yocto_=
setup/build_imx6ull/tmp/work/imx6ull14x14evk-poky-linux-gnueabi/core-image-=
minimal/1.0-r0/temp/log.do_rootfs.<br />ERROR: Logfile of failure stored in=
: /home/tel/imx_yocto_bsp_Zeus/Yocto_setup/build_imx6ull/tmp/work/imx6ull14=
x14evk-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.3134=
0<br />ERROR: Task (/home/tel/imx_yocto_bsp_Zeus/Yocto_setup/sources/poky/m=
eta/recipes-core/images/core-image-minimal.bb:do_rootfs) failed with exit c=
ode '1'<br /><br />Please guide me if anyone have any idea to resolve.<br /=
><br />Thanks in advance.

--TjLtwTrUW9WeftexY5Se--
