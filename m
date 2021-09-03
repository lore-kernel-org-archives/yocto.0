Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web10.2912.1630699626921846757
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Sep 2021 13:07:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=E4N8p2aK;
 spf=softfail (domain: sakoman.com, ip: 209.85.221.48, mailfrom: steve@sakoman.com)
Received: by mail-wr1-f48.google.com with SMTP id b10so337661wru.0
        for <yocto@lists.yoctoproject.org>; Fri, 03 Sep 2021 13:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=LJ7eKJA/EJjjPEalSt2BNPR/wOmJ6Lg9yZWujVYnihE=;
        b=E4N8p2aKLB9PbUBFZT325yXdoNAb7okyscShqBNJxWevP4Kh6yGgtGbup3w6ogbsBk
         9GZlCJhuyWr1stU8yq/9BvjdzfdGvMcUXggRpJzErKQJ7OrowHjaEFpEnc5ehRpZsJHy
         6w/9NSG5PuzDGV6HGk5/hjeKGh4Bd8o/Fpeb5zrFqHypO2t2TcqkPPh6NAo2rCpstPma
         Eg0FIY2fN4XleMKhczM2cfkUZkhI9h4gEYu9h/VUwWjJjsOHudvgw64qEhYwRUlqZenz
         vsVIn5mr5qUjm9ivZDyQan5idUHzlnLNp34BOE3LJlREm9DxJm6XQkCB81+/PkL8lxOr
         78Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=LJ7eKJA/EJjjPEalSt2BNPR/wOmJ6Lg9yZWujVYnihE=;
        b=ke54V+eZNP9RxdsWsZMvPtfwuUeePs9D5F3pG7aDJG/XLPgkWLS2UBxZh9KLYOodkN
         bDigFdUR91BROP8cEAnYVrKD6KuoMSn/eolPJUCNGMNKrGPgicnXzy76U1A/sytXXZLB
         Wrm4/jw+6yyH3uAN3WfFW7cvWb5Jl0TgWeNDVODqJ4P41ylyz5iG54AbctuBWZXAoX4p
         6lYKoXDUs4b3iEy2iMhlZGcEyoOixEUhKiPP06/VtZP9X0LoUJLpHHy9u6qYet0wHKi+
         56ctE+tzqtWbsECRKXxorCzAiR6KT1Md/bCzF0ZCeIk0/otiYAR2bkMX6/ryMnkAWXOS
         MDXA==
X-Gm-Message-State: AOAM530d4jwjQPMyIC4uIrwFakL3uENpCJTb8GHZR+H8MieWidg2NrVr
	b8FyoO5x+eDUyppEci/oeLIHZwZC1p/I1QPkcvv63A==
X-Google-Smtp-Source: ABdhPJz1dtGLR2taAETs35Gqw5engk3+icYFM64gz/F5aVO9ATnOawHeoVrvNYtZdLPl+9ljNfistKoB9Ifz1YJjsos=
X-Received: by 2002:a5d:456b:: with SMTP id a11mr752744wrc.291.1630699624803;
 Fri, 03 Sep 2021 13:07:04 -0700 (PDT)
MIME-Version: 1.0
References: <AM0PR10MB3107CEBBE29A9972AAD796D799CE9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <CAOSpxdYp6h9AAjMngMQvpwk+JegjS=RxHPGup7Rb5OaVX8HX1A@mail.gmail.com>
 <AM0PR10MB31076D389AF0932F57A0FD6399CE9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <AM0PR10MB3107BB856BCDCBB14D16394499CF9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AM0PR10MB3107BB856BCDCBB14D16394499CF9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Fri, 3 Sep 2021 10:06:53 -1000
Message-ID: <CAOSpxdaLShROk9r_eyV3i09A7VJ0Vf_0caQQj892L9HJgO_UfA@mail.gmail.com>
Subject: Re: [yocto] Bug in dunfell branch because of commit "sdk: fix relocate symlink failed"?
To: Matthias Klein <matthias.klein@optimeas.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 2, 2021 at 7:48 PM Matthias Klein
<matthias.klein@optimeas.de> wrote:
>
> Hello Steve,
>
> Can you push the commit to the dunfell branch, or do I need to open an of=
ficial bug somewhere, or what is the correct procedure?

I completed testing and the commit is in the group I sent to the list
for review earlier today.  If there are no objections I'll send a pull
request early next week.

Steve

> -----Urspr=C3=BCngliche Nachricht-----
> Von: Matthias Klein
> Gesendet: Donnerstag, 2. September 2021 16:36
> An: Steve Sakoman <steve@sakoman.com>
> Cc: yocto@lists.yoctoproject.org
> Betreff: AW: [yocto] Bug in dunfell branch because of commit "sdk: fix re=
locate symlink failed"?
>
> Hello Steve,
>
> yes, that commit resolves the issue.
>
> Best regards,
> Matthias
>
> -----Urspr=C3=BCngliche Nachricht-----
> Von: Steve Sakoman <steve@sakoman.com>
> Gesendet: Donnerstag, 2. September 2021 16:09
> An: Matthias Klein <matthias.klein@optimeas.de>
> Cc: yocto@lists.yoctoproject.org
> Betreff: Re: [yocto] Bug in dunfell branch because of commit "sdk: fix re=
locate symlink failed"?
>
> On Thu, Sep 2, 2021 at 2:55 AM Matthias Klein <matthias.klein@optimeas.de=
> wrote:
> >
> > Hello,
> >
> > the following commit needs the variable SDK_BUILD_PATH which doesn't
> > seem to exist in the dunfell branch:
> > https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/files/tool
> > chain-shar-relocate.sh?h=3Ddunfell&id=3Dd6f40be29bf56a835f5825692a22365=
f04
> > aeb6c3 This leads to countless messages being displayed during the
> > installation:
> >
> > sed: -e expression #1, char 0: no previous regular expression
>
> It appears that dunfell also should have:
> https://git.openembedded.org/openembedded-core/commit/?id=3Dbc4ee5453560d=
cefc4a4ecc5657df5cc1666e153
>
> Could you see if this resolves the issue?
>
> Steve
>
> > Shouldn't the process be aborted with an error message at the first pro=
blem?
> >
> > Many greetings,
> > Matthias
> >
> >
> >=20
> >
