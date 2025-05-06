Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A59A4C3ABAC
	for <webhook@archiver.kernel.org>; Tue,  6 May 2025 14:41:05 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.web10.77458.1746542457197271415
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 May 2025 07:40:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OkHrUFlv;
 spf=pass (domain: gmail.com, ip: 209.85.219.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6f4e3618437so66726206d6.1
        for <yocto@lists.yoctoproject.org>; Tue, 06 May 2025 07:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746542456; x=1747147256; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5v37X8IgwwpeBkNsnaQ490sR3UhVwzhJ07QlnAuPUec=;
        b=OkHrUFlvcsJNwEEFsJmENk7a92q3M9oMTtIp/4zFiHbAj2/ksKhvGFNr20/lforS6N
         FdoUbbwV9PLnEQ4rEfbXz4y6R8e5ndX4eYeUpqHhJmmEa4r9s1jEg3SgvIVOpXezN0kU
         pNpMfY387o3TdAjcS0CL+6Vc+uNxgBTKu+m11qJdofTcRwqmjrM8MueKydJWuR2FhUCx
         0XrSxY5vm1E5vo9yiOivzANHoh8QMCeSSqvvrf7ZY3ZOH7WliOiDv0lfIbIjhWRo0B2h
         ik8/sqiyJCI+exF6AYfLhx51h7dcNFGVLAODhzZVY/bOGOmsFASIJV4sXxrwYteQ3lNU
         1gmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746542456; x=1747147256;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5v37X8IgwwpeBkNsnaQ490sR3UhVwzhJ07QlnAuPUec=;
        b=RxPGkszBNIEN7QoTHjNacxr1I+St0McMQumgilUp7q/WcZW6OKoTMuYy+6TsgV1Oux
         bZag9dOEGW2bnodeOW6PN8u9F8lBDXZrMT87rISilzpKp1U2Teo6kRoUNdbRx22V8EZf
         nrdIU1RBd17bdnBSeg4ESPAWSU5otcFxhtFgaKTuZ9HjShGBZJ3XBhYH/BKP6lw+fGpv
         R0ohXPEUyQU3MOFSoBnOZDzp8SwcL74WY49kXf7kEk+WQEu0FbpPpkOpgqE+ptTfplyy
         jcOyN6br+thgzWpmd/SXXoqewFA4Nr6981H7O5GFgwrXjOgIi8PyEL9n47G2/3aqHgDB
         vUVw==
X-Gm-Message-State: AOJu0Yyo0PD97yUcJp4QvinS8f3ITrlvXbtHzmFQNt3sRW/3oto2cAjJ
	YXWAAbNpN6UJc5BgkVw83Tg3K+NKc/ydwJdJUnOt9TWWkF7fGZARQFwzUrOD6DpqrCm4sxrlV1h
	lzedlQd9zvxjamnV25W1ZHVCpPXpZSg==
X-Gm-Gg: ASbGncvrgGwiQ+CWEzHwcmu/v3h9BVanYu22Rey7VEiF/fi6jUyx5/3I6uTsiT3kXHN
	qYkRvTDP+U2f1KIjAOmh6KAQj3FUPFTzWCaZWsQlRNvz1jljPeIEeckWGsgW9Qt4xBzT66dSFvW
	mtCuux7pPSLUNJQtSvU/SW178=
X-Google-Smtp-Source: AGHT+IELTbDfLzsAZUEj2jMPqpxPVTBG60geHbwb88T2tPLBuT2OQD3AF0gn0thEOkJCJZICLNfmhXesOoakCpi4XtE=
X-Received: by 2002:a05:6214:62c:b0:6f5:10b5:cd2d with SMTP id
 6a1803df08f44-6f528c3ec38mr195222806d6.7.1746542456275; Tue, 06 May 2025
 07:40:56 -0700 (PDT)
MIME-Version: 1.0
References: <BE1P281MB19077BC8D4D9AF1D12514B13E989A@BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM>
In-Reply-To: <BE1P281MB19077BC8D4D9AF1D12514B13E989A@BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 6 May 2025 16:40:43 +0200
X-Gm-Features: ATxdqUEcK1sRKeuMozKZByY2noVSRLVpfQxeu2qyMBsHbRix3p7HqPL15pHXepY
Message-ID: <CANNYZj_j+qkvJO0Msd7dQ+1SKtOA7PRCj4CGvFEqa3Gm-io-tw@mail.gmail.com>
Subject: Re: [yocto] Install externally built .ipk packages during image generation
To: yocto@lists.yoctoproject.org, matthias.neubauer@sick.de
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 May 2025 14:41:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65286

On Tue, 6 May 2025 at 16:31, Matthias Neubauer via
lists.yoctoproject.org
<matthias.neubauer=sick.de@lists.yoctoproject.org> wrote:
> Is there also workflow supported such that
>
> * team A uses the SDK to develop an application and package it as a binary .ipk package
> * team B consumes the binary .ipk package to integrate it into an image during *build time*

It's not impossible but it is strongly discouraged, and I'm very
reluctant to give you tips.

The recommended way is to write a recipe for the application that
fetches the source and builds it, just like any other item that goes
into an image.

Alex

