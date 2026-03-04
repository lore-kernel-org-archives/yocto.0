Return-Path: <H.Wulff@kruss.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B62EC1439
	for <webhook@archiver.kernel.org>; Wed,  4 Mar 2026 08:07:42 +0000 (UTC)
Subject: Recipes to modify variable UBOOT_CONFIG?
To: yocto@lists.yoctoproject.org
From: "H. Wulff" <H.Wulff@kruss.de>
X-Originating-Location: Uetersen, Schleswig-Holstein, DE (91.9.179.191)
X-Originating-Platform: Linux Firefox 146
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 04 Mar 2026 00:07:39 -0800
Message-ID: <ufvN.1772611659319623243.CDwZ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="njnXpIeXnPkJNSLjEIQF"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Mar 2026 08:07:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66299

--njnXpIeXnPkJNSLjEIQF
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

Hi!

In our machines we've defined `UBOOT_CONFIG` for `sd` and `emmc` and set `U=
BOOT_CONFIG` to `emmc`. This works fine.

We got one image recipe where we need to run from SD-Card instead of eMMC, =
so we set set `UBOOT_CONFIG` to `sd` in that image recipe. When I run `bitb=
ake -e <image>` I can see that `UBOOT_CONFIG` is set to `sd`. But in our cu=
stom appended task `do_unpack` of the uboot recipe it seems that `UBOOT_CON=
FIG` still remains to `emmc`.

When I grep through *all* recipes I couldn't find a single recipe that modi=
fies `UBOOT_CONFIG`. So the question is whether it is possible to modify `U=
BOOT_CONFIG` outside the machines?

Thanks in advance,
H. Wulff

--njnXpIeXnPkJNSLjEIQF
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi!</p>

<p>In our machines we've defined <code>UBOOT_CONFIG</code> for <code>sd</co=
de> and <code>emmc</code> and set <code>UBOOT_CONFIG</code> to <code>emmc</=
code>. This works fine.</p>

<p>We got one image recipe where we need to run from SD-Card instead of eMM=
C, so we set set <code>UBOOT_CONFIG</code> to <code>sd</code> in that image=
 recipe. When I run <code>bitbake -e &lt;image&gt;</code> I can see that <c=
ode>UBOOT_CONFIG</code> is set to <code>sd</code>. But in our custom append=
ed task <code>do_unpack</code> of the uboot recipe it seems that <code>UBOO=
T_CONFIG</code> still remains to <code>emmc</code>.</p>

<p>When I grep through <em>all</em> recipes I couldn't find a single recipe=
 that modifies <code>UBOOT_CONFIG</code>. So the question is whether it is =
possible to modify <code>UBOOT_CONFIG</code> outside the machines?</p>

<p>Thanks in advance,
H. Wulff</p>

--njnXpIeXnPkJNSLjEIQF--

