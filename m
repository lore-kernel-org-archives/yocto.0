Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
 by mx.groups.io with SMTP id smtpd.web12.9808.1601045528750953529
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Sep 2020 07:52:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=aUSPqEYt;
 spf=pass (domain: linaro.org, ip: 209.85.219.170, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-yb1-f170.google.com with SMTP id k18so2219729ybh.1
        for <yocto@lists.yoctoproject.org>; Fri, 25 Sep 2020 07:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=+C0hwbxqIGISx7QiUL/TI88sY46OHS9n9n1bxx3q2mk=;
        b=aUSPqEYt4LZfEgCUSPePl6ulN/SWPvGnmy2tm5cukpZJzy0keMJr1dTbgtQPLJryeu
         3i4mXJgi7vrXDkT0N1YYiMHS0SKRTaDF1mhQ9wFHWMNp5/DMqzW4NDfLSUBErCZw3krj
         c37qYd8aFags3tHqBZUrLSNfw0X3VCKKtfdgb8Mz063QM3gv1psrCNPOVl3JNgeaf+Rx
         /l/v5p0Eh7LRWr8KbIcKj0qvZEJZMBTvcZpEhBb59vqz/aPoTNmkK52ilgYEOoYHyGSL
         kVnid+bodJpe/lYfEMBjonY/gEVPp0ImtgE+75KujZh9FuOdid6K2VD/T5B0hww0IcDc
         3t5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=+C0hwbxqIGISx7QiUL/TI88sY46OHS9n9n1bxx3q2mk=;
        b=YSCQNo4xkOANFwD4s8tCxn+SFFD7/Ch4FWGsiVmv80OWhZoKgDm4ImzZ5bp6vXLf9B
         krwoilBpilQBzfXPLim5cNsWhDUL56NrPv+cmJ4/+m9SJZA04HVz95H/Jux937ONg8GO
         2jxhORh7Tw79JOnymCtPsgdFXoEzCzwzLTpbNe7WtTB9WlfPrcF0d2Bc5zHqfMeIWSo4
         2d9zOTOnH39hiIBn5sPiJH+ZGBlhB6Rh5H+vhyPsJM2EaQ/5Jb7QvLjKE5kJ6UGGnMuc
         UCTiy4puo45AsMnomz4jUWhtD0t5tCX/M8S3AWPKXVVx7H0Op3uJezjt2IjK+7x/sVQs
         +KVg==
X-Gm-Message-State: AOAM5320yOPbA2MNl4homL8ExfTnXWKcG7mZGBhdW3rczlFPM5CtaXao
	XxXPnMYufjCGH1jBVyAFxeHEETboj9SfEuA82KA8iNcIyBDNtZ86
X-Google-Smtp-Source: ABdhPJyrnzemIXulpRPROZOKQlq3AcM8Oa3wZdRLGGZ8KrljzWKr8BP+ZUlUm1RntuNFO+AFPrC2fOavjho/XkQhV80=
X-Received: by 2002:a25:bd41:: with SMTP id p1mr6263515ybm.475.1601045527287;
 Fri, 25 Sep 2020 07:52:07 -0700 (PDT)
MIME-Version: 1.0
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Fri, 25 Sep 2020 16:51:56 +0200
Message-ID: <CAP71Wjyydx5eLOFGv108gV3a1PPM8DUOMeQWtL51TjDGU+JCXA@mail.gmail.com>
Subject: Build and integration engineer for Yocto Project
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

hi there,

The The Yocto Project is looking to hire a build and integration
engineer to join our developers community and assist the Yocto Project
Architect in a wide array of tasks. We expect to build a long term
relationship with an engineer, and estimate that the workload for a
senior engineer should be no more than 50%.

To learn more about this RFQ, please check this:
https://www.yoctoproject.org/yocto-project-build-integration-engineer-request-for-quote/

Any questions, feel free to contact me.

cheers
nico
