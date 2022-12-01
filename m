Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C90AC4332F
	for <webhook@archiver.kernel.org>; Thu,  1 Dec 2022 23:38:57 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web10.61443.1669937933014450829
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Dec 2022 15:38:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=H04RiCS3;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id w15so5329457wrl.9
        for <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 15:38:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=26/ooIo6faykOjcj77CJuZALCCm0d7Tf2mHCLNGZVQQ=;
        b=H04RiCS3aBW1/5QL8lNRefKv0h2oKISsyZnbwIbN1gX33WhFSdrN8iDmdWb+aLAksu
         zrK8Xt0bxp4fAgGVLeTNdthXhEY1cNZAmVxxHHx8U5xUyXKYh/uLrrOhxvODhSB6v/uy
         /dDpArTROK4hZTl6x+YCaBcAOmfCAxsmSfyMw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=26/ooIo6faykOjcj77CJuZALCCm0d7Tf2mHCLNGZVQQ=;
        b=rGLLuJP793EpEjiP7KT0ecfpH/sHqRBXbz90q5/sFrhbaxu1i7E+PPolbC6ZOyppjH
         gQ84MgpQDdd8APhbTxgHxj/woPPU81mcc704+AtxWB/sCaHEDkzXRx0WwIrEjmxX53yX
         kP4S62xoGjab8PGL1hTVnZUektJ2yRU4fMp6qDk13I07DNZJ3qy7b6JbXS8oKny/W8Q/
         uRWsHklbVb3+iZbi4ceAdVqKx4Kfcc78602GU6Kp6xN61T13X+b66Ot/aKwDNr6zleSj
         NaLwVoNcg4Vp8Eekfau7VfTVhFkaKUyOkCtsHHO/CHCaCghy0ZnUOELNdqNlguBkzoQC
         OwQQ==
X-Gm-Message-State: ANoB5pk+s5DgroWtBZslmUzCFCNMSKCq5ENox8uhAa6JG+HXrxt+qfsT
	K1p9FzR+nIuIKHPMINyVPSGrrw==
X-Google-Smtp-Source: AA0mqf6ng0qOEVNWHXiTte9/7cU61PKcg5MWgUD799xZrp3AYmQyOecNHQhS+4uOLjsx7EoGarku5A==
X-Received: by 2002:a05:6000:124d:b0:242:10a:6667 with SMTP id j13-20020a056000124d00b00242010a6667mr24583908wrx.39.1669937931417;
        Thu, 01 Dec 2022 15:38:51 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:3f4c:de93:c029:9984? ([2001:8b0:aba:5f3c:3f4c:de93:c029:9984])
        by smtp.gmail.com with ESMTPSA id t2-20020a5d42c2000000b002365b759b65sm5488324wrr.86.2022.12.01.15.38.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 15:38:50 -0800 (PST)
Message-ID: <8d0d06e7c7cde070fd91bda4c8922942855b3020.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder2] config.py: add fedora36 to
 workers_prev_releases for kirkstone
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Steve Sakoman <steve@sakoman.com>, yocto@lists.yoctoproject.org
Date: Thu, 01 Dec 2022 23:38:49 +0000
In-Reply-To: <1045417bd149734da4decf719be2104348feff0b.1669933890.git.steve@sakoman.com>
References: <cover.1669933890.git.steve@sakoman.com>
	 <1045417bd149734da4decf719be2104348feff0b.1669933890.git.steve@sakoman.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 23:38:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58713

On Thu, 2022-12-01 at 12:32 -1000, Steve Sakoman wrote:
> also remove obsolete fedora releases for kirkstone

Please don't remove the obsolete ones, we leave the old ones here as a
record in case we do end up wanting to know which distros we did test.

Cheers,

Richard

