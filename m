Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20A42C76196
	for <webhook@archiver.kernel.org>; Mon, 10 Apr 2023 22:50:48 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
 by mx.groups.io with SMTP id smtpd.web11.620.1681167045276803855
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Apr 2023 15:50:45 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=N/SFfd/6;
 spf=pass (domain: gmail.com, ip: 209.85.219.170, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f170.google.com with SMTP id bv15so4423267ybb.1
        for <yocto@lists.yoctoproject.org>; Mon, 10 Apr 2023 15:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681167044; x=1683759044;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=owVK/y7UDovY8F/fgkiW7jglX533HN6Dilxc66YVovM=;
        b=N/SFfd/6TDLVSZwN0vCgjszLZdIsTkh+Zm9wnLpFzKT+4eyFYks4IXjKaxOd5VLCRv
         qUSIxEOEsAACc327R5ndKn+I5wytsdINuf49EwGSHIONzLjfFXsPA8vFR0ws6ClCisR8
         bIvFC9Ige+rfyLfP1AIEqMlOckRTKAFj91cusvWw0KMvkNcep3jwy79LPZ9tBR4PMdOy
         f7CoSTmYQnev1UUah9nCbSqnufjorHcI3N81Sdv5qVEZHqA7Sef0NRbUBeBu7MidhDon
         y1FX7o04FPDhsEzHhSC7oHTcD9XDrxvno5UKgNoi389GGrcJAbAGH/pKJBA5M9KjX8Aj
         JGVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681167044; x=1683759044;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=owVK/y7UDovY8F/fgkiW7jglX533HN6Dilxc66YVovM=;
        b=VOtsUjkuO+wnsY4cnTWN+/fRS+INVKMsUtyqKjZpLfeOAS4dZruGvRDrGnthG+NtSm
         9ll5CuBYaQhhQNSqacRB6b7+y5s49dLZOXg0DTsUJnMjUuALTwLa90jajB19zi1gOPCd
         wMBYLA6VI6FJIUfVedEFR+fPg4Yvm7KXd5wZ+y/IPiXoA7U4uhwNQGC/51omWydMqtVB
         kdd9vNhtISYd4A9CDPtC8AuAd3QybDJSAZKEyZ5K0CPWlAn3wS3hCq5ItW+F5b2+eewC
         x+OXfAlSMDnlBBW1RiYNwQKonnaYdjdO38WPs2pnSeBKOg5pQ00kf5qGIe4wjynsDBZ8
         Vu6g==
X-Gm-Message-State: AAQBX9cKTTw/hAPut2SRzVDmZY1T9Bj9Ch01RVQ+VeR+1e4A22WNKps3
	+60n4i0kdbI1zIslQIvESZYE4l//NE3eIA==
X-Google-Smtp-Source: AKy350bmW+wAf/KhSEIT8pqMWt46R9DJTfmS70+HubCnWb+4os8wsUOfKQPCbhzRKnzzvwMDSTyRWw==
X-Received: by 2002:a25:aaf2:0:b0:b62:bb72:d952 with SMTP id t105-20020a25aaf2000000b00b62bb72d952mr288191ybi.7.1681167044265;
        Mon, 10 Apr 2023 15:50:44 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:49b6:e635:a894:59ce? ([2600:1700:9190:ba10:49b6:e635:a894:59ce])
        by smtp.gmail.com with ESMTPSA id i125-20020a255483000000b00b7767ca7496sm3230412ybb.51.2023.04.10.15.50.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Apr 2023 15:50:43 -0700 (PDT)
Message-ID: <618bde51-4101-69f0-896e-4f505e42257b@gmail.com>
Date: Mon, 10 Apr 2023 18:50:43 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [yocto] [meta-parsec][PATCH] Fix PACKAGECONFIG check in Parsec
 OEQA tests
Content-Language: en-US
To: Anton Antonov <anton.antonov@arm.com>, yocto@lists.yoctoproject.org
References: <20230410183355.1880224-1-Anton.Antonov@arm.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20230410183355.1880224-1-Anton.Antonov@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Apr 2023 22:50:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59659



On 4/10/23 2:33 PM, Anton Antonov wrote:
> If PACKAGECONFIG is not defined in local.conf then
> its default value is not included in cls.tc.td map.
>
> Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>


This gets testing working again.

Thanks,
- Armin
> ---
>   meta-parsec/lib/oeqa/runtime/cases/parsec.py | 13 +++++++++++--
>   1 file changed, 11 insertions(+), 2 deletions(-)
>
> diff --git a/meta-parsec/lib/oeqa/runtime/cases/parsec.py b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
> index 71061db..66932ed 100644
> --- a/meta-parsec/lib/oeqa/runtime/cases/parsec.py
> +++ b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
> @@ -61,9 +61,18 @@ class ParsecTest(OERuntimeTestCase):
>   
>       def check_packageconfig(self, prov):
>           """ Check that the require provider is included in Parsec """
> -        if prov not in self.tc.td['PACKAGECONFIG:pn-parsec-service']:
> +
> +        if 'PACKAGECONFIG:pn-parsec-service' in self.tc.td.keys():
> +            providers = self.tc.td['PACKAGECONFIG:pn-parsec-service']
> +        else:
> +            # PACKAGECONFIG is not defined in local.conf
> +            # Let's use the default value
> +            providers = "PKCS11 MBED-CRYPTO"
> +            if 'tpm2' in self.tc.td['DISTRO_FEATURES']:
> +                providers += " TPM"
> +        if prov not in providers:
>               self.skipTest('%s provider is not included in Parsec. Parsec PACKAGECONFIG: "%s"' % \
> -                          (prov, self.tc.td['PACKAGECONFIG:pn-parsec-service']))
> +                          (prov, providers))
>   
>       def check_packages(self, prov, packages):
>           """ Check for the required packages for Parsec providers software backends """
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59658): https://lists.yoctoproject.org/g/yocto/message/59658
> Mute This Topic: https://lists.yoctoproject.org/mt/98182135/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


