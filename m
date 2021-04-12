Subject: #golang: go fetches dependencies in compile phase
To: yocto@lists.yoctoproject.org
From: "Juergen Landwehr" <juergen.landwehr@gmx.de>
X-Originating-Location: Stuttgart, Baden-Württemberg, DE (141.113.11.14)
X-Originating-Platform: Mac Firefox 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 12 Apr 2021 04:47:33 -0700
References: <8f3535e5-42c0-baf7-ae8b-fca906f33d05@gmail.com>
In-Reply-To: <8f3535e5-42c0-baf7-ae8b-fca906f33d05@gmail.com>
Message-ID: <7847.1618228053017471875@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="RO5QskGs7l4d8YEDFrSo"

--RO5QskGs7l4d8YEDFrSo
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Robert,

thanks for your thoughts.

I see your point and the last thing I want is "NOT reproducable builds".

But dependency management in go is not that arbitrary as it may seem. Depe=
ndencies and their version is stored in "go.mod". To ensure reproducable bu=
ilds, hashes for each dependency and version are stored in "go.sum". Both f=
iles are in git and together with a local golang proxy, this should ensure =
reproducable builds, right?

To ensure that licences are valid and did not change over time, we develop=
ed a little tool, that goes through all dependencies and creates the follow=
ing output, which we insert into our recipe:

LICENSE =3D "Apache-2.0 & MIT & MIT & BSD-2-Clause & BSD-3-Clause & ...

LIC_FILES_CHKSUM =3D " \
file://${S}/src/${GO_IMPORT}/vendor/github.com/coreos/go-oidc/LICENSE;md5=
=3Dd2794c0df5b907fdace235a619d80314 \
file://${S}/src/${GO_IMPORT}/vendor/github.com/go-playground/locales/LICEN=
SE;md5=3D3ccbda375ee345400ad1da85ba522301 \
file://${S}/src/${GO_IMPORT}/vendor/github.com/go-playground/universal-tra=
nslator/LICENSE;md5=3D2e2b21ef8f61057977d27c727c84bef1 \
file://${S}/src/${GO_IMPORT}/vendor/github.com/godbus/dbus/v5/LICENSE;md5=
=3D09042bd5c6c96a2b9e45ddf1bc517eed \
file://${S}/src/${GO_IMPORT}/vendor/github.com/golang/gddo/LICENSE;md5=3D4=
c728948788b1a02f33ae4e906546eef \
... This is a manual step and whenever dependencies change we have to crea=
te this list again and add it to the recipe, but it contains all the requir=
ed license information and makes them visible in the recipe.

It might pollute the recipe a bit, but luckily we do not have thousands of=
 dependencies like some npm projects. So I think it is still manageable. An=
d is it much less work, than defining a recipe for each dependency.

So we would
* guarantee reproducable builds
* use the programming language (in our case golang) to handle dependency m=
anagement
* ensure that licenses are visible and correct

I mean it is not perfect and still a compromise, but it should work withou=
t breaking reproducable builds or causing license issues?
What do you think?

Regards,
J=C3=BCrgen

PS: Thanks for the link. I was not aware of this discussion (it is quite a=
 bit to read:))

--RO5QskGs7l4d8YEDFrSo
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Robert, <br /><br />thanks for your thoughts. <br /><br />I see your poi=
nt and the last thing I want is "NOT reproducable builds". <br /><br />But =
dependency management in go is not that arbitrary as it may seem. Dependenc=
ies and their version is stored in "go.mod". To ensure reproducable builds,=
 hashes for each dependency and version are stored in "go.sum". Both files =
are in git and together with a local golang proxy, this should ensure repro=
ducable builds, right?<br /><br />To ensure that licences are valid and did=
 not change over time, we developed a little tool, that goes through all de=
pendencies and creates the following output, which we insert into our recip=
e: <br /><br />
<pre style=3D"background-color: #ffffff; color: #080808; font-family: 'Jet=
Brains Mono',monospace; font-size: 12,0pt;">LICENSE =3D "Apache-2.0 &amp; M=
IT &amp; MIT &amp; BSD-2-Clause &amp; BSD-3-Clause &amp; ...<br /><br />LIC=
_FILES_CHKSUM =3D " \<br />file://${S}/src/${GO_IMPORT}/vendor/github.com/c=
oreos/go-oidc/LICENSE;md5=3Dd2794c0df5b907fdace235a619d80314 \<br />file://=
${S}/src/${GO_IMPORT}/vendor/github.com/go-playground/locales/LICENSE;md5=
=3D3ccbda375ee345400ad1da85ba522301 \<br />file://${S}/src/${GO_IMPORT}/ve=
ndor/github.com/go-playground/universal-translator/LICENSE;md5=3D2e2b21ef8f=
61057977d27c727c84bef1 \<br />file://${S}/src/${GO_IMPORT}/vendor/github.co=
m/godbus/dbus/v5/LICENSE;md5=3D09042bd5c6c96a2b9e45ddf1bc517eed \<br />file=
://${S}/src/${GO_IMPORT}/vendor/github.com/golang/gddo/LICENSE;md5=3D4c7289=
48788b1a02f33ae4e906546eef \<br />...</pre>
This is a manual step and whenever dependencies change we have to create t=
his list again and add it to the recipe, but it contains all the required l=
icense information and makes them visible in the recipe. <br /><br />It mig=
ht pollute the recipe a bit, but luckily we do not have thousands of depend=
encies like some npm projects. So I think it is still manageable. And is it=
 much less work, than defining a recipe for each dependency.<br /><br />So =
we would<br />* guarantee reproducable builds<br />* use the programming la=
nguage (in our case golang) to handle dependency management<br />* ensure t=
hat licenses are visible and correct<br /><br />I mean it is not perfect an=
d still a compromise, but it should work without breaking reproducable buil=
ds or causing license issues?<br />What do you think?<br /><br />Regards, <=
br />J&uuml;rgen<br /><br />PS: Thanks for the link. I was not aware of thi=
s discussion (it is quite a bit to read:))

--RO5QskGs7l4d8YEDFrSo--
