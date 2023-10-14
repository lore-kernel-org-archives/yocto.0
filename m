Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D8E6CDB465
	for <webhook@archiver.kernel.org>; Sat, 14 Oct 2023 23:01:52 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web10.77086.1697324508755869492
 for <yocto@lists.yoctoproject.org>;
 Sat, 14 Oct 2023 16:01:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=LA8gzmE4;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-323168869daso3120324f8f.2
        for <yocto@lists.yoctoproject.org>; Sat, 14 Oct 2023 16:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1697324507; x=1697929307; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=trL73tC3az+SdUl3o7ApcZqRV9QFsg6nH5tr05cRkJs=;
        b=LA8gzmE4+pg03HqUOnB/CC3osj3xnMpto/6pbTk0GiaV+6HNF0C/RSZ4I7/qyEX08M
         ox25lTsAKZEw9+M790GZkROEUIlyVvqVMOY+FZF+1KQ+sCqV2XM9PnXEig2Tly0+VGeI
         9ohzTZ4hBOGdMP1Xg4lRQ+tQOKDQ1swrK9ITw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697324507; x=1697929307;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=trL73tC3az+SdUl3o7ApcZqRV9QFsg6nH5tr05cRkJs=;
        b=SL1Twrqi6aOF9s7nPRo8uXaI598NSWqi4bJlQTt18Pq6JCIPAP2M31Kpd1qZCbf/vg
         Iw3bbVIrNqqe91pqNIjWKdp08678QnZhD6GVHAdvApD20AcKsvnTAiOvHSuQnSrICwUR
         fQRTzhelaBrQBlTv0HPmiMtuhoqDesbgA4J7RsCYYs8b0KHc4sZmIdFFo+/pKMnRZeXQ
         GiFOC6pnbObSJB3odFHCbb615z+FpMZkIiiIXMwhTCRL9guqXoM8yAD57C60ZsHGQFVV
         x1vrAKZfo+ySVqD+LIWJDxExf0JrxeFP4NkQ4XnU/QiZ9Hl18WBYvnsd/0xKha6znaLM
         EyRw==
X-Gm-Message-State: AOJu0YyusM04nHcEaeLBPp3XsHxrwxaRX/Spl2ezgA3lbLatRFWjL1Zq
	/d7H9r+1zfSiHvh5tbZ4hinsSw==
X-Google-Smtp-Source: AGHT+IEdfFUaky23ssmrvaRU2rmERZ5wi+zKmeAHuF5lY+sgIGh1syXY8LExw4tXM1ErAMuAwnS8PA==
X-Received: by 2002:a05:6000:83:b0:32d:a781:111 with SMTP id m3-20020a056000008300b0032da7810111mr1403842wrx.15.1697324507153;
        Sat, 14 Oct 2023 16:01:47 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:7e01:6bdd:8c85:9c17? ([2001:8b0:aba:5f3c:7e01:6bdd:8c85:9c17])
        by smtp.gmail.com with ESMTPSA id k17-20020adff291000000b003143867d2ebsm23910280wro.63.2023.10.14.16.01.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Oct 2023 16:01:46 -0700 (PDT)
Message-ID: <d302d2da63e6b70aa3ef0e8010e6b602b6253fc5.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json : Fix
 repro-meta-oe layer dependency
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Fabien Thomas <fabien.thomas@smile.fr>, yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Date: Sun, 15 Oct 2023 00:01:43 +0100
In-Reply-To: <20231013143402.2955811-1-fabien.thomas@smile.fr>
References: <20231013143402.2955811-1-fabien.thomas@smile.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 14 Oct 2023 23:01:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61342

On Fri, 2023-10-13 at 16:34 +0200, Fabien Thomas wrote:
> Fix meta-filesystem build issue due to hidden dependencies (not set by
> LAYERDEPENDS) smbnetfs(meta-filesystem) depends on
> samba(meta-networking) that depends on python3-dnspython (meta-python)
>=20
> Create new build-st dir for each layer to avoid chain of
> failure between steps
>=20
> Signed-off-by: Fabien Thomas <fabien.thomas@smile.fr>
> Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
> ---
>  config.json | 22 ++++++++++++----------
>  1 file changed, 12 insertions(+), 10 deletions(-)

https://autobuilder.yoctoproject.org/typhoon/#/builders/155/builds/5

Cheers,

Richard

