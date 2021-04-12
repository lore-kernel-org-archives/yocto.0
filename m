Subject: #golang: go fetches dependencies in compile phase
To: yocto@lists.yoctoproject.org
From: "Juergen Landwehr" <juergen.landwehr@gmx.de>
X-Originating-Location: Stuttgart, Baden-Württemberg, DE (141.113.11.14)
X-Originating-Platform: Mac Firefox 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 12 Apr 2021 01:30:23 -0700
References: <AM9PR09MB46420D57B3A259C05C385EBEA8739@AM9PR09MB4642.eurprd09.prod.outlook.com>
In-Reply-To: <AM9PR09MB46420D57B3A259C05C385EBEA8739@AM9PR09MB4642.eurprd09.prod.outlook.com>
Message-ID: <1289.1618216223180826737@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Bnnc5atKnGbuXjMjfwjp"

--Bnnc5atKnGbuXjMjfwjp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Konrad,

thanks for your reply.

It is interesting that you mention vendoring, because we tried this approa=
ch as well. We started to develop a "go-mod-vendor.bbclass", which retrieve=
s the
application source code in "do_fetch_append" and then calls "go mod vendor=
".

The big problem was, that in that phase there is not yet a go executable a=
vailable for the recipe, so we downloaded our own go version, which makes t=
his approach a bit ugly.

But there is already a go version installed on the build host, right? In "=
poky/meta/recipes-devtools/go" I found a "go-native_1.14.bb" recipe.
So can we use this go exectuable somehow by adding a dependency (e.g. DEPE=
NDS=3D"go-native") and then use a path to the go exectuable that is guarant=
eed to work?

The other alternative (defining a recipe for each dependent go module) sou=
nds really painful. Especially as we have quite a few dependencies, which h=
ave dependencies as well.
I see the point, that doing it that way makes it more visible and more Yoc=
to like, but thinking about it gives me headaches already :)

Thanks again.

--Bnnc5atKnGbuXjMjfwjp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Konrad, <br /><br />thanks for your reply. <br /><br />It is interest=
ing that you mention vendoring, because we tried this approach as well. We =
started to develop a "go-mod-vendor.bbclass", which retrieves the<br />appl=
ication source code in "do_fetch_append" and then calls "go mod vendor". <b=
r /><br />The big problem was, that in that phase there is not yet a go exe=
cutable available for the recipe, so we downloaded our own go version, whic=
h makes this approach a bit ugly. <br /><br />But there is already a go ver=
sion installed on the build host, right? In "poky/meta/recipes-devtools/go"=
 I found a "go-native_1.14.bb" recipe. <br />So can we use this go exectuab=
le somehow by adding a dependency (e.g. DEPENDS=3D"go-native") and then use=
 a path to the go exectuable that is guaranteed to work?<br /><br />The oth=
er alternative (defining a recipe for each dependent go module) sounds real=
ly painful. Especially as we have quite a few dependencies, which have depe=
ndencies as well. <br />I see the point, that doing it that way makes it mo=
re visible and more Yocto like, but thinking about it gives me headaches al=
ready :)<br /><br />Thanks again.

--Bnnc5atKnGbuXjMjfwjp--
