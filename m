Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.2995.1574547904987951463
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Nov 2019 14:25:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uibKUg0P;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87088E00EC7; Sat, 23 Nov 2019 14:25:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.177 listed in list.dnswl.org]
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E3CAE00A07
	for <yocto@yoctoproject.org>; Sat, 23 Nov 2019 14:25:04 -0800 (PST)
Received: by mail-il1-f177.google.com with SMTP id r9so10692653ilq.10
        for <yocto@yoctoproject.org>; Sat, 23 Nov 2019 14:25:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=O4E7NZT2EH2SLT62ODIuYQB1zaHTBjThakhnp0C/52k=;
        b=uibKUg0PTxzLIadgVYOTEgOw5qmIrkT1rJSXW5snVtYaokABRfyWP6ifbNJ9nSL6X4
         Eq0Be4GbGimokRNXZmeTohzoEuB1+BQAhKZFvNEzgUWxVOu3Q8rpgBgFUokBJ3TgNaje
         OHbouz6PZXxCLjHjUJ8IOhW3yiLv7OrtZqZLWfMf2mHQn+lxZhV1i3U02MtFBYFd6/th
         evBfn8UPmsyQTI6RD20IHk/MV3OZElh/HrjFjA8daJlJtWBrdmiW6pUhIsyLa40WSLgC
         HuLXoa85VlFxopmdLNUQvgZlijQWFjJLiBdQIQbr+pNQ1GAh0cBK1NiY8U5c4GS68Gt9
         glGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=O4E7NZT2EH2SLT62ODIuYQB1zaHTBjThakhnp0C/52k=;
        b=RZwZPmYBgSeiiHM9457beiCwrbX15Ew9x3HuUqn8W95WwNyJKGw2MHWSAEwcQmO0z+
         kNPEPPfQ2+XQ0WZU+Qbt1dgWUT7DpZ5FMW8uXtLv+8pKQ8bLPH6AqQhVRfOse0Wy+PeT
         VAccxsg03RsxEP/H0POoEH2+DUHs7E1ucAAaXCgb3c04i6w2TiDt+VNPMJA4d+mzyf+V
         I/AXdS9uInSF/gFnYAXPOApWld0Qab/JU98bFHV37SY4jyMCrCCUAUneIY9E6UYs7eOB
         sOuUGwkjemal7buv5pHavgBvGOM8F3u3qcn0OMZH8dJgJd3r6i35eQC7bkUDUxKsOV/g
         Us5Q==
X-Gm-Message-State: APjAAAUJiprk/F9TglX8jCC9Z5oYKPE94fyefzV00X6yJEuvQvgLRM6a
	2xqBJ3HrtDTWH8wP6o6lV9OdePnTMbObbSrl2lu1ak4Z
X-Google-Smtp-Source: APXvYqxuSgjZHUjui2bBnagkz/olkmx1/3Itphvg122PUZkH4nUUw/Yu/KllMvVpOu16xKYChQXaBOT7EKK/QtYwjSo=
X-Received: by 2002:a92:1711:: with SMTP id u17mr26342928ill.192.1574547903461;
 Sat, 23 Nov 2019 14:25:03 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:f24e:0:0:0:0:0 with HTTP; Sat, 23 Nov 2019 14:25:03
 -0800 (PST)
From: JH <jupiter.hce@gmail.com>
Date: Sun, 24 Nov 2019 09:25:03 +1100
Message-ID: <CAA=hcWR3Vhfc9H3VRf-Q1m44rX_ox2J-LjuPWHsB1Rrq-yrVTg@mail.gmail.com>
Subject: Yocto build to add root password
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I built a Yocto image and I could log into the root without password,
how could I set up the Yocto build in a receipt to set password for
logging?

Thank you.

Kind regards,

- jh
