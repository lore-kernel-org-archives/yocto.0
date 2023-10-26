Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3AD90C25B48
	for <webhook@archiver.kernel.org>; Thu, 26 Oct 2023 16:17:48 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web11.75145.1698337065621910449
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Oct 2023 09:17:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=F1j/SSPz;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4079ed65582so8274955e9.1
        for <yocto@lists.yoctoproject.org>; Thu, 26 Oct 2023 09:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1698337064; x=1698941864; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sbCOGeM4e9lDQkC01QFU1tv0WrEu4OLxIy5BkFj8RtQ=;
        b=F1j/SSPzkPlJtpDtVooqa9Z2M5/E+u4Rh6pRQJd88HX1osmYFSl/+mSqpdUDE472p7
         I9ysRcgLl3ubkzzBi47eMlS6tLsTdV/qmbRkPCfu9O3fDfwB5SZwQzSP+nwmu5V278Qy
         uRG3wSOFo8G79s3u9f/s0zqwqjHrskxjlRrPM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698337064; x=1698941864;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sbCOGeM4e9lDQkC01QFU1tv0WrEu4OLxIy5BkFj8RtQ=;
        b=EWc4nPYaCnPBtxH6lvoP+VMxUJLtg/qaqc3sie6H0F1wpxOf3rujZO2n40n90b57/J
         Fu/q4GQanY9cN28j0NsHrr6wuHKXuu+d0bVHa0hq4IkcslqJ17sRlqloK1fPn5Kxoi1S
         w4ckTccoSNUuf3uMJvmesXjx1jwtSGlIZmoiJI6LRny0ZYYYNuqZSs7uQN0y/qts2ZO/
         Pgvn9fVgmvPqdd2nSBLEVqAs195vrlZApFp6Kw6KZ2VZFmacjQaRnzRzbwkhaxE994FL
         J/RMLSfabWNqdOb8NAzImHJAPuEUkdn+lZgyw6O2sPYK6rZfKxr8mwPD/68w69madcdR
         Ddug==
X-Gm-Message-State: AOJu0YzgscIdhQ7234/wHI5Bxb20BXsu4ZU91Re6kFU7Q1x3CbgkP/+t
	b5RcFBZNqEvMEW2KwiemL3uAIw==
X-Google-Smtp-Source: AGHT+IFSK0jNnf1/7A0Xym5e+QOw1E1+WvDGXi9/PtF8BHXQHqQzJmqbRX3bwoMi1FH2Wj4uxpRZDw==
X-Received: by 2002:a05:600c:1e11:b0:406:53aa:7a5f with SMTP id ay17-20020a05600c1e1100b0040653aa7a5fmr238816wmb.10.1698337064049;
        Thu, 26 Oct 2023 09:17:44 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:aeb5:bfd7:dc1c:82a3? ([2001:8b0:aba:5f3c:aeb5:bfd7:dc1c:82a3])
        by smtp.gmail.com with ESMTPSA id u14-20020a5d468e000000b00323330edbc7sm14584873wrq.20.2023.10.26.09.17.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 09:17:43 -0700 (PDT)
Message-ID: <a1220b225b84ab44e8d1f6e94b88fb4f2104a36c.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v3] AUH: Add
 Openembedded auto-update-helper with list of layer to test
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, David Pierret
	 <david.pierret@smile.fr>
Cc: yocto@lists.yoctoproject.org
Date: Thu, 26 Oct 2023 17:17:42 +0100
In-Reply-To: <CANNYZj8bZv_VHPsnaGPa_i2e5NT9683a-3szQTJXKWu9cSZeiA@mail.gmail.com>
References: <20231026130340.2070302-1-david.pierret@smile.fr>
	 <CANNYZj8bZv_VHPsnaGPa_i2e5NT9683a-3szQTJXKWu9cSZeiA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Oct 2023 16:17:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61494

On Thu, 2023-10-26 at 15:53 +0200, Alexander Kanavin wrote:
> This looks basically ok, but how can this be tested if needed changes
> to AUH are still in review?
>=20
> Running auh over meta-oe layers shouldn't be defined as steps that are
> run one after the other, but as separate parallelizable jobs, e.g.
> "auh-meta-oe" : {
> ...
> "auh-meta-python" : {
> ...
> etc. They could use a job template so you only need to set the varying
> parameters (config.json has examples).

In general you're right, but for AUH and meta-oe, I'm ok with this
being done serially given what AUH does. We don't really want 11
workers working on this at the same time?

Cheers,

Richard

