Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web08.10308.1605380833667995038
 for <yocto@lists.yoctoproject.org>;
 Sat, 14 Nov 2020 11:07:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rcz9Qn3W;
 spf=pass (domain: gmail.com, ip: 209.85.208.43, mailfrom: vvavrychuk@gmail.com)
Received: by mail-ed1-f43.google.com with SMTP id d18so1656806edt.7
        for <yocto@lists.yoctoproject.org>; Sat, 14 Nov 2020 11:07:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=ZjLXWm0zblA/mVHNPhaAfQ0UfVy7BV8LVFFj7biFtBM=;
        b=rcz9Qn3WCapuDK+ial81X7+Ybaw9BXtDGGZV/OoO+H33A6hCfLgHwVU4zElalgP7tA
         JuRtS1vgB197XMP9A5ntPEuVexMN4LZVMfMxoDlHlAd2zznk7bIaMwCgB2dIlqqSYfjb
         FI8PYLXjL5LkDCQpTWM6nM/I2ck1wb8oC5H+8XzrxLm1rF4UlpyvXQtpnU1cAr+iAUav
         wC5hnVBmxC4zqJkSRlQZhmhAsmN1P8sDYGb9AWbKcpwe18F7wvQy5YVpUhWnF61itUnf
         g65uG/WigzZWFDgZlyKUPJoHar6jvaFwYUAtOQXeKD1V3MbVXYnaqsuIWN/DouHCudwD
         3itA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=ZjLXWm0zblA/mVHNPhaAfQ0UfVy7BV8LVFFj7biFtBM=;
        b=gLWYA0CLp7eIhtYRLvsHYlACnZDRnoi4zx5EZW/axm3x3lQB+wC85v6qQeTpHxV7v0
         P1YWzh7XmJSoXYlc+IVbppslGuHS8QxLS1sJa3uia0mVwkTzTTdhtUxZlAGKMsEcvfTP
         G9JLC5mdqvQRGwOGIaGqs8SlB6Eu8xwQ6Fm/ClvZiNNzBBwxlKV6InXZXW276gatJ/x5
         3zLpAd/sePaGhtfzVadZZmYFmfr0L5QaE7LapA2JPY4XWBYRGCxaDvpsr1xYMua/4HvS
         fZDx6ydW1OpA9k/k5QIWoo3xH5nPLRgTJ/bDOluExFoWzRDdGIBQjPCqhyt/EnM6lJRs
         lywg==
X-Gm-Message-State: AOAM532kCJwXLCZxRqAlH3I6s0mFvO6qRYT1pQc/gfJ6gKRNXheWcKOl
	ivFPrfBe4refHhwe5kHA+9J5YXn+egsBVsc6duKsDPAv0pZ0tw==
X-Google-Smtp-Source: ABdhPJzP7OcKCsu+fvnK8rR2IBzViyZPzRDCjwqgn6T3nWZ2C76ObMYaQRqzqgVxrVNzMyWxf+a4eGesiaG8hNqTtTI=
X-Received: by 2002:aa7:d801:: with SMTP id v1mr8498495edq.250.1605380831899;
 Sat, 14 Nov 2020 11:07:11 -0800 (PST)
MIME-Version: 1.0
From: "Vasyl Vavrychuk" <vvavrychuk@gmail.com>
Date: Sat, 14 Nov 2020 21:06:58 +0200
Message-ID: <CAGj4m+4QE_Ujcoaq+pFgpku+sgkd8AARU5O7+W7X4MQCHHb6vw@mail.gmail.com>
Subject: Single page view of a particular manual
To: yocto@lists.yoctoproject.org
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
