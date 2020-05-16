Subject: Best practice for kernel module development
To: yocto@lists.yoctoproject.org
From: alexandru.ionita@gmail.com
X-Originating-Location: Strasbourg, Grand Est, FR (82.251.130.58)
X-Originating-Platform: Mac Firefox 76
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 16 May 2020 07:27:14 -0700
Message-ID: <n2NF.1589639234581328667.vqqR@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ANKx2Jh2JP1KPVjYqrvp"

--ANKx2Jh2JP1KPVjYqrvp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello!

I'm totally new to yocto and mainly new to linux development as a whole. T=
hus, please excuse me if my concerns that I raise here are inadequate.

=3D=3D Context =3D=3D
We are developing a quite simple kernel driver that will make use of the G=
PIO. For a better reproducibility of the development infrastructure, we wou=
ld like to be able to build this module against an SDK that is provided by =
the yocto build.

=3D=3D Setup =3D=3D
While the yocto documentation provides a way to build the kernel module du=
ring the yocto build, according to this documentation: https://www.yoctopro=
ject.org/docs/latest/kernel-dev/kernel-dev.html#incorporating-out-of-tree-m=
odules ( https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.htm=
l#incorporating-out-of-tree-modules, ) , we were thinking to make use of th=
e SDK to decouple the development phase of the module from the yocto build.=
 In order to achieve this, the SDK requires the kernel to be configured acc=
ording to the machine configuration. We expected to be able to have yocto e=
xport in the SDK the kernel headers already compiled according to the targe=
t environment. However, we couldn't achieve this objective (maybe we're mis=
sing something!!). The farthest we could go is to have yocto export the ker=
nel sources into the SDK (according to this SO post https://stackoverflow.c=
om/a/31261404/676344 ), but then, configuring it was not documented.

=3D=3D Conclusion =3D=3D
We would like to know what is the best practice, from a development and co=
ntinuous integration perspective, to be able to develop a kernel module.

Your advice is highly appreciated.

Thank you,
Alexandru

--ANKx2Jh2JP1KPVjYqrvp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello!<br /><br />I'm totally new to yocto and mainly new to linux devel=
opment as a whole. Thus, please excuse me if my concerns that I raise here =
are inadequate.<br /><br />=3D=3D Context =3D=3D<br />We are developing a q=
uite simple kernel driver that will make use of the GPIO. For a better repr=
oducibility of the development infrastructure, we would like to be able to =
build this module against an SDK that is provided by the yocto build. <br /=
><br />=3D=3D Setup =3D=3D<br />While the yocto documentation provides a wa=
y to build the kernel module during the yocto build, according to this docu=
mentation: <a href=3D"https://www.yoctoproject.org/docs/latest/kernel-dev/k=
ernel-dev.html#incorporating-out-of-tree-modules," target=3D"_blank" rel=3D=
"noopener">https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.h=
tml#incorporating-out-of-tree-modules</a>, we were thinking to make use of =
the SDK to decouple the development phase of the module from the yocto buil=
d. In order to achieve this, the SDK requires the kernel to be configured a=
ccording to the machine configuration. We expected to be able to have yocto=
 export in the SDK the kernel headers already compiled according to the tar=
get environment. However, we couldn't achieve this objective (maybe we're m=
issing something!!). The farthest we could go is to have yocto export the k=
ernel sources into the SDK (according to this SO post <a href=3D"https://st=
ackoverflow.com/a/31261404/676344" target=3D"_blank" rel=3D"noopener">https=
://stackoverflow.com/a/31261404/676344</a>), but then, configuring it was n=
ot documented.</p>
<p>=3D=3D Conclusion =3D=3D<br />We would like to know what is the best pr=
actice, from a development and continuous integration perspective, to be ab=
le to develop a kernel module. <br /><br />Your advice is highly appreciate=
d. <br /><br />Thank you,<br />Alexandru</p>

--ANKx2Jh2JP1KPVjYqrvp--
