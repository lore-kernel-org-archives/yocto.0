Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B1F8C282D1
	for <webhook@archiver.kernel.org>; Thu,  6 Mar 2025 07:12:31 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web10.7239.1741245146572406503
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Mar 2025 23:12:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=aNSOngLh;
 spf=pass (domain: smile.fr, ip: 209.85.221.47, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-390dd362848so237582f8f.3
        for <yocto@lists.yoctoproject.org>; Wed, 05 Mar 2025 23:12:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1741245145; x=1741849945; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M5N+8jhidwKzzjLsGlu0pN1la3r8Bd7MVUqyf/+BE7Y=;
        b=aNSOngLhvlRuRsZPjMlcWsoDJkxETYgBUtwmSfVFy6FQTCpqda+Wz1VAIcCWZmfL6a
         pXd14HAjDDNNKnaQs5lzA6XD+z/4oZKxGTTMnDe3rvUjXzEfB9Ozf0lkP//eGkwIax3s
         s2XjbHGxAlSM5iQwrSrHWhP1jJ2Xjoj02UwZM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741245145; x=1741849945;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M5N+8jhidwKzzjLsGlu0pN1la3r8Bd7MVUqyf/+BE7Y=;
        b=MWJuT/r8XlWapfRF3Tnwom8IAjTktWkxPaatsCiW9EmBt0lQQot/+h1EWxPX+Yb7Ui
         6PIBiHl391ep1iMs8z2oNa8yGesckZMxbLizaY7J0+4Mdmv/0p6k9e/7nJ2AGfzsyVna
         TV55NLFim0NDe0uq1R6irx4ZGcNeYA6LsbVOesS8n0zwdpOhiqJ+OczBD8QqrQkibRxZ
         apqDn3yUAh395mmZlVAVZRCYrsuTMLcPLe0Rq7qQlCgkLuEX+MCg5PYlh59OBys15k0w
         zdK5zlVlbQuUcxPdcHN/Iuk+Veu6JFNynLe843UIQlUr7flQHyVgGo3QiNsFK6zOqiw/
         i8zQ==
X-Gm-Message-State: AOJu0YyQsHZYJ9/RSyhmzyYMfm3L+2suE/YNRy5RYSSMcqNToMH0Dmhc
	FYXsPJMsOMfA5mIM2Qis0Dyrpoz0hCaSTjq0d7abAz9kPwYhhTpLgebHcHy8dJE7NcKdYhdGrDn
	LlHZLYKGSXe0lVrr5h6cpy91+xS+2cwpNAJdhNg==
X-Gm-Gg: ASbGnctGOizFnZEZUoMse3lUZ52rFVA1z4AzHTM/eqVH1zefTmmIhuwiuaFSs1t+HG+
	Sb/c7cXhOo0WOyPoZWMAy+P/3vdrzglLKeakXu0/0i2K7p5e+Xuf9mtmL+yaZ7s69d86+cX9Bmq
	6m/ySrmfB2eCgCM7pQ4kENO6TT1717Xld49sg2e2g8A3cmuSTsibDGbtCEDxi/
X-Google-Smtp-Source: AGHT+IHQ6pVMGDhIPxTQDdIAUEgMhAjykWa00YcW8rsWGQq/i25GJPgEOo0wU/nEhFetFesa21Hbnr8s9ymtjvPtHno=
X-Received: by 2002:a5d:59a7:0:b0:391:2dea:c9a5 with SMTP id
 ffacd0b85a97d-3912deacbc0mr308667f8f.20.1741245144319; Wed, 05 Mar 2025
 23:12:24 -0800 (PST)
MIME-Version: 1.0
References: <CAMSfU+7Ret6jgpFneAmj+Kaxp7UDkxQ1RY4a10wzzCZRPcqa=Q@mail.gmail.com>
 <359.1741220582976891631@lists.yoctoproject.org>
In-Reply-To: <359.1741220582976891631@lists.yoctoproject.org>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Thu, 6 Mar 2025 08:11:58 +0100
X-Gm-Features: AQ5f1JqtD_fx-zXxK8FUeKfS31umTTybbttC2GUUjRhChj2Vc3smDnxPTrn02-4
Message-ID: <CAMSfU+6OUs6+aYifHuAiPotJ5_8bqbVY7ETSq2g3knGXC7WAuQ@mail.gmail.com>
Subject: Re: [yocto] linux-intel-rt: TUN/TAP Driver Config Not Being Applied
 #linux #kernel #kernelmodule
To: ryan.a.lovelett@saic.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Mar 2025 07:12:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64929

Hello,

Le jeu. 6 mars 2025 =C3=A0 01:23, Ryan Lovelett via Lists.Yoctoproject.Org
<ryan.a.lovelett=3Dsaic.com@lists.yoctoproject.org> a =C3=A9crit :
>
> Right that was my expectation as well. With CONFIG_TAP=3Dy, CONFIG_TUN=3D=
y set I should not have to do modprobe tun. Yet when I look at what is in /=
proc/config.gz it is always a module.
>
>
> # zgrep CONFIG_TUN /proc/config.gz
> CONFIG_TUN=3Dm
>
>
> I've put everything into a single config and confirmed that the other mod=
ules I've enabled are now built-in drivers. However, tap/tun remain modules=
.
>
>
> CONFIG_TAP=3Dy
> CONFIG_TUN=3Dy
> CONFIG_VHOST_NET=3Dy
> CONFIG_I6300ESB_WDT=3Dy
> CONFIG_NET=3Dy
> CONFIG_CAN=3Dy
> CONFIG_CAN_VCAN=3Dy
> CONFIG_CAN_VXCAN=3Dy
> CONFIG_CAN_DEBUG_DEVICES=3Dy
> CONFIG_NETFILTER_XTABLES=3Dy
> CONFIG_IP_NF_IPTABLES=3Dy
> CONFIG_IP_NF_ARPTABLES=3Dy
> CONFIG_IP6_NF_IPTABLES=3Dy
> CONFIG_AUDIT=3Dy
> CONFIG_AUDITSYSCALL=3Dy
> CONFIG_NETFILTER_XT_TARGET_AUDIT=3Dy
> CONFIG_DM_AUDIT=3Dy
> CONFIG_INTEGRITY_AUDIT=3Dy
>
>
> The only three that do not turn into a built-in drivers are CONFIG_TAP, C=
ONFIG_TUN and CONFIG_VHOST_NET, which relies on the first 2. For now what I=
've done is explicitly add kernel-module-tun as a runtime dependency and no=
w the module is available to modprobe, but this really has me stumped, I sh=
ould not have to modprobe.

Maybe another configuration fragment is applied after yours and set
CONFIG_TUN back to "m" ? Have you tried looking at the logs in
"linux-intel-rt's WORKDIR"/temp/log.* ?
I'm not familiar with linux-intel-rt but it looks based on linux-yocto
so try to look for
do_configure/do_kernel_configme/do_kernel_configcheck tasks log,
maybe?

Regards,
--=20
Yoann Congal
Smile ECS - Tech expert

