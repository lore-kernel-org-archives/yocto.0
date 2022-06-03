Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E3D2C433EF
	for <webhook@archiver.kernel.org>; Fri,  3 Jun 2022 09:54:06 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web10.5545.1654250041434667308
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jun 2022 02:54:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=YFzbQKiK;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id k16so9730082wrg.7
        for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jun 2022 02:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=T6poXCKGRFoiDny8C5N7xj4MatIP+fiquboV7Rr9RwY=;
        b=YFzbQKiKA8r+HT9KV7D0vAcLZHio17P4feiKxrXX9KESslFZwcKRkEHMIAb6NX5hvN
         saNC7X5a+2SIpa//UeZ4m/NjNOcChEQDIMCbTN449rZCMrHR/wwx9Tcc1vYaBHRi+Lj5
         Y3YvwSUT4p5yM/odBbY+P0ptm8DWCMU31KAAg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=T6poXCKGRFoiDny8C5N7xj4MatIP+fiquboV7Rr9RwY=;
        b=XJcfmSBqmH1MjjMU7LS0W/L3thNu9LG9FGdQmFcY7VIXHhSuNgtTgd7FLo33sBA0Ab
         8IHfO/Zw10fMSgj9aHhiZxb+8LTmns2SDL3BMMLbxMuXE3+JAnEtevPz4sder/L3bvKi
         tkhAM1JfEVPQPXsV+Te6Ck91Pi5dF7xZ0lBeWysRcyOVF5pfoFzFF5uhvxMU7XoLDIS5
         aMk62DjZwoJMNnNs9fcQfmGZWhFS3CMWSKRFyGn+As0/N+n0aG7ZJsdpypFQC32YQASp
         BDrJifKcyv9OLrACcKgpnDAS/cDBHVhf8/P6BXhRxC1srhs/mn+zYPgwHyt/lozpaM7X
         mpJQ==
X-Gm-Message-State: AOAM531Grj/HO53RJt7EIqXgUkD2iZREOEZq2zXxc/w7jwMbyso+Irzs
	3SOxlzET/PizoBLowtfAHIUhpg==
X-Google-Smtp-Source: 
 ABdhPJwNxkRtvoPGpChd3UQf1YZeoyhUnnDfRnl425D69GscHHi0PvPo/qIBS0GfPC+o+9KStbbxwQ==
X-Received: by 2002:a05:6000:18aa:b0:210:eef2:1137 with SMTP id
 b10-20020a05600018aa00b00210eef21137mr7362970wri.134.1654250039660;
        Fri, 03 Jun 2022 02:53:59 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:2ef7:d396:b7d3:7f8d?
 ([2001:8b0:aba:5f3c:2ef7:d396:b7d3:7f8d])
        by smtp.gmail.com with ESMTPSA id
 c4-20020a7bc844000000b00397243d3dbcsm7887107wml.31.2022.06.03.02.53.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 02:53:58 -0700 (PDT)
Message-ID: 
 <f2cf201625144cf18d2c12197613ae488d22eadf.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper v17] Add a banner on
 the old documentation docs.
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Abongwa Amahnui Bonalais <abongwabonalais@gmail.com>,
	yocto@lists.yoctoproject.org
Date: Fri, 03 Jun 2022 10:53:58 +0100
In-Reply-To: <20220512163930.35811-1-abongwabonalais@gmail.com>
References: <20220512163930.35811-1-abongwabonalais@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Jun 2022 09:54:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57253

On Thu, 2022-05-12 at 17:39 +0100, Abongwa Amahnui Bonalais wrote:
> Script to add banners to the old docs and outdated dunfell docs
>=20
> Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
> ---
>  scripts/docs_add_banner.py | 83 ++++++++++++++++++++++++++++++++++++++
>  scripts/run-docs-build     |  2 +
>  2 files changed, 85 insertions(+)
>  create mode 100755 scripts/docs_add_banner.py

This version of the patch didn't run due to a syntax error. Given where
things are at and the fact we really do want this in, I've merged it
with a follow up patch to tweak a few things (such as ignoring symlink
files so we don't apply it twice to some files).

Thanks for working on it!

Cheers,

Richard

