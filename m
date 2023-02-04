Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A8DC61DA4
	for <webhook@archiver.kernel.org>; Sat,  4 Feb 2023 11:09:30 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web10.3739.1675508962169215036
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Feb 2023 03:09:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=I3c6JyJ2;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id k8-20020a05600c1c8800b003dc57ea0dfeso7690121wms.0
        for <yocto@lists.yoctoproject.org>; Sat, 04 Feb 2023 03:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OMugcyu8Og9BVOa9i+F0y4yLsdfOFZuq/PitoZpnSE8=;
        b=I3c6JyJ2/J13g+l8NqA9juRid+JuTOEcF2gJ/dfWK/ZczFNzc3fh/Z2xj1ZvVu/pob
         560ZRRhoEY9gT6q+ozLMQKSzKPBe2W7BQMLvH6En1t96mhH9EnEM/2Oo8Yn/qY+euKaa
         YCInmRlI5qI7Dxbjoks0qXaBdgKCkJ3vMd3Yk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OMugcyu8Og9BVOa9i+F0y4yLsdfOFZuq/PitoZpnSE8=;
        b=bzoInqb0AhCkkyhYFg3k05opESfGV239kJ6U/rMWWM3sBryCNxkaC+RJEvE7nVeYU8
         fYDojDDVsFsSR709sFHO/is9E6yWwFolxfiS08FwRYXK4oWDm7HRYXVGaNdFr/YEib2A
         u6rQuiSPq+iHiTC6gdEO6SYHLcTdfFujYhbFUXoD5DLwTUMs+waheHqmnJsAtFSld1C1
         vzTcVwCgp4+xzHLwjZewgi8hBYfZ69S6vo4fnDeQiP9f1iGg3EMlTRxLbORAoftIFWJB
         FijCV/9F/Q22DEV4zMmdHGFkdwUKtJmqGg9iz3QLuo6cZW5LNz+P6fpmwlrvSD0afbyY
         jqpw==
X-Gm-Message-State: AO0yUKUAgyn+LZGyAR32EtZ4ipFaM4vgnMl5v/kNpSL6wRJaIAC8o5N1
	YwsmWtPAjRUPTofkmbLsmHUOdA==
X-Google-Smtp-Source: AK7set/A7vFmH7b3T2FQbQCha+PSAWxcO+90ANkG7ZIVbhVT5zsP36VPA/d7XmHnUFgsJRF4uIPqVQ==
X-Received: by 2002:a05:600c:538e:b0:3dc:2c7c:6616 with SMTP id hg14-20020a05600c538e00b003dc2c7c6616mr12759751wmb.21.1675508960318;
        Sat, 04 Feb 2023 03:09:20 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:b45c:7b35:1c6a:a06d? ([2001:8b0:aba:5f3c:b45c:7b35:1c6a:a06d])
        by smtp.gmail.com with ESMTPSA id p17-20020a05600c205100b003dd1bd0b915sm7371667wmg.22.2023.02.04.03.09.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Feb 2023 03:09:19 -0800 (PST)
Message-ID: <3db8e6a5ee0f9dd0afecef56bba62bee283885b7.camel@linuxfoundation.org>
Subject: Re: [yocto] error when try to use sudo command in recipe
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: SIMON BABY <simonkbaby@gmail.com>, yocto@lists.yoctoproject.org
Date: Sat, 04 Feb 2023 11:09:19 +0000
In-Reply-To: <xRdO.1675462106161585364.jj30@lists.yoctoproject.org>
References: <xRdO.1675462106161585364.jj30@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 04 Feb 2023 11:09:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59163

On Fri, 2023-02-03 at 14:08 -0800, SIMON BABY wrote:
> Hello team,
> I am getting the below error whe try to execute command in bitbake
> recipe having sudo. eg: sudo kill
>=20
> sudo: /usr/bin/sudo must be owned by uid 0 and have the setuid bit
> set
>=20
> Can some please help how to fix it. The same errot did not see when i
> execute outside bitbake.

You didn't say which task this was in, I'm going to guess it is one
being run under pseudo, our fakeroot emulator.

The fakeroot emulation doesn't work well with "real" sudo commands.

Cheers,

Richard

