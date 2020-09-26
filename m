Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
 by mx.groups.io with SMTP id smtpd.web12.10175.1601122094887603806
 for <yocto@lists.yoctoproject.org>;
 Sat, 26 Sep 2020 05:08:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=W8ley0uu;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.66, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f66.google.com with SMTP id y15so2044004wmi.0
        for <yocto@lists.yoctoproject.org>; Sat, 26 Sep 2020 05:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=RTJhPZu+53pETb8L7FYpGX2BodPZrbZtWk1ZIU5Yr28=;
        b=W8ley0uuEVKbjkrp3fhr+9ZuKQrUFLabk8lToemZ3uct39LB6ThOJj4UG50R82Zo55
         2m/FKSulnaiEePpp/+/0iYVxO0hxBOPg0vETn7qwkOp3g9ZHb9lFFAxh0CJqyyi6OUSL
         REh0jA+nOgaI8thi8Feuh5sdFNkIiXmvxuxQA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=RTJhPZu+53pETb8L7FYpGX2BodPZrbZtWk1ZIU5Yr28=;
        b=IQukIKZaivqjo8Jf+XlF80Hr9z3Uh/rtXPvmmwbE5mhIrJKObAYFq9Iri+1Af98S3a
         o1lCXxDti9cXfRJ7esu9Z72BfFDnIr7BFkPOQcHVdWhPRLywv6vkJioda/nzROKim/fQ
         zABnSmAYME/Iial2cU8luGBjW3ECgrsB248U0QcRfWjRXE/deFtJlGE3UzsHGYj1mLYi
         2SibsSCtxuS/sAwJo/+yOwjJaFkOVs3TsVtGjd7v6AOBnXfoolgppfYMCITn2Qj2YGJH
         xz1TC6+t+dPRBSHS4QS5VVO0DUrIWpXdbjhCGC+NosVY6NXdMy9WbqxB9UekmlaVWbqT
         +miQ==
X-Gm-Message-State: AOAM531XzSFIQaFVzhdRerNO3k3O2+mgqIABUlvG8AZ42uwLvn4oC0IC
	YdknLPD83jfStr4hP6ARL4BLwD71awLxCQ==
X-Google-Smtp-Source: ABdhPJzVgNZ22oxb3f0qYm9SGSB+D6iWX2LsLANxES89VTEYjBIGkqIdUEeTkqFxNbGD79GXNMv6gg==
X-Received: by 2002:a7b:c4c3:: with SMTP id g3mr2514192wmk.128.1601122092832;
        Sat, 26 Sep 2020 05:08:12 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 4.2.7.5.8.3.b.f.6.2.f.6.c.b.0.9.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (4.2.7.5.8.3.b.f.6.2.f.6.c.b.0.9.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:90bc:6f26:fb38:5724])
        by smtp.gmail.com with ESMTPSA id z15sm6649902wrv.94.2020.09.26.05.08.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Sep 2020 05:08:06 -0700 (PDT)
Message-ID: <15bdc2959fc7da47fc459f319375fcbf6f9a488b.camel@linuxfoundation.org>
Subject: Re: [OE-core] [PATCH] pseudo: do not expand symlinks in /proc
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, Sakib
 Sajal <sakib.sajal@windriver.com>, Randy MacLeod
 <randy.macleod@windriver.com>
Cc: seebs@seebs.net, Matt Cowell <matt.cowell@nokia.com>
Date: Sat, 26 Sep 2020 13:08:05 +0100
In-Reply-To: <3f474697-4594-a2f3-9988-55ef2b2d9eb5@windriver.com>
References: <20200925170532.19685-1-sakib.sajal@windriver.com>
	 <3f474697-4594-a2f3-9988-55ef2b2d9eb5@windriver.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2020-09-25 at 14:47 -0400, Randy MacLeod wrote:
> pseduo patches are usually sent to the yocto list so
> I've added that list and only BCCed oe-core here so
> people know where to look for follow-up.

In Sakib's defence, did you read the README in pseudo? :)

"Discussions and patches should be directed at the openembedded-core
mailing list at openembedded-core at lists.openembedded.org."

Whether that is right or not, less sure but it is what it says!

Cheers,

Richard

