Subject: Re: KeyError: 'getpwuid(): uid not found: 1000' in do_package phase
To: yocto@lists.yoctoproject.org
From: "Thomas Hill" <tom.hill@inbox.lv>
X-Originating-Location: Gothenburg, Västra Götaland County, SE (212.85.83.157)
X-Originating-Platform: Windows Firefox 78
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 06 May 2021 01:57:28 -0700
References: <CA+chaQdQgTp=CxNrj1BOB60ra4PakJoHNNC7euZzt4pH-J_=hA@mail.gmail.com>
In-Reply-To: <CA+chaQdQgTp=CxNrj1BOB60ra4PakJoHNNC7euZzt4pH-J_=hA@mail.gmail.com>
Message-ID: <636.1620291448346580381@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LCDXzNIh2bEMOIFa51aj"

--LCDXzNIh2bEMOIFa51aj
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin!

On Mon, Nov 16, 2020 at 02:28 PM, Martin Jansa wrote:

>=20
> https://github.com/webOS-ports/meta-webos-ports/commit/9fd17a67cdbed92df=
13a14b002a189b4c6c2d442
>=20
>=20
> is an example where it triggers this error, but doesn't trigger the more
> common host-user-contaminated QA error (unless you happened=C2=A0to use =
UID
> 1001 on host for the user running bitbake).
>=20

I have here a similar problem with one of my own packages. It happens that=
 my bitbake user uses UID 1001. Do you have more information why this is a =
problem? Should it be enough to change the UID to 1002 to get everything ru=
nning?

Thanks!
Tom

--LCDXzNIh2bEMOIFa51aj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin!<br /><br />On Mon, Nov 16, 2020 at 02:28 PM, Martin Jansa wrote:=
<br />
<blockquote>
<div dir=3D"ltr"><a href=3D"https://github.com/webOS-ports/meta-webos-port=
s/commit/9fd17a67cdbed92df13a14b002a189b4c6c2d442">https://github.com/webOS=
-ports/meta-webos-ports/commit/9fd17a67cdbed92df13a14b002a189b4c6c2d442</a>=
<br />
<div>&nbsp;</div>
<div>is an example where it triggers this error, but doesn't trigger the m=
ore common host-user-contaminated QA error (unless you happened&nbsp;to use=
 UID 1001 on host for the user running bitbake).</div>
</div>
</blockquote>
I have here a similar problem with one of my own packages. It happens that=
 my bitbake user uses UID 1001. Do you have more information why this is a =
problem? Should it be enough to change the UID to 1002 to get everything ru=
nning?<br /><br />Thanks!<br />Tom

--LCDXzNIh2bEMOIFa51aj--
