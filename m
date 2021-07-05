Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.16129.1625518479763845027
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Jul 2021 13:54:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FUTajwW9;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7FDB338C06D7
	for <yocto@yoctoproject.org>; Mon,  5 Jul 2021 20:54:38 +0000 (UTC)
Received: by mail-pg1-f175.google.com with SMTP id g22so19397992pgl.7
        for <yocto@yoctoproject.org>; Mon, 05 Jul 2021 13:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:cc:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=+UG0qSrJOX8+/n+BpQ9pMk9UH4DDu3NbFqaS9T4mqRM=;
        b=FUTajwW9ftMr/BmKpSkJdEQ61sWDrkeQls3XmMFxo8Mdb5msy5XX6ijMen110akFju
         s7wUZkPj4kNN6c4I/ARKS8bKQ/yoR3HKH8KGoXjRDPp3gcM5LJ7O+g+buVu5n6GzLM5X
         Gkb1bpQFHlEKVoxJaNMoQ7YmMlrLitqZtp5UnzYuI5kEJDbU9OnSVH7Ps4d1hMec3a/W
         mhtZzuUKKqzw52AXVEclrTbKSPejmdqnQWJwqQKAFX4Mz2DS/YaRvJQRcC4TtiJ76iBD
         tCONc9aCpcpVHYSUaZXFVmSUwR90OPBn1cMqTRNDfErGiKmRI59cV0pMZ803hRUUm+df
         Q8rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:cc:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=+UG0qSrJOX8+/n+BpQ9pMk9UH4DDu3NbFqaS9T4mqRM=;
        b=Q6UYuHikmgjgOh0MqXiwDe0Dj2qnBzV1M3H5pU9RjE0k5CkQbnONpy1ceVwIWUOwDw
         SqQFUUU60atAyk7+XV5ZHdyzMrPoulZfPodm+uq8exlGdZXHHlwpzZbOklHgVm7VHmWJ
         VaxfV0qEU698taEemdzyeJ3nLdGzuHiCBHDBjpJE4GJKvsp5E2hhJpM36If5sJ8dPngi
         G4A5eyNpghXKAztCsMi4BOh4o5ihdzAL2rSKXoM5QOR2lUxPjBqb6JjiRzGxgONuQzBo
         LYrMZU/54wIC47WIKJpvT1ZSYuEYdD9iHltEXsh0nXegom+C2U0aFABqTptV7iW1uKPC
         u3sw==
X-Gm-Message-State: AOAM532DgxJZej/1zEirYpI12Sgd/9WT3kL+nKBbdwb+6GbYpxuHOa6U
	zzm7RWznDRBeNQO+jDYHqwM=
X-Google-Smtp-Source: ABdhPJzA27qwdeyC7NioDOD/AzkW9fVuuc5Qfy+iE3w2ARMccCjXyhBm02zNHwDRvRhsosgBHPDvUg==
X-Received: by 2002:a63:af18:: with SMTP id w24mr17447828pge.375.1625518477931;
        Mon, 05 Jul 2021 13:54:37 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:37df:273f:1e4f:b167? ([2601:202:4180:a5c0:37df:273f:1e4f:b167])
        by smtp.gmail.com with ESMTPSA id t2sm13607679pfg.73.2021.07.05.13.54.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jul 2021 13:54:37 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: "Armin Kuster" <akuster808@gmail.com>
Subject: meta-parsec build failure
Cc: Anton.Antonov@arm.com
Message-ID: <f3333619-005e-02f7-e26a-bd7d3e810e58@gmail.com>
Date: Mon, 5 Jul 2021 13:54:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

The parsec-service in meta-parsec has been failing ever since gcc 11 was
merged into core.

https://errors.yoctoproject.org/Errors/Build/123537/

I have already opened an issue with upstream:
https://github.com/parallaxsecond/rust-psa-crypto/issues/85

If anyone is interested in this package, I could use an extra set of
eye's on progress of this build failure.

regards,
Armin
