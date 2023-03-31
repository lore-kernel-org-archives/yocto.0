Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 353EFC76196
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 09:42:17 +0000 (UTC)
Subject: Re: How to compile binary executable files
To: yocto@lists.yoctoproject.org
From: "MOHAMMED HASSAN" <hassanchattarki@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (183.82.123.98)
X-Originating-Platform: Linux Chrome 110
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 31 Mar 2023 02:42:10 -0700
References: <61a0925a-8514-bb93-e110-73299944b054@bootlin.com>
In-Reply-To: <61a0925a-8514-bb93-e110-73299944b054@bootlin.com>
Message-ID: <13330.1680255730648731834@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="L5LbDWKQErfRlsUKyvyM"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 09:42:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59562

--L5LbDWKQErfRlsUKyvyM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

If so, you could write a recipe to integrate the binary into your
root
filesystem, as it's possible to do with pre-compiled libraries :
https://docs.yoctoproject.org/dev-manual/common-tasks.html#working-with-pre=
-built-libraries.

Caution, in this document, the new override syntax (with ":"
instead of
"_") is shown, it doesn't apply to Dunfell.

>=20
> Will it be okay for me to refer the above link for my specific case?I'd
> say yes, write a similar recipe for your binary.

Its a .exe binary file. Will it work?

--L5LbDWKQErfRlsUKyvyM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

If so, you could write a recipe to integrate the binary into your<br />root=
<br />filesystem, as it's possible to do with pre-compiled libraries :<br /=
><a href=3D"https://docs.yoctoproject.org/dev-manual/common-tasks.html#work=
ing-with-pre-built-libraries" target=3D"_blank" rel=3D"noopener">https://do=
cs.yoctoproject.org/dev-manual/common-tasks.html#working-with-pre-built-lib=
raries</a>.<br /><br />Caution, in this document, the new override syntax (=
with ":"<br />instead of<br />"_") is shown, it doesn't apply to Dunfell.<b=
r />
<blockquote>Will it be okay for me to refer the above link for my specific =
case?I'd say yes, write a similar recipe for your binary.</blockquote>
Its a .exe binary file. Will it work?

--L5LbDWKQErfRlsUKyvyM--

