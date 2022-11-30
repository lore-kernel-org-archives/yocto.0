Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2204FC4321E
	for <webhook@archiver.kernel.org>; Wed, 30 Nov 2022 23:05:07 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web11.28289.1669849502077558192
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Nov 2022 15:05:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bgZR59Rp;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id bx10so27228wrb.0
        for <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 15:05:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YshWab9WWCCNpB+yB1y74XkJzsnYGY6SRCrPj4L1ZO4=;
        b=bgZR59RpsTMcXtbvjwqBXiZ4rtUahhKN0vowtpOF54iM3zeB/pqgw960txXGd4m+XQ
         Vb/Yz1kfOpsVhNShb6bJDq+AySgX27jY/7051SHtcDcb99Lkr95NW/bnC6s85VEs0Xhw
         TWXIUHlfNPXhSO/eT1W8C9SdX+LfBpEnQ7KWQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YshWab9WWCCNpB+yB1y74XkJzsnYGY6SRCrPj4L1ZO4=;
        b=KkDJloVCDHuQu9xp2ybjPto8casw7nAhbXVeVbqzXHV6jOqLQGuZeWedm6/e+GDFe1
         dcAAn9M3M8fyQTloFz0ab7mxWoEdUrQF7Ms6XxF5qmiLweBYYNOAZflnO1i/hLNc9KkK
         ppkSx1S2Z4hCLqDWI75TUGG5LJAc2snVmGog0lAJhsT+bogys5mERQpRPk8WDQa7nT7I
         1l2xIG9RK0lVyNJIArguWCnS/4eVJqayznzxUDKb9Xk6F+QBb+gifV61bXWX+yfXIN8N
         yinu42iHFCm+B1vj5hmfre4L7cJ3/iMXo/bAO7N03nohhuMiJb5eCSA6sdpGhn4RvQ7u
         vRgA==
X-Gm-Message-State: ANoB5pliDg3YeDt+Oc7PfPcpi0pctE2xUBoe10FQ9lh5UdzZFjthmq+Y
	Sbe41KTa6WO8g2GuQRUz9ZgD6g==
X-Google-Smtp-Source: AA0mqf5nwt/8mLgBpdXnZc7XL5HFFcOhbRI4dwEEVYooTqA7I1mx35TaIlYrOm41xXeioL9ltPs0pg==
X-Received: by 2002:adf:e5d0:0:b0:242:17c9:a1e with SMTP id a16-20020adfe5d0000000b0024217c90a1emr10760835wrn.514.1669849500295;
        Wed, 30 Nov 2022 15:05:00 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:d673:1517:32d1:98? ([2001:8b0:aba:5f3c:d673:1517:32d1:98])
        by smtp.gmail.com with ESMTPSA id u11-20020a5d6acb000000b00241c4bd6c09sm2774329wrw.33.2022.11.30.15.04.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Nov 2022 15:04:59 -0800 (PST)
Message-ID: <d30a843420db43b18c2def6557dc454b3ac25a20.camel@linuxfoundation.org>
Subject: Re: [yocto] Add user to group that's created in other recipe
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: sven@svenschwermer.de, yocto@lists.yoctoproject.org
Date: Wed, 30 Nov 2022 23:04:58 +0000
In-Reply-To: <dF0b.1669820159069031281.m3lb@lists.yoctoproject.org>
References: <dF0b.1669820159069031281.m3lb@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 23:05:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58687

On Wed, 2022-11-30 at 06:55 -0800, Sven via lists.yoctoproject.org
wrote:
> I have intermittent problems with a recipe that creates a user that
> is member of groups that are created by a different recipe. This is
> the recipe that creates the groups:
>=20
> # recipe-a.bb
> inherit useradd
> USERADD_PACKAGES =3D "${PN}"
> GROUPADD_PARAM:${PN} =3D "--system gpio;--system i2c"
>=20
> This is the recipe that creates the user:
>=20
> # recipe-b.bb
> inherit useradd
> USERADD_PACKAGES =3D "${PN}"
> GROUPADD_PARAM:${PN} =3D "--system mygroup"
> GROUPS =3D "dialout,mygroup,gpio,i2c"
> USERADD_PARAM:${PN} =3D "--system --no-create-home --shell /bin/false -
> -no-user-group --groups ${GROUPS} myuser"
> DEPENDS =3D "recipe-a"
>=20
> I guess it's also worth pointing out, that I use useradd-static:
> USERADDEXTENSION =3D "useradd-staticids"
> USERADD_ERROR_DYNAMIC =3D "error"
> USERADD_UID_TABLES =3D "files/passwd"
> USERADD_GID_TABLES =3D "files/group"
>=20
> Every now and then I get and error in recipe_b's do_package_setscene
> task where useradd complains that one of the groups provided by
> recipe_a does not exist. This appears to be a race condition since
> most of the times, this works OK. I was under the impression that
> specifying DEPENDS=3D"recipe-a" in recipe_b.bb would be enough to
> declare this dependency. What am I doing wrong?

Just to confirm, this is with master?

I think there are some open bugs for useradd issues like this. It is
supposed to work but sounds like there are races. If there isn't a bug
open for it, there probably should be.

Sadly we don't have many people interested in working on issues like
this so I can't say when it might get fixed, we do our best!

Cheers,

Richard




