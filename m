Subject: Re: Perl populate sysroot fails (yocto 2.0.3)
To: yocto@lists.yoctoproject.org
From: "Varangu-Booth, Valen" <Valen.Varangu-Booth@christiedigital.com>
X-Originating-Location: US (216.94.43.6)
X-Originating-Platform: Linux Firefox 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 07 Oct 2020 11:36:07 -0700
References: <CAMKF1srdJXNyWMBvQx1pjxN25a4ChSNpAGmnLE8ZvMLNnR+zUw@mail.gmail.com>
In-Reply-To: <CAMKF1srdJXNyWMBvQx1pjxN25a4ChSNpAGmnLE8ZvMLNnR+zUw@mail.gmail.com>
Message-ID: <3019.1602095767259762860@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="EtQgGzEW0YCM3uFqkrit"

--EtQgGzEW0YCM3uFqkrit
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks,
I've managed to narrow the problem down to samba - it has perl at sysroot/=
dest-dir/usr/lib/perl5.
However for the life of me I can't figure out how to force it to run after=
 the actual Perl recipe. I've tried adding DEPENDS +=3D "perl" in a .bbappe=
nd file (which bitbake-layers show-appends recognizes) and just directly ed=
iting the recipe.
Neither seem to make it stick. The first run right after the change works =
(since it's able to use the cached perl, and waits to rebuild samba) but su=
bsequent runs (once samba is in the cache) always fail.
For now I'm working around it by manually purging samba from the cache aft=
er each run, but it would be nice to solve this properly at some point as w=
ell.
If anyone has any tips on where to look next to force the build order, tha=
t would be great.

Thanks,

Valen

--EtQgGzEW0YCM3uFqkrit
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks,<br />I've managed to narrow the problem down to samba - it has perl=
 at sysroot/dest-dir/usr/lib/perl5.<br />However for the life of me I can't=
 figure out how to force it to run after the actual Perl recipe. I've tried=
 adding DEPENDS +=3D "perl" in a .bbappend file (which bitbake-layers show-=
appends recognizes) and just directly editing the recipe. <br />Neither see=
m to make it stick. The first run right after the change works (since it's =
able to use the cached perl, and waits to rebuild samba) but subsequent run=
s (once samba is in the cache) always fail.<br />For now I'm working around=
 it by manually purging samba from the cache after each run, but it would b=
e nice to solve this properly at some point as well. <br />If anyone has an=
y tips on where to look next to force the build order, that would be great.=
<br /><br />Thanks,<br /><br />Valen

--EtQgGzEW0YCM3uFqkrit--
