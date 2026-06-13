Return-Path: <ayoub.zaki@googlemail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8316BCD8CA8
	for <webhook@archiver.kernel.org>; Sat, 13 Jun 2026 13:20:23 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.90892.1781356814124048972
 for <yocto@lists.yoctoproject.org>;
 Sat, 13 Jun 2026 06:20:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20251104 header.b=f9pXLxfs;
 spf=pass (domain: googlemail.com, ip: 209.85.208.50, mailfrom: ayoub.zaki@googlemail.com)
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-691c5776f95so3624980a12.3
        for <yocto@lists.yoctoproject.org>; Sat, 13 Jun 2026 06:20:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781356812; cv=none;
        d=google.com; s=arc-20240605;
        b=FX69PW5oXk9sPAYoZS2aru0/MZhNX62YTLDzqm4fQvQnzJzk8MxciWs03+Zxq3PYif
         VyDtdzng9KBozohbqWVkx/LMbwPluL5kJYXgs4v3so+swAn7+yvXoc9r/lsMx/4mBSXj
         UZFMW6h7bV9x7FuNRM4mh6Ch0ICuw7O/BNrj2PVShXdv02nmqwGO2rKCCBxNDJr057Pu
         VuLbFQQdijVd8O7tgJVJYAHLVRbgYVXfcA5RTTvVaEnXQuH62x0k8eK/lu4+TvfsvOpe
         aM+naWRFDY1/jyZPjv8Z09afb5B4NL18l0CS3gmuwEFLeRJV4T+WMrk0LWLkyVc5Dh+R
         qJRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=JOJnfxXYyyipXXWE+RZfKm628mqtuCZDVuAJN3cO80g=;
        fh=ry0dO8Mo1Om+pdHnWp/dYQ/nIeO+4vmyy9x3nU2mUWU=;
        b=PAnDDHtxNbFDClve9PVKXGDcj+YmOhKEn/rGhgVGQ8L2sOpTcChfyvBX5UlZGJsQru
         mDR/QzayMKV7Ukih6IfEvC+4VDSa972iZePQpZXI0kQO9gWdu1KjyAH8YAqW6koIqAbI
         ma9OVJ3qPsuIAo5JGROBD1piAFD3EXZBRNtLhLfDTtH0Ob/zi8RP5mQh3ZWmRngoK9iU
         gof43n/qin6lmm7UTkTcOb6zi1fX8Lkuil7tWTo4yFfSd5slPLVCZwqCdaWBM8eHs0zA
         jviB6NaGORn5/dzt4qL7M/dAbgZzUqVv7x2bw7IaOvoJqCX36l31OiSuQOH4V4YKNsfL
         Nvsw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20251104; t=1781356812; x=1781961612; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JOJnfxXYyyipXXWE+RZfKm628mqtuCZDVuAJN3cO80g=;
        b=f9pXLxfshPfmqc5ie57WllzDip6lWe1Z97TijUpspeT/9jKCBMweU4Mt4e/Nk+cgHn
         ZuvAX6tW8acQsUSukhzqMMTjkfMFSkVXhHSeJ9OZSwUZDjx7rU5yfmz0KNkD5IJ2Wb4U
         qKyGJQT71pH8mH0/iykA+C2Xr7JKu0ktU3xzSS+iauoQGeDWH7ZNWoECOPVbMmLAfYA2
         jVRKTbdnN9gsGZwTcmyxneotkDbvPoBVx3QLU2Eg65rq+eEwOlzzNnqyG+WflrMcsBKH
         m/pGG5kEsRG/Q51SHxN7ACDVko0dKqQmiwEmMlaaRyLVvVi+xzOahMH9SfP9fhPY1eZB
         N2Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781356812; x=1781961612;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JOJnfxXYyyipXXWE+RZfKm628mqtuCZDVuAJN3cO80g=;
        b=pS1a6LGwXjAHBUw2OOrcwhy/JfoKi2fkEsS02ptx4hjJ5+lnukEPElFyZcP6My2mee
         g98gSCn47mqjrvE19n+53RTe9diCQku/su4gTNu5eD/ID/PIGhl6XR88GyndsR58kDUv
         kYxdUupznunIj0cwP4AeOXnnFzbMMe7pOL7LvxTN5twQbDs3bpiNLcWunZV3i2cITdAn
         /e/ayWqcCHTTtZmQxulXARX7IVNTxjokaIrv7G1qBg2q3DVAoyoSNQ1rTeQzsLJ8fT4v
         yuLwTDKNz5627dsOdGQHtWo5XHvA78scsst1hTnALCa1GmrELxHQ8/WtFLzd3SoHIsDR
         7AYg==
X-Gm-Message-State: AOJu0YxYBj2dZXSnWxe+cTgaLtjjxS0oHZ4CRv4dFEfQEkmnq/vdux0A
	OF8s7b5EUIKJBFCAeQs2BrjViCmbKYnvd5cGi4maSP5FDowdiwdvkLTjR8NCddR/15FC2Dap4aJ
	Hte4T2Iy5xHRPf6fLvryzzPB3bBIzflfirg==
X-Gm-Gg: Acq92OF3NNNeXsV4qpB7ZSlH4epzs7CYjAmwSPwjLOAmUqDCnXqw9uMe6LpqkIzu7uS
	ne6ZMnO5+YkiYskKs1Jr/QCLDzoGN0zjPnPGkcmJPeI0yq4eJkXpD0Quaq5hJ0Qs+8btm0xmZQZ
	N91d0WLvGh5g+CImXhp7GR8w1aFiq5LrOcHrdkvC+1tXvZ/u2PzrS3riyekSUAHTsuTHuCuuYJ8
	76md5bAHIQ8yZguz5asxgbjUYa72+BBF7QOwPPoZYcD4QRSb7sPIqP3pV/b8iTXpYLukPQ6f7fX
	xpA01H+izhG5QdnjR7qWWiIGk85nJDQOCdpumJXZ
X-Received: by 2002:a17:907:72d2:b0:bd5:27b7:adaf with SMTP id
 a640c23a62f3a-bfe2a814450mr283363566b.33.1781356811928; Sat, 13 Jun 2026
 06:20:11 -0700 (PDT)
MIME-Version: 1.0
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Sat, 13 Jun 2026 15:20:01 +0200
X-Gm-Features: AVVi8CclkbbitcXuVWh6B18sNQIcta_N8PqS1SavpVHUVECor_5czbHQ4zHj-cg
Message-ID: <CA+-BmJYpWEugmjb8UvjRMOmHxyMBzkjCTBq6ASpen84FmKyrBg@mail.gmail.com>
Subject: Re: Yocto Lens - Static Analysis and Style Review Tool for Yocto Metadata
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Prashant Divate <diwateprashant44@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000fe4924065422736a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 Jun 2026 13:20:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66597

--000000000000fe4924065422736a
Content-Type: text/plain; charset="UTF-8"

Interesting project but out of curiosity what would you consider the main
differentiator versus existing solutions such as oelint-adv and meta-sca?
I'm trying to understand where Yocto Lens provides additional value beyond
what those tools already offer?

--000000000000fe4924065422736a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Interesting project but out of curiosity what would you c=
onsider the main differentiator versus existing solutions such as oelint-ad=
v and meta-sca? I&#39;m trying to understand where Yocto Lens provides addi=
tional value beyond what those tools already offer?</div>

--000000000000fe4924065422736a--

