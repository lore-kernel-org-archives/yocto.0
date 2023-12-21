Return-Path: <erik.schilling@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76FE9C35274
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 08:37:28 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web11.47170.1703147843869573139
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Dec 2023 00:37:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=b2QU2ALm;
 spf=pass (domain: linaro.org, ip: 209.85.208.53, mailfrom: erik.schilling@linaro.org)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-55372c1338bso547938a12.2
        for <yocto@lists.yoctoproject.org>; Thu, 21 Dec 2023 00:37:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703147842; x=1703752642; darn=lists.yoctoproject.org;
        h=in-reply-to:references:from:to:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1VQyXly5+srzwoJ4nUY+IsH+tnPOnPDol89ErRIzep8=;
        b=b2QU2ALmQABpF0/IcFy1aLsboo/5ZTXEIiTBXjFHZl476u6FSZivhrotvwBTigIyWq
         Wo/n/ltPz8xV3xWzf322mFEuip8M2mP8RS8zdOqO8byL0MaEb2SFICJ4kRw81aqsD5VD
         u5F/f6LPavYczAkcL04SaX0y12Z+xEFhdQrhXV2WoydIpo5UkKnaMRjazuzz3wLFzPw0
         6IzNh0fkR2KLfUwUU0fGxz5/2PW+m70AnL7Ys6W3fs9EmIzsUl1nCFno5hup9krWAG0Q
         x6LwThgS8XS0Rk5b+L5nGBxAcLViKmLKqxyDogUs8hfUsLEwbk/112O/TKNWnvknvDV7
         pq5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703147842; x=1703752642;
        h=in-reply-to:references:from:to:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1VQyXly5+srzwoJ4nUY+IsH+tnPOnPDol89ErRIzep8=;
        b=rRUPHpf2Ag9erL9aUEjcFF0HMA8Zq0afMMgCbbClYYdVI/RJM5sb/lDENTYsjj0PQa
         CP3ZVRWdXH1Hl2OQ4vmiaP1UaiF5ljriKZQQ5gHb0A0KWwJzrgK6qC30FiOPqiltFJoc
         2/kse4WCXymYNGjNZ6qUrBZDIbN3sLmqmtBrTalpgnGFDzd09haDy8UExjoGNfma3Hnt
         H+Z3FW5wxxBXhI9kAyAvIMST3brDeTYcnKpyPKVq1L5KdGdyx7QSrwOcOGiZ3LXt1WHt
         xzwnrc3BUq3pnjz+cObn9e+Jk/Yp2Sjv7wRGq+GKZ/JMxNxAalHzXPnH7VPPAw4iB9iw
         Zvng==
X-Gm-Message-State: AOJu0YzyCQra9Tnlg9g7YxNr1raDdy5VhAmBGafOiOJ44QZ5rAKI0Fn7
	pYui9Ol1NrRUUkqGdVPelnJc0w==
X-Google-Smtp-Source: AGHT+IFzrqqyxn+RFW4jZF5UkGZY6HiPBq5eOl+IodsFtgE8rMyHgiMYQfBfPtQsqJRd/Kop1ko9CA==
X-Received: by 2002:a17:906:1399:b0:a26:6e9b:a06e with SMTP id f25-20020a170906139900b00a266e9ba06emr1764217ejc.73.1703147841794;
        Thu, 21 Dec 2023 00:37:21 -0800 (PST)
Received: from localhost ([2001:9e8:d5a1:4b00::f39])
        by smtp.gmail.com with ESMTPSA id i19-20020a170906a29300b00a26988c8772sm683443ejz.214.2023.12.21.00.37.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Dec 2023 00:37:21 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 21 Dec 2023 09:37:20 +0100
Message-Id: <CXTVISS99E85.MUX5NZWFGL3F@ablu-work>
Subject: Re: [meta-security][PATCH 3/4] dm-verity-img.bbclass: remove
 IMAGE_NAME_SUFFIX
To: "Mikko Rapeli" <mikko.rapeli@linaro.org>, <yocto@lists.yoctoproject.org>
From: "Erik Schilling" <erik.schilling@linaro.org>
X-Mailer: aerc 0.15.2
References: <20231221075730.201111-1-mikko.rapeli@linaro.org>
 <20231221075730.201111-3-mikko.rapeli@linaro.org>
In-Reply-To: <20231221075730.201111-3-mikko.rapeli@linaro.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Dec 2023 08:37:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62011

On Thu Dec 21, 2023 at 8:57 AM CET, Mikko Rapeli wrote:
> From: Erik Schilling <erik.schilling@linaro.org>
>
> It is embedded into IMAGE_NAME since poky master branch commit
> 6f6c79029bc2020907295858449c725952d560a1
>
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>

Signed-off-by: Erik Schilling <erik.schilling@linaro.org>

> ---
>  classes/dm-verity-img.bbclass | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclas=
s
> index 3dd2b94..7f35df5 100644
> --- a/classes/dm-verity-img.bbclass
> +++ b/classes/dm-verity-img.bbclass
> @@ -115,7 +115,7 @@ process_verity() {
> =20
>  verity_setup() {
>      local TYPE=3D$1
> -    local INPUT=3D${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.$TYPE
> +    local INPUT=3D${IMAGE_NAME}.$TYPE
>      local SIZE=3D$(stat --printf=3D"%s" $INPUT)
>      local OUTPUT=3D$INPUT.verity
>      local OUTPUT_HASH=3D$INPUT.verity
> @@ -157,7 +157,7 @@ verity_setup() {
>  # make "dateless" symlink for the hash so the wks can find it.
>  verity_hash() {
>      cd ${IMGDEPLOYDIR}
> -    ln -sf ${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.${DM_VERITY_IMAGE_TYPE}.vha=
sh \
> +    ln -sf ${IMAGE_NAME}.${DM_VERITY_IMAGE_TYPE}.vhash \
>          ${IMAGE_BASENAME}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.vhash
>  }
> =20


