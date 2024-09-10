Return-Path: <agv100@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7696BECE564
	for <webhook@archiver.kernel.org>; Tue, 10 Sep 2024 11:16:54 +0000 (UTC)
Subject: How to import image build name to application recipe?
To: yocto@lists.yoctoproject.org
From: "Gennady Abramov" <agv100@gmail.com>
X-Originating-Location: Moscow, RU (178.57.82.130)
X-Originating-Platform: Windows Firefox 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 10 Sep 2024 04:16:45 -0700
Message-ID: <aJGN.1725967005989734232.XVYM@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jCbtu0NywVfoT7Pu851d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Sep 2024 11:16:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63811

--jCbtu0NywVfoT7Pu851d
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear community,

I'm trying to build=C2=A0 A+B+Data distro + update distros using RAUC and p=
opulate Data partition with default configuration files.

Thus, I want a particular recipe, if "full" image build, install particular=
 default configuration files, and if "update" image build,=C2=A0 not to do =
that, maintain only symlinks to /data partition.
I included if ${IMAGE_BASENAME} in application do_install:append(), but thi=
s doesn't work!

do_install:append () {
# If building full image, install default config to /data/ partition
if [ ${IMAGE_BASENAME} =3D "image-full" ]; then
install -Dm 0755 ${WORKDIR}/app.conf ${D}/data/etc/app/app.conf
fi
#in any case, replace default config from distribution to link to /data/etc=
/
rm ${D}/etc/app/app.conf
ln -s /data/etc/app/app.conf ${D}/etc/app/app.conf
}

I included
export IMAGE_BASENAME =3D "core-image-full-cmdline" in "image-full.bb", but=
 this still doesn't help.

By replacing "if [ ${IMAGE_BASENAME} " with predefined variable, I found th=
at "if " works well itself, so probably using IMAGE_BASENAME is not correct=
.

So, probably I should use other variable or initialize it somehow other way=
.
I think that is typical scenario, and I missing something obvious, but stil=
l cannot find it.
Any advice?

--jCbtu0NywVfoT7Pu851d
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Dear community,</div>
<div>&nbsp;</div>
<div>I'm trying to build&nbsp; A+B+Data distro + update distros using RAUC =
and populate Data partition with default configuration files.</div>
<div>&nbsp;</div>
<div>Thus, I want a particular recipe, if "full" image build, install parti=
cular default configuration files, and if "update" image build,&nbsp; not t=
o do that, maintain only symlinks to /data partition.</div>
<div>I included if ${IMAGE_BASENAME} in application do_install:append(), bu=
t this doesn't work!</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>
<div>do_install:append () {</div>
<div># If building full image, install default config to /data/ partition <=
br />&nbsp; &nbsp;if [ ${IMAGE_BASENAME} =3D "image-full" ]; then<br />&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;install -Dm 0755 ${WORKDIR}/app.conf ${D}/dat=
a/etc/app/app.conf<br />&nbsp;&nbsp; fi</div>
<div>#in any case, replace default config from distribution to link to /dat=
a/etc/<br />&nbsp; &nbsp;rm ${D}/etc/app/app.conf<br />&nbsp;&nbsp; ln -s /=
data/etc/app/app.conf ${D}/etc/app/app.conf<br />}</div>
<div>&nbsp;</div>
<div>I included</div>
<div>export IMAGE_BASENAME =3D "core-image-full-cmdline" in "image-full.bb"=
, but this still doesn't help.</div>
<div>&nbsp;</div>
<div>By replacing "if [ ${IMAGE_BASENAME} " with predefined variable, I fou=
nd that "if " works well itself, so probably using IMAGE_BASENAME is not co=
rrect.</div>
<div>&nbsp;</div>
<div>So, probably I should use other variable or initialize it somehow othe=
r way.</div>
<div>I think that is typical scenario, and I missing something obvious, but=
 still cannot find it.</div>
<div>Any advice?</div>
<div>&nbsp;</div>
</div>
<div>&nbsp;</div>

--jCbtu0NywVfoT7Pu851d--

