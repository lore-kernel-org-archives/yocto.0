Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85CB1EB64DE
	for <webhook@archiver.kernel.org>; Tue, 10 Sep 2024 11:23:24 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web11.20676.1725967400841288755
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Sep 2024 04:23:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Stidcte6;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53660856a21so3035920e87.2
        for <yocto@lists.yoctoproject.org>; Tue, 10 Sep 2024 04:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725967399; x=1726572199; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qvAe4V/FztjT4Lp/xL5D5sxXWTy+Ep+ho+9C9Y75IFE=;
        b=Stidcte6hyBQHkkmBnXgaaThbHzbE05dPYpEqwpE965IrmG/+N6EEuTpGrAZkxbDUA
         jHQUuK3qmEkM9Lj71U1l7WRa4615c5k2Hx77xdvQz3u46VTOx5UIgtBtNTz+DoO+HZY9
         iorgqs3WmHl/17rd8hqMHb8eCunucDy0VDNg05CaRfpup4kWL/6lB80SWvIJqD3wtB9X
         rf0VIk+D4IzVPoIc+p2m7FE+Yf6GMX+Swu1d180qq+1yBFiyk/HlvCDbTP8TMYyWYChT
         ZHTdnN+XEpEpA0XDrU6Hrcy03hgnTPIemJ4KizXzTpRcxNf6n6CHEBjqwOL58yRU8RJ7
         3uUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725967399; x=1726572199;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qvAe4V/FztjT4Lp/xL5D5sxXWTy+Ep+ho+9C9Y75IFE=;
        b=kT6OmaURZ5fKHIRXWW6pOYWRkUnOPFTNaE5/M98PUyYBRwZ41cD02NJqdw2qXojsje
         AJy/l9mtWhNqXCYRtV069sr++GPb4H1yluhBDGm5DPX1wEYfZ2S5YOobNaYwK1DhN8pO
         uR89ym47awUM3R0YdtX5ov7Q6MGk4u7hnk6GO4nCmZxTSfnqqq8CuN1+9XGVMR8c3f7V
         cvEHlmS3rBzqOrRoDVZwV7UwxA2pRnVlHSBW+QiJV7Eo3ghDXMHvkOvW7yQT6xbxlR0f
         nTyScudHIcYHBwNg7zZcH/P0UFDSKurBeuIievZrEK7Q4UZ/EpaxvOOg0SR6GMmfWOcW
         QL3w==
X-Gm-Message-State: AOJu0Yzfb2lG/rwepGe7oIJpjiB89HlcqbXPwzIMKWLVTJRVOvftC6gT
	6BJOgzgDxPTx30kL8esqGXnP8BVInn1sY1BDGfj3vxGO06l1adUzm0uYbM2pb1xgMn9bK7uif1l
	RniCeyu5J6XrGReSn0Z4kNHf0rdb6GQ==
X-Google-Smtp-Source: AGHT+IFeMdFD9d5zz1LunkSVrE/lvWmmDWncxlY5MnvPgPItjmVt+M1J2zuYO1VKmYfH2fGyVicohKjLOe9Pu7dEX8I=
X-Received: by 2002:a05:6512:68b:b0:530:dab8:7dde with SMTP id
 2adb3069b0e04-536587c9578mr9394418e87.34.1725967398142; Tue, 10 Sep 2024
 04:23:18 -0700 (PDT)
MIME-Version: 1.0
References: <aJGN.1725967005989734232.XVYM@lists.yoctoproject.org>
In-Reply-To: <aJGN.1725967005989734232.XVYM@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 10 Sep 2024 13:23:06 +0200
Message-ID: <CANNYZj_qD7ptzqA_vh6Vh96f8ni-uk+WrG0bhBnRAy4iWAsMZg@mail.gmail.com>
Subject: Re: [yocto] How to import image build name to application recipe?
To: yocto@lists.yoctoproject.org, agv100@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Sep 2024 11:23:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63812

You need to make two slightly different recipes (put common bits into
an .inc), and then install one or the other to the respective images.

Alex

On Tue, 10 Sept 2024 at 13:16, Gennady Abramov via
lists.yoctoproject.org <agv100=gmail.com@lists.yoctoproject.org>
wrote:
>
> Dear community,
>
> I'm trying to build  A+B+Data distro + update distros using RAUC and populate Data partition with default configuration files.
>
> Thus, I want a particular recipe, if "full" image build, install particular default configuration files, and if "update" image build,  not to do that, maintain only symlinks to /data partition.
> I included if ${IMAGE_BASENAME} in application do_install:append(), but this doesn't work!
>
>
>
> do_install:append () {
> # If building full image, install default config to /data/ partition
>    if [ ${IMAGE_BASENAME} = "image-full" ]; then
>          install -Dm 0755 ${WORKDIR}/app.conf ${D}/data/etc/app/app.conf
>    fi
> #in any case, replace default config from distribution to link to /data/etc/
>    rm ${D}/etc/app/app.conf
>    ln -s /data/etc/app/app.conf ${D}/etc/app/app.conf
> }
>
> I included
> export IMAGE_BASENAME = "core-image-full-cmdline" in "image-full.bb", but this still doesn't help.
>
> By replacing "if [ ${IMAGE_BASENAME} " with predefined variable, I found that "if " works well itself, so probably using IMAGE_BASENAME is not correct.
>
> So, probably I should use other variable or initialize it somehow other way.
> I think that is typical scenario, and I missing something obvious, but still cannot find it.
> Any advice?
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63811): https://lists.yoctoproject.org/g/yocto/message/63811
> Mute This Topic: https://lists.yoctoproject.org/mt/108372539/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

