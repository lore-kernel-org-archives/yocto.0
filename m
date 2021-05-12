Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.6399.1620823896745093050
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 05:51:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pn4mnYQf;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: chuckwolber@gmail.com)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E5B8538C001F
	for <yocto@yoctoproject.org>; Wed, 12 May 2021 12:51:35 +0000 (UTC)
Received: by mail-pf1-f174.google.com with SMTP id a5so11381691pfa.11
        for <yocto@yoctoproject.org>; Wed, 12 May 2021 05:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=RnKv4HHtqFnoPZI94oWBRb5fumZmg3qPXM/jM9+LR2M=;
        b=pn4mnYQfNyMlHbg1RPW0Knvca/CQeT5TJ7MH3LfyXShEj/sfcaGRPDDh6qgVaq5Lpl
         Qn6KDPRWv5EuapdCXKF/pzUq9GwmwehZIC942MahHgIWLf0biOWhEpANHqcLe9TjzoVs
         AoYKBiaAxuOcQxyJL1SdPfRtx0yqXfKWoSOtjMvI6KoxTLFPR9Oj87DIETolRcIrMQRN
         ulWf/K8RaOFMdex8pSL8JXgIUBmQDmnWesGaL1o4nieYOZl1/VrV5seId0Nt9S0HznKB
         Ed13Eoje5UZjLWe0D7wLe6RmPzyh0XTcJC9DBnixeA77r4hwImQUcmv2lYK+dDA6zbrf
         ljGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=RnKv4HHtqFnoPZI94oWBRb5fumZmg3qPXM/jM9+LR2M=;
        b=gW7RTEIx//lCwB+Dolzx474sjlJv5pwLDRcRwbZYI13t4V7LWFzW7fbcDZewARlqHi
         deJq5f2BkzjvmPCFZkrDuNWcjsyOYwv6ey0GvXPzSxhqieNBDd2ZRv2i4Wg0+x1wss84
         eyUn2YML0+FkrnGc9+ZAvWpq5nzZC++tMotfr1GJZnC++mzPnUuA3lqVYcBn9r1YxbFx
         xNdn/StFIX0LxRtR4lewJ55apfq1g0rXaLTZMDbClitcjkkNBlLghezoGb6F+xf18S47
         MRB6UpUvBm61rjppCPE3YyVOSuV8QZuhlmWwsHfKOkFyEIr6JW/A5OEPZassJWIkcOGl
         g/HA==
X-Gm-Message-State: AOAM530A+URmiSEGTU9qD+FfAhmy2TDVi+CipxlHZneVSDnq1WZPxmKW
	xWi8fRtr+j8vzRV5H6m9l0GpiYkD2601iZmfH3tWrdmMEaWTqw==
X-Google-Smtp-Source: ABdhPJxrLxld7cbv3NW4LYyqBoysCxQVmJKtpGCy5LRrObqwxiKltNceEe9mtghYSJqmPJWnUNHBHUiSoH2e4BQpFJc=
X-Received: by 2002:a65:50c5:: with SMTP id s5mr36167064pgp.138.1620823895012;
 Wed, 12 May 2021 05:51:35 -0700 (PDT)
MIME-Version: 1.0
From: "Chuck Wolber" <chuckwolber@gmail.com>
Date: Wed, 12 May 2021 05:51:24 -0700
Message-ID: <CAB=6tBSrVooUvS4G_NDPUHrHTLjxoHqJ269AVHA2K+4guYzerw@mail.gmail.com>
Subject: Git Fetcher Branch Default
To: bitbake-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

I got a fetcher failure on go-systemd today, which puzzled me. That
recipe has not changed in ages, and the SRCPV hash is clearly visible
in the repository.

After looking at it closer, it seems that github.com/coreos/go-systemd
has changed its default branch from master to main about six days ago.
This appears to break a fundamental assumption on the part of the
fetcher when looking for SRCREV and SRCPV hashes.

Looking at lib/bb/fetch2/git.py makes it evident that this is the
case. I can trivially fix this with a .bbappend, but it seems to me
that the fundamental default branch assumption needs to be updated.

Has anyone discussed adding main to the list of default branches to
try? If not, I may be able to come up with a patch, but the code does
process default branches as a list, so I will need to think a bit on
the best way to approach this. Any guidance would be appreciated.

..Ch:W..


-- 
"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire
