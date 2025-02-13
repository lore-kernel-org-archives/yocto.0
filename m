Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02DE9C0219D
	for <webhook@archiver.kernel.org>; Thu, 13 Feb 2025 15:12:02 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web11.13145.1739459520572830306
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2025 07:12:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ghvyNmdM;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6e45dbf15c7so7319056d6.2
        for <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 07:12:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739459519; x=1740064319; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fw7pib8ueIqnpZ7tpHyxNy8GY8/z8ygNbxnWDl1uva0=;
        b=ghvyNmdMAJON5nWdUuXu2ly6pdKi3csajds9mrDDqNLOYmEmSw0w3iP3Axr9V6aonh
         amRpvE9fIdkjjKWSrfqVei4JUJ3xbpLo2ocDoTBEzncSKhcGzpTR8k+F1uTt6ZddV607
         cF318rJoQhTnRl0hE7kPpeMfip2500web+kcjaBcFWBPtEHFZ6oKf8vHi8FigrJMc0s3
         qHvC0B54EuS+Ra9Q6waESjlGJu/vS9HJPMKL1AJCMQYYuO+KFzJk6tzObY+1VKmd6Lvj
         XYjWu15KCewG9GL81frvv8xk+QiP7NJ1lXjCtMMHS1wv4FgRcBmS5s+5fA6FDq3lNqR+
         QIVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739459519; x=1740064319;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fw7pib8ueIqnpZ7tpHyxNy8GY8/z8ygNbxnWDl1uva0=;
        b=mHvm5R+VzbxAzVu7AlfH+72DWXFp33yU16/Yf3YBo/X955BDl1fEVIFZ31AODST6n4
         eqhvlXwOkXmKr6YwhB9ZnvdUwQ7ew/4eMQFVa3DxhjqoAT1rs96iaAPos0DPya7TAhkR
         bktLvmliA6wfG25TbCBg5tdX/BcoVlwBhJ4MvEIny+bmZvNKzft16kveqz+40yXHCDVL
         is7wH2XPSAomI0QMDpr7mkqDoWSEnOh8/92W/BtDGsKLTWNKfqfPdEvQnPuL5cIsHYmi
         iQDv4O2V3QDeVirXd4YS+i5DGHSMoPzdLtZhUAbZEAKKkXrYcYXAv6IdZiQOBRxNAxyx
         48DQ==
X-Gm-Message-State: AOJu0YyIiKAIFYJJ9Aj/CEJxLz256iC9v8miqAufj64pFIHE/w65qoBo
	bS8f7jXYTQuBgcW/hhcla8/G3Gb/dHPz+iqUfnui7tIZASrWDXOXUwdrevzqIEb1pto6TzD8v8R
	OSYLLF85NNJJGWwHRQezzaEznxzt+NQ==
X-Gm-Gg: ASbGnct94qNE+uSJTqcHOp+T2MPFjGBunNiVJFit+scE7waWFvbaiRd9Z3S/G/bJqa8
	du319FVPKxwloBMu97q8CDQCwmBJlff8dnmr8du/SusGKESZuhqUySCvl1k2eIvMkF/I/OIXTjz
	1WD1qzBLJE9KirzjVrlOux1xwERiMoxbI=
X-Google-Smtp-Source: AGHT+IGFc2gbjB9/kM5endKcydFZPqVPOqnxoEB2XBCorTebyG/3WSlNmfD7JAzNcKwLlOM/VdeeQJMUeHjx1DE0Iek=
X-Received: by 2002:a05:6214:f22:b0:6d8:8fbf:d1b7 with SMTP id
 6a1803df08f44-6e65c15dd62mr52131036d6.43.1739459519601; Thu, 13 Feb 2025
 07:11:59 -0800 (PST)
MIME-Version: 1.0
References: <873.1739458759066142451@lists.yoctoproject.org> <873.1739459390019840192@lists.yoctoproject.org>
In-Reply-To: <873.1739459390019840192@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 13 Feb 2025 16:11:48 +0100
X-Gm-Features: AWEUYZloa9iUigZ7AJkUDfI8585X9cHkpxOtqjInak08WY7uyg-aWXTBge93FSU
Message-ID: <CANNYZj-8ebq4zP=pwo=rdQEg3Z48NYPk-LHJvcFPZ8QwjfCkiw@mail.gmail.com>
Subject: Re: [yocto] PREFERRED_VERSION not being populated onto the rootfs image
To: yocto@lists.yoctoproject.org, jdowd@slashdevslashnull.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 15:12:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64802

Sure, but do you still have a problem? I'm not certain after reading
your messages.

Alex

On Thu, 13 Feb 2025 at 16:09, John via lists.yoctoproject.org
<jdowd=3Dslashdevslashnull.org@lists.yoctoproject.org> wrote:
>
> And I'm now adding the recipe file that I created (sorry, should have bee=
n in the previous message). I just copied the original recipe file. Pretty =
sure that isn't how it's supposed to be done but I'm going backwards in ver=
sion, not forwards. Not sure how that would be handled.
>
> And for good measure I included my local.conf file.
>
> Cheers!!
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64801): https://lists.yoctoproject.org/g/yocto/messag=
e/64801
> Mute This Topic: https://lists.yoctoproject.org/mt/111149982/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

