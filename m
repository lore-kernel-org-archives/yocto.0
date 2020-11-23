Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
 by mx.groups.io with SMTP id smtpd.web10.33252.1606129925993733329
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Nov 2020 03:12:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=SAaStW+D;
 spf=pass (domain: linaro.org, ip: 209.85.219.175, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-yb1-f175.google.com with SMTP id k65so15572659ybk.5
        for <yocto@lists.yoctoproject.org>; Mon, 23 Nov 2020 03:12:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NIeneI76uQrm+vV6zIvqzsRUXs9gAhC/9niqKBNOlbE=;
        b=SAaStW+DjvXNu0WAhCSYxxgFP4AqgyUB8hi0Dm1YDZ6C1IXY5DsDFCWpiXIYAh881P
         tpEX6S1WATkxh2TIXJCCBZcpWbsPeQB79UO2P3Mj5gduJf5yqSKWWBV8lxphjiZUm/U2
         XJlwx7DXKo6oiB2/Qj/3sjmm6Ub5M1rGK8dScLv11CChQtFueranfgE+rr7atPvPt4xC
         +tffbkOqTzH6nJcNxeaKcS0d4oUf91wqSB1vs+5eIr/41AqAs3p6bcX6xmzYSR/ZDlTJ
         2pW6cvv8mXU0e/mNhg0qVVuEcttMvWbhDfXoWj9ZaRutcxz0G4aop4Mh0LODDUSeRC64
         NmFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NIeneI76uQrm+vV6zIvqzsRUXs9gAhC/9niqKBNOlbE=;
        b=FvdB+ymEySrOV4uvc3PP59FVYboIw+5XIfpynHaI8WVcjUL7lZ9s3jBQFkXUl6D/UF
         EJC67dOoWRWa6tAGZt28d5HDp5jHMlfLhx6CRFwSECfHrh5SNgvACM4PieOdxMBvGp3L
         8ewYKxY9XFw92PhOPRA3ExOdeFqDQygbRVrm4tak1ek47jPt1GuhYA1NrtjKjRnnlN9Y
         LC9+FybLPj7piWThlwhDXwlTkkMjWo1ueo00Ryzgd/soBhQKoswmZJpT83tRGH1LsDlm
         6Rr4WLxUmR0iaczNBjn0/n1nbtoYvrXkVfHT9EKSTWiC576FTJoVjumW4aMFZvVlzZI9
         YEuw==
X-Gm-Message-State: AOAM532alpFmMio4Uzy/n7P0Ch2LIzvH3Cr2wgfoT5fFohV5wuMN6XTY
	vG6M1M3B0B/wV94BbhRrhkpQybE8kunbSp59O8Vkww==
X-Google-Smtp-Source: ABdhPJwrqKhHbOjqlEIZdY2+vGIzEsQD85tf2umnVm2OIePzi7TDtKNBoPsY4qM8+02Np2Pr2yqUbsAOtqZYjyyA+dk=
X-Received: by 2002:a25:6e8b:: with SMTP id j133mr40131444ybc.273.1606129924962;
 Mon, 23 Nov 2020 03:12:04 -0800 (PST)
MIME-Version: 1.0
References: <3Hs8.1606128706482703504.nAtC@lists.yoctoproject.org>
In-Reply-To: <3Hs8.1606128706482703504.nAtC@lists.yoctoproject.org>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Mon, 23 Nov 2020 12:11:53 +0100
Message-ID: <CAP71WjwuG=M=vcNoRG4x7eTSL+J9fNmJxd17aehVS4a61XnXzg@mail.gmail.com>
Subject: Re: [yocto] Packagegroup Understanding
To: Charlie Davies <charles.davies@whitetree.xyz>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Mon, Nov 23, 2020 at 11:51 AM Charlie Davies
<charles.davies@whitetree.xyz> wrote:
>
> Hi All,
>
> I am seeing some behaviour when creating my own packagegroups which I do not quite understand.
>
> Using the example from the mega-manual:
>
> DESCRIPTION = "My Custom Package Groups"
>
>       inherit packagegroup
>
>       PACKAGES = "\
>           packagegroup-custom-apps \
>           packagegroup-custom-tools \
>           "
>
>       RDEPENDS_packagegroup-custom-apps = "\
>           dropbear \
>           portmap \
>           psplash"
>
>       RDEPENDS_packagegroup-custom-tools = "\
>           oprofile \
>           oprofileui-server \
>           lttng-control \
>           lttng-viewer"
>
> If I then include packagegroup-custom-apps in my image I am also seeing the packages in packagegroup-custom-tools being built (but not included in the image) while building my image.
>
> Is this behaviour correct? I would not expect the packages in packagegroup-custom-tools to be built if the packagegroup-custom-tools is not included in the image.

This is correct. When at least one (binary) package is needed from a
recipe, then the recipe is built, and all the resulting packages are
built.
So when you include packagegroup-custom-apps in your image, you
request the whole packagegroup recipe to be built, which in turn will
build all binary packages (hence all packagegroups and their
dependencies).

>
> Many Thanks,
>
> Charlie
>
>
> 
>
