Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2553CC46CD2
	for <webhook@archiver.kernel.org>; Wed, 24 Jan 2024 17:59:10 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web10.29918.1706119145635377930
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jan 2024 09:59:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=e1pbavuG;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-68195c0c8d1so23849456d6.3
        for <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 09:59:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706119143; x=1706723943; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hwbmZuc82IgK92udBzwfBhdhNMtyiRzF5dCTB/mTVWQ=;
        b=e1pbavuGlBqMo7ug7rRk3IIUBivtivUsfa91XWiD/Epydmg/8Qptn2hV9ROukYa7r8
         9pCLJYZmQwQcEwgn4rWgmBMALhkWT4b6b6XO9SLWXDXvvIbDa8hdTr4gfddx068DoYjN
         PxNRAwZqRKbupHG6pVBr1dQajOIc31gRAZXb98fQTrwFNw4/VA1roMdZi2KCqG16olDa
         mgvSHUI8Z0hPbrPSCNfBxBBgdOnUMi9QcrdQrIgf5oz7x84hnUwC6Ullf4Fsif8YAqnS
         +qDtcHqEWFBwm7ihlVfR2iIQWAKbtwUPQXpferIhqn+z5kjODzpOLHwODYU3K1vTq/6j
         ZscQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706119143; x=1706723943;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hwbmZuc82IgK92udBzwfBhdhNMtyiRzF5dCTB/mTVWQ=;
        b=cUxDC34OHHRIvOV5dLqxX5Da63SMscsuEynGBVdQe0ukn5xX1Us+DZXxroNW9+QdTt
         Lw8dZZ+Sq5vtgbXNkU4zQustOZS0wkAjggX5H2NQeGGb69pSpvcu7cmhYxEHbFkNt89i
         /5473bHEqIY2KgZ5ZHEACq1dis8eEabDuA6MCyEsMQPLHJPSiwwj0mQxCzXrS1Qxk7PO
         kD+USDKGkAdKgR4M84OmhGEFY6xDA1NZp6K2FxC/H4T4S5Mqu0Ul7jaDdX2UK5U5rQCE
         vFf2hipu6RxKhXRd8JbZOiS9IWw55zsqAK0WD32E9YLuNdEoBH1KAeDBDSHt1MPeGdHN
         2tzw==
X-Gm-Message-State: AOJu0Yzq23oYMjOfAUfGIEp3bgMbXCu+YwHz/ZR46wL/o1gelmU2AVFs
	z2nHuR502zS2qrczo6/prA+4dGej7YvzgRleAXJ1JYbbgtCJQJobZ73notcQ
X-Google-Smtp-Source: AGHT+IFWqWo3ASfGMj5jlTOdMY8D+Ds6Q+9sDbaVUgHF+SYyKeWgLqEpFmU0JcHqWroKwQN3MigAwQ==
X-Received: by 2002:a0c:dd87:0:b0:67f:67de:5d00 with SMTP id v7-20020a0cdd87000000b0067f67de5d00mr2425924qvk.46.1706119143645;
        Wed, 24 Jan 2024 09:59:03 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id d15-20020a056214184f00b006819a4354basm4711462qvy.37.2024.01.24.09.59.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 09:59:03 -0800 (PST)
Date: Wed, 24 Jan 2024 12:59:01 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org, dedekind1@gmail.com
Subject: Re: [yocto] bmap-tools repository closes
Message-ID: <20240124175901.GA22635@localhost>
References: <5e58c6719d797be31ece8149535531036ae18a47.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <5e58c6719d797be31ece8149535531036ae18a47.camel@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 17:59:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62262

Hi Artem,

On Wed 2024-01-24 @ 02:01:08 PM, Artem Bityutskiy wrote:
> Hello Yocto community,
> 
> some parts of Yocto software (MIC?) use the 'bmap-tools' project to speed up
> image flashing.
> 
> https://github.com/intel/bmap-tools
> 
> I am the original author of the software, and I created it many years ago to
> speed up Tizen image flashing, and it helped a lot back at the time. It was also
> my first python project, so it was a lot of fun learning python while also
> creating something useful.

Thank you for your contribution, this tool has been quite useful for me over
the years.

> But after that, I stopped working on it and it was mostly Yocto folks who
> contributed changes here and there. I never had time and enough motivation to
> maintain the project further, but other folks helped.
> 
> Simon McVitte was active maintainer, but he said he does not have time for it
> now as well.
> 
> The project is in "github.com/intel" space, and Intel is going to archive the
> git repository soon. This basically means the repository becomes read-only soon.

Thank you for this update and letting us know ahead of time.

> Would Yocto community have enthusiasts to fork it and maintain the fork?

Yes, I'll volunteer to maintain it going forward. My non-stackoverflow python
knowledge is minimal, but I recently dug deeply into bmaptools to solve an
issue I had noticed. So I'm confident enough to take it over if nobody else is
interested.

Best regards,
	Trevor

