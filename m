Subject: Re: Wic partition dir ownership #yocto
To: yocto@lists.yoctoproject.org
From: "Alessandro Tagliapietra" <tagliapietra.alessandro@gmail.com>
X-Originating-Location: Las Vegas, Nevada, US (72.207.140.105)
X-Originating-Platform: Linux Chrome 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 15 May 2021 14:41:44 -0700
References: <o4Sl.1620984961241758222.Y7DA@lists.yoctoproject.org>
In-Reply-To: <o4Sl.1620984961241758222.Y7DA@lists.yoctoproject.org>
Message-ID: <7419.1621114904423632251@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sjQhWJQg9tzOd5wWR8Kq"

--sjQhWJQg9tzOd5wWR8Kq
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Just saw that the issue is that you can't use rootfs-dir with a subfolder a=
s the pseudo folder is missing in the parent folder, ended up using overlay=
fs

--sjQhWJQg9tzOd5wWR8Kq
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Just saw that the issue is that you can't use rootfs-dir with a subfolder a=
s the pseudo folder is missing in the parent folder, ended up using overlay=
fs

--sjQhWJQg9tzOd5wWR8Kq--
