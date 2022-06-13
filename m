Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97969C433EF
	for <webhook@archiver.kernel.org>; Mon, 13 Jun 2022 21:33:09 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web08.11728.1655155980485240393
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Jun 2022 14:33:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bf5yqCgH;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id
 r123-20020a1c2b81000000b0039c1439c33cso3780074wmr.5
        for <yocto@lists.yoctoproject.org>;
 Mon, 13 Jun 2022 14:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=RfqSf8LL8xuwyYygU3bYZwE0+KyMmgwgsfOwj0s6zNg=;
        b=bf5yqCgHsQD7Y00l0qRmKpDbPFHb9kd5qI1Nv0Yu1dDPC6zsRuQrCeRkYmYPNkFwhZ
         gugxtAvBkkIIznqHlYZlM83aabd0No3vxnd43zYbpDFv5EnMMu3/hCjEQfchhbnchv82
         EKW2O8AI+z9KRt5S82Glql3mykYzWbbJBvxwU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=RfqSf8LL8xuwyYygU3bYZwE0+KyMmgwgsfOwj0s6zNg=;
        b=df2mriASbFPtRdyJGbs9at5fxPcxWgFkaG1R4NIdp8OXQz4zPEKrzWOoKfEU2LIxCq
         tiTZNzBqIRu3xYt2iRpkwbuWzKWQbqrPUhege/OuDXlI7067yzxXxigsaxOgUsY6BBJT
         46e5uiJx28owtV37KJZGO/10wEj4F5hwueX9K4e8M7UAYsKUgcjId2g0itmgBkdvkiyD
         idvRR7fW5MJKg926jfJrPFpW9D9vC0hobvUrpO9W+9AzxodsRxZ9eGXVz/Xl0BvsjAmx
         Osyq7g7DiuL6++vXbGOoKc/7sjKD/Awo/TQl41eWeiq9prSOUcb+J4sdGAz5nvoa6uU9
         McVw==
X-Gm-Message-State: AOAM532lks4+Nunu3qkLzLHNpWYvXO2ZK+H4fFy7kIXuOYaqadFD9qjM
	Ky8izH3i+hMDqTcT3UA78XQdSw==
X-Google-Smtp-Source: 
 ABdhPJwLAY50ZIV2MNMB3mbcrGXVAHkUHZSXQNUvtEHx780ZugDETFgS8m9htlezY951wweBnX5jJQ==
X-Received: by 2002:a1c:f305:0:b0:39c:4840:ab42 with SMTP id
 q5-20020a1cf305000000b0039c4840ab42mr719747wmq.148.1655155978924;
        Mon, 13 Jun 2022 14:32:58 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:8492:b0dd:b0ac:744a?
 ([2001:8b0:aba:5f3c:8492:b0dd:b0ac:744a])
        by smtp.gmail.com with ESMTPSA id
 n4-20020a05600c4f8400b0039c362311d2sm14625402wmq.9.2022.06.13.14.32.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jun 2022 14:32:58 -0700 (PDT)
Message-ID: 
 <fd3015f18423379e5dd0c7b16ee9ddc951fb2284.camel@linuxfoundation.org>
Subject: Re: [yocto] Force binary package install
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Rudolf J Streif <rudolf.streif@ibeeto.com>, Chuck Wolber
	 <chuckwolber@gmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, Yocto
	 <yocto@lists.yoctoproject.org>
Date: Mon, 13 Jun 2022 22:32:57 +0100
In-Reply-To: <a253f753-5df7-f3b1-b698-8549c33edd4d@ibeeto.com>
References: <22848052-7e8c-d0c4-1c42-6d71022956bd@ibeeto.com>
	 <CANNYZj-DmzVListvGSW8QMzMcyX0xOPBKCw=1V19hWjpjtcy=g@mail.gmail.com>
	 <482f4935-572d-1b6b-162c-b0a208af7236@ibeeto.com>
	 <CANNYZj8=dJ2Eiabx6FEykafYgSUzokg08sPiLW6X-=uJAeZnvA@mail.gmail.com>
	 <9bd2408c-3309-11e6-2bba-37f69d90e4e2@ibeeto.com>
	 <CAB=6tBThBW4mZbVWpOZoYC-onO0TX=xDhv6k6zg_2Z2jUuhhzw@mail.gmail.com>
	 <14b4af80-e9d0-6c0a-0c66-515595e969d0@ibeeto.com>
	 <cebb854db8fcf670da63e81dc2e4554e0b051891.camel@linuxfoundation.org>
	 <a253f753-5df7-f3b1-b698-8549c33edd4d@ibeeto.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Jun 2022 21:33:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57327

On Mon, 2022-06-13 at 13:08 -0700, Rudolf J Streif wrote:
> I don't exactly know how the glibc versioning works. I suppose the
> API versions are defined by the Version file of the various
> components.
>
> However, when I did more analysis on the libraries whose libc
> versions did not seem to be met, I found out that they were libraries
> for a different architecture (x86_64) which were not supposed to be
> included. Now I wonder if the check validates version compatibility
> only or also checks architecture compatibility. However, if the
> latter then the error message does not convey that.

In glibc different architectures implemented different functionality at
different times so the symbol versions don't match cross platform. I
therefore wondering if it was an architecture mismatch or whether it
was an older obsolete ABI we didn't show by default somehow.

What puzzles me is that in theory you should have seen a different
error about the architecture of the binaries not matching the target
though?

Cheers,

Richard

