Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 614A7EB64DC
	for <webhook@archiver.kernel.org>; Thu, 29 Jun 2023 08:34:24 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web10.3951.1688027659831599648
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Jun 2023 01:34:20 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=J0Q25eXW;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-307d58b3efbso419204f8f.0
        for <yocto@lists.yoctoproject.org>; Thu, 29 Jun 2023 01:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1688027658; x=1690619658;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mEkOzfJg67u8EEI+5/yF7oWbSoz7FqdoHpXMVY3dL74=;
        b=J0Q25eXWZMyePNVqm/JoXfKb/D5QbCAgU2OcXx0/Tti9fl05yrJDW2dsgs+CA9Eujo
         aT+fzk8NlzWlX1yxFVDlEeKsb1gBR65MyeWwdo4t1cLUKYjg3lFkr2rHBUMnz7IgDZvH
         ffrqH1AixZGbpiXQjb5LKNKJ794zSoUP3UPIU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688027658; x=1690619658;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mEkOzfJg67u8EEI+5/yF7oWbSoz7FqdoHpXMVY3dL74=;
        b=MzzORE2VnRRg3T3Fpb+9rYkKB4HDL0Zqvv/8E6XnCfuvwM3VzGG3ClTZYF07pZ1Z8A
         vXOjDj/Z00Gxug9efNy21mppwrnpJEm7nQ+FlufiwbAaiBwirA6c8ybK1r/xEvytGVMN
         ih/73kWsSdqERhBpZIf/0k1bSP5+sg6xSGgsMq7MtQfdwVS/pIQJX/iYunTxuNFdWahw
         lqrsxsKegSi4yiWOsJbjHHnmrVC+v+fd9xcqx7NZP7i6nS1dlMhQTGuN9dJW6sbEWwIx
         KEAVcfCI4UHshGnSXPo2SJWFdhvs/pGlS9zK+Pshk6WNOHVthD5mZseQATLWDLDfxwXE
         nsPw==
X-Gm-Message-State: AC+VfDz0ny6biZ4+Vb/V998KClM6CzpgbNQQNLj9mYugHt07ZStDKLuY
	UcLNdh/uIDzDRI4pr3OgcO5zlA==
X-Google-Smtp-Source: ACHHUZ7neHAmMJhBPSBfZBEjU2pllex/W3QgP9gs9GpdZsiyrs8UyuGOG9GtPyH+ig8uO9kn/axsHw==
X-Received: by 2002:a5d:5960:0:b0:311:ed6:e33f with SMTP id e32-20020a5d5960000000b003110ed6e33fmr14197503wri.16.1688027658180;
        Thu, 29 Jun 2023 01:34:18 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:5a50:d5ad:bafb:a717? ([2001:8b0:aba:5f3c:5a50:d5ad:bafb:a717])
        by smtp.gmail.com with ESMTPSA id j8-20020adfff88000000b0031412b685d2sm1826802wrr.32.2023.06.29.01.34.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jun 2023 01:34:17 -0700 (PDT)
Message-ID: <c561ff89da6b3d966fef9a57c3b0dd8e732639e6.camel@linuxfoundation.org>
Subject: Re: [yocto] report one objcopy bug and fix
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: cddiao@ambarella.com, yocto@lists.yoctoproject.org
Date: Thu, 29 Jun 2023 09:34:17 +0100
In-Reply-To: <23851.1688006932052886832@lists.yoctoproject.org>
References: 
	<8d7206ad63390ac5d3e69b61121a4de947128f50.camel@linuxfoundation.org>
	 <23851.1688006932052886832@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Jun 2023 08:34:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60472

On Wed, 2023-06-28 at 19:48 -0700, cddiao@ambarella.com wrote:
> Hi Richard,
> =C2=A0=C2=A0=C2=A0 the tar version is
> =C2=A0tar --version
> tar (GNU tar) 1.30
> Copyright (C) 2017 Free Software Foundation, Inc.
> License GPLv3+: GNU GPL version 3 or later
> <https://gnu.org/licenses/gpl.html>.
> This is free software: you are free to change and redistribute it.
> There is NO WARRANTY, to the extent permitted by law.
>=20
> Written by John Gilmore and Jay Fenlason.
>=20
> both of the two distro are the same.


That is rather unfortunate as we can't tell them apart :( I'm not sure
what we can do about this other than warn that 20.04.3 isn't supported
and/or has a bug?

Cheers,

Richard


