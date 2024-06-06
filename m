Return-Path: <lukas.weiss@janitza.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 298CDC25B75
	for <webhook@archiver.kernel.org>; Thu,  6 Jun 2024 10:41:12 +0000 (UTC)
Subject: Re: [yocto] Bad lib symlink in Host SDK
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: =?UTF-8?B?THVrYXMgV2Vpw58=?= <lukas.weiss@janitza.de>
X-Originating-Location: DE (78.51.154.69)
X-Originating-Platform: Linux Chrome 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 06 Jun 2024 03:41:09 -0700
References: <CANNYZj9WxSLVHsXcUbwA2xEME8e_qQ6=ygBvpOLukc1TvAb2mw@mail.gmail.com>
In-Reply-To: <CANNYZj9WxSLVHsXcUbwA2xEME8e_qQ6=ygBvpOLukc1TvAb2mw@mail.gmail.com>
Message-ID: <7313.1717670469256332062@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LzK7jIru8WdBLczRQgsV"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Jun 2024 10:41:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63286

--LzK7jIru8WdBLczRQgsV
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Sorry, was busy with something else.

Thanks for the hint. I think, i found the reason: The Links is already brok=
en on install. Its part of the Autotools Install of the eudev project (src/=
libudev/Makefile.in):

>=20
>=20
>=20
> install-exec-hook:
> libname=3Dlibudev.so; if test "$(libdir)" !=3D "$(rootlibdir)"; then \
> $(MKDIR_P) $(DESTDIR)$(rootlibdir) && \
> so_img_name=3D$$(readlink $(DESTDIR)$(libdir)/$$libname) && \
> so_img_rel_target_prefix=3D$$(echo $(libdir) | sed 's,\(^/\)\?[^/]\+,..,g=
')
> && \
> $(LN_S) -f $$so_img_rel_target_prefix$(rootlibdir)/$$so_img_name
> $(DESTDIR)$(libdir)/$$libname && \
> mv $(DESTDIR)$(libdir)/$$libname.* $(DESTDIR)$(rootlibdir); \
> fi
>=20
>=20

In Case of nativesdk, this leads to bad results, as all of these paths a pr=
efixed with default SDK path (/opt/plat_sdk/sysroots/x86_64-platsdk-linux i=
n my case):

>=20
>=20
>=20
> libname=3Dlibudev.so; if test
> "/opt/plat_sdk/sysroots/x86_64-platsdk-linux/usr/lib" !=3D
> "/opt/plat_sdk/sysroots/x86_64-platsdk-linux/lib"; then \
> /home/admin/workspaces/yocto/build/tmp/hosttools/mkdir -p
> /home/admin/workspaces/yocto/build/tmp/work/x86_64-nativesdk-platsdk-linu=
x/nativesdk-eudev/3.2.14/image/opt/plat_sdk/sysroots/x86_64-platsdk-linux/l=
ib
> && \
> so_img_name=3D$(readlink
> /home/admin/workspaces/yocto/build/tmp/work/x86_64-nativesdk-platsdk-linu=
x/nativesdk-eudev/3.2.14/image/opt/plat_sdk/sysroots/x86_64-platsdk-linux/u=
sr/lib/$libname)
> && \
> so_img_rel_target_prefix=3D$(echo
> /opt/plat_sdk/sysroots/x86_64-platsdk-linux/usr/lib | sed
> 's,\(^/\)\?[^/]\+,..,g') && \
> ln -s -f
> $so_img_rel_target_prefix/opt/plat_sdk/sysroots/x86_64-platsdk-linux/lib/=
$so_img_name
> /home/admin/workspaces/yocto/build/tmp/work/x86_64-nativesdk-platsdk-linu=
x/nativesdk-eudev/3.2.14/image/opt/plat_sdk/sysroots/x86_64-platsdk-linux/u=
sr/lib/$libname
> && \
> mv
> /home/admin/workspaces/yocto/build/tmp/work/x86_64-nativesdk-platsdk-linu=
x/nativesdk-eudev/3.2.14/image/opt/plat_sdk/sysroots/x86_64-platsdk-linux/u=
sr/lib/$libname.*
> /home/admin/workspaces/yocto/build/tmp/work/x86_64-nativesdk-platsdk-linu=
x/nativesdk-eudev/3.2.14/image/opt/plat_sdk/sysroots/x86_64-platsdk-linux/l=
ib;
> \
> fi
>=20
>=20

That path seems to be replaced in all symlinks when SDK is installed to a d=
ifferent location than default - thats the reason for the individual bad sy=
mlinks.
As a workaround i just replace the symlink with the correct one. This is ve=
ry dirty, but it works and i do not have to patch eudev:

>=20
>=20
>=20
> do_install:append:class-nativesdk() {
> # Workaround to fix libudev.so symlink in nativesdk
> ln -s -f ../../lib/$(basename $(readlink -f ${D}${libdir}/libudev.so))
> ${D}${libdir}/libudev.so.new
> rm -f ${D}${libdir}/libudev.so
> mv ${D}${libdir}/libudev.so.new ${D}${libdir}/libudev.so
> }
>=20
>=20
>=20

Thanks for help!

--LzK7jIru8WdBLczRQgsV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Sorry, was busy with something else.&nbsp;</p>
<p>Thanks for the hint. I think, i found the reason: The Links is already b=
roken on install. Its part of the Autotools Install of the eudev project (s=
rc/libudev/Makefile.in):</p>
<blockquote>
<p>install-exec-hook:<br />&nbsp; &nbsp; libname=3Dlibudev.so; if test "$(l=
ibdir)" !=3D "$(rootlibdir)"; then \<br />&nbsp; &nbsp; &nbsp; &nbsp; $(MKD=
IR_P) $(DESTDIR)$(rootlibdir) &amp;&amp; \<br />&nbsp; &nbsp; &nbsp; &nbsp;=
 so_img_name=3D$$(readlink $(DESTDIR)$(libdir)/$$libname) &amp;&amp; \<br /=
>&nbsp; &nbsp; &nbsp; &nbsp; so_img_rel_target_prefix=3D$$(echo $(libdir) |=
 sed 's,\(^/\)\?[^/]\+,..,g') &amp;&amp; \<br />&nbsp; &nbsp; &nbsp; &nbsp;=
 $(LN_S) -f $$so_img_rel_target_prefix$(rootlibdir)/$$so_img_name $(DESTDIR=
)$(libdir)/$$libname &amp;&amp; \<br />&nbsp; &nbsp; &nbsp; &nbsp; mv $(DES=
TDIR)$(libdir)/$$libname.* $(DESTDIR)$(rootlibdir); \<br />&nbsp; &nbsp; fi=
</p>
</blockquote>
<p>In Case of nativesdk, this leads to bad results, as all of these paths a=
 prefixed with default SDK path (/opt/plat_sdk/sysroots/x86_64-platsdk-linu=
x in my case):</p>
<blockquote>
<p>libname=3Dlibudev.so; if test "/opt/plat_sdk/sysroots/x86_64-platsdk-lin=
ux/usr/lib" !=3D "/opt/plat_sdk/sysroots/x86_64-platsdk-linux/lib"; then \<=
br />&nbsp; /home/admin/workspaces/yocto/build/tmp/hosttools/mkdir -p /home=
/admin/workspaces/yocto/build/tmp/work/x86_64-nativesdk-platsdk-linux/nativ=
esdk-eudev/3.2.14/image/opt/plat_sdk/sysroots/x86_64-platsdk-linux/lib &amp=
;&amp; \<br />&nbsp; so_img_name=3D$(readlink /home/admin/workspaces/yocto/=
build/tmp/work/x86_64-nativesdk-platsdk-linux/nativesdk-eudev/3.2.14/image/=
opt/plat_sdk/sysroots/x86_64-platsdk-linux/usr/lib/$libname) &amp;&amp; \<b=
r />&nbsp; so_img_rel_target_prefix=3D$(echo /opt/plat_sdk/sysroots/x86_64-=
platsdk-linux/usr/lib | sed 's,\(^/\)\?[^/]\+,..,g') &amp;&amp; \<br />&nbs=
p; ln -s -f $so_img_rel_target_prefix/opt/plat_sdk/sysroots/x86_64-platsdk-=
linux/lib/$so_img_name /home/admin/workspaces/yocto/build/tmp/work/x86_64-n=
ativesdk-platsdk-linux/nativesdk-eudev/3.2.14/image/opt/plat_sdk/sysroots/x=
86_64-platsdk-linux/usr/lib/$libname &amp;&amp; \<br />&nbsp; mv /home/admi=
n/workspaces/yocto/build/tmp/work/x86_64-nativesdk-platsdk-linux/nativesdk-=
eudev/3.2.14/image/opt/plat_sdk/sysroots/x86_64-platsdk-linux/usr/lib/$libn=
ame.* /home/admin/workspaces/yocto/build/tmp/work/x86_64-nativesdk-platsdk-=
linux/nativesdk-eudev/3.2.14/image/opt/plat_sdk/sysroots/x86_64-platsdk-lin=
ux/lib; \<br />fi</p>
</blockquote>
<p><span style=3D"background-color: var(--light-mode-body-color);">That pat=
h seems to be replaced in all symlinks when SDK is installed to a different=
 location than default - thats the reason for the individual bad symlinks.<=
br />As a workaround i just replace the symlink with the correct one. This =
is very dirty, but it works and i do not have to patch eudev:</span></p>
<blockquote>
<p><span style=3D"background-color: var(--light-mode-body-color);">do_insta=
ll:append:class-nativesdk() {<br />&nbsp; &nbsp; # Workaround to fix libude=
v.so symlink in nativesdk<br />&nbsp; &nbsp; ln -s -f ../../lib/$(basename =
$(readlink -f ${D}${libdir}/libudev.so)) ${D}${libdir}/libudev.so.new<br />=
&nbsp; &nbsp; rm -f ${D}${libdir}/libudev.so<br />&nbsp; &nbsp; mv ${D}${li=
bdir}/libudev.so.new ${D}${libdir}/libudev.so<br />}<br /></span></p>
</blockquote>
<br />Thanks for help!

--LzK7jIru8WdBLczRQgsV--

