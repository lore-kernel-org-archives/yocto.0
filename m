Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C945BC433EF
	for <webhook@archiver.kernel.org>; Tue, 11 Jan 2022 10:41:56 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web10.5390.1641897715055618552
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Jan 2022 02:41:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JOuPzjSG;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id r28so3722804wrc.3
        for <yocto@lists.yoctoproject.org>;
 Tue, 11 Jan 2022 02:41:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=qZrx/cHKKygH+G5hJjl7tSk0H3CSZqCjKZmznT2EKeM=;
        b=JOuPzjSG8btF+Ky80Vj28u3Sx8yiJJirOtbucbJxVNCnhQG+0XmcG5n3smRaz06655
         WHQ4YeNJJf2jgMQ/5QRDiVmO/jZaHOMi+lMcn1mEWa06zhvWruLIBAZLv4k0tV+5DFuv
         Mja6Bg7EZiA2LXrSXxy5LGsxHfTTMyq0ESkAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=qZrx/cHKKygH+G5hJjl7tSk0H3CSZqCjKZmznT2EKeM=;
        b=jqhoMf7JMHk1lfjRXJ/OKsCVy6KNjWjUffEFgNqRd9BgXueYb44OUFjt6lar2+n+uC
         oUQ+mUf1733Rcx0GW4L/nUrUMvibGz35S2+0O3IASvjT3P+rsCblALO6FiWH5AxSV8e1
         Si/qHtxccDDrrf7BPC3eny3IrsEcCRsyzxL96UsxSPFcZ/RUjOF2WnbjlIRv4dJN18/g
         +57rmni7Vc+FAube8YJWNi7pGjyeDLEF1IXhorrs1ZWn/rAWvr+v1cYmGOomSMCnpPej
         iaaJ1ykKgblBzGoRfMVUOsD9pdW4W/bHX3N91FfDkC1yfgh6hi09Ivj3Au9MV59nvCL0
         1aPA==
X-Gm-Message-State: AOAM532tlJUbJpjLahpxt4784EbDXWRniWZZTXDy09fS95oe353Ilb6A
	HlmMqvo2RALiQiRNuxC4F/Xvjg==
X-Google-Smtp-Source: 
 ABdhPJyP6Cr6XDux/g/6aO8UM9jMzHCIqJSaMqd6JKTutGFcO6wENuAE/KIDln/IzjVOrXfZS21tEQ==
X-Received: by 2002:a5d:624b:: with SMTP id m11mr3250564wrv.66.1641897713476;
        Tue, 11 Jan 2022 02:41:53 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:895c:c4eb:1cfa:d3e4?
 ([2001:8b0:aba:5f3c:895c:c4eb:1cfa:d3e4])
        by smtp.gmail.com with ESMTPSA id
 l4sm8970069wrm.62.2022.01.11.02.41.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 02:41:53 -0800 (PST)
Message-ID: 
 <a47ff8d8a5f6bd8cd0454b01d5291010aaca7d91.camel@linuxfoundation.org>
Subject: Re: [docs] No more nightly builds?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Michael Opdenacker <michael.opdenacker@bootlin.com>,
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Cc: YP docs mailing list <docs@lists.yoctoproject.org>
Date: Tue, 11 Jan 2022 10:41:52 +0000
In-Reply-To: <69f31ad6-7e08-29de-8dc7-8dc575eb134c@bootlin.com>
References: <69f31ad6-7e08-29de-8dc7-8dc575eb134c@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Jan 2022 10:41:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55798

On Tue, 2022-01-11 at 10:47 +0100, Michael Opdenacker wrote:
> Greetings,
> 
> Do we still have nightly builds? I cannot find them anywhere, but the
> documentation still refer to a broken location
> (https://autobuilder.yocto.io/pub/nightly/).

We do run them but they're "a-quick" six nights a week with an "a-full" on a
weekend. The results of all non-release builds go here:

https://autobuilder.yocto.io/pub/non-release/

The "nightly" builds don't produce shared artefacts any more, just test result
files and reports.

Cheers,

Richard


