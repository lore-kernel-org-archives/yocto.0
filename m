Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
 by mx.groups.io with SMTP id smtpd.web12.914.1606331819906788444
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Nov 2020 11:16:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JvHoarYI;
 spf=pass (domain: gmail.com, ip: 209.85.215.177, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f177.google.com with SMTP id 81so3292467pgf.0
        for <yocto@lists.yoctoproject.org>; Wed, 25 Nov 2020 11:16:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=P8RltuQvYHVyfgdZOSBIXdzXyecQExC6VhbF9wgxalk=;
        b=JvHoarYIBtRM+sL4MIl+sAZxEbI0hdHR3QB+zvXzoMuojQ/FCK7OuDAGpv8FHlRFdf
         duav4hvSwVP90nj+l7ETojVmYLnkacY40v0gcXF0PU+ZTsZrinyGZej117vsIPDQmi/J
         MmV00XFHWy7C/ItqqiEM8yggUoKIuc8n2q9+9+iCIe/F8yGOTEmpDdZVL6OONgH5UBXf
         d68XxpaT0IVa4Ox29Y78UnfuiK4Ygp+qdAg1OlxEHDOSJWJeYUQS5TZFjVnRadc8gTPg
         s0hN8yXpxqQYB0rQx2+4dbedmDQjQvBwoTMpnJvAfltxWl2I6y3ZYzB0FDnEV9Ef7Pjy
         ozMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=P8RltuQvYHVyfgdZOSBIXdzXyecQExC6VhbF9wgxalk=;
        b=M13jko6hru0PP3SXucUezTewRAu6LilnAn9bufSM/fPgwfWI65VMgb2bBO4SsYntOd
         MCTnUCBuVpMHyTyk3uaYabuUiQTVR0gIkbTu3KZoyt5cH4AWXlFe8gYa8W8e8ZWTLFek
         TsLhq1hhohIOglM5bZAfi2rj7q1vPQ4RtUd7M2YDJKAAPJAcPvO5S4t6SvpFOoakWsH0
         B57/J9MRhoWC9eWPA21Sqnzy+NW6Ed83PzSUiRfyxQeYaBKY0N+qVwKTOqMVr9VMVd/8
         Oe1rysIirjfxBSzPBUCr43tTJdKgV28c3XLljR0dh9lsDS6Ov0CYM/aKuSoaik5tYG+K
         paTQ==
X-Gm-Message-State: AOAM532V1HI4/ikxqLv5/OMjkPMMlXo+1RMLMVFkXPq57DHcMUAO/qpk
	j2B2SftxUPgSIKxJIwaOgGCLD5inNB13Bw==
X-Google-Smtp-Source: ABdhPJxyFi5wmHt/lZQYol+YU0cT2PKvkMuKA7xDCNbKivejvVzlm1+LAqjc/T3pWup2+0KoAqC3+Q==
X-Received: by 2002:a63:fa0e:: with SMTP id y14mr4181710pgh.225.1606331819114;
        Wed, 25 Nov 2020 11:16:59 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:ecdb:94e8:2d6c:dea4? ([2601:646:9200:4e0:ecdb:94e8:2d6c:dea4])
        by smtp.gmail.com with ESMTPSA id b17sm2731533pfi.61.2020.11.25.11.16.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2020 11:16:58 -0800 (PST)
Subject: Re: [yocto] Parsing recipes: 0% | - hangs for a while
To: Sergey Ivanov <icegood1980@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <CAJCbrz4U+JcyEVe46dSWysmM-OzUdnTTs3oVRhz88qiHCCz4BA@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <2abf7b56-c67a-bbcd-814d-d25716fd3c50@gmail.com>
Date: Wed, 25 Nov 2020 11:16:57 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <CAJCbrz4U+JcyEVe46dSWysmM-OzUdnTTs3oVRhz88qiHCCz4BA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 11/25/20 3:13 AM, Sergey Ivanov wrote:
> Since today i encountered issue in the topic.
> 
> I had this issue before when i forgot to turn on vpn (somehow parsing 
> depends on it). But today is everything is OK and i wonder what went 
> wrong. More precisely, i'm interested in two points:
> 
> 1) at which stage parsing of receipts is interested in remote resources?
> 2) how to disable remote resource usage during parsing in some 
> sophisticated way?
> 

perhaps you can try setting BB_NO_NETWORK = "1" in your local.conf and 
perhaps disabling local mirrors would be needed too if you have then enabled

> P.S. after waiting for a while bitbake continues but it is annoying anyway.
> 
> -- 
> Kind regards,
> Sergey Ivanov
> 
> 
> 
> 
