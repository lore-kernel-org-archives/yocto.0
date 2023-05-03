Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E25CC7EE22
	for <webhook@archiver.kernel.org>; Wed,  3 May 2023 07:26:08 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web10.13267.1683098761431744115
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 May 2023 00:26:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=WtVEi6Yl;
 spf=pass (domain: linaro.org, ip: 209.85.167.43, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-4efe9a98736so5478227e87.1
        for <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 00:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683098759; x=1685690759;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NEFc4Rs/IyGD139QWvHtZcBzNKx/LI+zBaozd0wQcn0=;
        b=WtVEi6Yl3/+lN0HP55u1IHwV5N10DnyHUgwb+eLTzNe9o6xgtdB0Xrj3an/Jsgu6yU
         NT1EqERLw8seBcsSEljv/feK7QfDhvD+1dxsgNGlAkrag9srRqdSicKbnE60foWDwFR9
         87bli396Y63s2VAMrBnvz92xhP9l8SErlvqH7wafEsnVHqkUJCIuFvjUU+JHxN9zIjEv
         fXuvftwpDHmV72ijUh+oG7kTuqyYj3c4QqyY8VG190nAD5eaUhF0N3QIrBifGxGjR9jI
         Cz2y64cLhBf7KdW2LTxdyeNuGl1LEhWGTtYiBPwNoe9KlpHpavTYwoX5hhdOEcZZr6BC
         SQdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683098759; x=1685690759;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NEFc4Rs/IyGD139QWvHtZcBzNKx/LI+zBaozd0wQcn0=;
        b=hL3yPFdeBoUcd78+eHD4n6oiOFnnQWEKmeODjbYiUHPaHRGJF6In55IPDtizvAWYIX
         x3taQhRIMPK9d/6LNjovicQQXehxkjwMqZ6oXFmUrg86W2cpG6WeJ0w1hQzZS7N/G1WJ
         ppb01alnx3cACM+nuuANuTuJwnrgU9o/58EFwG/UowP37qqns62eLbvu8cGh21MCBcDt
         s/2/rvCXLHDyJXaUgVj0BK++Oe6DEutTWyi0+SBrMR7K4LgE3uukFUIP7mVdQZdd6znR
         hO8xQJXmZ33eb3yRXIH8x+9rJAdku5HhjvJGvxwllTr5AaSzMNBUfKgMa87Kv7N/0cW+
         ucSA==
X-Gm-Message-State: AC+VfDySYkSiT+08Ez0oY9ybEhfnHkGKtOLhhOhshW0Su+rFR+m5ILg1
	1PQYcxMpLwPZmA++q20wb7fNiA==
X-Google-Smtp-Source: ACHHUZ6tScN3qqZaK33/p+Giw1IJyRaNQIXpvss7v7n1ODd7GefQZwAYBlr4NBhTF1QS4a07MMcy0Q==
X-Received: by 2002:ac2:50d3:0:b0:4db:513f:fe2a with SMTP id h19-20020ac250d3000000b004db513ffe2amr647034lfm.23.1683098759574;
        Wed, 03 May 2023 00:25:59 -0700 (PDT)
Received: from nuoska (dsl-olubng11-54f814-94.dhcp.inet.fi. [84.248.20.94])
        by smtp.gmail.com with ESMTPSA id m9-20020ac24ac9000000b004edc7ea4e42sm5779626lfp.231.2023.05.03.00.25.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 May 2023 00:25:59 -0700 (PDT)
Date: Wed, 3 May 2023 10:25:57 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Anthony Abboud <antabboud@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Trouble Adding Files to rootfs
Message-ID: <ZFIMhfY3c8rMnarr@nuoska>
References: <CAEAv8SAsr=37-qCpzYU88=SO+vRWdkcz9kcD0B8SrODj77XZaA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAEAv8SAsr=37-qCpzYU88=SO+vRWdkcz9kcD0B8SrODj77XZaA@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 07:26:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59847

Hi,

On Tue, May 02, 2023 at 06:17:27PM -0400, Anthony Abboud wrote:
> HI Yocto Community,
> 
> I am currently working on build a custom Boot2Qt image to learn about
> How-To's since it's my first time playing with Yocto. I am successfully
> able to build an image for my system; manually inserting and launching my
> Qt application works great.
> 
> Now I want to include this app and some files into the rootfs of the image.
> I modified the recipe by adding the following lines at the end to attempt
> this:
> 
> ```
> SRC_URI += " \
> file://qtApp_qml \
> file://startup.sh \
> file://fb.modes \
> "

Image recipes by default don't support SRC_URI or normal build related
tasks/configs. Thus it's better to have a custom recipe to build the
sources into binary packages, which then can be added to the image
via IMAGE_INSTALL variable, see
https://docs.yoctoproject.org/singleindex.html#customizing-images

That said, this trick will enable SRC_URI handling in image recipes:

python __anonymous() {
    d.delVarFlag("do_fetch", "noexec")
    d.delVarFlag("do_unpack", "noexec")
}

My use case for this was image specific config files for tests, which
are really specific to images and which don't belong to any other SW
component/recipe.

Cheers,

-Mikko

