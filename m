Return-Path: <vidal.develone@gmail.com>
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE928E007A8
	for <yocto@yoctoproject.org>; Sun,  8 Dec 2013 13:19:14 -0800 (PST)
Received: by mail-qc0-f178.google.com with SMTP id i17so2079598qcy.23
	for <yocto@yoctoproject.org>; Sun, 08 Dec 2013 13:19:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=bdq8X8SDifHCLv4T2g9OJDwNMpVBFwqtalb0xr41mXI=;
	b=aJBa00RP9nEcRYVI6wcAsTdNCXVYAV2GsIxTIQqVlU0YmwGBT0QCnBoQs7tdEJcE66
	ZECcz7Ny42XoekqXGcFLsMXykr6xAM1R4tyuOVB9XDb1DRuz+xbeo6t3R3o3hLHLTp84
	ANf58OEvgUaiqEvaM7gLbQtbtEzBYkFtyZYNvCNl57LKRPTLCfJ+FM1JIYTTboOx39zY
	dD4iDb502Zc/XYtthIdHjCdi3k7H6NeXCcnBP/HsdPhV8v+aLjf1+hrKggKK7BYQgnaf
	97miOPkN7L2mvNv86Qt0tGsNhEQdh9xZwuG04jWTjwUVzTCPfmVIr0tBsPFhjeraqyQK
	YZCg==
MIME-Version: 1.0
X-Received: by 10.224.120.10 with SMTP id b10mr28493583qar.64.1386537553227;
	Sun, 08 Dec 2013 13:19:13 -0800 (PST)
Received: by 10.140.37.49 with HTTP; Sun, 8 Dec 2013 13:19:13 -0800 (PST)
In-Reply-To: <CAMKF1sq-fmyRo7C8mo++RKcbZBBE3pTWF9s-+RvUYfcGdKD1vg@mail.gmail.com>
References: <CANwz6nwekJf0b7Z1D7imWof5+wL9baKR8K=Fk+6F-JDCUO857A@mail.gmail.com>
	<CAMKF1sq-fmyRo7C8mo++RKcbZBBE3pTWF9s-+RvUYfcGdKD1vg@mail.gmail.com>
Date: Sun, 8 Dec 2013 14:19:13 -0700
Message-ID: <CANwz6nyR0yZrW8G5mGu4hdq3FN7H8nMVpZGonQ6RB+HZRi8+7g@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: firefox
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
X-List-Received-Date: Sun, 08 Dec 2013 21:19:16 -0000
Content-Type: multipart/alternative; boundary=001a11c2ff7053f5e404ed0c6ea4

--001a11c2ff7053f5e404ed0c6ea4
Content-Type: text/plain; charset=ISO-8859-1

Hello,
After adding firefox & chromium to my custom-image I am getting serval
errors.  This occurred since I just added meta-browser & meta-oe/meta-gnome
to by bblayers.conf.  Before this change I am thinking that
poky/meta/recipes-gnome/libgnome-keyring_2.32.0.bb was being used.  Now
with meta-oe/meta-gnome which has a priority of 7 now
poky/meta-oe/meta-gnome/recipes-gnome/libgnome/libgnome-keyring_2.32.0.bbis
being used.

ERROR: Package version for package libgnome-keyring-dbg went backwards
which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-staticdev went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-dev went backwards
which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-doc went backwards
which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring went backwards which
would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-ar went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-ast went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-bg went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-bn went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-ca went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-ca+valencia went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-cs went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-da went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-de went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-el went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-en-gb went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-eo went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-es went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-et went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-eu went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-fi went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-fr went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-gl went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-he went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-hu went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-id went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-it went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-ja went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-ko went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-lt went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-lv went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-ml went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-mn went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-ms went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-nb went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-nds went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-nl went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-nn went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-pa went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-pl went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-pt went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-pt-br went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-ro went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-ru went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-sk went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-sl went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-sr went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-sr+latin went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-sv went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-ta went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-th went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-uk went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-zh-cn went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-zh-hk went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)
ERROR: Package version for package libgnome-keyring-locale-zh-tw went
backwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)

poky/meta/recipes-gnome/libgnome-keyring_2.32.0.bb

DESCRIPTION = "Compatibility library for accessing secrets"
HOMEPAGE = "http://www.gnome.org/"
BUGTRACKER = "https://bugzilla.gnome.org/"

LICENSE = "LGPLv2 & LGPLv2+ & LGPLv2.1+"
LIC_FILES_CHKSUM = "file://COPYING;md5=0914b9d3ebaba41ef2e3e0ae16f296cf \

file://library/gnome-keyring.h;endline=25;md5=68ea64f81c160d670c37da5f137be4fb
\

file://library/gnome-keyring.c;endline=26;md5=8d7a4fb674aaa012ea5a98e7c368b4a5
\

file://egg/egg-dh.h;endline=22;md5=1626c16af2a8da1f88324cf3ced33f08"

SECTION = "x11/gnome/libs"
PR = "r3"

inherit gnome gtk-doc

DEPENDS = "dbus libgcrypt glib-2.0 intltool-native"

SRC_URI[archive.md5sum] = "c42b2ca66204835d901d3dbfc1fa5ae6"
SRC_URI[archive.sha256sum] =
"56388c0d81ddfdb57d30e4963c83ecc1c18498aab99395420e0fff69929a0f0c"

poky/meta-oe/meta-gnome/recipes-gnome/libgnome/libgnome-keyring_2.32.0.bb

DESCRIPTION = "Gnome keyring library"
LICENSE = "LGPLv2 & GPLv2"
LIC_FILES_CHKSUM = "file://COPYING.GPL;md5=94d55d512a9ba36caa9b7df079bae19f
\
                    file://COPYING;md5=0914b9d3ebaba41ef2e3e0ae16f296cf"

SECTION = "x11/gnome"

inherit gnome lib_package perlnative

SRC_URI[archive.md5sum] = "c42b2ca66204835d901d3dbfc1fa5ae6"
SRC_URI[archive.sha256sum] =
"56388c0d81ddfdb57d30e4963c83ecc1c18498aab99395420e0fff69929a0f0c"

What would be the steps to correct these errors.
Thanks


On Sun, Dec 8, 2013 at 12:20 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Sun, Dec 8, 2013 at 10:52 AM, Edward Vidal <vidal.develone@gmail.com>
> wrote:
> >
> >
> /home/vidal/POKY/dylan_build/poky/meta-browser/recipes-gnome/gnome-settings-daemon/gnome-settings-daemon_2.32.1.bbappend
>
> you probably are missing meta-gnome in your BBLAYERS mix
>

--001a11c2ff7053f5e404ed0c6ea4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br>After adding firefox &amp; chromium to=
 my custom-image I am getting serval errors.=A0 This occurred since I just =
added meta-browser &amp; meta-oe/meta-gnome to by bblayers.conf.=A0 Before =
this change I am thinking that poky/meta/recipes-gnome/<a href=3D"http://li=
bgnome-keyring_2.32.0.bb">libgnome-keyring_2.32.0.bb</a> was being used.=A0=
 Now with meta-oe/meta-gnome which has a priority of 7 now <br>
poky/meta-oe/meta-gnome/recipes-gnome/libgnome/<a href=3D"http://libgnome-k=
eyring_2.32.0.bb">libgnome-keyring_2.32.0.bb</a> is being used. <br><br>ERR=
OR: Package version for package libgnome-keyring-dbg went backwards which w=
ould break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-staticdev went backward=
s which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERRO=
R: Package version for package libgnome-keyring-dev went backwards which wo=
uld break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-doc went backwards whic=
h would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERROR: Pac=
kage version for package libgnome-keyring went backwards which would break =
package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-ar went backward=
s which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERRO=
R: Package version for package libgnome-keyring-locale-ast went backwards w=
hich would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-bg went backward=
s which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERRO=
R: Package version for package libgnome-keyring-locale-bn went backwards wh=
ich would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-ca went backward=
s which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERRO=
R: Package version for package libgnome-keyring-locale-ca+valencia went bac=
kwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br=
>
ERROR: Package version for package libgnome-keyring-locale-cs went backward=
s which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERRO=
R: Package version for package libgnome-keyring-locale-da went backwards wh=
ich would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-de went backward=
s which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERRO=
R: Package version for package libgnome-keyring-locale-el went backwards wh=
ich would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-en-gb went backw=
ards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>E=
RROR: Package version for package libgnome-keyring-locale-eo went backwards=
 which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-es went backward=
s which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERRO=
R: Package version for package libgnome-keyring-locale-et went backwards wh=
ich would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-eu went backward=
s which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERRO=
R: Package version for package libgnome-keyring-locale-fi went backwards wh=
ich would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-fr went backward=
s which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERRO=
R: Package version for package libgnome-keyring-locale-gl went backwards wh=
ich would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-he went backward=
s which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERRO=
R: Package version for package libgnome-keyring-locale-hu went backwards wh=
ich would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-id went backward=
s which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERRO=
R: Package version for package libgnome-keyring-locale-it went backwards wh=
ich would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-ja went backward=
s which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERRO=
R: Package version for package libgnome-keyring-locale-ko went backwards wh=
ich would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-lt went backward=
s which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERRO=
R: Package version for package libgnome-keyring-locale-lv went backwards wh=
ich would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-ml went backward=
s which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERRO=
R: Package version for package libgnome-keyring-locale-mn went backwards wh=
ich would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-ms went backward=
s which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERRO=
R: Package version for package libgnome-keyring-locale-nb went backwards wh=
ich would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-nds went backwar=
ds which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERR=
OR: Package version for package libgnome-keyring-locale-nl went backwards w=
hich would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-nn went backward=
s which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERRO=
R: Package version for package libgnome-keyring-locale-pa went backwards wh=
ich would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-pl went backward=
s which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERRO=
R: Package version for package libgnome-keyring-locale-pt went backwards wh=
ich would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-pt-br went backw=
ards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>E=
RROR: Package version for package libgnome-keyring-locale-ro went backwards=
 which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-ru went backward=
s which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERRO=
R: Package version for package libgnome-keyring-locale-sk went backwards wh=
ich would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-sl went backward=
s which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERRO=
R: Package version for package libgnome-keyring-locale-sr went backwards wh=
ich would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-sr+latin went ba=
ckwards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<b=
r>ERROR: Package version for package libgnome-keyring-locale-sv went backwa=
rds which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-ta went backward=
s which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERRO=
R: Package version for package libgnome-keyring-locale-th went backwards wh=
ich would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-uk went backward=
s which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>ERRO=
R: Package version for package libgnome-keyring-locale-zh-cn went backwards=
 which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
ERROR: Package version for package libgnome-keyring-locale-zh-hk went backw=
ards which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>E=
RROR: Package version for package libgnome-keyring-locale-zh-tw went backwa=
rds which would break package feeds from (0:2.32.0-r3 to 0:2.32.0-r0)<br>
<br>poky/meta/recipes-gnome/<a href=3D"http://libgnome-keyring_2.32.0.bb">l=
ibgnome-keyring_2.32.0.bb</a><br><br>DESCRIPTION =3D &quot;Compatibility li=
brary for accessing secrets&quot;<br>HOMEPAGE =3D &quot;<a href=3D"http://w=
ww.gnome.org/">http://www.gnome.org/</a>&quot;<br>
BUGTRACKER =3D &quot;<a href=3D"https://bugzilla.gnome.org/">https://bugzil=
la.gnome.org/</a>&quot;<br><br>LICENSE =3D &quot;LGPLv2 &amp; LGPLv2+ &amp;=
 LGPLv2.1+&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D0914b9d=
3ebaba41ef2e3e0ae16f296cf \<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 file://library/gn=
ome-keyring.h;endline=3D25;md5=3D68ea64f81c160d670c37da5f137be4fb \<br>=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 file://library/gnome=
-keyring.c;endline=3D26;md5=3D8d7a4fb674aaa012ea5a98e7c368b4a5 \<br>=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 file://egg/egg-dh.h;end=
line=3D22;md5=3D1626c16af2a8da1f88324cf3ced33f08&quot;<br>
<br>SECTION =3D &quot;x11/gnome/libs&quot;<br>PR =3D &quot;r3&quot;<br><br>=
inherit gnome gtk-doc<br><br>DEPENDS =3D &quot;dbus libgcrypt glib-2.0 intl=
tool-native&quot;<br><br>SRC_URI[archive.md5sum] =3D &quot;c42b2ca66204835d=
901d3dbfc1fa5ae6&quot;<br>
SRC_URI[archive.sha256sum] =3D &quot;56388c0d81ddfdb57d30e4963c83ecc1c18498=
aab99395420e0fff69929a0f0c&quot;<br><br>poky/meta-oe/meta-gnome/recipes-gno=
me/libgnome/<a href=3D"http://libgnome-keyring_2.32.0.bb">libgnome-keyring_=
2.32.0.bb</a><br>
<br>DESCRIPTION =3D &quot;Gnome keyring library&quot;<br>LICENSE =3D &quot;=
LGPLv2 &amp; GPLv2&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://COPYING.GPL;m=
d5=3D94d55d512a9ba36caa9b7df079bae19f \<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 file://COPYING;md5=3D0914b9d3ebaba41ef2e3e0ae16=
f296cf&quot;<br>
<br>SECTION =3D &quot;x11/gnome&quot;<br><br>inherit gnome lib_package perl=
native<br><br>SRC_URI[archive.md5sum] =3D &quot;c42b2ca66204835d901d3dbfc1f=
a5ae6&quot;<br>SRC_URI[archive.sha256sum] =3D &quot;56388c0d81ddfdb57d30e49=
63c83ecc1c18498aab99395420e0fff69929a0f0c&quot;<br>
<br></div>What would be the steps to correct these errors.<br></div>Thanks<=
br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On S=
un, Dec 8, 2013 at 12:20 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mail=
to:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> =
wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">On Sun, Dec 8, 2013 at 10:52 AM, Edward Vida=
l &lt;<a href=3D"mailto:vidal.develone@gmail.com">vidal.develone@gmail.com<=
/a>&gt; wrote:<br>

&gt;<br>
&gt; /home/vidal/POKY/dylan_build/poky/meta-browser/recipes-gnome/gnome-set=
tings-daemon/gnome-settings-daemon_2.32.1.bbappend<br>
<br>
you probably are missing meta-gnome in your BBLAYERS mix<br>
</blockquote></div><br></div>

--001a11c2ff7053f5e404ed0c6ea4--
