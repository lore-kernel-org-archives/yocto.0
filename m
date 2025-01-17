Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A406C02183
	for <webhook@archiver.kernel.org>; Fri, 17 Jan 2025 14:13:59 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web10.11469.1737123236208922639
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jan 2025 06:13:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=erk2thRP;
 spf=pass (domain: gmail.com, ip: 209.85.219.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-6dd5c544813so23328156d6.1
        for <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 06:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737123235; x=1737728035; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0JFM/fSJRhDHGSR0RdjzY83EQ1mknBLX504GB9w8FiM=;
        b=erk2thRPmpDPhZBBwY04EakGa/zuNixOoMKdHugGHw11QDcxQ9lW+58wX4y1rifZKV
         Wqn8audVe9aEvuppkqfE7yfs2WdA0VfRveaJLxDJe3MzUMX/aR2ELyg4tYO5s2U6NW+P
         glOQzsz3khjIgNF9qDRB36bPE+a2adtspgsH5Ai/80/wUJnq+u6fOotjo7Cw2w+kuMwV
         SRSgMZzd3Q5zsHPxDB3GpAeAvGKfgA2ZiXFeeGUE5Dd8zRuhTMXnJeICnAot2zLFIsA0
         V3V51V5ipitg8aYkoeFxRyjJwhhjORxj6RjFPqkIQgotoWjVfi2S1w8e6rXUzX5XNtsN
         gFwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737123235; x=1737728035;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0JFM/fSJRhDHGSR0RdjzY83EQ1mknBLX504GB9w8FiM=;
        b=EeinjMABs2DrJco2UPB+qIdUaAteY5pY7NErn7vTomfdrz1vyo8lCBxQEQajQoz98C
         WPeTgYOJ0TCHkF1FEQtAek/T3g8LeMDdDDg73R2NIQhUbtNWQxviXDIWjVOy0LRe13R0
         h1t2FLVM7PMR0LeJnQGR2vPmjWiX0XdSPTn8aeHEjnbS69Vyws0BtJDNN1lyNxrHNMyH
         qLJmsp7lLJPnP8NVO/OlyCae14FnP2II65xF2xUR/w6AVkLUBcCWC4i4oyzfICiRWbfI
         oStXPDiBbzN6+J8gkqbsfs1fQIU4UKyue+lRoShAl86veZAFMQXDZT14x60sOVQ1022N
         q7NA==
X-Gm-Message-State: AOJu0Yytp5Vzx3kPkD9YDC5WYqt/Up/Prw4vE+2Xrqe+EGBpAzKH0CeD
	C5R7Xa5sgmu9OmoHlD3bOxF1g+Z8dJ/4KTdssGWyPWTSRitEAdT4qBtWtYwfuEc6DzwpRA1NQQx
	R7nebMsYGBbK5HNgVqKTjPVqhJmQ=
X-Gm-Gg: ASbGncvbEIh7VG6ZNs568EINby+4hL2DWfxI542PH+Ojkm6puqykLblPXmkouccYJYR
	qrG1e1iKlbeA67OixZZqV/Im/Urwq7hnHpulX6tO7agVxXsPWcAPt8imWkeiLmbUZPg2ENS6P
X-Google-Smtp-Source: AGHT+IEfSESz9lxmSx3cI030Ogx8rxLlH1hF0DUjOCsrU6HqECEfW+vWuolp1fe8alVoJ01v0ScajQvV0DNGy1ZUeF4=
X-Received: by 2002:a05:6214:5298:b0:6df:ba24:2af2 with SMTP id
 6a1803df08f44-6e1b21cd37amr44727106d6.25.1737123235342; Fri, 17 Jan 2025
 06:13:55 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj94udOxVo8C95Ou_goUSsSJx2_UcATAAFfD4Ma70JdTNQ@mail.gmail.com>
 <25943.1737122758834735998@lists.yoctoproject.org>
In-Reply-To: <25943.1737122758834735998@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 17 Jan 2025 15:13:44 +0100
X-Gm-Features: AbW1kvaepbggabktnm3M4stms3CX2f7pIff6yoy0MzwvQROW4v2c7PgfZB_-c5Q
Message-ID: <CANNYZj9uU-4qeTBhhYVb9-1TZkrH4m_oFSRFG0o8bkkPBKrFCg@mail.gmail.com>
Subject: Re: [yocto] Advice for tracking down changes that invalidate sstate
 cache across builds
To: philip.dawson@datapath.co.uk
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 14:13:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64580

On Fri, 17 Jan 2025 at 15:05, philip.dawson via Lists.Yoctoproject.Org
<philip.dawson=datapath.co.uk@lists.yoctoproject.org> wrote:
>
> If you're using scarthgap or more recent release, 'bitbake -S
> printdiff' is as good as such a tool can possibly be. I would suggest
> starting with a simple experiments with plain poky, or studying the
> selftests in class SStatePrintdiff (in
> meta/lib/oeqa/selftest/cases/sstatetests.py) before running it on a
> complex real world scenario.
>
> I'm unfortunately not on scarthgap yet due to our older PetaLinux version but will look forward to trying that when we get round to upgrading thank you!

I don't mean to be rude, but you're better off migrating away from
PetaLinux to a direct yocto setup with xilinx BSP layers. In my
opinion :)

Alex

