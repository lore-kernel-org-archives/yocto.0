Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC08EC43334
	for <webhook@archiver.kernel.org>; Fri, 15 Jul 2022 20:38:07 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web11.1849.1657917482986073432
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Jul 2022 13:38:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=LgxGH6R4;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id j1so3807259wrs.4
        for <yocto@lists.yoctoproject.org>;
 Fri, 15 Jul 2022 13:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=RY1Hggz0CitOplsn5w0q7pTUNSfMoLx76XexKc9OuoA=;
        b=LgxGH6R4hyzKsmDnakB0JYFZVycz35Y514ZWD1mGJOvcGPtetT9fMvWnJ+hw0nNwds
         lE7YRyjf0CWdAs+fpd/PDxttsoggpdzhw6bu7qzgtD+R6yXs/dAZhqU+W+UCNLIiUhA+
         OlkHE1OTDzVnDSpsaEzdmrglR8s3reAyn3FW4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=RY1Hggz0CitOplsn5w0q7pTUNSfMoLx76XexKc9OuoA=;
        b=lz/lKy1Z227TQK2zBLS+DK8PGer3H7YCppOudbzQSR7/ezmjqHn8Z9qCSY6+3Md1h8
         /4+POejgcHovftUqg+vX5f8YfZBspBopLJ4zw3Rin88w0IVV9QNzlFrezk3lk3zb+EfO
         2Fx5eOSf9KOD/0iXnxSWZhIxtL16SvLDUm5FUa6yicTJFzVbeD7RENwHzv6G2XCOfia0
         hMYzpIlwoD7cjM3Q73Ig/gCTVb7fu59o8eQOAA2Y4B/+KA/j9rA0mRD/e1moMQuGb6DR
         52hpNIZb3k4G7+KwAuf36rg5mOtpJJIqCVAPYGfdu3cRYxUKHBmBQ1hCdlS7wTpmj2Ao
         M2Qw==
X-Gm-Message-State: AJIora/X03R5BMrIGn/RWtKtkKSw2VKEq1C89Bqmc0cTEfdM3GIZ61KT
	A0QvcCuXita8rmKNUThodtgpvg==
X-Google-Smtp-Source: 
 AGRyM1vfGmIbqK8XR2KLWlpqLEMMmJYTEoAXey1vJs9mmgVXQWRUd2YRVMbsVhBv/ZHJfMMI8tFVzg==
X-Received: by 2002:a05:6000:1686:b0:21d:6e46:2fa with SMTP id
 y6-20020a056000168600b0021d6e4602famr13936172wrd.691.1657917481376;
        Fri, 15 Jul 2022 13:38:01 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:1063:9d94:8410:9c6d?
 ([2001:8b0:aba:5f3c:1063:9d94:8410:9c6d])
        by smtp.gmail.com with ESMTPSA id
 i10-20020adfe48a000000b0021b90cc66a1sm4466853wrm.2.2022.07.15.13.38.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jul 2022 13:38:00 -0700 (PDT)
Message-ID: 
 <0ef9088a194cccd155614575fe5c968c4eb74bc7.camel@linuxfoundation.org>
Subject: Re: [PATCH yocto-autobuilder-helper] config.json: update to
 dedicated domain
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Michael Halstead <mhalstead@linuxfoundation.org>,
	yocto@lists.yoctoproject.org
Date: Fri, 15 Jul 2022 21:37:57 +0100
In-Reply-To: <20220715193304.53602-1-mhalstead@linuxfoundation.org>
References: <20220715193304.53602-1-mhalstead@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Jul 2022 20:38:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57555

On Fri, 2022-07-15 at 12:33 -0700, Michael Halstead wrote:
> A dedicated domain for hashserv allows us to move it to dedicated
> infrastructre.
>=20
> Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
> ---
>  config.json | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/config.json b/config.json
> index ede6117..5f37e77 100644
> --- a/config.json
> +++ b/config.json
> @@ -60,7 +60,7 @@
>              "SDK_INCLUDE_TOOLCHAIN =3D '1'",
>              "ESDK_LOCAL_CONF_REMOVE:append =3D 'BB_HASHSERVE'",
>              "BB_DISKMON_DIRS =3D 'STOPTASKS,${TMPDIR},1G,100K STOPTASKS,=
${DL_DIR},1G STOPTASKS,${SSTATE_DIR},1G STOPTASKS,/tmp,100M,30K HALT,${TMPD=
IR},100M,1K HALT,${DL_DIR},100M HALT,${SSTATE_DIR},100M HALT,/tmp,10M,1K'",
> -            "BB_HASHSERVE =3D 'typhoon.yocto.io:8686'",
> +            "BB_HASHSERVE =3D 'hashserv.yocto.io:8686'",
>              "RUNQEMU_TMPFS_DIR =3D '/home/pokybuild/tmp'",
>              "BB_HEARTBEAT_EVENT =3D '60'",
>              "BB_LOG_HOST_STAT_ON_INTERVAL =3D '1'",

Thanks, I applied this to kirkstone and dunfell as well.

Cheers,

Richard

