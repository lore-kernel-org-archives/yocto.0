Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web12.15394.1611784655947098776
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 13:57:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=SmhKJGKI;
 spf=pass (domain: mvista.com, ip: 209.85.210.170, mailfrom: akuster@mvista.com)
Received: by mail-pf1-f170.google.com with SMTP id y205so2257765pfc.5
        for <yocto@lists.yoctoproject.org>; Wed, 27 Jan 2021 13:57:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=YQ3UH+hEiN1543AEzcqOXD6TN0RXAidPsAQqTYBcXvc=;
        b=SmhKJGKIx8YnzFhHabAnZl3kHp2234HB3bQ/9HgV8cmhu4MfEPALdtiTSOIJivJpEI
         bX3YtA2yajHD91e6Yp+fLE6TIvAnobKiNW/rsrdYYrNyuJ8nBiocKkRzsO4NdyZ8DXx4
         N981Aq2/STm/cV/ZP9FgMx9ANYQ5vqPk079AFrP1GvJt67uA1hnuxT98hDFhUTa7AaAx
         ZL/+Lj2fph3uvGX30HWHN59gzNL0JqTRGrL0S2dybScroh/kKFvpQewpIO/R54JZ59Di
         ISYPB9ECb77zcNd+ciC23cGjuiSFy/Hefei95MV39se/G8lPqHURpMSLgHmc3iPOp/KS
         l9EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=YQ3UH+hEiN1543AEzcqOXD6TN0RXAidPsAQqTYBcXvc=;
        b=XfY/pPTV7Kp4/swFrhtHr64ANC6YQ72IhIi2lgIi5gits4kzHybRCIme5RgP5QwDok
         5f3QxnzrDt+IajRQYHb6jvTF8YYQtGYreQh8ZG1tU86zW7CQO1wC9WvVaLgTleIkur11
         58tgS6lSa4Lv8sdxh6iq+6QWQtoSfxhJ0j2H8D3xKD8X3gUu8lxY0oAp8HssJ+p5oOgD
         9yxm1Fc90G2a95g5kpB8ozZTWxdArypI4zJdlpiQBxax13JQV+KSl9DkWdOc2hu9Wly2
         gvUsCdaUGB7O5lUYvGTZ1D18yrGmdj8P1bfiJQeIO2eqPbWL/Qn8EN3QZC1OYb+qQbQk
         3MNA==
X-Gm-Message-State: AOAM530QliO6Qr8V/mH8Wgm/kXQNtkYmoUEdk0KDDrB11mkRutVkLhkv
	EfnqWyf8b4MF1FkzFL/mkoHJ9+uZcfWPXQ==
X-Google-Smtp-Source: ABdhPJw7Q4S/4ADSupxw7HBVs5x6r/Vnt6yX5YpLDHU4Sa1+XrtgG+rmup3HR66LK/AbEotbMS+CYg==
X-Received: by 2002:a63:844:: with SMTP id 65mr13122809pgi.371.1611784655064;
        Wed, 27 Jan 2021 13:57:35 -0800 (PST)
Return-Path: <akuster@mvista.com>
Received: from ?IPv6:2601:202:4180:a5c0:4860:954f:4399:8bca? ([2601:202:4180:a5c0:4860:954f:4399:8bca])
        by smtp.gmail.com with ESMTPSA id o190sm72079pgo.50.2021.01.27.13.57.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jan 2021 13:57:34 -0800 (PST)
Subject: Re: [yocto] any interest in an official "meta-rubygems" layer?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: yocto@lists.yoctoproject.org
References: <633c9c84-1d35-48f1-82b7-4f2dabc2585@crashcourse.ca>
 <1a4deeb6-a63a-8ec1-ff56-d50ec2ef071d@embed.me.uk>
 <4d3d282c-60d8-e6c8-3c9-671e2f8b1f4@crashcourse.ca>
 <a3853032-18b9-af2d-bc38-1c5c12e003f6@embed.me.uk>
 <20a136f6-280-1f43-f3c-88af76a77b51@crashcourse.ca>
 <1f460c3f-f280-4af2-208c-8f804082040a@mvista.com>
 <169818-4a97-7117-1ce8-b0876c3e99ab@crashcourse.ca>
From: "Armin Kuster" <akuster@mvista.com>
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
 xjMEX2PeihYJKwYBBAHaRw8BAQdApYu38y29q9C5d8w/q4iBO9Wn/oaIetOogCVLMmmMRAHN
 HGFrdXN0ZXIgPGFrdXN0ZXJAbXZpc3RhLmNvbT7CpwQTFggAOBYhBIUngHNZEEw31YUKg+ak
 yqCo4qAXBQJfY96KAhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAACEJEOakyqCo4qAXFiEE
 hSeAc1kQTDfVhQqD5qTKoKjioBeLJAD/bZFPQoAdtc4IaqMHlP05WudFj578W2F4jV+lTiDA
 uw8A/3lsSgTTF/VvQ6fDB0VeAJsTaL8XMFCdVg02lHyEu9UDzjgEX2PeihIKKwYBBAGXVQEF
 AQEHQFKWikD8mBqAEf4oZhs6Purda3XQHXc9oJ+6CLSgCC0+AwEIB8KPBBgWCAAgFiEEhSeA
 c1kQTDfVhQqD5qTKoKjioBcFAl9j3ooCGwwAIQkQ5qTKoKjioBcWIQSFJ4BzWRBMN9WFCoPm
 pMqgqOKgF8N7AQDReOz+Z+EQ6uQkVeIjkqSf47G8HEV57zC2TNy+LO59uAD8C0f3lB05PoIb
 h4MQlQM84Qx3RWmP/f8Pybq7D8Hw7Ag=
Message-ID: <b38530a6-7931-6ae0-75e2-3afd00a99f96@mvista.com>
Date: Wed, 27 Jan 2021 13:57:32 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <169818-4a97-7117-1ce8-b0876c3e99ab@crashcourse.ca>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 1/27/21 1:29 PM, Robert P. J. Day wrote:
> On Wed, 27 Jan 2021, Armin Kuster wrote:
>
>>
>> On 1/27/21 12:04 PM, Robert P. J. Day wrote:
>>>   regarding the proposed "meta-rubygems" layer --- which sounds like
>>> it's going to take off as it can be initialized quite a lot just from=

>>> konrad's existing meta-sca layer, what are the options for "official"=

>>> YP hosting?
>>>
>>>   i notice that quite a number of layers live at git.yoctoproject.org=

>>> -- would this proposed layer even be eligible for that and, if so,
>>> what are the benefits of living under the git.YP.org umbrella?
>> Are you a member of the Yocto Project?
>   i personally am not, so i suspect github is the option.


Regardless of its home, there seems to be interest in such a layer.
There is nothing stopping you from registering in the layer in the layer
index and see where it goes from there.

Ruby was part of meta-openembedded. Maybe OE would want to host such a
layer or include it within meta-openembedded.


-armin
>
> rday


