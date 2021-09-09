Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web10.1762.1631206209855818157
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Sep 2021 09:50:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hAY41dSw;
 spf=pass (domain: gmail.com, ip: 209.85.210.175, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f175.google.com with SMTP id n34so2263590pfv.7
        for <yocto@lists.yoctoproject.org>; Thu, 09 Sep 2021 09:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:organization:in-reply-to:content-transfer-encoding;
        bh=UrFVi+oRefC6h7fTeZO9l3KF7twtdZxZsdVDVitfoeA=;
        b=hAY41dSww+dPLSfx9wda0Mi8TtWFJ9fNbyjAwb0RlU463Vf73xSKsm8hvrMs0a2z7y
         oMQnmbU8/HkKXAqNpsC0AzncLC+6ScwpWXSomjmSEx8n6ZItug5YRT+nrHX0RRD0c33j
         oTEeIYBZQ0aW67eZQYcQmclR1bcgh/m6chRDXrS9jdh/snYrfg3dkDkqVO+C44dF2EZq
         LyuJRucYSnLY6ErrYasNVdjpK3QVPYL7hjiXgZ2v9rDE8d09wuZdpCsD4oZfvUmzeDx7
         vjHvvezU17GzxevAyEANyEHNa7qkVWGOIaDNRQ4I2EbyMhiu//1t3QbBZhmyEfjUeikQ
         unJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=UrFVi+oRefC6h7fTeZO9l3KF7twtdZxZsdVDVitfoeA=;
        b=Mv8EHeb//xUopa+dm2rBix5MWs8rkS9F6rqhnO61ql7vZznMTW4GiZOh+H/FOXFN2w
         S2exdRZfUF3mSujOvh3jkozjIl8aw60qf1stuwiAiy95YP2MU32Txk/DgSIn9re/3CEw
         13QENKTWcjenmBm7mocmE9TjB0IPmrwWdPxs8DNAILYA9trx36Bz5Hq5KAshOgNGrL96
         qalm5qU/14GI6uVrXMVd8Y+unYP1iMeZjM83FzUVUI0+bB0A7u33m9BGlrTQ3t12HISi
         1t8iS4larOzoIqKCQs/N/trk8tjWzT63ZbnpLLW0HWS3F81iraGcb7MC4N3G3+/Vt1JE
         tNLg==
X-Gm-Message-State: AOAM533LwC0b6V4BdU1UnOhzo8sE2oWBAILbRBSeUXZuT1pG5+Bls9qB
	+To+Kd99qogs8T+GcNkeFFM=
X-Google-Smtp-Source: ABdhPJwFgHpdoy4I3YPPlxRCk7/Q7u70+cV3fRfmGMF+dF8wGG6rUluvS3N9dQ0hjJfjKx5RqsXeWw==
X-Received: by 2002:a62:798d:0:b0:3ef:72a4:e899 with SMTP id u135-20020a62798d000000b003ef72a4e899mr3969184pfc.13.1631206209285;
        Thu, 09 Sep 2021 09:50:09 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPV6:2601:646:9200:a0f0:889e:9651:ed1e:11b0? ([2601:646:9200:a0f0:889e:9651:ed1e:11b0])
        by smtp.gmail.com with ESMTPSA id c24sm3323897pgj.63.2021.09.09.09.50.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Sep 2021 09:50:08 -0700 (PDT)
Message-ID: <105023f4-0713-9791-b29b-96e0b8b93ea7@gmail.com>
Date: Thu, 9 Sep 2021 09:50:07 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.1.0
Subject: Re: [yocto] regd pTest #systemd #yocto
To: rpaluri@codeaurora.org, yocto@lists.yoctoproject.org
References: <l5B2.1631185152502385599.WABY@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: <l5B2.1631185152502385599.WABY@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 9/9/21 3:59 AM, rpaluri@codeaurora.org wrote:
> Hi,
> 
>  1. I'm aware that yocto picks up packages from respective open source
>     community. For e.g. dbus package is picked from freedesktop.org etc.
>     In this regard, what kind of tests does yocto runs to ensure that
>     the package that is getting picked-up is stable enough?

there is system integration testing that happens on autobuilders which 
you can check reports for

>  2. Is it Yocto, that writes pTest's to ensure that the package that is
>     getting picked up is stable enough?

ptests are generic and one can add more to a package but usually you 
will see that its trying to run the unit tests of the given package in a 
cross environment.

>  3. I could find pTest report for e.g. on Dunfell @
>     http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.1/testreport.txt
>     <http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.1/testreport.txt> (Refer
>     "qemuarm64 PTest Result Summary" or "qemux86-64 PTest Result
>     Summary" section for details). The test report only details the
>     number of pTest's that passed, failed or skipped for respective
>     package. Is there any report that *details* the pTest's, which
>     failed, passed or skipped?

the detailed run logs would be available when you run it, I am not sure 
if we preserve those in release notes.

> 
> Additionally, I'm looking for pTest's for systemd, udev and glibc packages.
> Below are my observations on these packages w.r.t pTests.
> 
>  1. pTest for systemd package has been removed with
>     http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-core/systemd?h=dunfell&id=40db00818e3b1cce8aa85ee30f3081ae9a5f8e66
>     <http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-core/systemd?h=dunfell&id=40db00818e3b1cce8aa85ee30f3081ae9a5f8e66> commit.
> 
>  2. Similarly pTest for udev has been removed with
>     http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-core?h=dunfell&id=3e5e540513665105b963262c2eaf33f197a0a36c
>     <http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-core?h=dunfell&id=3e5e540513665105b963262c2eaf33f197a0a36c>.

yes someone needs to step up and get ptests working with meson on these 
packages, they are temporarily removed there.

>  3. I don't find ptest's for glibc package either.

there is glibc-testsuite package which provides glibc testing.

> 
> As there aren't any pTests for these three packages, are there any other 
> existing tests that can be run to validate these packages?
> 
> Thanks,
> Ravi
> 
> 
> 
> 
