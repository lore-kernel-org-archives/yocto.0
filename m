Return-Path: <frederic.martinsons@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 687BAC4332F
	for <webhook@archiver.kernel.org>; Wed, 13 Dec 2023 12:50:52 +0000 (UTC)
Subject: Re: [yocto] Empty source package when using devtool
To: Frederic Martinsons <frederic.martinsons@gmail.com>,yocto@lists.yoctoproject.org
From: "Frederic Martinsons" <frederic.martinsons@gmail.com>
X-Originating-Location: Toulouse, Occitanie, FR (88.163.87.27)
X-Originating-Platform: Linux Chrome 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 13 Dec 2023 04:50:43 -0800
References: <24077.1624351948476562957@lists.yoctoproject.org>
In-Reply-To: <24077.1624351948476562957@lists.yoctoproject.org>
Message-ID: <16371.1702471843624525944@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WSK6cpgTNsPV0ryBP3Lq"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Dec 2023 12:50:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61876

--WSK6cpgTNsPV0ryBP3Lq
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

Hello,

I dig up this thread to mention that the problem is still in kirkstone but =
was fixed in langdale and greater.

I have done some dissection and found that the 3 following commits have fix=
ed it:
 - https://git.openembedded.org/openembedded-core/commit/?h=3Dlangdale&id=
=3Dcbd6144a9769d21371ae0fe04db2adc05f6eed02
 - https://git.openembedded.org/openembedded-core/commit/?h=3Dlangdale&id=
=3Dc39b5020b8705d17e3745c41e38d0f99a1ac94cf
 - https://git.openembedded.org/openembedded-core/commit/?h=3Dlangdale&id=
=3D591cbe7140f01470b5799bc51e5b23f58bf95ffa

WIth these 3 commits backported in kirkstone, I managed to having the sourc=
e packages correctly populated with or without devtool activated on the com=
ponents.


--WSK6cpgTNsPV0ryBP3Lq
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p>

<p>I dig up this thread to mention that the problem is still in kirkstone b=
ut was fixed in langdale and greater.</p>

<p>I have done some dissection and found that the 3 following commits have =
fixed it:
 - <a href=3D"https://git.openembedded.org/openembedded-core/commit/?h=3Dla=
ngdale&amp;id=3Dcbd6144a9769d21371ae0fe04db2adc05f6eed02" target=3D"_blank"=
>https://git.openembedded.org/openembedded-core/commit/?h=3Dlangdale&amp;id=
=3Dcbd6144a9769d21371ae0fe04db2adc05f6eed02</a>
 - <a href=3D"https://git.openembedded.org/openembedded-core/commit/?h=3Dla=
ngdale&amp;id=3Dc39b5020b8705d17e3745c41e38d0f99a1ac94cf" target=3D"_blank"=
>https://git.openembedded.org/openembedded-core/commit/?h=3Dlangdale&amp;id=
=3Dc39b5020b8705d17e3745c41e38d0f99a1ac94cf</a>
 - <a href=3D"https://git.openembedded.org/openembedded-core/commit/?h=3Dla=
ngdale&amp;id=3D591cbe7140f01470b5799bc51e5b23f58bf95ffa" target=3D"_blank"=
>https://git.openembedded.org/openembedded-core/commit/?h=3Dlangdale&amp;id=
=3D591cbe7140f01470b5799bc51e5b23f58bf95ffa</a></p>

<p>WIth these 3 commits backported in kirkstone, I managed to having the so=
urce packages correctly populated with or without devtool activated on the =
components.</p>

--WSK6cpgTNsPV0ryBP3Lq--

