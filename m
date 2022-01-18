Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D21DFC433EF
	for <webhook@archiver.kernel.org>; Tue, 18 Jan 2022 17:57:03 +0000 (UTC)
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com
 [209.85.215.180])
 by mx.groups.io with SMTP id smtpd.web11.460.1642528622532556715
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Jan 2022 09:57:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=pqaopDe2;
 spf=pass (domain: gmail.com, ip: 209.85.215.180,
 mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f180.google.com with SMTP id f8so14797451pgf.8
        for <yocto@lists.yoctoproject.org>;
 Tue, 18 Jan 2022 09:57:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:organization:in-reply-to:content-transfer-encoding;
        bh=At7R+uXy+vHNpZaCnKS0bQnAOseT77IiGULRo/FpHL8=;
        b=pqaopDe2Sv73jQNRSmFACIyxfUov0d5DV+WzUpMsJIv+2pu0qA0665ZBRf78tLMUfD
         pjUVVvN1DC/nGorwGm2I3Bx9yCVoEHawRPGenDRhG3aCZ8C3rC4JPTuu5K7BfC4DXFxR
         mRamxancqQ7IX+sO71PEiv6JtY4quf7GzIaLq2LOviQhN09sLJ37qZSNZG+e7OOGvCjT
         g7wwrWVi5IJYBzKyKr54pPMhhemN9fJz1sj3cUhGKSVX/t+emFXDguoZ/XCwdwUpS9JK
         +5nG09VgberJsy66uEbgMX0p6f4Qb3ausT5v09YBvOM1LxRzyIspLT2Hnx3IDPURuu4g
         MZzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=At7R+uXy+vHNpZaCnKS0bQnAOseT77IiGULRo/FpHL8=;
        b=5raJIJSqhO1qhXQXKj6frOmToLsn5rkzPxDTLApPHjLYfVVDTjxM6OwKSSneEWhJvr
         bdj+EiLRyvjNTHidWmp91Lf40d5Nwd1xibF31LRaHENrOBxDO56ptblr5240onipj1I4
         FemTh1GxKeBlNFGb5alypUlL7bpxaoQrkwqTG08JziqXW0fKlARfdwDi6qBQMkcUuW4P
         HsXMPbel5c4W6NpdOqYtuNQd1o5MRNKPSn3Le/c4IHEGFlepc6Is3ZBkRXyww943CLN3
         9aVKbiTc+sMXy1pzPxri0407jowy34IkVw4MEUjeuoRyKK81FJWa13WAerAEqocHBeJX
         pBxQ==
X-Gm-Message-State: AOAM533INBwK7CBhpLTUBuJPKlPuXJeh+14N9p6goeiNKNwLUsiS7jbg
	eMlLiXPpyJfqUlETu01Bdwg=
X-Google-Smtp-Source: 
 ABdhPJzfp+9mkHXMrBLxyrv8LCtTqThZ8YXMKWAzB7FuHYhbwvAGqo/J7pWbyvrtBq/KTb9peXcF+w==
X-Received: by 2002:a63:82c2:: with SMTP id
 w185mr18962461pgd.55.1642528621952;
        Tue, 18 Jan 2022 09:57:01 -0800 (PST)
Received: from ?IPV6:2601:646:9200:a0f0:5126:142:abd9:54bb?
 ([2601:646:9200:a0f0:5126:142:abd9:54bb])
        by smtp.gmail.com with ESMTPSA id
 d4sm18540253pfj.78.2022.01.18.09.57.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jan 2022 09:57:01 -0800 (PST)
Message-ID: <4b11e81f-32b0-952e-c6a7-ffc4ea7e1351@gmail.com>
Date: Tue, 18 Jan 2022 09:57:00 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.5.0
Subject: Re: [yocto] gdb with a broken sdk
Content-Language: en-US
To: dacav <dacav@fastmail.com>, yocto@lists.yoctoproject.org
References: <Yd45x2MtXCk7KTRu@whisky.dedyn.io>
 <YeSpkoC+s5SpWYHI@whisky.dedyn.io>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: <YeSpkoC+s5SpWYHI@whisky.dedyn.io>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Jan 2022 17:57:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55904



On 1/16/22 3:26 PM, dacav wrote:
> On Wed, Jan 12, 2022 at 02:15:38AM +0000, dacav wrote:
>> How can I include aarch64-foobar-gdb in the devshell's PATH?
> 
> Follow up on this thread: I've been kindly helped by kroon on #yocto.
> The trick consists in adding a build-time dependency to gdb-cross-aarch64
> in my recipe:
> 
> 	DEPEND = "gdb-cross-aarch64"

perhaps gdb-cross-${TARGET_ARCH} would be more generic.

> 
> At this point I can just use `bitbake -c devshell $myrecipe` and the
> debugger is available.
> 
> Bonus: the devshell turns out to be very useful as a replacement
> for the SDK: the environment allows me to do the cross-compilation
> with just a `make`, while earlier I needed to run `bitbake $myrecipe`
> and wait several seconds.
> 
> 
> - dacav
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55899): https://lists.yoctoproject.org/g/yocto/message/55899
> Mute This Topic: https://lists.yoctoproject.org/mt/88397912/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

