Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA5E9C4332F
	for <webhook@archiver.kernel.org>; Sun,  6 Nov 2022 18:12:45 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web08.1195.1667758359779435063
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Nov 2022 10:12:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NCAGYACg;
 spf=pass (domain: gmail.com, ip: 209.85.167.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id g12so13990541lfh.3
        for <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 10:12:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GYU+nApeXRyD5dLDw25UGJGc9941Qu2uQzVMGq9+1gI=;
        b=NCAGYACg0TRtKyIcCnoz8jI75J39XsZoKekkOHkWMrXjpOGHrqXgzwpZMs4wyzmPIo
         GwS8RVKKzg0S+gMUxEVYP6E+PWRXnBz5QdeDPwrapf+94EvpCEQjvMdEUys47jaPu2jV
         dnscvHh5apHd23uG1DTBazp+n3iWInxEDq5hsBTWO0qWnzEtZrvQ6d2QiE1vYz7q5kOJ
         yJ3agrw07Uwqx/4+6SdONsY79WGE4NO1NyUwN2ao3Xy7sUO/QLnuTayi8f64dUaNaLIb
         uEqpKcWKf+7is2IyZjV1+dz+hhMGdEjiR3sO3+dttgmuih8xVJKDsUfTBR+6V7Bod/zi
         TCjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GYU+nApeXRyD5dLDw25UGJGc9941Qu2uQzVMGq9+1gI=;
        b=yTv4szsjKxZvIBaMyapVd6qiurmBZfg+KkGS5rG8FWfO01EedzqcubaEcDwaU0pLJZ
         XjLiTaaZWRsMTOHaYrNLDx1pzHae0D28O9KksanPwyrSYp4QZ2v2pJoBZAZRqoxPjtst
         quviwwWbguAurMRfUcam4iYBagIhoh/ANBrdvDssIvxWKJ1ZCrh68GR7IqL1VzLDYaxU
         XipDuy7NR0r+Ysan6HH8djduPwzVvMMfkGmZIy5hq2ErdmX402Q6PojuBSkaQhdm0szV
         2JmF3N3AmWeUUw9oFpCDPzLZtEjNO3FNbQB6+PjMb/HScelytDPjZP6tsxgQOfiV1evg
         SxQw==
X-Gm-Message-State: ACrzQf2bN1ZmUeaZpOGiPnGQXA1mVaiGxo4sZtB/i28qEhOtpfQYvLPk
	ikMZl9Cv8bbPJPruI/FUrIPnMWJP4xUHMwRNVz8=
X-Google-Smtp-Source: AMsMyM59iwp8+LhtTpSqQaEqnanahqFqqW7g7J4NzWv0eYIKXgyxBcKVPy5yK2zZbJA6GMH5k+8xOXf7TM+EwQkOfk8=
X-Received: by 2002:ac2:4c8e:0:b0:4a2:7d0d:c7a5 with SMTP id
 d14-20020ac24c8e000000b004a27d0dc7a5mr16247095lfl.367.1667758357797; Sun, 06
 Nov 2022 10:12:37 -0800 (PST)
MIME-Version: 1.0
References: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
 <68E37127-C80B-4A73-A4F1-AB3CA40A8A48@iki.fi> <7200a7e4-f302-170b-a0e9-f84867b77773@mistywest.com>
 <0C6FEB0D-931C-4EE1-BA24-3534DB9940EC@iki.fi> <cbe95fad-8ce9-3e72-2626-e1185505ede5@mistywest.com>
In-Reply-To: <cbe95fad-8ce9-3e72-2626-e1185505ede5@mistywest.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 6 Nov 2022 19:12:26 +0100
Message-ID: <CANNYZj-PtwKFqs+DHCR-CTC86UiVU7p9D=mBNyjG+pes6zeK8g@mail.gmail.com>
Subject: Re: [yocto] undefined reference problem persists
To: Mistyron <ron.eggler@mistywest.com>
Cc: Anders Montonen <Anders.Montonen@iki.fi>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 18:12:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58502

On Sun, 6 Nov 2022 at 18:36, Mistyron <ron.eggler@mistywest.com> wrote:
> I'll attempt to "just drop" meta-gplv2, then. However I see that there ar=
e other dependencies on readline too, i.e. it might be easier to just repla=
ce the existing 5.2 version in meta-gplv2 with 8.2 from here: https://git.y=
octoproject.org/poky/plain/meta/recipes-core/readline/

No. You cannot 'just replace' it, as they are under different
licenses, and meta-gplv2 specifically collects versions under gpl
version 2 only.

Are you going to ship what you're working on to other users, or is it
just experimentation?

Alex

