Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
 by mx.groups.io with SMTP id smtpd.web11.8376.1574751266893438447
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2019 22:54:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hKUcoVWB;
 spf=pass (domain: gmail.com, ip: 209.85.166.50, mailfrom: jupiter.hce@gmail.com)
Received: by mail-io1-f50.google.com with SMTP id z26so15783685iot.8
        for <yocto@lists.yoctoproject.org>; Mon, 25 Nov 2019 22:54:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=7JZ9vZXuiZ5cYdVNye3MaH+wByRYePQNrt/JbAg/Dmo=;
        b=hKUcoVWBrUWlwTgXLP8POry54RGQYjpyD0LuynzYj4nPayn96x+DJp0pbDLMgRRECZ
         1c0h8JdUr24VN6UoRfdFjJ1hAenI4F32Z3x8RvCb8YDMoeEKv9gv/soWqawuCZlbtqmd
         Y1CRwrTvqPyJUDqj4h9vzwPrxEUtUF+8GlfQbH17j1zL4gqYm02g+MGsJYyUmSGmvBHF
         jADnLGghdwBnZCKIR0vDIZM5MYvN+ct7Px/8xEoappoosE3oLIt57O47SPOomy7Yio+1
         tjIs1aZkdWQQC716BAIGp4Lc3qs0Zumb1oySdw4ubPzXufYwdpFinNECmMIw4JXsPlBy
         Ep3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=7JZ9vZXuiZ5cYdVNye3MaH+wByRYePQNrt/JbAg/Dmo=;
        b=RS9ABX/mAXCbT99nljqam1FLzC0XiWinPOqe89W58p3hCDsxdVK9pr5G2dUovg4j+q
         IPYJMilXjwHLWDAvQWR6PjTTgrnvmjRHiicc2/Ii1XkuaT09CSIO1hLFI09vImgfa5q/
         upxL5uItdMLro/IFCrufCTeGdS+lCf4lzy/zSohS/gsjweJbRtq2wq4nd+w8qyY3gLHK
         KBVlzcwIm/EExeO9fyKlyWpFUKSDZ0/0UlnvzEUOC7uVWEFPPcZDibPg/E/7f25D5RGF
         4Cp5Za1uFszs/s1rWLC4yU9af2dzCNwRGrsqx/fl7trI+suH2tFYcDbJKKd2M2RdANFb
         CCfQ==
X-Gm-Message-State: APjAAAUsguNHcFW5+zCCXlU6QGniXPN+8P3Qx4MsTIIeZHUyJKYyUPaC
	4OnVBoGoimKJOUU8en4YaNbqeeSmFuYZro57VdQuJTTM
X-Google-Smtp-Source: APXvYqx2DGyR1bvo2zDV7hIvHmyxUaFAgGnOOPeXZWOFIlSChPPQNay8E0MkI+wtaDwx+c1ETgHcig+Q5CFqXnGlpAA=
X-Received: by 2002:a5e:930e:: with SMTP id k14mr24036783iom.53.1574751266210;
 Mon, 25 Nov 2019 22:54:26 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:f24e:0:0:0:0:0 with HTTP; Mon, 25 Nov 2019 22:54:25
 -0800 (PST)
In-Reply-To: <cb99f223-9a19-3c88-b1a3-e67d6b7a6654@koansoftware.com>
References: <CAA=hcWR3Vhfc9H3VRf-Q1m44rX_ox2J-LjuPWHsB1Rrq-yrVTg@mail.gmail.com>
 <bc70cb07-37c8-3078-7c02-d7be487035fd@ibeeto.com> <cb99f223-9a19-3c88-b1a3-e67d6b7a6654@koansoftware.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 26 Nov 2019 17:54:25 +1100
Message-ID: <CAA=hcWRgAsMMWgpwPsO4+5FAM2PzVA60MoX9tMR2nyG9mb0K+A@mail.gmail.com>
Subject: Re: [yocto] Yocto build to add root password
To: Mauro <m.salvini@koansoftware.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Thanks Gabriele, Rudolf and Mauro, brilliant.

On 11/26/19, Mauro <m.salvini@koansoftware.com> wrote:
> On 25/11/19 17:24, Rudolf J Streif wrote:
>> Hi,
>>
>> That's done via the extrausers class in an image recipe. Add this to
>> your image recipe:
>>
>>  >>>>>>
>> inherit extrausers
>>
>> ROOT_PASSWORD = "secret"
>>
>> EXTRA_USERS_PARAMS = "usermod -p `openssl passwd ${ROOT_PASSWORD}` root;"
>>
>> <<<<<<
>>
>> Make sure you use the backticks (`).
>>
>> :rjs
>>
>> On 11/23/19 2:25 PM, JH wrote:
>>
>>> Hi,
>>>
>>> I built a Yocto image and I could log into the root without password,
>>> how could I set up the Yocto build in a receipt to set password for
>>> logging?
>>>
>>> Thank you.
>>>
>>> Kind regards,
>>>
>>> - jh
>>>
>
> Hi,
>
> pay attention that "openssl passwd ${ROOT_PASSWORD}" command handles
> only passwords up to 8 characters (the extra characters will be
> truncated and the generated hash is for the first eight).
>
> If you want to use more than 8 characters in the password, use another
> password algorithm instead of the default one. You can see other
> supported algorithms typing "openssl help passwd".
>
> For example, command could become
>
>      openssl passwd -6 ${ROOT_PASSWORD}
>
>
> Regards
>
> --
> Mauro Salvini | KOAN sas | Bergamo - Italia
> embedded software engineering
> Phone: +39 035-255235
> http://KoanSoftware.com
>
