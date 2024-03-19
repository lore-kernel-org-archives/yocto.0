Return-Path: <nicolas.wirth@speedgoat.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6279FC54E69
	for <webhook@archiver.kernel.org>; Tue, 19 Mar 2024 14:33:00 +0000 (UTC)
Subject: Maintaining Package Versions and Patches in Yocto Image
To: yocto@lists.yoctoproject.org
From: "Nicolas Wirth" <nicolas.wirth@speedgoat.ch>
X-Originating-Location: Baechli, Nidwalden, CH (146.4.107.86)
X-Originating-Platform: Windows Chrome 122
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 19 Mar 2024 07:32:55 -0700
Message-ID: <9xIj.1710858775834917733.NC1Z@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="JXBqRzVvA7F0be84Q8ii"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Mar 2024 14:33:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62797

--JXBqRzVvA7F0be84Q8ii
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Yocto Community,

I'm seeking advice on the best practices for maintaining package versions a=
nd patches within a Yocto image. Specifically, I have an image that utilize=
s recipes from OpenEmbedded, as well as some personal recipes. I'm looking =
for guidance on how to effectively manage the versions of these packages an=
d apply patches in a systematic manner.

Any tips or suggestions on tools, workflows, or best practices would be gre=
atly appreciated.

Thank you in advance for your assistance.

Best regards,
Nicolas

--JXBqRzVvA7F0be84Q8ii
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<p style=3D"border: 0px solid #e3e3e3; --tw-border-spacing-x: 0; --tw-borde=
r-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; -=
-tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scrol=
l-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset=
-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow:=
 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 trans=
parent; --tw-shadow-colored: 0 0 transparent; margin-top: 1.25em; margin-bo=
ttom: 1.25em; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, syste=
m-ui, -apple-system, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', sa=
ns-serif, 'Helvetica Neue', Arial, 'Apple Color Emoji', 'Segoe UI Emoji', '=
Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; white-space-collapse=
: preserve;">Hello Yocto Community,</p>
<p style=3D"border: 0px solid #e3e3e3; --tw-border-spacing-x: 0; --tw-borde=
r-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; -=
-tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scrol=
l-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset=
-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow:=
 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 trans=
parent; --tw-shadow-colored: 0 0 transparent; margin-top: 1.25em; margin-bo=
ttom: 1.25em; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, syste=
m-ui, -apple-system, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', sa=
ns-serif, 'Helvetica Neue', Arial, 'Apple Color Emoji', 'Segoe UI Emoji', '=
Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; white-space-collapse=
: preserve;">I'm seeking advice on the best practices for maintaining packa=
ge versions and patches within a Yocto image. Specifically, I have an image=
 that utilizes recipes from OpenEmbedded, as well as some personal recipes.=
 I'm looking for guidance on how to effectively manage the versions of thes=
e packages and apply patches in a systematic manner.</p>
<p style=3D"border: 0px solid #e3e3e3; --tw-border-spacing-x: 0; --tw-borde=
r-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; -=
-tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scrol=
l-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset=
-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow:=
 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 trans=
parent; --tw-shadow-colored: 0 0 transparent; margin-top: 1.25em; margin-bo=
ttom: 1.25em; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, syste=
m-ui, -apple-system, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', sa=
ns-serif, 'Helvetica Neue', Arial, 'Apple Color Emoji', 'Segoe UI Emoji', '=
Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; white-space-collapse=
: preserve;">Any tips or suggestions on tools, workflows, or best practices=
 would be greatly appreciated.</p>
<p style=3D"border: 0px solid #e3e3e3; --tw-border-spacing-x: 0; --tw-borde=
r-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; -=
-tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scrol=
l-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset=
-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow:=
 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 trans=
parent; --tw-shadow-colored: 0 0 transparent; margin-top: 1.25em; margin-bo=
ttom: 1.25em; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, syste=
m-ui, -apple-system, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', sa=
ns-serif, 'Helvetica Neue', Arial, 'Apple Color Emoji', 'Segoe UI Emoji', '=
Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; white-space-collapse=
: preserve;">Thank you in advance for your assistance.</p>
<p style=3D"border: 0px solid #e3e3e3; --tw-border-spacing-x: 0; --tw-borde=
r-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; -=
-tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scrol=
l-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset=
-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow:=
 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 trans=
parent; --tw-shadow-colored: 0 0 transparent; margin-top: 1.25em; margin-bo=
ttom: 0px; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, system-u=
i, -apple-system, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', sans-=
serif, 'Helvetica Neue', Arial, 'Apple Color Emoji', 'Segoe UI Emoji', 'Seg=
oe UI Symbol', 'Noto Color Emoji'; font-size: 16px; white-space-collapse: p=
reserve;">Best regards,<br />Nicolas</p>
</div>

--JXBqRzVvA7F0be84Q8ii--

