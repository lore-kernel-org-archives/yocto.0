Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B358C3A5A1
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:42 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.21869.1648982648598262590
 for <yocto@lists.yoctoproject.org>;
 Sun, 03 Apr 2022 03:44:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ZtAI7Luv;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id c7so10464685wrd.0
        for <yocto@lists.yoctoproject.org>;
 Sun, 03 Apr 2022 03:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=wlz68SU1wmyg6ZjeFKWMe7MhF4BLd1pYA1kYe2piLp4=;
        b=ZtAI7Luv4PhcZEDXkKp2rR+Z6ejwC9kuLRz+wbmcYzpVyEBAXdDW+KYA/DwNAoXrDu
         WNBe9MhOetX6naASz/Du1ldKc0YrkXAigljDthTp79AXAzMn3uC1GC/JyaT5X5uBrDvM
         s2vgkz2OSoGODR7jnN8Yt6SHOxs+BmDx1+V+0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=wlz68SU1wmyg6ZjeFKWMe7MhF4BLd1pYA1kYe2piLp4=;
        b=L354otq3P+HRmNu9wQwb0WaDVTWxy7Jw++dryX3ClPyoilUpa4cXjBtk4W8kc4EW7q
         PvcqGc/B8pUhgSCAta6JzxqNG9ihQMToAxB12co/kVKpgt7DzBaiyg4jNIaiW1tCf6WW
         FgO0ytrLLD2FApzv3XDZ8hw1B3RvOvC5PmXvJdPNxnYVHycOcsObpSD8BtOe82NmPyF7
         R9hqfKb80qrRuLLBuM00UMI2cieixZgGTz1w+tGMW/Oj5u/RTLQtcys7/W3VgP3O4gBm
         Fy9EZZHBS2YuyeB+UpCVADdNIBCvrmVhBiv210xpUGIDfQsp2doQgJ9XhBscE4JI1HL3
         SjKQ==
X-Gm-Message-State: AOAM533mVvJlANIopskRzgtSvn7TFOivQB8XzC1YAx39+tL0IBS/4nHe
	g4o4sVUzPPztbrZJ/FZmY0MIGw==
X-Google-Smtp-Source: 
 ABdhPJzARAoMVFQXUPVan6zNTAwgAs6bJEyuAv2kty16MUlspJQ9j+Uk+kLqHg2mnaHfVhtB4t83Uw==
X-Received: by 2002:a5d:5344:0:b0:206:bd8:28b2 with SMTP id
 t4-20020a5d5344000000b002060bd828b2mr2432353wrv.189.1648982647129;
        Sun, 03 Apr 2022 03:44:07 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:819:f853:3436:28c4?
 ([2001:8b0:aba:5f3c:819:f853:3436:28c4])
        by smtp.gmail.com with ESMTPSA id
 i15-20020a5d584f000000b00204171ba528sm6389738wrf.109.2022.04.03.03.44.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Apr 2022 03:44:06 -0700 (PDT)
Message-ID: 
 <3136cb5acad9fabe522ec58be472e2eea3fa0d88.camel@linuxfoundation.org>
Subject: Re: [yocto] Fedora 36 / uninative GLIBCXX 3.4.30
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Federico Pellegrin <fede@evolware.org>, Yocto-mailing-list
	 <yocto@lists.yoctoproject.org>
Date: Sun, 03 Apr 2022 11:44:04 +0100
In-Reply-To: 
 <CAM6O0ZhqFZO4oq7NyGTHYHZ50Kp8F7aSqjeVRH7Ok1kKHzkPCQ@mail.gmail.com>
References: 
	<CAM6O0ZhqFZO4oq7NyGTHYHZ50Kp8F7aSqjeVRH7Ok1kKHzkPCQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56648

On Sun, 2022-04-03 at 09:12 +0200, Federico Pellegrin wrote:
> I've been playing around building a Yocto imagine based on kirkstone/master on
> the just released Fedora 36 beta test image. (just to give a few bits more
> details: builds a MX8X image, works perfectly fine with Fedora 34 and 35 since
> quite some time)
> 
> The first and most obvious thing I've found out is that it is based on a newer
> version of glibcxx (3.4.30) when the very latest uninative available (as far
> as I could see, apologies if I'm wrong) is on 3.4.29, so at some point this
> will break the build (when pzstd is called).
> 
> Of course for the time being I just disabled uninative and the build is going
> on (will report of course should I find something else). I'm not sure (still
> checking this) if that should have happened automatically, but there was
> actually no warning in that sense (maybe because is GLIBCXX and not GLIBC
> itself?)
> But the question is: should I try to contribute that tarball (I will search
> for details, but if there is any good reference more than welcome!) or is it
> something that is likely done by the core team?
> 
> Of course FC36 is still a test distro so there is no surprise it broke, but as
> we are close to Kirkstone release and possibly other distros will get the same
> upgrade, I guess it could be great if we may fix this before that deadline.

Thanks for reporting it. I think to generate the newer version we need gcc 12
which is still in pre-release. We generate the uninative tarball using our own
builds on the autobuilder so until we have gcc 12 recipes there, we can't
generate that.

Once gcc 12 is out, we will release a new uninative (assuming we can update our
recipes).

I'd like to think the checks in uninative would have noticed the mismatch, we do
have some code there to detect libc version but perhaps not the CXX pieces so
I'd welcome help in adding something for that.

Cheers,

Richard




