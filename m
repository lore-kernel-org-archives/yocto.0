Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 133A5C7EE24
	for <webhook@archiver.kernel.org>; Fri,  2 Jun 2023 20:04:09 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web11.5378.1685736244721722253
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 Jun 2023 13:04:05 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Qb2q86Hc;
 spf=pass (domain: gmail.com, ip: 209.85.221.46, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-30b023b0068so1922982f8f.0
        for <yocto@lists.yoctoproject.org>; Fri, 02 Jun 2023 13:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685736243; x=1688328243;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hfDp2Q9avBXBLz8us24yygz2WMB6fEz5jRHv8l/vGeU=;
        b=Qb2q86HcimOoR8aX6BjZWfRzZLphfm6kRB9a6/q/FFnGKVQLhTHWg54rdoUzo8xAXf
         dKBD/Su6A6uJcfzMORaIxnYeTEIOPPOFBAWEc4RqPiUG21nnIF5yRrQYdYFLqR/idcii
         uSwgA7U7lQ6/k0WSZqaQ4R0dA+HWqBbIskiLpKPrwoljlErN4cTy8vtxRXwJdLneEwqQ
         giZOmgvYQ+9b/OuiZa5fvo294Q2sa0lu/g/ypvDh/RYD/MUYJt/dif8rmt/WIItGHfOC
         J+q+SqX+mkT+eZIf02a3Rm3ZGqYK0aiha7usKfExmBPJ1Ze55JCzN3DQLC3OWwGj2dNu
         s86g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685736243; x=1688328243;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hfDp2Q9avBXBLz8us24yygz2WMB6fEz5jRHv8l/vGeU=;
        b=G/s0lWwj6QQMixVQLUzk4DeHcMngUw7yHyFFzSTTrFIbfxR1OOdu/Pc6fpiD0xES8B
         svpLMDbUyDdCP1pDvhxTjCYEJQYSd1Z88NVbmqvZaoEa6v7ufPo0VMQqeMNz+jJHS8Ok
         unYvIpQTN7hSpyqvDtppZ/WYZPHNR+ElfQ90yz3Tfj6LUMSOxLKdoRjhxRjiwCWhoIfB
         yhLBKr/V1SeLrcH5bGbDdr5KRQwE+ewBKQY6jf8Bbo6vkidbXzP0i3swZT5+JqlXBYHr
         dUm0FippzF7F3xMdyfOULizUTZr10QT8Q9l2171M06cnvsTPDXu2Rr6cj1i3NphN4kZZ
         rtMg==
X-Gm-Message-State: AC+VfDz9ZHBhi41mKQ8oFdWBkgIuFzc3KIcCd4yYTJrLXt6d1dxro40F
	zgKFqC8tz4Ch4YtiyeAVw0Q=
X-Google-Smtp-Source: ACHHUZ5rFPUfnBivLRpOKlwNqMLxnFP+lmX32ATPXL7m9Ddu0AxqdfADAO3nBcPhIBz+5hmXm+3Jfg==
X-Received: by 2002:adf:f403:0:b0:309:599e:ea81 with SMTP id g3-20020adff403000000b00309599eea81mr600039wro.3.1685736242859;
        Fri, 02 Jun 2023 13:04:02 -0700 (PDT)
Received: from nbadrian1.lan.ffah.ch ([2a02:169:59a6:0:4a42:edcd:e65c:4e9b])
        by smtp.gmail.com with ESMTPSA id s9-20020a5d5109000000b003063a1cdaf2sm2530560wrt.48.2023.06.02.13.04.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jun 2023 13:04:02 -0700 (PDT)
Message-ID: <7a7cc5af5a835013955e2292fa74d104c1b9f1f4.camel@gmail.com>
Subject: Re: [yocto] NetworkManager recipe installing both sysVinit script
 and systemd service ... which to use ?
From: adrian.freihofer@gmail.com
To: steve_evers@hotmail.com, yocto@lists.yoctoproject.org
Date: Fri, 02 Jun 2023 22:04:01 +0200
In-Reply-To: <7BUH.1685655291398024190.AWbR@lists.yoctoproject.org>
References: <7BUH.1685655291398024190.AWbR@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1 (3.48.1-1.fc38) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Jun 2023 20:04:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60165

Hi Steve

Maybe this discussion provides some hints for you
https://lists.openembedded.org/g/openembedded-devel/topic/98852053#102633

Regards
Adrian


