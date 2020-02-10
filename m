Received: from mail-yw1-f48.google.com (mail-yw1-f48.google.com [209.85.161.48])
 by mx.groups.io with SMTP id smtpd.web11.20169.1581330051679060298
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Feb 2020 02:20:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=SXhlh0JS;
 spf=pass (domain: linaro.org, ip: 209.85.161.48, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-yw1-f48.google.com with SMTP id z141so3172579ywd.13
        for <yocto@lists.yoctoproject.org>; Mon, 10 Feb 2020 02:20:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=/ODpAc8+I0TNnEzcPyCDuhJ7C0HrG9bpBgNqtDOKEIk=;
        b=SXhlh0JSHu18+IFZP45PB7ioxJUu+2ywJ9/W4vtCPilHLMXdOYx+lg3zJGsfDojot9
         2n1qyFewiPtWOZuOxngf0QKg5mpj1DYgGMTFdkmFoycO+8UTATaU8gxAu0xzM5qydfAU
         Ab7x41gzeeNH22FxhYuZHkKxxlFWbR2jlt6vgdqsiRpnP07JwV1lPbKZ04oUtmh0tgN4
         OOhI/z2/xH73st7uXUAscCc6rm0ZGEnQP/1XYjoIeqvG1c818704ywPJZSJ1/xjOkSLf
         4zpwJqF9eFafAGFRWd5hQkzKhm3F89fdTrQVJGepcxinRzGdUTW+17seMdjta+8hHdWw
         KA6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=/ODpAc8+I0TNnEzcPyCDuhJ7C0HrG9bpBgNqtDOKEIk=;
        b=A+2x+C2XCPYer1B37uhwvhfDTmHG7UcXki9F6nbOZPH7Qw8ZhL1Bl4PO0PMw3x8EB1
         IblnoDhefxYP/OQXHalPqg/UYv/g5v54OMflOCIO4AzFW+phHvBe1aYJxWx5+EVxjEDU
         CENmf6ome8OAObmwP9W0JNz2dKD0qPDh86kFc2n4NXQGAKrmYwAUDWQuCYSdK7kpmlss
         fsX4TaFSom2OrS26MfMidDGE/+RH7QSiL0OCPSPON3Q28RgaJPgH3cZ97IUMbEtCjQ/7
         9dg25Xi3ZgtjBY4hUg5hSKu1UXPkPE7IfuJJgwHqzu+LTfJjKSoMYYb4PPk1zn3ahLjM
         g7pw==
X-Gm-Message-State: APjAAAWlCHvfy3reaQ+nBuomPmvAhPsLcaecT02+wzjcMpwJahEUNS4A
	p0G8l15uoIOqrNm5pylk9yAJr6m9OjvAYLPPQppS4w==
X-Google-Smtp-Source: APXvYqxfS+EuAfkl8NR7Uf1uQWa6Eq7BCR/qkDb5J2RET5SYSwPAC0PpYJrgK5myTO4qsQ+7yEmzgxPs4WOhAZbg89c=
X-Received: by 2002:a0d:e84d:: with SMTP id r74mr390065ywe.147.1581330050525;
 Mon, 10 Feb 2020 02:20:50 -0800 (PST)
MIME-Version: 1.0
References: <MN2PR06MB6573BCE29DA9E3E85FE09E6086190@MN2PR06MB6573.namprd06.prod.outlook.com>
In-Reply-To: <MN2PR06MB6573BCE29DA9E3E85FE09E6086190@MN2PR06MB6573.namprd06.prod.outlook.com>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Mon, 10 Feb 2020 11:20:39 +0100
Message-ID: <CAP71Wjy5+wXkndn4iXoF39QOuQvTSC_oZqjQ3OZRL-XWTQCNnQ@mail.gmail.com>
Subject: Re: [yocto] Clarifying install vs deploy
To: Oliver Westermann <oliver.westermann@cognex.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 10, 2020 at 11:08 AM Oliver Westermann
<oliver.westermann@cognex.com> wrote:
>
> I was asked by a colleague for the difference between do_deploy and do_i=
nstall, which I both used mostly by checking similar recipes and copying th=
eir methods, but now I'm having some questions as well. The Yocto dev manua=
l doesn't list deploy at all, so my assumption is that why do_install is th=
e default, do_deploy is used to extend some functionality.
>
> So my understanding for "do_install" is that it should copy the files bu=
ild and provided (in ${B/S}) into ${D}, where they will be picked up by the=
 mechanism used to create RPMs. So everything I want to end up in my rootfs=
 needs to be installed in the correct location (as in ${D} equals the / fol=
der of my rootfs).
>
> Do_deploy however is documented in the reference manual as " Writes outp=
ut files that are to be deployed to ${DEPLOY_DIR_IMAGE}. The task runs with=
 the current working directory set to ${B}.", which sounds pretty much like=
 what I described above. So how is this different from do_install, other th=
an it seems to me that do_deploy uses the extra temporary dir ${DEPLOYDIR} =
(without an underscore)?
>
> So is there any guidance when and what for to use either?

you use do_install() to install any content that you need to be added
to your rootfs/image, as you said. the content of $D will end up in a
binary package (rpm, deb, or ipk), and that package might eventually
be installed into an image, which means that the content of $D will be
'added' to an image.

do_deploy() does not exist by default, you need inherit deploy class.
You use do_deploy() to 'install' files/content in $DEPLOY_DIR_IMAGE,
e.g. the same folder where your image is deployed. There is for
example a do_deploy() task for an image recipe. When you use
do_deploy() you do not create a binary package, but directly copy
content in $DEPLOY_DIR_IMAGE. You should use $DEPLOYDIR is your
recipe, which is a 'local' folder for your recipe to copy the content
you want to deploy. OE will take care of the copy from $DEPLOYDIR to
$DEPLOY_DIR_IMAGE (it's optimized to work with sstate-cache).

>
> Thanks, Olli
>=20
