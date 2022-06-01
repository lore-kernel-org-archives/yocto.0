Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B88C433EF
	for <webhook@archiver.kernel.org>; Wed,  1 Jun 2022 08:15:54 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web12.4968.1654071344482045663
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Jun 2022 01:15:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=X4Yg6PGX;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id q21so1234363wra.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 01 Jun 2022 01:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=Sxv6K9W8xZ+I3weruQc7bLUjWgNtjL3HFhEB1W2NEFo=;
        b=X4Yg6PGXQM1YV9CnI5JF1bwV2eS3Y+Ll7aAHZ2aglJrQcd8h3vjZaSLQyaCn+EdEr8
         lgQKXZQZo1efAZ8je1+XVtF2IPXlZnyf3Dy/vax6LD9/1mi1EPSxTSHvkx5quQm+I6V9
         yHb+2QeDmmuMVOJUG1ucapL/SuqvYyc6XGftE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=Sxv6K9W8xZ+I3weruQc7bLUjWgNtjL3HFhEB1W2NEFo=;
        b=mHRNw+/PcXQ85Lfhgj/eKcUL7NqoGOiL7LI655WCMtNJtxJVg+u/QgvVvEvEzRzgBT
         1tEk8qLv68pdWKx6/rS+pxuoBH8rBUeZxzsuviwPoeNS2z6XpeYsq6CZhd+TP2yfxYjp
         vMUBxqetBOskVLNsHXD+FLARXeHXyLtpy1PFSuEkdvUKls5f6Xh94iA6rwJx2OBlUCkb
         wrmTpva5ZF1qSL/mCX1P9BnsyvYY9CrY/CnYk6Djdg8ELnE1WQYmVocmwK1LOzpsiPfW
         WZrZj7y431IYwNwZWt4d9AJxeTtp1ASnzHLLc3Djsmn1lsQGoMJ/00Jr9i7187OvEbkj
         rvHA==
X-Gm-Message-State: AOAM531b9v0OiV2YghpSnsHmK0IcvZJkMtOTsgHvywueZy2WvG0kLaV/
	rRlrIAj/09PMkJn6HcKma5P3tQ==
X-Google-Smtp-Source: 
 ABdhPJxEWJjir1TgGkaxQBOkqa+wAht4RAwhfmnoRjn86FTYwON0IYDJXpAElo2GFxmEmRtVuVezDw==
X-Received: by 2002:a05:6000:42:b0:210:307f:6b98 with SMTP id
 k2-20020a056000004200b00210307f6b98mr13397536wrx.295.1654071343008;
        Wed, 01 Jun 2022 01:15:43 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:ef3f:2828:995f:4993?
 ([2001:8b0:aba:5f3c:ef3f:2828:995f:4993])
        by smtp.gmail.com with ESMTPSA id
 o34-20020a05600c512200b003944821105esm1325243wms.2.2022.06.01.01.15.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 01:15:42 -0700 (PDT)
Message-ID: 
 <849ae869db0ea5ddbac70b60c1e31710596df0e2.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] scripts:
 run-docs-build: do not extract eclipse directories from old docs
From: richard.purdie@linuxfoundation.org
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>, Quentin Schulz
	 <foss+yocto@0leil.net>, yocto@lists.yoctoproject.org
Date: Wed, 01 Jun 2022 09:15:41 +0100
In-Reply-To: <9a2b758a-8dbe-c7f2-6058-ceb4a0b20a97@theobroma-systems.com>
References: <20220512130217.1926760-1-foss+yocto@0leil.net>
	 <9a2b758a-8dbe-c7f2-6058-ceb4a0b20a97@theobroma-systems.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Jun 2022 08:15:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57240

On Tue, 2022-05-31 at 12:15 +0200, Quentin Schulz wrote:
> Any feedback to give on this patch?

Looks good to me, merged. Sorry about the delay.

Cheers,

Richard

