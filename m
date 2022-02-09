Return-Path: <okaya@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FE0C433F5
	for <webhook@archiver.kernel.org>; Wed,  9 Feb 2022 19:13:24 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by mx.groups.io with SMTP id smtpd.web11.31253.1644434002866411431
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 11:13:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=axIz5Ino;
 spf=pass (domain: kernel.org, ip: 145.40.68.75, mailfrom: okaya@kernel.org)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id CB827B82383;
	Wed,  9 Feb 2022 19:13:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DA51C340E7;
	Wed,  9 Feb 2022 19:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1644433999;
	bh=+V6Vr78eubM9h2oTURkclUDQcBh8q87nin28aZpAzJA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=axIz5InonkWSPAJ3zr7LSi9+uWuajCQOfCmxFFGWbnCTClqa/XoLVoA6k8tbx9im6
	 vH17SdnC6PV6vVKIKI7yFDzkTKD151VUU96MCFcBdSgzP42n7ErU9/F4G/gpcniLxy
	 0VFpvECsq7Rj2ywGG42KNtN6a7AxHJR2+xx9BsOgCmvEQZYbQorc5bPnqVysAQU2lB
	 94U5RdibUAJFHYziBzIunkr8tWEq5XutjREf+s69Vrd92qpRJcfRUP+T9PNoN3JkwD
	 Knw3LtG8kXWMEoNHYk6xar46uaxp4eaLCUe870BXVRyOHPlnUaAp0wZnBos4jIv8Ww
	 sHEbBMEOCYHYQ==
Message-ID: <7e00bad7-2244-42b5-cd06-b15ef4ca055b@kernel.org>
Date: Wed, 9 Feb 2022 14:13:17 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: Maintaining ABI Compatibility for LTS branch
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Paul Eggleton <bluelightning@bluelightning.org>, yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
References: <90135b4d-6a37-f5d7-dbba-7d0ef47aa778@kernel.org>
 <7c96d7c727b9f7c4e18995d22501059e35c20942.camel@linuxfoundation.org>
 <058e253b-b2b8-230b-2af5-c3cb4e93b743@kernel.org>
 <1077615858f490216857759e0440dd4f618fd798.camel@linuxfoundation.org>
From: Sinan Kaya <okaya@kernel.org>
In-Reply-To: 
 <1077615858f490216857759e0440dd4f618fd798.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Feb 2022 19:13:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56132

On 2/9/2022 1:41 PM, Richard Purdie wrote:
>>> There are lots of levels it could be implemented at but it is something someone
>>> would need to pick up and drive forward with a long term view to helping with
>>> issues etc.
>> What would be the minimum acceptable solution with the least investment?
>> in other words, do we have a list of requirements?
> You're after our LTS to maintain ABI. In order to do that we need help, not just
> with patches generating some output, but in day to day running of the project,
> i.e. help comparing output before and after changes. Whenever a patch is
> submitted which breaks this, it will need attention and help some someone to
> explain to that submitter what the issue, why it is important and hints on how
> to fix it.
> 

That's true, this will require engagement from the community. Tool could
take few iterations to perfect. Until then, I expect tool owner to be
responsible for fixing these bugs. Once stability is reached, it becomes
community maintained.

If the tool owner doesn't maintain and community has no interest, tool
dies and gets reverted. It is as simple as any open source engagement.

When stability is established, each code contributor to LTS would be
subject to addressing issues found before they get merged.

> The idea of "least investment" sends shivers down my spine since it sounds like
> you want to do the absolute bare minimum to have this happen, rather than a more
> community oriented approach.

It depends on your taste. I believe in smaller improvements
as opposed to throwing a big project to you that no-one will use it.

Everyone has different needs. We need to find the common ones.
That's why, I'm asking if there is an existing tool that works for
large part of the community accepting that there will be some folks
that won't have their needs addressed.

I'm interested in revisiting the tooling discussion and have these gaps
addressed for the biggest audience so that we can have something to
build upon.

> 
> Anyway, my point is there is more to this than just a patch. We have various
> kinds of build output already and reports on test regressions - nobody helps
> with them. I need some kind of a sign that ABI would be different and there are
> people able to help with review on an ongoing basis, else it will just be
> something else I and a small number of others become overloaded with.
> 

Noted. Hopefully, things will be not that volatile for the LTS branch
and tool would actually help the maintainer.

In an ideal world, change needs to be stopped before that happens and
have the patch author address it similar to how you monitor build
pipelines.

>> Our team has posted a solution. BMW folks posted a solution.
>> None of them got merged.
> Can you remind me of your team's please?
> 

https://lists.yoctoproject.org/g/yocto/topic/85279259?p=,,,20,0,0,0::recentpostdate/sticky,,,20,2,160,85279259

This was an intern project from last summer that we are interested
in expanding coverage.

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
> 

OK, I didn't know the story behind the change.

>> Could we take the version from BMW folks, merge and have the next person
>> add new features where it doesn't satisfy requirements?
> See above on the BMW version. I'm a little worried you're suggesting merging
> something which doesn't actually do what you need/want:(.
> 

Got it.

>> or vice versa? or as Ross said some other work?
>> or none of the solutions are acceptable?
> I have to admit I can't remember what the conclusion was on your team's version
> but if you remind me of the patches I can try and remember. This is a bigger
> problem than just patches though sadly.

Sure, let's find out what everyone is doing.


