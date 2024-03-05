Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0919CC54E41
	for <webhook@archiver.kernel.org>; Tue,  5 Mar 2024 10:54:54 +0000 (UTC)
Subject: Inter-Task Dependencies
To: yocto@lists.yoctoproject.org
From: "Bratiranjan Acharya" <bratiranjan12@gmail.com>
X-Originating-Location: Mumbai, Maharashtra, IN (52.95.75.14)
X-Originating-Platform: Windows Chrome 122
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 05 Mar 2024 02:51:41 -0800
Message-ID: <a2aO.1709635901197785774.D4bK@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bs6SeYn1vsUsI2GwZubO"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Mar 2024 10:54:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62684

--bs6SeYn1vsUsI2GwZubO
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I hope this email finds you well. I have a question regarding a specific is=
sue that I'd like to discuss. Allow me to provide some context:

In the final image bb files, there's a custom task designed to generate a s=
oftlink for the rootfs.ext4. Unfortunately, I've had to resort to using the=
 "ln -snf" command, as I'm unsure after which recipe's task the rootfs is g=
enerated and deployed to the deploy directory. Therefore, I'm forcefully cr=
eating the softlink. Despite attempting various debugging methods, I haven'=
t been able to find a solution yet.As the source is vast and complex.

For example, if the rootfs is generated and deployed by a task from another=
 recipe where my custom task isn't present, even using inter-task dependenc=
ies flags hasn't yielded results. Could you please provide assistance with =
this matter? If i can know which recipes task is creating and deploying OR =
which recipe is deploying the rootfs to ${DEPLOY_DIR} i can solve that.

Thank you for your help.

Best regards, Brati
Yocto Developer

--bs6SeYn1vsUsI2GwZubO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"border: 0px solid #e3e3e3; margin-bottom: 1.25em; color: #0d0d0=
d; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, 'Segoe=
 UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', sans-serif, 'Helvetica Neue',=
 Arial, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Col=
or Emoji'; font-size: 16px;">Hi,</p>
<p style=3D"border: 0px solid #e3e3e3; margin-top: 1.25em; margin-bottom: 1=
.25em; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, system-ui, -=
apple-system, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', sans-seri=
f, 'Helvetica Neue', Arial, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe U=
I Symbol', 'Noto Color Emoji'; font-size: 16px;">I hope this email finds yo=
u well. I have a question regarding a specific issue that I'd like to discu=
ss. Allow me to provide some context:</p>
<p style=3D"border: 0px solid #e3e3e3; margin-top: 1.25em; margin-bottom: 1=
.25em; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, system-ui, -=
apple-system, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', sans-seri=
f, 'Helvetica Neue', Arial, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe U=
I Symbol', 'Noto Color Emoji'; font-size: 16px;">In the final image bb file=
s, there's a custom task designed to generate a softlink for the rootfs.ext=
4. Unfortunately, I've had to resort to using the "ln -snf" command, as I'm=
 unsure after which recipe's task the rootfs is generated and deployed to t=
he deploy directory. Therefore, I'm forcefully creating the softlink. Despi=
te attempting various debugging methods, I haven't been able to find a solu=
tion yet.As the source is vast and complex.</p>
<p style=3D"border: 0px solid #e3e3e3; margin-top: 1.25em; margin-bottom: 1=
.25em; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, system-ui, -=
apple-system, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', sans-seri=
f, 'Helvetica Neue', Arial, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe U=
I Symbol', 'Noto Color Emoji'; font-size: 16px;">For example, if the rootfs=
 is generated and deployed by a task from another recipe where my custom ta=
sk isn't present, even using inter-task dependencies flags hasn't yielded r=
esults. Could you please provide assistance with this matter? If i can know=
 which recipes task is creating and deploying OR which recipe is deploying =
the rootfs to ${DEPLOY_DIR} i can solve that.</p>
<p style=3D"border: 0px solid #e3e3e3; margin-top: 1.25em; margin-bottom: 1=
.25em; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, system-ui, -=
apple-system, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', sans-seri=
f, 'Helvetica Neue', Arial, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe U=
I Symbol', 'Noto Color Emoji'; font-size: 16px;">Thank you for your help.</=
p>
<p style=3D"border: 0px solid #e3e3e3; margin-top: 1.25em; margin-bottom: 0=
px; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, system-ui, -app=
le-system, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', sans-serif, =
'Helvetica Neue', Arial, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI S=
ymbol', 'Noto Color Emoji'; font-size: 16px;">Best regards, Brati<br />Yoct=
o Developer</p>

--bs6SeYn1vsUsI2GwZubO--

