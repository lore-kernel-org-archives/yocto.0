Subject: #yocto apparmor recipe prevents read only file system
To: yocto@lists.yoctoproject.org
From: "Hans-Ulrich Schlieben" <hu.schlieben@codewrights.de>
X-Originating-Location: Berlin, Land Berlin, DE (82.194.127.119)
X-Originating-Platform: Windows Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 03 Mar 2020 09:46:30 -0800
Message-ID: <MVcj.1583257590462019302.WPr2@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="uE92nShhQgRHNepZ6zrM"

--uE92nShhQgRHNepZ6zrM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

building my image with
EXTRA_IMAGE_FEATURES +=3D "read-only-rootfs"
was prevented by the apparmor_2.13.3 recipe with

pkg_postinst_ontarget_${PN} () {
if [ ! -d /etc/apparmor.d/cache ] ; then
mkdir /etc/apparmor.d/cache
fi
}

removing the these lines for testing the image built just fine.

Why is the directory /etc/apparmor.d/cache created on initial boot and not=
 earlier, e.g. in do_install?

Thanks for reading, any help would be great.

Best Regards

hu

pkg_postinst_ontarget

--uE92nShhQgRHNepZ6zrM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />building my image with <br />EXTRA_IMAGE_FEATURES +=3D "read=
-only-rootfs"&nbsp;
<div>was prevented by the apparmor_2.13.3 recipe with<br /><br />
<div>pkg_postinst_ontarget_${PN} () {</div>
<div>if [ ! -d /etc/apparmor.d/cache ] ; then</div>
<div>&nbsp; &nbsp; mkdir /etc/apparmor.d/cache</div>
<div>fi</div>
<div>}</div>
<div><br />removing the these lines for testing the image built just fine.=
<br /><br />Why is the directory /etc/apparmor.d/cache created on initial b=
oot and not earlier, e.g. in do_install?<br /><br />Thanks for reading, any=
 help would be great.<br /><br />Best Regards<br /><br />hu<br /><br /><br =
/><br /><br /></div>
pkg_postinst_ontarget</div>

--uE92nShhQgRHNepZ6zrM--
