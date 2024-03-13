Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910D1C54791
	for <webhook@archiver.kernel.org>; Wed, 13 Mar 2024 16:40:56 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web10.578.1710348051682303750
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Mar 2024 09:40:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ccO9sZ3Z;
 spf=pass (domain: gmail.com, ip: 209.85.215.175, mailfrom: joel.winarske@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-5e4613f2b56so5199a12.1
        for <yocto@lists.yoctoproject.org>; Wed, 13 Mar 2024 09:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710348051; x=1710952851; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XsHXoCoaBhqs6AcLSSFoS+qYqGRGfdFlrUo6+WX2qIw=;
        b=ccO9sZ3ZevuMeXgJsthq8ut1SUeDcrGHriWDGA7XWmtAI04Vt+W7+SfMwciMspX/w5
         6GbBox5Aa3hfn5NIsknWkYvqzTPRhVqw7GFlS5OuJD7X41Nxk7ZtK1DxYiyanT8kB2Ln
         epEp5vDC3uYi1mdxz04lZUvINlhh+KfaC4zeoEZnK1l2n2GI9Ra2/webHVhQJKwJRO6S
         KvpE76Ef+QbMnffvdMwXv9Vxr3hVbxHbbMlLLnXMo9C3Jf/YTnF2TQtZ7MdwSwTrg7Xv
         jEvgXISGl62qdzpug4plEopuq3X+ksDOYZm4cYteolDADF4uV9loxgTFfTHiKfJrIOms
         sfjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710348051; x=1710952851;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XsHXoCoaBhqs6AcLSSFoS+qYqGRGfdFlrUo6+WX2qIw=;
        b=jZwUsIbgbafwRRAPRRpwDyUEWD+kgP4SvN6wYMypHZZq5opHEfxjY8tdFKCk8U30yu
         /i+zbHITjw8OLUoouZ1Ue01jf3b0tELrSwCMKCcafFO9jICa1bMYvwq8Tb1a0t0QDjGO
         5LbNLx+eJU20wnegeR6sq+Vbu0R09x4X2SpAfxNO/8h3ry5FW1R6J6sp5E9vdcpK1LVF
         E2RG/Z21xfTe8ZvDgy/eblax+A/Iy3xDYQL4VNsVSBXP/inOBBZW8MaiPvaHEoMJ7Nqj
         Kj7Z8bVa/R7pUz3ZB2NBuIpe9BWT5M8NuyXfFoZKDQ0EQSFSJspZnUVm+10LIQcgPJ5f
         rYLQ==
X-Gm-Message-State: AOJu0Yy3kPU3QFX2+zzLGDvNmNPAj7GN1lVdxvcpXdHj4OMAISyPu5XI
	/hpbZKDfh4T61K6F2Go+ue+96D+arkZivaGYcbYLVNUrQIwRtw9KvlSEVg3ThbjPl2uFb7FnK8s
	CpUrx81mGoE3TGp+BhgVUIvsSsx6oPhdE9iuSnA==
X-Google-Smtp-Source: AGHT+IFEuba/WKoLBeEZOQXNMgM8/ga9uOr1d7yAkYZJubs8JLDLdmf8YPTcixmyaS7VFlACBE7iezgSDnTmgRzLjyg=
X-Received: by 2002:a17:90a:d3d0:b0:29c:216e:e5d1 with SMTP id
 d16-20020a17090ad3d000b0029c216ee5d1mr6905328pjw.2.1710348050541; Wed, 13 Mar
 2024 09:40:50 -0700 (PDT)
MIME-Version: 1.0
From: Joel Winarske <joel.winarske@gmail.com>
Date: Wed, 13 Mar 2024 09:40:39 -0700
Message-ID: <CABKMkPJc0BbU0owt6dVnmOBSrT+Ji=sBNMYhgWtgRUhxT2RN_A@mail.gmail.com>
Subject: PACKAGECONFIG variable related patches
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000feb44906138d6f8c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Mar 2024 16:40:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62751

--000000000000feb44906138d6f8c
Content-Type: text/plain; charset="UTF-8"

What's the idiomatic pattern for applying (a) patch(es) if a PACKAGECONFIG
variable is set?

--000000000000feb44906138d6f8c
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">What&#39;s the idiomatic pattern for applying (a) patch(es) if a PACKAGECONFIG variable is set?</div>

--000000000000feb44906138d6f8c--

