Subject: libcansocket: Weird issue with pkgsplit
To: yocto@lists.yoctoproject.org
From: "Tuomas Huuki" <tuomas.huuki@crosscontrol.com>
X-Originating-Location: Tampere, Pirkanmaa, FI (81.19.113.90)
X-Originating-Platform: Windows Firefox 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 25 Mar 2021 01:06:30 -0700
Message-ID: <QRNZ.1616659590788645548.bU9I@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="D9tqdJqghgfeLIyVmRUf"

--D9tqdJqghgfeLIyVmRUf
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,
I have an interesting situation with libcansocket and bitbake that I canno=
t wrap my head around. For some reason, the packages are being split up som=
ewhat strangely and I cannot figure out why.
First of all, the recipe used is:
https://github.com/openembedded/meta-openembedded/blob/9a0de2779b9b31f134f=
fe19388b5b9b37bb6450e/meta-oe/recipes-extended/socketcan/libsocketcan_0.0.1=
1.bb
So no strange things there.

Additionally, looking at the built items:
../build/tmp/work/aarch64-poky-linux/libsocketcan/0.0.11-r0/image/usr/lib$=
 ls -lah libsocketcan*
lrwxrwxrwx 1 tuomas tuomas  21 maali 18 10:38 libsocketcan.so -> libsocket=
can.so.2.3.0
lrwxrwxrwx 1 tuomas tuomas  21 maali 18 10:38 libsocketcan.so.2 -> libsock=
etcan.so.2.3.0
-rwxr-xr-x 1 tuomas tuomas 58K maali 18 10:38 libsocketcan.so.2.3.0

All looks good at this point. Now, when I deploy the image, the first link=
 is missing.
When I look at pkgdata I can see that the link ends up in libsocketcan-dev=
:

$ oe-pkgdata-util list-pkg-files libsocketcan
libsocketcan:
=C2=A0=C2=A0=C2=A0=C2=A0/usr/lib/libsocketcan.so.2
=C2=A0=C2=A0=C2=A0=C2=A0/usr/lib/libsocketcan.so.2.3.0
$ oe-pkgdata-util list-pkg-files libsocketcan-dev
libsocketcan-dev:
=C2=A0=C2=A0=C2=A0=C2=A0/usr/include/can_netlink.h
=C2=A0=C2=A0=C2=A0=C2=A0/usr/include/libsocketcan.h
=C2=A0=C2=A0=C2=A0=C2=A0/usr/lib/libsocketcan.so
=C2=A0=C2=A0=C2=A0=C2=A0/usr/lib/pkgconfig/libsocketcan.pc

I have been through the logs and cannot figure out why.
I tried adding:

FILES_${PN} +=3D " ${libdir} /*.so"
But no luck.

Looking at pkgdata/runtime/libsocketcan I notice:
FILES_libsocketcan: /usr/bin/* /usr/sbin/* /usr/libexec/* /usr/lib/lib*.so=
.* /usr/lib/*.so
FILES_INFO: {"/usr/lib/libsocketcan.so.2": 21, "/usr/lib/libsocketcan.so.2=
.3.0": 14080}
pkg_postinst_libsocketcan:
#!/bin/sh\nset -e\nif [ x"$D" =3D "x" ]; then\n\tif [ -x /sbin/ldconfig=20
]; then /sbin/ldconfig ; fi\nfi\n
FILERPROVIDESFLIST_libsocketcan: /usr/lib/libsocketcan.so.2.3.0
FILERPROVIDES_/usr/lib/libsocketcan.so.2.3.0_libsocketcan:  libsocketcan.s=
o.2()(64bit)
FILERDEPENDSFLIST_libsocketcan: /usr/lib/libsocketcan.so.2.3.0
FILERDEPENDS_/usr/lib/libsocketcan.so.2.3.0_libsocketcan:
 ld-linux-aarch64.so.1(GLIBC_2.17)(64bit) libc.so.6(GLIBC_2.17)(64bit)=20
libc.so.6()(64bit) ld-linux-aarch64.so.1()(64bit) rtld(GNU_HASH)
PKGSIZE_libsocketcan: 14101 But again this is missing the .so for some rea=
son.

Additionally, I noticed that for some reason the package is renamed to lib=
socketcan2 (log.do_package).
Why? Could this be part of the issue?
> NOTE: debian: renaming libsocketcan to libsocketcan2

How does pkgconfig decide how to split packages. Can anyone point me to pr=
oper documentation?

Thanks!
Tuomas Huuki
Crosscontrol Oy

--D9tqdJqghgfeLIyVmRUf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,<br />I have an interesting situation with libcansocket and bitba=
ke that I cannot wrap my head around. For some reason, the packages are bei=
ng split up somewhat strangely and I cannot figure out why.<br />First of a=
ll, the recipe used is: <br /><a href=3D"https://github.com/openembedded/me=
ta-openembedded/blob/9a0de2779b9b31f134ffe19388b5b9b37bb6450e/meta-oe/recip=
es-extended/socketcan/libsocketcan_0.0.11.bb" target=3D"_blank" rel=3D"noop=
ener">https://github.com/openembedded/meta-openembedded/blob/9a0de2779b9b31=
f134ffe19388b5b9b37bb6450e/meta-oe/recipes-extended/socketcan/libsocketcan_=
0.0.11.bb</a><br />So no strange things there.<br /><br />Additionally, loo=
king at the built items:<br />
<div style=3D"box-sizing: border-box; font-family: Menlo, Monaco, Consolas=
, 'Courier New', Courier, monospace; font-size: 14px; font-style: normal; f=
ont-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;=
 letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; t=
ext-transform: none; white-space: pre; widows: 2; word-spacing: 0px;">
<pre>../build/tmp/work/aarch64-poky-linux/libsocketcan/0.0.11-r0/image/usr=
/lib$ ls -lah libsocketcan*
lrwxrwxrwx 1 tuomas tuomas  21 maali 18 10:38 libsocketcan.so -&gt; libsoc=
ketcan.so.2.3.0
lrwxrwxrwx 1 tuomas tuomas  21 maali 18 10:38 libsocketcan.so.2 -&gt; libs=
ocketcan.so.2.3.0
-rwxr-xr-x 1 tuomas tuomas 58K maali 18 10:38 libsocketcan.so.2.3.0<br /><=
br /></pre>
<p>All looks good at this point. Now, when I deploy the image, the first l=
ink is missing.<br />When I look at pkgdata I can see that the link ends up=
 in libsocketcan-dev:<br /><br /></p>
<pre>$ oe-pkgdata-util list-pkg-files libsocketcan<br />libsocketcan:<br /=
>&nbsp;&nbsp;&nbsp;&nbsp;/usr/lib/libsocketcan.so.2<br />&nbsp;&nbsp;&nbsp;=
&nbsp;/usr/lib/libsocketcan.so.2.3.0<br />$ oe-pkgdata-util list-pkg-files =
libsocketcan-dev<br />libsocketcan-dev:<br />&nbsp;&nbsp;&nbsp;&nbsp;/usr/i=
nclude/can_netlink.h<br />&nbsp;&nbsp;&nbsp;&nbsp;/usr/include/libsocketcan=
.h<br />&nbsp;&nbsp;&nbsp;&nbsp;/usr/lib/libsocketcan.so<br />&nbsp;&nbsp;&=
nbsp;&nbsp;/usr/lib/pkgconfig/libsocketcan.pc<br /><br /></pre>
<p>I have been through the logs and cannot figure out why.<br />I tried ad=
ding:</p>
<div><span style=3D"color: #9cdcfe;">FILES_${PN}</span><span style=3D"colo=
r: #d4d4d4;">&nbsp;+=3D&nbsp;</span><span style=3D"color: #ce9178;">"</span=
><span style=3D"color: #569cd6;">${libdir}</span><span style=3D"color: #ce9=
178;">/*.so" <br /></span>But no luck.<br /><br />Looking at pkgdata/runtim=
e/libsocketcan I notice:<br />
<pre>FILES_libsocketcan: /usr/bin/* /usr/sbin/* /usr/libexec/* /usr/lib/li=
b*.so.* /usr/lib/*.so<br />FILES_INFO: {"/usr/lib/libsocketcan.so.2": 21, "=
/usr/lib/libsocketcan.so.2.3.0": 14080}<br />pkg_postinst_libsocketcan:
 #!/bin/sh\nset -e\nif [ x"$D" =3D "x" ]; then\n\tif [ -x /sbin/ldconfig=
=20
]; then /sbin/ldconfig ; fi\nfi\n<br />FILERPROVIDESFLIST_libsocketcan: /u=
sr/lib/libsocketcan.so.2.3.0<br />FILERPROVIDES_/usr/lib/libsocketcan.so.2.=
3.0_libsocketcan:  libsocketcan.so.2()(64bit)<br />FILERDEPENDSFLIST_libsoc=
ketcan: /usr/lib/libsocketcan.so.2.3.0<br />FILERDEPENDS_/usr/lib/libsocket=
can.so.2.3.0_libsocketcan:
  ld-linux-aarch64.so.1(GLIBC_2.17)(64bit) libc.so.6(GLIBC_2.17)(64bit)=20
libc.so.6()(64bit) ld-linux-aarch64.so.1()(64bit) rtld(GNU_HASH)<br />PKGS=
IZE_libsocketcan: 14101</pre>
But again this is missing the .so for some reason.<br /><br />Additionally=
, I noticed that for some reason the package is renamed to libsocketcan2 (l=
og.do_package). <br />Why? Could this be part of the issue?<span style=3D"c=
olor: #ce9178;"><br />&gt; NOTE: debian: renaming libsocketcan to libsocket=
can2<br /></span><span style=3D"color: #ce9178;"></span><br />How does pkgc=
onfig decide how to split packages. Can anyone point me to proper documenta=
tion?<br /><br />Thanks!<br />Tuomas Huuki<br />Crosscontrol Oy</div>
</div>

--D9tqdJqghgfeLIyVmRUf--
