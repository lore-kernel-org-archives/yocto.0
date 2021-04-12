Subject: #golang: go fetches dependencies in compile phase
To: yocto@lists.yoctoproject.org
From: "Juergen Landwehr" <juergen.landwehr@gmx.de>
X-Originating-Location: Stuttgart, Baden-Württemberg, DE (141.113.11.14)
X-Originating-Platform: Mac Firefox 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 12 Apr 2021 07:01:57 -0700
References: <CANNYZj9xvzTtg-zaZk+X9W0R9FL-O+g-6eFURFbaeJu0TUGbOA@mail.gmail.com>
In-Reply-To: <CANNYZj9xvzTtg-zaZk+X9W0R9FL-O+g-6eFURFbaeJu0TUGbOA@mail.gmail.com>
Message-ID: <7847.1618236117006142456@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bULtm5YGULtjxocBwcHG"

--bULtm5YGULtjxocBwcHG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

OK, understood.

If the "local download cache path" is well-known (this is not by any chanc=
e $DL_DIR?), then we could create a tar from the vendor directory (which is=
 created when you call "go mod vendor" and contains all the downloaded depe=
ndencies) and put this tar file into the download cache.

Before actually calling "go mod vendor", we would first check, if there is=
 a tar file for the vendor directory in the download cache and if so simply=
 unpack the tar.

Does this make sense, or am I too naive and this is just nonsense?

J=C3=BCrgen

--bULtm5YGULtjxocBwcHG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex, <br /><br />OK, understood. <br /><br />If the "local download cac=
he path" is well-known (this is not by any chance $DL_DIR?), then we could =
create a tar from the vendor directory (which is created when you call "go =
mod vendor" and contains all the downloaded dependencies) and put this tar =
file into the download cache.<br /><br />Before actually calling "go mod ve=
ndor", we would first check, if there is a tar file for the vendor director=
y in the download cache and if so simply unpack the tar.<br /><br />Does th=
is make sense, or am I too naive and this is just nonsense?<br /><br />J&uu=
ml;rgen

--bULtm5YGULtjxocBwcHG--
