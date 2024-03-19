Return-Path: <patrick.huesmann@desy.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 424A1C54E71
	for <webhook@archiver.kernel.org>; Tue, 19 Mar 2024 17:51:31 +0000 (UTC)
Subject: Symbol dependencies between out-of-tree kernel modules
To: yocto@lists.yoctoproject.org
From: "Patrick Huesmann" <patrick.huesmann@desy.de>
X-Originating-Location: Hamburg, Free and Hanseatic City of Hamburg, DE (84.162.109.92)
X-Originating-Platform: Linux Firefox 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 19 Mar 2024 10:51:30 -0700
Message-ID: <dQfn.1710870690202484065.WZWl@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="5Aa7XpAafvQz94uBbCdb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Mar 2024 17:51:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62799

--5Aa7XpAafvQz94uBbCdb
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to write recipes for two out-of-tree kernel modules, one ("u-dma=
-buf-mgr") requires the Module.symvers of the other ("u-dma-buf").

module.bbclass already has some kind of inter-module dependency detection [=
0], but I can't use it b/c it assumes that the Module.symvers is installed =
in the sysroot under "${STAGING_INCDIR}/kernel-module-u-dma-buf/Module.symv=
ers", while it is installed under "${includedir}/${BPN}/Module.symvers" [1]=
 where BPN is "u-dma-buf" in my case, not "kernel-module-u-dma-buf".

I worked around this by overriding KBUILD_EXTRA_SYMBOLS in the depending mo=
dule recipe:
d.setVar('KBUILD_EXTRA_SYMBOLS', os.path.join(d.getVar('RECIPE_SYSROOT'), '=
usr', 'include', 'udmabuf', 'Module.symvers'))

feels hackish, is there a better way?

[0] https://github.com/yoctoproject/poky/blob/3e95f268ce04b49ba6731fd4bbc53=
b1693c21963/meta/classes-recipe/module.bbclass#L14-L21
[1] https://github.com/yoctoproject/poky/blob/3e95f268ce04b49ba6731fd4bbc53=
b1693c21963/meta/classes-recipe/module.bbclass#L67

--5Aa7XpAafvQz94uBbCdb
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi,<br /><br />I'm trying to write recipes for two out-of-tree kernel mo=
dules, one ("u-dma-buf-mgr") requires the Module.symvers of the other ("u-d=
ma-buf").<br /><br />module.bbclass already has some kind of inter-module d=
ependency detection [0], but I can't use it b/c it assumes that the Module.=
symvers is installed in the sysroot under "${STAGING_INCDIR}/kernel-module-=
u-dma-buf/Module.symvers", while it is installed under "${includedir}/${BPN=
}/Module.symvers" [1] where BPN is "u-dma-buf" in my case, not "kernel-modu=
le-u-dma-buf".<br /><br />I worked around this by overriding KBUILD_EXTRA_S=
YMBOLS in the depending module recipe:<br />d.setVar('KBUILD_EXTRA_SYMBOLS'=
, os.path.join(d.getVar('RECIPE_SYSROOT'), 'usr', 'include', 'udmabuf', 'Mo=
dule.symvers'))<br /><br />feels hackish, is there a better way?<br /><br /=
>[0] <a href=3D"https://github.com/yoctoproject/poky/blob/3e95f268ce04b49ba=
6731fd4bbc53b1693c21963/meta/classes-recipe/module.bbclass#L14-L21" target=
=3D"_blank" rel=3D"noopener">https://github.com/yoctoproject/poky/blob/3e95=
f268ce04b49ba6731fd4bbc53b1693c21963/meta/classes-recipe/module.bbclass#L14=
-L21</a><br />[1] <a href=3D"https://github.com/yoctoproject/poky/blob/3e95=
f268ce04b49ba6731fd4bbc53b1693c21963/meta/classes-recipe/module.bbclass#L67=
" target=3D"_blank" rel=3D"noopener">https://github.com/yoctoproject/poky/b=
lob/3e95f268ce04b49ba6731fd4bbc53b1693c21963/meta/classes-recipe/module.bbc=
lass#L67</a></p>

--5Aa7XpAafvQz94uBbCdb--

