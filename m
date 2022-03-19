Return-Path: <neuberfran@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8B6C433EF
	for <webhook@archiver.kernel.org>; Sat, 19 Mar 2022 05:49:14 +0000 (UTC)
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com
 [209.85.221.170])
 by mx.groups.io with SMTP id smtpd.web11.4363.1647668953687318839
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Mar 2022 22:49:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KXpr3KBV;
 spf=pass (domain: gmail.com, ip: 209.85.221.170,
 mailfrom: neuberfran@gmail.com)
Received: by mail-vk1-f170.google.com with SMTP id m84so5458754vke.1
        for <yocto@lists.yoctoproject.org>;
 Fri, 18 Mar 2022 22:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=XF7289Gbw3/hVm0OYp9LdrqXJqMpNe8/ZBqJaNSjKqA=;
        b=KXpr3KBVwV9xn72LLmOxgORV7WtXmLmYDo/qGgySjMlSxl+hgWRC0i4GKvwzaArDgl
         ESkYBvQuU5C4WA43abTQ0/S95niSifeviI5W82dTiinK212Rk+AOCAFgkqlH86nApfGZ
         NvdSnarmN02EL1EBKygSSfP7DpZAP4jlTzNRmazNIP8ARnDC0HrHRryj8HsRDuNSPb5J
         SI1ozbBY6QCRPpcw58lOYegqBBdsBeQEXdhezUyHbzIxLDetAS1A0A5V0NWytSZJNZ6w
         zG+eG75qUOO09vfjfBX+bhgVURDMI/pIL52cWox/SBBu9U4gpgEBA9A2rC18/8RoMXua
         FmFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=XF7289Gbw3/hVm0OYp9LdrqXJqMpNe8/ZBqJaNSjKqA=;
        b=nc2VQsRPbWxH+b/vMu8AlB63r1qpOs5XLLoI6uL9bpusvAnO6gCSuP1fWUuVrluHni
         deuKLUXR+WLNF2FEBN0yfYQZPhiZsieSk0LlkD+JJZrvZm/+FI+gOe/UhtElL2fHykNb
         iPCkCF5PSOcGDeP722/z/N6txY/rQBwnfpeS3XAcnyycQ7eTSzWwMdH54ViVpUTL39Qk
         YzdkzhepNvewO6WJ62Lxcs5csCo2rQ/h53da2ySY+y6JD1cDIry27YXgbIiVxJM0oyRA
         gc1QS+lInGqjCEEFAQKTO5raz2uXVHYSrpkYIe97MMT5xyQ30j9IpBp6wE60NHmJLKVj
         wKfA==
X-Gm-Message-State: AOAM532bZ5r47xnTGhmwwSkxMy67WhMhrHylsWxeOnzndBl1hGbIQ7Mj
	zHC5FuRsgFmKh6KYi3cyA2QdlU4KZcBqC3KSVpWam+Tn
X-Google-Smtp-Source: 
 ABdhPJxPQWjxm3kLyaG8K/N/mH0iW8bE5d3IR9Spp1HugBFCAUGw6j+K6740ligzYIaDZn501WEClAEm7qFdbLhqjaY=
X-Received: by 2002:a05:6122:2009:b0:33e:c562:6cf7 with SMTP id
 l9-20020a056122200900b0033ec5626cf7mr1335639vkd.40.1647668952633; Fri, 18 Mar
 2022 22:49:12 -0700 (PDT)
MIME-Version: 1.0
From: Neuber Sousa <neuberfran@gmail.com>
Date: Sat, 19 Mar 2022 02:49:01 -0300
Message-ID: 
 <CABWL1P=9TpjgYX24+T+S5Ew7bWghNTjnrP6Q_oFtYUp+Z3VjvQ@mail.gmail.com>
Subject: Pls Help-me with this issue;
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a1154d05da8bd217"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 19 Mar 2022 05:49:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56501

--000000000000a1154d05da8bd217
Content-Type: text/plain; charset="UTF-8"

https://stackoverflow.com/questions/71073386/reading-file-would-overwrite-reserved-memory-failed-to-load-hello-world-bin


How to use LMB?

?

--000000000000a1154d05da8bd217
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><a href=3D"https://stackoverflow.com/questions/71073386/r=
eading-file-would-overwrite-reserved-memory-failed-to-load-hello-world-bin"=
>https://stackoverflow.com/questions/71073386/reading-file-would-overwrite-=
reserved-memory-failed-to-load-hello-world-bin</a><div dir=3D"auto"><br></d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">How to use LMB?</div><div =
dir=3D"auto"><br></div><div dir=3D"auto">?</div></div>

--000000000000a1154d05da8bd217--

