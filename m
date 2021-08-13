Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web08.43276.1628891992530062650
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Aug 2021 14:59:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=MoWscLLd;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.47, mailfrom: steve@sakoman.com)
Received: by mail-wm1-f47.google.com with SMTP id f10so4613931wml.2
        for <yocto@lists.yoctoproject.org>; Fri, 13 Aug 2021 14:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kBdAWXktAOpY0iWRGu5p0W+BHbCcBR/R+dB8zIj+9UE=;
        b=MoWscLLdvlUnZ/BX+EaPlq1I559sDmGDfDzhcuy7IQ9OE1oTn4gGy0XeeG4nwR+rIQ
         89rkW9WnCgT2YrelthR+hvTACaoxpOrm1HOFt9H6tjvaB0JSHGqUXT2m2pJQJvVlVYKH
         qZsXxnKWj1EJsuJnLr2TbES9C75ofadTJxk1zRavWElfxuz/6qJmo5I/kTTHThg/mVaX
         trTcn8aYZGBJ7tCclqs9OpknEkuDgF9/IsTDP3czLTDmKcPNcQYATU1/LpDsazvF56ox
         LLpVcEhMYeHPEGvMFgbJhUrSV9hY5hgkUcGB6ICSioQUGSYQVzOKVx5jEdKQNiMnWSBU
         LA0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kBdAWXktAOpY0iWRGu5p0W+BHbCcBR/R+dB8zIj+9UE=;
        b=LoOogtp4BxNfvzonmn1I0AzKq4X56tsaq5QcJjGXoMutPDdkwOr8DuvQT8eugD2xx+
         VFR3EFzdIIR3L8jTgLUpCgnWhJ9NLzOqIhsYRsZ5DGr284rCelPjVoOpReSqXpfcYEoK
         O1JqBHUNFNDMrhR81FiseyNZn0QqFORBFsY/Q75V3ORQjmS8dOmjkDXxOzBAGha9YEpj
         j43zJlmBuorRSVgj8qc/hG2UGvbv4HoXTQou+b7iIVULTw173R/FBvBJqHku6z0k3IIS
         6RneVw1kKrpuNARFEYYM8+gzDHv09yq3/JBROkTOU+9CvHU7TqUlEV9vXUxm9lRslAMs
         Byqw==
X-Gm-Message-State: AOAM530+ZdkPzgVnT2bMsBCAM9V+XzapmgjXb9ruCzZ4djWghrWeBs8y
	gj3CncB1MPcQW0Q+juNh7dq3eI6g/4zrwVuOqd2dgw==
X-Google-Smtp-Source: ABdhPJyuTXLjY+/nHYeD3V3dB7zbmjVN6JP/+v9p5yLKZrAdr3J2RFHAeq7e30XHjj5R1/XNsg/FQNGwGrCXRoP/diI=
X-Received: by 2002:a7b:cc98:: with SMTP id p24mr4630570wma.118.1628891990542;
 Fri, 13 Aug 2021 14:59:50 -0700 (PDT)
MIME-Version: 1.0
References: <d99fc23e-41bc-46ef-a61b-4e6d45fab47d@www.fastmail.com>
In-Reply-To: <d99fc23e-41bc-46ef-a61b-4e6d45fab47d@www.fastmail.com>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Fri, 13 Aug 2021 11:59:39 -1000
Message-ID: <CAOSpxdZkLtjttE=q_uvq=0Tgm5H4KQNW=dvHE5J1fcH0EWg3AQ@mail.gmail.com>
Subject: Re: [yocto] Cannot build yocto anymore after updating all layers to current dunfell branch tips
To: Manuel Wagesreither <ManWag@fastmail.fm>
Cc: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, Aug 13, 2021 at 11:29 AM Manuel Wagesreither <ManWag@fastmail.fm> wrote:
>
> Hello all,
>
> I updated the layers of my project to the current dunfell branch tips. See here: https://gitlab.com/manuel_wagesreither/bora-proj/-/commit/de631634d7556987d2551d0cedca8f67530bc78d
>
> Since then, the build is failing with the following message:
> ```
> ERROR: ParseError at /home/manuel/bora-proj/meta-openembedded/meta-oe/conf/layer.conf:104: unparsed line: 'DEFAULT_TEST_SUITES:pn-meta-oe-ptest-image = " ${PTESTTESTSUITE}"'
> ```
>
> Indeed this line, and even more the one after look strange.
> https://github.com/openembedded/meta-openembedded/blob/master/meta-oe/conf/layer.conf#L104

Note that you are using the master branch of meta-oe              ^^^^^^^^

If you use the dunfell branch you won't have this issue.

Steve

> ```
> DEFAULT_TEST_SUITES:pn-meta-oe-ptest-image = " ${PTESTTESTSUITE}"
>
> NON_MULTILIB_RECIPES:append = " crash"
> ```
>
> When I replace the : with _, things seem to work. I can't make sense of that. Did the syntax change? If so, why doesn't bitbake understand the new syntax? I thought bitbake is included in one of the layers.
>
> Thanks, Regards,
> Manuel
>
> 
>
