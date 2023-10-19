Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08A8FCDB465
	for <webhook@archiver.kernel.org>; Thu, 19 Oct 2023 10:58:40 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web11.24475.1697713115231011981
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Oct 2023 03:58:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ang1YQyQ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-32d9b507b00so5375251f8f.1
        for <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 03:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1697713114; x=1698317914; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nv3cF9mtGWUQI0QTJmI46AGsCKeTEOj1RIHFOmCgjW8=;
        b=ang1YQyQgoGxu0yxRC8zZyW+hx1w02oNHahLO4lVxYGbEc85prW8qOPLPXY1Af0ENn
         JD5S2fScWqkGrXJZjgqSTtKrKP0t5dkmfv5tXAL0TtLqYG98kdKXk+3XmclWch8bwaIF
         sx2Xmr8BiYaHMWN55X895npq350RDUBhuB9k8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697713114; x=1698317914;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nv3cF9mtGWUQI0QTJmI46AGsCKeTEOj1RIHFOmCgjW8=;
        b=k+SNwETtqatw2LGh8MO/qpZDsdFP37VauFO7uOQcRm7N4trTlE85o6lo8W5j+Ld/QL
         4kju/+9twh7MByvRN250nj4dg8gyaf1RNCP5L4Dv4UsZ42D8Y7twpdA2f+im1NWdVxhh
         Of4ZWEWQCaIGgT+nHYVDZ6KNOmoCr0G7i00uWy46Z1NLhVKURXUxWwbjAv156ZUQrc8C
         w7tezADivys7XowXwI0j7Plq/1mFrhUpE7HCUkq8nrMCPmuBgAs1Q4FfG+0c02YbaJ9f
         pcjbU61aVHeY0kCVEg3/NepWA/b6aBAD4QWZd/rlqYkscDlfwm/tU6xEN0REuNrk8vgN
         ZUDw==
X-Gm-Message-State: AOJu0YyKwcXtIsusM6ec1AIKKos8GMI7HTwNu0g8wn/m9HrG94+zcd3U
	c4CYNCYYlrrN7k4k20kJosWluA==
X-Google-Smtp-Source: AGHT+IHo2f5zqlo/py/MA6000zHaCy5kHUDHCsakpFrwUDBcOnj3sqV4YUVWRKzi+aZiP897hN04wA==
X-Received: by 2002:adf:f982:0:b0:32d:9740:5a27 with SMTP id f2-20020adff982000000b0032d97405a27mr1562498wrr.9.1697713113240;
        Thu, 19 Oct 2023 03:58:33 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:9ec8:2948:ce65:9cfb? ([2001:8b0:aba:5f3c:9ec8:2948:ce65:9cfb])
        by smtp.gmail.com with ESMTPSA id a17-20020a5d5091000000b0032d893d8dc8sm4243683wrt.2.2023.10.19.03.58.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 03:58:32 -0700 (PDT)
Message-ID: <cdb0a528a663f39400db3fb8d4d2d56f2c5d0407.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v2] meta-oe-mirror:
 Use a 2 step job to fetch and verify meta-openembedded mirror.
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: David Pierret <david.pierret@smile.fr>, yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Date: Thu, 19 Oct 2023 11:58:32 +0100
In-Reply-To: <20231018134638.608387-1-david.pierret@smile.fr>
References: <20231018134638.608387-1-david.pierret@smile.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 10:58:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61410

On Wed, 2023-10-18 at 15:46 +0200, David Pierret wrote:
> Inspired from trigger-build and trigger-build-post-trigger
> The branch must be selected on build configuration.
>=20
> Signed-off-by: David Pierret <david.pierret@smile.fr>
> Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
> ---
>  config.json | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)

I fixed a json parsing issue and merged. I also added the autobuilder2
config to support it. A test build is now running here:

https://autobuilder.yoctoproject.org/typhoon/#/builders/156/builds/1

Cheers,

Richard

