Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web12.9377.1620716801658688343
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 May 2021 00:06:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amarulasolutions.com header.s=google header.b=CMT+S1W6;
 spf=pass (domain: amarulasolutions.com, ip: 209.85.216.45, mailfrom: michael@amarulasolutions.com)
Received: by mail-pj1-f45.google.com with SMTP id p17so11182278pjz.3
        for <yocto@lists.yoctoproject.org>; Tue, 11 May 2021 00:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=TiFY/vS8AkPkzfEbM33vwvJvVX0WDVrmyTsgqdfgPfk=;
        b=CMT+S1W6Ivd09p1yK4ufrySesdCPM5qJNg/mSB+Fx+sfSaxyRhLLm88Whf2SVKYSVJ
         0y1fpzDEQdJpDOPITRnk4AlbX7b0hPHK0zZr/kKrrr/67PZDKwOIYIszVGEQeaMR+pKt
         okhMNaKAH5UMCLo2UHszd7ZdLwZ1FBKHZ4p9k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=TiFY/vS8AkPkzfEbM33vwvJvVX0WDVrmyTsgqdfgPfk=;
        b=oNc+kY9t+k9mz5MxqRRcrAcAdrnbRGGqH9QUMji3bNndDVRwd0+PIcchSwzwEH0lpM
         9jFyFFlucBH6QiAZ3buu7c9FlCTRAEDj9c8HKz6CQCdKTUt+7PDcQSz+uCOOiHxvYZJe
         hNb92CHKwVUezfpN3A+t0KRmOhB3bPPL6MVJ/bU19DpvSJz2tKcwYh6suhRhp2R/5vRh
         +wcWj4prBahKtEvHYLUWnIlqqhdcEOnr4NmroHBHtljx3D+W2LDyIo8fQOifMt1XQ9od
         ul9SwhqvA6ZyOS/KTSWy4O9t2a+8+8Y6fWUZWMaObpTaPNDfLeWevO9pTmrgKvObzAiG
         D+Lw==
X-Gm-Message-State: AOAM530oF5zvQRSXsSNt1N+66ftWpJX9Kocg6U4UYTprPUdz98POHm7K
	qpygjUGqatSHvR9hCcgTFBG7c2yu2AqtTXbb7V/M+Lb6M0ez8A==
X-Google-Smtp-Source: ABdhPJz/Y4Rtxk7tNm5Nll/AZD3zGIFC4sbxxS2tEpk0VihZCOiEHC1zZkLGcaTGXbZX7St5LULzTNJQ4U9zxkELUJg=
X-Received: by 2002:a17:90a:8a0f:: with SMTP id w15mr31401210pjn.5.1620716800541;
 Tue, 11 May 2021 00:06:40 -0700 (PDT)
MIME-Version: 1.0
From: "Michael Nazzareno Trimarchi" <michael@amarulasolutions.com>
Date: Tue, 11 May 2021 09:06:29 +0200
Message-ID: <CAOf5uwkCTPVa=mey4YF0ZuzpL2KNJ2AtWYR+7i6wpqqh6NkkwQ@mail.gmail.com>
Subject: Split deploy result in multiple partitions
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi all

I have a simple question. Is possible to generate as artifacts the
single partition results as IMG type for each partition and a total
result as wic image?

Michael
