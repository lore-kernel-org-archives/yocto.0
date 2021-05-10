Subject: [dunfell] Remove hwclock #dunfell #yocto
To: yocto@lists.yoctoproject.org
From: "Alexandre GAMBIER" <alexandre@hedtechnologies.com>
X-Originating-Location: Menthonnex-sous-Clermont, Auvergne-Rhone-Alpes, FR (88.162.124.174)
X-Originating-Platform: Linux Chrome 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 10 May 2021 07:36:06 -0700
Message-ID: <NC5b.1620657366190585319.tlDT@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="p5RQfKvml2FeEfzExfzM"

--p5RQfKvml2FeEfzExfzM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I would like to remove hwclock from the rootfs cause we don't have an RTC.
Maybe later I'll replace it with fake-hwclock.

I'm using dunfell with IPK packages and I tried to add the following setti=
ngs in my image settings file (not all at the same time) but none of them r=
emoved hwclock.

* PACKAGE_EXCLUDE +=3D " util-linux-hwclock "
* BAD_RECOMMENDATIONS +=3D " util-linux-hwclock "
* IMAGE_INSTALL_remove +=3D " util-linux-hwclock "

Is there a way to remove the package util-linux-hwclock ?
I could use IMAGE_POSTPROCESS_COMMAND and write my own script to remove it=
 but I think it's better and safer to remove the package during the rootfs =
build.

Thanks

--p5RQfKvml2FeEfzExfzM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I would like to remove hwclock from the rootfs cause we don'=
t have an RTC. <br />Maybe later I'll replace it with fake-hwclock.<br /><b=
r />I'm using dunfell with IPK packages and I tried to add the following se=
ttings in my image settings file (not all at the same time) but none of the=
m removed <em>hwclock</em>.<br />
<ul>
<li>PACKAGE_EXCLUDE +=3D " util-linux-hwclock "</li>
<li>BAD_RECOMMENDATIONS +=3D " util-linux-hwclock "</li>
<li>IMAGE_INSTALL_remove +=3D " util-linux-hwclock "</li>
</ul>
<br />Is there a way to remove the package <em>util-linux-hwclock</em> ?<b=
r />I could use&nbsp;<em>IMAGE_POSTPROCESS_COMMAND</em> and write my own sc=
ript to remove it but I think it's better and safer to remove the package d=
uring the rootfs build.<br /><br />Thanks<br /><br />

--p5RQfKvml2FeEfzExfzM--
