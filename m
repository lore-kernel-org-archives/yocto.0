Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BCD5C433F5
	for <webhook@archiver.kernel.org>; Tue, 26 Apr 2022 15:49:40 +0000 (UTC)
Subject: Re: [PATCH yocto-autobuilder-helper v10] Add a banner on the old
 documentation docs.
To: yocto@lists.yoctoproject.org
From: "Abongwa Amahnui Bonalais" <abongwabonalais@gmail.com>
X-Originating-Location: CM (154.72.153.148)
X-Originating-Platform: Linux Chrome 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 26 Apr 2022 08:49:38 -0700
References: <aded5e37-24e4-ddc7-6242-d4b38a6187df@theobroma-systems.com>
In-Reply-To: <aded5e37-24e4-ddc7-6242-d4b38a6187df@theobroma-systems.com>
Message-ID: <21572.1650988178931047188@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="EoKxjrnF6uQQ9sRvyzJD"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Apr 2022 15:49:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56899

--EoKxjrnF6uQQ9sRvyzJD
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin,
Thanks for the review.

I tried using regex to look for all the folders prefixed by 3.1. but it is =
currently not working, But I am still working on a fix for it.
I noticed that the banner was already on the dunfell excluding 3.1.15, so s=
hould I hardcode from 3.1 to 3.1.14 while looking for way to make the regex=
 method work?

--EoKxjrnF6uQQ9sRvyzJD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin,&nbsp;<br />Thanks for the review.<br /><br />I tried using rege=
x to look for all the folders prefixed by 3.1. but it is currently not work=
ing, But I am still working on a fix for it.<br />I noticed that the banner=
 was already on the dunfell excluding 3.1.15, so should I hardcode from 3.1=
 to 3.1.14 while looking for way to make the regex method work?

--EoKxjrnF6uQQ9sRvyzJD--

