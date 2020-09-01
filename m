Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com [209.85.167.196])
 by mx.groups.io with SMTP id smtpd.web11.10400.1598958224163415624
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Sep 2020 04:03:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=BGqp5Nfx;
 spf=pass (domain: konsulko.com, ip: 209.85.167.196, mailfrom: paul.barker@konsulko.com)
Received: by mail-oi1-f196.google.com with SMTP id 185so752872oie.11
        for <yocto@lists.yoctoproject.org>; Tue, 01 Sep 2020 04:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ANOyegmVvtZgkOVDEMUresw2lNurrPPYaePUghSllhg=;
        b=BGqp5NfxJ4pFU4fGGFKH9D4a8uPd6wGiV6+WiKDA2o2EDQS8nvRdKD/KqjfeCOxOX7
         ZdNJvHxarOvNvJd0itxhq8/i9zISKcl5iDD2o1tAqIACLcFlZEqBFXu24tNy9WgStLq3
         DFm3LqpJ1+S+CVSqW5qXkGtqYZpojNNE6o8Hc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ANOyegmVvtZgkOVDEMUresw2lNurrPPYaePUghSllhg=;
        b=SzmJ4QYBkKICGUyhYg1cCazaATlQX7coTLkz2t57VIJUvdivPzktYtWvs8KGhOU14B
         rSkKTJLraZj45IH785TKDMLyJSoEUlBq2+Tq1yD/wrwsf/P1nabZBskLj2LWPCi1pGME
         kacWqDLmZNgKTlG/Tn0YDTg0aIQx+Y1qM+YRxEUo5UwQ1OyXb6NH39koPh5gxYc6KVlP
         wlXJ/Bdx93k7MUpHG/GlL+9+j4sBqJxsPDgMSyOtBgIyZzWBf/iyU8LYQ3BkMd29COpk
         8KyL05BvMoF2fhZW1FXD+4+isLJ7KUHziKX9Ve6LyPVD88KGyhFeI1xwW0tGU1uHwbVw
         i6KQ==
X-Gm-Message-State: AOAM531IP0INaOnj0vtYhMLAsGwrh8sZREc84oQJlkQW6BbjPNLn/XU+
	dPrHEBzJ3jNG+cwrf0aJcIjc0QwBasjNEeOzjMTm+w==
X-Google-Smtp-Source: ABdhPJxktO7cRHuS6zaj5cXYmWHsfmf3XoIePfd9ZO+dFaNbkqZ0pqiDdYZC+r7d3VSnyBqTCf5IZriyeX1ou4JbDU8=
X-Received: by 2002:aca:670b:: with SMTP id z11mr700514oix.6.1598958223519;
 Tue, 01 Sep 2020 04:03:43 -0700 (PDT)
MIME-Version: 1.0
References: <8B1s.1598955769274779937.Mx7T@lists.yoctoproject.org> <CAEt6Nwq30AiBo6+u39HLubK511nLnkGg6DMoj2kQLVAzpWjkHw@mail.gmail.com>
In-Reply-To: <CAEt6Nwq30AiBo6+u39HLubK511nLnkGg6DMoj2kQLVAzpWjkHw@mail.gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Tue, 1 Sep 2020 12:03:33 +0100
Message-ID: <CAM9ZRVv77pUMpH5cZZYf5qhzpGjbtiR5q8q-ib=AQqEAOtLXzA@mail.gmail.com>
Subject: Re: [yocto] Information about Yocto Dunfell components version #dunfell
To: Josef Holzmayr-Khosh Amoz <jester@theyoctojester.info>
Cc: Yocto_user <avinashyadav94it@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 1 Sep 2020 at 11:25, Josef Holzmayr-Khosh Amoz
<jester@theyoctojester.info> wrote:
>
> Insert the package names into http://layers.openembedded.org/layerindex/branch/dunfell/recipes and see for yourself :)
>
> Greetz
>
> Am Di., 1. Sept. 2020 um 12:22 Uhr schrieb Yocto_user <avinashyadav94it@gmail.com>:
>>
>> Hi All,
>>
>> I read the Dunfell release notes but couldn't find the version detail of following components:
>> bzip2
>> cairo
>> faad2
>> fontconfig
>> freetype
>> gdkpixbuf
>> libav
>> libffi
>> libjpeg
>> libogg
>> libpng
>> libtiff
>> libvorbis
>> libxcursor
>> openexr
>> openssl
>> pango
>> pixman
>> stb-image
>> swscale
>> theora
>> x264
>> zlib
>>
>> Please give me the version detail of these components,  we are planning to use dunfell but before that we needed the version detail of all these components in Yocto.

Also worth noting: The exact versions used will depend on which commit
from the dunfell branch you choose. You should follow updates to the
stable branch to get the latest security fixes for your packages so
the versions should not be perfectly static anyway.

-- 
Paul Barker
Konsulko Group
