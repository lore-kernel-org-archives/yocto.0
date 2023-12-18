Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EAF6C35274
	for <webhook@archiver.kernel.org>; Mon, 18 Dec 2023 17:26:37 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web10.49254.1702920388832242453
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Dec 2023 09:26:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=LfLQDmGU;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-40c6ea99429so33309025e9.3
        for <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 09:26:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1702920387; x=1703525187; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wqw8SR0HiiQdWMGZTr4CRRpQP2vSS1DMFL6s2BPQ2KQ=;
        b=LfLQDmGUpla/XKcTrp/E48R7mfCrNbrjjyeVqMKTeCr2MNcQ8fLbHaVgFf5MaMck8S
         ajCVAmRWH4VsURTRsoe84oen99r+rFcILGATTsz9M55b76phFTxCfl4g9PK1iiKzrWFI
         bOoCeok9XKR/X5+Wv2IlD577mY80sSKh9dMMI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702920387; x=1703525187;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wqw8SR0HiiQdWMGZTr4CRRpQP2vSS1DMFL6s2BPQ2KQ=;
        b=wBPP2srycyeEW+mCWxWi8pWsZyterNq1+2TvgoI4bExnDgoNp7cr+xeAhs1sJy2h8T
         crzliE8JEMSk3dtpWBgm+IQtvdfUfaUnyFizU6mJYGko3n8RsnD45QaOAqvKBSZVZxBl
         0CQneYjz+U/2wWUHkre2vv7u8j2eFbpNoHiovsDONTLy9o+yiURG/3Rz+XMoBu+eDq5H
         4hWKZKYaOHq915ApAFqOGY0P8MnotN4kBzhUjQToEnELq/BpCJHK4+c5V/KWrkzOXO+E
         +4QDz/Th/SrFoQnlzeRGiAFQTC/lPfHob1BRTmmkbdBquGsIdzTe0CBQyKbUnt5UvmFk
         Tg2Q==
X-Gm-Message-State: AOJu0YxQb8AqQSIw7SyJKPYnlgYcMGz+Y3I91mmJfd5LPRs6tsJJdesL
	caRwEi8oaYMLRaaJSBzIfHYVH3JAB5g755PZfwE=
X-Google-Smtp-Source: AGHT+IEeXS2nr7Wt5GRIDMGdnmPNbEMz7renvdto92KP/EOU9E+jvS4tAdrVIpuNRMNi6jbpzmXajQ==
X-Received: by 2002:a05:600c:2051:b0:40c:6924:5f9c with SMTP id p17-20020a05600c205100b0040c69245f9cmr2409120wmg.151.1702920386839;
        Mon, 18 Dec 2023 09:26:26 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:a720:6e27:acc4:d591? ([2001:8b0:aba:5f3c:a720:6e27:acc4:d591])
        by smtp.gmail.com with ESMTPSA id g20-20020a05600c4ed400b0040c31bb66dcsm42453534wmq.20.2023.12.18.09.26.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 09:26:26 -0800 (PST)
Message-ID: <87e7eaf6124cacd9c48a3a458473c8eea2b22257.camel@linuxfoundation.org>
Subject: Re: [yocto] FW: Yocto and Red Hat 8
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, steven.monsees@baesystems.us
Date: Mon, 18 Dec 2023 17:26:25 +0000
In-Reply-To: <MADEUP.17A1ECDABEBCB3F2.26395@lists.yoctoproject.org>
References: <MADEUP.17A1ECDABEBCB3F2.26395@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 17:26:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61970

On Mon, 2023-12-18 at 12:28 +0000, Monsees, Steven C (US) wrote:
> Is there any documentation or guidance you can provide on porting
> Yocto for centos7 to 8 ?
> I am currently working centos7 ZEUS=E2=80=A6

According to:

https://git.yoctoproject.org/yocto-autobuilder2/tree/config.py#n177

we can build dunfell on Centos 8 and are testing this on our
autobuilder. Dunfell is our oldest LTS and expires in April.

Zeus is EoL and no longer maintained or tested by us. If you need to
stick with Zeus, you'd have to look at the fixes in Dunfell and
backport as needed. Upgrading to Dunfell or preferably kirkstone should
mean things work on centos 8 out the box for OE-Core.

Cheers,

Richard


