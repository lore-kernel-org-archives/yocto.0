Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73DDCCDB482
	for <webhook@archiver.kernel.org>; Thu, 19 Oct 2023 12:24:00 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web10.26282.1697718238799658952
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Oct 2023 05:23:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JsQxi17o;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.182, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2c53c5f7aaaso42301551fa.0
        for <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 05:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1697718237; x=1698323037; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AxpIyZv5lAlF5pGOksZLKu7SCD12IvdolMUx5Ben+kY=;
        b=JsQxi17o4f5QYXES7HyZ2hoQ9JNtr+w2Pcc+RL8Y7OVW9Bci7pwjH08sI+4FpOIVbm
         pfbQtQy+nIQqRQx8Lys4qoxDTv/NHM3RMuQZrdvu0lVCxstBcTIBsGWAz69jDpBQnSc1
         IMpnZCt0z+0FwXD8A1DrlHJITZGmXPLKL2yvA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697718237; x=1698323037;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AxpIyZv5lAlF5pGOksZLKu7SCD12IvdolMUx5Ben+kY=;
        b=VgFmvgJAqKPg5x7hS119gmF2d07dsWfaDT16aAcLdYS+M90MgiZPa1+4PiwFuY4mNV
         LiWnK3r/CMgkCSDttKeIOk5oSCt3pe49myYx/q4aUTIm1gCCxmjoqhky+OV2N1d8ETOm
         Kvl64YzE1zJOXPYsI3YLi5xUnfyHuwz+hBjz6BKzw+Q2K6LQMEOSdfRUFendMfE23Lna
         dYkD3uSjSv62tletL1rJhFJ3uqGOguxA5YHYMb6xcya9tS/N+oAFaJtCEM0bKDBA+HM7
         7LlUHelNy1pUex0fZ79CoDInJradhQ69CQ0/Y5ctx3AC03eBrS+CN9oPZJ4RWEujQV/S
         rBYQ==
X-Gm-Message-State: AOJu0YxdUcQIOUH3j3HG41DgZX9EXZDUmGPbBSxSjbBZvyOyByNiu33x
	PnVd3QIA04zcGFkV+BvxvlqHjg==
X-Google-Smtp-Source: AGHT+IHQ1DmQM/s7Y3pT717YS/JglTUT/N61F7MOmudKaUgVO5VyWaZ+IX1a+Z0quQcpb1nZj6v/vQ==
X-Received: by 2002:a2e:be10:0:b0:2bc:dab2:c7dc with SMTP id z16-20020a2ebe10000000b002bcdab2c7dcmr1521405ljq.47.1697718236693;
        Thu, 19 Oct 2023 05:23:56 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:9ec8:2948:ce65:9cfb? ([2001:8b0:aba:5f3c:9ec8:2948:ce65:9cfb])
        by smtp.gmail.com with ESMTPSA id o24-20020a05600c339800b0040303a9965asm4283606wmp.40.2023.10.19.05.23.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 05:23:56 -0700 (PDT)
Message-ID: <40d39fd5eb9136c764f6a81c67701538e94ad028.camel@linuxfoundation.org>
Subject: Re: [yocto] QA notification for completed autobuilder build
 (yocto-4.3.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexis =?ISO-8859-1?Q?Lothor=E9?= <alexis.lothore@bootlin.com>, 
	Pokybuild User <pokybuild@yoctoproject.org>, yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Date: Thu, 19 Oct 2023 13:23:55 +0100
In-Reply-To: <a97b6ea3-0478-4cb3-a506-ad19ac7a6f86@bootlin.com>
References: 
	<0101018b416d8d29-59a72af7-335c-4677-b485-bc0ec3abd261-000000@us-west-2.amazonses.com>
	 <a97b6ea3-0478-4cb3-a506-ad19ac7a6f86@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 12:24:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61413

On Thu, 2023-10-19 at 10:36 +0200, Alexis Lothor=C3=A9 wrote:
> Hello,
>=20
> On 10/18/23 08:16, Pokybuild User wrote:
> >=20
> >     A build flagged for QA (yocto-4.3.rc1) was completed on the autobui=
lder and is available at:
> >=20
> >=20
> >         https://autobuilder.yocto.io/pub/releases/yocto-4.3.rc1
>=20
> The regression report looks worryingly empty. It has been generated with
> yocto-4.2 as comparison base. When taking a look at yocto-testresults con=
tent
> for it, I only find a few test results (11, while it should be something =
around
> 300). I am not sure yet if we did some mistakes while re-uploading manual=
ly
> missing tests results during the 4.2 cycle, or if tests results are indee=
d
> suffering some issues for release builds (this is repeatable on different=
 4.2.x
> releases).

I'd noticed that too, not sure what happened but it wasn't what I'd
expected. It would be good to understand what went wrong.

> So in the mean time, here is a manual regression report between 4.3_M3 an=
d
> yocto-4.3.rc1:
>=20
> https://pastebin.com/6QbfGstR
>=20
> The report has a "rate limit" applied for noisy regression (patch incomin=
g)

I was thinking about ideas like printing the regressions first, then
the matches. I think Ross has some good feedback about how we can
improve things.

Cheers,

Richard

