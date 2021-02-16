Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
 by mx.groups.io with SMTP id smtpd.web11.93.1613517769881098543
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 15:22:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=owhMmOUg;
 spf=pass (domain: gmail.com, ip: 209.85.160.178, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f178.google.com with SMTP id g24so5816419qts.2
        for <yocto@lists.yoctoproject.org>; Tue, 16 Feb 2021 15:22:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=5wPz80R2QyRfaNB9z0dQ2jT1QjoVaVfaL/34HVGZ4sQ=;
        b=owhMmOUgkYodMD1CWnVp2Gd5/5FBKwBw+PAOmeTMDldV2aJluABTAUtoUuuxd/hosC
         AxPio35Mo7tXv0jCMmp3RhJCiuUbfEDcGL4EshLZ5qfhUAxIzCQbTDSL8v4oNRHZmJL8
         spM/sW48CcXsS/SR7vqAD1WndIjLTIL0lZxwxG26KYHBQlZknXESAv2QxmHgi8dGuGHD
         YPxMLjQD9NaR04PUjoOIw/9dmpkC6fDYo5u+LNXMCp3pbR2aoJmCa53bdy095svhk0qA
         ZSHXk1pQVkZYtIujDYZD4kbIFEiZjNIzFSUeqyzr4zC+65lvnOcB5DjAEbEddST5Awmn
         tJyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=5wPz80R2QyRfaNB9z0dQ2jT1QjoVaVfaL/34HVGZ4sQ=;
        b=eQuMmmcHz9QCM/EUk5QyJ05zjE7y3nLm+1b825BDDBuSXX0v/29R0sH6dUZkFCEhsa
         c3EHL8tTHpHvnOzKzLqOEbBmKCvG/ephD2wW1LD23/zF6KbQyAcb1b52It6QCXjud3Ap
         MxSnDNhB7s2re2hgYTel4RyK/eIVhFG8FufPnerh8ukt/4gjKwkCxdblxIb1NQXGk1Zq
         eJ7dM749kkl6D95OFqklgUSzg6RyvEEdmJQDkxh0K8orFYOXKieYL6omH5284E83Dfyo
         HfD4PAqExGx0BqgRzeF+fulHxjBzSLfGio3zyWhihD8J3uMv+idhhz4cQCyqrxsDe+Ov
         DyAA==
X-Gm-Message-State: AOAM533pQxkNp3RCuR3dkHlCU7Xn85Y6AjlO7spGPfTl/TpVvC478oFf
	jQbIL3hvywamKK8K6RPFOmU=
X-Google-Smtp-Source: ABdhPJy6iiS+MKETQA17SjhqOv/3BNvPbwoJOqef0ObUFvP0NPx/CNRMgVlUVSj2G7bpTWg4TzOBcg==
X-Received: by 2002:ac8:5a48:: with SMTP id o8mr21703116qta.269.1613517768995;
        Tue, 16 Feb 2021 15:22:48 -0800 (PST)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id b7sm348696qkj.115.2021.02.16.15.22.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Feb 2021 15:22:48 -0800 (PST)
Date: Tue, 16 Feb 2021 18:22:46 -0500
From: "Trevor Woerner" <twoerner@gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Yocto Technical Team Minutes, Engineering Sync, for Feb 16 2021
Message-ID: <20210216232246.GA25268@localhost>
References: <20210216191013.GA36798@localhost>
 <3e18b390-127b-1f50-077b-f5a8483089ff@gmail.com>
MIME-Version: 1.0
In-Reply-To: <3e18b390-127b-1f50-077b-f5a8483089ff@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Tue 2021-02-16 @ 12:41:37 PM, akuster808 wrote:
> On 2/16/21 11:10 AM, Trevor Woerner wrote:
> > Yocto Technical Team Minutes, Engineering Sync, for Feb 16 2021
> > archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit
> Thanks for taking and sending the minutes.

You're welcome :-)

I take notes every week, but had stopped sending emails to the list at the end
of each meeting. A couple people mentioned privately that they appreciate the
notes being formatted for email and sent that way, so I picked it back up
again.
