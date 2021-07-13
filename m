Subject: Per recipes simple smoke tests
To: yocto@lists.yoctoproject.org
From: "Samuel Dolt" <samuel.dolt@foxtron.ch>
X-Originating-Location: Biel/Bienne, Bern, CH (46.126.168.73)
X-Originating-Platform: Linux Firefox 89
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 13 Jul 2021 00:42:39 -0700
Message-ID: <cd34.1626162159704093084.9UH1@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="5YbHDkuvrVdipll6Q1Pp"

--5YbHDkuvrVdipll6Q1Pp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I was asked to add some basic tests to an internal recipe in order to impr=
ove our CI system.

The purpose would be to produce an error if some check doesn't pass like
- a file is not present
- the generated file is of size 0
- the generated file is bigger than x bytes

I'm thinking to add the functionality to a class, in order to be able to u=
se these tests in more than one recipe. Something like that: https://gist.g=
ithub.com/samdolt/cf1c557f73f4f2098a19ba7ad6bc092f

Does something like that already exists? And if not, would it be useful to=
 have this contributed upstream? Maybe as an addition to insane.bbclass?

Cheers,
Samuel

--5YbHDkuvrVdipll6Q1Pp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,<br /><br />I was asked to add some basic tests to an internal =
recipe in order to improve our CI system.<br /><br />The purpose would be t=
o produce an error if some check doesn't pass like <br />- a file is not pr=
esent<br />- the generated file is of size 0<br />- the generated file is b=
igger than x bytes<br /><br />I'm thinking to add the functionality to a cl=
ass, in order to be able to use these tests in more than one recipe. Someth=
ing like that: <a href=3D"https://gist.github.com/samdolt/cf1c557f73f4f2098=
a19ba7ad6bc092f" target=3D"_blank" rel=3D"noopener">https://gist.github.com=
/samdolt/cf1c557f73f4f2098a19ba7ad6bc092f</a><br /><br />Does something lik=
e that already exists? And if not, would it be useful to have this contribu=
ted upstream? Maybe as an addition to insane.bbclass?<br /><br />Cheers,<br=
 />Samuel

--5YbHDkuvrVdipll6Q1Pp--
