Return-Path: <wangzq.jn@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B44C19F2D
	for <webhook@archiver.kernel.org>; Sat, 13 Aug 2022 09:57:53 +0000 (UTC)
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by mx.groups.io with SMTP id smtpd.web09.3417.1660384672579778306
 for <yocto@lists.yoctoproject.org>;
 Sat, 13 Aug 2022 02:57:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IuuJMzZA;
 spf=pass (domain: gmail.com, ip: 209.85.208.65,
 mailfrom: wangzq.jn@gmail.com)
Received: by mail-ed1-f65.google.com with SMTP id o22so3949863edc.10
        for <yocto@lists.yoctoproject.org>;
 Sat, 13 Aug 2022 02:57:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=6Mv7L3gAJXJq4IrUkNg2bezNGohyr0JIxAR+G0tWMOM=;
        b=IuuJMzZALxLh7pc9i9fqjcw665FAlIdAuKSW6uVU/Z3Ru2/R6XE9ufzONvLGPXn6PB
         kzEG9rKbfBF7RbZ8RPVJo9eDay6BNCpPTm9sdNHH4hR9KUECNuYYjfp9Rw0jQXm4uHZs
         BO5nlC3hvRt14hw/b8XDimqiA0phCRanlNCgFlV99JUsysBJEoJjgKdM4muugPqKzqro
         Z7Yu4DF5Z6oGRK/S+jCTP8E4h/pE8YEgYqEZor9fmNGr3WjuDg0ld7kKNJrZTGtMuo7P
         +fgU/bQYxN54zklUgFXUO/K1oukUkZSdike0vxYvKbr+560wXXIoyyx8bgf85gekiZWW
         lP7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=6Mv7L3gAJXJq4IrUkNg2bezNGohyr0JIxAR+G0tWMOM=;
        b=efbImKR1UsgfpDbN4Tmv4ltgt/wQG7QD3GMWoq2E1bwsiyvEySEq6CFwXWJcaHTxFA
         Eg4vDDnQANAi71XcuOAF0LdooLSSEQsbl4C/zGeuUkglntw1jEqE1Zf7mi5wbrwIr0O5
         wReFKm3nQkLJstlLcVVQcZW+HSVNuQirkXiUvarJia9zsZ+yoSAaOn+sc8FIQRIBfiC/
         Mk6c8E6g9yyeB6JyBtNsNpITD7Eu41k9iFsqdliOYmqk1G4jDFXG56Was59tgQcndtLx
         HtP8HX/S0WP+uk9ADUU6Mt99XimZuCF6HElmarCMTK7bY74DmT7dc1goh2ILjYjuN5B/
         5s0w==
X-Gm-Message-State: ACgBeo0FwUubkaxK1DW83tgC+8HUk3lZDh37qIvZakeou7pLUBRkHuAS
	U35j2Dq7BoI9X/16RL6LGs0Z8sFdlZKwfRAQWJCYUHhW5R5vQQ==
X-Google-Smtp-Source: 
 AA6agR62dIcy5C0Cyv1TpxABYLuNQY+w2f4x6STQjzJFn443BPOdFsoM3p0oC1VGwRF6yEbicRpyK6x38F3cSBccXSI=
X-Received: by 2002:aa7:da92:0:b0:43c:c5af:d5c9 with SMTP id
 q18-20020aa7da92000000b0043cc5afd5c9mr7105675eds.10.1660384670621; Sat, 13
 Aug 2022 02:57:50 -0700 (PDT)
MIME-Version: 1.0
From: John Wang <wangzq.jn@gmail.com>
Date: Sat, 13 Aug 2022 17:57:39 +0800
Message-ID: 
 <CAHwNHZWC+BJnU34rrm2d3UNKv4gZ3mt9vOug89pgtQxb+wh1bg@mail.gmail.com>
Subject: question about PREFERRED_RPROVIDER
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 Aug 2022 09:57:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57835

Hi,

There is a package with two versions, private and public.
But when I use the PREFERRED_RPROVIDER to select the public version,
bitbake still tries fetch the private one, and then bitabke terminates
because do_fetch fails (no permission)

What I expect is that when I select the public repository version, it
should not fetch the private repository, am I right?
Or, should I not use the PREFERRED_RPROVIDER to select a public/private repo ?

Could someone guide me :)


feature-public.bb

```
SRC_URI = "git://public"

RPROVIDES:${PN} += " \
    virtual-feature \
"
```

feature-private.bb

```
SRC_URI= "git://private"

RPROVIDES:${PN} += " \
    virtual-feature \
"
```


machine.conf

```
PREFERRED_RPROVIDER_virtual-feature = "feature-public"
```

