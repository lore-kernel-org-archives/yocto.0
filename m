Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.3100.1619731370532555611
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Apr 2021 14:22:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XbkNcW2t;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5640438C093C
	for <yocto@yoctoproject.org>; Thu, 29 Apr 2021 21:22:49 +0000 (UTC)
Received: by mail-ot1-f45.google.com with SMTP id z20-20020a0568301294b02902a52ecbaf18so10319463otp.8
        for <yocto@yoctoproject.org>; Thu, 29 Apr 2021 14:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=Ge1mJhLJccMdiR+2U3W/qCobaLE+vK9YfdtxX6c2Ivw=;
        b=XbkNcW2tH95ogm+RlCv3/q0N2d7/IAdHmOM+ha9UUcF6wJrf5gChd2uyIjg13Kjd3M
         MX16SOh8bka68Hz0bY62MMl750l4W2no15yq1tfp2LVK6/FnXExglVBZlydh3Rge9fbs
         7hmixzBskjXFHUuS0FYpvHdx6yZIBeHGy0ERhL/UxwX3j03tdT0iQm1wzSUrnIoqUJfK
         y/CZiiWqDvyXjQFrw7zYoCd6O+XfrsRXHmmWxgS7ivWQ6vgKxyluER7tcxEHqj9JCmrj
         aY9HPePzhBIFWSHZRSLt0Btsr988s46fraiWVVaJwjaZMb6YUyfmjXdWOBcrOvaXtWfG
         QNWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=Ge1mJhLJccMdiR+2U3W/qCobaLE+vK9YfdtxX6c2Ivw=;
        b=udFuz9MVXw2Azd58SLTb9I4LIV+Bogaedxr773LDLrzyVvTbqBggYV524Ae++8uQaQ
         uH3siz+3QoZWbzFrUUZXqPpxgK63YtfeNSBunVok8EeTDeEqr9uRnYzRP0xcZYYlSHOJ
         DGuwMNoCqPRv51w7ZHbYgZuOXU8vet3BeBSkOAprpVJin4tX0OEo1wybpFLJ39/epHLG
         HBUN/1O5HEVi2vyn8g7ZxfG+ptm5dd3YZAj/FyRr8UK0a8ETUR18wJ51crx0SkMM4HrR
         WZDrMUOVI9i0NwU4ynCIyOP8MAwXkVPVq+M5gsud419HdRej1olrJ642rlMynGFdMbHd
         YZgg==
X-Gm-Message-State: AOAM531yfzR3tUJg4pjDxDFUHL8iDwUS1dlCnuJnuPVQYUHPG/L9oQ7Z
	Z/KrYn1Vud2o8xpYz9Llk8M=
X-Google-Smtp-Source: ABdhPJxnQqHobfTHDDcNmGf3Oqd81EEEj0b5392DdiqKKZPHJHH378rlyy0zqVyet2n0tonWhgvrDw==
X-Received: by 2002:a9d:5f8c:: with SMTP id g12mr906632oti.283.1619731368450;
        Thu, 29 Apr 2021 14:22:48 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:a862:d97f:9823:714e? ([2601:202:4180:a5c0:a862:d97f:9823:714e])
        by smtp.gmail.com with ESMTPSA id y6sm244175otk.42.2021.04.29.14.22.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 14:22:48 -0700 (PDT)
Subject: Re: Can layer maintainers add yocto-X.Y tags for yocto-3.3 and later?
To: Khem Raj <raj.khem@gmail.com>, Randy MacLeod <randy.macleod@windriver.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
 "Jia, Hongxu" <Hongxu.Jia@windriver.com>,
 "Mittal, Anuj" <anuj.mittal@intel.com>,
 Bruce Ashfield <bruce.ashfield@gmail.com>,
 Richard Purdie <richard.purdie@linuxfoundation.org>,
 Michael Halstead <mhalstead@linuxfoundation.org>,
 "Wold, Saul" <saul.wold@windriver.com>, Joshua Watt <JPEWhacker@gmail.com>,
 Jia Zhang <zhang.jia@linux.alibaba.com>,
 =?UTF-8?Q?Andreas_M=c3=bcller?= <schnitzeltony@gmail.com>,
 Derek Straka <derek@asterius.io>, Kang Kai <kai.kang@windriver.com>,
 "jpuhlman@mvista.com" <jpuhlman@mvista.com>,
 "steve@sakoman.com" <steve@sakoman.com>
References: <3a55fddd-700a-41f2-5de9-f35dd46059d0@windriver.com>
 <CAMKF1so0T4HodY2fcEQ7_pc8Rign9ADMaWxLNM_JSs-xtP9XbQ@mail.gmail.com>
From: "Armin Kuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <53e2d45c-f803-8dd4-02c4-961676f92b42@gmail.com>
Date: Thu, 29 Apr 2021 14:22:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1so0T4HodY2fcEQ7_pc8Rign9ADMaWxLNM_JSs-xtP9XbQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 4/27/21 10:06 AM, Khem Raj wrote:
> On Tue, Apr 27, 2021 at 9:48 AM Randy MacLeod
> <randy.macleod@windriver.com> wrote:
>> Hi,
>>
>>
>> I've CCed some of the maintainers of more widely used Yocto layers
>> to get comments on about tagging. Please add in people who I may
>> have missed.
>>
>>
>> For a while now, oe-core has had a yocto-X.Y tag in addition to the
>> release branch name. This helps users easily find the exact commit
>> that corresponds to the say 3.3 GA release. There have been some
>> omissions in tagging but Michael and Richard are adjusting the
>> release process so that tagging will happen more consistently.
>>
>> Most yocto layers have not adopted the tagging perhaps because they
>> weren't aware of it so that's why I'm writing this email. Tagging
>> will make it easy to find the first commit for a specific release
>> independent of what the branching policy of a layer is. Layer
>> maintainers sometimes create the release branch in advance of
>> when oe-core is released and by adding the tag, it would make it
>> clear when the layer considers content to be officially released.
>> Of course it's up to users to decide if they are going to follow
>> the HEAD of a branch or, for some reason, stick with a tagged commit
>> or private branch off that commit.
>>
> I think this could be a good thing, although it does put the burden on
> release maintainers. mostly they
> test against the tip of the release branch,  So if yocto project
> testing is including these layers for wider
> testing and can then recommend a validated commit then perhaps this
> could be made viable.

That could open up a can of worms as who will fix the QA test failures?

-armin


>
>> Are there any concerns about attempting to do this for yocto-3.3
>> and later?
>>
>> Should we make it a requirement for yocto compliance?
>> Should it be a feature tested by the yocto compliance script?
>>
>>
>>
>> Here's what's in oe-core and bitbake now:
>> $ cd .../oe-core.git
>> $ git tag -l | grep yocto-3
>> yocto-3.0
>> yocto-3.1
>> yocto-3.1.7
>> yocto-3.2
>> yocto-3.2.1
>> yocto-3.3
>>
>> $ cd bitbake/
>> $ git tag -l | grep yocto-3
>> yocto-3.0
>> yocto-3.1
>> yocto-3.2
>>
>> --
>> # Randy MacLeod
>> # Wind River Linux


