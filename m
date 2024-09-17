Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9987CAC589
	for <webhook@archiver.kernel.org>; Tue, 17 Sep 2024 15:20:39 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web11.23496.1726586434754310864
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Sep 2024 08:20:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=aKf4rEIP;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2f761461150so62601211fa.0
        for <yocto@lists.yoctoproject.org>; Tue, 17 Sep 2024 08:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726586433; x=1727191233; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GR9KINMilis4ARHPASjWhwycRujjLABvkhYbsQzfWM4=;
        b=aKf4rEIPYJvFUHZLmCMIVRxPGFP3Gft0qEjC+jhDPl9ztlgXP1N082lJSLbrFjigOh
         7LyL2CTwRJcb1V2bIE6O+wKQgkNcjncG9SVl/2w/hs9seAR9bVBrL8bXjGsgTaQ4MesV
         M4uv9BBPS/U+pb2BnWaAH54Ht3NC/YBO/wiFfkWBCXbXnnUFrcv0kSuAx/u41LMIPnlg
         naia8yOl4+pvOXNG1IAeEZSa36OIqbmA8nLin2UOq4GCDws6fSZCDuvKqTkHMx1PFS6V
         5BO8nGKklX08WClLniEZ7S5VwfYXNZypbAO91KS9Uef+wzzH0lwXBAtNAwaYEHl5MvEi
         jd4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726586433; x=1727191233;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GR9KINMilis4ARHPASjWhwycRujjLABvkhYbsQzfWM4=;
        b=uTJ8p9UsXumgxFUg8QMgSpxyAACtDkrebR8hlUZT2ENfkRJt2uv7kF+VYfbSEZ81wD
         2/phf/2Y10WJQjH9lp+jX1hwlMnhjfBztnAGBUg9oY3NWHblGoM736mphL9eFB/I8aoe
         DhTfre82stQVunPpDbTMx+t2Ut7hHQDKi3Dq0SuEcepY85LQKlSonnEU/3I6n/QI1XRy
         kH9etVhO+EAObwIbP5M4Gzhs1zl7DeaeaucCH/GA1f1zk7G9O8Gb+3Arq5xYKH/DhVop
         mP/mUn3DwJZvdR86MUKQ31fSVXiFLTSOC4AwjgktfLLyE4T8UlhylMT9+Uq3/kOxA2Lp
         UHjQ==
X-Gm-Message-State: AOJu0YzZQBK07A6452iNvkBGtZZuMGzXpkU8bAKhXeX4DcUz3avbaTuk
	IVm65fhCMqJ3qUiUx+ZmQLEbZmTCLDlduCu0LxBDCE1TuArWt7zsBpYe3uUmaSc0Bx18boEzMkR
	96Um6pzfrEkgW7bUwhFNWgJM5qK6RoVI0/3U=
X-Google-Smtp-Source: AGHT+IE5dqTsHK2zOEb7r+ERFH0ldXEhb1aoHvyynWWR/Mmi1/4JGObNGJ+DcSL/Qfg9R5zmc7Gv29xFrJPQtJmDSI8=
X-Received: by 2002:a2e:be1e:0:b0:2f7:94d9:426a with SMTP id
 38308e7fff4ca-2f794d944c8mr98423471fa.5.1726586432293; Tue, 17 Sep 2024
 08:20:32 -0700 (PDT)
MIME-Version: 1.0
References: <Sc5N.1726582968380977142.qb0i@lists.yoctoproject.org>
In-Reply-To: <Sc5N.1726582968380977142.qb0i@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 17 Sep 2024 17:20:20 +0200
Message-ID: <CANNYZj9V8mM5eCn+q0anFaq_wV98wweqNzbpW_f7ihaeGBgcXw@mail.gmail.com>
Subject: Re: [yocto] sstate fetch errors from network sstate cache server
To: yocto@lists.yoctoproject.org, philip.dawson@datapath.co.uk
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Sep 2024 15:20:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63853

On Tue, 17 Sept 2024 at 16:22, philip.dawson via
lists.yoctoproject.org
<philip.dawson=datapath.co.uk@lists.yoctoproject.org> wrote:

> From reading other posts I accept this is probably some issue with our network that needs to be sorted, but I don't have much to give our IT department to go on other than it's not working reliably.
> Is there a way I could get yocto/bitbake to produce more logs or diagnostics as to why/how the fetch of the siginfo part of the sstate cache is failing (before the warning/error that the local file doesn't exist)?
>
> Or do you have any other advice that might help?


Yes; run 'bitbake -DD' and it will print a ton of debugging info
related to sstate fetching. You can refer to check_bb_output() in
meta/lib/oeqa/selftest/cases/sstatetests.py to see how that output can
be processed to extract the critical bits about the failures.

Alex

