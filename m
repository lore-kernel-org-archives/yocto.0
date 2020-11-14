Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.5530.1605359097535130554
 for <yocto@lists.yoctoproject.org>;
 Sat, 14 Nov 2020 05:04:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=l7cuoBtr;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: vvavrychuk@gmail.com)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5F0FE38C0892
	for <yocto@yoctoproject.org>; Sat, 14 Nov 2020 13:04:56 +0000 (UTC)
Received: by mail-ej1-f48.google.com with SMTP id w13so17782399eju.13
        for <yocto@yoctoproject.org>; Sat, 14 Nov 2020 05:04:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=ZjLXWm0zblA/mVHNPhaAfQ0UfVy7BV8LVFFj7biFtBM=;
        b=l7cuoBtrckCgUkWYKCSnViN8dNCTHqJpCLPzq1F4rCdlBy1sOCvxSluBNxj8LYYH97
         Xg4RiwxNf1SoNCEECFWfJgpt9h27FRbAbKrE7SPQnI47quTxvWbzlfRanAQ5B5XFWIRV
         hHevG4FTDQID+bqX/yYXncYnBvx+5fGZZTr1siLPh1FHmlkZjSmwM28p7HiLBzDZeqrP
         Ism7SQA+pr0nGA5J4YmSBQyb12S4ZCkua5EG145w53IQkvh+yafNKyahU2cHkQAptC+a
         2zW755/ZH8pDPTfKQeXaN+LOl6qqCyCUMm458X3bBSCqKA+Tj3W+GwcCsOnzuO28vAIz
         eFRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=ZjLXWm0zblA/mVHNPhaAfQ0UfVy7BV8LVFFj7biFtBM=;
        b=k+FbdhxRcrGbUlJQBQMAqhsbdt9amhX1qUI5p9dVuGZFGnSWxzYsXIg6QUo8P1iz9O
         k4/EsUZ2NkEktAGQ9T+nga5OiJ4VTKpH5g/CpT2m/2R/28bOV2A32JmIcx0TR1JXScsM
         DrJq2UysrNlpXkurS7ic9aeUqqlTaxrN5mYYqyc7gqPssrB0qOicY2NghuoTsNttq/e7
         NWm+ZZG1BGI+5r2Cj0fNwYttE1N+24y0mKoE1P0mDq381F8we76+ShWG41lGLIVMPEEo
         2I+wi8jWCoDDBPu00YLzGO2ag896SQJU1m7VGeyfFnUTjLDtD61/hMUgLZb/lC+UJ/Sf
         wkPg==
X-Gm-Message-State: AOAM531YdGui8ocAFcEuct9wtEHyvC6fo9zSHmsudQmNW9v2OcJYw2B6
	RP8lgI/+ANwR9Nej0ByORxQb15P9BVcROgm/YUXV8tuNCI8DQg==
X-Google-Smtp-Source: ABdhPJyKIF6qHaqoJmJO/zC9pqcMKZOb70uG6RPWvX4Y75+bnTzJtZMvaUhRhpSHBV+itFrAvqvZf5o+o0Sr4bmUYVg=
X-Received: by 2002:a17:906:ce24:: with SMTP id sd4mr6360168ejb.432.1605359094326;
 Sat, 14 Nov 2020 05:04:54 -0800 (PST)
MIME-Version: 1.0
From: "Vasyl Vavrychuk" <vvavrychuk@gmail.com>
Date: Sat, 14 Nov 2020 15:04:42 +0200
Message-ID: <CAGj4m+4pxh=Voy6J1ru4AjoL8=vj40jMUop6cG7NG57CLjoD+Q@mail.gmail.com>
Subject: Single page view of a particular manua
To: yocto@yoctoproject.org
Cc: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

Previously via https://docs.yoctoproject.org I was able to navigate to
the single page view of a specific manual, for example "Reference
Manual". But recently, something changed and it is only possible to
open a single page view of all manuals (mega-manual).

It makes it much harder to search something on a page. Is it possible
to return old behaviour somehow?

Kind regards,
Vasyl
