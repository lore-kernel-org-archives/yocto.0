Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D74F1C433F5
	for <webhook@archiver.kernel.org>; Wed,  9 Mar 2022 12:41:15 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com
 [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web11.4906.1646829674216307298
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Mar 2022 04:41:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=d5hBmdyo;
 spf=pass (domain: gmail.com, ip: 209.85.218.45,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ej1-f45.google.com with SMTP id r13so4693436ejd.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 09 Mar 2022 04:41:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=hmnzBn44zTqhx4GcVtrCM5jW1oc02qIEQzobIOwxYA0=;
        b=d5hBmdyobPXZvO4109loqpmGsNPCrHBP6Wz2HdV2O8lPItTk56dvzLj05viiGfJYQm
         X97PJT2m2u5JzdeNhNQOwXT83lbweN8j+9jb9NYXKOETDRdGZYFRZ96Dk3cSq2GaJBei
         dwaeh211iAZoGEoyChqDdMiJIHBMPKOpl5EUJhyHPrdd715nHiTKDqx8NJKEK9Z1g9BK
         sxjRqtznShqeMRZ/w2PD1D+5qnSKVHnk/R8bW3yF9dP7kicIwIzWJkGaW1EBP/C5duiP
         kPx8M/rrYDhHByXu7GKbYoQOzmDyvlGof8SUOhrdkm+khCQxn0KtsSm3auV876KPzZk/
         CrNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=hmnzBn44zTqhx4GcVtrCM5jW1oc02qIEQzobIOwxYA0=;
        b=1CM4KHV2n7f+L4V5GIo39FmPiRo2qUerECJFv67XtLibl6Vwsd2+KtP5Ucy3Ffk9ra
         a91/N1RIPHZ04js3lVLsk/l1NYww7K74b/j+tB0TsztkhwFUNxUb9KAHEb2A7XL3VmDj
         heoAhjdclwkoJdhyqShuj97gNaYTKl7rdNwcYBkPTHjyzAF33672oKlCHmu9xDzvPFv7
         ZOMKthIhk8cV3EPjHequeyxOgEA9bzT6zYTzbjo7/o+7OO5iexbFGK2if3Y+1Xql1jcd
         GcirmNHagIjLgEkNyTPGa/DqhZwS9XfNAwhTClRoXCxWdnpanzcFzqHqaGpp+3qH94nj
         6Sww==
X-Gm-Message-State: AOAM531BlEe5lYGGqltWUXLkkIBhy/N8YELrj+ns5XBR82HZojcmg0CF
	We+CTe8UxnrDue2I+oV0KdkVKnDPU7xd04PTkKs=
X-Google-Smtp-Source: 
 ABdhPJyiQq/A2C0dNjWzWRLISDppmiBxfRLixipB9MmXZHPVwY6w5z1j723Pb9jFuG4lYgoTJA5xR5nx2XXUiT0AMSc=
X-Received: by 2002:a17:907:1c95:b0:6db:6b05:549c with SMTP id
 nb21-20020a1709071c9500b006db6b05549cmr2371367ejc.651.1646829672432; Wed, 09
 Mar 2022 04:41:12 -0800 (PST)
MIME-Version: 1.0
References: <qHzn.1646821447603268340.seYL@lists.yoctoproject.org>
In-Reply-To: <qHzn.1646821447603268340.seYL@lists.yoctoproject.org>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 9 Mar 2022 07:41:01 -0500
Message-ID: 
 <CADkTA4OdRRtb=AbFt2ed2JHkbbBX86yUpH2Av6huRXsfVVJRLg@mail.gmail.com>
Subject: Re: [yocto] Howto build packages for dependencies of an out of image
 recipe build.
To: Daniel Squires <dan@engineeredarts.co.uk>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Mar 2022 12:41:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56404

On Wed, Mar 9, 2022 at 5:24 AM Daniel Squires <dan@engineeredarts.co.uk> wr=
ote:
>
> We have our image and it is working as we need.
> We have an apt repo setup and working so that we can install additional p=
ackages within a deployment of the image.
> However when we manually bitbake additional packages (e.g bitbake my-opti=
onal-recipe) which we want to make available within this apt repository by =
default only the package for my-optional-recipe gets built, although all th=
e dependencies of my-optional-recipe get built, none of them are packaged. =
how do we make sure all the dependencies have packages built?

Are the dependencies in the recipe as RDEPENDS ? If so, they will be
built and packaged. If they weren't, then image assembly and pretty
much any package feed would be non-functional.

Bruce

>
> Best Regards
>
> Dan
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56401): https://lists.yoctoproject.org/g/yocto/messag=
e/56401
> Mute This Topic: https://lists.yoctoproject.org/mt/89659095/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield=
@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

