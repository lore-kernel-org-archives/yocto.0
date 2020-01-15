Subject: #apt #yocto #sdk #toolchain
To: yocto@lists.yoctoproject.org
From: "FooBar" <snusbaum@graphicproducts.com>
X-Originating-Location: Beaverton, Oregon, US (50.43.9.42)
X-Originating-Platform: Windows Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 Jan 2020 07:04:08 -0800
Message-ID: <CjSc.1579100648909174558.l6tV@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7qSPFKYPAbzGR9MDKged"

--7qSPFKYPAbzGR9MDKged
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I=E2=80=99m having trouble adding apt to the cross-compile Qt SDK toolchai=
n. I=E2=80=99m hoping someone can direct me to some resources or guide me o=
n how to accomplish this task.

I have added the following to my conf/local.conf file (I believe some of t=
hese lines are not needed, but I followed several different tutorials that =
told me different things, and I=E2=80=99m not sure which is not right, if a=
ny):

*# Additional Changes*

*PACKAGE_CLASSES =3D "package_deb"*

*EXTRA_IMAGE_FEATURES +=3D " package-management "*

*IMAGE_FEATURES +=3D " package-management "*

*IMAGE_INSTALL_append +=3D " apt"*

*DISTRO_FEATURES_append =3D " apt cups"*

*CORE_IMAGE_EXTRA_INSTALL +=3D " apt cups"*

*TOOLCHAIN_TARGET_TASK_append =3D " apt cups"*

I expected after running

**

*bitbake meta-toolchain-qt5
bitbake apt =E2=80=93c populate_sdk*

*bitbake package-index*

And running

*tmp/deploy/sdk/<qt5-toolchain>.sh*

Then sourcing:

*. /opt/<path>/4.14-sumo/environment-setup-aarch64-poky-linux*

And using the toolchain to build=E2=80=A6 I get

*apt-pkg/pkgcache.h: No such file or directory*

How would I go about adding apt properly? It does not seem to be finding t=
he headers or resources for it in the sdk toolchain.

Thanks,

FooBar

--7qSPFKYPAbzGR9MDKged
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">Hi,</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">I=E2=80=99m having tr=
ouble adding apt to the cross-compile Qt SDK toolchain. I=E2=80=99m hoping =
someone can direct me to some resources or guide me on how to accomplish th=
is task.</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">I have added the foll=
owing to my conf/local.conf file (I believe some of these lines are not nee=
ded, but I followed several different tutorials that told me different thin=
gs, and I=E2=80=99m not sure which is not right, if any):</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><strong><em># Additio=
nal Changes=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</em>=
</strong></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><strong><em>PACKAGE_C=
LASSES =3D &#34;package_deb&#34;</em></strong></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><strong><em>EXTRA_IMA=
GE_FEATURES +=3D &#34; package-management &#34;</em></strong></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><strong><em>IMAGE_FEA=
TURES +=3D &#34; package-management &#34;</em></strong></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><strong><em>IMAGE_INS=
TALL_append +=3D &#34; apt&#34;</em></strong></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><strong><em>DISTRO_FE=
ATURES_append =3D &#34; apt cups&#34;</em></strong></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><strong><em>CORE_IMAG=
E_EXTRA_INSTALL +=3D &#34; apt cups&#34;</em></strong></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><strong><em>TOOLCHAIN=
_TARGET_TASK_append =3D &#34; apt cups&#34;</em></strong></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">I expected after runn=
ing</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><strong>=C2=A0</stron=
g></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><strong>bitbake meta-=
toolchain-qt5<br/>bitbake apt =E2=80=93c populate_sdk</strong></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><strong>bitbake packa=
ge-index</strong></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">And running</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><strong>tmp/deploy/sd=
k/&lt;qt5-toolchain&gt;.sh</strong></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">Then sourcing:</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><strong>. /opt/&lt;pa=
th&gt;/4.14-sumo/environment-setup-aarch64-poky-linux</strong></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">And using the toolcha=
in to build=E2=80=A6 I get</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><strong>apt-pkg/pkgca=
che.h: No such file or directory</strong></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">How would I go about =
adding apt properly? It does not seem to be finding the headers or resource=
s for it in the sdk toolchain.</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">Thanks,</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">FooBar</p>

--7qSPFKYPAbzGR9MDKged--
