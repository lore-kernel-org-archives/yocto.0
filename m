Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78EDC43334
	for <webhook@archiver.kernel.org>; Wed, 20 Jul 2022 16:22:37 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.56406.1658334149667055055
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Jul 2022 09:22:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Evr9rqQ4;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id b6so10655403wmq.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 20 Jul 2022 09:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=0Sxc0RE9ZKkq0MLbpqp2lBbbfAKuNNwjcA7gNO1eM9M=;
        b=Evr9rqQ4G3NZZN99g2f8IvCzNH83Sb0mCaP+uddLX1NUt36h24ysnf1xHhMmaXQWcn
         EKg7AoRYM4CRTuBq5BmvpN1XmkXcNXS4b9QflGw1IxyeU+8v09m4UdUtImaDH8/a8kbq
         SAIzDM/F4wuDHWth51gwRG2SvcqNGV4yKxeFg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=0Sxc0RE9ZKkq0MLbpqp2lBbbfAKuNNwjcA7gNO1eM9M=;
        b=1cHRaeoEA6qnsRWyXDXVx7sasR6FxwRkwk+0te8gMQea1547vNj+BVvvVJtpB/xLLH
         h7qomT2dSQcSSBMVF8mVyPKhF7SLlKqhrWL9sfBUmPyhiPM/af2u8uFdSfjKjMI/QN59
         Yuj0TmPTIcimz9WBvZbihI3xbZq/zCH0R1xxjZiqZZDtCR+S7bH9RRB02cciozK62tAz
         a9XxWjKLt6mqWGvA0nR7OT1Mc3j3owBXXHKg5SztYkg4stqpakDwK6W9CgLvgtPEJ0Cr
         YEf5WeAbddL5Z+A+nigt079DJmN351DygfT6GGTo4wc4EFxi9olv6zTUiZTtHRjZngKi
         j/cg==
X-Gm-Message-State: AJIora9Fm7YK24skcGFeuH0pANPbI7MFyIhj3sLP2Zjj98QSAWxsvOvS
	KMAtvrbvSlJhDchPK5dswACZ3Q==
X-Google-Smtp-Source: 
 AGRyM1sgA3Z3GuRciqumIWx/SCeiQhUb9TRumHF2FvevP/8CKAXMRdo5kXAEacJKLL6pIg6iLYPftA==
X-Received: by 2002:a05:600c:1907:b0:3a3:f60:c909 with SMTP id
 j7-20020a05600c190700b003a30f60c909mr4572567wmq.130.1658334148056;
        Wed, 20 Jul 2022 09:22:28 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:feec:14a3:c5ce:5d56?
 ([2001:8b0:aba:5f3c:feec:14a3:c5ce:5d56])
        by smtp.gmail.com with ESMTPSA id
 k6-20020adfd846000000b0021d8b1656dfsm16317695wrl.93.2022.07.20.09.22.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 09:22:27 -0700 (PDT)
Message-ID: 
 <6e47ae24c2e5548db4c48875a91e4c52a8a9f2ee.camel@linuxfoundation.org>
Subject: Re: [yocto] Switching between multiple DISTROs without
 "contamination"
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Nicolas Jeker <n.jeker@delisys.ch>, Khoi Dinh Trinh
 <khoidinhtrinh@gmail.com>, Mike Looijmans <mike.looijmans@topic.nl>, Martin
 Weber <martin.weber@br-automation.com>
Cc: yocto@lists.yoctoproject.org
Date: Wed, 20 Jul 2022 17:22:26 +0100
In-Reply-To: <18cb0052f9c42bba13cbe2738b74058a4d691a00.camel@delisys.ch>
References: 
	<1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.0579b8aa-d2a5-42d7-9e61-2548c06e61ef@emailsignatures365.codetwo.com>
	 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.2d9bc8b4-92c7-47b2-b9e8-ac8d32e87ee0@emailsignatures365.codetwo.com>
	 <6b3d2b0146aeaf2c25e0440e7dd6aa0c17cb4a36.camel@delisys.ch>
	 <8f0726b6-c7ed-83a1-6069-41bf8370b3bb@topic.nl>
	 <CAMLPRYczkk+ceHD8Mnf=BMv2GJrEF_75mwLek37rccwPKZvYZQ@mail.gmail.com>
	 <18cb0052f9c42bba13cbe2738b74058a4d691a00.camel@delisys.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Jul 2022 16:22:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57604

On Wed, 2022-07-13 at 15:32 +0200, Nicolas Jeker wrote:
> Thanks Martin and Mike for your explanations and tips.
>=20
> So, I've done a lot of testing today and it seems I simplified the
> example in my first email a bit too much. The example as-is works fine
> when switching DISTROs as far as I can tell. The problem only arises
> when wildcards are used.
>=20
> Changing my initial example like this should trigger the behaviour I've
> initially described:
>=20
> SRC_URI:append:mydistro-dev =3D " file://application-dbg.service"
>=20
> do_install {
>     # ...snip...
>     # systemd service
>     install -d ${D}${systemd_system_unitdir}
>     install -m 0644 ${WORKDIR}/*.service ${D}${systemd_system_unitdir}
> }
>=20
> do_install:append:mydistro-dev() {
>     # debug systemd services
>     install -d ${D}${systemd_system_unitdir}
>     install -m 0644 ${WORKDIR}/application-dbg.service
> ${D}${systemd_system_unitdir}
> }
>=20
> Notice the *.service in do_install.
>=20
> From my testing, this is how contamination happens:
>=20
> 1) Build with 'DISTRO=3Dmydistro bitbake application'. All tasks for the
> recipe are run and the directories in WORKDIR are populated, including
> the "application.service" file.
> 2) Build with 'DISTRO=3Dmydistro-dev bitbake application'. do_unpack is
> rerun and places the additional "application-dbg.service" file in
> WORKDIR.
> 3) Switching back to 'mydistro' will get the recipe from sstate cache,
> which works fine.
> 4) Changing application.bb and rebuilding with 'DISTRO=3Dmydistro bitbake
> application' reruns do_install (as expected). This leads to the
> packages do_install picking up the additional "application-dbg.service"
> file left behind by the invocation in step 2).
>=20
> Mike, Martin: Do you remember in which cases you encountered problems
> when sharing the build directory?

This is unfortunately a known issue and is one reason I'd like to stop
recipes downloading files to WORKDIR. Sadly changing that to fix this
bug is very invasive and painful but I think we do need to do so
somehow.

Cheers,

Richard


