Return-Path: <ayoub.zaki@googlemail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB06A10ED679
	for <webhook@archiver.kernel.org>; Fri, 27 Mar 2026 13:26:49 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.73141.1774618001765262660
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Mar 2026 06:26:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20251104 header.b=f3oJnC+i;
 spf=pass (domain: googlemail.com, ip: 209.85.218.47, mailfrom: ayoub.zaki@googlemail.com)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b982b0889d8so256127466b.2
        for <yocto@lists.yoctoproject.org>; Fri, 27 Mar 2026 06:26:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774618000; cv=none;
        d=google.com; s=arc-20240605;
        b=UuIgv10fV6ENTHywcr0Gj5kPDSCfPKbEDCE2w9syWRWxkUNPXpdDeR+lRGiPDvBhml
         anUVwNqCSxEJ1Ll2U24UxO4EfP5sxn9qMVJMAtJFl2/xnQjHQR7RswbdmKyNlLqghS9E
         xkmpfwNuQCVu2Qraom9tIq8ITlj/bymbw0KbLDvgRRu1vilGgN+qNcaRZc6DAkyvM38L
         Mer7UBbJO4z+xTllazKGr4ga3U19OfneLYq4MGVUkCXd6HONDQCo2l0/0dNvQhi0OdoV
         yodiNU1pKye2Ji8ZaJD4f9gVA85Qm3OQfu73pYJ679YafSnpulSkW2uXactCxoKQQLS3
         iCRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=LI0cw/uuQyG7ff5egdRDu2PAbfoQuu5l1oQapLuiwT8=;
        fh=U2LhCOMzzMJV5I1/UPXMgmdE+GK7YeVX/q3VD4NTpfA=;
        b=E7UHZ0nZ4B1m1uXALNGwCA6IoFVKEOSRgJMF8P0UXkpJQhebdys6FIMMxHluoAPvCk
         WWbJhPN6pQde5NLNM50NVBI76c6oycPsOxlxHE+vaupXJraaxkpIRheVQ7hO3fTzEjXg
         4uUiW8CQ4kvDWTaLYlDTShllcQJjJEKQ+B/eg1GQeTKatQWKRn4YEE/lCoyL7ndkql0Y
         p/s3VjIdDelZDV33qq7vGwKM5ecWyVUl04PSfEGAM3kqIIfgeR/ojrV6uxoP+VOEYki8
         dyqe68LZ3/i8DbAyhgoj5J9O9hudJVr72XgczY2i1PbW4/zeUTKz1caq/U/82xCtpjWw
         7cXg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20251104; t=1774618000; x=1775222800; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LI0cw/uuQyG7ff5egdRDu2PAbfoQuu5l1oQapLuiwT8=;
        b=f3oJnC+i4NkyNqKAktaeZhBbWnqfk17jw9pEDIm7rIkG/HVDprOYH5o+vTDLKpXSi8
         qUgUlNGM4pEcK0wtUibv7y1n7In6OMszJVSm00T2lYskCrv5ZwkYregSuaxzUUzjD8OL
         0/yxiH18xPnI/sQpOZvlk8RHylW/U8UT2O/G+E6qIg907xXAC6QWWJF9vujUmn752pzE
         xpB9UHc7wPOoCCuNGMKlrQwfoCbRf/odJy3d43v6RhI4qqlrDqVqCWFeGaTYfGf6vvuG
         l/pLUYzvSFVd2zyNKn6OEcAf3Nr/MKzLrKxF9NHGnt5GyZzjiz25LmBxuX5i/dDuvHyw
         8JdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774618000; x=1775222800;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LI0cw/uuQyG7ff5egdRDu2PAbfoQuu5l1oQapLuiwT8=;
        b=fbMh9NxiFANuwTj6nkAvon8udkV/ILWUN8EYCNbJhif4MD+tAx5lbsi88zxlUvfSsM
         2v+EoK/nrcOHlxPcQLYGlk1/BX700en/wKubs2O2c5i2rJ5ZytS0ALvk4VzlnT02Vy8Z
         UaXWoX0+ochNPYg333ovYnuS7NSj/9QesTcGrOzsiLzPgk+/MHHBGDMUePUvUm4ZZRyt
         kUhK3kxYRUnwsN90Nnyr2zBq5zaTdhOpoKY1nh993FIszI4j6Jikz2LPoNgBbYIe2hnE
         j6/M/soZcElWdH+7CYi/PjLihTtin2ehEKZz/dVZI93FGHx+81XvvuKcQJnfgIWuml8V
         mJPw==
X-Gm-Message-State: AOJu0YwCohXysV2MkGmVX4u8OTIZkilK4i3xEs6+Mka2prFuNcsc5DTF
	TW/KV9so1wdZfRCV/xcJRlX1XtFlLV+o1I7KOEezWxJZywSMzylTxgHpUA6+DOkpXmm/PnP574k
	8ADZT7ImDYwflKp36Pju9hbFRf5U6ElfnZw==
X-Gm-Gg: ATEYQzz/Ij+m9sxDNVYDkB5PDhkX1sN/62aWfGw4bWtn1HISdm9bQc7gZMBLP92yJ3A
	tfbQ1QuQx2pmvTqNregHDp+ZsWcCzzFwedVWKZAyfSigzMxtPTa3RnHh+HKTj1ytl1JSgDhXbja
	dBOgsVYvafX5I36z/Cj6SQxpPP5DC2OetM7muS57fHpsnr3zX2itfl/mAd2ns3xIRvlPUoN2vlV
	5SVLOopPo0kH4vmAb5fOs7cuBcAoBnCVGskRp/zjn9rouzrMz3B6YP8027m7ZIr/cILZu/EoUPG
	NHSJVw==
X-Received: by 2002:a17:907:e158:b0:b9b:1ea2:97d3 with SMTP id
 a640c23a62f3a-b9b50908071mr132032066b.35.1774617999476; Fri, 27 Mar 2026
 06:26:39 -0700 (PDT)
MIME-Version: 1.0
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Fri, 27 Mar 2026 14:26:29 +0100
X-Gm-Features: AQROBzCacOvaqDlAXjUOUiQmBjC3PLHJ3GmtjreWb6f4XCe8mXp_d9etpoP2OSQ
Message-ID: <CA+-BmJbrTDW9bgT_RN6uEirtGMq4i6euR3JzvnDEhKwPT3DLbQ@mail.gmail.com>
Subject: Re: overlayfs-etc on top of dm-verity?
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, michael.opdenacker@rootcommit.com
Content-Type: multipart/alternative; boundary="000000000000788e21064e017367"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Mar 2026 13:26:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66359

--000000000000788e21064e017367
Content-Type: text/plain; charset="UTF-8"

Hi Michael,
From a security perspective I would strongly advise against overlaying the
entire /etc as it undermines the integrity provided by secure boot. Instead
only overlay the specific files that actually need to be modified. In
addition, consider enforcing integrity protection on the upper layer and
consider alternatively switch to bind mounts for those files.

Best

--000000000000788e21064e017367
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Michael,<div dir=3D"auto">From a security perspective =
I would strongly advise against overlaying the entire /etc as it undermines=
 the integrity provided by secure boot. Instead only overlay the specific f=
iles that actually need to be modified. In addition, consider enforcing int=
egrity protection on the upper layer and consider alternatively switch to b=
ind mounts for those files.</div><div dir=3D"auto"><br></div><div dir=3D"au=
to">Best</div></div>

--000000000000788e21064e017367--

