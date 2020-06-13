Subject: #yocto sstate cache problem with #raspberrypi #linux build
To: yocto@lists.yoctoproject.org
From: gvkalra@gmail.com
X-Originating-Location: Delhi, National Capital Territory of Delhi, IN (49.204.97.221)
X-Originating-Platform: Linux Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 13 Jun 2020 03:51:20 -0700
Message-ID: <ndMu.1592045480989192593.OKc1@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="UVP6DdQXKVnFa4xrVsnP"

--UVP6DdQXKVnFa4xrVsnP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I apply a few small patches in linux-raspberrypi to use a custom logo depe=
nding on an environment variable MY_VENDOR_NAME:

>=20
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
> SRC_URI +=3D "\
>     file://0001-fbdev-fbmem-add-config-option-to-center-the-bootup-l.pat=
ch
> \
>     file://0002-fbdev-fbmem-display-single-copy-of-logo.patch \
>     file://0003-video-logo-add-custom-logo.patch \
>     file://${@d.getVar('MY_VENDOR_NAME')}.ppm \
>     file://custom.cfg \
>     "
>=20
> do_kernel_checkout_append() {
>     cp ${WORKDIR}/${MY_VENDOR_NAME}".ppm"
> ${S}/drivers/video/logo/logo_custom_clut224.ppm
> }

I have added MY_VENDOR_NAME to=C2=A0BB_ENV_EXTRAWHITE, and based on the va=
lue of the environment variable,
I copy the required logo file (.ppm) to the checked-out kernel source tree=
 (inside do_kernel_checkout_append).

In addition, I build an out-of-tree kernel module (same for all vendors), =
and it is added to the image through IMAGE_INSTALL.
The kernel module doesn't depend on the MY_VENDOR_NAME variable anywhere.

This works well for me only if I use a different=C2=A0SSTATE_DIR for each =
MY_VENDOR_NAME.

If I use the same SSTATE_DIR for all the vendors,
the kernel module reports "disagrees about version of symbol module_layout=
" error, and doesn't get loaded.

Most of my distro is the same for all the vendors and has just minor modif=
ications based on=C2=A0MY_VENDOR_NAME variable.
Is there a way to use the same SSTATE_DIR?

Thanks

--UVP6DdQXKVnFa4xrVsnP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I apply a few small patches in linux-raspberrypi to use a cu=
stom logo depending on an environment variable MY_VENDOR_NAME:<br /><br />
<blockquote>
<pre class=3D"code highlight" lang=3D"plaintext"><span id=3D"LC1" class=3D=
"line" lang=3D"plaintext">FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"<=
/span>
<span id=3D"LC2" class=3D"line" lang=3D"plaintext"></span>
<span id=3D"LC3" class=3D"line" lang=3D"plaintext">SRC_URI +=3D "\</span>
<span id=3D"LC5" class=3D"line" lang=3D"plaintext">    file://0001-fbdev-f=
bmem-add-config-option-to-center-the-bootup-l.patch \</span>
<span id=3D"LC6" class=3D"line" lang=3D"plaintext">    file://0002-fbdev-f=
bmem-display-single-copy-of-logo.patch \</span>
<span id=3D"LC7" class=3D"line" lang=3D"plaintext">    file://0003-video-l=
ogo-add-custom-logo.patch \</span>
<span id=3D"LC10" class=3D"line" lang=3D"plaintext">    file://${@d.getVar=
('MY_VENDOR_NAME')}.ppm \</span>
<span id=3D"LC11" class=3D"line" lang=3D"plaintext">    file://custom.cfg =
\</span>
<span id=3D"LC12" class=3D"line" lang=3D"plaintext">    "</span>
<span id=3D"LC13" class=3D"line" lang=3D"plaintext"></span>
<span id=3D"LC14" class=3D"line" lang=3D"plaintext">do_kernel_checkout_app=
end() {</span>
<span id=3D"LC15" class=3D"line" lang=3D"plaintext">    cp ${WORKDIR}/${MY=
_VENDOR_NAME}".ppm" ${S}/drivers/video/logo/logo_custom_clut224.ppm<br /></=
span><span id=3D"LC16" class=3D"line" lang=3D"plaintext">}</span></pre>
</blockquote>
I have added MY_VENDOR_NAME to&nbsp;BB_ENV_EXTRAWHITE, and based on the va=
lue of the environment variable,<br />I copy the required logo file (.ppm) =
to the checked-out kernel source tree (inside do_kernel_checkout_append).<b=
r /><br />In addition, I build an out-of-tree kernel module (same for all v=
endors), and it is added to the image through IMAGE_INSTALL.<br />The kerne=
l module doesn't depend on the MY_VENDOR_NAME variable anywhere.<br /><br /=
>This works well for me only if I use a different&nbsp;SSTATE_DIR for each =
MY_VENDOR_NAME.<br /><br />If I use the same SSTATE_DIR for all the vendors=
,<br />the kernel module reports "disagrees about version of symbol module_=
layout" error, and doesn't get loaded.<br /><br />Most of my distro is the =
same for all the vendors and has just minor modifications based on&nbsp;MY_=
VENDOR_NAME variable.<br />Is there a way to use the same SSTATE_DIR?<br />=
<br />Thanks

--UVP6DdQXKVnFa4xrVsnP--
