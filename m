Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5A77C0218D
	for <webhook@archiver.kernel.org>; Wed, 29 Jan 2025 03:49:53 +0000 (UTC)
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
 by mx.groups.io with SMTP id smtpd.web10.5666.1738122584149070745
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2025 19:49:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HQnzTAoQ;
 spf=pass (domain: gmail.com, ip: 209.85.161.42, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-5fa2a2bdde9so1463900eaf.0;
        Tue, 28 Jan 2025 19:49:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738122583; x=1738727383; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dTdSQVaO7kATooYKua5RcWDhHXq48idVlS9IjKg0TbE=;
        b=HQnzTAoQX93p8e4D+DVgUH9FPyGD1PlfB0cYZ9h8Yi3bZ51fhWrmZXTUDgkJ8/XD3s
         K1hH3hjBjqCy8Bh7ml0wUEgzNsxnsmf6wefp8NuQG4a28ZJiHzKHG0zJVWo6wxyQaKw8
         UiS9/7gxhcKxtuFSjMu+H3t7m0oB2ugVwIZqFP4fyoeCcOX/U7Xx/fXBX5pFmGf0HVfx
         roNlxdohEqrB6a5CcJbeDbnBXyEEi15psnV7qQa53LAidf2UX0CaqiBm1cGDwGUItNSr
         Eho0d0uYmjkmmdO1ue5R1mrE1GhRFY792cAk/BNoDeHAGLtydfBZa6dWvmpmY74TfGOh
         0dIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738122583; x=1738727383;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dTdSQVaO7kATooYKua5RcWDhHXq48idVlS9IjKg0TbE=;
        b=g6lp+P/63qvdqLvhxq6TyVaDXNDZ18QO+ug5r8HuMwLT1ybapWW0OZy6dNQ0OwvlEK
         CmVDNeHgpaHWe4PsLXqtXhIijiJyzuzxycx1rxLv5w3kgoGiJvgoCyPwx7752zSEEopA
         xqYYdLUBv7Ir4dlRd5l2s5M2sYdvoBnl0LFfwnPk0XCnpTN++7O0qJd8yYOcwpQXkEjf
         VFvxEE5WrN5Yxpcc/ffrlDL+NsZGq6/9s3LRRX0NuYYGFOgAY+1KV0sEPtaM1co+UynJ
         yK0WLKc7ZQFFEZHmJyeNW2BJM9JvtLO89SnSRFTlITdjLWd6Ip1/gNudx5MLd5ak8RfA
         ygjg==
X-Forwarded-Encrypted: i=1; AJvYcCWFGk0kVkzDjtFMUBNel/gBK796l4Qrgu3x+KXUCV0tCveDzu1fhc/rJ7znjMQd3glJz8Bzrm8=@lists.yoctoproject.org, AJvYcCWVf19w4WmRNwM1aWkgnXiM4hwxo0zk/XOcvBOOAY/1HG26E5Cl8pJSDLJ5tpBSjkq8dqwxyzXSthCFEA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yz83J98/8PxCw4ebUp1/SeIkWK4M0UAHSUm3P84TAxUZlvX6WSV
	waNOZwSgZoBVXmkgnRXtfPcmRRyW2QbQKdaAqOO6+56kwGqT8TXlWqNUlOvKO4VVevRwGAnQxVH
	ttjAvnN+Tz4gyqa0ZESxbEmXQqvk=
X-Gm-Gg: ASbGnctZcjbyS0Nu9usN9lf2TRXgomDBcWGloWf16JS92cI03FRJmjvYLAXKJLhnwjK
	Ooa+QcYdZ365XaLMkc0dTEgyxq2HQ+zGd1mhqMpzfl5hs3IEVB6hQtgvT/N2c3ZRiqotMNTo=
X-Google-Smtp-Source: AGHT+IFaPbj1O7AJ4x6Sn6MlU5TW5oxbamZZ6npQECJ5MAYNgfIQjtubT1i/oN8JofzKGr7Rm+Ov70ZJTF34tAupihI=
X-Received: by 2002:a05:6870:7d09:b0:29e:290f:7aea with SMTP id
 586e51a60fabf-2b32f2e93c7mr1098886fac.34.1738122583249; Tue, 28 Jan 2025
 19:49:43 -0800 (PST)
MIME-Version: 1.0
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 28 Jan 2025 19:49:16 -0800
X-Gm-Features: AWEUYZlp0kVk5kd4gjg2OGrNzPSzUZAQ_eFl2JoXewYnlizeMGpkXA8d2bJUj6Y
Message-ID: <CAMKF1so+CuiYgvadZM9APzGZLP=+4ACs_5U-kqCU9VtykP8WLQ@mail.gmail.com>
Subject: Request to apply patch
To: Bruce Ashfield <bruce.ashfield@gmail.com>, 
	Linux Yocto <linux-yocto@lists.yoctoproject.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Jan 2025 03:49:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64669

Hi Bruce,

With recent, changs in include poisoning patch for GCC, there are new
latent issues coming to light. one of them was while cross building
intel-speed-select recipe which is built from kernel sources, and
kernel makefile hardcodes the paths, I have sent a patch to fix it to
lkml

https://lore.kernel.org/lkml/20250129033932.2576077-1-raj.khem@gmail.com/T/#u

Please consider applying it for linux-yocto kernel 6.12+

Thanks
-Khem

