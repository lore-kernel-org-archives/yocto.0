Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8458CCD6E57
	for <webhook@archiver.kernel.org>; Thu,  4 Jun 2026 08:31:06 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.6666.1780561861219840633
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Jun 2026 01:31:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=MN2oxlRV;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-8cceaa6f75bso7389496d6.0
        for <yocto@lists.yoctoproject.org>; Thu, 04 Jun 2026 01:31:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780561860; cv=none;
        d=google.com; s=arc-20240605;
        b=lfiVmN15T9djevAyzWDYY4vmPwvZHS4EHTyGfHHj4ovO23G0XFK/5T2LR5et/XbYAt
         M1FYj4GnTBWH66pj1lijqFNmezAVgDOEUdDXnlzF2uYJeDD7Dqo0db/F01Ji1t921K4A
         W7hsnnB9p9ZxEbJdoySCQqGOBwk8fgqMYNzViw0P0pfU9awONncc0qPnlULl8/0pOX14
         qbciNF+c1yF66RCwB9JArRYhLyOIm+syJYPknI8pkL0N+5Te2gHQjMFR0082xGlJNHqD
         ctb4Ow5PGkVyIxm/U+v1sjRdgz5glVSQT8xSpl+fgrYpUDCOOKghpbFp9TmwzLOyezyb
         Qldg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uUp2nauVBIiR2cPPWkeNPnidghO4x7PSw3VCdGOrypI=;
        fh=TjtBzpivcy4t/LQ/eYTR45Bg/ZhfKPmQ203WHQC5ooM=;
        b=J5lpFDebHo//bIm0byzl3JWJ3M45lsjLx1cupnf4hhOBb/RKSYH9FNPLSerFEklIXT
         xf37+YWAmHUxj3tLKYpB4MUKp1fvsYsakQpvR7/4TMerAAUE9c2aVTCkf3hp3G9OfMi3
         gUYtTxutCTBSR2gut9IuOJGsC+WrX5PDs1U77AR53o0v0qfDCohk0arq4NwSED8a7X5J
         Yy4wXsbNU9BIrIhQyKHOcHJRTt5cijYMl3ZoaaOR3FEZGBCLgf4e+/AWSCRFcwWb9Gii
         XXy4ZDDU1hJfIHtKpupXvcprGVsK5MnqWjqg/VHhPZoaAgGvMxr05T8gZdxhFtbKnvW+
         wRSg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780561860; x=1781166660; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uUp2nauVBIiR2cPPWkeNPnidghO4x7PSw3VCdGOrypI=;
        b=MN2oxlRV7OATluSrf28sVbDAh8P8Uii/ZWf2VFRXGah8xbpeHOidreaDUV89RAVkTX
         2gy/FQUkv++6l9VNT4DkWWw7syxGbVdcp+r9LNAmROzgy9ckMjnTXG4JhScPeVm1bzYH
         t49o1R1Q6mzZ5+M7eCt6N2np1n5o9MilmYpe9GZ9dWjVgUIVngb+I979kJrkaZgmAd7m
         FW6WbruOKBnP+Tkh6desF6HmubK2hsf7N0z2UCC+mWMpTis6dMYyN8QzPt2DTojesbso
         e0QeXhC+1OMp1hSdstLfz9hjIkJQhzDjPKWjKxtzz10QRtPJAdRw1sjXzS+lvt2GYv8Y
         Cojg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780561860; x=1781166660;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uUp2nauVBIiR2cPPWkeNPnidghO4x7PSw3VCdGOrypI=;
        b=IPGc95APy1++h6A5+LFN1Nh5nUbDVH9LM2VRxkkU/FtYhWCCTQj1twBWlrT2ZQ10b0
         c+dQU66wGYjBxhoROOfEyFjASvY0FfxrCUBp3ktUajngwFBKUJ6U3mesbw+MEzo4CQDz
         ba+U48NL/t3RcYu9GawYf18yFulEHrSqiHQsm8Q+msrSI1pD+m9LwKrsS8IXaA4ImjnX
         hcq9vWdjX+vMEAA67QLf4+fQcRSmj120jywOjVCTptxvQVowV56vDYefqSG8oIDS4Rlr
         S86ne2E0BgxTK8DOb2fIFp+I+T/fdMwPtxXXaqOWLy6WImyt0YPmKzfVILWCgqDN7Ecb
         Q7kQ==
X-Gm-Message-State: AOJu0YxLAeue8GPM2a+oFWSwCfUTS/D+HflBnPOkvWW+N4W9XXMW3IFC
	fYu9hF6bg0/U+nBz1dOHp1rY+u6UlmlLVI/b0DQWp03kuyr7PjBUDah2vbepapYAXexJggaq57t
	HsMzALViwpOvXoIcdJa57PgiBDRLYZYoeZg==
X-Gm-Gg: Acq92OE/UuyU8vuoG4eK8gLpMmMlLLC1kkXfdJu/I9wijzlUwxH5+0+So03kQJxTjb0
	KYJYP769xI14U/khmr+zDy9YMJhsvtY3dczQhzo//9hp4idvBzo0oLz0K7UKogS4DCueENKfNGs
	9rfJORBkYp0K/kajTNwMlNsZbSYEW2LLIL0LF7vo14g6xuOGA7jm0WmUyZq+mYWiWSoQ4jAzzYl
	hzqFir1IUslZlR7DZxDPM6ogY2Of3OeRZmpVU3nnIX7mmHe77gjU/ahclrvLXMVNE45QwXAOgMA
	0AI88rUrq82tjVs/wP7JErhQHNmUq5mzIeiRxcBWBMBwvFBsHvip
X-Received: by 2002:a05:6214:493:b0:8a1:8b0a:6678 with SMTP id
 6a1803df08f44-8cece03811amr112118546d6.31.1780561860182; Thu, 04 Jun 2026
 01:31:00 -0700 (PDT)
MIME-Version: 1.0
References: <2QUP.1780507826891383486.LNlm@lists.yoctoproject.org>
 <e3cd9995fc428cb092e88419be866d6ac7b7dce9.camel@pbarker.dev> <2530010.1780561643797700469@lists.yoctoproject.org>
In-Reply-To: <2530010.1780561643797700469@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 4 Jun 2026 10:30:49 +0200
X-Gm-Features: AVHnY4K8DcUSk6DZSEXY42zeYH4UerxXlqgbFRqDX1m6R1vCss3ZIAhH2gTo5WY
Message-ID: <CANNYZj_tB=Y9drEvv=L6cNJk+q4ojuYiLpU1nciMnG1ZY8_Rwg@mail.gmail.com>
Subject: Re: [yocto] Task chain for population to sysroot-native?
To: yocto@lists.yoctoproject.org, H.Wulff@kruss.de
Cc: Paul Barker <paul@pbarker.dev>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Jun 2026 08:31:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66590

On Thu, 4 Jun 2026 at 10:27, H. Wulff via lists.yoctoproject.org
<H.Wulff=kruss.de@lists.yoctoproject.org> wrote:
> I followed your hint and this way it works. Thanks!
>
> But one thing I haven't figured out yet: Where does the binaries for the sysroot folder come from? From ${WORKDIR} or from the sstate-cache?

If bitbake finds a suitable item in sstate cache from previous builds,
then the binaries are unpacked from there directly. Otherwise, it runs
the full build, and populates sysroot content from the build (and
creates an archive of them for sstate, so next time it won't have to
rebuild).

Alex

