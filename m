Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 043E2C61D97
	for <webhook@archiver.kernel.org>; Thu, 23 Nov 2023 16:45:09 +0000 (UTC)
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
 by mx.groups.io with SMTP id smtpd.web10.95022.1700757905786468600
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Nov 2023 08:45:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EFCqFrs5;
 spf=pass (domain: gmail.com, ip: 209.85.160.49, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-1f9decb7446so175248fac.2
        for <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 08:45:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700757905; x=1701362705; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qM+L6XIMotdoAL9Zip6h0GPETREsJa/bAFqcWDBhVSA=;
        b=EFCqFrs5ZOMNqh9X9YlNOs3RyHqjosEvytVFFP7sLQVZaGd6eu9IcYD/H51ZcH5Z8p
         4hmYewvpxHZrI7797A8tNaxEVHETGf5arPeQgjeqvlxzVM+vp1sZzlqWvuedbxud1UrG
         p1A/u5tUNq+RKrc/gY+CXG0b8tn3NkPS7XMUGCSVcPbwbghJ5kHz51Xc/zAvvYJdDH1I
         Rehnp4YpujKt1+tj1qhhdfHH/SBmjzhFxBu+XcirHnDou6m7FbJ03df0tINk+yWvJ67a
         aVwbh+Y/4Rmo7uJAcIpaT+WUTBbiRXfR7S0LuemFhFUQCUhoXNSFv7+9jxZaawW4R4EA
         FccA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700757905; x=1701362705;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qM+L6XIMotdoAL9Zip6h0GPETREsJa/bAFqcWDBhVSA=;
        b=qWfz71pxmUJUo3Qg3mgg0g96tIRH2bzZF3WdSzl8XWJGZElKP9hR4LnhgX3F3CnVyd
         jfd6EHVBTX8+rseRYLiMXdKgfKrQSV1hNPt/KU6VSVYsE9Sers0cV9wO8Rp/hqkYDl/H
         WSSm2Ki4lHvl0lgLWWZMIJyUhy8DeB41wi3oCjy8KBoGCrkqahbs6B8ZWRYCQZlMnwvd
         QjEH617RtLmWmwoUpmyiZO4q6g+jjXsV1/Y+3EtyoARU1ntxrip30+XYKY+Xo50TyKWk
         TPRCUo9cAtGdYIQQ2UfwZ36u2+MdUYWRSEDGN4h4zF1ZLak43snS/EBAsWN16e3TP0gI
         YabA==
X-Gm-Message-State: AOJu0YzOnL5AQUcKgJQxWQ0lAhFmhlwJqqUR+ymcLZtBEljaF4nwEuoQ
	fJCl6RrMzfUYfp0vpBKlD9yjsp47d+tkYF955sU=
X-Google-Smtp-Source: AGHT+IGF2FTnexYJGD3yePq54/dAqa+ah5rgVCHR0JdwyMULwqfupNXcFd21EHD1IlNB2BxDgkgmYRVGfEXlqJvx8WQ=
X-Received: by 2002:a05:6871:e49b:b0:1f9:5536:4125 with SMTP id
 pz27-20020a056871e49b00b001f955364125mr7673528oac.25.1700757904994; Thu, 23
 Nov 2023 08:45:04 -0800 (PST)
MIME-Version: 1.0
References: <20231122014822.3871458-1-raj.khem@gmail.com> <25CE6021-2333-43D8-B3E4-3207FEB8ED4A@arm.com>
 <CANNYZj_9_yY5H8fX6=Vy3FFgiVu1V8uOJxHNdtMkfMb37JXCSg@mail.gmail.com>
 <74FBAD99-E844-4DF2-AD18-B02D2613228C@arm.com> <CANNYZj8HkDHb9i2=rc4V7MxoxqFV_dyNBcEyausW+=8f35_ByQ@mail.gmail.com>
 <D16D6B59-7E34-49BC-8385-D7216058B9A4@arm.com> <AM9PR03MB7012EFD751803A645DBDFC6992B9A@AM9PR03MB7012.eurprd03.prod.outlook.com>
In-Reply-To: <AM9PR03MB7012EFD751803A645DBDFC6992B9A@AM9PR03MB7012.eurprd03.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 23 Nov 2023 08:44:39 -0800
Message-ID: <CAMKF1so23Z70avrYbyT9iQ4obvVFyOyvo1AiBzWJc3H5ptN4gQ@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] how can a missing file
 be a WARNING and the build 'succeed'?
To: Dave Hitchman <dave.hitchman@kymati.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, "ross.burton@arm.com" <ross.burton@arm.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 16:45:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61747

maybe your bbappend is not matching in name to recipe or maybe
something else, typos etc. Showing exact code can help a bit more in
understanding what might be going on.

On Thu, Nov 23, 2023 at 7:13=E2=80=AFAM Dave Hitchman <dave.hitchman@kymati=
.com> wrote:
>
> I am trying to append to linux-imx.
> If I deliberately put a wrong filename in the src_uri append it warns me =
and carries on with no effect or worry.
> Anything I put in the do_configure:append() or prepend() is just totally =
and utterly ignored.
>
>

