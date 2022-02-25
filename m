Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D686C433F5
	for <webhook@archiver.kernel.org>; Fri, 25 Feb 2022 18:10:00 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web10.537.1645812599127924333
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 10:09:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=DkVJXkJF;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id n14so5684871wrq.7
        for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 10:09:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=lmrpMdRR9b2qtNqsGd9M/tNT9wm8cwIbgXey8F8FCd8=;
        b=DkVJXkJFhW5hnXwNeINNKQNlGCYDKeXd2XHqi7pqHawDO/kiobp2yrNGN1fI5ojufa
         T2SzVeqaur2SlvjaYIX7sL4PpkhDS7TmU7LKFNVCoPTKM0H/Z0tMa/xhwtkHOhlNBmYW
         vuXjl7F83+z9iRjowlhqXttYLcp+6BxRqOGGU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=lmrpMdRR9b2qtNqsGd9M/tNT9wm8cwIbgXey8F8FCd8=;
        b=pBb6PpWTmudGrfInrQb/eGjf/Yl767LKfhW0HRnV8BStgPbpqp/qPkSBNAONGKAWIb
         2aUO8qHA/jPgUCXTIvpU5eFUgo+97IFv7IMF60l7Rq+5WFh2FgYYJ8tV3UbUGbwsDKjZ
         uoWe8d5T416nnhlnY+6by2qSvbPtVky+Ik67+Ty5f0xyrfoRg/wIjZu3cJzwVkIgyCyc
         bXFVG8unNobTMvDnZ3vxenXJ7IllPN3zA7EYp1PP+tB9Ixk7zbaJIgVUfgVNVQ6YSd2T
         fQQgDUCob0VpNeTAGjci17zFiHjeZVfkdZjhD8SnqZbRbgNBaMaHEgnLR4FRa/wAGT3d
         nkNQ==
X-Gm-Message-State: AOAM532zBtiqnYufEXHohX5MYg+ljrLj/vbo3thhf7bpvNMT88h2tXvg
	kmWsBQTtpMvcUrbnNSWOWcV9K8r08URdqvwX
X-Google-Smtp-Source: 
 ABdhPJyJVnCS5QFoE6fB4k8thGWH25fFdiCiMQmA7vZZkttVOLOYMCRMpE0eVBOapp5bG5GJvJrcgg==
X-Received: by 2002:a5d:58e9:0:b0:1ed:e2d6:71f3 with SMTP id
 f9-20020a5d58e9000000b001ede2d671f3mr6878820wrd.24.1645812597322;
        Fri, 25 Feb 2022 10:09:57 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:8c05:a731:3c1:5d08?
 ([2001:8b0:aba:5f3c:8c05:a731:3c1:5d08])
        by smtp.gmail.com with ESMTPSA id
 z16-20020a7bc7d0000000b00381004c643asm6329755wmk.30.2022.02.25.10.09.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Feb 2022 10:09:56 -0800 (PST)
Message-ID: 
 <6234ac5289c4ca5846e6f80c13686f61ed340116.camel@linuxfoundation.org>
Subject: QA change - reduced number of reproducibility builds tests?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: Steve Sakoman <steve@sakoman.com>, "Mittal, Anuj"
 <anuj.mittal@intel.com>,  Joshua Watt <JPEWhacker@gmail.com>
Date: Fri, 25 Feb 2022 18:09:53 +0000
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Feb 2022 18:10:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56284

Hi All,

As the project develops, some tests are valuable and some become less valuable
over time.

When we first started reproducible builds work, testing reproducibility heavily
across multiple distros highlighted some unusual bugs and let us improve things.
We therefore currently run a-full with the targets:

reproducibile-centos
reproducibile-debian
reproducibile-fedora
reproducibile-ubuntu

I've noticed we pretty much always see the same set of failures with these
targets now, i.e. if one fails, they all fail the same way.

Those targets are heavy builds which don't reuse sstate for one of the build
streams and hence load the autobuilder heavily.

I'm thinking they've served their purpose and that a-full should go back to just
the randomly selected reproduiclbe target.

Does anyone feel we shouldn't do that?

Cheers,

Richard




