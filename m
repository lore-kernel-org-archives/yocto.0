Return-Path: <philip.dawson@datapath.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 709EBC369A8
	for <webhook@archiver.kernel.org>; Fri, 11 Apr 2025 10:48:50 +0000 (UTC)
Subject: Re: [yocto] nativesdk-mesa do_configure fails with PACKAGECONFIG:append=" gallium gallium-llvm"
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: philip.dawson@datapath.co.uk
X-Originating-Location: Paddington, England, GB (212.69.51.233)
X-Originating-Platform: Windows Firefox 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 11 Apr 2025 03:48:42 -0700
References: <e94223d8-84c3-450a-87c2-80719c252744@gmail.com>
In-Reply-To: <e94223d8-84c3-450a-87c2-80719c252744@gmail.com>
Message-ID: <2395.1744368522156524259@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1rUDcF0zVZu8Glp3YBrc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Apr 2025 10:48:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65138

--1rUDcF0zVZu8Glp3YBrc
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

As an update to this in case anyone comes looking here later,

I tested across branches kirkstone, langdale, mickledore, nanbield, scarthg=
ap and only got the failing build in langdale.
I couldn't get it to build by copying the do_install:class-native ( https:/=
/web.git.yoctoproject.org/poky/tree/meta/recipes-devtools/llvm/llvm_git.bb?=
id=3D8f41af0ee94e87b673aa75ee2ecb7cf5a43b0d3d&h=3Dlangdale#n124 ) as class-=
nativesdk but this pointed me to a patch in mickledore: https://web.git.yoc=
toproject.org/poky/commit/meta/recipes-devtools/llvm/llvm_git.bb?h=3Dmickle=
dore&id=3D8cf1c4cd42cd632b68ab4195471d23d9188f2bcd this changes the do_inst=
all:class-native to a do install:append:class-native so the library install=
ation in do_install is also done for the native build so the libraries end =
up in recipe-sysroot-native for llvm-config to find.

I'm still not confident enough to say this is 100% the right answer but it =
seems to work so will do for me for now!

Thank you once again for your help.

Best Regards,
Phil

--1rUDcF0zVZu8Glp3YBrc
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>As an update to this in case anyone comes looking here later,</div>
<div><br />I tested across branches kirkstone, langdale, mickledore, nanbie=
ld, scarthgap and only got the failing build in langdale.</div>
<div>I couldn't get it to build by copying the do_install:class-native (<a =
href=3D"https://web.git.yoctoproject.org/poky/tree/meta/recipes-devtools/ll=
vm/llvm_git.bb?id=3D8f41af0ee94e87b673aa75ee2ecb7cf5a43b0d3d&amp;h=3Dlangda=
le#n124" target=3D"_blank" rel=3D"noopener">https://web.git.yoctoproject.or=
g/poky/tree/meta/recipes-devtools/llvm/llvm_git.bb?id=3D8f41af0ee94e87b673a=
a75ee2ecb7cf5a43b0d3d&amp;h=3Dlangdale#n124</a>) as class-nativesdk but thi=
s pointed me to a patch in mickledore: <a href=3D"https://web.git.yoctoproj=
ect.org/poky/commit/meta/recipes-devtools/llvm/llvm_git.bb?h=3Dmickledore&a=
mp;id=3D8cf1c4cd42cd632b68ab4195471d23d9188f2bcd" target=3D"_blank" rel=3D"=
noopener">https://web.git.yoctoproject.org/poky/commit/meta/recipes-devtool=
s/llvm/llvm_git.bb?h=3Dmickledore&amp;id=3D8cf1c4cd42cd632b68ab4195471d23d9=
188f2bcd</a> this changes the do_install:class-native to a do install:appen=
d:class-native so the library installation in do_install is also done for t=
he native build so the libraries end up in recipe-sysroot-native for llvm-c=
onfig to find.</div>
<div>&nbsp;</div>
<div>I'm still not confident enough to say this is 100% the right answer bu=
t it seems to work so will do for me for now!</div>
<div>&nbsp;</div>
<div>Thank you once again for your help.</div>
<div>&nbsp;</div>
<div>Best Regards,</div>
<div>Phil</div>

--1rUDcF0zVZu8Glp3YBrc--

