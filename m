Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CE70EE57D4
	for <webhook@archiver.kernel.org>; Wed, 11 Sep 2024 20:17:36 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web11.31505.1726085852276776177
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Sep 2024 13:17:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZrcM2VAi;
 spf=pass (domain: gmail.com, ip: 209.85.216.43, mailfrom: joel.winarske@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-2d88edf1340so148033a91.1
        for <yocto@lists.yoctoproject.org>; Wed, 11 Sep 2024 13:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726085852; x=1726690652; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RcsqIsMunbO9wegIUAghshqdg3F6Li2RtvYErVY+soY=;
        b=ZrcM2VAiBbz0+vRunHIxho/i3I71oa6KnscpeTcJj6IQvl6W35JyRyLuX8yI+HGzv+
         UPnw1wHUEAikkj7wb4p00GeDnqr/KBpNuovQqqOjtpSKcReRprbQysI9KAwL5cAclcF4
         wuAOCsZiIMHFXU4y61RmLUeAGupfjHWgbG8tl4YxebPL4zv52IwsDviVNXlFvBkQe56a
         tu54i0UkMbyGCppRv2dW7Knf8319E/twX6S8JzGmjwAd4+dphlT8/XqgVl1U5xUoe2pl
         PRRU+tfI6pkl+fdVfQDvPOpNDBEyO9CMuVWzbb+6INOHtf+J5IZYvrjNKdByogyIIQ3j
         /NRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726085852; x=1726690652;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RcsqIsMunbO9wegIUAghshqdg3F6Li2RtvYErVY+soY=;
        b=GNtB6ui1a/atoYqTRoKVErI1uD+zbkOhrGPZz/aCrEJvTgXPL9YXgbMcfhx7hE4Wut
         gZqItMCjwZzIUD6Ri79StuGMDuaDTMLKcqK0E8Z52q+sPf1uihYCnYCMAp/LKbgCl1Ab
         qF9UTplhmiNoY8Fawd+hHqUtvctAjzjmM2LMcbYgaE1Lf57JqePu+o1bH6N+UnUZLqV+
         TTlFtFETZULsJ0Ckd8R2m7i0ie/SX+6sfRaFU2xk+F0GWXctbl35N1MoUK2wivjbEaYB
         +6kNAdffvwCP+kgavYC4Neuym1eQA9+6+9yJI5hwmsrD+RTpJ6osp628co0A3rzva2p/
         HCPA==
X-Gm-Message-State: AOJu0YzvOhNa7XY6k0eyZTDfh7fwp5TByb7eCw1fNympjb+heJLGzUAx
	vrlrmoA5TXMaRQQQ9gVzsY6k6PSgobpZ6+TaPnNi4hckIXB/UC+YlAYeNKGryaIS8AXDjZrqPY9
	f0NB2VExthCxiR6oYGmk+sIc1VuY=
X-Google-Smtp-Source: AGHT+IFY53lInGFPzYlYQ8Hjk449jKeatQ+asNa6t4YAoAxdCvXoU2knX751BSWkgc28Gd3nfywdh0KB4138fXmPc1E=
X-Received: by 2002:a17:90a:c241:b0:2d8:9226:aa94 with SMTP id
 98e67ed59e1d1-2db9ffa3b8amr439025a91.1.1726085851529; Wed, 11 Sep 2024
 13:17:31 -0700 (PDT)
MIME-Version: 1.0
References: <CABKMkPK18FnhuOT8ydnLXw-n-e_Y8rW_vg7AzwG4qgnXdsHQwQ@mail.gmail.com>
 <CAMKF1soA_76OSa2Mt=s8O5Ws46X6S93F_9DwYu0f8Jqb2fpxJQ@mail.gmail.com>
In-Reply-To: <CAMKF1soA_76OSa2Mt=s8O5Ws46X6S93F_9DwYu0f8Jqb2fpxJQ@mail.gmail.com>
From: Joel Winarske <joel.winarske@gmail.com>
Date: Wed, 11 Sep 2024 13:17:20 -0700
Message-ID: <CABKMkPKOmBZ8spNNi3YYxo+ASFPiZnBXcP_0Jrd_RuSeX6Dn_Q@mail.gmail.com>
Subject: Re: [yocto] [scarthgap] dwarfsrcfiles + static lib built with clang
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000084efa0621ddae80"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Sep 2024 20:17:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63826

--000000000000084efa0621ddae80
Content-Type: text/plain; charset="UTF-8"

Hi Khem,

Yes it is built with LTO. If I disable LTO it works.  I definitely need LTO
enabled.

Using `PACKAGE_DEBUG_STATIC_SPLIT = "0"` in the recipe has no effect on the
error.

If I set `INHIBIT_PACKAGE_DEBUG_SPLIT = "1"` it's happy.

Thanks Khem!

--000000000000084efa0621ddae80
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Khem,</div><div><br></div><div>Ye=
s it is built with LTO. If I disable LTO it works.=C2=A0 I definitely need =
LTO enabled.<br></div><div><br></div><div>Using `PACKAGE_DEBUG_STATIC_SPLIT=
 =3D &quot;0&quot;` in the recipe has no effect on the error.</div></div><d=
iv><br></div><div>If I set `INHIBIT_PACKAGE_DEBUG_SPLIT =3D &quot;1&quot;` =
it&#39;s happy.<br><br></div><div>Thanks Khem!<br></div><br></div>

--000000000000084efa0621ddae80--

