Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.3984.1617133260174198912
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Mar 2021 12:41:00 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=tP6osp7V;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 76FA938C057C
	for <yocto@yoctoproject.org>; Tue, 30 Mar 2021 19:40:58 +0000 (UTC)
Received: by mail-pj1-f50.google.com with SMTP id ot17-20020a17090b3b51b0290109c9ac3c34so9997086pjb.4
        for <yocto@yoctoproject.org>; Tue, 30 Mar 2021 12:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QU48d5TZ9/Zqtj/KbRqbCZtCc6Eghl7UHKr/nNSpasE=;
        b=tP6osp7VzSggAEcVXf98wKEfT4XQnkUxaZpjSUQxzjpfuGiLF7PVVU+AcknSx3Vvh2
         sc66guUsLTGeiu2h7szUX5F3o5OmyejRkyWVfUow36MLYMG4zadIJOSYW0tYrS2/Zkej
         mdwuuzDWDDn+Q1NLpQ21NzfCWosLYNc5AXEZ2R3V/EMwR24CaXPGMflB3tqj9NmQqPoj
         AlsckfR0ZbVNXkKV7K8xmF36QCA9HVqMeRZAhlyr6e1P9TaLgqOH1+6aCLsIbO8Z8rfn
         XOxJN4f1T4Vv6m4wCSdzNLg7kXKCh2mmljgEF/k409HOQm+nB9OvPC6uBtS3WzZoNL+v
         gdQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=QU48d5TZ9/Zqtj/KbRqbCZtCc6Eghl7UHKr/nNSpasE=;
        b=iJwiUmS4GSFFZ65PiMo6hjQYyWR0w2zrriimXyla5Y/RSwhyIg+eqVGn+T+9GcFnJX
         Y42+UXhd3B//qmel5GGRjLpbSH/I4MfkpkIT2WwnGqfyITO7aAaKZTIbhJhqZMdmtrLI
         24dKxjZvNFuE2PWqIMZAD0kcqcZrFcMgj0X0VRNHrnKX3nZZgadvXji5neE3yY1tkBNB
         jU4iFPvTsFBomgnmFo0pXmuM3auvguE8I4cgLUtf5CDEYBgOp1hF/AgEm6RVaUlsDxIO
         689IR9TlHEDAJKxP8jMjgfYvVwR7xtlOPl/ix5rikJmR73wwK3ES7U9BSXAEWTCYmMuQ
         2jpg==
X-Gm-Message-State: AOAM530X3r7CKJEsntRDpx76uHa2vQNPyHntcPWCoKF8GwFkNJeEsjIh
	F/50/uIGYb+Ij4htQyD0MpNGiT/AsdeNng==
X-Google-Smtp-Source: ABdhPJwFmzdQwXI2a9RfRz5xwODccC4EDB2NGX24Rees2jrwLGtl7Y9FW9QwVTulx4hF6cIVSzXdnw==
X-Received: by 2002:a17:902:b598:b029:e7:147f:457 with SMTP id a24-20020a170902b598b02900e7147f0457mr29256725pls.68.1617133257546;
        Tue, 30 Mar 2021 12:40:57 -0700 (PDT)
Received: from ?IPv6:2601:646:9200:a0f0:d828:cc50:358c:26a2? ([2601:646:9200:a0f0:d828:cc50:358c:26a2])
        by smtp.gmail.com with ESMTPSA id gt22sm3487881pjb.35.2021.03.30.12.40.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 12:40:57 -0700 (PDT)
Subject: Re: No significant diff b/w qemux86 and qemuarm poky build of core-image-minimal
To: Randy MacLeod <randy.macleod@windriver.com>,
 Yocto discussion list <yocto@yoctoproject.org>
References: <4eef7ff7-0bcc-3bb7-6b08-a194de2b2491@windriver.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <111337d5-90b2-2bcf-8d7b-b68ed39e265b@gmail.com>
Date: Tue, 30 Mar 2021 12:40:55 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <4eef7ff7-0bcc-3bb7-6b08-a194de2b2491@windriver.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable



On 3/30/21 10:45 AM, Randy MacLeod wrote:
> Khem=C2=A0 was asking if anyone had seen a >30% difference in build tim=
e for
> qemuarm compared to other machines. I don't when building on my system:
>=20
> rmacleod@yow-rmacleod-lx3 b/c-i-m-x86 $ cat x86
> real=C2=A0=C2=A0=C2=A0 43m29.142s
> user=C2=A0=C2=A0=C2=A0 0m19.887s
> sys=C2=A0=C2=A0=C2=A0=C2=A0 0m4.110s
>=20
> rmacleod@yow-rmacleod-lx3 b/c-i-m-x86 $ cat arm
> real=C2=A0=C2=A0=C2=A0 42m58.185s
> user=C2=A0=C2=A0=C2=A0 0m19.546s
> sys=C2=A0=C2=A0=C2=A0=C2=A0 0m3.867s
>=20
> This machine is relatively isolated in that there are no other users.
> The arm build was done second and I didn't pre-populate the downloads
> but so that may account for the 30 second difference.
> I wasn't using sstate for either build.

Thanks for this infor Randy, really appreciated, I think I will also=20
look at the h/w angle.
