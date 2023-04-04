Return-Path: <kamal.kishor@vestel.com.hk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2F4CC761A6
	for <webhook@archiver.kernel.org>; Tue,  4 Apr 2023 09:38:30 +0000 (UTC)
Subject: relabel selinux system at build time: meta-selinux (thud)
To: yocto@lists.yoctoproject.org
From: "Kamal Kishor" <kamal.kishor@vestel.com.hk>
X-Originating-Location: Delhi, National Capital Territory of Delhi, IN (219.65.122.204)
X-Originating-Platform: Linux Chrome 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 04 Apr 2023 02:38:26 -0700
Message-ID: <P1NC.1680601106284634963.6O9x@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="dm6T4hyPwOIVKocnFgOa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Apr 2023 09:38:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59610

--dm6T4hyPwOIVKocnFgOa
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I need to relabel the rootfs at build time instead of first boot. Currently=
, I am using thud branch of meta-selinux. I came across the series of patch=
es mentioned below to enable relabelling at build time. Out of these patche=
s some are already pushed to thud branch and some are not present. So, can =
someone in the community help me to figure out what all patches are require=
d.
Also, I was thinking of using ROOTFS_POSTPROCESS_COMMAND or IMAGE _POSTPROC=
ESS_COMMAND to relabel the filesystem. If this is possible what would be th=
e steps in the postprocess funtion. Do I have to use restorecon command or =
setfiles command to relabel the filesystem.
The link to the series of patches is shown below:
filesystem relabel at build time ( https://www.yoctoproject.org/pipermail/y=
octo/2015-June/025141.html )

Please provide you valuable inputs on this. If you need any more informatio=
n feel free to contact

Thanks
Kamal Pandey

--dm6T4hyPwOIVKocnFgOa
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />I need to relabel the rootfs at build time instead of first boot. =
Currently, I am using <span style=3D"background-color: #ff99cc;">thud</span=
> branch of meta-selinux. I came across the series of patches mentioned bel=
ow to enable relabelling at build time. Out of these patches some are alrea=
dy pushed to <span style=3D"background-color: #ff99cc;">thud</span> branch =
and some are not present. So, can someone in the community help me to figur=
e out what all patches are required.&nbsp;<br />Also, I was thinking of usi=
ng&nbsp;<span style=3D"color: #232629; font-family: ui-monospace, 'Cascadia=
 Mono', 'Segoe UI Mono', 'Liberation Mono', Menlo, Monaco, Consolas, monosp=
ace; font-size: 13px; white-space: pre-wrap; background-color: #ff99cc;">RO=
OTFS_POSTPROCESS_COMMAND</span><span style=3D"color: #232629; font-family: =
ui-monospace, 'Cascadia Mono', 'Segoe UI Mono', 'Liberation Mono', Menlo, M=
onaco, Consolas, monospace; font-size: 13px; white-space: pre-wrap;"> or <s=
pan style=3D"background-color: #ff99cc;">IMAGE</span></span><span style=3D"=
color: #232629; font-family: ui-monospace, Cascadia Mono, Segoe UI Mono, Li=
beration Mono, Menlo, Monaco, Consolas, monospace;"><span style=3D"font-siz=
e: 13px; white-space: pre-wrap;"><span style=3D"background-color: #ff99cc;"=
>_POSTPROCESS_COMMAND</span> to relabel the filesystem. If this is possible=
 what would be the steps in the postprocess funtion. Do I have to use <span=
 style=3D"background-color: #ff99cc;">restorecon</span> command or <span st=
yle=3D"background-color: #ff99cc;">setfiles</span> command to relabel the f=
ilesystem.</span></span><br /><span style=3D"color: #232629; font-family: u=
i-monospace, Cascadia Mono, Segoe UI Mono, Liberation Mono, Menlo, Monaco, =
Consolas, monospace;"><span style=3D"font-size: 13px; white-space: pre-wrap=
;">The link to the series of patches is shown below:</span></span><br /><sp=
an style=3D"background-color: #e3e6e8;"><a href=3D"https://www.yoctoproject=
.org/pipermail/yocto/2015-June/025141.html" target=3D"_blank" rel=3D"noopen=
er">filesystem relabel at build time</a><br /><br /><span style=3D"backgrou=
nd-color: #ffffff;">Please provide you valuable inputs on this. If you need=
 any more information feel free to contact<br /><br /></span>Thanks&nbsp;<b=
r />Kamal Pandey</span>

--dm6T4hyPwOIVKocnFgOa--

