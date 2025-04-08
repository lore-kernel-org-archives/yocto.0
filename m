Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41A4EC3600C
	for <webhook@archiver.kernel.org>; Tue,  8 Apr 2025 10:01:29 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web10.71584.1744106485217897294
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Apr 2025 03:01:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nY81hNID;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-6e8fd49b85eso83648266d6.0
        for <yocto@lists.yoctoproject.org>; Tue, 08 Apr 2025 03:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744106484; x=1744711284; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=F2F+hduqyDZL2t76K1EflBmssRMq2KGGbKgL1Dm4p5M=;
        b=nY81hNID0iPDELD7Wz9N6DQedB+54kBqw0giKv67AiSsFS+0OK7k0iL/SowSd/E45M
         trG8qoEXnMPy7ele3d0HuVrxL3y7MeLstlJId7nE9AmLbLaKpIcF7FG3IvRM6umtkGfJ
         gMt6BA3nJJztfSiyg85sW4b3x8ZvXv/OClCEmFs04h0fLU6kyMxVyzzpseDaF+chAjrX
         tjXX8Vo73fiAC/MF+Rufq2YcekID7f5s7dsaUJUIug9tEs+E9dSVHsqgKVWQAxKE2B8+
         dv6UW/Kp6LcfZSq/r3n0MXdsEU/ft9fAE9IoOYo1QW3awhI3/m3/Kke0K7/xNIAJ8HDA
         HsLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744106484; x=1744711284;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F2F+hduqyDZL2t76K1EflBmssRMq2KGGbKgL1Dm4p5M=;
        b=LrOwToS2KrSgoQTYSCbolixd6s5wOgmRZPkNm4SsUpGqBaKbn4OwRc5JajoNBN4djs
         NxDJX0iOGRozUogjZKCK97w2y3vcPVlUJ39cWPdpJUTazM0u0PkU2Gip3EPJXIl9R0d/
         lEjFjlEqvvOao0+XG2WBbE3LgRyZDxAhqpIpKfmwWJ0WZRJONQtu9npOphl8zZwqFkxU
         T6jIAI1OOmxV8rYJFRm9SKFL8sKzmxB1+WkKNBLeRdtZxEyM/k5CB5hNM8qf0lrEOldr
         wAVKf18cKCqnBRGKnMW+4FOSjbNqCRa7n4qV+QCsAX+jAqTQz1lYdQVhHoNxuoHTO0pI
         vJ2g==
X-Gm-Message-State: AOJu0Yz7vT5l/DDIjw6XS6Gy1tLW/S635+tBS9A0PLy5KA1yotro+v+L
	cK6bUBQv69/7EHacm3uNeteI/BMXus/fPc1pETkSTQh34SE9vlKA3wOnXdPwjZfNYBcgovQ5y7I
	zZqUDNaH14s2AkXCIA38kAq/uw3bfsZ3R
X-Gm-Gg: ASbGncs6gerWV5S0mTH5Dv6t8ubqU27ogDeso+vFr4yR/iTywWF7KwuVSVgWCYM/dfe
	AI2+NyeRSdmTr18XE9IwCJO1TI0bbNuAmpeAXTjTUZGp3I3gubcv842o362ttNHxQUxfv189ii8
	6Xky+uKt1cZNTIiSIrIQqUDpac/VC75OV+FcfSU7lppTXKP2OvrymCwx36Xxry
X-Google-Smtp-Source: AGHT+IHiEyOU6k3gCbO/PoGsbSFAmhl7U5HSSw+JJkXm2HICq6fHBMShjGhxBhYMt7X/h93waK98sLDtU8TfWhg9RS4=
X-Received: by 2002:a05:6214:2263:b0:6d4:1680:612d with SMTP id
 6a1803df08f44-6f00214c82amr219075416d6.0.1744106484117; Tue, 08 Apr 2025
 03:01:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAJo0Az5-Wy8RyJMcNG=0XynEaJ30YUr9eRXno0ZC6yKB4bQYLg@mail.gmail.com>
 <183447646FA7BED4.31078@lists.yoctoproject.org> <183447EA8991BD5A.31078@lists.yoctoproject.org>
In-Reply-To: <183447EA8991BD5A.31078@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 8 Apr 2025 12:01:12 +0200
X-Gm-Features: ATxdqUEyOOBMiuTb4Bd_BzZZMLlcmQls5_3IusxiOjRCNvoWIDnqCmZwvzyVzG4
Message-ID: <CANNYZj9ZEiVebtxiaXEsFSR_2EmYDq5Qx4M3wskpKdL0mZMvXg@mail.gmail.com>
Subject: Re: [yocto] [auh] Setting up AUH for non pypi recipes
To: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com
Cc: Tom Geelen <t.f.g.geelen@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Apr 2025 10:01:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65119

On Tue, 8 Apr 2025 at 09:40, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>
wrote:
> On second thought, maybe it's actually ok, and the bug is in devtool
> upgrade. I'll look into why it gets confused.

For the record, devtool was never updated to handle S pointing to
inside UNPACKDIR properly, particularly here:

meta/classes/devtool-source.bbclass
    if os.path.dirname(srcsubdir) != workdir:
        # Handle if S is set to a subdirectory of the source
        srcsubdir = os.path.join(workdir, os.path.relpath(srcsubdir,
workdir).split(os.sep)[0])

scripts/lib/devtool/standard.py
def get_real_srctree(srctree, s, workdir):
    # Check that recipe isn't using a shared workdir
    s = os.path.abspath(s)
    workdir = os.path.abspath(workdir)
    if s.startswith(workdir) and s != workdir and os.path.dirname(s) != workdir:
...

I'll see if I can tweak them without too much pain.

Alex

