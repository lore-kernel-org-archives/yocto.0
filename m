Subject: Re: running application in user mode instead of root #yocto
To: yocto@lists.yoctoproject.org
From: "Alessandro Tagliapietra" <tagliapietra.alessandro@gmail.com>
X-Originating-Location: Las Vegas, Nevada, US (72.207.140.105)
X-Originating-Platform: Linux Chrome 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 27 Apr 2021 00:38:38 -0700
References: <Mgmv.1619507435353064322.vAYm@lists.yoctoproject.org>
In-Reply-To: <Mgmv.1619507435353064322.vAYm@lists.yoctoproject.org>
Message-ID: <1187.1619509118723710252@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="U9g35DaeOAk4EfQOfiOQ"

--U9g35DaeOAk4EfQOfiOQ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm new to yocto as well but what we do is in our own custom image:

inherit extrausers
EXTRA_USERS_PARAMS =3D " useradd nodered"

and then since we use systemd we've created our own service file that incl=
udes:

User=3Dnodered

in the [service] block definition, so the executable is run using that use=
r instead of root.

Extrausers docs are https://www.yoctoproject.org/docs/current/mega-manual/=
mega-manual.html#ref-classes-extrausers

An alternative you might look at is the useradd class https://git.yoctopro=
ject.org/cgit.cgi/poky/tree/meta-skeleton/recipes-skeleton/useradd/useradd-=
example.bb which probably lets you set the users in your own recipe instead=
 at image level

--U9g35DaeOAk4EfQOfiOQ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm new to yocto as well but what we do is in our own custom image:<br /><b=
r />inherit extrausers<br />EXTRA_USERS_PARAMS =3D " useradd nodered"<br />=
<br />and then since we use systemd we've created our own service file that=
 includes:<br /><br />User=3Dnodered<br /><br />in the [service] block defi=
nition, so the executable is run using that user instead of root.<br /><br =
/>Extrausers docs are&nbsp;<a href=3D"https://www.yoctoproject.org/docs/cur=
rent/mega-manual/mega-manual.html#ref-classes-extrausers" target=3D"_blank"=
 rel=3D"noopener">https://www.yoctoproject.org/docs/current/mega-manual/meg=
a-manual.html#ref-classes-extrausers</a><br /><br />An alternative you migh=
t look at is the useradd class&nbsp;<a href=3D"https://git.yoctoproject.org=
/cgit.cgi/poky/tree/meta-skeleton/recipes-skeleton/useradd/useradd-example.=
bb" target=3D"_blank" rel=3D"noopener">https://git.yoctoproject.org/cgit.cg=
i/poky/tree/meta-skeleton/recipes-skeleton/useradd/useradd-example.bb</a>&n=
bsp;which probably lets you set the users in your own recipe instead at ima=
ge level

--U9g35DaeOAk4EfQOfiOQ--
