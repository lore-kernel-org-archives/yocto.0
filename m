Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
 by mx.groups.io with SMTP id smtpd.web08.19374.1622947348455469697
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Jun 2021 19:42:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ok91CjqO;
 spf=pass (domain: gmail.com, ip: 209.85.219.182, mailfrom: jupiter.hce@gmail.com)
Received: by mail-yb1-f182.google.com with SMTP id g142so309436ybf.9
        for <yocto@lists.yoctoproject.org>; Sat, 05 Jun 2021 19:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gGvJXY/5S5lD3qhoQR1VpChZke3NCBHRCrwfn+WuCJM=;
        b=Ok91CjqOsK4QP9gwPvDvpNUk4T2H4ZBlWwpHxZIZCjrYQiOca6Un50ihyQnrdHOn5m
         ZCWOwodD9ou/7FEPtDNor4/9y1XaV+Rq5A9s+9hLC1H3oZCmHzPPsZBNZJkNvw/e9p6z
         6wL7vaMo15rYo2a/yQrjwJiz81asTv+qCB2yvGerwNcRANTYP6vP4q19R5ryIKDJAFrl
         VFxpRpUrHjY8r67o78VU2PoR2PdL1i5F7woDsOs868d6Dzkaz9WZAVhYoX/2uMLXaZDW
         Fn7l9h5Kf1l0WOLXSTvOqsFAejuFhFagRz8y5G4vqV50my1RQDzlaxgEx8a3fuyBrprr
         Qxwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gGvJXY/5S5lD3qhoQR1VpChZke3NCBHRCrwfn+WuCJM=;
        b=MrXPVnxnYvMlJEl24nkYG3D/BNJnN/TNsRtC2a3CJoSLz7FMBeYibMrAxvkPuO/BuD
         PQPo0bMb8JyfuHt09CB742mPHgROZuf5Yp4cziZOfShCuxtTgL983ActtmYk6sR+Q3vO
         L/MrgMvsppUdSBut6Efk+QD3t+mq2wwHlWYauySUgqGm9/les6yrpu6EdYIG/vUo0/8G
         f6+/oBvmh03Kc3z5LxnxVT8pcKV+TnG8R1xDDtyYL6CU77Z9OrCHkELZ8IscUHsDU0RS
         ua508xzJIsPPXj8FhVOHH8TLqITBNe+hL6X8x06Wzr5sX3z7hAEZM2u6QDYrAQwOrLVn
         Tt7w==
X-Gm-Message-State: AOAM5325to/8gGII4U9MevqIOc0QtizvZq886fbqmlw7CYUfT70eDhqw
	vtHfbnZV2uDTtkZ5WUtBF6OEB84shAd9jx61qtQ=
X-Google-Smtp-Source: ABdhPJxEWI3sSMO5bSzfaZF3dbNR5hsA+aImVco/BbzjaL4CRE9fTNSCbLb/g6ulr8c0MqqbmPow1irmfTPPZIToQq4=
X-Received: by 2002:a25:f208:: with SMTP id i8mr14630719ybe.340.1622947347590;
 Sat, 05 Jun 2021 19:42:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWQ7vordSRwq-O2+8b5FV79EKHZM6s-dq49EWt6Ra5Owdg@mail.gmail.com>
 <06B2DF82-ACFE-4503-8174-39163A7DF959@0leil.net>
In-Reply-To: <06B2DF82-ACFE-4503-8174-39163A7DF959@0leil.net>
From: "JH" <jupiter.hce@gmail.com>
Date: Sun, 6 Jun 2021 12:41:51 +1000
Message-ID: <CAA=hcWQT-G5+92u8=4=u_aBLmREMUkNLm+y0hNvCOkvAu4_g6Q@mail.gmail.com>
Subject: Re: [yocto] Is it a bug or it does not support device tree /delete-node/?
To: Quentin Schulz <foss@0leil.net>
Cc: yocto <yocto@lists.yoctoproject.org>, 
	openembedded-devel <openembedded-devel@lists.openembedded.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

Thanks Quentin, that did the trick.


On 6/5/21, Quentin Schulz <foss@0leil.net> wrote:
> Hi,
>
> On June 5, 2021 12:43:19 AM UTC, JH <jupiter.hce@gmail.com> wrote:
>>Hi,
>>
>>I am building following imx6ulz-kobs.dts file to a dtb in zeus:
>>
>>$ cat imx6ulz-kobs.dts
>>
>>#include "imx6ulz.dts"
>>
>>/{
>>  model = "customized imx6ull";
>>  compatible = "fsl,imx6ull";
>>};
>>
>>&gpmi {
>>    /delete-node/ fsl,use-minimum-ecc;
>>};
>>
>>The building process was fine, but that fsl,use-minimum-ecc in dtb was
>>not deleted, is it a bug or it does not support  /delete-node/?
>>
>
> fsl,use-minimum-ecc is a property not a node, you need to use
> /delete-property/ instead, c.f.
> https://devicetree-specification.readthedocs.io/en/latest/chapter6-source-language.html?highlight=delete-property#node-and-property-definitions.
>
> Cheers,
> Quentin
>


--
"A man can fail many times, but he isn't a failure until he begins to
blame somebody else."
-- John Burroughs
