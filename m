Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A2C1C77B7C
	for <webhook@archiver.kernel.org>; Thu,  3 Jul 2025 10:23:55 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web10.19204.1751538227136497785
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Jul 2025 03:23:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LIA2PRfj;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6fad3400ea3so72770186d6.0
        for <yocto@lists.yoctoproject.org>; Thu, 03 Jul 2025 03:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751538226; x=1752143026; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YjGQ1JLlf65AD1jnxXdwmLpBFIdfRARbFFIwM2UtOfk=;
        b=LIA2PRfj8GQRpIdzO1tPwGhy+BQ2s4ZkvEFDP/K97AiHCh3WNaPWSHR0+qzQ+WK1Q8
         UA16MC6vHVEUOd9eoGVjbb+Mpyx6QKQUujbMF/pdF8gB33aPfrqg1JeIsfUscOEeLKDy
         w33zrrNFOXEpj2pBTRt3d39Wij06+oDnEdZ32uG8Bl0y8G/YMMlpp9xZ89dbzrpJTS4o
         28xolIV5wW6Y/XLLJGDt4z/pyAUwL6Z+zgivmFp4toSNhDC90Jv/tWxQVHW54ExUUNdH
         maOtIFGNURHk083XN5ZdhmRy8tUYtS64LRe5OlDJn5FPXwgLR1/68p9MkIxydD/zsCOo
         TAVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751538226; x=1752143026;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YjGQ1JLlf65AD1jnxXdwmLpBFIdfRARbFFIwM2UtOfk=;
        b=JUD8jV8EkrjsH7qNDUfqZJv2Itr9+39JFW4gy0hRqZtj+Uvg2Wrc5cnMqgoC8c2VMX
         QwOVyyIX1lwCahCd+WDlAoGo4vRcU+Wb8rqZ55Hblzzc2VHb3/w8MWYVEDzaT3UDiEvH
         OYmAw0wJ4PKNFo/qCcVX+sL2EIik0uWLJ5+AOkT/7Q2/itKkbMtAZ7kzG+nr7pk+goho
         Arz5p8g+HCJ42v1d1wN1coeqr9boqqmTW7Fb4hADwRfmSj/1vVjKczy3hBXgGxGhKKbB
         kjdg44Msmy5iFN6OAKWkdEiPrxZxU1rxBreHPKIdQ0W/Ni6gVml7gNUfbkPQrenNyCtK
         S9Yg==
X-Gm-Message-State: AOJu0Ywwlnu5NSDg+NW/CXTwa12saUnpaxhRmqCp9lcwp1W5eGGvQHcy
	Joh57eCM8reR4/7Szu3uDQ7OsYAPsaU2xA0+ZH6wbeRqA7o1nmHsq6nVhnWfyt00SMPbi4Lat4S
	KsvA1Nn79oFwMH9pnrVBR6BDlOMtCym0TmQ==
X-Gm-Gg: ASbGncsy4pgk9GSRgWkABFS23fMoOIQWiPQxVmzwCOBfWJm+nquOH8By8Yb9vKFlgIZ
	3+fCI/I0aru1euPSRbpLHOU6g6CP88hbZPrI8Beu1jgQPuX6Bwws/hV0A1TVrb1jZxvW0GUctGA
	MxK25ZJPI+q8xhqqp58xVDzKGMV/THxp/JZGoBiDsk
X-Google-Smtp-Source: AGHT+IFfJ18v/OO8vsjUZ0mpWMYbGCLOJp+IWazp0d0BkZw2nwCy4lXoi/5nhPvqiOOYSim2iEfC7NS/u1WdswlweJ8=
X-Received: by 2002:a05:6214:1242:b0:6fd:75e6:bd33 with SMTP id
 6a1803df08f44-702b16c4e9dmr87967126d6.0.1751538226061; Thu, 03 Jul 2025
 03:23:46 -0700 (PDT)
MIME-Version: 1.0
References: <0e853cc0-f521-4a1f-8421-24bd6093f901@topic.nl> <6828.1751537784790282883@lists.yoctoproject.org>
In-Reply-To: <6828.1751537784790282883@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 3 Jul 2025 12:23:32 +0200
X-Gm-Features: Ac12FXztT0LqgPENt7qZzvMzB0tGzVGpnYe86sVru8BY_xy0t_CgMzjdYK6wYVA
Message-ID: <CANNYZj-6mE-j=cOUfbDuFb2She1OQzmmeWX048v-yo+eAKqGSQ@mail.gmail.com>
Subject: Re: [yocto] Controlling host CPU utilization (avoiding building on e-cores)
To: yocto@lists.yoctoproject.org, akarnil@witekio.com
Cc: Mike Looijmans <mike.looijmans@topic.nl>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Jul 2025 10:23:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65602

On Thu, 3 Jul 2025 at 12:16, akarnil via lists.yoctoproject.org
<akarnil=witekio.com@lists.yoctoproject.org> wrote:
> I hate to have asked an AI for this but with a few fixes I managed to find a way
>
> Adding this to `conf/local.conf`
>
> BB_ENV_PASSTHROUGH_ADDITIONS += "TASKSET"

Can you ask this 'AI' to explain why the above is important, and what
exactly is affected by the TASKSET variable being present in
environment?

Alex

