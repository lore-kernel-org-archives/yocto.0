Subject: Re: How to disable specific default recipe to be included in Yocto? #linux #yocto #cups #hplip
To: yocto@lists.yoctoproject.org
From: "Shamil Khan" <shamil.khan@exaleapsemi.com>
X-Originating-Location: Hyderabad, Telangana, IN (14.98.179.254)
X-Originating-Platform: Linux Chrome 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 17 Nov 2020 23:38:11 -0800
References: <TrZe.1596525506407384003.CLar@lists.yoctoproject.org>
In-Reply-To: <TrZe.1596525506407384003.CLar@lists.yoctoproject.org>
Message-ID: <5848.1605685091547445364@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="nxtjdf6edItLrAH8Wxm2"

--nxtjdf6edItLrAH8Wxm2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

You can use BBMASK variable in your configuration file to prevent bitbake =
from parsing certain recipes.

For example,
BBMASK =3D "example.bb"
Here, BitBake ignores the example.bb recipe.

Hope this helps!

--nxtjdf6edItLrAH8Wxm2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"line-height: 1.42857;"><span style=3D"white-space: pre-wrap;">H=
i,</span></p>
<p style=3D"line-height: 1.42857;"><span style=3D"white-space: pre-wrap;">=
You can use BBMASK variable in your configuration file to prevent bitbake f=
rom parsing certain recipes.</span></p>
<p style=3D"line-height: 1.42857;"><span style=3D"white-space: pre-wrap;">=
For example,<br />BBMASK =3D "example.bb"<br />Here, BitBake ignores the ex=
ample.bb recipe.</span><span style=3D"white-space: pre-wrap;"></span></p>
<p style=3D"line-height: 1.42857;"><span style=3D"white-space: pre-wrap;">=
Hope this helps!</span></p>

--nxtjdf6edItLrAH8Wxm2--
