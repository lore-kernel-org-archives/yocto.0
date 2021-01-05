Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
 by mx.groups.io with SMTP id smtpd.web12.1462.1609822946843194500
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Jan 2021 21:02:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hp3RUfYk;
 spf=pass (domain: gmail.com, ip: 209.85.219.170, mailfrom: jupiter.hce@gmail.com)
Received: by mail-yb1-f170.google.com with SMTP id k78so28099727ybf.12
        for <yocto@lists.yoctoproject.org>; Mon, 04 Jan 2021 21:02:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Vrw+MldDgLwG77lDvvqxO4NyjBodQf3jxJ0ZAmJ+OQU=;
        b=Hp3RUfYkOmL5iCelffY8BLatICYR1jjjLbWsOS/7Reju0z9SSgvLEunJraCw/yUmyt
         3bKzdOYwGmrnJXZm4SFeRQS18HPLNO1VYGgHXWp/xcuTR7KxAJpEjZx4Xn1Igh8rpiUB
         QgsG5ISALHzVye5vGbQ3XGXQLAHOBSjc1oUHv4BKjG3dJTb0xQqxWUGBSBTn6R+G30jR
         i26nhElxsR/8p97NKVP7z91TZNLIf5aYAa3ypRfRhruCWp0CP9XJaqMbmYxHEdmsdAcs
         tEO3d3Bh0zQ+IaXk1yOg74YaZmAP6ADoQKLPIXqGV9xQytQMuv72yjbQx0mef/htbYo2
         LzjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Vrw+MldDgLwG77lDvvqxO4NyjBodQf3jxJ0ZAmJ+OQU=;
        b=Sr+vy3wieIwkq6aP1Hqicl6BkGyL6W1fb9IXBGDDDT/bZKpLyKRDdl0Axs2qdsXY4w
         FaG279nteW7O8YCDArZHwEERLosJBsnyLJusLjSWUtG4jdwwXJDLamMyO5JGl0PC/aHA
         Sa5+YchaS0mdGU0Gj1BAaX4MaFyxCvl1DawbbBRXGBkuienPJUAgVH3oPncRrAYlWm0+
         91S259cAYufYpVcy1KSW2vNR1nTG3Q+n4McZW+WgfEfTubz09+DTLtyzq764OsW4GQe8
         mJiNpqgbnoQsnSk4sJ3gQ4jcn7plm7UQ8texJhvkqJ8XHlS7KFcObNvPtmeUVYOCZby4
         ldhA==
X-Gm-Message-State: AOAM530UZ91Ipc6JKF30awuoe/pWnWkk0S72ZgcIMyeqxV7CIGs2N+pW
	rLtxhLEGGRaa42vfIlERuDpqOrcVVa4U95ON9VF9fWMb
X-Google-Smtp-Source: ABdhPJyf40rPJuflSSlnR/XL2iK59t7m+lOr+oXGvp5KOZAIc7MoA/oxB/T5A+3F7iniQ2UCMrz+KuiR6SmZQ0rxIhc=
X-Received: by 2002:a25:2d49:: with SMTP id s9mr109908071ybe.65.1609822945876;
 Mon, 04 Jan 2021 21:02:25 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a25:e705:0:0:0:0:0 with HTTP; Mon, 4 Jan 2021 21:02:25 -0800 (PST)
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 5 Jan 2021 16:02:25 +1100
Message-ID: <CAA=hcWTdt4GLPe-xEFK6eN-AXaF8mmmTa67NZvhnaLA-FPNJww@mail.gmail.com>
Subject: Update version
To: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

Where to download Yocto receipt for kernel version 5.10? To update a
stable version, should I update Yocto version to 3.3 or 3.1?

Thank you.

Kind regards,

- j
