Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.9653.1611847108318357178
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jan 2021 07:18:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FuLdO/+P;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 496CA38C05C4
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2021 15:18:27 +0000 (UTC)
Received: by mail-ej1-f43.google.com with SMTP id ke15so8264665ejc.12
        for <yocto@yoctoproject.org>; Thu, 28 Jan 2021 07:18:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=F6Sszcb75jvvhzN/2x7eewaUkcCaWKLtgg7B/hXziko=;
        b=FuLdO/+PE4Krqc7ndLKwST5IUEj/tARwJfjaGjjFwUMvHr5z4lJiuCnRxgAOZWo5EB
         lJUfWeo2HA5FG5DwU8A4cWomuTGR237bMvnypYviO4uDCB5jQn9iixxkeS/19DaQ0F/X
         jTPQPr7cW65skO/vl8xTyABUfK64eQrK5948bpQ0mLNHib63kPKUx8RTam2bub78RGaU
         4Mq8VtR8CfLqEO+8YvUAkIgoHRkOjGpwa4tvEevHW5DnUPH/HdfAsxU7lxYBn5+JhbuV
         ml7sgQ9t9hEIQsNPGURYx98XHEhf+xZ/B3/mXQeSy2XwEs+MrqJQSYfZhXFmAihLg0ob
         pqSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=F6Sszcb75jvvhzN/2x7eewaUkcCaWKLtgg7B/hXziko=;
        b=CnSmV0Wt5TG9s4VH49ZK/M8mAEnW+7WAAxqpZ8+UklUJttSZBDXhotM0eOx9ASzzzk
         g6fNExSBcuePtdVUGO+/O+UQdTt0lQ7YKED1lUWp182MGTmEukaQvqHNV5LVHXglhqdz
         Ua6PVTfrWbWqCr1fUxswoUSJTWJ5PRfQ+pfavZFGWRjkiPCkbschMQ/oZUEB7obvTOWk
         hwbqt+TPpLUXvdUiMBFUE6E+cfhKn3BbSa3+7nriIl2Ny5EQvW/b11LA2E39T91JmpBh
         twOR2YqTeYHi2LzgUgnZss7dV5j01fd15wLS64CH3dxQ7EIz7cjq7KxdAwfPgqHcx6cm
         3IYQ==
X-Gm-Message-State: AOAM533sYu1EX4RRx/WyIw1ddrUaPdwqtB2bsQbfUUZjrq3GsePbFpdc
	dLv4EP6my3NLubkjg3tCSxqvs/5XLmlnNA8k8dwN1Rknj2DN2g==
X-Google-Smtp-Source: ABdhPJz2DfPGQR9vbeW7tSwAM/uCpQF+Mnt5sEocZSEuVPArc9Ak5IsYoZVll+NyJ8zM54HFs3TafMeDIdfJ6M9BC7s=
X-Received: by 2002:a17:906:b2d6:: with SMTP id cf22mr11545431ejb.181.1611847105553;
 Thu, 28 Jan 2021 07:18:25 -0800 (PST)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Thu, 28 Jan 2021 16:18:14 +0100
Message-ID: <CAAfyv34uaBiBizgAv8L+5NHs5+a3U0ofj=nytjouPKrmbjA+MA@mail.gmail.com>
Subject: git lfs not working in dunfell
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I have repo where I'm using lfs. I've added to my SRC_URI =
"git://...... ;lfs=1" and the project is fetched but the issue is that
lfs files are shown as references only (content is not fetched).
I briefly checked git fetcher in bitbake and seems it checks that repo
have lfs content but I cannot see anywhere git lfs pull to actually
pull lfs content. Am I missing something? When checked poky master it
looks like proper fetching is in place. Is there any way how to get it
to dunfell LTS release? Thanks.

BR,

marek
