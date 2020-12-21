Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.36867.1608538096211828735
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Dec 2020 00:08:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EF4JoVP3;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 4C0DE38C0877
	for <yocto@yoctoproject.org>; Mon, 21 Dec 2020 08:08:15 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id g24so8712536edw.9
        for <yocto@yoctoproject.org>; Mon, 21 Dec 2020 00:08:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Lhz+Zu1LqsVBmfLQOSrYKVWNwoC/wFQeRl+AjVtZNNc=;
        b=EF4JoVP31NB0n4OzWaIyTwkHdGHjFo/IbBfmu0+yixb85Uj5RI4eHzbOy/iU7R7DS2
         5y/CZO8PF4QU8Bu539gCezZjJT2VN0W5x6WWy/OeVDifaeYDEAXLujCKnGTy13YKxV+C
         nu60tHjSgqEn0mJc+K6yJHMhIjLlTDM+vX6vKTn+cM/gR1IQ8gWlV4jAKtQW9gjLB0o2
         SFYGDgBbuYWuAMKsLbdveYKjctzZ4G9AjL1N6Jw3aF5VTcAVEczjRe9tQm/a3Szw8HVD
         2sIeIM5wDFUMdq1VsVOm84+0iXFAxV6Ku4rt2bfUi/VA1gUuN7utLN5TuMqxvDP1CY/p
         WBpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Lhz+Zu1LqsVBmfLQOSrYKVWNwoC/wFQeRl+AjVtZNNc=;
        b=MUvZrxVUUOhE3B9t4OXBzURQkOFgR4P2n/4iDe9W+iOC/AVandnFN5e9uWgFvsrW93
         lC40/GnoIurWz5GO0QCjNLYscepnDcBxXUZReRjPydPouGO8zTAFHwHbv7qfm5u0Mm8S
         GGVk9DS3bYscDeD/a3lduec0Zzvbj83VgYsUQ2lctd/ig+026rjh/EXDwDG4vK2WZRoh
         QNP8eND2C+x6N/EdAIf+hAv4puE7WXo/8WIY6qoITBrLPuMc/xCDdo+8TcaLilAAHKCG
         OYgQgaWU0D0F8xfFqvTTz8juMF5+31QBajEhq+H9j3Z+f2H7UHEIVVoEW5vCF02knWe6
         bEVQ==
X-Gm-Message-State: AOAM53114FAX6Ceef3fhsOxBd1HGUHxbKU2nXAOZ83NqJLBM/HY85JAk
	AsT0tPS+lZYCHaJcon74yEL4M5UUTVZo5YZoUjUvxgO5fMI=
X-Google-Smtp-Source: ABdhPJzmGw1pHG3w0LDmALuuF4bM1rLQ3M3fBx1w2dYExWKBZJMgDVarpX5I12lr22tsWHRVrAxpfEgXmT22Ll8LDkI=
X-Received: by 2002:aa7:d75a:: with SMTP id a26mr14545021eds.230.1608538093509;
 Mon, 21 Dec 2020 00:08:13 -0800 (PST)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Mon, 21 Dec 2020 09:08:02 +0100
Message-ID: <CAAfyv34Fgcr8ps77qb5YEYdaJEHWcUKE8+dyXDPfMvh3ytt=NA@mail.gmail.com>
Subject: python scikit-learn ppackage
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to add to my project python package for sciki-learn which
requires some cross compilation (using cython). I was trying to make
it but it's not straightforward as all python libs are searched in
native and not target sysroots. Is there some other way to force
python to look on target-sysroots instead of native one? I used
PYTHONPATH but it seems it's not taking effect. I was also pointed to
python tool crossenv but I'm not sure if it's the way to go. Ideas?

Thanks and regards,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com
