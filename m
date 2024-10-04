Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E100CFA76F
	for <webhook@archiver.kernel.org>; Fri,  4 Oct 2024 11:28:14 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web10.19550.1728041283732041031
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Oct 2024 04:28:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=aEKi3xXb;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-37ce18b042fso1464101f8f.1
        for <yocto@lists.yoctoproject.org>; Fri, 04 Oct 2024 04:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1728041282; x=1728646082; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RJOjbLLuA3jt+wYXayveqmAjxuWTzimzLFHM0O+aNWU=;
        b=aEKi3xXbzVVRIp77B8k5xs/qx/YPo3yFXU9XH0ezi3spq/nvhD4OQi/9MKLYAnWeAd
         hDF2L+67Z0WGhQeQeXJ2dD/ljysbvihPakIgx8Za/yeHcToWApxXk2ZOJUhHaVgzaflX
         DCn+32M62JkrWw8EvXQXcG/3NEwnBsFqqkwOc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728041282; x=1728646082;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RJOjbLLuA3jt+wYXayveqmAjxuWTzimzLFHM0O+aNWU=;
        b=N5M6EsyS+hjoOP9suWoH5lnMOHGy2Wahb9YiCb9yja1J4mImicHYXI2wF7TGko4smo
         o2Ml6vW/zXo3Sf8jhZIRftZdbWlAKD+F3Oc00sHMJvChqHT+rdfOaibl940uJXpNgGsB
         jg4rexyRZLn8lLU3YwThQc2419ruHxwkritq+3APhw5dp8BfGJ2qJkYpcznqttQ6ryCe
         rswWMdixCuZh0yQ+fzBeMHGn9/+3b6yYnBFKYe/YX6qeVHhUZotyQaGHL5CQv1S/RvSN
         Az4V4KLjnWv7RNsanEjGYIO85bNeNTPVH7s+u1F4XixHsDTpRBx8WfRhMpMOKIUcvf+r
         5+Qw==
X-Forwarded-Encrypted: i=1; AJvYcCUHlBrbXYnocCSmKUHQE9ACF/L/pJ1EtsmfMJFnIcc+sHqOIkXkKcV/68H4FnrcahTegXu+LQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwUDuQ/N+TXVlTO6p4+1b/8WEAEuraAMAC8obs77E5cy6qjBWWn
	8HzmCFxLsH6Z5tSCRXRmBfmyY8C7sZa9/vHhzTLJOnArnWxCcK+rjlhocBXSykI=
X-Google-Smtp-Source: AGHT+IFuXqtvOn3VumESZcPkzDiaJ8kclwkxViz1VRz3MO7TuqKifn2nnbiYGF4Ewy3oeryXr0D6YA==
X-Received: by 2002:adf:fb84:0:b0:37c:cc4b:d1de with SMTP id ffacd0b85a97d-37d0e8f6a9bmr1343607f8f.49.1728041282002;
        Fri, 04 Oct 2024 04:28:02 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:25ac:3f31:db63:541d? ([2001:8b0:aba:5f3c:25ac:3f31:db63:541d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d081f70a6sm3082634f8f.11.2024.10.04.04.28.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 04:28:01 -0700 (PDT)
Message-ID: <11f534bf16d97e405d253d07055447d061679df8.camel@linuxfoundation.org>
Subject: Re: [yocto] sstate cache and task hash changing with constant base
 hash
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: philip.dawson@datapath.co.uk, yocto@lists.yoctoproject.org
Date: Fri, 04 Oct 2024 12:28:00 +0100
In-Reply-To: <26848.1728040291156676618@lists.yoctoproject.org>
References: 
	<2e69144abbe85faef5500fa43b6b904587711881.camel@linuxfoundation.org>
	 <26848.1728040291156676618@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Oct 2024 11:28:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63939

On Fri, 2024-10-04 at 04:11 -0700, philip.dawson via Lists.Yoctoproject.Org=
 wrote:
> > It sounds like you're on the right track but there is a piece of
> > information which I can highlight: do_fetch is not an sstate
> > accelerated task.
> >=20
> > As such, I'd not expect a do_fetch task to come from sstate. What
> > happens is that a recipe's other sstate tasks (populate_sysroot,
> > package_write_XXX, package, package_qa, packagedata) come from
> > sstate
> > and if that happens, tasks like fetch, configure, compile and so on
> > don't need to happen.
> >=20
> > I'd therefore look at the populate_sysroot task and compare the
> > sigs
> > there.
> The tasks with sstate artifacts all have different hashes than the
> cached versions, It's a little hard to tell as I'm trying to grab
> logs of a CI system that cleans up build folders often, but I think
> this is following a task dependency chain back to the do_fetch.
> =C2=A0
> Given that the do_fetch in the stamps folder and the do_fetch in the
> cache have different task hashes wouldn't that imply that all the
> dependant tasks have different task hashes and need to re-run as
> well? (though unpack/configure etc to the package/deploy tasks with
> sstate artifacts beyond just siginfo files).

Yes, if the hashes for do_fetch are different, that would be a problem.

> > Also, FWIW do_fetch can have task dependencies although you may be
> > right that yours does not.
> Yes in this case from the siginfo it doesn't but I will bear it in
> mind.
> Is there something else that could be affecting the do_fetch task
> hash given that the sig info reports "Tasks this task depends on: []"
> and the base hash is unchanged?

Hash Equivalence is the only thing which comes to mind and that
shouldn't affect non-sstate tasks without dependencies.

I don't understand how you have two siginfo files with different sigs
and the same data.

Now I think about it, there was a bug recently fixed:

https://git.yoctoproject.org/poky/commit/bitbake?id=3Dc6b883106bc414312e58f=
e8c682b3ccc1257f114

it could be that. Do you have that fix in your build?

That was triggered by differing paths to the layers on disk which could
differ between your machine and CI.

Cheers,

Richard





