Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C78AEC6FD18
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 07:36:26 +0000 (UTC)
Subject: Re: How to compile binary executable files
To: yocto@lists.yoctoproject.org
From: "MOHAMMED HASSAN" <hassanchattarki@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (183.82.123.98)
X-Originating-Platform: Linux Chrome 110
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 31 Mar 2023 00:36:24 -0700
References: <424f5aee-84b6-59a4-ea4c-10b2fa2d0cd9@bootlin.com>
In-Reply-To: <424f5aee-84b6-59a4-ea4c-10b2fa2d0cd9@bootlin.com>
Message-ID: <13330.1680248184001503498@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="a34BubkHktOPdC3gx2lb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 07:36:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59560

--a34BubkHktOPdC3gx2lb
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
>=20
>> Can you please guide me as to what I need to load this binary
>> executable file is my generated image file.
>=20
>=20
> Is this binary statically linked? Otherwise, you have no guarantee that
> it will run on your root filesystem.

It is statically linked file written using c language.

>=20
> If so, you could write a recipe to integrate the binary into your root
> filesystem, as it's possible to do with pre-compiled libraries :
> https://docs.yoctoproject.org/dev-manual/common-tasks.html#working-with-p=
re-built-libraries
> .
> Caution, in this document, the new override syntax (with ":" instead of
> "_") is shown, it doesn't apply to Dunfell.
>=20
> I hope this helps
> Cheers
> Michael.
>=20
> --
> Michael Opdenacker, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

Will it be okay for me to refer the above link for my specific case?

Thanks and regards,
Hassan

--a34BubkHktOPdC3gx2lb
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote>
<blockquote>Can you please guide me as to what I need to load this binary <=
br />executable file is my generated image file.</blockquote>
<br />Is this binary statically linked? Otherwise, you have no guarantee th=
at <br />it will run on your root filesystem.</blockquote>
It is statically linked file written using c language.<br />
<blockquote>If so, you could write a recipe to integrate the binary into yo=
ur root <br />filesystem, as it's possible to do with pre-compiled librarie=
s : <br /><a href=3D"https://docs.yoctoproject.org/dev-manual/common-tasks.=
html#working-with-pre-built-libraries" target=3D"_blank" rel=3D"noopener">h=
ttps://docs.yoctoproject.org/dev-manual/common-tasks.html#working-with-pre-=
built-libraries</a>. <br />Caution, in this document, the new override synt=
ax (with ":" instead of <br />"_") is shown, it doesn't apply to Dunfell.<b=
r /><br />I hope this helps<br />Cheers<br />Michael.<br /><br />-- <br />M=
ichael Opdenacker, Bootlin<br />Embedded Linux and Kernel engineering<br />=
<a href=3D"https://bootlin.com" target=3D"_blank" rel=3D"noopener">https://=
bootlin.com</a></blockquote>
<br />Will it be okay for me to refer the above link for my specific case?<=
br /><br />Thanks and regards,<br />Hassan

--a34BubkHktOPdC3gx2lb--

