Return-Path: <ferlzc@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 782DCC4332F
	for <webhook@archiver.kernel.org>; Tue, 20 Dec 2022 20:28:38 +0000 (UTC)
Subject: Error creating recipe for Perl DBI for postgresql in Kirkstone
To: yocto@lists.yoctoproject.org
From: "Fernando Luiz Cola" <ferlzc@gmail.com>
X-Originating-Location: Itapolis, Sao Paulo, BR (177.52.30.113)
X-Originating-Platform: Linux Chrome 106
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 20 Dec 2022 12:28:29 -0800
Message-ID: <pPov.1671568109608511538.Jut5@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="37RZrBLpN1bTpUzKtSlK"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Dec 2022 20:28:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58844

--37RZrBLpN1bTpUzKtSlK
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello, I'm trying to write a recipe a Perl DBI for postgresql. I'm follwing=
 the same recipe found in:
https://layers.openembedded.org/layerindex/recipe/192563/ ( https://layers.=
openembedded.org/layerindex/recipe/192563/ ) and https://layers.openembedde=
d.org/layerindex/recipe/190989 /
Howover I'm having errors regarding *db_config* path, which cannot be found=
 during the do_configure
here is my following recipe: https://gist.github.com/ferlzc/9234ccd5c5a084f=
958ff52c7a08899a9 - I'm using Yocto Kirkstone

Any help is highly appreciated!

--37RZrBLpN1bTpUzKtSlK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello, I'm trying to write a recipe a Perl DBI for postgresql. I'm fol=
lwing the same recipe found in:&nbsp;<br /><a href=3D"https://layers.openem=
bedded.org/layerindex/recipe/192563/" target=3D"_blank" rel=3D"noopener"> h=
ttps://layers.openembedded.org/layerindex/recipe/192563/</a>&nbsp; and <a h=
ref=3D"https://layers.openembedded.org/layerindex/recipe/190989" target=3D"=
_blank" rel=3D"noopener">https://layers.openembedded.org/layerindex/recipe/=
190989</a>/&nbsp;</div>
<div>Howover I'm having errors regarding <strong>db_config</strong> path, w=
hich cannot be found during the do_configure</div>
<div>here is my following recipe:&nbsp;&nbsp;<a href=3D"https://gist.github=
.com/ferlzc/9234ccd5c5a084f958ff52c7a08899a9" target=3D"_blank" rel=3D"noop=
ener">https://gist.github.com/ferlzc/9234ccd5c5a084f958ff52c7a08899a9</a>&n=
bsp;- I'm using Yocto Kirkstone<br /><br />
<div>Any help is highly appreciated!</div>
</div>
<div>&nbsp;</div>

--37RZrBLpN1bTpUzKtSlK--

