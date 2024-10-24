Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC85CE8E97
	for <webhook@archiver.kernel.org>; Thu, 24 Oct 2024 16:45:02 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web10.1181.1729788293283746866
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Oct 2024 09:44:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jqrT9L7F;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-539fe76e802so1476924e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 24 Oct 2024 09:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729788291; x=1730393091; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TzIAB+4q8mJonJ4z97l4+VE4+APrJjKSrExx9jMyUx4=;
        b=jqrT9L7FFSI6pgr51OgPbl9OcqLVNjT8X7P/Vn6D1RVWOkcssnefW+Qt/htSHN/nOY
         bCyXupH75oUNjnl1p6dJrwGkwbQxPxNQ0Fp+5KTbdSaHETh4t3qX4Gzgqmq8v5qPHlzK
         l1F7av4/8DKEiVs6VFpZzNP9HlFBf1Jtm1BKxriWQH1J7DvCGDDINTNQgxkvqg8GRglJ
         RcdaEIe+iL4IWapNjRB9oBjJHI1PGzd3LZOtSpCHKXxjUNPI9DNS4AvBFSRrKaikpByC
         tauMTP8RwIwUUuWflLqN/xNbwgCVbJQ5a7kUGVKuaFAM92wGHMwmk6Q9i4K075rj6eTJ
         3KUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729788291; x=1730393091;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TzIAB+4q8mJonJ4z97l4+VE4+APrJjKSrExx9jMyUx4=;
        b=NBekOFi6FzwahnNqpmAed3NsIuvM8J0Z0bYBFdDH/aym0QE1ETfd5/cezDiHdPMkRN
         cy6+Rvcyu958VNgyCknd4M6SA2NyrL84TkWTdgW67MfDQZge3YsVNG5StOVVWqhrL+Td
         5I54tTJuhIwLtTrkQNk0wjqAK53VvWREJoAkApcU1nqVRdAXZQMWVBK4ygx1BzKUsWTv
         pZuKiJeeWM0zIQFMzNqwuVR1AWNmCfDTyPVZK/Seb4N/g1VoCacDxhpM4pBa79YSfBiA
         qFi6s/AM/nx9OdAndMCVPu449o2ZTTObdq8y21Ju75e+KRijrCZJ+/8lA6g/oK+SR3mg
         UFUg==
X-Gm-Message-State: AOJu0Ywu7z1YvOx1tmPcM4G3cKpwfjftU1NucNc1gBP7PW7tb0Equ/+e
	HFrASk8cOFFHXSrxTDej7F9rGqpain6fd146fbcgpDvzJwnlIHLKV0WvUenG6TglvARCcKAmZJl
	DBrd1yI5WrENC8eWHM2SLslUcZVByMA==
X-Google-Smtp-Source: AGHT+IHdLgUCqmrwitKdcmRX+7bX2sEGJtJJu0dYBZJhSCblP/U7m1cie9q0q3sQ4KqILt/2llyREtqmY6vMIaRciX0=
X-Received: by 2002:a05:6512:3c98:b0:534:5453:ecda with SMTP id
 2adb3069b0e04-53b1a3136d3mr4044411e87.23.1729788291097; Thu, 24 Oct 2024
 09:44:51 -0700 (PDT)
MIME-Version: 1.0
References: <hr8z.1729679886163625789.9CMP@lists.yoctoproject.org>
 <17835.1729746148931815318@lists.yoctoproject.org> <CA+Kjy2wHN5=iAQd-GqMzGg2VE74wJzjsq4jn7xDUsKE0SYpaFQ@mail.gmail.com>
 <MW3PR18MB3513CC2B4CCCDE888E2391AE8B4E2@MW3PR18MB3513.namprd18.prod.outlook.com>
 <CANNYZj8iQSz07gdFwB5nhyOa3EfsZ04VEjNKaEdgKZGTyuucHg@mail.gmail.com> <CA+Kjy2yRBym9J=g9hWGBawAYxpE65Pki2QrO-nG_A5V2uw+uYA@mail.gmail.com>
In-Reply-To: <CA+Kjy2yRBym9J=g9hWGBawAYxpE65Pki2QrO-nG_A5V2uw+uYA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 24 Oct 2024 18:44:39 +0200
Message-ID: <CANNYZj9S-2u-18zXGmdhPoPa0H8SyP=wCQ=8AToM9OEpM6tshg@mail.gmail.com>
Subject: Re: [yocto] populate_sysroot not found in x86_64 x86_64_ubuntu-20.04 #yocto
To: yocto@lists.yoctoproject.org, umeshyv@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Oct 2024 16:45:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64114

On Thu, 24 Oct 2024 at 18:05, umeshyv via lists.yoctoproject.org
<umeshyv=gmail.com@lists.yoctoproject.org> wrote:
> My understanding is that do_install() will uncompress tgz files in the target once successful. In the recipe I shared in the yocto forum will copy the tgz files to /opt/tools.

It will not do this, and you will end up with compressed .tgz files on
your target device. So you need to delete do_install and SAVEDDIR
assignment, then run 'bitbake -c unpack your-recipe', then go to
${WORKDIR} and inspect where and how they were unpacked under that
directory. Then you can re-write do_install() to copy the actual
content out of ${WORKDIR} into ${D}/opt/tools/.

Also, do not call your recipe 'tools-native' - 'native' suffix has a
special meaning, and should not be used for target recipes.

Alex

