Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1099FEB64DD
	for <webhook@archiver.kernel.org>; Sat,  5 Aug 2023 08:39:50 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web11.2669.1691224787397859365
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Aug 2023 01:39:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=APulg1sZ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-313e742a787so1675856f8f.1
        for <yocto@lists.yoctoproject.org>; Sat, 05 Aug 2023 01:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1691224785; x=1691829585;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uabbORER9jjpR8nmeE13EFwR1NnxHRjKO2Mz4+XduXU=;
        b=APulg1sZReHXsA6OBDeAf43VtBWJnW6rog89QJFtqV+Seg7AG82BbsbikBssntheo0
         9RaObXORfI7U5jHtoY3OEEPCIsDCUO60RYHMgqFbvJD/WCmCh5pbzGz2wxtC0AN6gpSn
         Q/9w5Nff+CoXqQrAZB20r3YQQeJ2umpr9+sCs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691224785; x=1691829585;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uabbORER9jjpR8nmeE13EFwR1NnxHRjKO2Mz4+XduXU=;
        b=WvvE2p0R7It9geyyVjmz/g9vHgtr+JCDRF5iV9U9ECAMK+jfA68lLj1rt+t5BZh2fN
         hKOe59IDzwxb5UfOphArqADdWCkRsxBeMwhAu01ens802zcnRWiacmTyu4tmNLHSPVCg
         SPWqBKPqsWC3YFQJkmv+tsG4ZCmPamFPzM75dUScioVWmKJ3VGphRKcXshK5d64yUTSm
         F7f+0eTQTCf7+g+daRYcoaDPA+o75ZzM/5lI1isFY7f/rlbX87PLaNOOSs9B8JdV7pNa
         YzDxcJfcVciLF5YCSHMBGUGL2ckqFtBLF8jBzU3RWVJkzB5Cy3H+DzCc/HyL1y93LKtb
         J2lg==
X-Gm-Message-State: AOJu0Yxv7XTF/QQk2kYjhYAVc9z6qXhxhDjtzRDch9A0tfFQIRvIG+av
	6KLNdo5INql9VOLsJjB+WN9G5w==
X-Google-Smtp-Source: AGHT+IEsL0uqRMtLxgKuHZzTzPKCmfIPwGIDp22w2W8v2nrM/vpTqjw/kYIEyOqQy5BjvUZg7k1oSA==
X-Received: by 2002:adf:e310:0:b0:314:1e15:f30b with SMTP id b16-20020adfe310000000b003141e15f30bmr1166587wrj.35.1691224785516;
        Sat, 05 Aug 2023 01:39:45 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:1adf:6477:9da8:f35a? ([2001:8b0:aba:5f3c:1adf:6477:9da8:f35a])
        by smtp.gmail.com with ESMTPSA id y16-20020adff150000000b0031762e89f94sm4532672wro.117.2023.08.05.01.39.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Aug 2023 01:39:45 -0700 (PDT)
Message-ID: <eb41077b82994ebcce0978cfc7d1266a7be533d1.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-3.1.27.rc2)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org, Steve Sakoman <steve@sakoman.com>
Date: Sat, 05 Aug 2023 09:39:44 +0100
In-Reply-To: <01010189c3a931b3-c5f1811c-d9e0-44fe-8866-ee1f73ac5306-000000@us-west-2.amazonses.com>
References: 
	<01010189c3a931b3-c5f1811c-d9e0-44fe-8866-ee1f73ac5306-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 05 Aug 2023 08:39:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60714

On Sat, 2023-08-05 at 03:06 +0000, Pokybuild User wrote:
> A build flagged for QA (yocto-3.1.27.rc2) was completed on the autobuilde=
r and is available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-3.1.27.rc2
>=20
>=20
> Build hash information:=20
>=20
> bitbake: b60c7085ec370473bea9b3b4b65826a17638837f
> meta-agl: 583f80f8e9d085a98f1cbab3a9d8082503ab739e
> meta-arm: b1fe8443a7a72c65fa0fc3371f607c6671b3a882
> meta-aws: d72bb6b38de88caab73047feba16092ca38959c1
> meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
> meta-intel: 488af577a3f21f038c551612bb0af077fa2b743d
> meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
> meta-openembedded: b8b0b06821d4d4df0cce4f07fa31a8ca1dd38f46
> meta-virtualization: 521459bf588435e847d981657485bae8d6f003b5
> oecore: 6dd64ca2d726d0b222a7608c65eb0a20454c3f99
> poky: 32da5ee9519119a16392acba29f9df4720a55c0f
>=20
>=20
>=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org

Counts look much better with those failures fixed!

https://autobuilder.yocto.io/pub/releases/yocto-3.1.27.rc2/testresults/test=
result-report.txt

I'd note you probably could do with the recent ltp module dependency
fix and the increased timeout to make the ltp results consistent. That
can wait until the next round though.

Cheers,

Richard




