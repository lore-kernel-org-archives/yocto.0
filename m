Return-Path: <yishai1999@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CA31D5CCB5
	for <webhook@archiver.kernel.org>; Wed, 30 Oct 2024 14:54:29 +0000 (UTC)
Subject: Re: [yocto] Out-of-tree Kernel Modules
To: "Quentin Schulz" <quentin.schulz@cherry.de>, yocto@lists.yoctoproject.org
From: "Yishai Jaffe" <yishai1999@gmail.com>
X-Originating-Location: Caesarea, Haifa, IL (199.203.94.94)
X-Originating-Platform: Linux Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 30 Oct 2024 07:54:29 -0700
References: <7affdd4a-b9f2-4177-b336-100b0e475337@cherry.de>
In-Reply-To: <7affdd4a-b9f2-4177-b336-100b0e475337@cherry.de>
Message-ID: <21197.1730300069131332219@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="yCFYceqQTVjn3P75Nhv0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 14:54:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64183

--yCFYceqQTVjn3P75Nhv0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks Quentin,
Changing the include to uapi/linux/sched/types.h solved the issue.
But just so I'm clear on this - Can you explain when I should use uapi head=
ers vs when to use the regular linux/xxx headers?

--yCFYceqQTVjn3P75Nhv0
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Thanks Quentin,</div>
<div>Changing the include to <span style=3D"color: #333333; font-family: sy=
stem-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation San=
s', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Sym=
bol', 'Noto Color Emoji'; font-size: 16px; font-style: normal; font-variant=
-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spa=
cing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transfo=
rm: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; whi=
te-space: pre-wrap; background-color: #ffffff; text-decoration-thickness: i=
nitial; text-decoration-style: initial; text-decoration-color: initial; dis=
play: inline !important; float: none;">uapi/linux/sched/types.h solved the =
issue.</span></div>
<div><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Rob=
oto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, '=
Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'=
; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; back=
ground-color: #ffffff; text-decoration-thickness: initial; text-decoration-=
style: initial; text-decoration-color: initial; display: inline !important;=
 float: none;">But just so I'm clear on this - Can you explain when I shoul=
d use uapi headers vs when to use the regular linux/xxx headers?</span></di=
v>

--yCFYceqQTVjn3P75Nhv0--

