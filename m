Subject: Re: Perl populate sysroot fails (yocto 2.0.3)
To: yocto@lists.yoctoproject.org
From: "Varangu-Booth, Valen" <Valen.Varangu-Booth@christiedigital.com>
X-Originating-Location: US (216.94.43.6)
X-Originating-Platform: Linux Firefox 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 08 Oct 2020 10:27:51 -0700
References: <72d6a6c2-68f0-bf5f-e0c4-3b3b7f5bb582@gmail.com>
In-Reply-To: <72d6a6c2-68f0-bf5f-e0c4-3b3b7f5bb582@gmail.com>
Message-ID: <18587.1602178071396724748@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="D7mvx8Wyq8jmgOAvOor8"

--D7mvx8Wyq8jmgOAvOor8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Perfect! Thanks for your help.

I had to add both
do_populate_sysroot[depends] +=3D "perl:do_populate_sysroot"
AND
do_populate_sysroot_setscene[depends] +=3D "perl:do_populate_sysroot_setsc=
ene"

and now things are working great!

--D7mvx8Wyq8jmgOAvOor8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Perfect! Thanks for your help.<br /><br />I had to add both <br />do_popula=
te_sysroot[depends] +=3D "perl:do_populate_sysroot"<br />AND<br />do_popula=
te_sysroot_setscene[depends] +=3D "perl:do_populate_sysroot_setscene"<br />=
<br />and now things are working great!

--D7mvx8Wyq8jmgOAvOor8--
