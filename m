Subject: Re: Building zeek 3.1.1 in Sumo
To: yocto@lists.yoctoproject.org
From: gary@missionsecure.com
X-Originating-Location: Charlottesville, Virginia, US (216.197.64.240)
X-Originating-Platform: Mac Safari 13.1
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 18 Apr 2020 14:14:25 -0700
References: <VI1PR05MB428650E66D786F271F94174CA8D60@VI1PR05MB4286.eurprd05.prod.outlook.com>
In-Reply-To: <VI1PR05MB428650E66D786F271F94174CA8D60@VI1PR05MB4286.eurprd05.prod.outlook.com>
Message-ID: <3226.1587244465235989613@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="VDSq8o4gm9qzI5rsBgte"

--VDSq8o4gm9qzI5rsBgte
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Placing the following line in the recipe seems to have fixed the problem:

OECMAKE_FIND_ROOT_PATH_MODE_PROGRAM=3D"BOTH"

That value was set to only by the cmake class, so it only searched in the =
recipe build directories.

--VDSq8o4gm9qzI5rsBgte
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Placing the following line in the recipe seems to have fixed the problem:<b=
r /><br />OECMAKE_FIND_ROOT_PATH_MODE_PROGRAM=3D"BOTH"<br /><br />That valu=
e was set to only by the cmake class, so it only searched in the recipe bui=
ld directories.

--VDSq8o4gm9qzI5rsBgte--
