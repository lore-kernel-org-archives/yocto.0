Subject: Re: Dunfell, nodejs and typescript - short experience report
To: yocto@lists.yoctoproject.org
From: "TRO" <thomas.roos@industronic.de>
X-Originating-Location: Würzburg, Bavaria, DE (212.63.82.130)
X-Originating-Platform: Linux Firefox 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 28 Feb 2021 23:51:43 -0800
References: <d9cf8225-1f2c-61c1-8ebe-fd307a257fce@voxel.at>
In-Reply-To: <d9cf8225-1f2c-61c1-8ebe-fd307a257fce@voxel.at>
Message-ID: <10413.1614585103443053561@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Mo6z5pDMHbXGJLC0UosH"

--Mo6z5pDMHbXGJLC0UosH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Simon,
thank you - in my current solution I don't use npm bbclass at all.
I basically use npmsw://${THISDIR}/${BPN}/npm-shrinkwrap.json;dev=3DTrue
this will downloadall npm stuff including angular because of dev=3DTrue to=
 $S/node_modules

do_compile () {
#=C2=A0=C2=A0=C2=A0 build frontend
chmod -R a+w ${S}/node_modules/@angular
chmod 755 ${S}/node_modules/@angular/cli/bin/ng
cd ${S}/ && ./node_modules/@angular/cli/bin/ng build --prod
}

I'm dealing with that problem:
https://lists.yoctoproject.org/g/yocto/message/52515

--Mo6z5pDMHbXGJLC0UosH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Simon,<br />thank you - in my current solution I don't use npm bbclass a=
t all. <br />I basically use npmsw://${THISDIR}/${BPN}/npm-shrinkwrap.json;=
dev=3DTrue<br />this will downloadall npm stuff including angular because o=
f dev=3DTrue to $S/node_modules <br /><br />do_compile () {<br />#&nbsp;&nb=
sp;&nbsp; build frontend<br />&nbsp;&nbsp;&nbsp;&nbsp; chmod -R a+w ${S}/no=
de_modules/@angular<br />&nbsp;&nbsp;&nbsp;&nbsp; chmod 755 ${S}/node_modul=
es/@angular/cli/bin/ng<br />&nbsp;&nbsp;&nbsp;&nbsp; cd ${S}/ &amp;&amp; ./=
node_modules/@angular/cli/bin/ng build --prod<br />}<br /><br />I'm dealing=
 with that problem:<br />https://lists.yoctoproject.org/g/yocto/message/525=
15

--Mo6z5pDMHbXGJLC0UosH--
