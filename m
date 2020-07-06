Subject: #yocto howto use deltask
To: yocto@lists.yoctoproject.org
From: "Hans-Ulrich Schlieben" <hu.schlieben@codewrights.de>
X-Originating-Location: Ahlersbach, Hesse, DE (5.10.161.194)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 06 Jul 2020 04:00:11 -0700
Message-ID: <qZOx.1594033211826466725.wfsG@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lwJxM18KUQuBK2bU9gnn"

--lwJxM18KUQuBK2bU9gnn
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

my image build fails with:
ERROR: ims-image-fieldgate-1.0-r0 do_rootfs: The following packages could =
not be configured offline and rootfs is read-only: ['apparmor']

The image build succeeds if i remove the task pkg_postinst_ontarget_${PN} =
from apparmor_2.13.3.bb.

I tried to use deltask in my apparmor_2.13.3.bbappend with different setti=
ngs:
deltask postinst_ontarget
deltask postinst
deltask pkg_postinst
deltask pkg_postinst_ontarget_
deltask pkg_postinst_ontarget_apparmor
deltask pkg_postinst_ontarget_apparmor_2

and

postinst_ontarget[noexec] =3D "1"
postinst[noexec] =3D "1"
pkg_postinst[noexec] =3D "1"
pkg_postinst_ontarget_[noexec] =3D "1"
pkg_postinst_ontarget_apparmor[noexec] =3D "1"
pkg_postinst_ontarget_apparmor_2[noexec] =3D "1"

but to no avail - I always get the rootfs error.

I know how to patch source files. But it seems there is no way to patch a =
recipe.
My workaround would be to make a copy of the apparmor recipe without the p=
ostinst part.

Is there a better or another way to do this?

Best regards

hu

--lwJxM18KUQuBK2bU9gnn
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />my image build fails with:<br />
<div>ERROR: ims-image-fieldgate-1.0-r0 do_rootfs: The following packages c=
ould not be configured offline and rootfs is read-only: ['apparmor']<br /><=
br />The image build succeeds if i remove the task pkg_postinst_ontarget_${=
PN} from apparmor_2.13.3.bb.<br /><br /></div>
<div>I tried to use deltask in my apparmor_2.13.3.bbappend with different =
settings:</div>
<div>
<div>deltask postinst_ontarget</div>
<div>deltask postinst</div>
<div>deltask pkg_postinst</div>
<div>deltask pkg_postinst_ontarget_</div>
<div>deltask pkg_postinst_ontarget_apparmor</div>
<div>deltask pkg_postinst_ontarget_apparmor_2<br /><br />and<br />
<div><br />postinst_ontarget[noexec] =3D "1"</div>
<div>postinst[noexec] =3D "1"</div>
<div>pkg_postinst[noexec] =3D "1"</div>
<div>pkg_postinst_ontarget_[noexec] =3D "1"</div>
<div>pkg_postinst_ontarget_apparmor[noexec] =3D "1"</div>
<div>pkg_postinst_ontarget_apparmor_2[noexec] =3D "1"</div>
<div>&nbsp;</div>
</div>
<div>but to no avail - I always get the rootfs error.&nbsp;<br /><br />I k=
now how to patch source files. But it seems there is no way to patch a reci=
pe.<br />My workaround would be to make a copy of the apparmor recipe witho=
ut the postinst part.<br /><br />Is there a better or another way to do thi=
s?<br /><br />Best regards<br /><br />hu<br /><br /></div>
</div>

--lwJxM18KUQuBK2bU9gnn--
