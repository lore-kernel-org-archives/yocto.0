Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E78AC021A4
	for <webhook@archiver.kernel.org>; Thu, 13 Feb 2025 08:49:20 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web11.6788.1739436552655940090
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2025 00:49:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TyHyy4D7;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6e65a00556aso5723426d6.3
        for <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 00:49:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739436551; x=1740041351; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RmVbaF61foG6JnS22C9udciCKhJU8tosnknR2l4FPpc=;
        b=TyHyy4D799GJtUafEwMO+TN/UmGvx4hfS7hahDXtwvsxXB6aBYPNR8kF1wwmskATlV
         6JT2Nd18OEaRcSTV9w5sWuA+ntKCvsCu8vecJmDMi/6QtKa+wn+TPtchRo9Q0Q45eQJM
         /hBrnm6xisQ2hhWUTG5KezIJ2oc8PSwXYwqit6cfDQ+hLX/OtWKzRmJ0pOs0bOhP3UN8
         pxnwC5Gm2fC9Tg+/fukB9sb5RTMGc22hzTUk0cUgdCOCyeWOYnza56WcS5Z1L8KtjfaH
         WcPPvtaNa0RBKZmy2MUA1CErhB/6BbeMMjJb9+/TTxKombPu+MmJfMIpnWDpIUTp+PYd
         DtUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739436551; x=1740041351;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RmVbaF61foG6JnS22C9udciCKhJU8tosnknR2l4FPpc=;
        b=PPXXo/ipjOk4i2GorDfmRDfyrfwl75x+txgDJtVDTqbnx4Xi+Rq807wcvkOt1t5D7/
         /nRC/8yhpiQ9ZgtcuvSkN8UJpVe0Kb0dXkFPw6dIExpVAhM4uUmUX6vJtZ7bEy6fIesE
         u0400JVxNiJTsWDDtLDbKurHPKGHUWYltQ6IPkCN+qhTVhZ/YZV5I66VVwOVlWikVeWQ
         ouEBjjGj2ZdRV2gx95WXdk7nXfhqlhmHcGCp6oIQHAKurEB3EDniPljLHrCtViXt2zNs
         pnruJsTGVLFtKI2LNmClASgV2HqQM7nBQzAemX2uNeCBqv5QlN+cfzA9SQwC2lf00oZI
         suww==
X-Forwarded-Encrypted: i=1; AJvYcCVU0wX9sutWqqkEm/BOVHF5ZK1FUcNlNys6o15fFCgP0TVHrb9HHYFHcqkX0Kp2BjFeR2S6Zw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yz8Z00xyleOXjlTodMtZqrlTQprjXZEVk8nXvjMurVe1bLWhZNg
	1wqN/xI7TMo9OrNo87qcVlN7j6d6vpS8Kmo8jagBcvHdz2dEOHJko2XJEQkiQTmXGUqaA3eZo/Z
	oSfZ51Wlwf3l2CVU2JePBWcl1WMk=
X-Gm-Gg: ASbGncuN+1kZNXA5wl27j/L2v+DD4fpQ5pYFeeGz5NP6CeFLPNDRn3/Y5mSc0nwGyxg
	L9KT6i0arMV9xRLRCFiT83h70CwDFyLqnWvATVpQ1VQTwmAxo5tdpspHQ10MDSkeAvy0J4rO7Zt
	ZnsbX+KFztFY0LUA1nXaRGrHUBwZPHGVc=
X-Google-Smtp-Source: AGHT+IGioQn/HX21SCcdt4wUc6EBCKKbTveiMIS/LW+rVpiqvnCNiIQFFITH7xnZquKEkE3ywKBBMhumdxIHsusM+sw=
X-Received: by 2002:a05:6214:5098:b0:6d8:aeda:dd93 with SMTP id
 6a1803df08f44-6e65c155eadmr46100436d6.39.1739436551616; Thu, 13 Feb 2025
 00:49:11 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb9Fr9MFy5uub2_pTRWmVbt96OWBJ5ty+eAB9Qn+LYa_Wg@mail.gmail.com>
 <CANNYZj-PbWQDa5hAc5X6sqHVMvJ0QE01XXwytya8rprwvSsqag@mail.gmail.com>
 <d22a4cec5e317e62f1f44d8d9a810cf4745ccb48.camel@linuxfoundation.org>
 <CAMSfU+6d7gvYkjC5sbUPu6D_hOOF43ZUnM_NMEwmLUxZn6ysSA@mail.gmail.com>
 <4e883a56eb9b74a5663d7ad258194d16b1c79912.camel@linuxfoundation.org>
 <CAMSfU+44qwScnoDP4As37TNHYvwx5mBmTdGEQgq_VVz7woh6sQ@mail.gmail.com> <CAMSfU+4MY-JVmWPUixJYiUrtKd2CXHrJuQ0sMJJrrkLzrvAuvA@mail.gmail.com>
In-Reply-To: <CAMSfU+4MY-JVmWPUixJYiUrtKd2CXHrJuQ0sMJJrrkLzrvAuvA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 13 Feb 2025 09:48:58 +0100
X-Gm-Features: AWEUYZl6ttCObkqINtPsH83f7gYmLGYKKMS_HriExcZOzdNMWmGsAp59cJtfpiY
Message-ID: <CANNYZj_8o=SHOn-kRBxzwc8vp3omCL290SA-jKkL_En1m2SWEA@mail.gmail.com>
Subject: Re: [yocto] [OE-core] Yocto Project Status 11 Feb. 2025 (WW07)
To: Yoann Congal <yoann.congal@smile.fr>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Yocto Mailing list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 08:49:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64789

On Thu, 13 Feb 2025 at 00:04, Yoann Congal <yoann.congal@smile.fr> wrote:

> I did not find a magic silver bullet that would solve everything (I discovered that Gitlab is way more flexible on this subject).
> I guess we need to find a compromise between what a github user sees and the effort we are willing to put into it.

So as I understand, there are no 'settings' in github openembedded
organization we can tweak and everything is through repos?

Then here's the plan:
- someone with rights to manage overall
https://github.com/openembedded org creates an empty .github repo and
gives Yoann rights to manage it.
- Yoann opens pull requests to that repo, and notifies of them here
- any needed github specific tweaks to individual repos are proposed
and merged through the standard mailing list process.

Alex

