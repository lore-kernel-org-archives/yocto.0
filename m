Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18BC4C76196
	for <webhook@archiver.kernel.org>; Thu,  6 Apr 2023 19:05:07 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
 by mx.groups.io with SMTP id smtpd.web11.167494.1680807898110375353
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Apr 2023 12:04:58 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=YoDg0F3/;
 spf=pass (domain: gmail.com, ip: 209.85.219.170, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f170.google.com with SMTP id p203so47195564ybb.13
        for <yocto@lists.yoctoproject.org>; Thu, 06 Apr 2023 12:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680807897; x=1683399897;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xHwb5xDRW/dkaCO7a8J4TVyxD3B8YArqqDjFz75rwZ8=;
        b=YoDg0F3/YE5hR140SlM0wDKTEPNzjBDC1m+87ETlYsDdKdbGfRnUiMdRQNKXIyXrlN
         BA0usQ/ybQvsEj1Mcrwxk3G+vV51I7EvuSDEu8mi9n+H958ndjswZ+5mugTeKy0f29Ey
         sPQhvfYv3Ii01TtNQRFQznMJxL0AXXGMojc9Cb61no44rDD9vYdQ/UWQU1Yph4p7u+80
         OfPXsr5KRclVzShbJsIa+s1vfgcwLYaejS1+YQH37cVKsr0pmzapxJQ1Sb5Q7rWHln70
         MLh4LFnoUq16bmfHYhvCNAEWYaA8fN+et8O4x1PUMcfpQiqSI7dJMjxfSeDp46f1a5Mk
         umgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680807897; x=1683399897;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xHwb5xDRW/dkaCO7a8J4TVyxD3B8YArqqDjFz75rwZ8=;
        b=OG8H/IePRvGC7FNWp/6dM5r3qnyRI1sw/CCxsFa/AKQ9hJ7Eih8AaQLxMtnH1/kxzZ
         NIRJJ/gAEyG/PhmqJ6KzOWbQu47eSDXmPzuWTg9oIrdtlkZtqMZ3i90akQS/bELRFQ3s
         1JB2ZwFElvYVvfr67oLRmUz8Ww1MUKkuDcOC3k7Ah+tAZdwb+lULE+qVxYPlanhMTbJI
         Rsqmxm+VIJ1eifXzRnybW8dkd4bHLO4s54OdKDmSqo3QvRDADglr6rX2Qkbs8XtV+RLh
         bH/hbFmcqGTPn3Ios4iNjCQUrAbkmf7TJJoD3vlt7d8q9SKsld8Z1xuJI1BUgUQJYnuO
         fkGw==
X-Gm-Message-State: AAQBX9fdbUrfaeDHcA/rNnAvmwuiDd3hHbPlYgIM0xhVOkGliu3lRRY+
	0wGFhu9M3ovhCe/gSadYDRE=
X-Google-Smtp-Source: AKy350a1SMxVae3oOMA7wMSgo9JRukLvxHD6OJQzCoTCUSXqCCYLZNydqKMX8gnmq+e7GRNFxbLVVQ==
X-Received: by 2002:a25:550:0:b0:b26:118f:1aca with SMTP id 77-20020a250550000000b00b26118f1acamr179774ybf.21.1680807897133;
        Thu, 06 Apr 2023 12:04:57 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:3249:c5b2:756:1575? ([2600:1700:9190:ba10:3249:c5b2:756:1575])
        by smtp.gmail.com with ESMTPSA id h185-20020a25d0c2000000b00b7767ca746asm600939ybg.7.2023.04.06.12.04.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 12:04:56 -0700 (PDT)
Message-ID: <89ebe8b9-0abe-faa2-76c2-77e2a83ae612@gmail.com>
Date: Thu, 6 Apr 2023 15:04:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [yocto] [PATCH 1/2] meta-parsec: Disable RSA-OAEP OEQA tests for
 Parsec PKCS11 backend
Content-Language: en-US
To: Gowtham Suresh Kumar <gowtham.sureshkumar@arm.com>,
 yocto@lists.yoctoproject.org
References: <20230406173903.23459-1-gowtham.sureshkumar@arm.com>
 <20230406173903.23459-2-gowtham.sureshkumar@arm.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20230406173903.23459-2-gowtham.sureshkumar@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Apr 2023 19:05:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59637



On 4/6/23 1:39 PM, Gowtham Suresh Kumar wrote:
> From: Gowtham Suresh Kumar <gowtham.sureshkumar@arm.com>

Does this apply to older versions ?

- armin
>
> Signed-off-by: Gowtham Suresh Kumar <gowtham.sureshkumar@arm.com>
> ---
>   meta-parsec/lib/oeqa/runtime/cases/parsec.py | 8 +++++---
>   1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/meta-parsec/lib/oeqa/runtime/cases/parsec.py b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
> index 6be84ba..71061db 100644
> --- a/meta-parsec/lib/oeqa/runtime/cases/parsec.py
> +++ b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
> @@ -53,10 +53,10 @@ class ParsecTest(OERuntimeTestCase):
>               self.assertIn("ID: 0x0%d (%s provider)" % (prov_id, provider),
>                             output, msg='%s provider is not configured.' % provider)
>   
> -    def run_cli_tests(self, prov_id=None):
> +    def run_cli_tests(self, prov_id=None, extra_params=""):
>           """ Run Parsec CLI end-to-end tests against one or all providers """
>   
> -        status, output = self.target.run('parsec-cli-tests.sh %s' % ("-%d" % prov_id if prov_id else ""))
> +        status, output = self.target.run('parsec-cli-tests.sh %s %s' % ("-%d" % prov_id if prov_id else "", extra_params))
>           self.assertEqual(status, 0, msg='Parsec CLI tests failed.\n %s' % output)
>   
>       def check_packageconfig(self, prov):
> @@ -181,7 +181,9 @@ class ParsecTest(OERuntimeTestCase):
>               self.configure_pkcs11_provider()
>               self.check_parsec_providers("PKCS #11", prov_id)
>   
> -        self.run_cli_tests(prov_id)
> +        # Software PKCS11 we use for OE QA testing
> +        # doesn't support RSA-OAEP(SHA256) encryption/decryption operations
> +        self.run_cli_tests(prov_id, "--no-oaep")
>           self.restore_parsec_config()
>   
>       def configure_TS_provider(self):
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59634): https://lists.yoctoproject.org/g/yocto/message/59634
> Mute This Topic: https://lists.yoctoproject.org/mt/98110115/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


