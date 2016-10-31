Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBD26E0073D; Mon, 31 Oct 2016 09:27:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0EB7E006C7
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:27:04 -0700 (PDT)
Received: by mail-pf0-f169.google.com with SMTP id n85so78850312pfi.1
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=vJVZPBK6aiJtwJZ5hZy05ASRJi+TxMGDyFHOrBtK1+c=;
	b=F/YcD7ZMGedpbJ3dJ8RaZZDLq/GdgpOyXsL4fCSSUuTwyFoZbp8E5SRqfwIXPnmsqP
	91VusVlDax0zjHlFD0thI7J4bwR9xhA5h09XAotKET4cVStSQdHbgPDeBDTma7B7f9z/
	Z5CQBHJh6NNBE8Vu2teCfkfb/KOBaQpwgLPizaoBu3xgwwDle9+rZzJpueeWrBHDVfNp
	wiHTBGxH86xsGEeBh9F6y5ylEDbzf4J9o477tga0uNdX7Cx7McueMvejgKEImTpqKRiq
	ojd07PCYv/h9eNl8eCcJNCnjTTB7uXqfWTkr+n6MlYl8z/K/g+Zh2wPj88HbBEDIGcIO
	lmYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=vJVZPBK6aiJtwJZ5hZy05ASRJi+TxMGDyFHOrBtK1+c=;
	b=eRpFKZz/cm/QpO1z5buE4qZqKnoIkcYifNqqMBTvZn7Mn8G2NCGd3QxNxeeyfD6kwc
	Zr/rgtq14gIMgIs0Z1XRmLqcPmIoxUqwEeT4RXrK1HJq7olwPEPYUkeLu1FiKDRThnb+
	5GBB41lw5FfsMln9WrQbWC8VtftGQHDZDRRMGszOoJg+ZOEBnMhKOJuNLxkVCcN+ByTd
	HrYEIF5XSU3ak8Ife6vcDZuIQKao/WaMHGm815bnb07D8900UzVJHvhvYIVivgUdFcXZ
	ncsUfgJFO16np7qMy3f3yCteKsBUETHwaQKuGVwzsY8IDAwsDY30LKTrVFvgYdU0z140
	Rc8w==
X-Gm-Message-State: ABUngvetCMSjIGp3Xe3HdBfXn39gaLc81Ujp44Tz4xzswLZoCuZfzE4/eM5RZkCniiY9Cw==
X-Received: by 10.99.114.14 with SMTP id n14mr41475846pgc.7.1477931223985;
	Mon, 31 Oct 2016 09:27:03 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:793b:10a4:267d:c6fc?
	([2601:646:8882:b8c:793b:10a4:267d:c6fc])
	by smtp.gmail.com with ESMTPSA id
	r1sm32501414pfg.56.2016.10.31.09.27.02
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 31 Oct 2016 09:27:03 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CADEQAghUvK_yPR-=poepr1+0QNwaE-U5NW0ju=qbVUAcHz7N9g@mail.gmail.com>
Date: Mon, 31 Oct 2016 09:27:00 -0700
Message-Id: <9CF2594F-183C-46C9-8736-45D33898E7A5@gmail.com>
References: <CADEQAgjJjnajV+RaN0e=ch4MUt7PBQY42y7929m_hzuH4k0Psw@mail.gmail.com>
	<C00483C5-C3CC-4681-9C43-B2A42931A95D@gmail.com>
	<CADEQAghUvK_yPR-=poepr1+0QNwaE-U5NW0ju=qbVUAcHz7N9g@mail.gmail.com>
To: Hugo Heutinck <heutinck.h@gmail.com>
X-Mailer: Apple Mail (2.3124)
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
X-List-Received-Date: Mon, 31 Oct 2016 16:27:09 -0000
X-Groupsio-MsgNum: 32694
Content-Type: multipart/signed;
	boundary="Apple-Mail=_CCB994CE-9FF5-4B30-BE10-387C9D54C7B4";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_CCB994CE-9FF5-4B30-BE10-387C9D54C7B4
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_348E9D1C-B53D-456A-86FB-4A5F904628C0"

--Apple-Mail=_348E9D1C-B53D-456A-86FB-4A5F904628C0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Oct 31, 2016, at 12:54 AM, Hugo Heutinck <heutinck.h@gmail.com> =
wrote:
>=20
> I am using the Jethro branch, which one are you using ?

morty/master

>=20
> For me this provides quite a list of delta's, some seem to be related =
(e.g. the dbus, dbus-glib, dbus-lib vs. dbus-1),
> but others are not (e.g. expat).
>=20
> Was something on license file generation improved between Jethro and =
more recent branches  ?
>=20
> --- /tmp/a.manifest
> +++ /tmp/package.manifest
> @@ -24,9 +24,7 @@
>  cracklib
>  cronie
>  curl
> -dbus
> -dbus-glib
> -dbus-lib
> +dbus-1
>  debianutils
>  debianutils-run-parts
>  diffutils
> @@ -39,26 +37,16 @@
>  ed
>  elfutils
>  ethtool
> -expat
>  factory-tools
>  file
>  findutils
>  firmware-update
>  flex
> -freetype
>  fuser
>  gawk
> -gdbm
> -gdbm-compat
> -glib-2.0
> -glib-2.0-locale-en-gb
> -glibc
>  glibc-binary-localedata-en-gb
>  glibc-binary-localedata-en-us
>  glibc-locale-en-gb
> -gmp
> -gnutls
> -gnutls-openssl
>  grep
>  gzip
>  i2c-tools
> @@ -75,46 +63,70 @@
>  iputils-tracepath
>  iputils-tracepath6
>  iputils-traceroute6
> -json-c
>  kernel-crc-env
>  killall
>  kmod
>  led-control
>  less
> -libacl
> -libattr
> -libbz2
> -libcap
> -libcomerr
> -libcrypto
> -libcurl
> -libdw
> -libe2p
> -libelf
> -libestr
> +libacl1
> +libattr1
> +libblkid1
> +libbz2-0
> +libc6
> +libcap2
> +libcom-err2
> +libcrypto1.0.0
> +libcurl4
> +libdbus-1-3
> +libdbus-glib-1-2
> +libdw1
> +libe2p2
> +libelf1
> +libestr0
>  libevent
> -libext2fs
> -libffi
> -libgcc
> +libexpat1
> +libext2fs2
> +libfdisk1
> +libffi6
> +libfreetype6
> +libgcc1
>  libgcrypt
> -libgpg-error
> -libkmod
> +libgdbm-compat4
> +libgdbm4
> +libglib-2.0-0
> +libglib-2.0-locale-en-gb
> +libgmp10
> +libgnutls-openssl27
> +libgnutls28
> +libgpg-error0
> +libjson-c2
> +libkmod2
>  liblogging
> -liblzma
> -libpci
> -libpcre
> -libpython2
> -libss
> -libssl
> -libstdc++
> -libsysfs
> -libsystemd
> -libudev
> -libwrap
> -libx11
> -libxau
> -libxcb
> -libxdmcp
> +liblzma5
> +libmount1
> +libncurses5
> +libncursesw5
> +libpci3
> +libpcre1
> +libperl5
> +libpopt0
> +libpython2.7-1.0
> +libreadline6
> +libsmartcols1
> +libss2
> +libssl1.0.0
> +libstdc++6
> +libsysfs2
> +libsystemd0
> +libtinfo5
> +libudev1
> +libuuid1
> +libwrap0
> +libx11-6
> +libxau6
> +libxcb1
> +libxdmcp6
> +libz1
>  locale-base-en-gb
>  locale-base-en-us
>  logrotate
> @@ -130,9 +142,6 @@
>  mktemp
>  modutils-initscripts
>  ncurses
> -ncurses-libncurses
> -ncurses-libncursesw
> -ncurses-libtinfo
>  ncurses-terminfo
>  ncurses-terminfo-base
>  net-tools
> @@ -167,8 +176,6 @@
>  pciutils
>  pciutils-ids
>  perl
> -perl-lib
> -popt
>  procps
>  psmisc
>  psplash
> @@ -208,7 +215,6 @@
>  python-unittest
>  python-xml
>  python-xmlrpc
> -readline
>  rsyslog
>  run-postinsts
>  sed
> @@ -232,11 +238,6 @@
>  util-linux
>  util-linux-cfdisk
>  util-linux-fdisk
> -util-linux-libblkid
> -util-linux-libfdisk
> -util-linux-libmount
> -util-linux-libsmartcols
> -util-linux-libuuid
>  util-linux-losetup
>  util-linux-mkfs
>  util-linux-mount
>=20
>=20
> 2016-10-28 4:25 GMT+02:00 Khem Raj <raj.khem@gmail.com =
<mailto:raj.khem@gmail.com>>:
>=20
>> On Oct 26, 2016, at 5:45 AM, Hugo Heutinck <heutinck.h@gmail.com =
<mailto:heutinck.h@gmail.com>> wrote:
>>=20
>> Question: What is the relation between the package.manifest and =
license.manifest ?
>>=20
>> After a yocto poky based image has been built there are 2 files in =
the licenses directory "tmp/deploy/licenses/image_name-datestamp"
>>=20
>> One is the package.manifest, which if understood correctly is a list =
of all packages included in the image.
>>=20
>> The second file is the license.manifest, but this one contains =
besides the package name also the version, recipe name and license of =
the package.
>>=20
>> However if I compare the package names in both lists, there seem to =
be a  number of packages in the license.manifest that are not part of =
the package.manifest. E.g. "readline, popt, expat, freetype".
>>=20
>> Is the license.manifest a list of all items in the package.manifest + =
?build dependencies? or something ?
>=20
> They should be same.
>=20
> try something like this
> cat license.manifest | grep "PACKAGE NAME: " | sed "s/PACKAGE NAME: =
//=E2=80=9C > a.manifest
> diff a.manifest package.manifest
>=20
> For me both files comes out same.
>=20
>=20
>>=20
>> Regards,
>>=20
>> H.Heutinck
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
>=20
>=20


--Apple-Mail=_348E9D1C-B53D-456A-86FB-4A5F904628C0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Oct 31, 2016, at 12:54 AM, Hugo Heutinck &lt;<a =
href=3D"mailto:heutinck.h@gmail.com" =
class=3D"">heutinck.h@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D""><div class=3D""><div class=3D""><div =
class=3D"">I am using the Jethro branch, which one are you using ?<br =
class=3D""></div></div></div></div></div></div></blockquote><div><br =
class=3D""></div><div>morty/master&nbsp;</div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div dir=3D"ltr" class=3D""><div =
class=3D""><div class=3D""><div class=3D""><br class=3D""></div>For me =
this provides quite a list of delta's, some seem to be related (e.g. the =
dbus, dbus-glib, dbus-lib vs. dbus-1), <br class=3D""></div>but others =
are not (e.g. expat).<br class=3D""><br class=3D""></div>Was something =
on license file generation improved between Jethro and more recent =
branches&nbsp; ?<br class=3D""><div class=3D""><div class=3D""><div =
class=3D""><br class=3D"">--- /tmp/a.manifest<br class=3D"">+++ =
/tmp/package.manifest<br class=3D"">@@ -24,9 +24,7 @@<br =
class=3D"">&nbsp;cracklib<br class=3D"">&nbsp;cronie<br =
class=3D"">&nbsp;curl<br class=3D"">-dbus<br class=3D"">-dbus-glib<br =
class=3D"">-dbus-lib<br class=3D"">+dbus-1<br =
class=3D"">&nbsp;debianutils<br class=3D"">&nbsp;debianutils-run-parts<br =
class=3D"">&nbsp;diffutils<br class=3D"">@@ -39,26 +37,16 @@<br =
class=3D"">&nbsp;ed<br class=3D"">&nbsp;elfutils<br =
class=3D"">&nbsp;ethtool<br class=3D"">-expat<br =
class=3D"">&nbsp;factory-tools<br class=3D"">&nbsp;file<br =
class=3D"">&nbsp;findutils<br class=3D"">&nbsp;firmware-update<br =
class=3D"">&nbsp;flex<br class=3D"">-freetype<br class=3D"">&nbsp;fuser<br=
 class=3D"">&nbsp;gawk<br class=3D"">-gdbm<br class=3D"">-gdbm-compat<br =
class=3D"">-glib-2.0<br class=3D"">-glib-2.0-locale-en-gb<br =
class=3D"">-glibc<br class=3D"">&nbsp;glibc-binary-localedata-en-gb<br =
class=3D"">&nbsp;glibc-binary-localedata-en-us<br =
class=3D"">&nbsp;glibc-locale-en-gb<br class=3D"">-gmp<br =
class=3D"">-gnutls<br class=3D"">-gnutls-openssl<br =
class=3D"">&nbsp;grep<br class=3D"">&nbsp;gzip<br =
class=3D"">&nbsp;i2c-tools<br class=3D"">@@ -75,46 +63,70 @@<br =
class=3D"">&nbsp;iputils-tracepath<br =
class=3D"">&nbsp;iputils-tracepath6<br =
class=3D"">&nbsp;iputils-traceroute6<br class=3D"">-json-c<br =
class=3D"">&nbsp;kernel-crc-env<br class=3D"">&nbsp;killall<br =
class=3D"">&nbsp;kmod<br class=3D"">&nbsp;led-control<br =
class=3D"">&nbsp;less<br class=3D"">-libacl<br class=3D"">-libattr<br =
class=3D"">-libbz2<br class=3D"">-libcap<br class=3D"">-libcomerr<br =
class=3D"">-libcrypto<br class=3D"">-libcurl<br class=3D"">-libdw<br =
class=3D"">-libe2p<br class=3D"">-libelf<br class=3D"">-libestr<br =
class=3D"">+libacl1<br class=3D"">+libattr1<br class=3D"">+libblkid1<br =
class=3D"">+libbz2-0<br class=3D"">+libc6<br class=3D"">+libcap2<br =
class=3D"">+libcom-err2<br class=3D"">+libcrypto1.0.0<br =
class=3D"">+libcurl4<br class=3D"">+libdbus-1-3<br =
class=3D"">+libdbus-glib-1-2<br class=3D"">+libdw1<br =
class=3D"">+libe2p2<br class=3D"">+libelf1<br class=3D"">+libestr0<br =
class=3D"">&nbsp;libevent<br class=3D"">-libext2fs<br =
class=3D"">-libffi<br class=3D"">-libgcc<br class=3D"">+libexpat1<br =
class=3D"">+libext2fs2<br class=3D"">+libfdisk1<br class=3D"">+libffi6<br =
class=3D"">+libfreetype6<br class=3D"">+libgcc1<br =
class=3D"">&nbsp;libgcrypt<br class=3D"">-libgpg-error<br =
class=3D"">-libkmod<br class=3D"">+libgdbm-compat4<br =
class=3D"">+libgdbm4<br class=3D"">+libglib-2.0-0<br =
class=3D"">+libglib-2.0-locale-en-gb<br class=3D"">+libgmp10<br =
class=3D"">+libgnutls-openssl27<br class=3D"">+libgnutls28<br =
class=3D"">+libgpg-error0<br class=3D"">+libjson-c2<br =
class=3D"">+libkmod2<br class=3D"">&nbsp;liblogging<br =
class=3D"">-liblzma<br class=3D"">-libpci<br class=3D"">-libpcre<br =
class=3D"">-libpython2<br class=3D"">-libss<br class=3D"">-libssl<br =
class=3D"">-libstdc++<br class=3D"">-libsysfs<br class=3D"">-libsystemd<br=
 class=3D"">-libudev<br class=3D"">-libwrap<br class=3D"">-libx11<br =
class=3D"">-libxau<br class=3D"">-libxcb<br class=3D"">-libxdmcp<br =
class=3D"">+liblzma5<br class=3D"">+libmount1<br =
class=3D"">+libncurses5<br class=3D"">+libncursesw5<br =
class=3D"">+libpci3<br class=3D"">+libpcre1<br class=3D"">+libperl5<br =
class=3D"">+libpopt0<br class=3D"">+libpython2.7-1.0<br =
class=3D"">+libreadline6<br class=3D"">+libsmartcols1<br =
class=3D"">+libss2<br class=3D"">+libssl1.0.0<br class=3D"">+libstdc++6<br=
 class=3D"">+libsysfs2<br class=3D"">+libsystemd0<br =
class=3D"">+libtinfo5<br class=3D"">+libudev1<br class=3D"">+libuuid1<br =
class=3D"">+libwrap0<br class=3D"">+libx11-6<br class=3D"">+libxau6<br =
class=3D"">+libxcb1<br class=3D"">+libxdmcp6<br class=3D"">+libz1<br =
class=3D"">&nbsp;locale-base-en-gb<br =
class=3D"">&nbsp;locale-base-en-us<br class=3D"">&nbsp;logrotate<br =
class=3D"">@@ -130,9 +142,6 @@<br class=3D"">&nbsp;mktemp<br =
class=3D"">&nbsp;modutils-initscripts<br class=3D"">&nbsp;ncurses<br =
class=3D"">-ncurses-libncurses<br class=3D"">-ncurses-libncursesw<br =
class=3D"">-ncurses-libtinfo<br class=3D"">&nbsp;ncurses-terminfo<br =
class=3D"">&nbsp;ncurses-terminfo-base<br class=3D"">&nbsp;net-tools<br =
class=3D"">@@ -167,8 +176,6 @@<br class=3D"">&nbsp;pciutils<br =
class=3D"">&nbsp;pciutils-ids<br class=3D"">&nbsp;perl<br =
class=3D"">-perl-lib<br class=3D"">-popt<br class=3D"">&nbsp;procps<br =
class=3D"">&nbsp;psmisc<br class=3D"">&nbsp;psplash<br class=3D"">@@ =
-208,7 +215,6 @@<br class=3D"">&nbsp;python-unittest<br =
class=3D"">&nbsp;python-xml<br class=3D"">&nbsp;python-xmlrpc<br =
class=3D"">-readline<br class=3D"">&nbsp;rsyslog<br =
class=3D"">&nbsp;run-postinsts<br class=3D"">&nbsp;sed<br class=3D"">@@ =
-232,11 +238,6 @@<br class=3D"">&nbsp;util-linux<br =
class=3D"">&nbsp;util-linux-cfdisk<br class=3D"">&nbsp;util-linux-fdisk<br=
 class=3D"">-util-linux-libblkid<br class=3D"">-util-linux-libfdisk<br =
class=3D"">-util-linux-libmount<br class=3D"">-util-linux-libsmartcols<br =
class=3D"">-util-linux-libuuid<br class=3D"">&nbsp;util-linux-losetup<br =
class=3D"">&nbsp;util-linux-mkfs<br class=3D"">&nbsp;util-linux-mount<br =
class=3D""><br class=3D""></div></div></div></div><div =
class=3D"gmail_extra"><br class=3D""><div class=3D"gmail_quote">2016-10-28=
 4:25 GMT+02:00 Khem Raj <span dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:raj.khem@gmail.com" target=3D"_blank" =
class=3D"">raj.khem@gmail.com</a>&gt;</span>:<br class=3D""><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div style=3D"word-wrap:break-word" class=3D""><br=
 class=3D""><div class=3D""><span class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D"">On Oct 26, 2016, at 5:45 AM, Hugo Heutinck =
&lt;<a href=3D"mailto:heutinck.h@gmail.com" target=3D"_blank" =
class=3D"">heutinck.h@gmail.com</a>&gt; wrote:</div><br =
class=3D"m_-8160744393725023769Apple-interchange-newline"><div =
class=3D""><div dir=3D"ltr" class=3D""><div class=3D""><div =
class=3D""><div class=3D""><div class=3D""><div class=3D"">Question: =
What is the relation between the package.manifest and license.manifest =
?<br class=3D""><br class=3D"">After a yocto poky based image has been =
built there are 2 files in the licenses directory =
"tmp/deploy/licenses/<code =
class=3D"m_-8160744393725023769gmail-filename"><em =
class=3D"m_-8160744393725023769gmail-replaceable"><code =
class=3D"">image_<wbr class=3D"">name-datestamp</code></em></code>"<br =
class=3D""><br class=3D""></div>One is the package.manifest, which if =
understood correctly is a list of all packages included in the image.<br =
class=3D""><br class=3D""></div>The second file is the license.manifest, =
but this one contains besides the package name also the version, recipe =
name and license of the package.<br class=3D""><br =
class=3D""></div>However if I compare the package names in both lists, =
there seem to be a&nbsp; number of packages in the license.manifest that =
are not part of the package.manifest. E.g. "readline, popt, expat, =
freetype".<br class=3D""></div><br class=3D""></div><div class=3D"">Is =
the license.manifest a list of all items in the package.manifest + =
?build dependencies? or something ?<br =
class=3D""></div></div></div></blockquote><div class=3D""><br =
class=3D""></div></span><div class=3D"">They should be same.</div><div =
class=3D""><br class=3D""></div><div class=3D"">try something like =
this</div><div class=3D"">cat license.manifest | grep "PACKAGE NAME: " | =
sed "s/PACKAGE NAME: //=E2=80=9C &gt; a.manifest</div><div class=3D"">diff=
 a.manifest package.manifest</div><div class=3D""><br =
class=3D""></div><div class=3D"">For me both files comes out =
same.&nbsp;</div><div class=3D""><br class=3D""></div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
dir=3D"ltr" class=3D""><div class=3D""><br class=3D""></div><div =
class=3D"">Regards,<br class=3D""><br class=3D""></div><div =
class=3D"">H.Heutinck<span class=3D"HOEnZb"><font color=3D"#888888" =
class=3D""><br class=3D""></font></span></div></div><span =
class=3D"HOEnZb"><font color=3D"#888888" class=3D"">
-- <br class=3D"">______________________________<wbr =
class=3D"">_________________<br class=3D"">yocto mailing list<br =
class=3D""><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" =
class=3D"">yocto@yoctoproject.org</a><br class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank" =
class=3D"">https://lists.yoctoproject.<wbr =
class=3D"">org/listinfo/yocto</a><br =
class=3D""></font></span></div></blockquote></div><br =
class=3D""></div></blockquote></div><br class=3D""></div>
</div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_348E9D1C-B53D-456A-86FB-4A5F904628C0--

--Apple-Mail=_CCB994CE-9FF5-4B30-BE10-387C9D54C7B4
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgXcNQACgkQuwUzVZGdMxSBmACfRgzLk7RW8WymWiT+4AcYLWsW
aQ8AoIUXpxoSal70w3OsYH/n2zYAeC4c
=/pzh
-----END PGP SIGNATURE-----

--Apple-Mail=_CCB994CE-9FF5-4B30-BE10-387C9D54C7B4--
