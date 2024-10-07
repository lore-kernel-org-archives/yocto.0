Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F2BCFB457
	for <webhook@archiver.kernel.org>; Mon,  7 Oct 2024 19:27:38 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web10.620.1728329251417096052
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Oct 2024 12:27:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JJ1irLLo;
 spf=pass (domain: gmail.com, ip: 209.85.208.176, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2f75c56f16aso49133351fa.0
        for <yocto@lists.yoctoproject.org>; Mon, 07 Oct 2024 12:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728329249; x=1728934049; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Uxphpry8wokN6vxsMY3Ksi/0QCkz4466e8nrVkr9w7o=;
        b=JJ1irLLoTNw6DBaMh/PvzPA8+YoqlwAOosWksAmoQD8txcEnFicIhCKvkx1yki5r5Y
         LqkGdsIrOrbp1bwmnDwxF9stBjExFZmUGqqOb2eJvoaZHKMOJZz+yZNdgvax8Q3u4WGi
         sbZeYBVuXPgCmg/UbkABGdTy8GjnMIHh6YmsFwDNyeg3feaT8kw+X0k0hP6eTNSjLGyu
         KYHM+Kkuse32cPF9kNtPAC3ZZrOPVa52uKQd2wxs3ttomNxbWRTy4h7EgaPAuOJXlxDV
         xurkn1ybXotvIJs8QoiIIkWodhqC6k7Fi3wIA6fx7c0a6sKnH3hEQh6bQKLClgn/UwGk
         3PPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728329249; x=1728934049;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Uxphpry8wokN6vxsMY3Ksi/0QCkz4466e8nrVkr9w7o=;
        b=RgQiWDA/Zl01bEfGBA8I8ctMCrAgFgFPIVCEuwscu5TevE5S4lo/AF6R9o0MaaJhtt
         xnCD1TGe3+TtHI6xhjjz/yXUISpOyJkY3AN1DTz4AsQMvaw+q68PLfWaBX0lamFv+cqr
         T5/cy9rXylX9RH6VX5B0WpTenA5U7kWuDmIuxUFWBDogRIhy5C2zNFwpI4Dz2UGs/B+6
         N6LNmRHxVuKvv8qbgCJMAtMpFON7gFRlZo9LZZd6mWrsxvjuyjltgEN1HVhrOvjr95Ii
         7Z0wyQlfbzbvnscPiuXv1xCJFgLR0FQRvYa/9iwvMGZGzJqmtkvgsecZkA4S//1ZTFkq
         rNZw==
X-Gm-Message-State: AOJu0YztWCoAF3JTTb4arZDW0GLyNXT2j4Mn7NwoWI81ptKGwzDXllHa
	rQqrrJ0bDa7M0BEP6hRNjQ0Ag3A1Xx9i721Tyrs8bqieSVz44j3BmRrNPCzoiqSO95D0eP718sg
	PEKjoyMpith6A/x5uekl3ZIRVp0k=
X-Google-Smtp-Source: AGHT+IHbDfQrXYdl9R+HIOTSZggfKXEBODMBZuPBCREkyvqpEo5gsHQJFvvMcFXFGl3GFFRhdSZhbdCYrMxX8Bm+ejg=
X-Received: by 2002:a05:6512:b83:b0:539:8fcd:524 with SMTP id
 2adb3069b0e04-539ab88a596mr6541884e87.30.1728329249011; Mon, 07 Oct 2024
 12:27:29 -0700 (PDT)
MIME-Version: 1.0
References: <fvqD.1728277436421735973.T2Af@lists.yoctoproject.org>
 <CANNYZj_=Yoa0LxU-OqfJQA+D7MyOqPVZ7YZ0OFcmBZ5m93OiGw@mail.gmail.com> <CALT56yM+rQR1L0VtyBdupurv2TokWLJ7sVXu3YjpTfXJt0ruVQ@mail.gmail.com>
In-Reply-To: <CALT56yM+rQR1L0VtyBdupurv2TokWLJ7sVXu3YjpTfXJt0ruVQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 7 Oct 2024 21:27:16 +0200
Message-ID: <CANNYZj-rtd=7xCcAkLM7C=CSmLPS5JqEYPhQcdpLQNtx-ZPPpQ@mail.gmail.com>
Subject: Re: [yocto] Yocto Binary Distro
To: Dmitry Baryshkov <dbaryshkov@gmail.com>
Cc: yocto@lists.yoctoproject.org, aleksandar.nikolic010@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Oct 2024 19:27:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63949

On Mon, 7 Oct 2024 at 21:07, Dmitry Baryshkov <dbaryshkov@gmail.com> wrote:
> > If you ask me, pulling pre-built packages into a yocto image is in
> > itself a horrible hack that goes against yocto philosophy, and I would
> > not want yocto to help that or support it in any way.

...

> So, as much as I like OE, if you are thinking about a binary distro, I
> think you'd better use some existing purposely binary distro (like
> Debian, Armbian or something from the RPM world). If you can afford
> having package management on the device, it's not tightly resource
> constrained. And thus there is no need to go Yocto way.

I think we're talking about two different things here, so just in case
I'd clarify the difference. Point two is about using bitbake to
somehow pull a big pile of prebuilt binary packages from the net and
assemble a target image out of them. I don't like that at all.

On the other hand having a yocto-based binary distro, e.g. a target
image with package management which feels like the traditional linux
distributions is fine with me. I'm not particularly interested in it,
and I'm also not sure it can work well, but people are welcome to work
on it if they find it interesting or useful.

Alex

