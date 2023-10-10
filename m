Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0ADA9CD80CE
	for <webhook@archiver.kernel.org>; Tue, 10 Oct 2023 13:22:39 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web11.90898.1696944152081381395
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Oct 2023 06:22:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=HL8XVuXp;
 spf=pass (domain: smile.fr, ip: 209.85.208.48, mailfrom: yoann.congal@smile.fr)
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5347e657a11so9390360a12.2
        for <yocto@lists.yoctoproject.org>; Tue, 10 Oct 2023 06:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1696944150; x=1697548950; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yFI9BS3MhP9rPbAIWTFsN4fETU2sv9ywYn6cmow32wA=;
        b=HL8XVuXp7OHUElBy39IQcsyB8NU4YCBmy+N0pF2WCn0xYifAHc0sEsw0tNKMxjBNst
         xIaM7+rej7yhXR2u241HbF+xFKYpUsiyiflbeXOB3zE/b7zZ4/LCyQ1dvByMukN5c2Vz
         bKIq/8JQ3+LlvfCxkkSyF2d7jgE1wUknk1zMwD6wnz02HMZR0vZKcIg86MDLM/0N8/nd
         e7votPeT/mUwrpTo/KNSbW5p/jep+d7lEEoyyIreqIvOO3PPMo2NfYBAsxG4NMu5x3Po
         bE1TOtag01dAR/S3Xcqz3ewUax4u70ZUPCxEYwKfyvToefC1wMXCUuXvUCo9YsUQ/aR/
         rZfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696944150; x=1697548950;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yFI9BS3MhP9rPbAIWTFsN4fETU2sv9ywYn6cmow32wA=;
        b=mNXtTWr9DfjJWYTyed5v+HHvQapnYuwtF2xzkScc3B7C+6S+QOgXbCw1Yd6zbAGFvW
         ohY0cPkVH8bEzPm65Pmx3Hcf1ZxTdAz5/dudXtRebov5LS9WwWgDBVaM/ft9JQDCkRB8
         IS8wD0EYtenW/vn20Nrea6z9lNZj7lj0vjKzaLTGIQR+Mdn4nY+FLDWg3wD0JE/S2pAx
         Al/uuar4VZM2sJvOhI3Att+AtEFVqcWN8kEIuOjghHPad7EUKVzhHxvaziX8TagpgRWC
         6NIQAWY8WTpuiDysrNdII8TF4Dlc/UCaSfXnowvcmBbY7FwiexjO7O9lqB8hahbIfr//
         DcRQ==
X-Gm-Message-State: AOJu0YxboMMEMc2V/zMaY8H88z+n9YNhpJqJVLvvy78nD2sa5JLJzisc
	WQ4JgmdvyothTOfQW6eXFEcsGvRsJyfUwb7cLZ77LQ==
X-Google-Smtp-Source: AGHT+IFuvd0XdU4wNGRrbCRlfqeDZF2p0fGa2Ho2a35rmyOjhOtXaAUddXfUukODNFRmu+UM+iN2Qxzs++nSVDfDNz4=
X-Received: by 2002:a17:906:c801:b0:9ae:961a:de7f with SMTP id
 cx1-20020a170906c80100b009ae961ade7fmr13567033ejb.30.1696944150335; Tue, 10
 Oct 2023 06:22:30 -0700 (PDT)
MIME-Version: 1.0
References: <20231010100701.83119-1-fabien.thomas@smile.fr> <6cb6a5cfec49bcbfbdc509db31c615a551befaca.camel@linuxfoundation.org>
In-Reply-To: <6cb6a5cfec49bcbfbdc509db31c615a551befaca.camel@linuxfoundation.org>
From: Yoann CONGAL <yoann.congal@smile.fr>
Date: Tue, 10 Oct 2023 15:22:02 +0200
Message-ID: <CAMSfU+7fmckRepeC4wgwTWJ9zgWyrGqviQ+vTi9TggfnEELOyQ@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json :
 reproducible-meta-oe build fixes
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Fabien Thomas <fabien.thomas@smile.fr>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Oct 2023 13:22:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61303

Le mar. 10 oct. 2023 =C3=A0 15:14, Richard Purdie
<richard.purdie@linuxfoundation.org> a =C3=A9crit :
> That isn't actually valid json but I fixed it and will schedule a test
> build.

Huh, sorry about that :(

> I also tweaked the shortnames to make it clear it is meta-OE as
> "OE" isn't very specific.

Thanks!
--=20
Yoann Congal
Smile ECS - Tech expert

