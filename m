Return-Path: <huangya90@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907F3C433EF
	for <webhook@archiver.kernel.org>; Tue, 11 Jan 2022 06:55:14 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
 [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web12.3821.1641884114020424389
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jan 2022 22:55:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=oUpDozGr;
 spf=pass (domain: gmail.com, ip: 209.85.214.179,
 mailfrom: huangya90@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id e19so9019196plc.10
        for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jan 2022 22:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=flj7SEF9bpXR0KaoIChBhG6hJ78nk1o66eag1zMYa8Q=;
        b=oUpDozGrvidZSmTZQaQHLeH4nuORNcGichEVoYEKU8FoCFuXem7EQyIjpjKpnojxar
         E77RC57JN1DE3hWBmWFFm5MQt8hCn2Lvih1bIRgZakOSP7qSIlCzYge8xhaB1KaR5Ugj
         F5gU3aa4CPdAPi1I/XQzv9H9eJf+ynfR5iJIS8ySokzQlqQB1RPBHqXlRjbbxQwlvGqS
         e6NJl9Sdmg1aMkmL0yZmCz38gnbDX89NyQJl8XvS5Iw6pOIXS6tqL36MILjXaz9+DmbM
         uBg0YqtN3zRmR57pDIEO9YDHp9aYRkpn3ZETLBK7G68e7s9UoU5d1ByzRbnXn5ZqCaZx
         HGWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=flj7SEF9bpXR0KaoIChBhG6hJ78nk1o66eag1zMYa8Q=;
        b=W3wInKEBKqQaBezDgr6CuYIHjlCf5wl+gHkmzYVD00WYF3wQrg788MjUV2AqTz8Tx7
         53QuawzJmarlhhx/1jwDDMf/ecFIh3/gGp1nQ5v/8XysYn70Vp19gxA3+gCqKvSrmyzV
         NkYkjXX8TkX9RbFplvVn3pOU54emOKhkNTTyNWuzSQIfq9k4OdZJaF2Hdeo6oVTUj3Hv
         uFq594Rtddp+tO42NTy8Vl/Ow1pKPtv5ni4OR+IH7e861kZGod5i4WdFRlCvJA5Yuoxb
         lvCB85bluHYGLKmQBwJ+kdIf//Rlo3FIwJnLiQ1cku7SyYm42XTIFv75BhUVXYLyVRLl
         jwKw==
X-Gm-Message-State: AOAM530TJ8/WfZkx32rF3U6pz4tGt6AVELZkGppAvluCB0JjEYMvQIox
	+hfEUPKuR1xs2VaOXMr6l/3hEmwcdUbmrK3cl0I=
X-Google-Smtp-Source: 
 ABdhPJygRplrfj2lAilzgxJ4NiZeqKUS1ZcP7PkMnvLliU7+4peH98yDfG3hv3MLF4XJDswq9YTCclrD6uSI/gMyuPE=
X-Received: by 2002:a63:8c47:: with SMTP id q7mr2838993pgn.591.1641884113501;
 Mon, 10 Jan 2022 22:55:13 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAAUX2SUKSsK=L+iPEj6UUFQznYW1SAcy8muPZ6hSC4+XUN0kHQ@mail.gmail.com>
 <CO6PR11MB56029C53403DC63F0CDBC719ED519@CO6PR11MB5602.namprd11.prod.outlook.com>
In-Reply-To: 
 <CO6PR11MB56029C53403DC63F0CDBC719ED519@CO6PR11MB5602.namprd11.prod.outlook.com>
From: Tony He <huangya90@gmail.com>
Date: Tue, 11 Jan 2022 14:55:02 +0800
Message-ID: 
 <CAAUX2SVKr2pnXicCP=ARm74uSQT1XZe_cph69pDKUoP7Ha9xJg@mail.gmail.com>
Subject: Re: [yocto] How to clean the cache for a package?
To: "Chen, Qi" <Qi.Chen@windriver.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Jan 2022 06:55:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55795

Thanks a lot. This is root cause. I did not update the SRCREV because
I have not added this SRCREV in my recipe.

Tony

Chen, Qi <Qi.Chen@windriver.com> =E4=BA=8E2022=E5=B9=B41=E6=9C=8811=E6=97=
=A5=E5=91=A8=E4=BA=8C 14:28=E5=86=99=E9=81=93=EF=BC=9A
>
> In theory, there's no need to run 'bitbake -c clean'. Did you update the =
SRCREV? It would be easier if you could share some info of your recipe.
>
> Regards,
> Qi
>
> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Beha=
lf Of Tony He
> Sent: Tuesday, January 11, 2022 2:12 PM
> To: yocto@lists.yoctoproject.org
> Subject: [yocto] How to clean the cache for a package?
>
> Hi,
>
> I'm new to yocto. I write a reciple for my own package. The source code o=
f package is in my PC and maintained by GIT. When I change the source code =
of the package, I need to compile this package again with "bitbake -c clean=
 package" and "bitbake -c compile package".
> However, even though I can see the code in the folder downloads/git2/pack=
age.git is updated, but bitbake still use the last commit of the git repo t=
o compile. After debugging, I found the old commit ID is stored in build-pr=
oject/cache/bb_persist_data.sqlite3. Is this normal?
> Is it caused by my own wrong reciple or is there any command to clean the=
 cache for a package? Thank you!
>
> Tony

