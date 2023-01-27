Return-Path: <max.oss.09@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40448C38142
	for <webhook@archiver.kernel.org>; Fri, 27 Jan 2023 12:47:00 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web11.101061.1674823611242039966
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Jan 2023 04:46:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZXZici35;
 spf=pass (domain: gmail.com, ip: 209.85.221.51, mailfrom: max.oss.09@gmail.com)
Received: by mail-wr1-f51.google.com with SMTP id y1so4887651wru.2
        for <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 04:46:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Hd3e6BLCszH90tyoZLtYc2dlIecRL65/1SjhzIGMHcg=;
        b=ZXZici350whl40//0CKihKUL8jiUWtRlpf5WzJNQvPG0gftoAcIv7GrS9F6IFxz81F
         H54rgQEJsMtGnl6TpvTUFT50pUC90ZwFzVbziATDBo4LCu5ivHE3osOkTa5uoFJvMNbz
         joIFArvfNzn9S+45n2JSL2xtz2cN55B+12HONxdcq+ewQQZnnOGZ7Nx75kCit73+/S+J
         eVTIpfVUlS80ERokQmOwhaBJO3ZqvyYNWKYEKuZazPTQonoA885VwGa2WWJqgQaZcbm7
         OlOKTm3sWHyrEk7cFzoj077RZhqyBKY5nuey7nOj5V/4t94O6ZzCI7ZugeefwgBlz2vr
         /1uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hd3e6BLCszH90tyoZLtYc2dlIecRL65/1SjhzIGMHcg=;
        b=st2j7gzRt2xXjH6Zsmji5+Qa0/9C4irrTNjopnXlQJuNeXISAS5vHwfGPV1JcUArxe
         sXbCJJOPSnoR8gnRZhvJ7gRi8ETh39+zZ4TybbTpSYLT8VjqOs8DxDK3fPhr+asO2JZv
         PmvbC/VBefS6CIhcSLKiOsHJc8W4QgedbRabc6YamcPu3phijeMUkcgZ25PSQJhRVi4Z
         ncfJPgSvScJCQz18G/V/g4KyMO05mXHii3TQoauHxp+WmNu2nfVHLW+0c3OAlN5TJeCo
         M6CIrVCEzDkkoLE0JnUZN4JTuwlxmkpCRPgsh5SJ2xnkOFRF4VLGfCazSBY5OBnugPOb
         INkQ==
X-Gm-Message-State: AFqh2kqIdY7b7kvl/Kmge4CQci8v2x6NoE/bPtffGGxZa/NiK/hEQri+
	bfrypckRjRfXixXO2X84+xwIqhiPRNscY400RCOy93y8
X-Google-Smtp-Source: AMrXdXvgH5u/Mo/pa/B4cxvlAUmU9vIQuVZA0UwnG3BpH8DCHDLUUkeN5J2n7NP/+Gpsr5yYv+q2fXc55eq9Zxe+bZY=
X-Received: by 2002:a5d:6f15:0:b0:2bd:d468:deb7 with SMTP id
 ay21-20020a5d6f15000000b002bdd468deb7mr1328006wrb.496.1674823609422; Fri, 27
 Jan 2023 04:46:49 -0800 (PST)
MIME-Version: 1.0
References: <20230127123047.207925-1-max.oss.09@gmail.com>
In-Reply-To: <20230127123047.207925-1-max.oss.09@gmail.com>
From: Max Krummenacher <max.oss.09@gmail.com>
Date: Fri, 27 Jan 2023 13:46:38 +0100
Message-ID: <CAEHkU3U1pKO1Fyn88K+Sug_vKYQTD85cfQSDbkNfOW-J0j8UtQ@mail.gmail.com>
Subject: Re: [PATCH] samhain: rework due to changed oe cache handling
To: yocto@lists.yoctoproject.org
Cc: Max Krummenacher <max.krummenacher@toradex.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 12:47:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59083

Hi

Please disregard this duplicate. Forgot to delete a backup copy before
git send-email.
Sorry about the noise.

Max

