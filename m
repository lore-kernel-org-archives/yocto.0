Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2A6BC05027
	for <webhook@archiver.kernel.org>; Mon, 23 Jan 2023 13:55:59 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web11.42941.1674482153304803352
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Jan 2023 05:55:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=DNdITBBw;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id n7so10888497wrx.5
        for <yocto@lists.yoctoproject.org>; Mon, 23 Jan 2023 05:55:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EUsp6RsCK//ydVpGdNAgQsc9zqYTxhffcLMcAQ4hyNA=;
        b=DNdITBBwzPH4KDnsrVYdT00Po6y7eut1+SlmQ05tqkeyYA4y+6OwTCbZzfXY+tLh1r
         4DpwsJWlF5/YNbJzK4nXxWx11LZxGDbJig3K2bT9YyfTPBb9nvu3L3wychGg5Jbkd6qk
         TWVXRbiZ4Qt5FSAfgOExIGmyszoWnHmxYrQOg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EUsp6RsCK//ydVpGdNAgQsc9zqYTxhffcLMcAQ4hyNA=;
        b=becdEc4R4oDqHwsIqAp2M/IoGVkXJuWXahLqYeqB/F+55b5dYAzXgceLZz7AWXPXw0
         fzFYOOmnd2+qF6xZ8ztp8PLyKZUH1Oph+Jus4SOaQ637zaEiTLc/5PnAiSBBbqxDFZdZ
         aEpp5x+CZSZzAfawJ6wRfXMIi+6R5rZKbI2zqfxNJk1ps8EW9H4Xl4WYpkoDIiSZRxfI
         9AqyywJqzDw4Odxq+n3wuo4BCQnuxsIELWWiUHIrs31lk5YeU7vVoBAIiA8zqG+iYyp4
         sHlPABRCEsSzjjqcf2llCZElZRuS24XDc0Ul8XopPIbai0L8wxC0ovr/ZFjif6kvh5is
         lUvg==
X-Gm-Message-State: AFqh2kp4x7Utrv3qC0ldlBt76TJsTljIS8HYCq/gbcst0VaSwICObi8q
	RcGmJ7NSomvOXN/GiEz2Egn9nA==
X-Google-Smtp-Source: AMrXdXvJhjgOklCw7zG4HUfXWCa+oz4pVDBZXTVf++eLXfxoYBMnePsLZaqJwDdJ0i2UzsLxJCoPUw==
X-Received: by 2002:a05:6000:12cf:b0:2bb:4b40:2d1b with SMTP id l15-20020a05600012cf00b002bb4b402d1bmr19632365wrx.61.1674482151630;
        Mon, 23 Jan 2023 05:55:51 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:9195:b014:a064:8114? ([2001:8b0:aba:5f3c:9195:b014:a064:8114])
        by smtp.gmail.com with ESMTPSA id o15-20020a5d684f000000b002bddac15b3dsm26547838wrw.33.2023.01.23.05.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 05:55:51 -0800 (PST)
Message-ID: <29c53647bc91b08a4956df40ab8857840058f77c.camel@linuxfoundation.org>
Subject: Re: [yocto] [autobuilder][PATCH v2 1/1] builders: update
 send-qa-email name
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alexis.lothore@bootlin.com, yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com, thomas.petazzoni@bootlin.com
Date: Mon, 23 Jan 2023 13:55:50 +0000
In-Reply-To: <20230123123343.37841-2-alexis.lothore@bootlin.com>
References: <20230123123343.37841-1-alexis.lothore@bootlin.com>
	 <20230123123343.37841-2-alexis.lothore@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Jan 2023 13:55:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59037

On Mon, 2023-01-23 at 13:33 +0100, Alexis Lothor=C3=A9 via
lists.yoctoproject.org wrote:
> Signed-off-by: Alexis Lothor=C3=A9 <alexis.lothore@bootlin.com>
> ---
>  builders.py | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/builders.py b/builders.py
> index d942346..b052f71 100644
> --- a/builders.py
> +++ b/builders.py
> @@ -322,7 +322,7 @@ def create_parent_builder_factory(buildername, waitna=
me):
> =20
>      factory.addStep(steps.ShellCommand(
>          command=3D[
> -            util.Interpolate("%(prop:builddir)s/yocto-autobuilder-helper=
/scripts/send-qa-email"),
> +            util.Interpolate("%(prop:builddir)s/yocto-autobuilder-helper=
/scripts/send_qa_email.py"),
>              util.Property("send_email"),
>              util.Interpolate("%(prop:builddir)s/layerinfo.json"),
>              util.Interpolate("%(prop:sharedrepolocation)s"),

This gets a little tricky. Changes to autobuilder-helper are easy but
if we change autobuilder2, it has to match changes on all active
autobuilder-helper branches.

Cheers,

Richard

