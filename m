Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.7254.1596444979337485339
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Aug 2020 01:56:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=bZdQpAgO;
 spf=softfail (domain: konsulko.com, ip: 140.211.169.56, mailfrom: paul.barker@konsulko.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF6F0E01F72; Mon,  3 Aug 2020 01:56:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE426E01F70
	for <yocto@yoctoproject.org>; Mon,  3 Aug 2020 01:56:17 -0700 (PDT)
Received: by mail-oi1-f181.google.com with SMTP id j7so16246094oij.9
        for <yocto@yoctoproject.org>; Mon, 03 Aug 2020 01:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=yYBX9f7TUbltHxFn6vTUaII5b8kidx6cAu2LlIvZEs0=;
        b=bZdQpAgOEyvWSdaYifwS40L5nJN8zKsT5fIAPnpCAH1PJ6XCoOckF9nvRl3BGc2JG0
         6nrOlPC9TFMfC96J230+aJI0p5z3lKK8Mu/9ZfKghiCSIf1h+JaC0uOm9QtFL+h2i+pl
         z9hxh+bqLQerX1GmMDJl40y7Jxi3I7WSia7IY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=yYBX9f7TUbltHxFn6vTUaII5b8kidx6cAu2LlIvZEs0=;
        b=Io1jUsfAHqY5KpXuTFLXfYO5h/n9255GySTH/X6roCHlI1Rekdj1Hj+oH9+xzSfZJK
         L7Muij3HUKD4shYQG07kg1W+1LKImaPvrvvREwMHn95G+zTzqbA/dsIthZ9NYxnSX7NA
         B6db5LVu4BgQj79IccKBHtk5V4yfXyj4yGCpWiqrDQWyzJ1ohzHNtEe8Hucjl9ATeHzB
         ENo0PrYzoLCBSKNr/xXB6+pi/+aD6hIkxsu+zsyHXKXGKQ4UMrMEKF3NfzEJlEj4vOsY
         oXVa1OZpfuAsgQd+S6RQiO8awz9DOrnQpeRWY4Wk4UFFDZhJja6WhtKlUnf1b5PYNoIZ
         EBvA==
X-Gm-Message-State: AOAM532BlszZ9jCezwD7i/sjvOry19A05xfQ5AipzTMM8MJvgmw0yHQF
	r7ukH2zze9Kl4B0ZklX9ecXPHROc77aH5dQf8NTwFyZTjD0=
X-Google-Smtp-Source: ABdhPJyWzdTtLJF5KIpUQ/6o7rEX8GWWgqjiL/k38yY/GkGowL2YuXqhm3zhW63wV3X6gjgHJ8WHGy+kvlPgTKxOGSU=
X-Received: by 2002:aca:670b:: with SMTP id z11mr11256850oix.6.1596444976279;
 Mon, 03 Aug 2020 01:56:16 -0700 (PDT)
MIME-Version: 1.0
From: "Paul Barker" <pbarker@konsulko.com>
Date: Mon, 3 Aug 2020 09:56:06 +0100
Message-ID: <CAM9ZRVvRYmxjUcm7BmCX6ArPAn7JaEhGukbU4zGhvedmc8NcFA@mail.gmail.com>
Subject: Mirroring meta-kernel on git.yoctoproject.org
To: Yocto discussion list <yocto@yoctoproject.org>
Cc: Ross Burton <ross@burtonini.com>, Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Michael Halstead <mhalstead@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

Hey folks,

I'd like to get the meta-kernel layer mirrored on git.yoctoproject.org
so that we've got a backup available in case of any issues with
GitLab. This has been requested by one of our users
(https://gitlab.com/openembedded/community/meta-kernel/-/issues/11). I
also think it's important now that meta-arm-bsp and a few other layers
depend on meta-kernel.

I can enable an automatic push from GitLab whenever the repository is
updated so all we would need on git.yoctoproject.org is a meta-kernel
repository and push access from the relevant SSH keys.

Thanks,

-- 
Paul Barker
Konsulko Group
