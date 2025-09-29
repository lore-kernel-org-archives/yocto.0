Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DFFFCAC5BE
	for <webhook@archiver.kernel.org>; Mon, 29 Sep 2025 10:29:54 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web10.50460.1759141788081457587
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Sep 2025 03:29:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iaOtCIW0;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-7900f7f4ba9so39341676d6.0
        for <yocto@lists.yoctoproject.org>; Mon, 29 Sep 2025 03:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759141787; x=1759746587; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d3UXJDnYz9grPZbZChlb/qgCc8KXfcwhPcedEfffTIs=;
        b=iaOtCIW0nm+e3xKGdrqMRve2Wl615ftbgYdZW0Mqphlmpub9XdKlrpYqLgu3EOMhEw
         gp03PYM8AkzNaiY9YQtsqpu/NGPwXwrGD4A3fINBLgnO35M9KCD7pn8MxDQh3wykq0G6
         o5zn/uso2357CB73TRhDTQ+MM4rn/0gND6JJIAMY/j2pnXF/XaL0lI2GK/N9/OexC9Hz
         PUDdv/qlnMv0ltQcZyMklh8Vu+FY8wqWp3FtQHZKtsZ51lhnK8+iwlZOS+a1Z/GpWDJ3
         T30kcg7brn4xbvXhtazHZ7jQEsjAeyyF3TcviH9ELuDvyIbgNhhGpSnc8ddtCaUoUPTA
         KTKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759141787; x=1759746587;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d3UXJDnYz9grPZbZChlb/qgCc8KXfcwhPcedEfffTIs=;
        b=aQLi9WKFQv4QZ7teIfJn4BQoy9oEJdRZSluXuCIH7wpgXJwZTiUejvsw9wgLFPY7xb
         2B1MzOvCwBSbNpibxGisL+Y+GvJ2d/R/l3tTkOWLjSmfvIDW2K7mfZ6pr6JUzQ5R+mj+
         W4REaGUNkL5SisW6x0duW2oqI6zQ+mW8BlcDo+dav86CcfzvpniDqGOBAlqVRaCf0Sq9
         8ALeyTaXKS07/NOnTUSvl7B4U2F9bNc3YzHBtM8/pvB2TeaN02+Q4+eTVaLtBltl+TjR
         jkEWaBEgGLCJcpusgp+NZZOuNbv9YjxCBHj5SfnSbSYCzOhiItSKPjmxaOiySSAsi4YG
         kwqw==
X-Gm-Message-State: AOJu0YxP/q/xLGJL8/rU+pBf6+xiZX6Q4/DeipIw7MkOVCYjpKTkAVuG
	O9kRw2Q3bWxhv9JbzIZ64AsUpMtMd7f+oE3QAdy7qQeEqwOfM9oYdUKyaDmNUmPNPsFiy0czbsa
	CKnP0III69IF9fxQATV4Q1S4EuW+LXESmcg==
X-Gm-Gg: ASbGncuaiUFYVyLxwImhFRgJq0BOX9bswXTxFR9wc2+BYtFhJzKRNrUFdpseGX0L4XB
	3SWoduFltwck29HRg/Wm0xRDJSRiA1REuRlNglDstnWXCvQoLfIuPsjBNzFokQeQzlhxaLce0cM
	zin/yq4HU980jlPZjWf6MFqlnkZhza1YaBnovb4vdG2DfXlpZWIYq9grWQpUELThhrVfEov3RHi
	gHOQqJqOM9YiZGjh75zPXDawDHsxmOAHbSBJz2ROq3rY9Gr6EF3pQMRA/FlmoHEA+ZUC6o7pZnI
	TXyYu4Bm7ZDlQ/M7D46APDnjmxXxNwuPcoTe31khl6gMcDLNP5RCASczxho9TQ==
X-Google-Smtp-Source: AGHT+IEXSkXnt7AGjWAmLpDtmJ/8nTmNcul/DfSWLa1wU8E0S08wGykmfJD8om5/PfWywvA72HD/jEAHomSIlVMPd9k=
X-Received: by 2002:ad4:4eea:0:b0:78e:c5c7:1225 with SMTP id
 6a1803df08f44-7fc25df02afmr199480326d6.9.1759141787080; Mon, 29 Sep 2025
 03:29:47 -0700 (PDT)
MIME-Version: 1.0
References: <tPXD.1759141318077722833.29eX@lists.yoctoproject.org>
In-Reply-To: <tPXD.1759141318077722833.29eX@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 29 Sep 2025 12:29:35 +0200
X-Gm-Features: AS18NWB-Iz2p5KEa3dt2ToqAMcCAEF6eMXqqyGqMkSURihI9iN8wJpSRdP_kPtE
Message-ID: <CANNYZj8Yx_EkRLagi+ZgAVhHhx1LXPDve+HBdmzy17i4MHR-PQ@mail.gmail.com>
Subject: Re: [yocto] Failed to fetc qemu-project/u-boot
To: yocto@lists.yoctoproject.org, nicolas@saliencelabs.ai
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Sep 2025 10:29:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65881

On Mon, 29 Sept 2025 at 12:22, nicolas via lists.yoctoproject.org
<nicolas=saliencelabs.ai@lists.yoctoproject.org> wrote:
> ERROR: Logfile of failure stored in: /home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/temp/log.do_fetch.1878631

What is in this file?

Alex

