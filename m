Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BEB7E01415
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 10:08:02 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so2420872pbb.35
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 10:08:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=DRbaq1OZ7uH6k/gbs/reiEzzf6ra1ioYoVsg6H2Cnnc=;
	b=dox7TTjd7KEZJs21DbiNtyXsReWeWPknI/qhuk/qSv6BjK4caPRtNNwCQhnNAsonE2
	NvGDDDN46UJy9C31gySsYBqU/qtmpe1ifIsXZjT4RzUaiAsiNzQM6Lr+lrJUiDgOsNbG
	quRQreVC5rcniqC5/FKbNQ+ggGj55AUYHAq4rQWStzcu6rJYIfWK+VxajW+kKbR5nenG
	lz5lwhqlwVJHKymsluQiQzoVMv4oELyrj5p/ARPJjdHht2BY8UwnX8GWc4CRw5Dcpiof
	LI/QJeYOXAJNz5x5Cg6SHy2vm2zaf1ex8fJemPj0ggE1Xi30WKOf0+m0kcpKXqmSXzR1
	lj0g==
Received: by 10.68.216.104 with SMTP id op8mr5142236pbc.65.1344618482048;
	Fri, 10 Aug 2012 10:08:02 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id rx7sm3677157pbc.64.2012.08.10.10.07.59
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 10 Aug 2012 10:08:01 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Fri, 10 Aug 2012 21:07:56 +0400
Message-Id: <4B80D47F-708F-4D80-969D-881404063793@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: external-sourcery-toolchain: cp: cannot stat `/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/share/gettext/config.rpath': No such file or directory
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 10 Aug 2012 17:08:02 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_B6A7E04D-8B2B-4E6F-9259-40C637B49047"

--Apple-Mail=_B6A7E04D-8B2B-4E6F-9259-40C637B49047
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
       When using the mentor external-sourcery-toolchain, I get the =
following error:

NOTE: package gdbm-1.10-r3: task do_configure: Started
ERROR: Function failed: do_configure (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gdbm-1.10-r3/temp/log.do=
_configure.53409 for further information)
ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gdbm-1.10-r3/temp/log.do=
_configure.53409
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: SITE files ['endian-big', 'bit-32', 'powerpc-common', =
'common-linux', 'common-glibc', 'powerpc32-linux', 'powerpc-linux', =
'common']
| DEBUG: Executing shell function do_configure
| automake (GNU automake) 1.12.1
| Copyright (C) 2012 Free Software Foundation, Inc.
| License GPLv2+: GNU GPL version 2 or later =
<http://gnu.org/licenses/gpl-2.0.html>
| This is free software: you are free to change and redistribute it.
| There is NO WARRANTY, to the extent permitted by law.
|=20
| Written by Tom Tromey <tromey@redhat.com>
|        and Alexandre Duret-Lutz <adl@gnu.org>.
| AUTOV is 1.12
| cp: cannot stat =
`/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/share/gettext/config.rpat=
h': No such file or directory
| ERROR: Function failed: do_configure (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gdbm-1.10-r3/temp/log.do=
_configure.53409 for further information)
NOTE: package gdbm-1.10-r3: task do_configure: Failed
ERROR: Task 541 =
(/tool/yocto/poky/meta/recipes-support/gdbm/gdbm_1.10.bb, do_configure) =
failed with exit code '1'


Best regards,

Elvis Dowson=

--Apple-Mail=_B6A7E04D-8B2B-4E6F-9259-40C637B49047
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; &nbsp;When using&nbsp;the mentor =
external-sourcery-toolchain,&nbsp;I get the following =
error:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package gdbm-1.10-r3: task =
do_configure: Started</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Function failed: do_configure (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gdbm-1.10-r3/temp/log.do=
_configure.53409 for further information)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ERROR: Logfile of =
failure stored in: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gdbm-1.10-r3/temp/log.do=
_configure.53409</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Log data follows:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| DEBUG: Executing =
python function sysroot_cleansstate</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| DEBUG: Python =
function sysroot_cleansstate finished</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| DEBUG: SITE =
files ['endian-big', 'bit-32', 'powerpc-common', 'common-linux', =
'common-glibc', 'powerpc32-linux', 'powerpc-linux', =
'common']</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| DEBUG: Executing shell function =
do_configure</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| automake (GNU automake) =
1.12.1</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| Copyright (C) 2012 Free Software Foundation, =
Inc.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| License GPLv2+: GNU GPL version 2 or later &lt;<a =
href=3D"http://gnu.org/licenses/gpl-2.0.html">http://gnu.org/licenses/gpl-=
2.0.html</a>&gt;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| This is free software: you are free to =
change and redistribute it.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| There is NO =
WARRANTY, to the extent permitted by law.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">|&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| Written by Tom Tromey &lt;<a =
href=3D"mailto:tromey@redhat.com">tromey@redhat.com</a>&gt;</font></div><d=
iv><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| &nbsp; =
&nbsp; &nbsp; &nbsp;and Alexandre Duret-Lutz &lt;<a =
href=3D"mailto:adl@gnu.org">adl@gnu.org</a>&gt;.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| AUTOV is =
1.12</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| <font class=3D"Apple-style-span" color=3D"#ff2a1a">cp: =
cannot stat =
`/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/share/gettext/config.rpat=
h': No such file or directory</font></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| ERROR: Function =
failed: do_configure (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gdbm-1.10-r3/temp/log.do=
_configure.53409 for further information)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: package =
gdbm-1.10-r3: task do_configure: Failed</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ERROR: Task 541 =
(/tool/yocto/poky/meta/recipes-support/gdbm/gdbm_1.10.bb, do_configure) =
failed with exit code =
'1'</font></div></div><div><br></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_B6A7E04D-8B2B-4E6F-9259-40C637B49047--
