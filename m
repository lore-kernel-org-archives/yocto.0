Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5FA8FF885C
	for <webhook@archiver.kernel.org>; Sat, 25 Apr 2026 17:47:21 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.2155.1777139234094083787
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Apr 2026 10:47:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=c97FrkKS;
 spf=pass (domain: gmail.com, ip: 209.85.128.173, mailfrom: raj.khem@gmail.com)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-79a46260385so98181077b3.3
        for <yocto@lists.yoctoproject.org>; Sat, 25 Apr 2026 10:47:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777139233; cv=none;
        d=google.com; s=arc-20240605;
        b=TYOgp+LJSg8kHSIvv5hOQrGxGyisrqEcHe9FHY3cW9/iFFfsRWyGDHT6cFLtq6wGL4
         JAaBa4M07mDxqSdPaaXD1NSKkcmp3k8ksytlGpVFU94yAC/QTTqJ82TbAsLLrUmZvEOY
         kG3rt6x7wjgIulkluek/vwLvUj3Qsx9mZJg3lwH455wzGk8Inab94RmMwvXkDG8yXJbT
         2qQUw/gxdnVFA85rLYszQtCSZBLGfGaHys3d6SrmPU40ndxCgNQ06zyUm0Bbna5qXc2+
         FHnov3nG/bjL0ZxllaBfQEahSUBrp9zdhW2foDfer6bnG1JgC3VNsCtV31jQao1mG3nq
         NnSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=fi4SSB6BD5o+VmeBftjK/o4i502kk6h96LLH42Dl1dg=;
        fh=GViAHVj9/PjYVLfFfmnJENpzL3kdbck8E2hveDUjVFw=;
        b=UY4ccLmuCxhz9RhYfDaduYgOx9f8gi+KatcVVv/ZsU620tCVcpd5irUz1PeRCjQIH7
         sZqTtHPC9CSqX79pdBaEJ/AYlg2zFQOOsQrmAdFN8HWn3nb+I7y5q85wQh+keiBQgjgR
         t8KEsUYtjLMm4NO6THvgE9Qj90mc5ZMppBdcKh2sgxtn0mrt3ZRMdo6qtY+qiUs+7IVK
         Aiz9gGd+vC7H5KZKahB2mhn57+grHna+SX/lfTH+GD5Dvh/t4CinI8aVwbozy4vjroGB
         mKFysOn6UMCyAHHXkZbA39p/Uxv2KzIbCkS0ArE1jxel/uIOqsz1RUZQE6KzhMIf0COA
         9l0Q==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777139233; x=1777744033; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fi4SSB6BD5o+VmeBftjK/o4i502kk6h96LLH42Dl1dg=;
        b=c97FrkKSanWVKlG6Zkrq5cn5imgd1ZOnuuPsEYeXL2zSTULIDNy+aSBu7wWwv6fy+U
         PBVRUFl0O/zoSIof69Rfq/nRZ3w69aClA48c9fLw4B5XO8ktljFFTCw9I8f5UFXtSeFh
         DFpwfWmH3KNX5avgVK0ugl1rPPcumBWXaAqtZZac1Bi1Cfez3dMsEQfPNzryBxdWaU8l
         pz1oyeATkFVjjBu7kU5YtFoWy1B+FLwhBZCrJvBONvzYb4+PJpGwFgQje5SxhT+LQSaL
         i0jVVwtx7tNLsQcf3YMVZkm4A09QyxpZ47s3v8jSjCq/brx++eDGxCT3cfIHVUf0qIyo
         y+8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777139233; x=1777744033;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fi4SSB6BD5o+VmeBftjK/o4i502kk6h96LLH42Dl1dg=;
        b=ZtHCqotEdKEOh2YI4sGyQ8uC+hYUXslWTS5x3JYQxMrfL3EHXBLjxQjYjm90yZG67+
         CfELt3dkspus+8dtw3rrtGd+4ZIYTGmvg7U0Uhgwf6tBw933ZyTJ5VHIq3X75pGF/lSb
         0Bzjd5qRvnYBygHccW2EmCe9bKlaBJvKicnvE5DqPl/O5OiUoOv/bcSSJ3mugIUOUSZi
         J20/UYweKnFw47XdZvnF6KIoA+Vg7Oaj11u0xeTA9elh5DqQlbSL14lgd1Haf1H0eKuY
         o22yP2kywnSfSh3mXAKtXMXsmBL6dTapwgyt02tWIhOcSy5SGMsuzFMrF59hRKQONQ9L
         ht0g==
X-Forwarded-Encrypted: i=1; AFNElJ+V0qh0f5nkNSU4vVuNcV9iQ853iunkod9uOBub74x2K7rG6BxCKb2HEVFZ+2KYPYwh3CB88w==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzraEi4HzsmZwwe5xSWlGzcdoqfJ1LAkj9MwhWqcvc+wqPD1yUC
	OVbKlN7pxi1dPT8sDE8u1SiRYfFaUzg3lcC17ksDgoyuwkqCLNcP3xs76Uh2B2KV7+QE4VskJJ7
	DEXtVDIM7Wy8mNGTQp7In3fdyq0zal9A=
X-Gm-Gg: AeBDievSj+1ZwcbA0PTXw3FbE6lIp3peNWYeyPqHE9ICmCuAj3y8BrZekrAeAHKhVAM
	a4akvuAwMM24fwWJHvP5L97+2ccg3Y5CB7V5UdpVb3OPvc7tSEIs664wN/9+S3em25le2jA1UFN
	UCh2Dwr8Kvd2rC8W2g6UBxWDEDZBdQJp7WwCKkRfB3kRI2pOICdFt2W9/UQVUeoltiTsgF/tntq
	a6VpC0NxVkjdkpIw/8c7RP3plQ74/N70VYl2ket4o0DUilwhRqpEOonxAccSD/UPRBGB+NiSIMz
	IoL5XBcWcn+MusE73ICgKd7tNuvsLEbqJIkPr/0QqgRkpvRpKThgaRgWBHkZt/kPDHjZJRNcz/W
	KYrP3oo0PLdVAternCWy/9rv1Is6ydrHyscxZb5Qe4dKG5hrJt25MY7lsxhcbhmjITLw7tF3zKe
	+R4xkBhA6NWcGI+Kc=
X-Received: by 2002:a05:690e:1b60:b0:650:12eb:16db with SMTP id
 956f58d0204a3-65310a790a8mr23274404d50.50.1777139233168; Sat, 25 Apr 2026
 10:47:13 -0700 (PDT)
MIME-Version: 1.0
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 25 Apr 2026 10:46:46 -0700
X-Gm-Features: AQROBzALZRJt5_B-FQyfWLs4On42Ep8YyH_EcqsX_HUPWcZPSGA4UXgnvRxLg9s
Message-ID: <CAMKF1so=iKQvzr8Hr=6ZxxBcgMU_nocduK3YNTOksqg-qLgQuw@mail.gmail.com>
Subject: meta-openembedded 'wrynose' release
To: openembeded-devel <Openembedded-devel@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Content-Type: multipart/alternative; boundary="000000000000b5a3bb06504c78ef"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 25 Apr 2026 17:47:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66442

--000000000000b5a3bb06504c78ef
Content-Type: text/plain; charset="UTF-8"

Hello All,

'wrynose' ( yocto 6.0 LTS )  branch for meta-openembedded layers has been
created.

Anuj Mittal has kindly agreed to maintain the wrynose stable branch.

I would like to see the mbedtls 4.x in there but it still needs some work.
At this point, it is not part of the branch but we will see if it makes the
cut.

Please send any patches you would like to see in wrynose release with
appropriate subject prefix '[wrynose]' so help maintainers.

Report any issues and with patches to fix them would be even better  :)

Thank you
-Khem

--000000000000b5a3bb06504c78ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,<div><br></div><div>&#39;wrynose&#39; ( yocto 6.=
0 LTS )=C2=A0 branch for meta-openembedded layers has been created.</div><d=
iv><br></div><div>Anuj Mittal has kindly agreed to maintain the wrynose sta=
ble branch.</div><div><br></div><div>I would like to see the mbedtls 4.x in=
 there but it still needs some work. At this point, it is not part of the b=
ranch but we will see if it makes the cut.</div><div><br></div><div>Please =
send any patches you=C2=A0would like to see in wrynose release with</div><d=
iv>appropriate subject prefix &#39;[wrynose]&#39; so help maintainers.</div=
><div><br></div><div>Report any issues and with patches to fix them would b=
e even better=C2=A0 :)</div><div><br></div><div>Thank you</div><div>-Khem</=
div><div><br></div></div>

--000000000000b5a3bb06504c78ef--

