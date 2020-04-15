Subject: Guidance Downgrading Python2 in Zeus #python
To: yocto@lists.yoctoproject.org
From: "MikeB" <mabnhdev@gmail.com>
X-Originating-Location: Raleigh, North Carolina, US (107.13.78.59)
X-Originating-Platform: Windows Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 Apr 2020 09:16:10 -0700
Message-ID: <US9q.1586967370403874617.w9z2@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="yoeD0vKJTZrtiu9jlNPn"

--yoeD0vKJTZrtiu9jlNPn
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm working on a set of platforms that have a FIPs certified OpenSSL.=C2=A0=
 We are at version 1.0.2l.

I've found that the new version of python in Zeus (2.7.17) requires a newe=
r version of OpenSSL (1.1).

We really don't want to go through a new round of certification, so we wan=
t to keep our current OpenSSL (1.0.2l).

I think the easiest solution is to downgrade python 2 back to the version =
used by Sumo (2.7.15).

I know how to downgrade simple recipes, but python is far from simple.

Can someone give me some guidance on how to approach the downgrade of pyth=
on2 in Zeus?

Thanks, Mike

--yoeD0vKJTZrtiu9jlNPn
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm working on a set of platforms that have a FIPs certified OpenSSL.&nbsp;=
 We are at version 1.0.2l.<br /><br />I've found that the new version of py=
thon in Zeus (2.7.17) requires a newer version of OpenSSL (1.1).<br /><br /=
>We really don't want to go through a new round of certification, so we wan=
t to keep our current OpenSSL (1.0.2l).<br /><br />I think the easiest solu=
tion is to downgrade python 2 back to the version used by Sumo (2.7.15).<br=
 /><br />I know how to downgrade simple recipes, but python is far from sim=
ple.<br /><br />Can someone give me some guidance on how to approach the do=
wngrade of python2 in Zeus?<br /><br />Thanks, Mike

--yoeD0vKJTZrtiu9jlNPn--
