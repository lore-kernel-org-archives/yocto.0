Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web11.1915.1575454262644237466
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Dec 2019 02:11:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=fQkc2s4M;
 spf=pass (domain: linaro.org, ip: 209.85.167.54, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-lf1-f54.google.com with SMTP id v201so5616579lfa.11
        for <yocto@lists.yoctoproject.org>; Wed, 04 Dec 2019 02:11:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=WPMtrJOdhS28GpWB+ciKOakNuTVs07kT5pPpD2iL+sU=;
        b=fQkc2s4MR7KoPmvUVQ+Yi9utFBPqm/qssQlWZmWqX6WUu9Yv1MYW94wL7AClKLxgXf
         sHGblTifqyuUuSSiWzboGDh9Q+kYs0qLQlD97Aan5jxvUtM8LM5haNouIJd0Tz0xdzBE
         OoXdiT5WCCs4LviErROBuWB5SSjXJW2yjf5FJ6wq+qm6lbpyelOpUq8HlZz+87PR9BNl
         QA+yHekmqwZlCSR5Djxg1Fqw3eoHknExe7g1NlO4PIua4DL8JXJLDQdN1K9/HL/sqkos
         WCTWgPCH1L/cOyFEQ8920dJu9mXDwl28XSbqRw9cuj9E99QN00y9Y9bbfLoardzQcZi0
         lHBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=WPMtrJOdhS28GpWB+ciKOakNuTVs07kT5pPpD2iL+sU=;
        b=FcyZ2N6+kJuDLuZx+XpqxTkro3y3F+Kzvo0eHFrFNp+pQQUUGWzYdQxZ2zzibRlWUr
         eIJ9CzQhcpBUfPa5j7Q8rudVwYCSK0wOTVOK2yM8RgBiugCNjhomrv4N3KxBVFRt32q9
         xtK2zm4wdJEnzvQp5Uf6TIoYNgi/ywoyebR+j1I8Js6IgEZab8HvTCCUGHaG9jmBzxqD
         kHnJZBdz0MpiUwoVXY9CMc5cQRxiuC4D6v7qfk10lzGztNa8bchVcXKKr3PJEsbPtDyM
         2gGfd7SaTvbRzu7996ySwgOt+WyLFr4ZvuhsJWL93ff77bE6UwNDAkneVBo24xPHjHJm
         1xKA==
X-Gm-Message-State: APjAAAW1ksLZ2Ikx2cDRohyiaWzTL7v9+xVJf2KgsAb/uiuLzP7XKSSt
	6aouYj3DHGePOLrGDGalwlXcMQ7U1uTHNuz/YrtXOA==
X-Google-Smtp-Source: APXvYqzqjAGy3hIagO4+VP/deryqRA7Rp+99E9ti0HFZt/kW1mSrpETTiQt6rsPT0YAInVi8Un9huW0y+1c5saioCwo=
X-Received: by 2002:a05:6512:c7:: with SMTP id c7mr1603520lfp.120.1575454260603;
 Wed, 04 Dec 2019 02:11:00 -0800 (PST)
MIME-Version: 1.0
References: <04e3ffe3-4733-4010-ac76-29b72ae20c89@www.fastmail.com>
In-Reply-To: <04e3ffe3-4733-4010-ac76-29b72ae20c89@www.fastmail.com>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Wed, 4 Dec 2019 11:10:49 +0100
Message-ID: <CAP71Wjw=1yz2_hbZHCmeCyHTaBqTfWjpHEkBARf+eXbnNtZB3g@mail.gmail.com>
Subject: Re: [yocto] Missing layer in the layer index
To: Paul Barker <paul@betafive.co.uk>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hi Paul,

On Wed, Dec 4, 2019 at 11:00 AM Paul Barker <paul@betafive.co.uk> wrote:
>
> Hi,
>
> I'd like to make sure meta-sancloud (https://github.com/SanCloudLtd/meta-=
sancloud) is listed in the layer index. I can't see it listed for either of=
 the branches we support (thud & rocko). However, when I try to add the lay=
er I get the error message "Layer with this Layer name already exists."
>
> Perhaps this was already added with an old URL. Is there any way to get t=
his fixed up?

yes, this is the reason. It exists with the following URL:
https://bitbucket.sancloud.co.uk/scm/yb/meta-sancloud.git

The maintainer for that layer is not listed.. was it you?

>
> Thanks,
>
> --
> Paul Barker
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47554): https://lists.yoctoproject.org/g/yocto/messag=
e/47554
> Mute This Topic: https://lists.yoctoproject.org/mt/66429934/1279857
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [nicolas.deche=
sne@linaro.org]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
