Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.977.1619550231958682941
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Apr 2021 12:03:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jq7huUSn;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D99F338C082F
	for <yocto@yoctoproject.org>; Tue, 27 Apr 2021 19:03:50 +0000 (UTC)
Received: by mail-io1-f41.google.com with SMTP id e186so7626115iof.7
        for <yocto@yoctoproject.org>; Tue, 27 Apr 2021 12:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=6xXDxn7wpyUTf+IWmjdxpJZf2uUBTWn3zy864zhZG4k=;
        b=Jq7huUSnUT8kbuCjnBKl/c0qKcZ8Uiin5UZpX8yzTV2b74LiO0loO5lANR4IzoMP9w
         ekYmjBrl6tbYytiPchKQKsGKm4Ltrte6GraMiQXBzHP2b0VU/1GLxd3qaZ4K/odfMM9K
         BGMBr3FgV+MR0j7cfmbMOhR4IxoDfJooXsCggR1zLt7XC8wZu4Fme+ggxkySeg/xjmrQ
         PHnJHmC+IJlF4NpJ9d+UPCWie/M5uzVuKLcerE0x/4PHv3pBY2IqjKfDFQ93RGo3/WQ5
         agF0nx409WF19sWB8iGTwvaJhcmfoyJFvfQItbsGOpvWIXpt4z1Dk+DY0OtUCT8h7EsP
         j7ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=6xXDxn7wpyUTf+IWmjdxpJZf2uUBTWn3zy864zhZG4k=;
        b=gzzHZsyZYzo8Q3mz913aQpiW/k4y2ZRLLJwsiU/WeaiZ8/FgcpiH1tpmRtX9AXY5Sp
         LjTxAZR20VvREuWVy9ZVRGS2y4TbF5tgM9/+Pe34Ax6X9UIBy1H3XfU5JByKuEfDRXVa
         sZ/osyPMaM4KhkqiuWxOgf2nESn5DCVQipeXhk8FzlqGQxvln70GkRpLygEOmfFgaLwq
         aaEddNUAMPyChIAVf2wfG7MJppGKcVplLzUFuivNJ0hE+vYiw8965m32J+HO6uzOizrM
         p3sQOPp0aBeLqhVCMw+kSVi6zyfc2+pKGHyeZiL6b4NYUUyqCy5jgR8jl+FKUEHAtrAC
         xvDA==
X-Gm-Message-State: AOAM531MkqmPMrZaDoJm5fuvTSgRgrJr5/v/qko6GHd7feuDwxSbytQd
	02Rmfuc49FT6eaeeRkTn9jA=
X-Google-Smtp-Source: ABdhPJzN7W9r6Dnn3dK1nREPumuNqEb5FcrbQ7WTFgxjVS9/T9cYXmhhyLTdfN/VRAdQSEjX3wyZaA==
X-Received: by 2002:a5e:9202:: with SMTP id y2mr20241669iop.114.1619550230224;
        Tue, 27 Apr 2021 12:03:50 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:d576:9b40:49cc:6195? ([2601:202:4180:a5c0:d576:9b40:49cc:6195])
        by smtp.gmail.com with ESMTPSA id l5sm1671492ils.61.2021.04.27.12.03.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 12:03:49 -0700 (PDT)
Subject: Re: Can layer maintainers add yocto-X.Y tags for yocto-3.3 and later?
To: Randy MacLeod <randy.macleod@windriver.com>, yocto@yoctoproject.org
Cc: "Jia, Hongxu" <Hongxu.Jia@windriver.com>,
 "Mittal, Anuj" <anuj.mittal@intel.com>,
 Bruce Ashfield <bruce.ashfield@gmail.com>, Khem Raj <raj.khem@gmail.com>,
 Richard Purdie <richard.purdie@linuxfoundation.org>,
 Michael Halstead <mhalstead@linuxfoundation.org>,
 "Wold, Saul" <saul.wold@windriver.com>, Joshua Watt <JPEWhacker@gmail.com>,
 Jia Zhang <zhang.jia@linux.alibaba.com>,
 =?UTF-8?Q?Andreas_M=c3=bcller?= <schnitzeltony@gmail.com>,
 derek@asterius.io, Kang Kai <kai.kang@windriver.com>,
 "jpuhlman@mvista.com" <jpuhlman@mvista.com>,
 "steve@sakoman.com" <steve@sakoman.com>
References: <3a55fddd-700a-41f2-5de9-f35dd46059d0@windriver.com>
From: "Armin Kuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <9a281e6e-b786-4777-205b-b689bf973f96@gmail.com>
Date: Tue, 27 Apr 2021 12:03:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <3a55fddd-700a-41f2-5de9-f35dd46059d0@windriver.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 4/27/21 9:48 AM, Randy MacLeod wrote:
> Hi,
>
>
> I've CCed some of the maintainers of more widely used Yocto layers
> to get comments on about tagging. Please add in people who I may
> have missed.
>
>
> For a while now, oe-core has had a yocto-X.Y tag in addition to the
> release branch name. This helps users easily find the exact commit
> that corresponds to the say 3.3 GA release. There have been some
> omissions in tagging but Michael and Richard are adjusting the
> release process so that tagging will happen more consistently.
>
> Most yocto layers have not adopted the tagging perhaps because they
> weren't aware of it so that's why I'm writing this email. Tagging
> will make it easy to find the first commit for a specific release
> independent of what the branching policy of a layer is. Layer
> maintainers sometimes create the release branch in advance of
> when oe-core is released and by adding the tag, it would make it
> clear when the layer considers content to be officially released.

So the official starting point is what you are looking for? is there any
expectation to tag for dot release alignment?

> Of course it's up to users to decide if they are going to follow
> the HEAD of a branch or, for some reason, stick with a tagged commit
> or private branch off that commit.
>
What's more important, tag or branch? Many layers hosted on git.yp.org
don't have the 'hardknott' branch.=C2=A0 If the discipline to create a ne=
w
branch is not their, I have a hard time believing 'tagging' will be high
on their list.

>
> Are there any concerns about attempting to do this for yocto-3.3
> and later?

Tagging in Poky has a meaning of a fully QA set of sources at a given
point of time.=C2=A0 It may be interpreted by users that if a tag showed =
up
in other layers, those layers are also fully tested.


>
> Should we make it a requirement for yocto compliance?
I think you mean 'Yocto Compatible'.=C2=A0 Branching is already a require=
ment
IIRC as the program is against a specific branch.

-armin

> Should it be a feature tested by the yocto compliance script?

>
>
>
> Here's what's in oe-core and bitbake now:
> $ cd .../oe-core.git
> $ git tag -l | grep yocto-3
> yocto-3.0
> yocto-3.1
> yocto-3.1.7
> yocto-3.2
> yocto-3.2.1
> yocto-3.3
>
> $ cd bitbake/
> $ git tag -l | grep yocto-3
> yocto-3.0
> yocto-3.1
> yocto-3.2
>


