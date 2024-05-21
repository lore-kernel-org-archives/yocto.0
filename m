Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE563C25B75
	for <webhook@archiver.kernel.org>; Tue, 21 May 2024 09:56:33 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web10.15942.1716285383455549421
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 May 2024 02:56:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jE6pW1YB;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-51f71e4970bso6167441e87.2
        for <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 02:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716285381; x=1716890181; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=54e02H5WpxBvmMwgCXQJaUkOyXoECP0ZNb/tTKy/D60=;
        b=jE6pW1YBR/C5/kSR0oiPmzfXuTYd0ERe9EMQbHtjTHp91UZT/8zsVYMI5BUMaksv+y
         ZofiBGGLafLihBaV/SSqsgU8C7jOp9Di8N4P9yBJYyoV0b/YhRlQKChWV/sjddVkEZPh
         W8WrJHV1WqW2BuyV5aQqA0iSpRFDQw+80JtmDbc1WNidlQTTR+xKuYjVZvzk3pYr9QQW
         R1ukIyLFaKusLz90j+Va82y9FebAjOd8CsU/4CATrMVGaadzxaW5GGoUY331cqAWhosK
         EpuJ/hTP3ud2gSc9e5WlAfeFuoriBNn/mzyV8AsBLdaKHVeFjZvXbSOVxn8Sg3r3Pata
         xDLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716285381; x=1716890181;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=54e02H5WpxBvmMwgCXQJaUkOyXoECP0ZNb/tTKy/D60=;
        b=Ouug0oo/yeagt389cvMzBXRgz8FNFmyGXLSbG+TmVrm+OG/sEvybTGgMRfza1WFYx8
         NuGoDe04j7lYDJIjcpqPkFuXOPv3+i+1bAYk+ReFyUZTyCDM+tob8zLxEaMw79z5Jn/k
         JLd5KN/dKWCz4AEc5JYb6kygcreFKA7apRFsYcfwtKT5E+vZOb3y2nExWg/pYz969hza
         gVuLRmjySjuDub7qDcQparGfyFOOjh8DlUKhd4QH8mlo9xr+CfyqUh5IWKoKT6kYyRlc
         WQeOz3bcTiXGWUfyK16XWdvYkQBYT199XPisMK3A7uZRMx8cFoUTqw/33yav4oO+LvyZ
         djeQ==
X-Gm-Message-State: AOJu0Yz61e7051SRGK6kUsBjt3plsSP3hgT4Hwm17puPp8A0KOJbC9yh
	yTjWxdU5ooI4TbFfsC1N/8p+SnHo4S6NwjH/Z6o0u6zXimeYSZejXQ35AMCae7ZzBRAVjPDWi5p
	NGNbs62qiRIf84Xd014mGxIHhv4xo8w==
X-Google-Smtp-Source: AGHT+IHdtDgpy18PLLD10zgw6Qzpxqm1Q7PU3MLQEm5giYulsYFLNZwl4qT2CGVETEhcfoQKJqZWQaz9tAmDFUVQyHg=
X-Received: by 2002:ac2:4193:0:b0:521:e967:4e77 with SMTP id
 2adb3069b0e04-5220fc7c267mr25667069e87.28.1716285381098; Tue, 21 May 2024
 02:56:21 -0700 (PDT)
MIME-Version: 1.0
References: <lsRR.1716033932903532821.n2gC@lists.yoctoproject.org>
In-Reply-To: <lsRR.1716033932903532821.n2gC@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 21 May 2024 11:56:09 +0200
Message-ID: <CANNYZj8_mHfpn_ngONnPW9tUQmZ_T3oJX-w=bpHC-CbiijSaCw@mail.gmail.com>
Subject: Re: [yocto] meta-readonly-rootfs-overlay and #scarthgap
To: yocto@lists.yoctoproject.org, chiefsleepyeye@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 09:56:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63147

Please tell us where that layer is hosted. There's no guarantee that
its maintainer reads this list or is going to see your question.

Also do introduce yourself; asking questions anonymously is not polite
and lessens your chances of anyone reacting.

Alex

On Sat, 18 May 2024 at 14:05, Mike via lists.yoctoproject.org
<chiefsleepyeye=gmail.com@lists.yoctoproject.org> wrote:
>
> Is meta-readonly-rootfs-overlay going to be made available for the "scarthgap" branch or do I need to fix up compatible from the "master" branch version to use it?  Thanks for any guidance.
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63136): https://lists.yoctoproject.org/g/yocto/message/63136
> Mute This Topic: https://lists.yoctoproject.org/mt/106169889/1686489
> Mute #scarthgap:https://lists.yoctoproject.org/g/yocto/mutehashtag/scarthgap
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

