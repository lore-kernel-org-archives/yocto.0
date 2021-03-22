Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.989.1616441949462533552
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 12:39:09 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=cFbkCDfX;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: jpewhacker@gmail.com)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7068038C0636
	for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 19:39:08 +0000 (UTC)
Received: by mail-oi1-f177.google.com with SMTP id n8so14320684oie.10
        for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 12:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=MYFChmXzEZhlm8nKcac1klcYZkAf9mB9Zoi/Hcq/0ZM=;
        b=cFbkCDfXgddJrVWKdgLp68FauLvu9gGF9m6w34t1QYQaJWRlBa42/4Bbyr8nR4w6kH
         lOsCxuUNKGWILx6BGFj3+qZz8xFx4L+QPWwDaohWL5FNyMDuRDLKhOYuUYzaRqabXR6l
         b4cCwCBH14yWVtsYePyMLl7lf4hAkpridwblgYmyL8CVW6UP8avQO5Ab43+R75adJXz4
         8NvE1osTpgGK9UBQ3U3S7p+rUwcnLETlvJRnon98hwmSX0oGRwjjZmyUCq39BuiOPngy
         hwLk2841cCxGrUS6capZCcFHESLB1bq1ooeXysbXN8/FIvy/+2nqOgWUlVtk7NdfAJcM
         z1CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=MYFChmXzEZhlm8nKcac1klcYZkAf9mB9Zoi/Hcq/0ZM=;
        b=Iie+WQBqFmtQgiv587eI1isaBKpm1L0FSdJYhxE9T/w0Isbkx+MteMuV8t8uW5b34S
         H2qWVPiMh1UnWn/cuxH/l8U0LskcKx7Kz6QCV3+WuLNUgcX7W7ItNWxAeb7/dcydUQTi
         BquqD/e6XogCBURupmSehnvDyZQ+Lf7+aY/hxEBhRHh2m5QEodtS1FWttuLv0C7g6BgF
         nRX36eiBcEH2QPcvCywdNTkLhwxatrsSve6DTATl/lSpEa0H500UUaD2BGyQ5jC/zWXN
         f89HuKDVnB4rXq4Au7AjBVF/r1nzEEh//owvKbfTBpYBmkNHSAHdM2PPHKLnCkx2FDqG
         qdCQ==
X-Gm-Message-State: AOAM533m3sV8XuaR+o4bQLk3lHbkXLQjbsFWmkt1JanGIRNbRv8gOKk1
	/fTYlWL8gvMFRtJp7j4ORSM=
X-Google-Smtp-Source: ABdhPJwr0v96DwYkMRDrzJL/vJV2Cx9GLbEB1wYXr5ccI3ETHvIvAKBfzdUngMCBmm4rg2IqlJxcOw==
X-Received: by 2002:a05:6808:252:: with SMTP id m18mr461652oie.85.1616441947635;
        Mon, 22 Mar 2021 12:39:07 -0700 (PDT)
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id r2sm3569559otk.55.2021.03.22.12.39.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Mar 2021 12:39:07 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] Add machine definitions for NanoPi-M4 boards
To: Yann Dirson <yann.dirson@blade-group.com>
Cc: Trevor Woerner <twoerner@gmail.com>,
 Yocto discussion list <yocto@yoctoproject.org>,
 Yann Dirson <yann@blade-group.com>
References: <20210322134212.576790-1-yann@blade-group.com>
 <20210322144753.GA33662@localhost>
 <CA+4=imbkwhhbPF6UPEuBQ7qAraCPy7v-edWJdX00UVrBzW2B_g@mail.gmail.com>
 <55dc5940-fb02-4db0-75bb-835f70ff908b@gmail.com>
 <CA+4=imbHctrn=PtnJ9fBQVtmLpMNoDuvJLbFzuLmoyGSkSFJWg@mail.gmail.com>
Message-ID: <30e1cd54-89d0-fee9-e732-f19b0206e9ef@gmail.com>
Date: Mon, 22 Mar 2021 14:39:06 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CA+4=imbHctrn=PtnJ9fBQVtmLpMNoDuvJLbFzuLmoyGSkSFJWg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable


On 3/22/21 2:30 PM, Yann Dirson wrote:
> Hi Joshua,
>
> Le lun. 22 mars 2021 =C3=A0 19:24, Joshua Watt <jpewhacker@gmail.com> a =
=
=C3=A9crit :
>>
>> On 3/22/21 9:59 AM, Yann Dirson wrote:
>>
>> Hi Trevor,
>>
>> Le lun. 22 mars 2021 =C3=A0 15:47, Trevor Woerner <twoerner@gmail.com> =
a =C3=A9crit :
>>
>> On Mon 2021-03-22 @ 02:42:12 PM, yann.dirson@blade-group.com wrote:
>>
>> This supports both the 2GB and 4GB versions of the board.  This is not
>> done with 2 different machine definitions since only u-boot has to
>> change between those two configurations, but with a NANOPIM4_HW variabl=
e
>> to set in local.conf.
>>
>> Traditionally in meta-rockchip this is done using two separate machine =
files
>> with all the common things factored into a common include file. See
>> tinker-board and tinker-board-s as well as all the rock-pi-4* definitio=
ns for
>> examples.
>>
>> I would prefer if the same thing was done here.
>>
>> Damned that was how I did my first patch, I just felt it was much
>> better this way :(
>>
>> Digging up that original commit re rerolling.
>>
>>
>> Wouldn't it be useful to have a standard way to specify such hardware
>> variants, that
>> would be recognized as such by the layer index ?
>>
>> FWIW, I'd rather u-boot could automatcially detect what variant of the =
board it's running on and do the right thing (usually, just selecting the p=
roper DTB from the FIT image). The only reason I did not do this on the roc=
k-pi-4 is because there doesn't appear to be a way for u-boot to detect whi=
ch variant it's on :/
> Wait, it's only the dtb used by u-boot which is different in this
> case, the kernel uses a single dtb for both variants.
> Those probably get embedded inside the bootloader, in any case they
> are not those embedded in the fitImage.
>
>   #include "rk3399-nanopi4-u-boot.dtsi"
> -#include "rk3399-sdram-ddr3-1866.dtsi"
> +#include "rk3399-sdram-lpddr3-samsung-4GB-1866.dtsi"
>
> I have no clue how easily the two boards could be told one from the
> other (let alone if that can be done safely),
> and I feel that would rather be uboot-side work, rather than something
> to be solved on the yocto side.

Ah, I was referring to the DTB used by the Kernel (which u-boot can=20
switch), not the DTB used by u-boot itself (which AFAIK is compiled into=
=20
u-boot and cannot be changed).



>
>>
>>
>>
>>=20
>>
>
