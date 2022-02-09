Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F217C433F5
	for <webhook@archiver.kernel.org>; Wed,  9 Feb 2022 18:41:07 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
 [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.30730.1644432065521615171
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 10:41:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bTW9mWQW;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id
 l12-20020a7bc34c000000b003467c58cbdfso3763211wmj.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 10:41:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=0hgEGXQFosY1QlJNtdLyY0liqSdsUHuJ0Wa3r4hcWdk=;
        b=bTW9mWQWet1yeZAOkEq/yVymPXptJFcXzzKymQPdntGDecjPrbBAcwOdbpGkAUCVIC
         JTwrDIjMKGZAPnxN1ZnqrNFNqK0MDCE718ZTTA/qLs7XT7OHMnFnw5mpSGirPmgnloJb
         bK/zqHS5OK0CCr09LOMt10qv8Ui6n8v8VFSKU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=0hgEGXQFosY1QlJNtdLyY0liqSdsUHuJ0Wa3r4hcWdk=;
        b=UYw7xqj1wItFwJHWWo8CqVap1l1bg4X3OFCUVVns+jP7Z6tctUU3lZyJOWY+TovOZS
         1ZUj+uha8+7+WvJ2mT7yWNr7l1h9ppkeJH7N8ls/PwrpxpIr6mraZne9M4xR/EVGjJuN
         BpGBeZGRCTNP1lLnSQgoxkpgz5sPFDhzzpC5rlUTxHx5/hi4VOWvPmZ6NqkqDQYLE5vp
         9ZIP03WKQ7nZJOU5Zyhkri7Wf5qOQSQsynbU2b4vFQbQVx+KFYZe/IzV3DkJjNVXNF1O
         19NK6lBRb1JOlSCNmplbtCzuRw7VHmqXawP7YzM6KglU3OFUPcXFGiVfglh9VbMQnag+
         /nCg==
X-Gm-Message-State: AOAM530Q87EXLoXEPJeUtYiiJWRsDN9/mAOR+GAEc20Jc1ZIo24BXpLh
	dC1lY/hnjQ+mTZcvK52bNCxHFQ==
X-Google-Smtp-Source: 
 ABdhPJy4JX7sSoE/hSy9WESbohsJm0KSPrLrtv08c3eFv3eiDbE37gSTU5dG3TLkw30uhEXQyzU47Q==
X-Received: by 2002:a7b:c416:: with SMTP id k22mr3299243wmi.158.1644432063818;
        Wed, 09 Feb 2022 10:41:03 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:2250:1cae:83bc:d91f?
 ([2001:8b0:aba:5f3c:2250:1cae:83bc:d91f])
        by smtp.gmail.com with ESMTPSA id
 d6sm16146821wrs.85.2022.02.09.10.41.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Feb 2022 10:41:03 -0800 (PST)
Message-ID: 
 <1077615858f490216857759e0440dd4f618fd798.camel@linuxfoundation.org>
Subject: Re: Maintaining ABI Compatibility for LTS branch
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Sinan Kaya <okaya@kernel.org>, Paul Eggleton
	 <bluelightning@bluelightning.org>, yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Date: Wed, 09 Feb 2022 18:41:00 +0000
In-Reply-To: <058e253b-b2b8-230b-2af5-c3cb4e93b743@kernel.org>
References: <90135b4d-6a37-f5d7-dbba-7d0ef47aa778@kernel.org>
	 <7c96d7c727b9f7c4e18995d22501059e35c20942.camel@linuxfoundation.org>
	 <058e253b-b2b8-230b-2af5-c3cb4e93b743@kernel.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Feb 2022 18:41:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56130

On Wed, 2022-02-09 at 13:15 -0500, Sinan Kaya wrote:
> On 2/9/2022 11:42 AM, Richard Purdie wrote:
> > There are two reasons people are interested:
> > 
> > a) for release stability as you mention
> > b) for performance as it could be tied into the hash equivalence mechanism for
> > artefact reuse - if A hasn't changed ABI, B dependning on it needn't rebuild.
> > 
> > There was a proof of concept of b) here:
> > https://lists.yoctoproject.org/g/yocto/message/52650
> > 
> > There are lots of levels it could be implemented at but it is something someone
> > would need to pick up and drive forward with a long term view to helping with
> > issues etc.
> 
> What would be the minimum acceptable solution with the least investment?
> in other words, do we have a list of requirements?

You're after our LTS to maintain ABI. In order to do that we need help, not just
with patches generating some output, but in day to day running of the project,
i.e. help comparing output before and after changes. Whenever a patch is
submitted which breaks this, it will need attention and help some someone to
explain to that submitter what the issue, why it is important and hints on how
to fix it.

The idea of "least investment" sends shivers down my spine since it sounds like
you want to do the absolute bare minimum to have this happen, rather than a more
community oriented approach.

Anyway, my point is there is more to this than just a patch. We have various
kinds of build output already and reports on test regressions - nobody helps
with them. I need some kind of a sign that ABI would be different and there are
people able to help with review on an ongoing basis, else it will just be
something else I and a small number of others become overloaded with.

> Our team has posted a solution. BMW folks posted a solution.
> None of them got merged.

Can you remind me of your team's please?

The BMW one is about hash equivalence so wouldn't help your ABI output problem
with the LTS. From what I remember, it predates hash equivalence and the project
needed a generic equivalance mechanism complete with server done at the runqueue
level in bitbake. This has now happened so we could revisit the idea of what is
in that layer but translating it to a hash equivalence plugin.

I'd also add that even with hash equivalence done well like we ended up with, we
have only two people interested/able to work on bugs with it, the author and
myself. For a key component of the system, this worries me a lot. Adding more
complexity without maintainer support isn't going to help anyone.

> Could we take the version from BMW folks, merge and have the next person
> add new features where it doesn't satisfy requirements?

See above on the BMW version. I'm a little worried you're suggesting merging
something which doesn't actually do what you need/want :(.

> or vice versa? or as Ross said some other work?
> or none of the solutions are acceptable?

I have to admit I can't remember what the conclusion was on your team's version
but if you remind me of the patches I can try and remember. This is a bigger
problem than just patches though sadly.

Cheers,

Richard




