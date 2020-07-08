Subject: Re: [ptest-runner][PATCH] Fix inappropriate ioctl when detaching tty
To: yocto@lists.yoctoproject.org
From: "Tero Kinnunen" <tero.kinnunen@vaisala.com>
X-Originating-Location: Nurmijärvi, Uusimaa, FI (193.143.230.131)
X-Originating-Platform: Windows Chrome 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 07 Jul 2020 23:46:43 -0700
References: <CA+_Aqit9G99McMscX24hr5OqS0-WCcOWP5H2f6iqbQ=OvKM2Pg@mail.gmail.com>
In-Reply-To: <CA+_Aqit9G99McMscX24hr5OqS0-WCcOWP5H2f6iqbQ=OvKM2Pg@mail.gmail.com>
Message-ID: <23411.1594190803615791620@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="aJo8oMU2wvjLkpIhpy14"

--aJo8oMU2wvjLkpIhpy14
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 7, 2020 at 06:49 AM, Anibal Limon wrote:

>=20
> First thanks for the patch, Is there an option to test for isatty(fd) fo=
r
> run ioctl instead?.
>=20

Hi Anibal,

if (isatty(0) && ioctl(0, TIOCNOTTY) =3D=3D -1)

would help for ssh case but not to errors between tests. There fd 0 is a t=
ty but detach should
be done only once. Now it is inside loop. It could work if it was also mov=
ed outside the loop,
before=C2=A0PTEST_LIST_ITERATE_START?

Kind regards,

- Tero

--aJo8oMU2wvjLkpIhpy14
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 7, 2020 at 06:49 AM, Anibal Limon wrote:<br />
<blockquote>
<div dir=3D"ltr">
<div dir=3D"ltr">
<div>First thanks for the patch, Is there an option to test for isatty(fd)=
 for run ioctl instead?.</div>
</div>
</div>
</blockquote>
Hi Anibal,<br /><br />&nbsp; &nbsp; if (isatty(0) &amp;&amp; ioctl(0, TIOC=
NOTTY) =3D=3D -1)<br /><br />would help for ssh case but not to errors betw=
een tests. There fd 0 is a tty but detach should<br />be done only once. No=
w it is inside loop. It could work if it was also moved outside the loop,<b=
r />before&nbsp;PTEST_LIST_ITERATE_START?<br /><br />Kind regards,<br /><br=
 />&nbsp; &nbsp; - Tero

--aJo8oMU2wvjLkpIhpy14--
