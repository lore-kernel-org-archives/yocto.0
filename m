Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 223EAC433FE
	for <webhook@archiver.kernel.org>; Wed,  9 Feb 2022 21:38:23 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web11.1646.1644442701593887668
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 13:38:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bCMIO167;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id f17so6300567wrx.1
        for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 13:38:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=j7Ajv7Y2GzgMCSuHbGc/6U64br1xjSqVOVrN1McDtu8=;
        b=bCMIO167wWA1H8IJ/xLONqSJJFKxdKk4JKHkbZ3Sf0ue6L4Ha0cnS5StJOfG9L5o+/
         82mXxnw1YYhkyVotB/g9Js2lRkhn26V/Nw8PKTmRhFaS9sFyQvzZN0ePOP+pDSf8nYRQ
         HZTRuFU5wBsQVaIdHqyTGCYSWmxZcuhlLSO8g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=j7Ajv7Y2GzgMCSuHbGc/6U64br1xjSqVOVrN1McDtu8=;
        b=qXNdGTk5Z9TbMFmC4LUU9IaGNS+ObE9e/23MNBIBnxZtF8vAUpCdyJWbXf5n36Goby
         QIUZ2S6D0Uc7ciavkR0GGHuaqXuM4wfaYXex8/3EgNF1BJOoVCiH9HBK0UWO2jB2sIlP
         GAuKsSQMMmdukkGVg0MZPYOafXolcIERiBYf34GdGsxiO/gZEZXUPRIRLWdIcVQwfuj+
         cUYHDUAbldOjVmk20A+q0R4cvlv+JiacrgpqIP1FFrUqwYjYI7M6NfsAeOvbTK7CCc/S
         LPt6sJRzxFN6s1+Q2BD+M2KXGS+pd8VlJ7ptJVxKTXe9SDRfxSmVMip/q6V44dBqGAA1
         8uXg==
X-Gm-Message-State: AOAM531F25h8Up0eSw2WNnPTd7TkqkKr2UNrG9hAzj2z2vh+y2Fia+R9
	b9C4y6XbJVph35/2fbogS67RhQ==
X-Google-Smtp-Source: 
 ABdhPJxc8NCFOv/MIuiKJC3IaDxJz1z2S+ACo9noI1zimSPQasSCIOEBp/S2jHD7k3vWSn/I7xad9A==
X-Received: by 2002:adf:d23c:: with SMTP id k28mr3766946wrh.114.1644442699955;
        Wed, 09 Feb 2022 13:38:19 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:2250:1cae:83bc:d91f?
 ([2001:8b0:aba:5f3c:2250:1cae:83bc:d91f])
        by smtp.gmail.com with ESMTPSA id
 r2sm19867736wrz.76.2022.02.09.13.38.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Feb 2022 13:38:19 -0800 (PST)
Message-ID: 
 <f1e7b4732ea04ed7f591a2ea38198ca282bf38f0.camel@linuxfoundation.org>
Subject: Re: Maintaining ABI Compatibility for LTS branch
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Sinan Kaya <okaya@kernel.org>, Paul Eggleton
	 <bluelightning@bluelightning.org>, yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Date: Wed, 09 Feb 2022 21:38:18 +0000
In-Reply-To: <7e00bad7-2244-42b5-cd06-b15ef4ca055b@kernel.org>
References: <90135b4d-6a37-f5d7-dbba-7d0ef47aa778@kernel.org>
	 <7c96d7c727b9f7c4e18995d22501059e35c20942.camel@linuxfoundation.org>
	 <058e253b-b2b8-230b-2af5-c3cb4e93b743@kernel.org>
	 <1077615858f490216857759e0440dd4f618fd798.camel@linuxfoundation.org>
	 <7e00bad7-2244-42b5-cd06-b15ef4ca055b@kernel.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Feb 2022 21:38:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56139

On Wed, 2022-02-09 at 14:13 -0500, Sinan Kaya wrote:
> On 2/9/2022 1:41 PM, Richard Purdie wrote:
> > > > There are lots of levels it could be implemented at but it is something someone
> > > > would need to pick up and drive forward with a long term view to helping with
> > > > issues etc.
> > > What would be the minimum acceptable solution with the least investment?
> > > in other words, do we have a list of requirements?
> > You're after our LTS to maintain ABI. In order to do that we need help, not just
> > with patches generating some output, but in day to day running of the project,
> > i.e. help comparing output before and after changes. Whenever a patch is
> > submitted which breaks this, it will need attention and help some someone to
> > explain to that submitter what the issue, why it is important and hints on how
> > to fix it.
> > 
> 
> That's true, this will require engagement from the community. Tool could
> take few iterations to perfect. Until then, I expect tool owner to be
> responsible for fixing these bugs. Once stability is reached, it becomes
> community maintained.
> 
> If the tool owner doesn't maintain and community has no interest, tool
> dies and gets reverted. It is as simple as any open source engagement.
> 
> When stability is established, each code contributor to LTS would be
> subject to addressing issues found before they get merged.

I agree, this either needs input from the community in order to drive it or a
sponsor. It will be interesting to see if people are interested in doing this
and I guess we can gauge that from the replies to this thread to see if people
do want to do it. I can tell you first hand how badly the existing maintainers
are burning out with the current load so we need new people.

> > The idea of "least investment" sends shivers down my spine since it sounds like
> > you want to do the absolute bare minimum to have this happen, rather than a more
> > community oriented approach.
> 
> It depends on your taste. I believe in smaller improvements
> as opposed to throwing a big project to you that no-one will use it.

We both agree on incremental improvements and I am fine with that. I don't want
any patch acceptance taken as a sign we're goging to add a significant process
burden though. I'd prefer we have a broad agreement of what the end objective is
architecture wise too.

> Everyone has different needs. We need to find the common ones.
> That's why, I'm asking if there is an existing tool that works for
> large part of the community accepting that there will be some folks
> that won't have their needs addressed.
> 
> I'm interested in revisiting the tooling discussion and have these gaps
> addressed for the biggest audience so that we can have something to
> build upon.
> 
> > 
> > Anyway, my point is there is more to this than just a patch. We have various
> > kinds of build output already and reports on test regressions - nobody helps
> > with them. I need some kind of a sign that ABI would be different and there are
> > people able to help with review on an ongoing basis, else it will just be
> > something else I and a small number of others become overloaded with.
> > 
> 
> Noted. Hopefully, things will be not that volatile for the LTS branch
> and tool would actually help the maintainer.
> 
> In an ideal world, change needs to be stopped before that happens and
> have the patch author address it similar to how you monitor build
> pipelines.
> 
> > > Our team has posted a solution. BMW folks posted a solution.
> > > None of them got merged.
> > Can you remind me of your team's please?
> > 
> 
> https://lists.yoctoproject.org/g/yocto/topic/85279259?p=,,,20,0,0,0::recentpostdate/sticky,,,20,2,160,85279259
> 
> This was an intern project from last summer that we are interested
> in expanding coverage.

"None of them got merged" isn't particularly fair here. There was a brief thread
on the yocto list, no patches were proposed or reviewed and the implementation
is a standalone layer so doesn't need to merge anyway, people could use it
already if they wanted.

If the question is whether something would be accepted into core, the answer is
possibly, it would depends. The quality of the code in that layer needs
improving for core and I'm not sure about the approach. Hooking it against
buildhistory is "easy" but as I mentioned in separate discussions earlier today,
buildhistory is getting pulled in different directions (such as a SBOM) and I'm
worried about some of the extensions to it. Certainly, the ABI saving shouldn't
really be buried in a do_install postfunc and perhaps is more of a build history
item that some others that are being proposed.

This probably does need a discussion on the architecture list and we need some
discussion and decisions about where/what buildhistory could/should do. Adding
this to buildhistory is all well and good but we don't have a meaningful
integration/monitoring of existing buildhistory issues in our
autobuilder/workflow today even before adding new things.

> 
> > I have to admit I can't remember what the conclusion was on your team's version
> > but if you remind me of the patches I can try and remember. This is a bigger
> > problem than just patches though sadly.
> 
> Sure, let's find out what everyone is doing.

Ok.

Cheers,

Richard



