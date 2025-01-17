Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33B32C02183
	for <webhook@archiver.kernel.org>; Fri, 17 Jan 2025 14:03:09 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web11.11145.1737122579772055921
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jan 2025 06:02:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YUMyRIQ6;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-6d900c27af7so22878056d6.2
        for <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 06:02:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737122579; x=1737727379; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x/b7gTXPHoYSB06sd/oX545G/7O+bxw+o4QdHJ51eIk=;
        b=YUMyRIQ6SBHBNHmigHgUtL4Ver6LUBdHzTFYQsCUOl7srXb/OmWrkFccKAIcjb9xHM
         prXbtMlCmHfLsBnNhwMZbB1Lsh2lgZPPQVuB66DOuy2peCZnH+ll7bRysCQqajZA/G6G
         cle0fn/yuybjVu9gZjQ2lRa+pjIf3ztfO5wzISf/EZJ1NMwynZXA/mDd04UQlT5GsdnL
         UhqyhvRFMNtokscvEfSHfcXC4Z0WknQ/hxW6/Wa7OYdsY8DV2yjVQ3uLQh3sx9kZM5p+
         JtqUTxkIbZOcKtvKrO8bqzC8EUmu3RDcHZOmNK4YFYLM1Dfrce0FhYn7zyM6dhoQtsxz
         TMOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737122579; x=1737727379;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x/b7gTXPHoYSB06sd/oX545G/7O+bxw+o4QdHJ51eIk=;
        b=gnd4q0AKaeq2CPSqOF1OaDkeMu85SENRZUy7rTwABXeAYlafZrZvO7Z+G/FcGsYU+R
         xh7KPIIZ0fXy3rDJimQxWdHQr0FZsSHKdrgYGDfrp8kvYufYm/jXD2HrNGPghJecy3bd
         SvPFDZkZ8aXlp2aWVKH/dXAzdrhr3QfpORwsHV62rha23HyzC0mlNC6mLjfX/T1DfIc1
         U5FBCUJWjhAVISEeWIQOBHoEJxO9L7pbBj6nmpdRRbRaGc8vpPYjx64EU27It8kKY8yY
         Go4HeHqQZu6OherKrVvyuqRu5xELovwq7FW2Kg9pGTCXVBA8yW4/i95jnXY7sieiZc2i
         NGbw==
X-Gm-Message-State: AOJu0YygvnHEnWNWrfxB2AUJ/r2Os1runBgVZrLyKmd1SUgh2Qwl87Kj
	fr7btm+/DWUOtpd0UGflp8wV/CaciE4EAiHM26GQftf8naMktyFvfru3QYBJAy5JCudWbbwXoKH
	Usk0JS+jjGNVzPI/Q9ZKondFTLtYzUCJQ
X-Gm-Gg: ASbGncshtZ1+q8ZmyTwU7zFnAKJwwXVE9M1Z6KhocOOXzpD3KYEIZhHRJbxALIQu9PL
	2arLt4HCqHx/gJ1Mv4+5eegkobnsS99rTXVJ9/bKAF+zAj/jDfkpWnwDWX91Pl0kKrEzqwIH1
X-Google-Smtp-Source: AGHT+IF2iFwi2klD4LWMspkIzC/F3bmeccZVxWKDe81wQv0m4/tciAls8+nKohWuozXoK9QPpG6VGs1/wmZz0xcbib8=
X-Received: by 2002:ad4:5dcd:0:b0:6da:dc79:a3d2 with SMTP id
 6a1803df08f44-6e1b2171505mr48458546d6.5.1737122578691; Fri, 17 Jan 2025
 06:02:58 -0800 (PST)
MIME-Version: 1.0
References: <Ri6f.1737122004068036139.nOLu@lists.yoctoproject.org>
In-Reply-To: <Ri6f.1737122004068036139.nOLu@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 17 Jan 2025 15:02:47 +0100
X-Gm-Features: AbW1kvaXFGmjm1Al3mSuUJzMKtmu-4Cdm5tx_NvcjaguXGcDFV5y6MtlkBz2sNc
Message-ID: <CANNYZj94udOxVo8C95Ou_goUSsSJx2_UcATAAFfD4Ma70JdTNQ@mail.gmail.com>
Subject: Re: [yocto] Advice for tracking down changes that invalidate sstate
 cache across builds
To: yocto@lists.yoctoproject.org, philip.dawson@datapath.co.uk
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 14:03:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64578

On Fri, 17 Jan 2025 at 14:53, philip.dawson via lists.yoctoproject.org
<philip.dawson=datapath.co.uk@lists.yoctoproject.org> wrote:

> I feel like i must be missing an easier way here? Or I'm going about this in the wrong way?

If you're using scarthgap or more recent release, 'bitbake -S
printdiff' is as good as such a tool can possibly be. I would suggest
starting with a simple experiments with plain poky, or studying the
selftests in class SStatePrintdiff (in
meta/lib/oeqa/selftest/cases/sstatetests.py) before running it on a
complex real world scenario.

Alex

