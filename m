Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF34ACDB482
	for <webhook@archiver.kernel.org>; Fri, 13 Oct 2023 14:23:10 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.web10.39732.1697206989486559136
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Oct 2023 07:23:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SSOgLQq7;
 spf=pass (domain: gmail.com, ip: 209.85.128.181, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-5a7ad24b3aaso26676857b3.2
        for <yocto@lists.yoctoproject.org>; Fri, 13 Oct 2023 07:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697206988; x=1697811788; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8rIAkEbmLg7HMUjr6sXW2z9vopBuEdkWQ7/TS/v1Hnk=;
        b=SSOgLQq7emsctBqFpdNBgaKmS38NMJl8d8Mi4X/ultyg8Wy0btPr6noJhF3SYZPsEv
         VfInG/cQlDgA/CZA+cSW9lM5RTdhp4Wylo4fOFVxI4tUNpvTK094c60KYzRuUeV6GwqF
         Npb4OO/3DzQkoR6vH6w653Khw73zbWhVgPP/YfNojkELw9bW2wq1xkfOJ8SzUoqMYXe6
         bNdONiF9/b6bcfFJtct43SqMOhpI/9Q4SUWj1IzF0Fd2lU4ZsHH4fGnDGJePUm4K0/jn
         AZ0T992OA364/yazLl50w131ij5Eaql48oWa4anpUr4ueSbGQ7qP0S1GHk17Kf9I7vnk
         scZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697206988; x=1697811788;
        h=content-transfer-encoding:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8rIAkEbmLg7HMUjr6sXW2z9vopBuEdkWQ7/TS/v1Hnk=;
        b=eOjmaqeBOMppD+2HnTROdI2G+XCRkx/5PvsUHpln320ME6A2pKqgkucfGOBnZHKpEL
         WhKD9oTWPgV7MxKQV0QeGrrEwKYmwm5v7qTBQ2Z1Wq6Rc62yYkHbJQImrdtyOAnJG5dn
         6QMq7fiTz9dEh9D4e3JKShVPN+7coCIMkMqT/NGU99UvMOuRncMoj4sb9yuJ+rbntujr
         PZ84CK4J5UuVbci29bqPyZhL2tyWafvJj8g3/RBXFBijAALV9Dd8HvELyHr2SKeG/A25
         rw5/psl9KULaL5gE5kssmmklTYm7y24ltovCTXsZcylymW0qeMZxO58uAYpzmd01/HNl
         frkA==
X-Gm-Message-State: AOJu0YxUlzRZDMOs/eKOgQrXC6YCIHSnj3pBBGqGBU5wr8eVLBzddAU6
	TEPEsISVzqZH/rjv/HD5HUDDos9STKI=
X-Google-Smtp-Source: AGHT+IHWtUx1mgCMZGEITwCnagZCWW0NYeMCtRctT1ALw3pL3cW7ZTuB5qeQvzOwvyY16gEdQXbeMQ==
X-Received: by 2002:a0d:d802:0:b0:5a7:be29:19ac with SMTP id a2-20020a0dd802000000b005a7be2919acmr11717964ywe.12.1697206988476;
        Fri, 13 Oct 2023 07:23:08 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:a824:c2ea:76ae:b9e0? ([2600:1700:9190:ba10:a824:c2ea:76ae:b9e0])
        by smtp.gmail.com with ESMTPSA id d5-20020a81d345000000b0059c8387f673sm712585ywl.51.2023.10.13.07.23.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Oct 2023 07:23:08 -0700 (PDT)
Message-ID: <95856e62-9ecc-470b-8dd4-866cec72e2a7@gmail.com>
Date: Fri, 13 Oct 2023 10:23:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "yocto@yoctoproject.org" <yocto@lists.yoctoproject.org>
From: akuster808 <akuster808@gmail.com>
Subject: FYI: New CVSS 4.0 version to be released end of month.
Autocrypt: addr=akuster808@gmail.com; keydata=
 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
 ApZ86eOP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Oct 2023 14:23:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61334

Not sure who may be aware of these changes coming. See 
https://www.first.org/cvss/v4-0/ for more info.

BR,
Armin

