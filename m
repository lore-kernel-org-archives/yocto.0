Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22022E77188
	for <webhook@archiver.kernel.org>; Fri, 10 Jan 2025 14:22:10 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web10.19547.1736518923982761336
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Jan 2025 06:22:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Kgv+M1ON;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4361fe642ddso22733785e9.2
        for <yocto@lists.yoctoproject.org>; Fri, 10 Jan 2025 06:22:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1736518922; x=1737123722; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SEn2BoWfxu+nrRGzfT24T8ZGMIh7qCPpQA3Gnl+F4lI=;
        b=Kgv+M1ONTpsVfhGWzBonM55qFBS32rFL0NqNcheCCZKXJUpe0cojEvlikm98GDXKzR
         l/Ve/CFHRmjnyN91OOhp/opVPhb65MIfkE7/RbO83V1zyPEQEedaux9M8pcDmV485sKL
         pVG0k17TXQfreWaS9TitpZmvAvFPe62aFJfBc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736518922; x=1737123722;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SEn2BoWfxu+nrRGzfT24T8ZGMIh7qCPpQA3Gnl+F4lI=;
        b=UODYgLsJqX2oRcL/rAMJPMAI6IgMNsKtk9UrWxOVUTr8cKQ2T7uJYvRaI8c/ImBdCw
         PW2r6gGkfakf8YTGAiQVfk+hqYOccFwvqiMklxspBXM48s4s5qyNa9kqavzZ0Bj0wVnJ
         /YVp1xiBSsk+R0I536jnd1dQiHUTb/HFJi9ify4i8NCQVdjOruXh2BJEgHndqccOFiRC
         1nfylsMhHArj79/lMmXFTGT3xOJ2ZmpY5ufj/Sz1esvgcwE9kLEuuUoOBIEmu70I4lMp
         rd3CCz0piwz+7Du3QjfTOsV2AoKhmzqvEA0AtckcD8GSFgUALFen1lfrOBqZ/PiCuOZs
         4Gnw==
X-Gm-Message-State: AOJu0YyP7bfoeI8GR+/r7f2aIVbXqxLwsqLsMQCgq3ipru5BnRcKiVpL
	yzx4jVQnQopCFbhNMkTFzbRFGAULjtvXrT/DG18IZOqkJgBuOO/f+yHkerwli6a9jpbs3YNS4Kn
	W6L8=
X-Gm-Gg: ASbGncsbph3WHa/5gNbvhytbMdASyDS/TEZHFkKFswO9R3Y98SFh4bNeHIB+fbQ6vn5
	qKT+q8rX8iExWONJMAjZ9+KWj6EnpKD2PMjJm1QChmCgGy8tzbtDCs9y25MFP4NLbx0mcervair
	Bjhh5Lts3FBiBH+j8yLBIt1vHeGTN6ObF+zh34rujVP80PjrWTMYBtmf3vJhDJRMEmU2VG02rxS
	u9P2l5rbxM74OXTi+j0VUom1FuuYY9co98IgRuYKVCN5QG1vWmla7rrTnX4wD5F5/r4fTVqu49X
	h65ab4oQEW+56z36q5zKbggCmnTzx2adSPs3gyCBUnOLNw==
X-Google-Smtp-Source: AGHT+IE/pDXp34Pa80F7tJmRV1qGiPXO4uztjWiJRbzcedevlDCYrdsbzFhq2y+6w6+POtcNuyLxMw==
X-Received: by 2002:a05:600c:c0e:b0:436:488f:4d8 with SMTP id 5b1f17b1804b1-436eb9a154amr68473635e9.11.1736518921939;
        Fri, 10 Jan 2025 06:22:01 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:d75e:67c5:40ee:6f3d? ([2001:8b0:aba:5f3c:d75e:67c5:40ee:6f3d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e9e6251asm56474045e9.40.2025.01.10.06.22.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 06:22:01 -0800 (PST)
Message-ID: <3333711ed2425169284562ae706434425df28cbe.camel@linuxfoundation.org>
Subject: Re: [yocto] [linux-yocto][poky][master][PATCH] module.bbclass:
 enhance KBUILD_EXTRA_SYMBOLS retrieval
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, dchvs11@gmail.com
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 10 Jan 2025 14:22:00 +0000
In-Reply-To: <20250110030847.4839-1-dchvs11@gmail.com>
References: <20250110030847.4839-1-dchvs11@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Jan 2025 14:22:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64530

On Fri, 2025-01-10 at 03:08 +0000, Daniel via lists.yoctoproject.org wrote:
> Kernel packages may not always use the kernel-module- prefix. However,
> those listed in DEPENDS will consistently add Module.symvers to the
> STAGING_INCDIR.
>=20
> Signed-off-by: Daniel Chaves <dchvs11@gmail.com>
> ---
> =C2=A0meta/classes-recipe/module.bbclass | 14 +++++++-------
> =C2=A01 file changed, 7 insertions(+), 7 deletions(-)
>=20
> diff --git a/meta/classes-recipe/module.bbclass b/meta/classes-recipe/mod=
ule.bbclass
> index f2f0b25a2d..0f16522866 100644
> --- a/meta/classes-recipe/module.bbclass
> +++ b/meta/classes-recipe/module.bbclass
> @@ -11,13 +11,13 @@ EXTRA_OEMAKE +=3D "KERNEL_SRC=3D${STAGING_KERNEL_DIR}=
"
> =C2=A0MODULES_INSTALL_TARGET ?=3D "modules_install"
> =C2=A0MODULES_MODULE_SYMVERS_LOCATION ?=3D ""
> =C2=A0
> -python __anonymous () {
> -=C2=A0=C2=A0=C2=A0 depends =3D d.getVar('DEPENDS')
> -=C2=A0=C2=A0=C2=A0 extra_symbols =3D []
> -=C2=A0=C2=A0=C2=A0 for dep in depends.split():
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if dep.startswith("kernel-mod=
ule-"):
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 extra=
_symbols.append("${STAGING_INCDIR}/" + dep + "/Module.symvers")
> -=C2=A0=C2=A0=C2=A0 d.setVar('KBUILD_EXTRA_SYMBOLS', " ".join(extra_symbo=
ls))
> +python () {
> +=C2=A0=C2=A0=C2=A0 import glob
> +
> +=C2=A0=C2=A0=C2=A0 extra_symbols =3D glob.glob(d.getVar('STAGING_INCDIR'=
) + "/*/Module.symvers")
> +
> +=C2=A0=C2=A0=C2=A0 d.setVar('KBUILD_EXTRA_SYMBOLS', d.getVar('KBUILD_EXT=
RA_SYMBOLS') + " " + \
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 " ".join(extra_symbols))
> =C2=A0}
> =C2=A0
> =C2=A0python do_package:prepend () {

This is going to lead to non-determinism since STAGING_INCDIR may or
may not exist (e.g. at parsing time before the build) and the value
will therefore change.

If we really want/need to do that I'd at least expect an explanation of
why the changes don't matter and how they don't affect task checksums.

As Alexandre mentions, this also needs to be submitted to the OE-Core
list.

Cheers,

Richard




