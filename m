Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web11.5469.1618553712281390225
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Apr 2021 23:15:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gheBfE/i;
 spf=pass (domain: gmail.com, ip: 209.85.222.173, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id x11so27778273qkp.11
        for <yocto@lists.yoctoproject.org>; Thu, 15 Apr 2021 23:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VnylRbYxpYXLjNvtyl4k8jb2ymd++2Gq/zQLcARNZ0o=;
        b=gheBfE/iUs/+7kWbw1bXGK80/VAXQJm1y6hr2Qwh33zqE59usi3Vl8zhsvKrR0LGol
         /sW6snNSXgnXH9U+HwCHvPnTh6xs8VL84t3Tc0X04WxePy280iJ9TvivUGCSB4JGcSO6
         8He8VnruxFE5obNXkMmO6uj9zcc3rx3hpWeW7OcyBJmcu3zRWx4Sg2vTbZZdZa0gEFrh
         5uOVSaQVqpehIPOqyjp/3wq25bqrG58GxTHANeYvzC394RLybepyyw6T86FNE0UhucD4
         Z+QYNw8P8MQFE+NJ0maSn95aBsynbOb6+dRnVpVSImNP6iDrqfDqvsqbbwLB/fv12wGG
         PPVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VnylRbYxpYXLjNvtyl4k8jb2ymd++2Gq/zQLcARNZ0o=;
        b=XUQ1OVqerJhJrxc1tCJ3+5jGzUwo6jDu7L9LhwAO0Z3Cp3FghsYYmsiSQ9CMLwXUaP
         l2pPZGKmBW8oXfIOnT9vGznV4yUuLyhbcWBFICsGJwEmDBETEaL7ui9Zs4ZMuuYjKI3t
         1H1oUcE36MYQ0BaQN00ar41BuWrqJX+BHjs6fOIIVt+JqlhQgW3ZCgPFl+upJrZ2V0dF
         Fn0uVIWvnowXd2cQ5vR8RpN+gxul0Pz6WYNgnIXLYOS8ZolA2pECnfamd7uJwpM2VHcR
         9NdAWGIMnu8Bag7hEa68cGpERaOf4m7dSV4cSB8e3KcBe2Xya/FlEpjt+uFel8VqVQLq
         nQ0A==
X-Gm-Message-State: AOAM5333RKkjM3Xlt/bb3PIMG35G36I1YOMPXGqtsHo0Uni5flJYvYca
	aV9zHcz0ImBDVTukzbuHSKiDdgdA9sDIVe47wh0=
X-Google-Smtp-Source: ABdhPJwDtCJ3GZpnYvcA1c3eibK7Khmx07C1u+E5d3h6fJ+MatqAJ/nHRuxC5A30acodyyDO4vsVNBJOyG9dipsHyvY=
X-Received: by 2002:a37:9ec9:: with SMTP id h192mr7262332qke.119.1618553711390;
 Thu, 15 Apr 2021 23:15:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAOpumBmdt3-kRC4NJ1L1kghWMng_kWZ8URxOaoqWWCmA2Zcwuw@mail.gmail.com>
 <12412.1618553475023837040@lists.yoctoproject.org>
In-Reply-To: <12412.1618553475023837040@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 15 Apr 2021 23:14:44 -0700
Message-ID: <CAMKF1sp3zM7HenbQdotAGeeddOL8M=dRWQbnFpFgPjsOMw5nSg@mail.gmail.com>
Subject: Re: [yocto] Building image from Root
To: Murugesh M <murugesh.pappu@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

try adding

INHERIT += "rm_work"

to local.conf and see if that helps

On Thu, Apr 15, 2021 at 11:11 PM Murugesh M <murugesh.pappu@gmail.com> wrote:
>
> I had proceeded the Build image process with Home directory and got stuck with low disk space.
> Now, the build image process is stopped almost near to last stage.
>
> Please provide me any suggestion to come out of this problem.
> 
>
