Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
 by mx.groups.io with SMTP id smtpd.web10.17597.1596753091813717423
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Aug 2020 15:31:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@broadcom.com header.s=google header.b=CqDdwXOx;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: broadcom.com, ip: 209.85.214.193, mailfrom: scott.branden@broadcom.com)
Received: by mail-pl1-f193.google.com with SMTP id q17so107953pls.9
        for <yocto@lists.yoctoproject.org>; Thu, 06 Aug 2020 15:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=mBjwl4gu1Arx6ksMfGD79NJpDFs5FtlWJlcnXrxLLoE=;
        b=CqDdwXOx9Es7xm7cSErXW/8e//b6wbrJ4YUxnDdO1xhCcaWgMw4bR8W+AsdNjOna5z
         B1vd1xViGdr9Su3gJEmNLCpV4bi4dAff9JbAAstgsLQ9kTHI0PeKsGlR+L+c1Kr4RBvO
         soTxcIm0lVQkawYxLyps8tCqvqWL6MODYGvIY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=mBjwl4gu1Arx6ksMfGD79NJpDFs5FtlWJlcnXrxLLoE=;
        b=IvX8C2B7pZdboEni6cCF17ECbDPRjkvhMuHgLQBqTvShECBBvw0dg3aXI8vLAFPDmt
         wSq4cQPA20jNTwxV/xWmzHOE/wXt/g8Hi8g53pJdVGmNSnfDsnKTMDRRpLSi5sxkzqvd
         FAzCY88O45ua+ULrqgUhHAa8ULjCe3C42TjKhA9E0wHDCSvzRCDSR/V73L2Ar95l1LPG
         a8dqBfIY/sRZ8OMS5tP6fYTZaWZDlhkq7zEX+xwT0aTxg49np1u3V0w/P96shZa4NVyu
         E7dWuVnjejIIkq+HG6U8Na4Gdfip0muLtS/IxcoF/h0lfBLZBga8EBJxKizWCmRzMzGW
         Px0Q==
X-Gm-Message-State: AOAM533Jn6RHU8PremucbXQr6inBjv+lqNQljsaZ+QuunF5Euo/pObgS
	czQGn6UK8+Y2sgvCd1BPHIrs8w==
X-Google-Smtp-Source: ABdhPJyav5dL2R/mIwWNkcDSy/pl43lXGl7CFWwAcRixxbcPCS9t0BbhndSwwNLQ6+VtN0L4JP9AJQ==
X-Received: by 2002:a17:90a:f68a:: with SMTP id cl10mr10370321pjb.40.1596753091202;
        Thu, 06 Aug 2020 15:31:31 -0700 (PDT)
Return-Path: <scott.branden@broadcom.com>
Received: from [10.136.13.65] ([192.19.228.250])
        by smtp.gmail.com with ESMTPSA id z17sm3222301pfq.38.2020.08.06.15.31.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Aug 2020 15:31:30 -0700 (PDT)
Subject: Re: [yocto] Is http://downloads.yoctoproject.org/ down?
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
Cc: Rick Liu <rick.liu@broadcom.com>,
 Jonathan Richardson <jonathan.richardson@broadcom.com>
References: <20200512131738.GQ11927@denix.org>
 <4061.1596576995601033488@lists.yoctoproject.org>
 <14aa33ffb8218838763ba61c809149365d92ab98.camel@linuxfoundation.org>
 <b93acfa6-0d88-9542-8ab5-1372bf5cff18@broadcom.com>
 <4521ef13-3e15-0d57-11ad-a415b89b9e0f@broadcom.com>
 <27103d01c503068a4124cee48d14448c1eb0b306.camel@linuxfoundation.org>
From: "Scott Branden" <scott.branden@broadcom.com>
Message-ID: <9e6ba27a-72a0-ed57-1d06-13db335ae1c9@broadcom.com>
Date: Thu, 6 Aug 2020 15:31:24 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <27103d01c503068a4124cee48d14448c1eb0b306.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-CA

Hi Richard,

On 2020-08-06 1:35 p.m., Richard Purdie wrote:
> On Thu, 2020-08-06 at 11:05 -0700, Scott Branden wrote:
>> We found the source of the uninative fetch problem:
>>
>> SOURCE_MIRROR_URL needs to be set in order for uninative to be picked
>> up from local mirror.
>>
>> The standard PREMIRRORS mechanism doesn't work for this single
>> tarball.
>> So every time a clean poky build took place it always went to the
>> internet to fetch the uninative tarball
>> the first time and store it in the local build download.
>>
>> I think this should be clearly documented somewhere in the yocto
>> manual?
> That definitely explains things. I think its assumed that people would
> set appropriate PREMIRRORS to cover uninative in this case but that
> isn't documented. I'm not even sure we want for people to have to care
> about this :/.
>
> Can you try this change:
>
> diff --git a/meta/classes/uninative.bbclass b/meta/classes/uninative.bbclass
> index 70799bbf6d..99072e1326 100644
> --- a/meta/classes/uninative.bbclass
> +++ b/meta/classes/uninative.bbclass
> @@ -56,9 +56,14 @@ python uninative_event_fetchloader() {
>              # Our games with path manipulation of DL_DIR mean standard PREMIRRORS don't work
>              # and we can't easily put 'chksum' into the url path from a url parameter with
>              # the current fetcher url handling
> -            ownmirror = d.getVar('SOURCE_MIRROR_URL')
> -            if ownmirror:
> -                localdata.appendVar("PREMIRRORS", " ${UNINATIVE_URL}${UNINATIVE_TARBALL} ${SOURCE_MIRROR_URL}/uninative/%s/${UNINATIVE_TARBALL}" % chksum)
> +            premirrors = bb.fetch2.mirror_from_string(localdata.getVar("PREMIRRORS"))
> +            for line in premirrors:
> +                try:
> +                    (find, replace) = line
> +                except ValueError:
> +                    continue
> +                if find.startswith("http"):
> +                    localdata.appendVar("PREMIRRORS", " ${UNINATIVE_URL}${UNINATIVE_TARBALL} %s/uninative/%s/${UNINATIVE_TARBALL}" % (replace, chksum))
>  
>              srcuri = d.expand("${UNINATIVE_URL}${UNINATIVE_TARBALL};sha256sum=%s" % chksum)
>              bb.note("Fetching uninative binary shim from %s" % srcuri)
Note is missleading as it is going to fetch from PREMIRRORS.
>
> Hopefully that handles this case more generically.
Yes, this works.  uninative is now fetched from the PREMIRRORS like all the other downloads even though it prints the note about Fetching uninative binary shim from the URL.
>
> Cheers,
> Richard
>  
>
>
>

