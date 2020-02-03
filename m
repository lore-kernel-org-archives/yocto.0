Subject: Ncurses vulnerabilities in yocto 2.6.4
To: yocto@lists.yoctoproject.org
From: "Milun Jovanovic" <milunj@yahoo.com>
X-Originating-Location: Hickory, North Carolina, US (198.90.66.177)
X-Originating-Platform: Windows Firefox 56
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 03 Feb 2020 09:00:38 -0800
Message-ID: <oHUu.1580749238701073600.MhgZ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="RUdIWrHE3yVKej802TRu"

--RUdIWrHE3yVKej802TRu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I apologize community for disturb but it raises one=C2=A0 question to me ea=
rlier today about yocto 2.6.4 (it is the latest yocto package for arm5)
The libtinfo library (part of ncurses)=C2=A0 presented in 2.6.4=C2=A0 has =
version 5.9
--------------------------------------------------------------------------=
--
lrwxrwxrwx.=C2=A0 1 root root=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 15 Oct 14 02:2=
1 libtinfo.so.5 -> libtinfo.so.5.9
-rwxr-xr-x.=C2=A0 1 root root=C2=A0 124676 Oct 14 02:22 libtinfo.so.5.9
--------------------------------------------------------------------------=
---
The vulnerability "community" has pointed 2 vulnerabilities in libtinfo be=
fore 6.1
https://nvd.nist.gov/vuln/detail/CVE-2019-17595
https://nvd.nist.gov/vuln/detail/CVE-2019-17594

If I search for keyword "ncurses" in 2.6.4 poky folder the find process fi=
nds in=C2=A0 ncourses package 6.1.
--------------------------------------------------------------------------=
-----------
./armv5e-poky-linux-gnueabi/usr/include/ncurses_dll.h
./armv5e-poky-linux-gnueabi/usr/include/ncurses.h
./armv5e-poky-linux-gnueabi/usr/src/debug/ncurses
./armv5e-poky-linux-gnueabi/usr/src/debug/ncurses/6.1+20180630-r0/build/na=
rrowc/ncurses
./armv5e-poky-linux-gnueabi/usr/src/debug/ncurses/6.1+20180630-r0/build/wi=
dec/ncurses
./armv5e-poky-linux-gnueabi/usr/src/debug/ncurses/6.1+20180630-r0/git/ncur=
ses
./armv5e-poky-linux-gnueabi/usr/lib/pkgconfig/ncurses.pc
./armv5e-poky-linux-gnueabi/usr/lib/pkgconfig/ncurses++w.pc
./armv5e-poky-linux-gnueabi/usr/lib/pkgconfig/ncursesw.pc
./armv5e-poky-linux-gnueabi/usr/lib/pkgconfig/ncurses++.pc
./armv5e-poky-linux-gnueabi/usr/bin/ncursesw6-config
./armv5e-poky-linux-gnueabi/usr/bin/ncursesw5-config
./armv5e-poky-linux-gnueabi/usr/bin/ncurses5-config
./armv5e-poky-linux-gnueabi/usr/bin/ncurses6-config
--------------------------------------------------------------------------=
---------------------------------------------
Does anyone know why we do not have libtinfo.so.6.1 when code is presented=
 ?
Or even is it possible to create now (but I assume whole yocto shall be ag=
ain rebuilt and definitely it is not feasible for me with current knowledge=
 )?
(e.g)
libtinfo.so -> libtinfo.so.6
libtinfo.so.6 -> libtinfo.so.6.1

Thank you in advance
Milun

--RUdIWrHE3yVKej802TRu
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I apologize community for disturb but it raises one&nbsp; question to me ea=
rlier today about yocto 2.6.4 (it is the latest yocto package for arm5)<br =
/>The libtinfo library (part of ncurses)&nbsp; presented in 2.6.4&nbsp; has=
 version 5.9<br />---------------------------------------------------------=
-------------------<br />lrwxrwxrwx.&nbsp; 1 root root&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; 15 Oct 14 02:21 libtinfo.so.5 -&gt; libtinfo.so.5.9<br />-rwxr-xr=
-x.&nbsp; 1 root root&nbsp; 124676 Oct 14 02:22 libtinfo.so.5.9<br />------=
-----------------------------------------------------------------------<br =
/>The vulnerability "community" has pointed 2 vulnerabilities in libtinfo b=
efore 6.1<br /><a href=3D"https://nvd.nist.gov/vuln/detail/CVE-2019-17595" =
target=3D"_blank" rel=3D"noopener">https://nvd.nist.gov/vuln/detail/CVE-201=
9-17595</a><br /><a href=3D"https://nvd.nist.gov/vuln/detail/CVE-2019-17594=
" target=3D"_blank" rel=3D"noopener">https://nvd.nist.gov/vuln/detail/CVE-2=
019-17594</a><br /><br />If I search for keyword "ncurses" in 2.6.4 poky fo=
lder the find process finds in&nbsp; ncourses package 6.1.<br />-----------=
--------------------------------------------------------------------------<=
br />./armv5e-poky-linux-gnueabi/usr/include/ncurses_dll.h<br />./armv5e-po=
ky-linux-gnueabi/usr/include/ncurses.h<br />./armv5e-poky-linux-gnueabi/usr=
/src/debug/ncurses<br />./armv5e-poky-linux-gnueabi/usr/src/debug/ncurses/6=
.1+20180630-r0/build/narrowc/ncurses<br />./armv5e-poky-linux-gnueabi/usr/s=
rc/debug/ncurses/6.1+20180630-r0/build/widec/ncurses<br />./armv5e-poky-lin=
ux-gnueabi/usr/src/debug/ncurses/6.1+20180630-r0/git/ncurses<br />./armv5e-=
poky-linux-gnueabi/usr/lib/pkgconfig/ncurses.pc<br />./armv5e-poky-linux-gn=
ueabi/usr/lib/pkgconfig/ncurses++w.pc<br />./armv5e-poky-linux-gnueabi/usr/=
lib/pkgconfig/ncursesw.pc<br />./armv5e-poky-linux-gnueabi/usr/lib/pkgconfi=
g/ncurses++.pc<br />./armv5e-poky-linux-gnueabi/usr/bin/ncursesw6-config<br=
 />./armv5e-poky-linux-gnueabi/usr/bin/ncursesw5-config<br />./armv5e-poky-=
linux-gnueabi/usr/bin/ncurses5-config<br />./armv5e-poky-linux-gnueabi/usr/=
bin/ncurses6-config<br />--------------------------------------------------=
---------------------------------------------------------------------<br />=
Does anyone know why we do not have libtinfo.so.6.1 when code is presented =
? <br />Or even is it possible to create now (but I assume whole yocto shal=
l be again rebuilt and definitely it is not feasible for me with current kn=
owledge )?<br />(e.g)<br />libtinfo.so -&gt; libtinfo.so.6<br />libtinfo.so=
.6 -&gt; libtinfo.so.6.1<br /><br />Thank you in advance<br />Milun

--RUdIWrHE3yVKej802TRu--
