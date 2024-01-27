Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B5F2C46CD2
	for <webhook@archiver.kernel.org>; Sat, 27 Jan 2024 07:27:31 +0000 (UTC)
Subject: How to build two images with different settings of a recipe in Yocto
To: yocto@lists.yoctoproject.org
From: =?UTF-8?B?SsO2cmcgU29tbWVy?= <joerg.sommer@navimatix.de>
X-Originating-Location: Jena, Thuringia, DE (91.65.35.62)
X-Originating-Platform: Linux Firefox 122
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 26 Jan 2024 23:27:30 -0800
Message-ID: <M25h.1706340450208219324.DA7b@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="G8BEnhxkzwTr9zIsfuTw"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 27 Jan 2024 07:27:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62308

--G8BEnhxkzwTr9zIsfuTw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

[I posted this question on Stackoverflow: https://stackoverflow.com/q/77871=
008/8452187]

I have two images with the same distro and the same machine and each image =
should contain the same package, but build with different settings.

For example, the config file sshd_config is part of the opensshd package, b=
ut I need a different set of HostKeyAlgorithms depending on the image. (Yes=
, I could use Include, but that's not the point of this question.)

How can I build two different flavours of the same package? One way would b=
e to have a different distro for each image, but this wouldn't scale. My ot=
her idea is to use local.conf to change the build behaviour of the recipe a=
nd control the image content (and the difference between both) with differe=
nt local.conf. (BTW: I'm using KAS ( https://ghcr.io/siemens/kas ) which ma=
kes local.conf generation easy.) But what's best practice?

--G8BEnhxkzwTr9zIsfuTw
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

[I posted this question on Stackoverflow: <a href=3D"https://stackoverflow.=
com/q/77871008/8452187]" target=3D"_blank" rel=3D"noopener">https://stackov=
erflow.com/q/77871008/8452187]</a><br /><br />I have two images with the sa=
me distro and the same machine and each image should contain the same packa=
ge, but build with different settings.<br /><br />
<div class=3D"s-prose js-post-body">
<p>For example, the config file <em>sshd_config</em> is part of the <em>ope=
nsshd</em> package, but I need a different set of <em>HostKeyAlgorithms</em=
> depending on the image. (Yes, I could use <em>Include,</em> but that's no=
t the point of this question.)<br /><br />How can I build two different fla=
vours of the same package? One way would be to have a different distro for =
each image, but this wouldn't scale. My other idea is to use <em>local.conf=
</em> to change the build behaviour of the recipe and control the image con=
tent (and the difference between both) with different <em>local.conf.</em> =
(BTW: I'm using <a href=3D"https://ghcr.io/siemens/kas" target=3D"_blank" r=
el=3D"noopener">KAS</a> which makes <em>local.conf</em> generation easy.) B=
ut what's best practice?</p>
</div>

--G8BEnhxkzwTr9zIsfuTw--

