Subject: Unable to add pre compiled library #yocto
To: yocto@lists.yoctoproject.org
From: "Vijay Rakesh Munganda" <vijayrakeshmunganda@gmail.com>
X-Originating-Location: IN (164.164.95.9)
X-Originating-Platform: Windows Chrome 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 11 Jan 2021 23:46:47 -0800
Message-ID: <H9Ol.1610437607545381604.zv9V@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="EQ7a6Yb17cVq01UbN4Da"

--EQ7a6Yb17cVq01UbN4Da
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to install a pre-compiled library, but I got an error as follow=
s. I had tried to add libcxx from meta-clang, but it doesn't compatible wit=
h Yocto dunfell version. Is there another way to avoid error?

>=20
> ERROR: tokbox-2.18.1-r0 do_package_qa: QA Issue: /usr/lib/libopentok.so
> contained in package tokbox requires libc++.so.1()(64bit), but no
> providers found in RDEPENDS_tokbox? [file-rdeps]
> ERROR: tokbox-2.18.1-r0 do_package_qa: QA run found fatal errors. Please
> consider fixing them.
>=20

Thanks,
VR.

--EQ7a6Yb17cVq01UbN4Da
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I'm trying to install a pre-compiled library, but I got an e=
rror as follows. I had tried to add libcxx from meta-clang, but it doesn't =
compatible with Yocto dunfell version. Is there another way to avoid error?=
<br /><br />
<blockquote>
<div>ERROR: tokbox-2.18.1-r0 do_package_qa: QA Issue: /usr/lib/libopentok.=
so contained in package tokbox requires libc++.so.1()(64bit), but no provid=
ers found in RDEPENDS_tokbox? [file-rdeps]</div>
<div>ERROR: tokbox-2.18.1-r0 do_package_qa: QA run found fatal errors. Ple=
ase consider fixing them.</div>
</blockquote>
Thanks,<br />VR.

--EQ7a6Yb17cVq01UbN4Da--
