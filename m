Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1138CC433EF
	for <webhook@archiver.kernel.org>; Fri, 29 Oct 2021 15:23:46 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
 [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web12.6814.1635521025199472794
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Oct 2021 08:23:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OnGkCw3i;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id z200so8250298wmc.1
        for <yocto@lists.yoctoproject.org>;
 Fri, 29 Oct 2021 08:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=fvS195FYePWwl/Ap20SPhG7FQ11q9GIE93igf+GyQhM=;
        b=OnGkCw3ioTuxtt65rScQb90/4JroqWFgrh1XJeI5SVpX6iBXff9m7Qizh8Psb93wYN
         LUuW/C4W+OoFV9jqGMZyL/c/XH9h381LnnGbesugelaykntjMASKJWMCe2P2EQ55RBHH
         6/VtLarQu4rt4/5gLIuKsioQCmgAhYOpoiwJs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=fvS195FYePWwl/Ap20SPhG7FQ11q9GIE93igf+GyQhM=;
        b=QhDQDihl2CjvfzHTUIBEEd2y6qAYuIobpfPbLpkuQcrFXRcY+0xPA7EM4Ia9k5mMNe
         WDheqVK3sdHxTQ75jMi5/oYr4lafhL02G/gu4dmOqoktITcBQkjqr9i+AFVEFNnmE/XP
         hA4xQfTLICBPYCINGEnoLlhekrJJdzVWLXo+SCgas/9XCM/6sRXMegk/r6BJW0YW3Ytn
         KhceB7aGn/SMjVB1x8JETfONSUEh2q0mBJzy2tSFQDAtAa5oIwIPllklJ8Oo3ZUmB2bk
         aEl3b9f1nBDIQ7m7eeH0J4pAF5/Ydj8zGk9e3HxPjwPWPDqkWFZGNQZxfd7TqlORh0a+
         cMDw==
X-Gm-Message-State: AOAM530FjU2U/XKcWblTOBXvknsVkkzLe6ka/+gSe64nXFRwsHCoKoEv
	yOGAlV1FdIxWz9Vp/Hmt6EnLIg==
X-Google-Smtp-Source: 
 ABdhPJzzDlZuw+I8PISuKsOfRxr0pKlrbU667SJ2tNrcmLi+3ajxhQRL4+mmaF4xOOx8Z9wpGt0/WQ==
X-Received: by 2002:a7b:c7c6:: with SMTP id z6mr13201186wmk.125.1635521023729;
        Fri, 29 Oct 2021 08:23:43 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:f597:af8e:ac:d124?
 ([2001:8b0:aba:5f3c:f597:af8e:ac:d124])
        by smtp.gmail.com with ESMTPSA id
 o11sm9311316wry.0.2021.10.29.08.23.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Oct 2021 08:23:43 -0700 (PDT)
Message-ID: 
 <7bf2e2115531d58341742e99345ca48fbbbe6660.camel@linuxfoundation.org>
Subject: Re: Minutes: Yocto Project Weekly Triage Meeting 10/28/2021
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Trevor Gamblin <trevor.gamblin@windriver.com>, Yocto-mailing-list
	 <yocto@lists.yoctoproject.org>
Cc: "MacLeod, Randy" <Randy.MacLeod@windriver.com>,
 "timothy.t.orling@intel.com" <timothy.t.orling@intel.com>, "Wold, Saul"
 <saul.wold@windriver.com>, Steve Sakoman <steve@sakoman.com>, "Surendran,
 Kiran" <kiran.surendran@windriver.com>,  "sjolley.yp.pm@gmail.com"
 <sjolley.yp.pm@gmail.com>, "Mittal, Anuj" <anuj.mittal@intel.com>,
 "akuster@mvista.com" <akuster@mvista.com>, "jpewhacker@gmail.com"
 <jpewhacker@gmail.com>
Date: Fri, 29 Oct 2021 16:23:40 +0100
In-Reply-To: <cb112c3f-3d10-4dd9-5f9f-682d0a8108df@windriver.com>
References: <cb112c3f-3d10-4dd9-5f9f-682d0a8108df@windriver.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Oct 2021 15:23:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55187

On Thu, 2021-10-28 at 11:32 -0400, Trevor Gamblin wrote:
> Wiki: https://wiki.yoctoproject.org/wiki/Bug_Triage
> Attendees: Alexandre, Anuj, Armin, Joshua, Kiran, Randy, Richard, Saul,
> Stephen, Steve, Tim, Trevor
> ARs:
> - Everyone to review Old Milestone bugs and move to 3.5 milestones as
> necessary
> - Richard to add guidance to Bug # 14613

I added some comments.

Cheers,

Richard


