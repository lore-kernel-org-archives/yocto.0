Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.14874.1589554014228521389
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 May 2020 07:46:54 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=DMU5u5Ua;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1EA4E01AB3; Fri, 15 May 2020 07:46:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F40FE01A55
	for <yocto@yoctoproject.org>; Fri, 15 May 2020 07:46:50 -0700 (PDT)
Received: by mail-il1-f174.google.com with SMTP id c20so631102ilk.6
        for <yocto@yoctoproject.org>; Fri, 15 May 2020 07:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=UPW6iR8DBKeYe8XCw3Ux8A28lSOlPzPY5TkiIVdFRYo=;
        b=DMU5u5Ua2hzGbBg8JorQdbXpLCGFLndOqIM5sidTpH0DHxWw2byh3bYPqWJRDyF7x7
         vrFkeeSec5tgGTI/be7fj6SlI20HFqm1+zMKt1TQPejnnKEG9iQMehy2X5/8ZCAoienw
         VEFBCxymMVt4vLkE9LRJyQlCL9M50Wo8UgrMzopQbhrxxgXCyxW7DOYUHks3kV13nSFm
         IZPQSZ6lHCabhsndwrSrpEiAJ7TLrk7ENhFKhf06867xU2oCYCkUbYYka0CDTZ2IuFa3
         BdWphqmli/pFZ7zeMc3rSqg6Dm2UmvH4gCCuFFb42U8OpZZnd4aqKm+5nPEe+n3u6sr6
         rmBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UPW6iR8DBKeYe8XCw3Ux8A28lSOlPzPY5TkiIVdFRYo=;
        b=BXg8tKocwfoQUR/45Ml6lT09NEzA0jebWL6p3/HUBFDd5HZ8l4idEScAxG1/AUBUFW
         me1Z+3UgiCmrI47GO0Qd3Slf97WIskZ2SB8xWiCrLrjsiimAOLzQZT6DJjoQmVNO+f4n
         zS9Tsk5hbRVSh5ei7i8ZmrPmhsvqPblAkYHpzy2VjZpWZtZtO7qp3emYsLJ2QSFzui59
         sVY6K6zbp1yGyosxt1+FDhFVgtL8h886Rc5KCk52lWz/ELLDr+AJ8L3jja2pO6hdeqgb
         zORdxZTH7LKXQctiQUuzkK/KCombLwySlNx4z6+5jg24Wc+LAI10zg2YLI1skmxJ1y0V
         nUpA==
X-Gm-Message-State: AOAM533wjnvpxdHh320Vs7m+FYwZOseVParGaiY1yxQcjAkjPVazSkZT
	ep+7zKkpSc4MHzWlIM6OCFmrJsw1rHc=
X-Google-Smtp-Source: ABdhPJyu58h0+vx6kc27IpLm+ewzF6mkhYF37v3N0Bwlw4a+kvJya63lT6LjfowxJ7IU4/NZlKqgrg==
X-Received: by 2002:a05:6e02:530:: with SMTP id h16mr2271840ils.2.1589554009746;
        Fri, 15 May 2020 07:46:49 -0700 (PDT)
Received: from ?IPv6:2601:646:9200:4e0:33:f6fe:2ae3:dbd8? ([2601:646:9200:4e0:33:f6fe:2ae3:dbd8])
        by smtp.gmail.com with ESMTPSA id j90sm986257ilg.70.2020.05.15.07.46.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2020 07:46:49 -0700 (PDT)
Subject: Re: [yocto] Package libgcc-lic cannot be installed into the image because it has incompatible license(s): GPL-3.0
To: matthias.schoepfer@googlemail.com,
 Yocto-mailing-list <yocto@yoctoproject.org>
References: <5e93c06b-61a1-a89c-a2f7-0dadda804be2@googlemail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <ce772f60-45d4-61c1-5305-53c571cd4079@gmail.com>
Date: Fri, 15 May 2020 07:46:48 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <5e93c06b-61a1-a89c-a2f7-0dadda804be2@googlemail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable



On 5/15/20 2:32 AM, Matthias Schoepfer via lists.yoctoproject.org wrote:
> Hi!
>=20
> I am trying to migrate to dunfell. Out customer does not want GPLv3 or=
=20
> anything like that on the firmware.
>=20
> So - same as in zeus - we have a line:
>=20
> INCOMPATIBLE_LICENSE =3D "GPLv3 LGPLv3 GPLv3+ LGPLv3+ GPL-3.0 LGPL-3.0=
=20
> AGPL-3.0"
>=20
> during do_rootfs, the process fails with:
>=20
> do_rootfs: Package libgcc-lic cannot be installed into the image because=
=
=20
> it has incompatible license(s): GPL-3.0
>=20
> The package basically consists of the license information for libgcc,=20
> libgcc is allowed due to the linking exception.
>=20
> Even, when I try to allow this package with something like this:
>=20
> INCOMPATIBLE_LICENSE_pn-libgcc-lic =3D ""
> INCOMPATIBLE_LICENSE_pn-libgcc =3D ""
>=20
> which has worked in the past to have an in house debug image with the=20
> gdbserver on it, it still fails.
>=20
> Am I the first to experience this? Am I doing something wrong?
>=20
> We do
>=20
> COPY_LIC_MANIFEST =3D "1"
> COPY_LIC_DIRS =3D "1"
> LICENSE_CREATE_PACKAGE =3D "1"
>=20
> as well, if that info is needed.
>=20
> Any help would be appreciated.
>=20

Can you try adding

LICENSE_${PN}-lic =3D "GPL-3.0-with-GCC-exception"

in meta/recipes-devtools/gcc/libgcc.inc

and see if it helps ?

> Thanks and Regards,
>=20
>  =C2=A0 Matthias
>=20
>=20
>=20
>=20
