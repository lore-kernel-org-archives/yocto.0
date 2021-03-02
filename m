Subject: Reducing the perl footprint on my image
To: yocto@lists.yoctoproject.org
From: rustyhowell@gmail.com
X-Originating-Location: West Valley City, Utah, US (68.177.138.69)
X-Originating-Platform: Linux Firefox 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 02 Mar 2021 08:22:06 -0800
Message-ID: <zFb6.1614702126167583420.u32u@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="No2qPtJ7DaLYG8dTp30x"

--No2qPtJ7DaLYG8dTp30x
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have an image that is using debian package management=C2=A0 (PACKAGE_CLAS=
SES =3D "package_deb").=C2=A0 Because apt and dpkg require perl, perl is be=
ing installed in the image.=C2=A0=C2=A0 No problem.=C2=A0 Except that the e=
ntire perl stack is 669 packages. Most of the packages are super tiny and a=
re probably not needed by apt or dpkg.=C2=A0 Is there a way to strip down t=
he large number of perl packages in the image to just what is needed by apt=
/dpkg?
I haven't found anything in the MegaManual yet.
Thanks in advance.

--No2qPtJ7DaLYG8dTp30x
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have an image that is using debian package management&nbsp; (PACKAGE_CLAS=
SES =3D "package_deb").&nbsp; Because apt and dpkg require perl, perl is be=
ing installed in the image.&nbsp;&nbsp; No problem.&nbsp; Except that the e=
ntire perl stack is 669 packages. Most of the packages are super tiny and a=
re probably not needed by apt or dpkg.&nbsp; Is there a way to strip down t=
he large number of perl packages in the image to just what is needed by apt=
/dpkg?<br />I haven't found anything in the MegaManual yet.<br />Thanks in =
advance.

--No2qPtJ7DaLYG8dTp30x--
