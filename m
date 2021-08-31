Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web11.6296.1630373263075949374
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Aug 2021 18:27:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qAKeMPCT;
 spf=pass (domain: gmail.com, ip: 209.85.216.42, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id f11-20020a17090aa78b00b0018e98a7cddaso1232380pjq.4
        for <yocto@lists.yoctoproject.org>; Mon, 30 Aug 2021 18:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=M2blIFc4ZEXBF1twwI3m3Su3vj3ApwWmvAMr1W5c5Yk=;
        b=qAKeMPCTvNJt3VTYjQv4x3rC5LGtjkGb5RcwWnQpJQH5sI7JMyxOmpizDHERblYOmu
         PowNnoR23zkM2cS7Tz13AKj8JbPN8lc05o1vkTgJgkFd60P7H4Incqb8kdkn9vhxDGh2
         O02H+hEI5dvncQAOROljKUkd819x1gL6lmVFQFRnw5KysNxjXAeK+X3OWnHdr+3XgTj6
         OOoB2Xyt6pyqDZjJU5vrZg8tDHheClX4nFTtx1UzwUFUK9DUYiu76X8XyCj4XLb/A0Kd
         WhWpOX6UNyNwJJlylL2amFSNtZq7qiTgmehFY/R1otyipkDJ9yiFz3YOUiqzvK+0EPip
         blLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=M2blIFc4ZEXBF1twwI3m3Su3vj3ApwWmvAMr1W5c5Yk=;
        b=DN030zGqtSN3fWyD4EkFHvHWH2GSLft2H7JHV/9ePzI5UYR8qYJfq4D4K8ebaDcg8m
         9CvofFc5UdWVCwCNIXHDpukbEk96RrZjJ4tf83EU8X5Icih4+krJyAzHWo69hCWQnMGs
         9X+vxziAODGNKa11c7IxmH/8/nCzCgJ+V5RWh36LpnOn+iVOXT9UoNyH8VWHGPbY8COs
         JI/Blh6Ggql2BdowxfgISeKPuvJC2rGnBsyHfQdc1njJm0sb6J2LKo20mcaRfvS5VWdk
         26BxfRueTQGCVT4Fnyp+eDZJrsXlbenKBoSwgsjaysx8fn87NoFdQtZwYXAR3MxNPQA/
         md2w==
X-Gm-Message-State: AOAM531pRHRLX2oEyeH1qwn5FMN45+kBdAW7w4o3tad48Kez4Fg2IyTj
	i9UXlzSd1KaVbAj8lfKgbt4=
X-Google-Smtp-Source: ABdhPJysl/WeI7STNisgNZn+ijUz10UBD5Kro4tQYWp06LYx0/DL1WakPPDUPZm3OeWpwpb++aWuSQ==
X-Received: by 2002:a17:90a:bc49:: with SMTP id t9mr2217544pjv.48.1630373262548;
        Mon, 30 Aug 2021 18:27:42 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:2619:95c9:ae9:9dfe? ([2601:202:4180:a5c0:2619:95c9:ae9:9dfe])
        by smtp.gmail.com with ESMTPSA id t14sm18591360pga.62.2021.08.30.18.27.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Aug 2021 18:27:42 -0700 (PDT)
Subject: Re: [yocto] [oe][meta-security][PATCH] meta: Fix typos
To: Martin Jansa <martin.jansa@gmail.com>
Cc: George Liu <liuxiwei1013@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>,
 openembedded-devel <openembedded-devel@lists.openembedded.org>,
 sergio.prado@toradex.com, George Liu <liuxiwei@inspur.com>
References: <20210802090220.10668-1-liuxiwei@inspur.com>
 <1698168669EBF7A3.25094@lists.yoctoproject.org>
 <CA+chaQdxbJBpw9m7NZZ+FJR4Ysg9_n_StUgg+qoqtYe7K8SCgg@mail.gmail.com>
From: "Armin Kuster" <akuster808@gmail.com>
Message-ID: <9a6c3318-1aeb-34c2-01bb-a0187dc7d1de@gmail.com>
Date: Mon, 30 Aug 2021 18:27:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CA+chaQdxbJBpw9m7NZZ+FJR4Ysg9_n_StUgg+qoqtYe7K8SCgg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 8/29/21 1:04 AM, Martin Jansa wrote:
> Please merge this one.
you are right. Some how dropped that one. Its merged not.

thanks for the reminder.

-armin
>
> On Wed, Aug 4, 2021 at 1:20 PM Martin Jansa via lists.yoctoproject.org
> <http://lists.yoctoproject.org>
> <Martin.Jansa=gmail.com@lists.yoctoproject.org
> <mailto:gmail.com@lists.yoctoproject.org>> wrote:
>
>     Acked-by: Martin Jansa <Martin.Jansa@gmail.com
>     <mailto:Martin.Jansa@gmail.com>>
>
>     On Mon, Aug 2, 2021 at 11:02 AM George Liu <liuxiwei1013@gmail.com
>     <mailto:liuxiwei1013@gmail.com>> wrote:
>
>         Fix the variable spelling errors
>         s/SKIP_META_SECUIRTY_SANITY_CHECK/SKIP_META_SECURITY_SANITY_CHECK
>
>         Signed-off-by: George Liu <liuxiwei@inspur.com
>         <mailto:liuxiwei@inspur.com>>
>         ---
>          classes/sanity-meta-security.bbclass | 2 +-
>          1 file changed, 1 insertion(+), 1 deletion(-)
>
>         diff --git a/classes/sanity-meta-security.bbclass
>         b/classes/sanity-meta-security.bbclass
>         index b6c6b9c..f9e2698 100644
>         --- a/classes/sanity-meta-security.bbclass
>         +++ b/classes/sanity-meta-security.bbclass
>         @@ -1,7 +1,7 @@
>          addhandler security_bbappend_distrocheck
>          security_bbappend_distrocheck[eventmask] = "bb.event.SanityCheck"
>          python security_bbappend_distrocheck() {
>         -    skip_check =
>         e.data.getVar('SKIP_META_SECUIRTY_SANITY_CHECK') == "1"
>         +    skip_check =
>         e.data.getVar('SKIP_META_SECURITY_SANITY_CHECK') == "1"
>              if 'security' not in
>         e.data.getVar('DISTRO_FEATURES').split() and not skip_check:
>                  bb.warn("You have included the meta-security layer, but \
>          'security' has not been enabled in your DISTRO_FEATURES. Some
>         bbappend files \
>         -- 
>         2.30.2
>
>
>
>
>
>     
>

