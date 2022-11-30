Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A410C433FE
	for <webhook@archiver.kernel.org>; Wed, 30 Nov 2022 01:56:29 +0000 (UTC)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
 by mx.groups.io with SMTP id smtpd.web10.125.1669773388582482295
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Nov 2022 17:56:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ant4ZWPd;
 spf=pass (domain: gmail.com, ip: 209.85.210.43, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f43.google.com with SMTP id db10-20020a0568306b0a00b0066d43e80118so10361908otb.1
        for <yocto@lists.yoctoproject.org>; Tue, 29 Nov 2022 17:56:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kAriAWPQfL8V3devAOXZCsxM3rjhMeqxgEt8AIUgPCE=;
        b=ant4ZWPdY6+UFgFDYF207ZgCIxMYnHpTV0TQ0OClTnIrlbmKvelSsv4/2aA1oRkKCY
         GaAD5Oyi9l5xYzkMt1pgKgjbC00Z/avNA+2iei48IGFAfSduHPrS9zCOVBaxX79u1TrZ
         sgFhFdXN2BnbmdMrufRyqi58B2V1jacfpNO3d7InvshtuWt0xf1OozD1IkZY7xBA8Exd
         ReoAXaJ29lmDPuBPNTzWOTt+R4Q1sCCJEjv5DPJYwyC5tB+qLXuRoI7eUQNPDQdRVmKP
         2pcyZ1eKBU5g+ewd73HJokHwnqGXKKg8xGQSnXwrWA1yDrCBeMrIBTgh/UG99Es20e/+
         4VoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kAriAWPQfL8V3devAOXZCsxM3rjhMeqxgEt8AIUgPCE=;
        b=IWgbdt2T5QIgVlLRmwhvy/j6WolykDCmb+9PaSj8L9lPctnGHSQPMZYaFt+HTUaECC
         i+HCoBsG79CFTfcLtqrmrvaF0QzuiJTYz4wDBOw8+85RkKO8tVA7Ns5jML1ESmCgpS8M
         1jadzTlCcM7hmJDRmFg/B2s6Y4cvanOpS6iRhcU280FQy+p3K4fSdkXbSg8/QXeOcRf1
         D3W7C01lc8FSbh+YS/HKYGYb2B0gZ97H9xBbbVYa3AYM+9lRmQSdQ/DnCwhOV5ZAjK/9
         i8/D0vGQJ0JD5yU6e77sqUedEj8JsSLFXCNVSTOWQw/e7FoB0FJxR0acFJwXfxBV+dKP
         S6xA==
X-Gm-Message-State: ANoB5pnFdP9JcKx86j40vIgh+bjOM+mJLX9ZhBAAVllOURz+zs4QROc9
	GE3aqOWCmmBeBN0yaqJNWvpFjfNnAUovTFkfOsg=
X-Google-Smtp-Source: AA0mqf5AFzT18DutH1ITR4h+BQYxuy3XvVGRk1DHUtTaIGxhDzBFrPhApxBDbsnBjvTnByPcyWYwLHPHqmzqmX6l3d4=
X-Received: by 2002:a9d:6486:0:b0:66d:ca7a:8b1a with SMTP id
 g6-20020a9d6486000000b0066dca7a8b1amr20652299otl.55.1669773387516; Tue, 29
 Nov 2022 17:56:27 -0800 (PST)
MIME-Version: 1.0
References: <xpzi.1669266772207141188.2JD2@lists.yoctoproject.org>
In-Reply-To: <xpzi.1669266772207141188.2JD2@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 29 Nov 2022 17:56:01 -0800
Message-ID: <CAMKF1sq7Cx6SC=1Uqz=CaoDwO4m+q-hap5gONgO_GJFxQjxrKw@mail.gmail.com>
Subject: Re: [yocto] Adding realm in yocto #zeus
To: "Poornesh G ( India - Bangalore )" <poornesh.g@mindteck.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 01:56:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58661

On Wed, Nov 23, 2022 at 9:12 PM Poornesh G ( India - Bangalore )
<poornesh.g@mindteck.com> wrote:
>
> Greetings !
>
> Can any one help me out to include "realm" (used as command line tool that can be used for management of enrollment in Kerberos realms, like Active Directory domains) in Yocto (Zeus).
>

always look into layerindex for available packages. A search for
realmd reveals that there is no recipe for it. So you have to write
one

https://layers.openembedded.org/layerindex/branch/master/recipes/?q=+realmd

something like this might be a good start
https://docs.yoctoproject.org/ref-manual/devtool-reference.html?highlight=new+recipe#adding-a-new-recipe-to-the-workspace-layer

> Thanks,
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58631): https://lists.yoctoproject.org/g/yocto/message/58631
> Mute This Topic: https://lists.yoctoproject.org/mt/95232714/1997914
> Mute #zeus:https://lists.yoctoproject.org/g/yocto/mutehashtag/zeus
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

