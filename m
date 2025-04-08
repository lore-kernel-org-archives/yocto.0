Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 659E2C369A1
	for <webhook@archiver.kernel.org>; Tue,  8 Apr 2025 07:30:58 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web10.69698.1744097452165653192
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Apr 2025 00:30:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=C/ZZX5vc;
 spf=pass (domain: gmail.com, ip: 209.85.219.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-6ecfa716ec1so53139896d6.2
        for <yocto@lists.yoctoproject.org>; Tue, 08 Apr 2025 00:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744097451; x=1744702251; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=j/VPKC6uNvqSODmMmhmg8c7RdhFL4iqX1KETAVFp8y8=;
        b=C/ZZX5vcghv+iNX7vqr5h1+cz/WMdkChpyQJ/1ywWiDivAtaMafZqlub7yT4Qt7SGw
         td/mBSBTuinVMapCxnifjzSzygmwfD+tGbcfoj9UWgByL2XkLsMtHJzbN4SLgcJCiuxH
         ehKf12hCKVFBT+63tM36oD6AeX+jwxnRR7nk4tM/7ex1KdeP4nuKx1k8UYdmgAnZxLOX
         u9KJZs8/jPTZmUUW0E+zGVJ8yDyB1GYgUQQ3o8q7hAai7/T1cUyeMlsNVs+hoUXWinqF
         jtPp6YG71YoUh7y05reyHKKjWoFVXQejpPbjO+JC9CbLwUbgssbmaFbrlU4MDEYCCf5T
         OS/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744097451; x=1744702251;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j/VPKC6uNvqSODmMmhmg8c7RdhFL4iqX1KETAVFp8y8=;
        b=NAyp7ZS/a54OojXq6zCHSXnWE9YCUz1q6o6S/qUhEqEqcp+W6s0fcvIVjfdboOWY01
         Ra3tuW4MWpnwt3dBEnAjCv3phqeLsWgITcPxjCKfQDWuc+KB7ucKysxuMepaTb+Ou2Ci
         m1jQaBG3dZ0LFhpOmr1o2lrDUwg4w5hZgShzhqLW3yCy+AygtLB76VznhyZlekNYk6Co
         VhIP3SzG3xmoRN7O1PFsv0r0ghKDTtjoTifB+G6xGznimYJ4KsEtMT2T8oOKr+k6QNF7
         tYUVYGc6OlhdZWsWgd3xr464zZb3EgFhXtdd+QjVimJ5prVti4AZyG3gm5pcIQTEFffa
         OUcA==
X-Gm-Message-State: AOJu0YzW0QgCdJlCQnFuXYCwJWeinc6xWTKO6itrMdoeihMlUkc6JhiN
	aaONPkJ/aXdnQ8vXwPb7BobpzbUBFea5Oxdn/p8PLxPB8ZYJTtzg77y19vS7apS7CPUcfdlo6FT
	v4H9WOSN9L53Ve1Bz3ZxOLtY/UE4=
X-Gm-Gg: ASbGncvT9AH2adesJ4ajQyuYVSUmsxQBPslliFY1s0Rxnucim8y9FJrb5BBj1rmtSsX
	tFIr93LOrpsxLk35xugxK0DGO2EX8A4uA+QLppxJyh0CtBsfGyKx3UVxzxPGdaFGPE2gIOV244M
	5W+/uCCOjlVSokjANIIjpfAwQXipShFYf/hy8XGPtW9BuM+AaS3ZvCPbIQRC2r
X-Google-Smtp-Source: AGHT+IGqHLR0OtUIAeJcy0aQt56w2QPkIQwSbFJNCr3T23snsFhtWeuqaFv2zmA5sgtiJg0+dVYnd4zLY31AbIKHriA=
X-Received: by 2002:ad4:5f46:0:b0:6e8:f9a9:397b with SMTP id
 6a1803df08f44-6f00df58788mr259390746d6.15.1744097451237; Tue, 08 Apr 2025
 00:30:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAJo0Az5-Wy8RyJMcNG=0XynEaJ30YUr9eRXno0ZC6yKB4bQYLg@mail.gmail.com>
In-Reply-To: <CAJo0Az5-Wy8RyJMcNG=0XynEaJ30YUr9eRXno0ZC6yKB4bQYLg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 8 Apr 2025 09:30:40 +0200
X-Gm-Features: ATxdqUFVBJS7BwwOarqf5uM23m2eDXZd8a7cAAeIGVCr-juT-mYMxjTf-dbNB4U
Message-ID: <CANNYZj_zBk=E3X_MyuX43me9sXcAYumgWU_Hx2g5i_T_=S0d-w@mail.gmail.com>
Subject: Re: [auh] Setting up AUH for non pypi recipes
To: Tom Geelen <t.f.g.geelen@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Apr 2025 07:30:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65114

On Tue, 8 Apr 2025 at 08:51, Tom Geelen <t.f.g.geelen@gmail.com> wrote:
> The git configuration necessary for AUH is correct (otherwise other
> recipes should also fail). The hash it uses is correct. So can someone
> point me in the right direction?

S = "${UNPACKDIR}/git"

This is not correct. S should never point to inside UNPACKDIR.

Set it to the standard:
S = "${WORKDIR}/git"
and upgrade will work.

I just noticed we have a couple recipes in core that do this, they
should be corrected too :-/

Alex

