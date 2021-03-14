Subject: Re: How can I create a truly minimal distribution that runs entirely from RAM?
To: yocto@lists.yoctoproject.org
From: p32@tuta.io
X-Originating-Location: Karlsruhe, Baden-Württemberg, DE (46.223.162.21)
X-Originating-Platform: Linux Firefox 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 14 Mar 2021 16:16:51 -0700
References: <CAGAf8LyKF9dAcPc9VVBTNcurVzNp3wgmgfVgDhMdK35fHtn_hw@mail.gmail.com>
In-Reply-To: <CAGAf8LyKF9dAcPc9VVBTNcurVzNp3wgmgfVgDhMdK35fHtn_hw@mail.gmail.com>
Message-ID: <29235.1615763811371292564@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="42d4OkbSmJ5aBH1QiDDz"

--42d4OkbSmJ5aBH1QiDDz
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you very much. I figured out that you can have Yocto create a suitabl=
e U-Boot wrapper as follows (from the image recipe):
IMAGE_FSTYPES =3D "cpio.xz.u-boot"

Now there is only one last issue that I wasn't able to solve yet: I would =
like Yocto to not only generate this U-Boot file but also add it to the boo=
t partition of a wic.gz image. I tried to extend the image recipe as follow=
s:
IMAGE_FSTYPES =3D "cpio.xz.u-boot wic.gz"
IMAGE_BOOT_FILES_append +=3D "${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.cpio.xz.u-=
boot"

Unfortunately, there is a dependency issue here. BitBake schedules the do_=
image_wic task before the do_image_cpio task, which creates the u-boot file=
. I tried to fix it as follows (from the image recipe):
do_image_wic[depends] =3D "my-image-recipe:do_image_cpio"

While the dependency graph acknowledges this dependency, BitBake does not =
seem to care about it. Whatever I try, do_image_wic is always executed firs=
t and, obviously, does not succeed. I think the problem is comparable to th=
e unsolved one outlined here:
https://stackoverflow.com/questions/58954170/yocto-creating-a-dependency-f=
or-wic-to-cpio-gz-image

How can I instruct Yocto to execute do_image_cpio first?

--42d4OkbSmJ5aBH1QiDDz
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you very much. I figured out that you can have Yocto create a suitabl=
e U-Boot wrapper as follows (from the image recipe):<br />IMAGE_FSTYPES =3D=
 "cpio.xz.u-boot"<br /><br />Now there is only one last issue that I wasn't=
 able to solve yet: I would like Yocto to not only generate this U-Boot fil=
e but also add it to the boot partition of a wic.gz image. I tried to exten=
d the image recipe as follows:<br />IMAGE_FSTYPES =3D "cpio.xz.u-boot wic.g=
z"<br />IMAGE_BOOT_FILES_append +=3D "${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.cpi=
o.xz.u-boot"<br /><br />Unfortunately, there is a dependency issue here. Bi=
tBake schedules the do_image_wic task before the do_image_cpio task, which =
creates the u-boot file. I tried to fix it as follows (from the image recip=
e):<br />do_image_wic[depends] =3D "my-image-recipe:do_image_cpio"<br /><br=
 />While the dependency graph acknowledges this dependency, BitBake does no=
t seem to care about it. Whatever I try, do_image_wic is always executed fi=
rst and, obviously, does not succeed. I think the problem is comparable to =
the unsolved one outlined here:<br />https://stackoverflow.com/questions/58=
954170/yocto-creating-a-dependency-for-wic-to-cpio-gz-image<br /><br />How =
can I instruct Yocto to execute do_image_cpio first?<br /><span class=3D"pe=
rmalink"></span>

--42d4OkbSmJ5aBH1QiDDz--
