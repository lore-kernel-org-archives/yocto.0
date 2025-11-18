Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E78DCEDD9B
	for <webhook@archiver.kernel.org>; Tue, 18 Nov 2025 14:30:11 +0000 (UTC)
Received: from mail-yx1-f46.google.com (mail-yx1-f46.google.com [74.125.224.46])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.13769.1763476202880026573
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Nov 2025 06:30:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=aZqnPZ2a;
 spf=softfail (domain: sakoman.com, ip: 74.125.224.46, mailfrom: steve@sakoman.com)
Received: by mail-yx1-f46.google.com with SMTP id 956f58d0204a3-640c9c85255so5847972d50.3
        for <yocto@lists.yoctoproject.org>; Tue, 18 Nov 2025 06:30:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1763476202; x=1764081002; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S4CXQnl30O2lA+CXtrrfH17zP+P0R5qSwXAyhspH2Ik=;
        b=aZqnPZ2aLQzDNybmVC7xKwo/NiPD2QSCaNONS4a7xgA1wXdwwA8368KJhO8Isy0DJT
         u3j23HhbLuIw7n193VrQu+OKPp72Ymq9rSrCnWAm4BtBkAIAi+pJuROYkKamqAAS6NLp
         5UeeC9szX5jHzU/EzKji9tbFCfLeFicGau9KDctQK1abdUSDvYNVx5Ripx9CiUoG+eSR
         OUrwQuB0IwDilKTCoxSPDAYTpJiE0TAMMLvC8iNg3IJhSAVsSp9x++dVlSNuF4dB1CWe
         CdzeflciYymbsjbcBLqPlfFX359UdouXjiuagQoUkORwIphTU+npvLAxJN6FGyBFxIlQ
         wXrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763476202; x=1764081002;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=S4CXQnl30O2lA+CXtrrfH17zP+P0R5qSwXAyhspH2Ik=;
        b=dfNNZljClbAz6//LqwFq/YtS56sBBZgxVrlEXMRnArfhUibjXqaTnPp6DA05VkbGaO
         fLBi9peksu9zucNeiP6i2ob17TvHh8f6MRp5vSBr8E0jllDoZ9Wkn9aqbYSZIuo1MtTX
         FmFn9G2NYcz7xaj03GfqqHKK7CqT6jZq+8C9FPC6AXZS/I7cfvDiM7AQwJJzXd7zS/ya
         ibIps9H+qfhrLlBW+il14rcyx9lgxJa1KcPcCdEDufkgEmYaCZtVYmoShL6mn1Zz8Oks
         mUWsQbS/sjX0vPNsbwz4n9yEMMOeI2UEqJhkxGfoOBWgmnb4RJVqWM+6MNPfHG9/fm6f
         r8+A==
X-Gm-Message-State: AOJu0YxRrA89Nuwkf49NCwp9w9TuLr28m4jZjhG0H8sAy5r7xc6yYCK6
	QHTwGb96icvPLEpN2FMhusLqRbY50jJsO2CZ+rRihtiE3s/ThPR078pQvSFf0vMnD0d0xhrNcX3
	fGfs8i2VT0Ai0TxBIQKsKZs8Az1vklTYI3hKG0i9inQ==
X-Gm-Gg: ASbGnculErIFhWiX0KjIBJz6eEZWNuptmtCWOZCKK+kSdb2L8Y/KNRdzZTzwfGiXtHN
	CW25WY45vNop7KTXU6AJRdg3NeV7X96Z+1FcqN2S5nU17pGuA7zT7gzbGPmr12Ev8UQo2GU23GG
	LfZbL747gtlM5kqjSX10IxP8QieMQObxkLQ9HFwD1AgIQRPuG7/4jthS3ckXq8cnjTJiyq1faSm
	kQkMsn7TvgCYTnZdaxBs0WNG0HiGOMVdJBQkCQXgZhVbc3arVWIPptvvOn0X468U3e5vsNUBsxZ
	iYdZ0NY8cR4ctTu9BF/mHASy4L8=
X-Google-Smtp-Source: AGHT+IG55taIlrPUAFRTUWblZrBisYSoT8b3SLBxYictDgMLhXUcLG8I0iaW+mkp+ql8pt3+tXXlBxpMr2uMVVm0+oE=
X-Received: by 2002:a53:d004:0:b0:63f:6bbc:ebdf with SMTP id
 956f58d0204a3-641e7640539mr10976661d50.43.1763476201828; Tue, 18 Nov 2025
 06:30:01 -0800 (PST)
MIME-Version: 1.0
References: <0101019a968062c8-61ef3fcd-751e-403d-a784-298837785707-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019a968062c8-61ef3fcd-751e-403d-a784-298837785707-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Tue, 18 Nov 2025 06:29:51 -0800
X-Gm-Features: AWmQ_bnm7WjbMdTxhiQVyi9QiTGh5n9Nmue-pCxHdSh0U6ibTeI1NlChYyRO-RI
Message-ID: <CAOSpxdaq6Py4CMijU1asOTxjmRtMVGKWQk=Q5m8zUaAnpv=v9A@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.0.14.rc3)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Nov 2025 14:30:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66025

This was an "all green" build, so OK to proceed with QA

Steve

On Tue, Nov 18, 2025 at 2:26=E2=80=AFAM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-5.0.14.rc3) was completed on the autobu=
ilder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.0.14.rc3
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/2738
>
>     Build hash information:
>
>     bitbake: 8dcf084522b9c66a6639b5f117f554fde9b6b45a
> meta-agl: 8a94f23d8d81c02c74268ea18c35469c47a94b5a
> meta-arm: a81c19915b5b9e71ed394032e9a50fd06919e1cd
> meta-aws: fe840436ba483533afa9b34aa2d1a64e7e9a3a88
> meta-clang: 731488911f55ebfe746068512b426351192f82f2
> meta-intel: 6fc37057c7f0293a2345e303588901889df8b937
> meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
> meta-openembedded: f1f248262d662315159ee96c604f97415d1dbe6a
> meta-virtualization: af1db2042caf8021d767dce1b26c08b59b96f3d1
> meta-yocto: bf6aea52c4009e08f26565c33ce432eec7cfb090
> oecore: 471adaa5f77fa3b974eab60a2ded48e360042828
> poky: 7e8674996b0164b07e56bc066d0fba790e627061
> yocto-docs: a8687e4bb2e822670b6ad110613a12fa02943d3d
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#620): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/620
> Mute This Topic: https://lists.yoctoproject.org/mt/116353983/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

