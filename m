Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A3FCC7EE23
	for <webhook@archiver.kernel.org>; Mon,  5 Jun 2023 08:52:32 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web10.2831.1685955146599303011
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Jun 2023 01:52:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linaro.org header.s=google header.b=fSU4TK12;
 spf=pass (domain: linaro.org, ip: 209.85.167.53, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-4f6148f9679so3474838e87.3
        for <yocto@lists.yoctoproject.org>; Mon, 05 Jun 2023 01:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685955145; x=1688547145;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jA6fGrp6hry+jJIBkxXTgKcHbmM0Qm3EmTnP88d87nc=;
        b=fSU4TK12xmY/iUzeaxDV18QNgPiNmTi77oKjZUWjdGei/r2t4SzUCA1mPGOvzEd2g6
         GAd5jIKkZmzU6+s0lROBR6cl1YL9k3VaTFx7TShrkVqKJ6uDCpSY7pg506sdpKT7N6tB
         m5d1IrfktUIlJbXqt6v3RfYF+B6K9m89+DMx/OuBnay+Jd3AfiB1+5xAzDwPnfPt4pjk
         4HvocsSnZ4Y17+T+baBgbBda9pUDoMZBCwofSSjBRgUTrIxlrJojuPe6tBucC6TcxBYv
         +PYHNMtLWbgqc8E9G+KqYI0VU8wyc76Gx6bTmb7QT3JoSJtm15OVPP5P9nXkeAgF753Q
         FMTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685955145; x=1688547145;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jA6fGrp6hry+jJIBkxXTgKcHbmM0Qm3EmTnP88d87nc=;
        b=EhrUA6/ncnVncf1gbA1+RdpZUwLKoEKykA49CBc/wb/k20YpBBisRi5tPD+tJxGuKO
         1YF/3Y0Fadb2zbrl44fJcj400u4iSpzk1XN4pCbDFvntIfp8RBqAHWyfEToHZo5fMWjk
         Q3q+/8Q5ubYKQbV4oLYZxnAfWX91whBFwFyZJw3Zk94pyBhMLnJJz2h+FWU0JI1qzcoV
         AZV8v7QcBqKidXA2XaL1S6k/eIDFZTjT4z6UURSKpoW6fSA6zobblj9jmqYarcBW9qLa
         jix7KZf4VAaEUES+qKm81GA7CGeWX4y4SsX3u7acwwjOP3rdNw1/z9Y/DqoYfXLvj8zL
         2NcA==
X-Gm-Message-State: AC+VfDzXVvKFTXSoo6ImyKBxmWKG6Obcjf5j/67Vf6m21lqjBnLXQwph
	bvgeSpbevhznHhp+1RMIIjBu8Q==
X-Google-Smtp-Source: ACHHUZ5lTWM6aJ3Nd6KGDJ6R3RNMboBK57adU/U6lSoKG43WmNGyNRatL5+9vLZ/m3EbUCj/wAVqkw==
X-Received: by 2002:a19:f703:0:b0:4f6:2dbd:1e23 with SMTP id z3-20020a19f703000000b004f62dbd1e23mr498456lfe.29.1685955144686;
        Mon, 05 Jun 2023 01:52:24 -0700 (PDT)
Received: from nuoska (dsl-olubng11-54f814-94.dhcp.inet.fi. [84.248.20.94])
        by smtp.gmail.com with ESMTPSA id r23-20020ac24d17000000b004f4b0f20f1fsm1066767lfi.281.2023.06.05.01.52.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 01:52:24 -0700 (PDT)
Date: Mon, 5 Jun 2023 11:52:22 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: peter.marko@siemens.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] kirkstone meta-security branch
Message-ID: <ZH2iRoHQjBSfAjSw@nuoska>
References: <AS1PR10MB5697AC08EDAB59C195FE42A6FD4DA@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <AS1PR10MB5697AC08EDAB59C195FE42A6FD4DA@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Jun 2023 08:52:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60178

Hi,

On Mon, Jun 05, 2023 at 08:31:55AM +0000, Peter Marko via lists.yoctoproject.org wrote:
> Hello maintainers,
> 
> I'd be interested to know if meta-security repository for kirkstone is still maintained.
> Looking at commit history, there are only two commits since July 2022 (almost a year).

FWIW, meta-security master branch worked for me on kirkstone
by adding "kirkstone" to LAYERSERIES_COMPAT in my own layer.conf
(it is only possible to override other layers configuration in another layer config).

This was the case for many other open source layers. The LTS branches
are, as you noted as well, not really maintained. They are just old
snapshots which work against the poky LTS branch.

With some extra work like LAYERSERIES_COMPAT and a few patches here and there,
I switched to using master branch with poky, meta-openembedded and meta-arm
kirkstone branch, and eventually switched completely to poky master branch
(currently mickledore).

Yocto LTS branches are relatively new, and best practices around them have not
yet formed, and there are very few maintainers for the less-used non-core
meta layers. Thus I understand the release specific branches, but I would actually
advice against using them, if they have not been touched in the past few months.
That just shows that branch is really not maintained. As said, with some extra work,
master branch of a meta layer can support multiple poky branches, master and LTS(es).

I'm hope maintainers will at least accept patches which help supporting multiple
releases from a single branch, even if they actively set LAYERSERIES_COMPAT in a
way which breaks this and marks "using master branch on kirkstone" as "do it on
your own risk". One of the major breaking issues has been bbappends to specific
kernel or busybox versions when the applicaple version range is actually much broader.
The compiler and other tooling version differences did not cause much issues, in
my experience.

Cheers,

-Mikko

