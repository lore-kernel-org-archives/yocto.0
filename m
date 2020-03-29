Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
 by mx.groups.io with SMTP id smtpd.web10.37045.1585516489101462079
 for <yocto@lists.yoctoproject.org>;
 Sun, 29 Mar 2020 14:14:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ypxjtxmb;
 spf=pass (domain: gmail.com, ip: 209.85.160.179, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f179.google.com with SMTP id c9so13506411qtw.7
        for <yocto@lists.yoctoproject.org>; Sun, 29 Mar 2020 14:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=MUqfGky/gW+DrX0qJ9KaI2xRfSK0IPMtpNT4YOcQqZY=;
        b=YpxjtxmbUfyiZDhEYMVp9PBeLOoS6xBUUUDSDMVWJaRnC1zp+5VuI3X18YpYPP3ZBT
         b3hFxJh49X9a095rUGJaWeRDqN7KvhSUtOqSB3b99VKQ8T+GMqh8ZUq88Uf+j/WFVldM
         VvQHCXGRr/UI1CBBU2pjS3ytg+Od98YAT0cp6Y+LoxRsqlom25nvhkBlkFnmeIUQmh5W
         aWpTENngdaKnp6QJhJAYLyFEfyz9dvD2PemYzdd8KCH2BunM/hDlnNOxjJlGZ+14gzk9
         kag2x9ByVa1wJ70KSPdLSWj0OpnknfIw1OMNZg3FdM5JsvBpVx1rs6zPqghdNVJYdlMM
         cfPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=MUqfGky/gW+DrX0qJ9KaI2xRfSK0IPMtpNT4YOcQqZY=;
        b=uQNQn5Vjj0SL9tNPU9Z8uPeq6GcwHnEiA1MZNVe+HM+6ceLc3iOIg8uupdMYobGYIV
         H29A2ryjfwe5FxUPf35ojV4X8qjSCwSHQc13sbiVdLbVgkJcXFW7R2B4LkgJyX8PMWhq
         6NEO+AmoPRw6xJuoGJWi6HO8ih4qVsa4F0oDAThQ1Z7lcO/7073yR2p/KvrR3WuIJhYP
         oLnnUNe64C3Eel4Iz2tASOw1zt5OwWqxfn6id7fkTXl+/dPcyBasGxRY9G88rgubbU8P
         sBPrATix84mwNIkXOUuGPKK6RfnqqipUQTYsiMoC5Q961sy26m+OsaTMxRJRH19vR/BV
         EOVw==
X-Gm-Message-State: ANhLgQ31X9yPM9V2ezjIjRfLdmCbtc1xlDeqGL3cF52KwKtB/p23uWPt
	0LSmIcP1trFVmJbiOM4hBypO9HYqGcZmR+HksjT1jGGPZVY=
X-Google-Smtp-Source: ADFU+vse7LdESm+5BgdKruKuFcN2FOWVZQML9X2plQeqzluJ68TfhdMfxIRaE43OjDRkumLKwJ9aeiAjfbpOGtv0tIk=
X-Received: by 2002:ac8:3003:: with SMTP id f3mr8927184qte.293.1585516487840;
 Sun, 29 Mar 2020 14:14:47 -0700 (PDT)
MIME-Version: 1.0
References: <HK0PR04MB2914D21E1391217F6E47708DB4CA0@HK0PR04MB2914.apcprd04.prod.outlook.com>
In-Reply-To: <HK0PR04MB2914D21E1391217F6E47708DB4CA0@HK0PR04MB2914.apcprd04.prod.outlook.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sun, 29 Mar 2020 14:14:21 -0700
Message-ID: <CAMKF1spcwhbFNYrVjd8TgNiWG2EWWFN8rm=fM0_VsV4hQ=ZqFA@mail.gmail.com>
Subject: Re: [yocto] Image size reduction
To: Ajam Ali <ajama@hcl.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 29, 2020 at 9:29 AM Ajam Ali <ajama@hcl.com> wrote:
>
> Hi All,
>
> Actually my current image size is 3.9GB because of heavy size packages r=
equired by my project and without project required packages my image size i=
n Yocto is 800MB.
>
> I want to reduce the image size as maximum as possible.
> Please suggest the best possible way so that I could reduce the maximum =
possible size(desirable below 1.5 GB).

Add INHERIT +=3D "buildhistory" to local.conf and then do a build

Start looking at the buildhistory folder especially the size file
images/<machine>/glibc/<image-name>/installed-package-sizes.txt

>
>
> Thanks in advance,
> Ajam Ali
>
>
> Sent from Outlook Mobile
> ::DISCLAIMER::
> ________________________________
> The contents of this e-mail and any attachment(s) are confidential and i=
ntended for the named recipient(s) only. E-mail transmission is not guarant=
eed to be secure or error-free as information could be intercepted, corrupt=
ed, lost, destroyed, arrive late or incomplete, or may contain viruses in t=
ransmission. The e mail and its contents (with or without referred errors) =
shall therefore not attach any liability on the originator or HCL or its af=
filiates. Views or opinions, if any, presented in this email are solely tho=
se of the author and may not necessarily reflect the views or opinions of H=
CL or its affiliates. Any form of reproduction, dissemination, copying, dis=
closure, modification, distribution and / or publication of this message wi=
thout the prior written consent of authorized representative of HCL is stri=
ctly prohibited. If you have received this email in error please delete it =
and notify the sender immediately. Before opening any email and/or attachme=
nts, please check them for viruses and other defects.
> ________________________________
>=20
