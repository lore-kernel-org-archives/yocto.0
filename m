Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 722DEC61DA4
	for <webhook@archiver.kernel.org>; Thu,  9 Feb 2023 11:00:41 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web11.11714.1675940433013998834
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Feb 2023 03:00:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JQANbd6V;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id by3so41228wrb.10
        for <yocto@lists.yoctoproject.org>; Thu, 09 Feb 2023 03:00:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ijh4grAnKQB+vZsVw/RoWcbacR+7oXXB8GD2uDRpjyQ=;
        b=JQANbd6Vru+jfRDfdFSCRVofIOKahc3g329HAXWP6Mtp2P+BGsSM26f6QL7R7QftBR
         b4LofvPZkj0DgrFN2D7zNFLDal1s42ipK8u2cdOIimxu0k+Iq61o//ajDfeIMntTw58D
         FAQ03dH8JVSHrAq3Ai5cAbJAPI5wvFkjMRFqM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ijh4grAnKQB+vZsVw/RoWcbacR+7oXXB8GD2uDRpjyQ=;
        b=NtCOTEVpD5kxG+zwFv1g2gim4AOx35dkDK5CDqJBKcikOUaJp0Ovskhoz3YqJUBh+M
         z04IxdPZmHwDnSnyh8hYuIpWwWtT7R26mKcgb21/qhrHUoSpr4q/97dlZ9CVcrIyY6S7
         HY/WH2hTWrZc55HZdeVeN4Fg+lwuPzwKUZWHAueIC485dgNp5Q0j1sLgxwzEx75ltnoa
         aEURYYdwu8SW/c+WEa2+vyy4ebX/VTCvjSiMoCoFwG5H8iaO1dOOC+iaFJ1R1bluhzlX
         ehrNleK7R95vGjg+vFfKZCOAmarc/H4FhUM06XIeagLUs+S1RSNozlydGt5j+5r5EiH+
         Ux2w==
X-Gm-Message-State: AO0yUKXsBn0hgNj1Qvp/PdL7G8ecjNejeiMV1AfyVu6/3iLwNbH5C4Bq
	WgTccXKJDNvfESQvylwx9f6/dg==
X-Google-Smtp-Source: AK7set/4zP9KwpEzk0P9MJv+PPo/aWVvurI5EYb9GRhiJacf32IpBz4bdmbUMo+XzUBYGVZerj/8+Q==
X-Received: by 2002:a5d:4107:0:b0:2c4:9b2:b4e2 with SMTP id l7-20020a5d4107000000b002c409b2b4e2mr1927795wrp.19.1675940431389;
        Thu, 09 Feb 2023 03:00:31 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:29cf:6f5:fc42:8eb4? ([2001:8b0:aba:5f3c:29cf:6f5:fc42:8eb4])
        by smtp.gmail.com with ESMTPSA id d15-20020a5d6dcf000000b002c3f9404c45sm978107wrz.7.2023.02.09.03.00.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 03:00:30 -0800 (PST)
Message-ID: <d368d084803c72f68105dd1cefed730bafd40330.camel@linuxfoundation.org>
Subject: Re: [yocto] [meta-oe][dunfell]nativesdk-postgresql - causing chown:
 invalid user: 'postgres:postgres'
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alexander.rodatos@brose.com, yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Date: Thu, 09 Feb 2023 11:00:30 +0000
In-Reply-To: <YVtP.1675929919976550265.0bXA@lists.yoctoproject.org>
References: <YVtP.1675929919976550265.0bXA@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Feb 2023 11:00:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59202

On Thu, 2023-02-09 at 00:05 -0800, alexander.rodatos@brose.com wrote:
> Hello,
>=20
> i am trying to install the PostgreSQL and the development package
> (postgresql-server-dev) as part of the SDK.=C2=A0
>=20
> I added via bbappend BBCLASSEXTED_append =3D "nativesdk" to the
> postgresql_12.9.bb.=C2=A0
>=20
> I can build an image for a raspberry 4 pi.=C2=A0
> However when i try to populate the sdk it stops with an error during
> the do_install() for PostgreSQL:
> | chown: invalid user: =E2=80=98postgres:postgres=E2=80=99
> | WARNING: exit code 1 from a shell command.
>=20
> This happens when the owner for pgsql libs is changed to the user
> postgres.=C2=A0
> I did create a the user manually on the host system but this didn't
> help with the problem.=C2=A0
>=20
> If i build the image itself it works flawlessly.=C2=A0
> =C2=A0
> Any ideas what I'm doing wrong?

I suspect this was solved with=C2=A0

https://git.yoctoproject.org/poky/commit/?id=3D8dd0a45c858290288e1a1fef046b=
5cfcf7ff6257

Cheers,

Richard


