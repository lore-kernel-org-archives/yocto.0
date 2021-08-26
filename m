Subject: Dependencies are not resolved correctly when building the SDK
To: yocto@lists.yoctoproject.org
From: "asconcepcion" <asconcepcion@acoro.eu>
X-Originating-Location: Barcelona, Catalonia, ES (83.50.28.239)
X-Originating-Platform: Windows Firefox 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 25 Aug 2021 23:54:35 -0700
Message-ID: <32iL.1629960875523290856.eNOY@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="tKVLeYOzjpRE64vFK3jS"

--tKVLeYOzjpRE64vFK3jS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

We have a custom package recipe that has a build dependency with another on=
e (defined in yocto with the DEPENDS variable). If we build an image that i=
ncludes that package, bitbake will build the dependency before building the=
 package, as expected. However, if we build the SDK associated to that imag=
e (with bitbake <image> -c populate_sdk), it will fail in building that pac=
kage because of a missing dependency. Does anyone know what could be causin=
g this behavior?

Thanks.

--tKVLeYOzjpRE64vFK3jS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />We have a custom package recipe that has a build dependen=
cy with another one (defined in yocto with the DEPENDS variable). If we bui=
ld an image that includes that package, bitbake will build the dependency b=
efore building the package, as expected. However, if we build the SDK assoc=
iated to that image (with bitbake &lt;image&gt; -c populate_sdk), it will f=
ail in building that package because of a missing dependency. Does anyone k=
now what could be causing this behavior?<br /><br />Thanks.

--tKVLeYOzjpRE64vFK3jS--
