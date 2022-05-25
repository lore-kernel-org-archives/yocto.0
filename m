Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05A3DC433EF
	for <webhook@archiver.kernel.org>; Wed, 25 May 2022 15:28:37 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web10.8252.1653492510594454360
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 May 2022 08:28:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=eAn4xY2u;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id
 o29-20020a05600c511d00b00397697f172dso1275151wms.0
        for <yocto@lists.yoctoproject.org>;
 Wed, 25 May 2022 08:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=jGANkywL5W5l9dnQrncsFsIYSzUb5GdGvB4uRPh5/Lo=;
        b=eAn4xY2unQmhnAWfMwqhf6ARWQxYcXc3kVsoqc9/WklQzpMfGLbLHbiRFPOFyDl7iK
         CW/GgryRirEgx8JDqVmdkl8cY51yrRWE4gwU/Mz7qyBtuEyAfELZja0ijNbpnpHFJhNc
         op0FtOX89zdtrhp3pzkfddUPXtwVrzrRaU+ZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=jGANkywL5W5l9dnQrncsFsIYSzUb5GdGvB4uRPh5/Lo=;
        b=fSLhNxJ643ect/OtQeDNJOs8VNlNWPSok542yxopudoCLnGi5xiQXD3cushAC4nF7s
         R+6jS88VGzRKhI8tagybnU9g7TpXfgP2mdnQrkC5d8HQUa0n3R7mcgE5RoDHb6Eiewyu
         FmFSwkIu4o1h921REGRm1lxOXSoSaEtUVD1fX+F6ufY2eYagDPc4+Gdpae4opZpqE76f
         lknD7VvK7Wo267lG9Ix97K+RVtYwkNRbIOKxVe0gBm/yIgU5k1iP/EaFUY276HleHKG6
         89BtKysj884/hSvcAPQhZXdSpWygZofFqT4VHndPl+rJ9rf7GWFWYO38Esh4/98uHKmp
         hMvA==
X-Gm-Message-State: AOAM532TggyCG7/4NIp0G+raZ0PY+S7aIj7nGYwQSN4wsfVDs7fVzoKC
	0BOV+i27ZnuTmOwTPl90FrgX9w==
X-Google-Smtp-Source: 
 ABdhPJzHNvwoKcuwZ8dOqanXukUlJ76epX7WJU4KXXwT+tHFTvwZwaO6T7yTEIoyXN6D17ZUyIkPGg==
X-Received: by 2002:a1c:f40a:0:b0:397:306b:caec with SMTP id
 z10-20020a1cf40a000000b00397306bcaecmr8771010wma.22.1653492508955;
        Wed, 25 May 2022 08:28:28 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:5808:e02b:90d6:3f52?
 ([2001:8b0:aba:5f3c:5808:e02b:90d6:3f52])
        by smtp.gmail.com with ESMTPSA id
 ay27-20020a05600c1e1b00b003942a244edfsm2807771wmb.36.2022.05.25.08.28.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 May 2022 08:28:28 -0700 (PDT)
Message-ID: 
 <47cf2e772e1a459c7567ed29069741787bdab8b0.camel@linuxfoundation.org>
Subject: Re: [yocto] CVE metrics tracking from the autobuilder
From: richard.purdie@linuxfoundation.org
To: "Mittal, Anuj" <anuj.mittal@intel.com>, "steve@sakoman.com"
	 <steve@sakoman.com>, "ross.burton@arm.com" <ross.burton@arm.com>,
	"marta.rybczynska@huawei.com"
	 <marta.rybczynska@huawei.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Date: Wed, 25 May 2022 16:28:27 +0100
In-Reply-To: <28af71230f50b57e01757b55befd9686595c8d33.camel@intel.com>
References: 
	<839fb1eb42b9da12380051c5b27dba90f167e015.camel@linuxfoundation.org>
	 <28af71230f50b57e01757b55befd9686595c8d33.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.0-1ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 May 2022 15:28:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57187

Hi Anuj,

On Wed, 2022-05-25 at 14:38 +0000, Mittal, Anuj wrote:
> On Wed, 2022-05-25 at 14:30 +0100, Richard Purdie wrote:
>=20
> >=20
> > This is working for dunfell/kirkstone/master. It is enabled for
> > honister but doesn't work since the json CVE output for honister
> > isn't
> > there.
> >=20
> > Not sure if we want to add the json CVE output to honister to enable
> > that for the short time that release has left?
>=20
> Yeah, there is only a week left and I wasn't planning to take those
> patches in my final pull request.

I will just disable it then, thanks for the info.

Cheers,

Richard

