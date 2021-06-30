Subject: man package issue
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (157.47.101.132)
X-Originating-Platform: Linux Chrome 89
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 30 Jun 2021 03:26:01 -0700
Message-ID: <U2Gm.1625048761558944926.Xwyr@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ULJJZtKFo6lWV7VwsRbh"

--ULJJZtKFo6lWV7VwsRbh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Guys,

I am building core-image-sato image. i am facing issue rootfs creation. ca=
n anybody know give suggition how we can solve this issue.

ERROR: core-image-sato-1.0-r0 do_rootfs: Postinstall scriptlets of ['man-p=
ages'] have failed. If the intention is to defer them to first boot,
then please place them into pkg_postinst_ontarget_${PN} ().
Deferring to first boot via 'exit 1' is no longer supported.

--
Thanks & Regards,
Sateesh

--ULJJZtKFo6lWV7VwsRbh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Guys,<br /><br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;I am bu=
ilding core-image-sato image. i am facing issue rootfs creation. can anybod=
y know give suggition how we can solve this issue.<br /><br />
<div>ERROR: core-image-sato-1.0-r0 do_rootfs: Postinstall scriptlets of ['=
man-pages'] have failed. If the intention is to defer them to first boot,</=
div>
<div>then please place them into pkg_postinst_ontarget_${PN} ().</div>
<div>Deferring to first boot via 'exit 1' is no longer supported.</div>
<div>&nbsp;</div>
<br />-- <br />Thanks &amp; Regards,<br />Sateesh

--ULJJZtKFo6lWV7VwsRbh--
