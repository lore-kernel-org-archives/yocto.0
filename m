Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF098C433EF
	for <webhook@archiver.kernel.org>; Thu,  5 May 2022 06:32:24 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web11.7793.1651732334844494589
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 May 2022 23:32:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=B7ElLL4L;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id u3so4718892wrg.3
        for <yocto@lists.yoctoproject.org>;
 Wed, 04 May 2022 23:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=BzTrILJNyDV7Qd6GOwojMEmcsomdYIjuiOYAnqAuiKs=;
        b=B7ElLL4LpMVVad7og8hKUTrhSjV9z+Rt9D0eEn6gAAzdXRSDw/fr9z6F0BYmmHvD3t
         XMFZn86lckI4nIleUbQbj83LEcX72vWxpFpPYtjXkWS+9LnVNWNgyLLXmzXuttp984c2
         CdUAznl5efc5xJNRqj2tYwU/OBOLBPKbOGc0A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=BzTrILJNyDV7Qd6GOwojMEmcsomdYIjuiOYAnqAuiKs=;
        b=gpDcg7BlgxB4WYVxCAQ8wylVBEG0YDlYt7Le+e7HpdvqCjwzpCojbz6mBBWrak7pB+
         22KGZc3BQP0AnOosXP7bM/u5bTpsF7RTaFNl8m0zQ9RUxTUeTz35zpVm3xZkN1JQ/BI2
         +1UCiFW6mXvM8169yxiPVlwqb0qJd12pdr63xr9ZRgccjZ23xlbDzX+GsdihTxEwdPcD
         86cGVr4lj4KR/v1P8a40EIe9hZLX1cNSN0cUS+92jpHeYcr9XnPpJn/BkWZ1iibAte/2
         7jOHV2fpJVbOW83HuKlyGESnNtw+giImq1k0rs50tkcMV1Le5yTzlfwEgevw6kr9k9NQ
         z5Bg==
X-Gm-Message-State: AOAM532eYOGBJGY1+fLTsibw64uf3Gt4gwbwpWTwtK+NdhQ8tyT57NMt
	mUM8GKiDvmIynPlMcfkpVb0How==
X-Google-Smtp-Source: 
 ABdhPJyZPEx85mnoM4STtYbmb12+bYzfYX89mvtGA9vOpa3TSTaNyMBPqNcZD3P3so1rlcSJbaKHtQ==
X-Received: by 2002:a5d:6e8b:0:b0:207:861e:36cd with SMTP id
 k11-20020a5d6e8b000000b00207861e36cdmr19180900wrz.563.1651732333235;
        Wed, 04 May 2022 23:32:13 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:89fd:1fdc:c26b:652b?
 ([2001:8b0:aba:5f3c:89fd:1fdc:c26b:652b])
        by smtp.gmail.com with ESMTPSA id
 l13-20020a1c790d000000b0039457b94069sm625093wme.42.2022.05.04.23.32.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 23:32:12 -0700 (PDT)
Message-ID: 
 <acfd02399848ca4b98bd2b9e59fda74f754138bb.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-3.4.4.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org,
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Cc: Yocto TSC <tsc@lists.yoctoproject.org>, "Mittal, Anuj"
	 <anuj.mittal@intel.com>, "Elberger, Richard" <elberger@amazon.com>
Date: Thu, 05 May 2022 07:32:09 +0100
In-Reply-To: 
 <BN6PR1101MB2339141C648E8A8C987D5BD5BBC29@BN6PR1101MB2339.namprd11.prod.outlook.com>
References: 
	<010101808ce91651-962b6832-98c0-412d-b766-0b6f9cfbf3e0-000000@us-west-2.amazonses.com>
	 <6cf4b0c243c9fbb0ca7a7088acd22d8a5c23232f.camel@linuxfoundation.org>
	 <BN6PR1101MB2339141C648E8A8C987D5BD5BBC29@BN6PR1101MB2339.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 May 2022 06:32:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56998

On Thu, 2022-05-05 at 01:15 +0000, Teoh, Jay Shen wrote:
> Hi TSC,
> 
> Intel and WR are good for QA execution.  
> Shall we proceed?

Yes please, the TSC is concerned but doesn't believe there is much we can do
about these issues and that they shouldn't affect the release quality.

Cheers,

Richard


