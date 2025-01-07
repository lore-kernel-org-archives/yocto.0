Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0888DE77198
	for <webhook@archiver.kernel.org>; Tue,  7 Jan 2025 06:32:05 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web10.15055.1736231524224920503
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Jan 2025 22:32:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ls7HeIje;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5d8c1950da7so14880101a12.3
        for <yocto@lists.yoctoproject.org>; Mon, 06 Jan 2025 22:32:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736231523; x=1736836323; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WyNTB8FOBNxa8aD8mqzgLtRCC0hA7xk1i0cRnK2XLuQ=;
        b=Ls7HeIje8zkc8v99CM8I+QxEdJ6zf4/KMzugCqAGu7w2VbzK5mic85+IQOk+fL5qvW
         KvVF6Qm0CEaxzRJgRJUxGVNE+Pmz5E2c32/C2+x50e7x9+2Os6QkVzPYPgHmJJQ0jSLg
         OfppUjvzH7i1eGupqkDsRp8dAb7LZSQYeTUFWhKT456ipe2TO4y0fVtexSCS3YIOUwcV
         wudYHOHqV8JWpsWn6SGAtaw4MA8QAbg/haA2rtKfptmGyFF34LnemdWwIIht3RdS6nC0
         ctq2JdVazUCaWk44IRVEUjviQ8VYkpIBvEDug6i+5deFW6zHpnXhSCo5Qmsm0racy64V
         qJ/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736231523; x=1736836323;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WyNTB8FOBNxa8aD8mqzgLtRCC0hA7xk1i0cRnK2XLuQ=;
        b=jw+CVoFYa1XyqcZjgiDzjmampNPOGv+j1bhtVIetQKJINEZX/m+iqOOKJ+PFh0qbjb
         lyISzhB874/trRvYF1nUEaRixVD7d8mlGGWgNiK1BaatZlweH7wwQNPRZixuFzMBFXqC
         uBi26ELW/Zpa9lVBSExzIqP0UNuUOq54FHv5GqlQQEHcEGak68v8XqQqgpXvU0j8Mgkc
         2VZcMH2tnWSMpfsE+iFOzQO58Gw54s8Dpep0YmHUf/e/uEfYE9bgP1vrgMYVB8+9t8mm
         vxLc9cop78RlyZt9gx7NoKmj2V6hrZ0kuI111Z5B3bQZOb23x4VkqdrVLbXG3ahWgKH1
         gx8A==
X-Forwarded-Encrypted: i=1; AJvYcCVivd/Z8OaOhsadoG200KVfsB1Ig0I83mmwheyeeGWi4aAbpSQYl3BFXhjENkFbEzllB1eEww==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzVgdHoewIYlzLfwbM1/jyRQewb1ZJPUvEQFRyMOZQiUZXOxlHJ
	AbYmXVAuLVnve8LASjvRhbp815gwX04KkQiWWK4rDYk41pQDa0dE
X-Gm-Gg: ASbGncszZDGjanlnEl/FJS2EHfSBdViNRGA86FQ216VSwemsGLXjKiFP8JsWAccXPxE
	l2Iwhz8pXYp5lpl9gh2n1c37MgkpbSURsIH3dtdDI24eoCvbdpDzD50nhKWTv8exIw/lmYmb0jZ
	plVixFPfNQtAtUdjSFJq8Kd2xE+AJFqCGBAiLBt/fu+5UbAWt0ujT9BkcdowA/4TkkHXv3CCbIK
	omtMrAPLRlTJ/S0+4L+jq5fqUY1Kji1/fgDmiOUpyJUfSrLraVH2tdNKwOELAW7
X-Google-Smtp-Source: AGHT+IFtPOqd99v8ePp+F4UWBcW1YvyEza8ARz8xO6rvuRVsTbskViAjOEUeHhCbSyYKlJd1K9g2Gw==
X-Received: by 2002:a05:6402:4492:b0:5cf:d19c:e21c with SMTP id 4fb4d7f45d1cf-5d81ddec945mr61709480a12.20.1736231521967;
        Mon, 06 Jan 2025 22:32:01 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80679f1aasm23911756a12.50.2025.01.06.22.32.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jan 2025 22:32:01 -0800 (PST)
Message-ID: <5af3a54b-8f9f-4a16-ab36-e886d23fc2c9@gmail.com>
Date: Tue, 7 Jan 2025 07:32:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not
 copying
To: "Kumar, Manu" <kumar.manu@siemens.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <TYZPR06MB5178D4A9A5949582BCFB9C5286102@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <b8af4304-ee4b-4903-8d4d-2d91b804e393@gmail.com>
 <SI2PR06MB517020EDA3F2E22BC5EA20B186102@SI2PR06MB5170.apcprd06.prod.outlook.com>
 <767702b3-302c-4695-96f2-7299547f2da8@gmail.com>
 <TYZPR06MB51784D93F9A0D31C8265747A86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <TYZPR06MB51784D93F9A0D31C8265747A86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jan 2025 06:32:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64504

On 07.01.25 06:41, Kumar, Manu wrote:
> RDEPENDS_${PN} += " lighttpd-module-cgi \
>                    lighttpd-module-openssl \
>                    lighttpd-module-redirect \
>                    lighttpd-module-setenv \
>                    lighttpd-module-auth \
>                    lighttpd-module-authn-file \
>                    lighttpd-module-secdownload"

Right - the issue lies here (at least one of them). Change the 
underscore to a colon:

RDEPENDS:${PN} += "..."

This syntax has changed in Honister release, and the old underscore 
syntax isn't valid in Kirkstone anymore.

When doing migration between releases, it is recommended to read through 
the migration guides of all the skipped releases: 
https://docs.yoctoproject.org/dev/migration-guides/


