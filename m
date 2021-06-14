Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web10.27785.1623665625997188749
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Jun 2021 03:13:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=oF4JW1me;
 spf=pass (domain: burtonini.com, ip: 209.85.128.43, mailfrom: ross@burtonini.com)
Received: by mail-wm1-f43.google.com with SMTP id l9so11807906wms.1
        for <yocto@lists.yoctoproject.org>; Mon, 14 Jun 2021 03:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vnzPIdIlAvSbGWxftcywlv3YdsCup50zifWcWxqDdIM=;
        b=oF4JW1meidlLULoeZKVQ7hM7V+XKZQX1AKNTjHGYrozSj4CGYfilVU/mAlWo0an9vG
         nxFUa3iLNQUGuuZgEOUfRPb59wGLjfjbtsyyC31y2vlrnBeHE5PZcnNZaaeQE0zEYpsw
         jPxg5s0eQoMPBi69t57nyPbmVnCss4eDkongd8XypiGQxM9wSzmwsMbLXnmZkjS6RxeL
         vMhBIxA4VJmjL17aJAS3gAZew4bc9yNSHrllPeIT1DlKbvQ5xbCcLc5+iQIUlaNcFcTQ
         4Bkd5982sLCKszNlcsJ5wDU2PFhTyT7AHTrN+f/b2aiGBD+hROR3mS9k1ON8U0gOQ7Q2
         HDrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vnzPIdIlAvSbGWxftcywlv3YdsCup50zifWcWxqDdIM=;
        b=rWQCAaIkBhNqRlsDt7yfEW7hI+yaT+82dwMZc+KmeJ6RMkhUmO8Yr5zNtNPjDj/LZv
         hPJ1kNkLTMJ2x8vcQwmV8/iae7nzK6NvzvZVNoT8N0tm5Di0daaMojT5BxIxoD6wX9Gs
         SvmNPI96mXhabPKdNDwva5/5oyWmLw/ZALChhZrNQ+FLZ+wLjr65bHZBtsB2Kd3vvDQr
         8RdRvHVrrGVP+bX9HPbgzGe/e7RKaAWlQlJHJwp43FwCCdgIRhHFuQQa5NfrkRCksXh3
         BFnmKBuXWTwyFJVMW+7GDTBdmGVpS0cQ1N4fsbhq3hJxQAhCBH4HiSVnZ5Pywy9OaJmc
         K0xA==
X-Gm-Message-State: AOAM5301ita6bOQ/cxCnpsHC0ksT0Qm8HDJAEIRnXe36NgVViJ/O75YT
	UT03644ZGcvHaSds5qeNiZ8Gx0SzDwtDCKfde7NNJA==
X-Google-Smtp-Source: ABdhPJw8Mst4apBLivFZZZ6t96n6RhSFZdF9O9dfTopWtVr0sULf8jlm8KeAPpZaHhNGd+10CKC7uKC096YwlOEoCXc=
X-Received: by 2002:a05:600c:251:: with SMTP id 17mr31879880wmj.137.1623665624320;
 Mon, 14 Jun 2021 03:13:44 -0700 (PDT)
MIME-Version: 1.0
References: <CANVQz1Z2LtWAbFAyeXEk=JQUN1D8TFvGzWXfCNeYnHgS1qdFGg@mail.gmail.com>
 <CAAnfSTsEsgc7cAdikFhiZFZDfCX6HZ0mfq49yrrTcgYBS2sC2A@mail.gmail.com> <CANVQz1brFG-t4k3HZvWU_d6qp6DM_h3R_23hkME-Fx7i5GWTAQ@mail.gmail.com>
In-Reply-To: <CANVQz1brFG-t4k3HZvWU_d6qp6DM_h3R_23hkME-Fx7i5GWTAQ@mail.gmail.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Mon, 14 Jun 2021 11:13:33 +0100
Message-ID: <CAAnfSTvV1BbXEeM+8HO01ZYR8rhq2AibN1i2LwJzYavSBin1aw@mail.gmail.com>
Subject: Re: [yocto] QEMU Size Increase from Yocto Thud to Zeus
To: Aashik Aswin <thisisaash9698@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Yes, look at the PACKAGECONFIGs and setting QEMU_TARGETS.

Ross

On Mon, 14 Jun 2021 at 09:04, Aashik Aswin <thisisaash9698@gmail.com> wrote:
>
> Thanks for the clarification, yes I am installing QEMU in my image. Is there some way that we can disable the additional architectures and streamline the size ?
>
> Thanks
>
> On Fri, Jun 11, 2021 at 8:48 PM Ross Burton <ross@burtonini.com> wrote:
>>
>> Are you installing qemu into your image though?
>>
>> Qemu did get larger as it is built with more architectures enabled,
>> but unless you're installing it in your image it won't make a
>> difference.
>>
>> Ross
>>
>> On Fri, 11 Jun 2021 at 11:40, Aashik Aswin <thisisaash9698@gmail.com> wrote:
>> >
>> > Hi Experts,
>> >
>> > I am upgrading my Linux from Yocto Thud to Zeus (5.4 Kernel) . After building I could see a significant increase in the size of the image.
>> > On checking with buildhistory enabled, I could see that qemu has nearly doubled in size.
>> >
>> > Thud (4.19) - 223084  KiB     qemu
>> > Zeus (5.4) - 474757  KiB     qemu
>> >
>> > Is this size increase expected or are there some additional configs that might have been added as a part of the upgrade ?
>> >
>> > Appreciate your help.
>> >
>> > TIA,
>> > Aashik
>> >
>> > 
>> >
