Return-Path: <me@lrossetti.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5284EC35274
	for <webhook@archiver.kernel.org>; Mon, 18 Dec 2023 12:40:25 +0000 (UTC)
Received: from mail-4022.proton.ch (mail-4022.proton.ch [185.70.40.22])
 by mx.groups.io with SMTP id smtpd.web10.42661.1702903213951526437
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Dec 2023 04:40:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lrossetti.com header.s=protonmail3 header.b=aTa3E8of;
 spf=pass (domain: lrossetti.com, ip: 185.70.40.22, mailfrom: me@lrossetti.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lrossetti.com;
	s=protonmail3; t=1702903211; x=1703162411;
	bh=RnQgw6R6Hr1HrKbsPuLbRhgLOdyZcN9LqEz0f2vtNxk=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=aTa3E8of8E1wQKPEwLZa2v2fM8Lu0e7lnSs8vJLHtGF7e4+NeXddXl3HbJyabp0Kd
	 QDupR8lR+HahZlUuyN4gf/BbruuEUF3fg5KiVFcuBmvxovIawMBEQE3Imo2Vl0xDmu
	 chXaaV91nUzcsOUfdHWhEGj7fZwpgEKER7LTg1fU6EIjwd7P26uycn0kCHsDa8tIZP
	 swXBBwE7rE3c3mimvsdIMlB78MvtyQs04V0CE3EMw3+wv2dT1bgxD1LQP6Ejr2spMG
	 gr9jyPdU7sXK/T0jj43dqTWdSee5pksEXJXYfeVpmf3/ZiwBqtPAWvexAGYkKDTiqW
	 4Q2MDzeB2dU+w==
Date: Mon, 18 Dec 2023 12:39:57 +0000
To: yocto@lists.yoctoproject.org
From: Leonardo Rossetti <me@lrossetti.com>
Subject: Re: [yocto] Question about DISTRO_FEATURES, DISTRO_FEATURES_NATIVE and DISTRO_FEATURES_NATIVESDK
Message-ID: <MvEN-d-YbdymuMIY7sq-AHGZmVIEb011aiXX1Ooxeg3AhPRqFRkfjZIwfFTu_7V1NDsDVABhWrnOiSdntSUEgf3JbBqCIFjvn0YCzngxCuY=@lrossetti.com>
In-Reply-To: <27904E88-8CD9-4855-8F92-C744D2B728E4@arm.com>
References: <PJaCF_UbBDlb_8qYIdXMqJeMLNIFHdJE7E9cv-F5oV2R_tgxj-Jvf9lZ8Oq1GqB0LaXu8-vg0MRoHUblQi75MzM86s59K6Kx6gGGQweVUoY=@lrossetti.com> <27904E88-8CD9-4855-8F92-C744D2B728E4@arm.com>
Feedback-ID: 29696065:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 12:40:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61963






Sent with Proton Mail secure email.

On Monday, December 18th, 2023 at 8:40 AM, Ross Burton <ross.burton@arm.com=
> wrote:


> On 15 Dec 2023, at 19:32, Leonardo Rossetti via lists.yoctoproject.org me=
=3Dlrossetti.com@lists.yoctoproject.org wrote:
>=20
> > Hello,
> >=20
> > I am trying to build an image (core-image-minimal) with overlayfs enabl=
ed, but I get the following error when I try to do so:
> >=20
> > `quilt-native was skipped: missing required distro features 'overlayfs =
systemd' (not in DISTRO_FEATURES) ERROR: Required build target 'core-image-=
minimal' has no buildable providers. Missing or unbuildable dependency chai=
n was: ['core-image-minimal', 'quilt-native']`
> >=20
> > I do have those set in my local.conf:
> >=20
> > `DISTRO_FEATURES:append =3D " overlayfs systemd virtualization usrmerge=
 acl xattr pam"`
> > Taking a look at the quilt recipe, I found out that it inherits the nat=
ive.bbclass from the open-embedded-core layer.
> >=20
> > So I noticed that in both files, "native.bbclass" and "nativesdk.bbclas=
s", there is the usage of a different DISTRO_FEATURES variable:
>=20
>=20
> It looks like you=E2=80=99re inheriting the overlayfs class globally. The=
 class should be inherited in the recipe that contains the systemd mount un=
its.

You are correct, I inherited it in my "local.conf" file but I couldn't find=
 another way to enable it in my build, or so I thought.

Would just using "overlayfs" as a "distro feature" be enough?

>=20
> (copying Michael to see if we can get the documentation clarified)
>=20
> If you=E2=80=99re not doing that, then how are you enabling overlayfs?
>=20
> Ross
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61961): https://lists.yoctoproject.org/g/yocto/messag=
e/61961
> Mute This Topic: https://lists.yoctoproject.org/mt/103197288/7461047
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/leave/12035803/746104=
7/1574024554/xyzzy [me@lrossetti.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

