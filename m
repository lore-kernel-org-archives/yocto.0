Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web12.41697.1584281078056434769
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Mar 2020 07:04:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20161025 header.b=VdzauxVm;
 spf=pass (domain: googlemail.com, ip: 209.85.221.50, mailfrom: matthias.schoepfer@googlemail.com)
Received: by mail-wr1-f50.google.com with SMTP id x11so13193920wrv.5
        for <yocto@lists.yoctoproject.org>; Sun, 15 Mar 2020 07:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=Jbtuwr5mFEH3qzSTW2xH3bGgQvJKfgngsgK6mPAkIwA=;
        b=VdzauxVmhWqMWzVthX2xmFzzxyrS/dUVSyjwPfMViKvC+GK8qOstSqOWFmBd6m2ON6
         vqL7QLMuzBWhogpRKdrvhwQrJyThbaS6yUo3LjdP+8rsENCxmxUJ27svM+k2095bHWTo
         ADzAmtdNeFC9J5ECCyzcd5ZGHB1OZHOTdnSGlwmpJx9XRNbiOb56ulSiEZPKIpiNF7f7
         ql6iOJNm6a2mAu01vKIW2Y/u/4J49F926ONLs2l0TyYAV6TWMsZJN0qQ+KO6QyEKY9RI
         ZnI0xk3GNe1T9kK14Uj6DTCbYupycnTkdrpqrrdk0hI1aeJga0sm4bqPBSz8A0EJVg9N
         Bo3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=Jbtuwr5mFEH3qzSTW2xH3bGgQvJKfgngsgK6mPAkIwA=;
        b=RbpJN+7DhjexGHVJie07czJrtZUxy+yGvlFypVYUyBbEv9MBxCjIMCM1XRjHtE+EVn
         PA6BWq6kF69sq5ItbpxCVo6RKBaai5gUvo52rv75GeoRw9T+VEvtv/IZQmWMgxDwtUS0
         ZxYcOMHpprtDuTNMPbhRM4To7/JG2T0lEOCH9OIasZgJF+B6ylOmFH6ojV/ww4iCPtzX
         B9S0YTPLMpEccKr/qdIw66iHhmJsMmhSu18EnPtD57ucEMaFPbcQd/cehTEaDIb/lT+M
         s4nCRe7QH3zjY13MScYE61Z3Z375Jv6cpjtGYxnmrDURa37Sqo1zeWKc+BUOjyJWNzH8
         QhtA==
X-Gm-Message-State: ANhLgQ1WYn2TtzyS0ZlxDFmcbWbLNfBk1B5TQaJUIfP4nDWxX8Tp9CAg
	dJDg3EQP9rj5Cu/111e2r9QttFpk
X-Google-Smtp-Source: ADFU+vsbQH0dl1RcDd3nFO0QwM8rPjLyZIkjU7+vdIwNnjnyP313fL8Vc9fjOlLHZLWurt+G6+pVGw==
X-Received: by 2002:adf:a4d2:: with SMTP id h18mr30753642wrb.90.1584281076172;
        Sun, 15 Mar 2020 07:04:36 -0700 (PDT)
Return-Path: <matthias.schoepfer@googlemail.com>
Received: from [192.168.42.165] (tmo-110-85.customers.d1-online.com. [80.187.110.85])
        by smtp.gmail.com with ESMTPSA id g14sm16494214wme.32.2020.03.15.07.04.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2020 07:04:34 -0700 (PDT)
Subject: Re: [yocto] git fetcher: does not execute git fetch --tags or similar when HEAD has not changed
To: Denys Dmytriyenko <denis@denix.org>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>, yocto@lists.yoctoproject.org
References: <cb73c40e-6eed-d626-513d-c1012a0f9f32@googlemail.com>
 <20200313162915.GM1578@denix.org>
From: "Matthias Schoepfer" <matthias.schoepfer@googlemail.com>
Message-ID: <ec9fb315-af0f-8d9b-18aa-43640e6a7df7@googlemail.com>
Date: Sun, 15 Mar 2020 15:04:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200313162915.GM1578@denix.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi Denys,

On 3/13/20 5:29 PM, Denys Dmytriyenko wrote:
> Why not use SRCREV?
> Also, bitbake has its own mailing list.

1) Would SRCREV not be affected by this as well? When the same hash is 
read, then no update of the repository (esp. the tags) is done. Or can 
you be sure this is not the case?

2) It allows for very convenient bump of versions. We develop a product, 
so, version bumps are on daily or weekly basis. All that is needed is to 
rename the .bb file. No need to edit SRCREV.

3) I am sorry if I used the wrong mailing list for this. I will repost 
on the other list as well.

Regards,

   Matthias

