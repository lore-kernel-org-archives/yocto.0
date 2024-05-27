Return-Path: <jonas.fredriksson92@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24D54C25B74
	for <webhook@archiver.kernel.org>; Mon, 27 May 2024 09:27:02 +0000 (UTC)
Subject: Re: [yocto] How to include full Golang build support in SDK?
To: "Janne Kiiskila" <janne.kiiskila@izumanetworks.com>, yocto@lists.yoctoproject.org
From: "Jonas Fredriksson" <jonas.fredriksson92@gmail.com>
X-Originating-Location: =?UTF-8?B?TGFuZHZldHRlciwgVsOkc3RyYSBHw7Z0YWxhbmQgQ291bnR5LCBTRQ==?= (136.163.208.2)
X-Originating-Platform: Linux Chrome 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 May 2024 02:26:57 -0700
References: <IA0PR14MB61881CC2ED0A1A0758FDD9BC85F02@IA0PR14MB6188.namprd14.prod.outlook.com>
In-Reply-To: <IA0PR14MB61881CC2ED0A1A0758FDD9BC85F02@IA0PR14MB6188.namprd14.prod.outlook.com>
Message-ID: <22769.1716802017058180818@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="fvQ8ceSU4e7x9m3ELLCD"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 May 2024 09:27:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63206

--fvQ8ceSU4e7x9m3ELLCD
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks Janne,

I will try to just make a recipe then. But it feels like a tedious way to w=
ork, since the application will need to be continuously built and deployed =
on the target platform as part of the development, ideally without having t=
o rebuild the entire image. Perhaps I can just run bitbake (of kas in my ca=
se) to build the specific package and scp over the binary anyways.

--fvQ8ceSU4e7x9m3ELLCD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Thanks Janne,&nbsp;<br /><br />I will try to just make a recipe then. Bu=
t it feels like a tedious way to work, since the application will need to b=
e continuously built and deployed on the target platform as part of the dev=
elopment, ideally without having to rebuild the entire image. Perhaps I can=
 just run bitbake (of kas in my case) to build the specific package and scp=
 over the binary anyways.&nbsp;</p>

--fvQ8ceSU4e7x9m3ELLCD--

