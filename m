Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929D4C54E76
	for <webhook@archiver.kernel.org>; Tue, 17 Jan 2023 19:58:26 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web11.207899.1673985503734868294
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Jan 2023 11:58:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Dcr3K80K;
 spf=pass (domain: gmail.com, ip: 209.85.208.178, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id bn6so34291223ljb.13
        for <yocto@lists.yoctoproject.org>; Tue, 17 Jan 2023 11:58:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4iWcnainF6WAAWeT4YTYFDY37kNRlF/7njxvGanaEqY=;
        b=Dcr3K80KmCcN2xrC9GYn6v+m8xqMXpT8WM0NVxJOFJMdlsJ8GzIWfb+1AVucGTxoe8
         tBNjegHU/aM/A0JuW3//ylw7ZpRnhhrGXdu97reV1Y0TV6DR2Gsb7jwta9IZ9iyvTZVM
         0GWvYyg+8ZR8Ch//q/Do/2HXufV17vXr3ME5z6xEuBYjmoZCpwsBIQlJcU2DiAPr6/cc
         rHrDIFdymcA6qNXe5e5bn7NSaTEdiSzN+k6uKKg5eiTb25h+Un10bHfmYRoY3VI4Ka8I
         gLdPqimuke24ZVVOil9qRuzOsOocT+LwlJpj7vgIWheo87fiSTcschvr6TMwuWlQ0wdc
         8X3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4iWcnainF6WAAWeT4YTYFDY37kNRlF/7njxvGanaEqY=;
        b=BaJcZS1Tv5KwH4egCFex4tSqt0pnZBleU2uI/qcNNxa0PrzExJM5xhQ3K6N/OZFyNv
         nKkMjsosBv8FsHtdpxCauY0p0vpR+nygXzj+RWci2o6Wz+t9cVoSqlBA9p8UBaNc8ysf
         HBZ1BDd4jKcDC9HFwmPH6/rM9KWOnR3A0WeQPCPSZ4HznsJXi/bBnlt6xGRe72i/r6GA
         BvhRm0InYuOzK8rqEkqo+Fp1vzdGEhvCQyJf8AkCw1ypHzJfb+0tpboMR+lhectengME
         XfBuVv1aAkm6dw6BnSNqd0GgF3ygcIbPKfKILYdZ34k0BMEYWnmxiS062pzb1P+kPQld
         uCjQ==
X-Gm-Message-State: AFqh2kp+SuYQ6k7MAMcRoFTtmlxUcFgyhZhxEvdNXOw8hiSNIYdChjrK
	FJnOJIjNROjtcXnpPaxmomwrnvLDSFnHEecBPLY=
X-Google-Smtp-Source: AMrXdXs+BdQ5+nAKASVJ/0pOXW/1nQc5tnb4j2x94WlXr9ZsEUuC8ZAW8qyHwY1Cq/1rIZ8rVZCNnRzv+PKOImCgz3g=
X-Received: by 2002:a05:651c:1315:b0:28b:8da3:57b0 with SMTP id
 u21-20020a05651c131500b0028b8da357b0mr390186lja.403.1673985501777; Tue, 17
 Jan 2023 11:58:21 -0800 (PST)
MIME-Version: 1.0
References: <UJ70.1673979468308754075.EgUP@lists.yoctoproject.org> <CAMKF1spHrXdQH+R-zsBi+cqTi3nyN7LeO_WyOcvDXSdWnGE5TA@mail.gmail.com>
In-Reply-To: <CAMKF1spHrXdQH+R-zsBi+cqTi3nyN7LeO_WyOcvDXSdWnGE5TA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 17 Jan 2023 20:58:10 +0100
Message-ID: <CANNYZj_4m87jCw5Op6ZhO8+ZCEif-hROrFZ=bdZJK7=9+jgYHg@mail.gmail.com>
Subject: Re: [yocto] Possible to replace gcc-runtime libraries & libgcc #gplv3
 #yocto #llvm
To: Khem Raj <raj.khem@gmail.com>
Cc: William Huang <whuang8933@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Jan 2023 19:58:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59012

On Tue, 17 Jan 2023 at 20:55, Khem Raj <raj.khem@gmail.com> wrote:
> You can do it to certain extent with meta-clang. Select RUNTIME =
> "llvm" in local.conf after including it. However, this is not going to
> be drop-in replacement due to some packages ( e.g. glibc )
> still not buildable with llvm + llvm-runtime and there are more
> components depending upon what you distro uses it might be more to
> consider. Its perhaps easier to get C++ runtime using libc++
> than say replacing libgcc and crt init files, which might need more work.

Changing gcc to clang should be done for technical reasons, I would
rather not give this advice to address what seems like an incomplete
understanding of the licensing situation.

Alex

