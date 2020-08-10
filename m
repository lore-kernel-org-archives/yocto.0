Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web12.52901.1597088784433420465
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Aug 2020 12:46:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=S/qBrkF/;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.215.171, mailfrom: jpuhlman@mvista.com)
Received: by mail-pg1-f171.google.com with SMTP id x6so5510090pgx.12
        for <yocto@lists.yoctoproject.org>; Mon, 10 Aug 2020 12:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=OjU6yP716ndRX4668/yH7yQWnTfJ/8uKFN+42loyu+M=;
        b=S/qBrkF/tXPEPNorPUmM7IV4foASQc82/DuLA9478f9yj7+zSV/ppgFkz9QNRAqWuG
         2P0LQrr7tHlqaiuMetrce1iBV6g9Z8cn/2xw9HQIzuWIH8Ul40nUnjR5tQfIxZjCfqrp
         m5kYNNfE4C+lMU/B/gchLTwYZQx/qbZbJ1+Z0UlN6XY7FaJ/H4pRxhAqqzTqoxMgAVZX
         FWjg8/t/LFzTsNQnDY+l6Za5AIhO0nUqQaycoobX3hhS13UaJC+ghZ1PTZOVj0kfYm3T
         P53mMhBFFk48hZALFHzz0MasY+eb4MVUpCFhzFac1A4fJSfRr3ftN/cTGmnl36tM8FZh
         mxEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=OjU6yP716ndRX4668/yH7yQWnTfJ/8uKFN+42loyu+M=;
        b=n9xHqQStx9HAUN6lquurBfOB/lQbR0iBI9n7Bk7XTK+qK87xkAQVHLv5eudKrb5+7+
         AVBPaU6S2GgvH1jhH1UWfB+pz7hzXMaMCWRl3+y+WLfafhmQu6HF2Jlxvg+dXZrJPIJC
         tRrrbSHOZf4zv6ecNIQDICMAHwki98UxTt3UdOAsi1XcdX1wrE1jtE552VpoJNDv4/bY
         lpgp+sncoNvGAKi6654HyW45uOsgKupfTaQTIK5DXtKzUOM1KNsaT9S+bHI8aZlwtfBT
         d8uo0xsORvmTqxLOeevuGp63MsYNCaHyP/WI4iQKmSGdoq3ln/LShtRUPC0FRp+eayuh
         5SFA==
X-Gm-Message-State: AOAM533KWYVdIDFCrqzLtdzqm92y3KJAjbqO/P7OG1J/6udwk5CXTqmW
	76breAFYONAyQFpo7jEEHHxAhmp+oNo=
X-Google-Smtp-Source: ABdhPJyCjin+NAV39Cbw5X63pW6oUDNMEeKeqm2fT9v7VIDdtr/IewCxT4IQ7fSUXgH0Aad1c2kEEA==
X-Received: by 2002:a63:6c0a:: with SMTP id h10mr23414715pgc.11.1597088783397;
        Mon, 10 Aug 2020 12:46:23 -0700 (PDT)
Return-Path: <jpuhlman@mvista.com>
Received: from [192.168.1.128] (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id t5sm19443639pgl.38.2020.08.10.12.46.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Aug 2020 12:46:22 -0700 (PDT)
Subject: Re: [yocto] [meta-cgl][PATCH] ucarp: force to use TLS1.2 during do_fetch
To: "Yu, Mingli" <mingli.yu@windriver.com>, yocto@lists.yoctoproject.org
References: <16227A594D77C7C6.3435@lists.yoctoproject.org>
 <2ef7a153-9aa5-0b2f-22a6-cf8ff7ec0e36@windriver.com>
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
Message-ID: <f85c600e-53e7-f82e-424a-fec1a749c85f@mvista.com>
Date: Mon, 10 Aug 2020 12:46:21 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <2ef7a153-9aa5-0b2f-22a6-cf8ff7ec0e36@windriver.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Merged.

On 8/9/2020 6:04 PM, Yu, Mingli wrote:
> ping.
>
> Thanks,
>
> On 7/17/20 3:38 PM, Yu, Mingli wrote:
>> From: Mingli Yu <mingli.yu@windriver.com>
>>
>> There comes below error when use buildtools [1]:
>> $ bitbake -cfetch ucarp
>> [snip]
>> --2020-07-17 06:39:31-- 
>> https://download.pureftpd.org/pub/ucarp/ucarp-1.5.2.tar.gz
>> Resolving download.pureftpd.org... 37.59.238.213
>> Connecting to download.pureftpd.org|37.59.238.213|:443... connected.
>> GnuTLS: A TLS fatal alert has been received.
>> GnuTLS: received alert [70]: Error in protocol version
>> Unable to establish SSL connection.
>>
>> And can simply use below step to reproduce the above error.
>> $ wget https://download.pureftpd.org/pub/ucarp/ucarp-1.5.2.tar.gz
>> --2020-07-17 06:43:36-- 
>> https://download.pureftpd.org/pub/ucarp/ucarp-1.5.2.tar.gz
>> Resolving download.pureftpd.org... 37.59.238.213
>> Connecting to download.pureftpd.org|37.59.238.213|:443... connected.
>> GnuTLS: A TLS fatal alert has been received.
>> GnuTLS: received alert [70]: Error in protocol version
>> Unable to establish SSL connection.
>>
>> $ wget --version
>> GNU Wget 1.20.3 built on linux-gnu.
>>
>> Currently wget uses gnutls as the ssl backend as the below logic
>> in layers/openembedded-core/meta/recipes-extended/wget/wget.inc
>> PACKAGECONFIG[gnutls] = "--with-ssl=gnutls,,gnutls"
>>
>> Check the link https://download.pureftpd.org/pub/ucarp/ and found
>> the file https://download.pureftpd.org/pub/ucarp/ucarp-1.5.2.tar.gz
>> already 10 years ago.
>> ucarp-1.5.2.tar.gz                                 31-Jan-2010 
>> 22:06              429089
>>
>> Meanwhile we can use gnutls-cli-debug to diagnose the 
>> download.pureftpd.org
>> which hosts ucarp and it doesn't support TLS 1.3 but supports TLS 1.2 
>> instead
>> as below.
>> $ gnutls-cli-debug 37.59.238.213
>> GnuTLS debug client 3.6.4
>> Checking 37.59.238.213:443
>>                          whether we need to disable TLS 1.2... no
>>                          whether we need to disable TLS 1.1... no
>>                          whether we need to disable TLS 1.0... no
>>                          whether %NO_EXTENSIONS is required... no
>>                                 whether %COMPAT is required... yes
>>                               for TLS 1.0 (RFC2246) support... no
>>   for TLS 1.0 (RFC2246) support with TLS 1.0 record version... no
>>                               for TLS 1.1 (RFC4346) support... no
>>                                    fallback from TLS 1.1 to... failed
>>                               for TLS 1.2 (RFC5246) support... yes
>>                               for TLS 1.3 (RFC8446) support... no
>> [snip]
>>
>> $ wget --secure-protocol=TLSv1_2 
>> https://download.pureftpd.org/pub/ucarp/ucarp-1.5.2.tar.gz
>> --2020-07-17 07:07:08-- 
>> https://download.pureftpd.org/pub/ucarp/ucarp-1.5.2.tar.gz
>> Resolving download.pureftpd.org... 37.59.238.213
>> Connecting to download.pureftpd.org|37.59.238.213|:443... connected.
>> HTTP request sent, awaiting response... 200 OK
>> Length: 429089 (419K) [text/plain]
>> Saving to: 'ucarp-1.5.2.tar.gz'
>>
>> ucarp-1.5.2.tar.gz  100%[===================>] 419.03K 432KB/s    in 
>> 1.0s
>>
>> 2020-07-17 07:07:16 (432 KB/s) - 'ucarp-1.5.2.tar.gz' saved 
>> [429089/429089]
>>
>> Considering gnutls doesn't fallback to TLS 1.2 automatically, so 
>> force ucarp
>> to use TLS1.2 to fix the above do_fetch error.
>>
>> [1] 
>> https://www.yoctoproject.org/docs/3.1/ref-manual/ref-manual.html#building-your-own-buildtools-tarball
>>
>> Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
>> ---
>>   meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb 
>> b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
>> index 6f30bf7..d17baa0 100644
>> --- a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
>> +++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
>> @@ -34,7 +34,7 @@ DEPENDS = "libpcap"
>>     SYSTEMD_SERVICE_${PN} = "ucarp.service"
>>   SYSTEMD_AUTO_ENABLE = "disable"
>> -
>> +export FETCHCMD_wget = "/usr/bin/env wget --secure-protocol=TLSv1_2 
>> -t 2 -T 30 --passive-ftp --no-check-certificate"
>>   EXTRA_OECONF += "--sysconfdir=${sysconfdir}/${BPN}"
>>     # fix the perms for config.rpath
>>
>>
>> 
>>
>

-- 
Jeremy A. Puhlman
jpuhlman@mvista.com

