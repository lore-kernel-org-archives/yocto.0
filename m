Return-Path: <gary@missionsecure.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21CA7C433F5
	for <webhook@archiver.kernel.org>; Fri,  4 Mar 2022 19:18:07 +0000 (UTC)
Subject: suricata: enable lua support
To: yocto@lists.yoctoproject.org
From: "Gary Huband" <gary@missionsecure.com>
X-Originating-Location: Charlottesville, Virginia, US (216.197.64.240)
X-Originating-Platform: Linux Firefox 97
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 04 Mar 2022 11:18:06 -0800
Message-ID: <eRa7.1646421486482517035.Pqfc@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="cls0swIZuyPc3TjWAtHV"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Mar 2022 19:18:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56368

--cls0swIZuyPc3TjWAtHV
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

How can I enable lua support for suricata?=C2=A0 According to
https://suricata.readthedocs.io/en/suricata-6.0.0/install.html
I can add --enable-lua, so I created a suricata_%.bbappend file with

# Add lua
DEPENDS +=3D "lua-native"
RDEPENDS_${PN} +=3D "lua"
EXTRA_OECONF +=3D "--enable-lua"

But when I bitbake suricata I get this error

| checking for magic.h... yes
| checking for magic_open in -lmagic... yes
| checking for LUA... no
| checking for LUA... no
| checking for LUA... no
| checking for LUA... no
| checking lualib.h usability... no
| checking lualib.h presence... no
| checking for lualib.h... no
|
|=C2=A0=C2=A0=C2=A0 ERROR!=C2=A0 liblua headers not found, go get them
|=C2=A0=C2=A0=C2=A0 from http://lua.org/index.html or your distribution:
|
|=C2=A0=C2=A0=C2=A0 Ubuntu: apt-get install liblua5.1-dev
|=C2=A0=C2=A0=C2=A0 Fedora: dnf install lua-devel
|=C2=A0=C2=A0=C2=A0 CentOS/RHEL: yum install lua-devel
|
|=C2=A0=C2=A0=C2=A0 If you installed software in a non-standard prefix
|=C2=A0=C2=A0=C2=A0 consider adjusting the PKG_CONFIG_PATH environment vari=
able
|=C2=A0=C2=A0=C2=A0 or use --with-liblua-includes and --with-liblua-librari=
es
|=C2=A0=C2=A0=C2=A0 configure option.

lua and lua-native appear to build.

--cls0swIZuyPc3TjWAtHV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>How can I enable lua support for suricata?&nbsp; According to <br /><a h=
ref=3D"https://suricata.readthedocs.io/en/suricata-6.0.0/install.html" targ=
et=3D"_blank" rel=3D"noopener">https://suricata.readthedocs.io/en/suricata-=
6.0.0/install.html</a><br />I can add --enable-lua, so I created a suricata=
_%.bbappend file with<br /><br /># Add lua<br />DEPENDS +=3D "lua-native"<b=
r />RDEPENDS_${PN} +=3D "lua"<br />EXTRA_OECONF +=3D "--enable-lua"<br /><b=
r />But when I bitbake suricata I get this error</p>
<p>| checking for magic.h... yes<br />| checking for magic_open in -lmagic.=
.. yes<br />| checking for LUA... no<br />| checking for LUA... no<br />| c=
hecking for LUA... no<br />| checking for LUA... no<br />| checking lualib.=
h usability... no<br />| checking lualib.h presence... no<br />| checking f=
or lualib.h... no<br />| <br />|&nbsp;&nbsp;&nbsp; ERROR!&nbsp; liblua head=
ers not found, go get them<br />|&nbsp;&nbsp;&nbsp; from http://lua.org/ind=
ex.html or your distribution:<br />| <br />|&nbsp;&nbsp;&nbsp; Ubuntu: apt-=
get install liblua5.1-dev<br />|&nbsp;&nbsp;&nbsp; Fedora: dnf install lua-=
devel<br />|&nbsp;&nbsp;&nbsp; CentOS/RHEL: yum install lua-devel<br />| <b=
r />|&nbsp;&nbsp;&nbsp; If you installed software in a non-standard prefix<=
br />|&nbsp;&nbsp;&nbsp; consider adjusting the PKG_CONFIG_PATH environment=
 variable<br />|&nbsp;&nbsp;&nbsp; or use --with-liblua-includes and --with=
-liblua-libraries<br />|&nbsp;&nbsp;&nbsp; configure option.</p>
<p>lua and lua-native appear to build.</p>

--cls0swIZuyPc3TjWAtHV--

