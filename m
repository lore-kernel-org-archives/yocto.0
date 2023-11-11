Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D01CC4332F
	for <webhook@archiver.kernel.org>; Sat, 11 Nov 2023 17:05:45 +0000 (UTC)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
 by mx.groups.io with SMTP id smtpd.web11.55898.1699722342100927851
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Nov 2023 09:05:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RMhqYtRJ;
 spf=pass (domain: gmail.com, ip: 209.85.160.48, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-1f0f94a08a0so1852707fac.2
        for <yocto@lists.yoctoproject.org>; Sat, 11 Nov 2023 09:05:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699722341; x=1700327141; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cdG5B9VooQhzYdoVzX6VIfgV4CpdnRzwphPEN9cQ478=;
        b=RMhqYtRJBMBD1my/16klMbcpaIG0cXqdQdVzpFywXRz6mepZAFg3jftHsb+7q6luHS
         n4SFaF6pnJ+/5ROl5d+MpPwoqqVDn1luz+1JX7CGC/rFjXcXeEXmmkCpX5/4eaBY2v4j
         T3pFRn0FLwrVBOIRryD4xEl3A2N7w0p72WkTLSBc4PTV+ATgvbzlQFk9FseUfynPpdan
         F2vEMwyM85rFbRnWIzxMXdeK174a4IWGxpoyfb4cCzY+w5cAy5FfUB/PJrJifjdnEQxe
         K1Ja1ul4JTkeAPAerMyQqdft6hHYahMw9dAaxs0LRBuPBJ1Uwe5neNpfr5Jf7yziZEkB
         chfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699722341; x=1700327141;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cdG5B9VooQhzYdoVzX6VIfgV4CpdnRzwphPEN9cQ478=;
        b=jQ7OyqTlwChFgFN+9A8VUtZEgacdQ0ZYnfCqmogyUP0TgAn4ihajqH2JwZmpnnktcC
         IAFFgsxs/on4/LqzNkG/PPO61Q38GJi01vJEKJCPeRT+knqA/ziRd4VWMALaSpZsHx8a
         WeiitPwtBAQJxJO0kr9CFTSOZiw/jmADe0Evvmc0sLCH0BRYmkQCiYduBeCEBZobUcit
         6JOfcp71Y0n5nJArXm3jB1c0LSzpUMImMArbHw7wWy1JKF5rsYocDLtIMxbu/1ntwEwA
         n8YT46O2tXW9FBotvh+0awxV8k0IrufvtHz8jqheLR3DvXO+Rd9ouk6ron0BI3eS6Z+e
         m/TA==
X-Gm-Message-State: AOJu0Yyg0GoPc8n6SrQFzK2AC0nNpGtm3m5GigZZOZYAb+HgfjyqLjRI
	T0vud3xUvN4rnM39Wjn2TTdNFLMjvD9dZIIkZk4=
X-Google-Smtp-Source: AGHT+IEgFIAkBx9T4FWSPO2ACV+wQvWIar05ihTRMDmaALqmvcSmUpZ1NxU8QyBVwKVvjxzyZrBnjnf7t92TgnQUF88=
X-Received: by 2002:a05:6870:aa08:b0:1ea:1b5e:fed4 with SMTP id
 gv8-20020a056870aa0800b001ea1b5efed4mr3156594oab.39.1699722341250; Sat, 11
 Nov 2023 09:05:41 -0800 (PST)
MIME-Version: 1.0
References: <y6J6.1699704274762559511.QP1U@lists.yoctoproject.org>
In-Reply-To: <y6J6.1699704274762559511.QP1U@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 11 Nov 2023 09:05:15 -0800
Message-ID: <CAMKF1soEhAsuVb=+SzVbb0G_Z2qXH9UGvBoU6OYr09ABAEpYAA@mail.gmail.com>
Subject: Re: [yocto] Problem when adding own tasks
To: athragared@proton.me
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Nov 2023 17:05:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61659

On Sat, Nov 11, 2023 at 4:04=E2=80=AFAM athragared via lists.yoctoproject.o=
rg
<athragared=3Dproton.me@lists.yoctoproject.org> wrote:
>
> Hello everyone, this is my first mail here, I hope this is the right "cha=
nnel" for my question.
>
> I am currently using the 'Kirkstone' branch of yocto and I have encounter=
ed a problem. I have written a .bbappend file for systemd in my own layer. =
Here I have written my own python function as follows:
>
> python do_my_own_function(){
>     # do something
> }
> addtask my_own_function before do_install
>
> This seems to work most of the time. However, I would like to execute my =
own function AFTER the do_install. However, this does not seem to work.

Code says _before_ but you say you wanted it _after_ do_install is
run, so maybe change the directive to before, moreover, add anchors on
both sides
to ensure its run in certain order so maybe say before do_package
after do_install.

you can also look into postfuncs/prefuncs

do_install[postfuncs] +=3D "do_my_own_function"

> If I delete the build folder before building the image and then look in t=
he log.task_order file I see that my own function is NOT executed. Other pe=
ople on stackoverflow seem to have observed this problem as well.
>
>
>
> So I wanted to ask how to solve the problem or debug it further?
>
>
> Regards
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61658): https://lists.yoctoproject.org/g/yocto/messag=
e/61658
> Mute This Topic: https://lists.yoctoproject.org/mt/102524578/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

