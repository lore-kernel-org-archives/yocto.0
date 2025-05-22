Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A303C54E65
	for <webhook@archiver.kernel.org>; Thu, 22 May 2025 11:06:29 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web10.21232.1747911984058728736
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 May 2025 04:06:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JS36Plm+;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6f8b9c6b453so71108716d6.2
        for <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 04:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747911983; x=1748516783; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4RmY2uZsfhSU2zD5LAnrsgmt6fWO47Pe9WRFnm77t/o=;
        b=JS36Plm+6lcDauW5VxwkZzOexy07Dt7QlaZQCyug/w0cQeNROnVRD/ToDhAvR1EPvu
         JmD4h8eJqcxOeiwi78uBytXgLFjhFjJHARMXntHw+R+R3jA3M+lesaiZyV9sMv8KBL87
         f+FOi1p5bkglRqpGL/LWXcsk6w3BVoZO4MM9jWNE4sdcGZ5CPB7cm/OXI8+hK/NYtRqO
         tzqV31I9AMas1uQlns3f4QLAUiNfVrxUkjgdExIpK6dVYbDX6SkYloEJTBe199Lxuzk2
         W1pWR0TOXQ1DUrtFEgtmBoixBi/MEAprZkAyQ+M9jLhjNZsYpAgtS7LEiRJ5tSplBKtm
         0Zgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747911983; x=1748516783;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4RmY2uZsfhSU2zD5LAnrsgmt6fWO47Pe9WRFnm77t/o=;
        b=d+kACPItXhGszeOOAEjCLw9xjp6xuvStHpRGUt76fA58HNbGWR1W5WjxyNvyheEKTp
         60+snc0k5sJ9b/ATFtu8UvNFeMgrp+lOwMun0OTtqAIxORH1aGDtjE1d/zusnsDmEwYi
         ZXcJJIC0Wkj6PJxeDHFY2GReaxn9+aUKQ+a56ZGGZs5TRM8DDFZNQigEVZsEtGxeIOnR
         yzM8iLEDS1p9UN1Jr1C0tpotZKfvNPHdZomUbsSxvOulqpVkbLRErTaxM7SmZP34JSGZ
         esCqH0oPSVjLUVe/6dsR0QK/+n0oqin4qTwwSEfuv6ska/NTEZvUjBcZf4DKBfr0dYdz
         bRLw==
X-Gm-Message-State: AOJu0YxLn7KqWacH4YvmUk73ROGgaswv33eW3lxu3pNUYpvb7htkFaYP
	TUd6iOY7X2p7/F8da2Y8PQ5gv53GU+oEOJn1mHZepZoacIrQHyKZrQrY2LgSDRp+vfM8E0kQdmk
	6S2ZheCoxHm1UZ2qG/5bqglp+VVdOLp7dpdb7
X-Gm-Gg: ASbGncu40fltcvlIF6X3+m4w8IfiZsERMNwMfGv/m2D16pB3PTbz9SRHE2nEf1HAls5
	XwlWgZW5/gOfYYXeTtL2oNWdDLy+sjPRs9GLoR/A4qH5DBIhI/0Vu8taefmxFWJUrTfOOltqB0W
	C0hljd+VLmhDUnMdH0atMAa6kR7x6wrppgVAK9m8cW/w6J
X-Google-Smtp-Source: AGHT+IFPTD1QrImxB8kHNR6OeIRNIpMlU6kOWJjOVa26COC8PnkK6y2rRlrtwtWVboQLgB0KUtBKJMBj78lzviTB1OY=
X-Received: by 2002:a05:6214:20ab:b0:6f6:e701:9612 with SMTP id
 6a1803df08f44-6f8b2d858b2mr429104846d6.34.1747911982943; Thu, 22 May 2025
 04:06:22 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj-kZ8JHWVCcgQENsyOgPPB_BZF4vAD3jdKJzLrKmFZz0w@mail.gmail.com>
 <2503.1747911547474751353@lists.yoctoproject.org>
In-Reply-To: <2503.1747911547474751353@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 22 May 2025 13:06:12 +0200
X-Gm-Features: AX0GCFsjDuXWbhLWEyWmpO4UpQQ9PEFEuThqKdTQyPzjd8giSfEXbot4bIXtY_c
Message-ID: <CANNYZj8P8sP_CvqppUoU23XsepXRTWThoP-gAvz3K=Pza97eEQ@mail.gmail.com>
Subject: Re: [yocto] sstate-cache: Ignore ERROR_QA entry for local build
To: Joshua.Schueler@tesat.de
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 11:06:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65396

On Thu, 22 May 2025 at 12:59, Joshua Sch=C3=BCler via
Lists.Yoctoproject.Org
<Joshua.Schueler=3Dtesat.de@lists.yoctoproject.org> wrote:
> I think you misunderstood my question. We have CI-servers, which build ou=
r images and populate a common sstate-cache mounted via NFS. The same sstat=
e-cache is available read-only via http to our developer machines to help q=
uickly build the images and test new recipes.
> Recently, I discovered that my developer machine rebuilds the whole image=
 and does not reuse the sstate-cache populated by the CI. Using bitbake-dif=
fsigs I tracked this down to the ERROR_QA variable, which I modify in my lo=
cal.conf, as I do not need the "version-going-backwards" warning/error (I'm=
 relying on the CI to catch that).
>
> Now I'm trying to get my build to reuse the global sstate-cache despite m=
y changed ERROR_QA variable, for which I tried the following solution:
> ERROR_QA:remove =3D "version-going-backwards"
> ERROR_QA[vardepvalue] =3D "${ERROR_QA} version-going-backwards"
> However, this does not seem to do the trick. The question now is: How can=
 I get my local build to reuse the global sstate-cache despite the changed =
ERROR_QA variable?

It helps to mention which version of Yocto you're on. I think ERROR_QA
changes invalidating sstate used to be an issue, but it was fixed in
master around August 2024 with this commit:

    lib/oe: Use new visitorcode functionality for qa.handle_error()


Alex

