Return-Path: <electronicconsult1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0A83C77B61
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 18:57:00 +0000 (UTC)
Subject: Re: Autotools build failure #kirkstone #autotools
To: yocto@lists.yoctoproject.org
From: "Electronic Consult" <electronicconsult1@gmail.com>
X-Originating-Location: Dublin, Leinster, IE (188.141.96.236)
X-Originating-Platform: Linux Firefox 112
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 28 Apr 2023 11:56:54 -0700
References: <21049.1682696118724652097@lists.yoctoproject.org>
In-Reply-To: <21049.1682696118724652097@lists.yoctoproject.org>
Message-ID: <21049.1682708214064370973@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ksEuncrYKT3hRtksjNbe"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 18:57:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59821

--ksEuncrYKT3hRtksjNbe
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Martin,

Thanks for the pointer, I manged to get the recipe working with your help.

For anyone else looking at this the issue was resolved with this ( https://=
github.com/linux4sam/meta-atmel/pull/247/commits/353dcfe62bbc4b6a10eb5926b7=
c87cc2f4774a1b ).

Hope it helps someone else!

Owen

--ksEuncrYKT3hRtksjNbe
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Martin,<br /><br />Thanks for the pointer, I manged to get the recipe worki=
ng with your help. <br /><br />For anyone else looking at this the issue wa=
s resolved with <a href=3D"https://github.com/linux4sam/meta-atmel/pull/247=
/commits/353dcfe62bbc4b6a10eb5926b7c87cc2f4774a1b" target=3D"_blank" rel=3D=
"noopener">this</a>.<br /><br />Hope it helps someone else!<br /><br />Owen

--ksEuncrYKT3hRtksjNbe--

