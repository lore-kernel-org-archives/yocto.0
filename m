Return-Path: <bohdan.shubenok@sigma.software>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1F15C433F5
	for <webhook@archiver.kernel.org>; Wed,  6 Oct 2021 07:32:45 +0000 (UTC)
Subject: Re: #dunfell Path to sources in debugfs
To: yocto@lists.yoctoproject.org
From: bohdan.shubenok@sigma.software
X-Originating-Location: Kyiv, Kyiv City, UA (93.73.212.111)
X-Originating-Platform: Windows Firefox 92
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 06 Oct 2021 00:32:45 -0700
References: <a1ce9afc-d5e3-0065-325b-b85a296cb2ff@gmail.com>
In-Reply-To: <a1ce9afc-d5e3-0065-325b-b85a296cb2ff@gmail.com>
Message-ID: <16836.1633505565229500112@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="uk9BHkW6fGOheYHWkffI"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Oct 2021 07:32:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54977

--uk9BHkW6fGOheYHWkffI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I`m trying to debug without connection to target at all. This are the examp=
les of what I`m running:

# gdb-multiarch b2010_rootfs/usr/bin/noah-heatsystem var/volatile/crash/cor=
e.noah.565
(gdb) set sysroot b2010_rootfs/
(gdb) set substitute-path /usr/src/debug b2010/usr/src/debug
.... things are getting loaded .....

(gdb) bt
#0=C2=A0 0xb4a6a144 in saveCursorsOnList (p=3D0xccf34862, iRoot=3D3, pExcep=
t=3D0xb540b350) at ../sqlite-autoconf-3310100/sqlite3.c:64883
.... more frames here .....

And this how it looks like when out of tree build disabled:

# gdb-multiarch b2010_rootfs/usr/bin/noah-heatsystem var/volatile/crash/cor=
e.noah.565
(gdb) set sysroot src_add_rootfs/
(gdb) set substitute-path /usr/src/debug src_add_rootfs/usr/src/debug
.... things are getting loaded .....

(gdb) bt
#0=C2=A0 0xb4a6a144 in saveCursorsOnList (p=3D0xccf34862, iRoot=3D3, pExcep=
t=3D0xb540b350) at sqlite3.c:64883
.... more frames here .....

In a=C2=A0 first case `layout next` command shows that no source code can b=
e found and in a second case source code is shown.

Best regards,

Bohdan.

--uk9BHkW6fGOheYHWkffI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I`m trying to debug without connection to target at all. Thi=
s are the examples of what I`m running:<br /><br /># gdb-multiarch b2010_ro=
otfs/usr/bin/noah-heatsystem var/volatile/crash/core.noah.565<br />(gdb) se=
t sysroot b2010_rootfs/<br />(gdb) set substitute-path /usr/src/debug b2010=
/usr/src/debug<br />.... things are getting loaded .....<br /><br />(gdb) b=
t<br />#0&nbsp; 0xb4a6a144 in saveCursorsOnList (p=3D0xccf34862, iRoot=3D3,=
 pExcept=3D0xb540b350) at ../sqlite-autoconf-3310100/sqlite3.c:64883<br />.=
... more frames here .....<br /><br />And this how it looks like when out o=
f tree build disabled:<br /><br /># gdb-multiarch b2010_rootfs/usr/bin/noah=
-heatsystem var/volatile/crash/core.noah.565<br />(gdb) set sysroot src_add=
_rootfs/<br />(gdb) set substitute-path /usr/src/debug src_add_rootfs/usr/s=
rc/debug<br />.... things are getting loaded .....<br /><br />(gdb) bt<br /=
>#0&nbsp; 0xb4a6a144 in saveCursorsOnList (p=3D0xccf34862, iRoot=3D3, pExce=
pt=3D0xb540b350) at sqlite3.c:64883<br />.... more frames here .....<br /><=
br /><br />In a&nbsp; first case `layout next` command shows that no source=
 code can be found and in a second case source code is shown.<br /><br />Be=
st regards,<br /><br />Bohdan.<br />

--uk9BHkW6fGOheYHWkffI--

