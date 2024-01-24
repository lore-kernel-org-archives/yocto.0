Return-Path: <daniele.lugli@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C0F9C46CD2
	for <webhook@archiver.kernel.org>; Wed, 24 Jan 2024 22:07:10 +0000 (UTC)
Subject: Re: [yocto] etherlab
To: Ross Burton <ross.burton@arm.com>,yocto@lists.yoctoproject.org
From: "Daniele Lugli" <daniele.lugli@gmail.com>
X-Originating-Location: Rimini, Emilia-Romagna, IT (176.246.20.126)
X-Originating-Platform: Windows Opera 106
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 24 Jan 2024 14:07:06 -0800
References: <4102D24C-53A4-4F4F-A192-EC9295E09D54@arm.com>
In-Reply-To: <4102D24C-53A4-4F4F-A192-EC9295E09D54@arm.com>
Message-ID: <9213.1706134026442454152@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="5uu9qhIsZ2dWQwCC8vQJ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 22:07:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62274

--5uu9qhIsZ2dWQwCC8vQJ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Ross, thank you for your reply.

I tried

...
inherit autotools
inherit module

EXTRA_OECONF =3D "--sysconfdir=3D/etc --enable-generic --disable-igb --disa=
ble-8139too --with-linux-dir=3D${STAGING_KERNEL_BUILDDIR}"
EXTRA_OEMAKE +=3D "-f ${S}/Makefile.kbuild"
...

and now Makefile.kbuild is found.
The error is now:

| make -C "" M=3D"" INSTALL_MOD_DIR=3D"" modules
| make: the '-C' option requires a non-empty string argument

Makefile.kbuild contains

KBUILD =3D $(MAKE) -C "$(LINUX_SOURCE_DIR)" M=3D"$(abs_srcdir)" INSTALL_MOD=
_DIR=3D "$(INSTALL_MOD_DIR)"

modules:
$(KBUILD) modules

so the problem is that these variables are empty.

As there is also a Makefile, containing references to Makefile.kbuild, I al=
so tried with

EXTRA_OEMAKE +=3D "-f Makefile"

(the default ${B} should be good here because Makefile doesn't come out of =
git, it is created by configure)

and now I get

| ../../git/lib/domain.c:38:10: fatal error: stdio.h: No such file or direc=
tory

and a bunch of similar errors.
--
Daniele Lugli
General Logic srl
Viale Curreno, 41
10133 Torino
Italy
tel +39 329 3933041
www.general-logic.com ( http://www.general-logic.com/ )
www.linkedin.com/in/daniele- lugli ( http://www.linkedin.com/in/daniele-lug=
li )

--5uu9qhIsZ2dWQwCC8vQJ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Ross, thank you for your reply.</div>
<div>&nbsp;</div>
<div>I tried&nbsp;</div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">...</span></div>
<div><span style=3D"color: #0000ff;">inherit autotools</span></div>
<div><span style=3D"color: #0000ff;">inherit module</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">EXTRA_OECONF =3D "--sysconfdir=3D/etc =
--enable-generic --disable-igb --disable-8139too --with-linux-dir=3D${STAGI=
NG_KERNEL_BUILDDIR}"</span></div>
<div><span style=3D"color: #0000ff;">EXTRA_OEMAKE +=3D "-f ${S}/Makefile.kb=
uild"</span></div>
<div><span style=3D"color: #0000ff;">...</span></div>
<div>&nbsp;</div>
<div>and now Makefile.kbuild is found.</div>
<div>The error is now:</div>
<div>&nbsp;</div>
<div><span style=3D"color: #ff0000;">| make -C "" M=3D"" INSTALL_MOD_DIR=3D=
"" modules</span></div>
<div><span style=3D"color: #ff0000;">| make: the '-C' option requires a non=
-empty string argument</span></div>
<div>&nbsp;</div>
<div>Makefile.kbuild contains</div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">KBUILD =3D $(MAKE) -C "$(LINUX_SOURCE_=
DIR)" M=3D"$(abs_srcdir)" INSTALL_MOD_DIR=3D "$(INSTALL_MOD_DIR)"</span></d=
iv>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">modules:</span></div>
<div><span style=3D"white-space: normal; color: #0000ff;"><span style=3D"wh=
ite-space: pre;"> </span>$(KBUILD) modules</span></div>
<div>&nbsp;</div>
<div><br />so the problem is that these variables are empty.</div>
<div>&nbsp;</div>
<div>As there is also a Makefile, containing references to Makefile.kbuild,=
 I also tried with&nbsp;</div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">EXTRA_OEMAKE +=3D "-f Makefile"</span>=
</div>
<div>&nbsp;</div>
<div>(the default ${B} should be good here because Makefile doesn't come ou=
t of git, it is created by configure)</div>
<div>&nbsp;</div>
<div>and now I get</div>
<div>&nbsp;</div>
<div><span style=3D"color: #ff0000;">| ../../git/lib/domain.c:38:10: fatal =
error: stdio.h: No such file or directory</span></div>
<div>&nbsp;</div>
<div>and a bunch of similar errors.</div>
-- <br />
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">
<div dir=3D"ltr">
<div>Daniele Lugli</div>
General Logic srl</div>
<div>Viale Curreno, 41</div>
<div>10133 Torino<br />Italy</div>
<div>tel +39 329 3933041</div>
</div>
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><a style=3D"color: #1155cc;" href=3D"http://www.general-lo=
gic.com/" target=3D"_blank" rel=3D"noopener" data-saferedirecturl=3D"https:=
//www.google.com/url?q=3Dhttp://www.general-logic.com&amp;source=3Dgmail&am=
p;ust=3D1702484712598000&amp;usg=3DAOvVaw3caieBojp7RHbXjtN3Avtg">www.genera=
l-logic.com</a></div>
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><a style=3D"color: #1155cc;" href=3D"http://www.linkedin.c=
om/in/daniele-lugli" target=3D"_blank" rel=3D"noopener" data-saferedirectur=
l=3D"https://www.google.com/url?q=3Dhttp://www.linkedin.com/in/daniele-lugl=
i&amp;source=3Dgmail&amp;ust=3D1702484712598000&amp;usg=3DAOvVaw2CJ1YOxQZd7=
TCndA_wq8ak">www.linkedin.com/in/daniele-<wbr />lugli</a></div>

--5uu9qhIsZ2dWQwCC8vQJ--

