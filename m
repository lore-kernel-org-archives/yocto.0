Return-Path: <oliver.westermann@cognex.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86A9ED3B7F3
	for <webhook@archiver.kernel.org>; Mon,  8 Dec 2025 14:55:32 +0000 (UTC)
Subject: do_create_runtime_spdx dependencies for SBOMs
To: yocto@lists.yoctoproject.org
From: "Oliver Westermann" <oliver.westermann@cognex.com>
X-Originating-Location: Aachen, North Rhine-Westphalia, DE (93.159.253.219)
X-Originating-Platform: Windows Chrome 143
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 08 Dec 2025 06:55:22 -0800
Message-ID: <a1FW.1765205722320039112.Gt3k@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rzpLjoIKXtZGnVJeFfs9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Dec 2025 14:55:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66099

--rzpLjoIKXtZGnVJeFfs9
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hey,

I'm looking into a SPDX / SBOM issue in scarthgap and I'm looking for some =
documentation/advise. I can only assume the issue is caused by the tegra BS=
P layer I'm using, but I'm more curious about understanding the issue / set=
up beneath while fixing it.

The problem is that the do_rootfs step fails with the error message below o=
n incremental build with every update of the kernel SHA.

Cannot find any SPDX file for document http://spdx.org/spdxdocs/kernel-modu=
le-ip-tables-<version><branch>+g<git sha>

<version>, <branch> and <git sha> replaced for readability there. The inter=
esting part in here is the <git sha>: It's the SHA of the kernel that was j=
ust updated, so the previous kernel version. Upon digging (grep), I did fin=
d the reference from the error message in the ip tables build output. I can=
 also "update" it with a simple clean/rebuild of the iptables package.

It can also be fixed by adding explicit dependencies for the SPDX do_create=
_runtime_spdx, but it feels off that this is needed. Further search did not=
 yield anything interesting in the BSP layer: No appends and nothing suspic=
ious. I do see some kernel module related RRECOMMENDS in the iptables recip=
e in the poky meta layer.

Is there any further reading material on the SBOM inner workings?
Is it expected that there would be a reference to the specific kernel SHA i=
n the iptables SBOM?

Best regards

Olli

--rzpLjoIKXtZGnVJeFfs9
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hey,</div>
<div>&nbsp;</div>
<div>I'm looking into a SPDX / SBOM issue in scarthgap and I'm looking for =
some documentation/advise. I can only assume the issue is caused by the teg=
ra BSP layer I'm using, but I'm more curious about understanding the issue =
/ setup beneath while fixing it.</div>
<div>&nbsp;</div>
<div>The problem is that the do_rootfs step fails with the error message be=
low on incremental build with every update of the kernel SHA.</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; Cannot find any SPDX file for document http://spdx.org/s=
pdxdocs/kernel-module-ip-tables-&lt;version&gt;&lt;branch&gt;+g&lt;git sha&=
gt;</div>
<div>&nbsp;</div>
<div>
<div>&lt;version&gt;, &lt;branch&gt; and &lt;git sha&gt; replaced for reada=
bility there. The interesting part in here is the &lt;git sha&gt;: It's the=
 SHA of the kernel that was just updated, so the previous kernel version. U=
pon digging (grep), I did find the reference from the error message in the =
ip tables build output. I can also "update" it with a simple clean/rebuild =
of the iptables package.</div>
<div>&nbsp;</div>
<div>It can also be fixed by adding explicit dependencies for the SPDX do_c=
reate_runtime_spdx, but it feels off that this is needed. Further search di=
d not yield anything interesting in the BSP layer: No appends and nothing s=
uspicious. I do see some kernel module related RRECOMMENDS in the iptables =
recipe in the poky meta layer.</div>
<div>&nbsp;</div>
<div>Is there any further reading material on the SBOM inner workings?</div=
>
<div>Is it expected that there would be a reference to the specific kernel =
SHA in the iptables SBOM?</div>
<div>&nbsp;</div>
<div>Best regards</div>
<div>&nbsp;</div>
<div>Olli</div>
<div>&nbsp;</div>
</div>

--rzpLjoIKXtZGnVJeFfs9--

