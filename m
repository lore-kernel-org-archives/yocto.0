Return-Path: <kanakshilledar111@protonmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF74C5B552
	for <webhook@archiver.kernel.org>; Wed,  4 Jun 2025 10:12:40 +0000 (UTC)
Received: from mail-10697.protonmail.ch (mail-10697.protonmail.ch [79.135.106.97])
 by mx.groups.io with SMTP id smtpd.web11.13170.1749031954085602518
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Jun 2025 03:12:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@protonmail.com header.s=protonmail3 header.b=Xn/4uZGS;
 spf=pass (domain: protonmail.com, ip: 79.135.106.97, mailfrom: kanakshilledar111@protonmail.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1749031951; x=1749291151;
	bh=+brDg34tJgkcEjqTfRuKjn+Vmuqbr3nA7l4odON2R2Q=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=Xn/4uZGS5kV6HXohc3AzvVKBG9n4l3TPw7IATB/BBBoz6G58mQ1eyoGSYsVFepv1n
	 365128/3PwxR3vYX2/Qp++vVdEHLeihyr0NXd7FXhwJLsf9TrhNpYjqthipalOYlMc
	 F0PjpheWeE8w7pNslztKF2aZpd8k10feLl/OFMlYsnw3+xEk3ZMKlUrVj7Jpbw2tmE
	 2USBZFBEAG+Bi9uDutDyRdV9J5IK3Dq8jR2x1D5RXDxN+jKZEpu6ZAc/TlER+ZW2w/
	 Tm6XL+WAvOElpTMJtU/8K2XJODTa8bGsfehGdY/UD6dBgpw/reXqRyXIW3aS5VayFq
	 DYP0jWUVACISA==
Date: Wed, 04 Jun 2025 10:12:28 +0000
To: yocto@lists.yoctoproject.org
From: Kanak Shilledar <kanakshilledar111@protonmail.com>
Subject: Re: [yocto] [poky][master] opensbi recipe failed at do_patch
Message-ID: <_3XqOC3AX11jlL6Y-1frURj8TclOlVDlPPundSm3848wqQktepn4sP-C-gIE4orxxuTOQMxNkz67tYmc5jctLe17FhLLGXtCTg4x237r5zA=@protonmail.com>
In-Reply-To: <2b0b2ffb-a7b3-4143-8b4a-474bdd22a5c1@gmail.com>
References: <lwHV9MLGir2nUyJPc-xQKFx_rhE2ABEfOSLNR5WCWuoPSo4WMQRsKi7YhzMsyTHrAcQkwzyPca57qC3tF0abomOAJ673W2_dgiA04oo1m_s=@protonmail.com> <28713.1748865806847096458@lists.yoctoproject.org> <2b0b2ffb-a7b3-4143-8b4a-474bdd22a5c1@gmail.com>
Feedback-ID: 26271244:user:proton
X-Pm-Message-ID: 8c8c38bb78206abc00c75432ad2b0d0fe2f860e0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Jun 2025 10:12:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65464


I will try backporting the patch.=20
Thanks for helping out!

> Based on the error message it looks like you are missing a commit[1]
> that fixed C23 compatibility.
> And looking at meta-riscv, there is a comment in the .bbappend:
>=20
> # recent version after 1.4 release
> SRCREV:c910 =3D "17e829129d60d7d178d47ecbd8990e705690d352"
>=20
> which may explain a few things. The C23 fix was added to v1.6, but this
> layer seems to downgrade opensbi to v1.4 - which also explains why the
> patch from oe-core fails.
>=20
> If this old version of opensbi is a must for your board, then you will
> need to backport the C23 patch (it's reasonably small and simple).
> Otherwise the best would be to bump it in opensbi version in meta-riscv,
> is possible.
>=20
> [1]:
> https://github.com/riscv-software-src/opensbi/commit/d539d64a23bbd64ba324=
eed595449bcc9c7be0cb


Best Regards,
Kanak Shilledar

