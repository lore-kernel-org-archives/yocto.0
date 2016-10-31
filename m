Return-Path: <heutinck.h@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CECB3E00CE1; Mon, 31 Oct 2016 00:54:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (heutinck.h[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.182 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
Received: from mail-yb0-f182.google.com (mail-yb0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1D0FE00C86
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 00:54:12 -0700 (PDT)
Received: by mail-yb0-f182.google.com with SMTP id f97so55944087ybi.1
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 00:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4UJQbCRNbcEYze9B//gG735xHaDqEaEiijzEDYmow7E=;
	b=0mlbb5NazdSn+chE1VlaXLH11+rczqLTKcWtTo20Dp4zwDgvrZSp3AER4eDUBI/A17
	LQssSVhg55RU4KMI7b0Dl5CwNf6kpptnvJ9DTz+nzApzktB0wP1h/vXBdKx62lr4H6el
	4fTTMPRDvpcLlMmg8ur3A4VaZCLQZg4kMbcsTXj8jCazIzYaIHb4kwxHHNVXOKIst10G
	f1KsGdUBoM6AYX/XyIc0QfM8sdcEsjGqt8DTsnPs52672MpwontIvFhi7yDr8ffBg6Dz
	wL9QWrQlEv5IZWmpWtSdDkevvVfSEFBeEXZPeiyzH0SgyVHiL95RHwxOBUP4Horx5he7
	AjHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4UJQbCRNbcEYze9B//gG735xHaDqEaEiijzEDYmow7E=;
	b=D3QgLWoQ6zUC4jvZAk3aZcoYbzNe8ajhwj+zu8+2gerUe182jEq4ldlFCS2805JkM0
	SR7jlHgUNFU8sJZGnYm8EvFuISPGVrXNfp61Xe9Bckd7vxTOIdxnSVs6rA4N2e7gk/ym
	LTu734oUb9BoJBcpoV6FKHeLPy/SLAq3df9ZEvMu7O+L3+yhhFG0bnZcqplStDkd83Wu
	LBQpiDvjdwVEY6SmXDleQFx4TSATN4Oh9fmaCVxKIgo9NUkWYDQX/DNQKJZyJq10Z6rX
	txbFh4wIz6Kp9kW+HMsdO+7Tf5UwMtwBQASxW5adEgZOJylGrgpi+ZM4GJFN/76c+2Er
	EVEw==
X-Gm-Message-State: ABUngvfBOjUtH/0hlBgaHZ/NyYo3MT0yP4CTenJ1Su/FiHsKXdpeSIziC2wVtzyZLwMXJSj5O0A375svTugaRQ==
X-Received: by 10.37.230.201 with SMTP id d192mr23540858ybh.84.1477900451289; 
	Mon, 31 Oct 2016 00:54:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.13.232.210 with HTTP; Mon, 31 Oct 2016 00:54:10 -0700 (PDT)
In-Reply-To: <C00483C5-C3CC-4681-9C43-B2A42931A95D@gmail.com>
References: <CADEQAgjJjnajV+RaN0e=ch4MUt7PBQY42y7929m_hzuH4k0Psw@mail.gmail.com>
	<C00483C5-C3CC-4681-9C43-B2A42931A95D@gmail.com>
From: Hugo Heutinck <heutinck.h@gmail.com>
Date: Mon, 31 Oct 2016 08:54:10 +0100
Message-ID: <CADEQAghUvK_yPR-=poepr1+0QNwaE-U5NW0ju=qbVUAcHz7N9g@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Package relation between package.manifest and license.manifest
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 31 Oct 2016 07:54:18 -0000
Content-Type: multipart/alternative; boundary=94eb2c0a876e69a35305402483b9

--94eb2c0a876e69a35305402483b9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I am using the Jethro branch, which one are you using ?

For me this provides quite a list of delta's, some seem to be related (e.g.
the dbus, dbus-glib, dbus-lib vs. dbus-1),
but others are not (e.g. expat).

Was something on license file generation improved between Jethro and more
recent branches  ?

--- /tmp/a.manifest
+++ /tmp/package.manifest
@@ -24,9 +24,7 @@
 cracklib
 cronie
 curl
-dbus
-dbus-glib
-dbus-lib
+dbus-1
 debianutils
 debianutils-run-parts
 diffutils
@@ -39,26 +37,16 @@
 ed
 elfutils
 ethtool
-expat
 factory-tools
 file
 findutils
 firmware-update
 flex
-freetype
 fuser
 gawk
-gdbm
-gdbm-compat
-glib-2.0
-glib-2.0-locale-en-gb
-glibc
 glibc-binary-localedata-en-gb
 glibc-binary-localedata-en-us
 glibc-locale-en-gb
-gmp
-gnutls
-gnutls-openssl
 grep
 gzip
 i2c-tools
@@ -75,46 +63,70 @@
 iputils-tracepath
 iputils-tracepath6
 iputils-traceroute6
-json-c
 kernel-crc-env
 killall
 kmod
 led-control
 less
-libacl
-libattr
-libbz2
-libcap
-libcomerr
-libcrypto
-libcurl
-libdw
-libe2p
-libelf
-libestr
+libacl1
+libattr1
+libblkid1
+libbz2-0
+libc6
+libcap2
+libcom-err2
+libcrypto1.0.0
+libcurl4
+libdbus-1-3
+libdbus-glib-1-2
+libdw1
+libe2p2
+libelf1
+libestr0
 libevent
-libext2fs
-libffi
-libgcc
+libexpat1
+libext2fs2
+libfdisk1
+libffi6
+libfreetype6
+libgcc1
 libgcrypt
-libgpg-error
-libkmod
+libgdbm-compat4
+libgdbm4
+libglib-2.0-0
+libglib-2.0-locale-en-gb
+libgmp10
+libgnutls-openssl27
+libgnutls28
+libgpg-error0
+libjson-c2
+libkmod2
 liblogging
-liblzma
-libpci
-libpcre
-libpython2
-libss
-libssl
-libstdc++
-libsysfs
-libsystemd
-libudev
-libwrap
-libx11
-libxau
-libxcb
-libxdmcp
+liblzma5
+libmount1
+libncurses5
+libncursesw5
+libpci3
+libpcre1
+libperl5
+libpopt0
+libpython2.7-1.0
+libreadline6
+libsmartcols1
+libss2
+libssl1.0.0
+libstdc++6
+libsysfs2
+libsystemd0
+libtinfo5
+libudev1
+libuuid1
+libwrap0
+libx11-6
+libxau6
+libxcb1
+libxdmcp6
+libz1
 locale-base-en-gb
 locale-base-en-us
 logrotate
@@ -130,9 +142,6 @@
 mktemp
 modutils-initscripts
 ncurses
-ncurses-libncurses
-ncurses-libncursesw
-ncurses-libtinfo
 ncurses-terminfo
 ncurses-terminfo-base
 net-tools
@@ -167,8 +176,6 @@
 pciutils
 pciutils-ids
 perl
-perl-lib
-popt
 procps
 psmisc
 psplash
@@ -208,7 +215,6 @@
 python-unittest
 python-xml
 python-xmlrpc
-readline
 rsyslog
 run-postinsts
 sed
@@ -232,11 +238,6 @@
 util-linux
 util-linux-cfdisk
 util-linux-fdisk
-util-linux-libblkid
-util-linux-libfdisk
-util-linux-libmount
-util-linux-libsmartcols
-util-linux-libuuid
 util-linux-losetup
 util-linux-mkfs
 util-linux-mount


2016-10-28 4:25 GMT+02:00 Khem Raj <raj.khem@gmail.com>:

>
> On Oct 26, 2016, at 5:45 AM, Hugo Heutinck <heutinck.h@gmail.com> wrote:
>
> Question: What is the relation between the package.manifest and
> license.manifest ?
>
> After a yocto poky based image has been built there are 2 files in the
> licenses directory "tmp/deploy/licenses/*image_name-datestamp*"
>
> One is the package.manifest, which if understood correctly is a list of
> all packages included in the image.
>
> The second file is the license.manifest, but this one contains besides th=
e
> package name also the version, recipe name and license of the package.
>
> However if I compare the package names in both lists, there seem to be a
> number of packages in the license.manifest that are not part of the
> package.manifest. E.g. "readline, popt, expat, freetype".
>
> Is the license.manifest a list of all items in the package.manifest +
> ?build dependencies? or something ?
>
>
> They should be same.
>
> try something like this
> cat license.manifest | grep "PACKAGE NAME: " | sed "s/PACKAGE NAME: //=E2=
=80=9C >
> a.manifest
> diff a.manifest package.manifest
>
> For me both files comes out same.
>
>
>
> Regards,
>
> H.Heutinck
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>

--94eb2c0a876e69a35305402483b9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>I am using the Jethro branch, which on=
e are you using ?<br></div><br></div>For me this provides quite a list of d=
elta&#39;s, some seem to be related (e.g. the dbus, dbus-glib, dbus-lib vs.=
 dbus-1), <br></div>but others are not (e.g. expat).<br><br></div>Was somet=
hing on license file generation improved between Jethro and more recent bra=
nches=C2=A0 ?<br><div><div><div><br>--- /tmp/a.manifest<br>+++ /tmp/package=
.manifest<br>@@ -24,9 +24,7 @@<br>=C2=A0cracklib<br>=C2=A0cronie<br>=C2=A0c=
url<br>-dbus<br>-dbus-glib<br>-dbus-lib<br>+dbus-1<br>=C2=A0debianutils<br>=
=C2=A0debianutils-run-parts<br>=C2=A0diffutils<br>@@ -39,26 +37,16 @@<br>=
=C2=A0ed<br>=C2=A0elfutils<br>=C2=A0ethtool<br>-expat<br>=C2=A0factory-tool=
s<br>=C2=A0file<br>=C2=A0findutils<br>=C2=A0firmware-update<br>=C2=A0flex<b=
r>-freetype<br>=C2=A0fuser<br>=C2=A0gawk<br>-gdbm<br>-gdbm-compat<br>-glib-=
2.0<br>-glib-2.0-locale-en-gb<br>-glibc<br>=C2=A0glibc-binary-localedata-en=
-gb<br>=C2=A0glibc-binary-localedata-en-us<br>=C2=A0glibc-locale-en-gb<br>-=
gmp<br>-gnutls<br>-gnutls-openssl<br>=C2=A0grep<br>=C2=A0gzip<br>=C2=A0i2c-=
tools<br>@@ -75,46 +63,70 @@<br>=C2=A0iputils-tracepath<br>=C2=A0iputils-tr=
acepath6<br>=C2=A0iputils-traceroute6<br>-json-c<br>=C2=A0kernel-crc-env<br=
>=C2=A0killall<br>=C2=A0kmod<br>=C2=A0led-control<br>=C2=A0less<br>-libacl<=
br>-libattr<br>-libbz2<br>-libcap<br>-libcomerr<br>-libcrypto<br>-libcurl<b=
r>-libdw<br>-libe2p<br>-libelf<br>-libestr<br>+libacl1<br>+libattr1<br>+lib=
blkid1<br>+libbz2-0<br>+libc6<br>+libcap2<br>+libcom-err2<br>+libcrypto1.0.=
0<br>+libcurl4<br>+libdbus-1-3<br>+libdbus-glib-1-2<br>+libdw1<br>+libe2p2<=
br>+libelf1<br>+libestr0<br>=C2=A0libevent<br>-libext2fs<br>-libffi<br>-lib=
gcc<br>+libexpat1<br>+libext2fs2<br>+libfdisk1<br>+libffi6<br>+libfreetype6=
<br>+libgcc1<br>=C2=A0libgcrypt<br>-libgpg-error<br>-libkmod<br>+libgdbm-co=
mpat4<br>+libgdbm4<br>+libglib-2.0-0<br>+libglib-2.0-locale-en-gb<br>+libgm=
p10<br>+libgnutls-openssl27<br>+libgnutls28<br>+libgpg-error0<br>+libjson-c=
2<br>+libkmod2<br>=C2=A0liblogging<br>-liblzma<br>-libpci<br>-libpcre<br>-l=
ibpython2<br>-libss<br>-libssl<br>-libstdc++<br>-libsysfs<br>-libsystemd<br=
>-libudev<br>-libwrap<br>-libx11<br>-libxau<br>-libxcb<br>-libxdmcp<br>+lib=
lzma5<br>+libmount1<br>+libncurses5<br>+libncursesw5<br>+libpci3<br>+libpcr=
e1<br>+libperl5<br>+libpopt0<br>+libpython2.7-1.0<br>+libreadline6<br>+libs=
martcols1<br>+libss2<br>+libssl1.0.0<br>+libstdc++6<br>+libsysfs2<br>+libsy=
stemd0<br>+libtinfo5<br>+libudev1<br>+libuuid1<br>+libwrap0<br>+libx11-6<br=
>+libxau6<br>+libxcb1<br>+libxdmcp6<br>+libz1<br>=C2=A0locale-base-en-gb<br=
>=C2=A0locale-base-en-us<br>=C2=A0logrotate<br>@@ -130,9 +142,6 @@<br>=C2=
=A0mktemp<br>=C2=A0modutils-initscripts<br>=C2=A0ncurses<br>-ncurses-libncu=
rses<br>-ncurses-libncursesw<br>-ncurses-libtinfo<br>=C2=A0ncurses-terminfo=
<br>=C2=A0ncurses-terminfo-base<br>=C2=A0net-tools<br>@@ -167,8 +176,6 @@<b=
r>=C2=A0pciutils<br>=C2=A0pciutils-ids<br>=C2=A0perl<br>-perl-lib<br>-popt<=
br>=C2=A0procps<br>=C2=A0psmisc<br>=C2=A0psplash<br>@@ -208,7 +215,6 @@<br>=
=C2=A0python-unittest<br>=C2=A0python-xml<br>=C2=A0python-xmlrpc<br>-readli=
ne<br>=C2=A0rsyslog<br>=C2=A0run-postinsts<br>=C2=A0sed<br>@@ -232,11 +238,=
6 @@<br>=C2=A0util-linux<br>=C2=A0util-linux-cfdisk<br>=C2=A0util-linux-fdi=
sk<br>-util-linux-libblkid<br>-util-linux-libfdisk<br>-util-linux-libmount<=
br>-util-linux-libsmartcols<br>-util-linux-libuuid<br>=C2=A0util-linux-lose=
tup<br>=C2=A0util-linux-mkfs<br>=C2=A0util-linux-mount<br><br></div></div><=
/div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2016-1=
0-28 4:25 GMT+02:00 Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.kh=
em@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span>:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><div style=3D"word-wrap:break-word"><br><div><spa=
n class=3D""><blockquote type=3D"cite"><div>On Oct 26, 2016, at 5:45 AM, Hu=
go Heutinck &lt;<a href=3D"mailto:heutinck.h@gmail.com" target=3D"_blank">h=
eutinck.h@gmail.com</a>&gt; wrote:</div><br class=3D"m_-8160744393725023769=
Apple-interchange-newline"><div><div dir=3D"ltr"><div><div><div><div><div>Q=
uestion: What is the relation between the package.manifest and license.mani=
fest ?<br><br>After a yocto poky based image has been built there are 2 fil=
es in the licenses directory &quot;tmp/deploy/licenses/<code class=3D"m_-81=
60744393725023769gmail-filename"><em class=3D"m_-8160744393725023769gmail-r=
eplaceable"><code>image_<wbr>name-datestamp</code></em></code>&quot;<br><br=
></div>One is the package.manifest, which if understood correctly is a list=
 of all packages included in the image.<br><br></div>The second file is the=
 license.manifest, but this one contains besides the package name also the =
version, recipe name and license of the package.<br><br></div>However if I =
compare the package names in both lists, there seem to be a=C2=A0 number of=
 packages in the license.manifest that are not part of the package.manifest=
. E.g. &quot;readline, popt, expat, freetype&quot;.<br></div><br></div><div=
>Is the license.manifest a list of all items in the package.manifest + ?bui=
ld dependencies? or something ?<br></div></div></div></blockquote><div><br>=
</div></span><div>They should be same.</div><div><br></div><div>try somethi=
ng like this</div><div>cat license.manifest | grep &quot;PACKAGE NAME: &quo=
t; | sed &quot;s/PACKAGE NAME: //=E2=80=9C &gt; a.manifest</div><div>diff a=
.manifest package.manifest</div><div><br></div><div>For me both files comes=
 out same.=C2=A0</div><div><br></div><br><blockquote type=3D"cite"><div><di=
v dir=3D"ltr"><div><br></div><div>Regards,<br><br></div><div>H.Heutinck<spa=
n class=3D"HOEnZb"><font color=3D"#888888"><br></font></span></div></div><s=
pan class=3D"HOEnZb"><font color=3D"#888888">
-- <br>______________________________<wbr>_________________<br>yocto mailin=
g list<br><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto=
@yoctoproject.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo=
/yocto" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yoct=
o</a><br></font></span></div></blockquote></div><br></div></blockquote></di=
v><br></div>

--94eb2c0a876e69a35305402483b9--
