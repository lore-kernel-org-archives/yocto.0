Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07412C52D7C
	for <webhook@archiver.kernel.org>; Fri, 23 Aug 2024 10:03:22 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web11.12787.1724407395978855141
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Aug 2024 03:03:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KCPL0Bv1;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-42817f1eb1fso13932125e9.1
        for <yocto@lists.yoctoproject.org>; Fri, 23 Aug 2024 03:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1724407394; x=1725012194; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vaRsPB9u9UBDpxbqA1PiXMcqXZgBaSPefSfK1eminik=;
        b=KCPL0Bv1OK6NzbEDI955EdGpHe7jgfYvr5YbeqYcnSrrcgasBohH1B3k6frAfgtgLr
         EIYmOReV+9vuvBnVjxJj+ObXNEmrmsvqWT7rxvwWcZFNS5AXtGT4I1A7nOYiMM3ZND8K
         ItYitN1mujTaNXGL/1Ew7Wh2B2xvaUU1ejIl8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724407394; x=1725012194;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vaRsPB9u9UBDpxbqA1PiXMcqXZgBaSPefSfK1eminik=;
        b=qp5kj/c8k2KMhj0C5AnaAY4Lc9zMzi+F5Hfoa4u5jRcacXXq+9/+WXcfzjP4kwe11b
         efWKh+nFnDznFKOcWIBHCkAmm+yPXCDT0n+UReWvHZiCPhXczL5Sf+MuyrA5R4FChCbM
         R7c+uhCF4AdjqzBn9Mz08uJeqjC1sbffWltvg7lbY2kGs8UeX0mFqB46pYG2TmcbWzgf
         2fWDKUi3FOOI0SvpEvL7LVPT4a5J7q+lgOSvA1SPuq/CDi3Ibeu/YU11xlO3qB13pqxR
         mIfPWL0RTBb5Py7jrWFQD5b9BS5d7l20IAmsF26Z+bbUkfMbVB30JFz13ULhEFO+z49v
         RnAw==
X-Forwarded-Encrypted: i=1; AJvYcCWch8o/KOJPja7BCsS1wZCNDTXSv3tboztkZVK7E0afPkVowYcq9kdmgIzMXWryL4Jf+ze++w==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yz2jfyoMNSpiDE2OFUWunSUD/Y12PT6Fx7P7v3opYDCESKyrMVH
	Zq3cRiyiLevBf508YdlyixmGiApiCC6AXpRAUH/fnRRflOSTs2mYAOrF7b3FkwzYPzEb+YHoDbj
	O
X-Google-Smtp-Source: AGHT+IG0MtUqkSFlaJiL7+F/cO5CE+CtwrKMPA0Tpqp4n2VcyF1pH9jUJzEE4DvKbOaocheV1ZCSLw==
X-Received: by 2002:a05:600c:3484:b0:426:6389:94c4 with SMTP id 5b1f17b1804b1-42acca00cedmr11027725e9.37.1724407394197;
        Fri, 23 Aug 2024 03:03:14 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:f4f5:df28:3cf9:5842? ([2001:8b0:aba:5f3c:f4f5:df28:3cf9:5842])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ac514e04dsm54529445e9.6.2024.08.23.03.03.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2024 03:03:13 -0700 (PDT)
Message-ID: <321a21b8119586f6a95ae9b30bfe54e80a1aa44c.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder2] [PATCH] schedulers: Drop nanbield
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Quentin Schulz <quentin.schulz@cherry.de>, yocto@lists.yoctoproject.org
Date: Fri, 23 Aug 2024 11:03:13 +0100
In-Reply-To: <da089619-68d0-4254-96eb-7a8f676c2c66@cherry.de>
References: <20240823092630.797925-1-richard.purdie@linuxfoundation.org>
	 <da089619-68d0-4254-96eb-7a8f676c2c66@cherry.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Aug 2024 10:03:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63739

On Fri, 2024-08-23 at 11:43 +0200, Quentin Schulz wrote:
> Hi Richard,
>=20
> On 8/23/24 11:26 AM, Richard Purdie via lists.yoctoproject.org wrote:
> > The nanbield release is out of maintenance now, stop running
> > metrics for it.
> >=20
>=20
> FYI, Dunfell too is EOL and still appears in there.

Dunfell was an LTS which many people are still using so I considered
dropping it but felt we should log things for a bit longer there.

With Nanbield we have data showing the CVE levels are going crazy and
there wasn't really any further point in logging that data.

https://autobuilder.yocto.io/pub/non-release/patchmetrics/

(see CVE trend)

Cheers,

Richard

