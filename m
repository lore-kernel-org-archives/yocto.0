Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20541C433F5
	for <webhook@archiver.kernel.org>; Wed,  9 Feb 2022 19:24:59 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web12.31592.1644434698352253441
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 11:24:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=UNFkwfvS;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id
 k6-20020a05600c1c8600b003524656034cso2380182wms.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 11:24:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=FWFAm/lyJARCSFGxkzBpUaBBP+aAcqLYXvtTFPwzpL8=;
        b=UNFkwfvSp/Kj5ElbZCusLEIkvLg1Kn5NH0aG+jNo5EnoCoSRRJuL+qFlMszwFuZPCh
         rjyTI9HmucfuXJwxK2C0+GJVNfG7e4YBEuFQFfF7LUm4AzxsrMwHMQbq3a1I4eVpg5NN
         EptWB34ZN3AED2oQqBFVED7fLJ5q+x73oyI6Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=FWFAm/lyJARCSFGxkzBpUaBBP+aAcqLYXvtTFPwzpL8=;
        b=rLZ5GLlDvQYXiQ0coYUa/eqchm2QMpjTLiy9UgNrA8H9a79FpdamlCMQ7rYb/PPuhZ
         4HXQ/hBpxLaNLpKw4krozDwtCxbva7D55rLU2G4vhLBpIj8VTKDzL03zYt4MovFsL9gC
         4IsEd6ud7tZAj3gUmElropYdRpiMAwsh18CD1MUvytmcSq5+y4oOn4zMZrM9odYpeOEM
         EcWqBTgW2L5jk4dHyhHRl6dERPd+PqyXi/JLvH5/UiEMRbJ720OKO0DaO1L+bdH5CN3B
         tv1SICoYA2SwnPAiOMm1/cv9Cf/BBsQLhT8NWQ3Bqfh3Tev/iAX7QFcWgdd1RtDjALiY
         NKbQ==
X-Gm-Message-State: AOAM533O4FyKJDimn378sij3+3wVAVlaUyOum0EVfctDEGHfEd2xSzOi
	KC72wjxFEsBmPMjJI3nROOL/+g==
X-Google-Smtp-Source: 
 ABdhPJzT4TtfP9HLRIQ6juNZLQYjVLN/U3TknpqTTWhiboAgJZKHqRGFnUA8TuOfedkuY/zjtbypEw==
X-Received: by 2002:a05:600c:1911:: with SMTP id
 j17mr4022702wmq.152.1644434696697;
        Wed, 09 Feb 2022 11:24:56 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:2250:1cae:83bc:d91f?
 ([2001:8b0:aba:5f3c:2250:1cae:83bc:d91f])
        by smtp.gmail.com with ESMTPSA id
 p27sm2641319wms.1.2022.02.09.11.24.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Feb 2022 11:24:56 -0800 (PST)
Message-ID: 
 <99e88abb3f58ee09504ced2d19ec85b6a5ab4a5a.camel@linuxfoundation.org>
Subject: Re: Maintaining ABI Compatibility for LTS branch
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Sinan Kaya <okaya@kernel.org>, Paul Eggleton
	 <bluelightning@bluelightning.org>, yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Date: Wed, 09 Feb 2022 19:24:54 +0000
In-Reply-To: 
 <1077615858f490216857759e0440dd4f618fd798.camel@linuxfoundation.org>
References: <90135b4d-6a37-f5d7-dbba-7d0ef47aa778@kernel.org>
	 <7c96d7c727b9f7c4e18995d22501059e35c20942.camel@linuxfoundation.org>
	 <058e253b-b2b8-230b-2af5-c3cb4e93b743@kernel.org>
	 <1077615858f490216857759e0440dd4f618fd798.camel@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Feb 2022 19:24:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56133

On Wed, 2022-02-09 at 18:41 +0000, Richard Purdie wrote:
> 
> The BMW one is about hash equivalence so wouldn't help your ABI output problem
> with the LTS. From what I remember, it predates hash equivalence and the project
> needed a generic equivalance mechanism complete with server done at the runqueue
> level in bitbake. This has now happened so we could revisit the idea of what is
> in that layer but translating it to a hash equivalence plugin.
> 
> I'd also add that even with hash equivalence done well like we ended up with, we
> have only two people interested/able to work on bugs with it, the author and
> myself. For a key component of the system, this worries me a lot. Adding more
> complexity without maintainer support isn't going to help anyone.

Sorry, I'm getting confused here with earlier work Michael Ho did at BMW. The
links here:

https://lists.yoctoproject.org/g/yocto/message/52650
https://github.com/bmwcarit/meta-abicompat

are the revised version from last year which *does* hook into hash equivalence.
I'm getting two things confused, sorry.

The nice thing about the layer above is that it is a standalone layer, we don't
have to merge it in order to use it. This shows the power of the new hash
equivalence code as it is a plugin to it. We may consider merging it at some
point but there is less of a pressing need and we need time to experiment with
it.

At this point it is a proof of concept and doesn't solve the ABI problem you're
describing in the original email. Sorry about any confusion.

The abidw recipe could be useful to your ABI issue.

Cheers,

Richard




