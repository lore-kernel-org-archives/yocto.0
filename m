Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web12.120.1579715949917980070
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jan 2020 09:59:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Oj5sMQoy;
 spf=pass (domain: gmail.com, ip: 209.85.128.45, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wm1-f45.google.com with SMTP id 20so22988wmj.4
        for <yocto@lists.yoctoproject.org>; Wed, 22 Jan 2020 09:59:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=t3nzxNHHqONGt6ci3zEV2BwML/Bs48hxguHKk9yIOEw=;
        b=Oj5sMQoysiwd32KyrGgyJnHPCWTnNw1VJMXlpJJ9KutzGlNEBfJmiQjTz+XqTVUbZk
         15a0KSAYP4lpmQFKwRQz29UzKkc1LFZg/mRS8OqSDkdVQLBgIoDnBwxMW3PFxHaPzBrA
         bv0k84efGTsfRZ/aKI/X1UwQswz6p0gNANU2d1ppaOm6xfbJtorLsy4lpKkFZrGe/xY4
         JrEFlSOoWkt5lo+OCJFU8BH1xLft4IYtSXGLFjv3UPqwjdhiC2ShgM0W6Pd41W7ijL8j
         dIcliwn2MxzPH+EoNw+5y2wV9Lpl7FldeBYPd95JK9Foznj2Pe2wQeZlnOIqjCmqabc+
         13mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=t3nzxNHHqONGt6ci3zEV2BwML/Bs48hxguHKk9yIOEw=;
        b=W3MTLaxmkeOsxn5nAI9c85r8FxqOULbCKqs+OFCrWHryZZ+R7kiRrvDm7sQOOmaKUQ
         vkYPeEy0kokKyCrsdtxQRHfaT2bXyDhxgnnzqB4ijcx4pkbhzlNOCIBDyXepiw2ZQXaW
         dMqQxuehrM8VPVWnMpQvdAzgUTczF5jsB6+NDdQ6Yz+TOJo2XoCSc7nfTsv68ZhWK1B5
         yBVZK/ibC5ZFRjHhRZMTjJjr/t6FoRAQCacEuIYs3BcuE42QNRgU4/sjMnoPYL5YUGfN
         cSd0FtfyhKmOjAn8mIiot3MzGxiMQGSZ+BgABN9FzJOyQrJ/BKalYYJ/UoPQgVusSOjT
         h0KA==
X-Gm-Message-State: APjAAAUcuOJeIDKRtVyQ1rJwlVISbCX9vpIwnMRVtXgoZJUJQhduHtoV
	d2hDYyBOvdYqfoQnXZ14aXQ=
X-Google-Smtp-Source: APXvYqxgW1jEo3yoJzGiC+3Aw3oya/aW9Z3hNyr3NB+u8MtFAOYHvJ4hk5mLwuG5UResc49xabZpig==
X-Received: by 2002:a7b:c934:: with SMTP id h20mr4094261wml.103.1579715948409;
        Wed, 22 Jan 2020 09:59:08 -0800 (PST)
Return-Path: <robert.berger.yocto.user@gmail.com>
Received: from [192.168.42.52] (athedsl-4432938.home.otenet.gr. [79.129.148.26])
        by smtp.gmail.com with ESMTPSA id b21sm5308146wmd.37.2020.01.22.09.59.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jan 2020 09:59:07 -0800 (PST)
Subject: Re: [yocto] #yocto bootchooser: Cannot get state 'state'
To: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, Enrico Joerns <ejo@pengutronix.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <r276.1579090214262888471.6UJY@lists.yoctoproject.org>
 <1579093362.13056.13.camel@pengutronix.de>
 <DB8PR03MB54983C09B221B210D29A26AAFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <45b34e63-a9fd-2295-311c-393bf49fdf93@pengutronix.de>
 <DB8PR03MB549847FD100DF7192459527FFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <f451a45a-a4bc-f285-0614-001cb3a57405@pengutronix.de>
 <1579099664.13056.29.camel@pengutronix.de>
 <AM6PR03MB54939235100D4D6E455AF4C1FE360@AM6PR03MB5493.eurprd03.prod.outlook.com>
 <1c275d4d-cf23-caf5-072e-2517080950c1@pengutronix.de>
 <DB8PR03MB54985379C7F9387F160929E7FE0D0@DB8PR03MB5498.eurprd03.prod.outlook.com>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <0a8e32e7-7100-e834-97c8-de27959e41dd@gmail.com>
Date: Wed, 22 Jan 2020 19:59:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <DB8PR03MB54985379C7F9387F160929E7FE0D0@DB8PR03MB5498.eurprd03.prod.outlook.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

Did you install the SDK?

Did you run the environment script?

> make: /path/to/your/yocto/toolchain/bin/arm--linux-gnueabihf-gcc: Kommando nicht gefunden
>    LEX     scripts/kconfig/lexer.lex.c
> /bin/sh: 1: flex: not found

>    YACC    scripts/kconfig/parser.tab.h
> /bin/sh: 1: bison: not found

flex and bison seem to be missing as well.

Regards,

Robert
