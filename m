Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6A93C43334
	for <webhook@archiver.kernel.org>; Mon, 20 Jun 2022 05:39:20 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web11.16534.1655703553091098643
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jun 2022 22:39:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=m7K7bpDU;
 spf=pass (domain: gmail.com, ip: 209.85.214.175,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f175.google.com with SMTP id m14so8781616plg.5
        for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jun 2022 22:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=4U5CO8ECMALZLkXyBK4oTAOQQh1j8X1S6rCfJ3VlFOk=;
        b=m7K7bpDUd4Im9MYWVnAoWXUCFvzmLns1pHxc4mbTxK5xkjP16loY9eRoEREchCGRM1
         UtcE9VBxWc8TI8PPR37Fydz5D90jSXPYoy8ICo1dbMx9FwEMVomPguH02+/DqI/7LcP8
         oYZriyLHUowbYOVuNyPYVfgjQMI11btEIQe+ijktRqgYWb7k/k8bNX4LT2CHrd4VFo7O
         Sw1PGpQl8RXPAc9oKsAYKa+sXIFPnAlI0OO73qrkcTkggJ5P8SriUYq43oGsmrKG4aJz
         dmuHtnYNg+0JqCu4AW8nGkbmI68PGVrLvijFBtq1bGVraik9i5MJiA1CXv4ClwmdEaUH
         cx3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=4U5CO8ECMALZLkXyBK4oTAOQQh1j8X1S6rCfJ3VlFOk=;
        b=F+/cjSoQeg1dkJsHMSz4BcRpNUCsDnKPcS/1wqZnwTP0RKGhgRvn78OlFKvFvUZgQF
         0zaLFrTiaCfJScUpj/y+PLCwtlIN70Gksmp7zwV/U8hXPVABrHJr9BHfTp7djRRAbzHD
         WFkmDFKIosfCnNkxlNZ2FEF581vwX9ROUvwdagMig6YbakDOxBFC9EhicJhxlfGm9BzE
         4uG9C22CmkG6gZwQ7wcsDE01K1FlBpzTLZKj3AzBaIQ+V7aWmo4jvyvXBqpn4sMPzhQm
         tZnJumtc7Pc/MFwRjVioev5kTOouZHhlC4S8J1h30Mx4QFL/lSe5AV/POLpVKPWErsRp
         QATw==
X-Gm-Message-State: AJIora8zLd4xo2I6ukYWKWkxif99rvKQluQp3tKcYitIC1XSMTBeLl4h
	bR2m0TCtXDGF4wV/3GC+BuW84XCM4yA=
X-Google-Smtp-Source: 
 AGRyM1vm7Yvib72eXRnItt0+dw+3Zkk4624MwhljoIreee//oFF+dT9ldZyTl73G3JP7c3X6F+UMtQ==
X-Received: by 2002:a17:90a:d158:b0:1ec:8298:40dc with SMTP id
 t24-20020a17090ad15800b001ec829840dcmr14375673pjw.51.1655703551925;
        Sun, 19 Jun 2022 22:39:11 -0700 (PDT)
Received: from [192.168.18.39] (c-67-181-203-136.hsd1.ca.comcast.net.
 [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 i65-20020a626d44000000b0051853e6617fsm7970635pfc.89.2022.06.19.22.39.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Jun 2022 22:39:11 -0700 (PDT)
Message-ID: <0d8aba1b-595d-c681-84fe-197cb5b440c9@gmail.com>
Date: Sun, 19 Jun 2022 22:36:59 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [yocto] [meta-security][PATCH 3/3] oeqa: shut done swtpm before
 and after testing
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <20220620033504.994851-1-akuster808@gmail.com>
 <16FA36F348A4E548.32537@lists.yoctoproject.org>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <16FA36F348A4E548.32537@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Jun 2022 05:39:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57362

fyi:
I started to archive some of the test runs at:
https://github.com/akuster/meta-security-testresults
Not sure if I am doing this correctly but is at least a snapshot.

-armin

On 6/19/22 20:35, Armin Kuster via lists.yoctoproject.org wrote:
> fixes:
> swtpm: Could not open TCP socket: Address already in use
>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>   meta-parsec/lib/oeqa/runtime/cases/parsec.py | 5 +++++
>   1 file changed, 5 insertions(+)
>
> diff --git a/meta-parsec/lib/oeqa/runtime/cases/parsec.py b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
> index d3d3f2e..11e5572 100644
> --- a/meta-parsec/lib/oeqa/runtime/cases/parsec.py
> +++ b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
> @@ -12,8 +12,13 @@ from oeqa.core.decorator.data import skipIfNotFeature
>   class ParsecTest(OERuntimeTestCase):
>       @classmethod
>       def setUpClass(cls):
> +        cls.tc.target.run('swtpm_ioctl -s --tcp :2322')
>           cls.toml_file = '/etc/parsec/config.toml'
>   
> +    @classmethod
> +    def tearDownClass(cls):
> +        cls.tc.target.run('swtpm_ioctl -s --tcp :2322')
> +
>       def setUp(self):
>           super(ParsecTest, self).setUp()
>           if 'systemd' in self.tc.td['DISTRO_FEATURES']:
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57358): https://lists.yoctoproject.org/g/yocto/message/57358
> Mute This Topic: https://lists.yoctoproject.org/mt/91870539/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


