Subject: Re: setup.py no such file or directory
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: TN (197.27.17.252)
X-Originating-Platform: Linux Firefox 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 26 Sep 2020 08:33:44 -0700
References: <1379.1601131811751578911@lists.yoctoproject.org>
In-Reply-To: <1379.1601131811751578911@lists.yoctoproject.org>
Message-ID: <6359.1601134424285604570@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sWPIgUedhd1FRr1iZV8d"

--sWPIgUedhd1FRr1iZV8d
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Again,
I solved the issue,
The problem was that when yocto unpacks the source files it unpacks it not=
 in tmp/work/.../python3-wirepas-messaging/python3-wirepas-messaging-1.0 wh=
ich is the work directory, so that is why setuptools cannot find setup.py ,
So I modified the source files folder to the same recipes name with ${PV} =
so it can match the same recipe's workdir. And now files are extracted in t=
he good location and get compiled correctly.
devtool uses externalsrc to locate the source files directly, that is why =
it finds setup.py.
Thanks for the support again, Talel

--sWPIgUedhd1FRr1iZV8d
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Again,<br />I solved the issue, <br />The problem was that when yocto un=
packs the source files it unpacks it not in tmp/work/.../python3-wirepas-me=
ssaging/python3-wirepas-messaging-1.0 which is the work directory, so that =
is why setuptools cannot find setup.py ,<br />So I modified the source file=
s folder to the same recipes name with ${PV} so it can match the same recip=
e's workdir. And now files are extracted in the good location and get compi=
led correctly.<br />devtool uses externalsrc to locate the source files dir=
ectly, that is why it finds setup.py.<br />Thanks for the support again, Ta=
lel

--sWPIgUedhd1FRr1iZV8d--
