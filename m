Return-Path: <quic_vkraleti@quicinc.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46410EDE999
	for <webhook@archiver.kernel.org>; Thu, 14 Sep 2023 08:59:56 +0000 (UTC)
Subject: Upgrading systemd to v254 on Kirkstone. #kirkstone #systemd
To: yocto@lists.yoctoproject.org
From: "Viswanath Kraleti" <quic_vkraleti@quicinc.com>
X-Originating-Location: FR (163.116.219.32)
X-Originating-Platform: Windows Chrome 116
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 14 Sep 2023 01:59:55 -0700
Message-ID: <lnNJ.1694681995425139690.f9E9@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="nAsQugCy9hbvgiy3eU4l"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 08:59:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60988

--nAsQugCy9hbvgiy3eU4l
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,
I am looking for ways for enrollment of secure boot keys from systemd-boot.=
 I am currently on Yocto Kirkstone which is bringing systemd v250. However =
secure boot keys enrolment support is not available in this version. Patche=
s for this started landing from v252 onwards and for comprehensive function=
ality one has to be on v254. I tried back porting relevant patches to v250 =
but the churn on this project so high that it is not practically possible t=
o bring the change as .patch files.

Considering the longevity of Kirkstone, is it possible to migrate systemd t=
o v254? If=C2=A0not what are the practically possible ways to bring this fe=
ature to v250? Due to product requirements I can't move to a newer yocto ve=
rsion.

Any help in this regard is highly appreciated.

Best Regards,
Viswanath

--nAsQugCy9hbvgiy3eU4l
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,<br />&nbsp; &nbsp; &nbsp;I am looking for ways for enrollment of se=
cure boot keys from systemd-boot. I am currently on Yocto Kirkstone which i=
s bringing systemd v250. However secure boot keys enrolment support is not =
available in this version. Patches for this started landing from v252 onwar=
ds and for comprehensive functionality one has to be on v254. I tried back =
porting relevant patches to v250 but the churn on this project so high that=
 it is not practically possible to bring the change as .patch files.&nbsp;<=
br /><br />Considering the longevity of Kirkstone, is it possible to migrat=
e systemd to v254? If&nbsp;not what are the practically possible ways to br=
ing this feature to v250? Due to product requirements I can't move to a new=
er yocto version.&nbsp;<br /><br />Any help in this regard is highly apprec=
iated.<br /><br />Best Regards,<br />Viswanath

--nAsQugCy9hbvgiy3eU4l--

