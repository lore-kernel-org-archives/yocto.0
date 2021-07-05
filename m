Subject: #selinux #yocto #linux #bitbake: Yocto-hardknott build is success with lbpcre2(V10.36) but libpcre2.so files were never observed under /usr/lib/ when the image is flashed
To: yocto@lists.yoctoproject.org
From: "RK25" <rakesh1225@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (27.59.182.219)
X-Originating-Platform: Windows Chrome 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 04 Jul 2021 18:14:55 -0700
Message-ID: <2tXX.1625447695371500017.sLvO@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Wevez8OnrwxGViD5xqRD"

--Wevez8OnrwxGViD5xqRD
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

We tried to upgrade the Yocto version from Dunfell to Hardknott.=C2=A0 Afte=
r successful build using hardknott, we flashed the generated image to the d=
evice. But we don't see the libpcre2 package installed under /usr/lib/ fold=
er.

Below are the missing so files after built and installed/flashed with hard=
knott :

/usr/lib/libpcre2-8.so.0=C2=A0 /usr/lib/libpcre2-posix.so.2=C2=A0 /usr/lib=
/libpcre2-8.so.0.9.0=C2=A0 /usr/lib/libpcre2-posix.so.2.0.3

No changes were done in Yocto recipe libpcre2_10.36.bb:

https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-support/=
libpcre?h=3Dhardknott

any inputs pl?

--Wevez8OnrwxGViD5xqRD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>We tried to upgrade the Yocto version from Dunfell to Hardknott.&nbsp;=
 After successful build using hardknott, we flashed the generated image to =
the device. But we don't see the libpcre2 package installed under /usr/lib/=
 folder.</div>
<div>&nbsp;</div>
<div>Below are the missing so files after built and installed/flashed with=
 hardknott :</div>
<div>&nbsp;</div>
<div>/usr/lib/libpcre2-8.so.0&nbsp; /usr/lib/libpcre2-posix.so.2&nbsp; /us=
r/lib/libpcre2-8.so.0.9.0&nbsp; /usr/lib/libpcre2-posix.so.2.0.3</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>No changes were done in Yocto recipe libpcre2_10.36.bb:</div>
<div>&nbsp;</div>
<div>https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-sup=
port/libpcre?h=3Dhardknott</div>
<div>&nbsp;</div>
<div>any inputs pl?</div>

--Wevez8OnrwxGViD5xqRD--
