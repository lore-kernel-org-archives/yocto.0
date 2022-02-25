Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EE8C433EF
	for <webhook@archiver.kernel.org>; Fri, 25 Feb 2022 20:55:48 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web12.2406.1645822547689954830
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 12:55:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Q4a/InwM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id i20so2327905wmc.3
        for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 12:55:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=zGGxDowxBCMOAnMq3uxqAmysNYtHGh946ex5SbjaXzQ=;
        b=Q4a/InwMYcrbhfNnMOYfh3zpAUQlLMsb/ToFrs7kLJ04gNWJFWgLk9FnGDSfNFiTNd
         j4Y1bWnhPjPfIZicSg0Ne9mSE/fDSExlQIq1G4FHlV9YDZs+PPc7jwDkqfR3i1NwPSFW
         G3uz8qa8PJElR6IcR/vzo2FznjZFBtbnz9nKg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=zGGxDowxBCMOAnMq3uxqAmysNYtHGh946ex5SbjaXzQ=;
        b=gYeSjLlUFsH47AJQfa5GidrXNHQyTNPePZr4HQrDbUp72X0SnbPtXvJr5stjXzmgcz
         2/NxXQfm/BLVz+hjKqlbs3S4ZCTeQNXP78kCU5jGb/XhygELI1EBsqXA3HKXuaoVhqK8
         BWwvP2IaIGZEAS6rV5iYcaJgxkJPMYWidw4KdI/Hbli1xa4VX05m4PwvlOUZhyeZsYbD
         sfxwxcN6fNqsKqiyl20k2I0EnuQTtdzg4kM+eOBDDbw3CU7sT3/vygXHx7VECcdsyYOe
         N7rqUUI4knsTEVZBuIYHlUGZ5KgUWriwS9gZyG2G/aFeMGryOfXDWswkgpHLcGx/l/Wi
         b8jg==
X-Gm-Message-State: AOAM533gBNCV4NLGks7V4zX7i6EJDtMak0oOoIGSdbnE4RP1hZXiGCi5
	YAKO9TYajBoyN/KJdmPG3rxPvw==
X-Google-Smtp-Source: 
 ABdhPJxjcxL3Vj/uF0DenIiQy7w8ivIvx9NGlcLTf+58yOzlwVUIlhHGH2zt1wwJoIScCp6wqQXHAg==
X-Received: by 2002:a7b:cc15:0:b0:381:3fb8:5f93 with SMTP id
 f21-20020a7bcc15000000b003813fb85f93mr2680780wmh.106.1645822545932;
        Fri, 25 Feb 2022 12:55:45 -0800 (PST)
Received: from hex.config (5751ab90.skybroadband.com. [87.81.171.144])
        by smtp.gmail.com with ESMTPSA id
 c14-20020a7bc84e000000b0038100c9a593sm8493564wml.45.2022.02.25.12.55.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Feb 2022 12:55:45 -0800 (PST)
Message-ID: 
 <8a471cd9aa5a2aee65a3dc7558e6d54360a4cbfd.camel@linuxfoundation.org>
Subject: Re: QA change - reduced number of reproducibility builds tests?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Watt <jpewhacker@gmail.com>, Steve Sakoman <steve@sakoman.com>
Cc: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>,
	"Mittal, Anuj" <anuj.mittal@intel.com>
Date: Fri, 25 Feb 2022 20:55:44 +0000
In-Reply-To: 
 <CAJdd5GbCXeZFURAAs+vn7Z5KqJdiDPXR42aR8PJPcJ-zfEW9AQ@mail.gmail.com>
References: 
	<6234ac5289c4ca5846e6f80c13686f61ed340116.camel@linuxfoundation.org>
	 <CAOSpxdaG1XDuKni+_=Cwi3cxTrXHA0M7vyrnyVsL5i7p5PhkiA@mail.gmail.com>
	 <CAJdd5GbCXeZFURAAs+vn7Z5KqJdiDPXR42aR8PJPcJ-zfEW9AQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Feb 2022 20:55:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56287

On Fri, 2022-02-25 at 13:58 -0600, Joshua Watt wrote:
> On Fri, Feb 25, 2022 at 12:50 PM Steve Sakoman <steve@sakoman.com> wrote:
> > 
> > On Fri, Feb 25, 2022 at 8:09 AM Richard Purdie
> > <richard.purdie@linuxfoundation.org> wrote:
> > > 
> > > Hi All,
> > > 
> > > As the project develops, some tests are valuable and some become less valuable
> > > over time.
> > > 
> > > When we first started reproducible builds work, testing reproducibility heavily
> > > across multiple distros highlighted some unusual bugs and let us improve things.
> > > We therefore currently run a-full with the targets:
> > > 
> > > reproducibile-centos
> > > reproducibile-debian
> > > reproducibile-fedora
> > > reproducibile-ubuntu
> > > 
> > > I've noticed we pretty much always see the same set of failures with these
> > > targets now, i.e. if one fails, they all fail the same way.
> > > 
> > > Those targets are heavy builds which don't reuse sstate for one of the build
> > > streams and hence load the autobuilder heavily.
> > > 
> > > I'm thinking they've served their purpose and that a-full should go back to just
> > > the randomly selected reproduiclbe target.
> > > 
> > > Does anyone feel we shouldn't do that?
> > 
> > I support this.  It has been quite some time since dunfell encountered
> > a distro specific reproducibility issue.
> 
> I agree. I assume the change is simple enough to make that we can
> bring them back easily if we think it might be helpful is some
> scenario?

Yes, I'll leave the targets available, we'd just run them manually or re-enable
them but I'd take them off a-full for now.

> Also, just to clarify, those workers will still contribute to the
> initial sstate, so they will still help find cross-host reproducible
> problems, they just might not find it themselves?

Correct, yes.

Cheers,

Richard



