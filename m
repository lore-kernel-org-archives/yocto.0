Return-Path: <senturkmurat1999@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB43DC001DB
	for <webhook@archiver.kernel.org>; Thu, 10 Aug 2023 10:51:55 +0000 (UTC)
Subject: Re: How to migrate an older version of Yocto?
To: yocto@lists.yoctoproject.org
From: "msenturk" <senturkmurat1999@gmail.com>
X-Originating-Location: Ankara, TR (212.156.65.42)
X-Originating-Platform: Windows Chrome 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 10 Aug 2023 03:51:47 -0700
References: <62798ed9-66a8-0e70-0670-a48bf24d7e50@bootlin.com>
In-Reply-To: <62798ed9-66a8-0e70-0670-a48bf24d7e50@bootlin.com>
Message-ID: <19617.1691664707457266313@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="9m4yeNaANKgPTRvsBa1U"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Aug 2023 10:51:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60770

--9m4yeNaANKgPTRvsBa1U
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I looked for Kirkstone but there is only a kirkstone-next layer for meta-xi=
linx repository: https://github.com/Xilinx/meta-xilinx/tree/kirkstone-next.=
 I actually don't understand what the difference is between these normal an=
d -next branches. My guess is they create them for the uncompleted code. On=
ce they complete the coding, they publish with normal branch name such as "=
kirkstone". Therefore, I am planning to use Mickledore: https://github.com/=
Xilinx/meta-xilinx/tree/mickledore. Alexander Kanavin's explanation is also=
 something I'll care. Can I migrate from Gatesgarth to Mickledore directly =
or do I need to migrate those version one by one? I read some of these migr=
ation guides but kinda didn't understand to be honest. They seem more like =
giving information about what they changed with the new version instead of =
what you have to change to migrate this version. Besides of switching branc=
hes, do I need to download host packages: https://docs.yoctoproject.org/4.2=
.2/brief-yoctoprojectqs/index.html#build-host-packages. Thank you.

--9m4yeNaANKgPTRvsBa1U
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I looked for Kirkstone but there is only a kirkstone-next layer for meta-xi=
linx repository:&nbsp;<a href=3D"https://github.com/Xilinx/meta-xilinx/tree=
/kirkstone-next" target=3D"_blank" rel=3D"noopener">https://github.com/Xili=
nx/meta-xilinx/tree/kirkstone-next</a>. I actually don't understand what th=
e difference is between these normal and -next branches. My guess is they c=
reate them for the uncompleted code. Once they complete the coding, they pu=
blish with normal branch name such as "kirkstone". Therefore, I am planning=
 to use Mickledore:&nbsp;<a href=3D"https://github.com/Xilinx/meta-xilinx/t=
ree/mickledore" target=3D"_blank" rel=3D"noopener">https://github.com/Xilin=
x/meta-xilinx/tree/mickledore</a>. Alexander Kanavin's explanation is also =
something I'll care. Can I migrate from Gatesgarth to Mickledore directly o=
r do I need to migrate those version one by one? I read some of these migra=
tion guides but kinda didn't understand to be honest. They seem more like g=
iving information about what they changed with the new version instead of w=
hat you have to change to migrate this version. Besides of switching branch=
es, do I need to download host packages:&nbsp;<a href=3D"https://docs.yocto=
project.org/4.2.2/brief-yoctoprojectqs/index.html#build-host-packages" targ=
et=3D"_blank" rel=3D"noopener">https://docs.yoctoproject.org/4.2.2/brief-yo=
ctoprojectqs/index.html#build-host-packages</a>. Thank you.

--9m4yeNaANKgPTRvsBa1U--

