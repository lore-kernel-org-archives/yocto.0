Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7778BC4332F
	for <webhook@archiver.kernel.org>; Thu, 17 Nov 2022 12:21:43 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web11.14161.1668687702498302047
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Nov 2022 04:21:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=BmNtpMPA;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id d6so2485926lfs.10
        for <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 04:21:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3mhMqFZfTZEFRrUGaMqjpcQUaVIVJvLdBaiBXpyFXKE=;
        b=BmNtpMPADXbJtezDQZCDNwqK9zorLbpJEP+1gtzx9t4t+KGfwOXvPIfXIBlH2R8oKx
         Si6VE9ijVDZDf5ELhrXDpEeDnGPFKTqzVTFSrUTzIDf7NocEYxTgjtHEBlYTEaY97vsn
         p95QmLQKdi8SD19DM/HF3F7ky7k/bgiNV3kwp8y7SI2gFaQb3wN41zC02QDNFN5QSbvn
         zPyVNYwRn4pfEHNGBAaLulGla3EYK2My6Q4RIFNJFl9SukyXY3OKf96dkzSxBdqSt2Au
         LncZqbWvRfbKXxa3HNzElfdH8N30BYo77P9nNuE6H0p3TtDaDtcpE91qoCmK7V3rBVGd
         bS3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3mhMqFZfTZEFRrUGaMqjpcQUaVIVJvLdBaiBXpyFXKE=;
        b=Rkl5Maj2OFtaKGqgEPUsU6xFzyu6rWyugTIfMxR1Mj7xwo+5MsEICKhIj9nDcO7L3t
         zPidNt07Re9QI+gKqz6d6kA4jdo3D1K3OwjOCAPrCRIAlaAlMBPF1OVNO38fry3dTX3u
         dmpuGSfnBmYEsxc996kAmhCHPep9Pm8W6YEaz4mYuSlE3ZBrrOjt+fwAXiiKc/QfZh3R
         dzzIx0yl6t4d9+BEFu+8yAZuvJrQzH2flMfLnfIPzQH6plbrTn9WmdD/uM3FyyLvElSW
         JNkaoufDI0doSDGW3O3P7RF5v5A7yq8pZAD5RFvrL23uPJHk3eBGOnnjNMGOBdVaCE9C
         Sz6Q==
X-Gm-Message-State: ANoB5pmc2h/x8nCJqtmzzflavy44O8sFmxsvHsAsI6lUZPgEdiDYjUtt
	gzn4EedHoIUOuqcBO0JsbkGxQFoylpErN6eNDFs=
X-Google-Smtp-Source: AA0mqf6m2JdfxCp4K/zcBCeCDVUDYumcPS7TPTEydmGVLIZMWxaXPq2CqSqoY7jTXggeYT9g0v+lIea+UcTHn3d6grY=
X-Received: by 2002:ac2:4a62:0:b0:4aa:323f:e850 with SMTP id
 q2-20020ac24a62000000b004aa323fe850mr794097lfp.492.1668687700594; Thu, 17 Nov
 2022 04:21:40 -0800 (PST)
MIME-Version: 1.0
References: <CAJw49vp4_4BMooNGxrN-YKk+GzotueV9FOj+XYGzRdv2oQOL_A@mail.gmail.com>
 <CAM6O0ZjaXbYkU9r5gtSepmOfQG0gF00mpfA6rhMGYUL7ugXh4w@mail.gmail.com>
 <CANNYZj9pw4LDBjM3xrzU=g2ddU-Cc1jSpiYyWH+FWC9RX_Pk4g@mail.gmail.com>
 <CAJw49voA19vhm-zKszFYOa6cVy567qy6gaBJb+H2Oy9PkxYdpA@mail.gmail.com>
 <CANNYZj-8A2JD1JSxOEvkuSLtyg+QtaLj5P6DzNKveh5dW6so1A@mail.gmail.com> <CAJw49vp4MTCYM3aWnGVpA47iFD+ENwCdMo7j4xoOkyxfszWjog@mail.gmail.com>
In-Reply-To: <CAJw49vp4MTCYM3aWnGVpA47iFD+ENwCdMo7j4xoOkyxfszWjog@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 17 Nov 2022 13:21:29 +0100
Message-ID: <CANNYZj9Jg9z25eK_jjZFSgOi5Vok_50+DCXih15zUs-q77eLyA@mail.gmail.com>
Subject: Re: [yocto] source-less python
To: Yishai Jaffe <yishai1999@gmail.com>
Cc: Federico Pellegrin <fede@evolware.org>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 12:21:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58582

You can start by placing it in a separate layer?

Alex

On Thu, 17 Nov 2022 at 13:04, Yishai Jaffe <yishai1999@gmail.com> wrote:
>
> I assume by core you mean openembedded-core/poky, yes?
>
> So where would you add it to?
>
> Seems to me like a very useful feature that many people would use if they=
 knew the option exists.
>
> Also, I noticed that in the recipe for python there is a variable named I=
NCLUDE_PYC which does exactly what you think it would. This looks to me lik=
e someone did think about the whole python size subject but didn't exactly =
go through with it all the way. You can decide if to include pyc files but =
not the opposite. Also, this feature which does exist only applies to the p=
ython recipe but not to all other non-base python module recipes. Maybe thi=
s can be added to setuptools3 bbclass?
>
> Yishai Jaffe
>
> On Thu, Nov 17, 2022, 1:24 PM Alexander Kanavin <alex.kanavin@gmail.com> =
wrote:
>>
>> I just wonder if this should really be in core. The standards for core
>> are high: it needs to be both testable and tested, and there's only so
>> many possible options and tweaks where things can regress that we can
>> take. On the other hand, there has not been much demand for it.
>>
>> Alex
>>
>> On Thu, 17 Nov 2022 at 12:13, Yishai Jaffe <yishai1999@gmail.com> wrote:
>> >
>> > Hi Alexander,
>> >
>> > After some research, these are the numbers I came up with for compilin=
g core-image-minimal with python3-core:
>> >
>> > Normal compilation:
>> > tar.bz2 - 6.6MB
>> > squashfs-xz - 6.1MB
>> >
>> > With my pyc-only patch:
>> > tar.bz2 - 5.8MB
>> > squashfs-xz - 5.2MB
>> >
>> > So that's about a 15% decrease in size.
>> > Again, this is for an image only with python3-core. Logically that wou=
ld mean that if you had an image with more python packages it would be even=
 a bigger percentage.
>> >
>> >
>> > Yishai Jaffe
>> >
>> >
>> > On Sun, Nov 13, 2022 at 5:12 PM Alexander Kanavin <alex.kanavin@gmail.=
com> wrote:
>> >>
>> >> Generally we slim down python installations by not installing all of
>> >> the standard library, and rather having precise dependencies for
>> >> specific modules. Can you illustrate the kind of space savings that
>> >> can be gained in actual numbers?
>> >>
>> >> Another issue is that this should be supported upstream and in the
>> >> wider python community. Is it?
>> >>
>> >> Alex
>> >>
>> >> On Sun, 13 Nov 2022 at 14:25, Federico Pellegrin <fede@evolware.org> =
wrote:
>> >> >
>> >> >
>> >> > Hello,
>> >> > Just as a small reference since I raised some doubts and questions =
in Buildroot community on this: there has been also some troubles to unders=
tand the correctness or not there (as I found some packages with problems d=
ue to this source-less management) and this then sparked, besides discussio=
ns in the Buildroot mailing list (roughly end of July / beginning of August=
 if someone interested searching there), also an issue to the Python commun=
ity, which albeit some discussion I think never arrived to a concrete concl=
usion. This is the issue: https://github.com/python/cpython/issues/95827 (s=
ee also the linked one maybe)
>> >> >
>> >> > These are just my 2 cents to this discussion, then of course the Py=
thon experts will probably chime in and describe the official/discussed pos=
ition of Yocto regarding to this, but just felt like mentioning that althou=
gh Buildroot is somehow offering this right now (and likely mostly works as=
 well!), it's not really a so clean and/or agreed solution.
>> >> >
>> >> > Cheers,
>> >> > Federico
>> >> >
>> >> > Il giorno dom 13 nov 2022 alle ore 13:55 Yishai Jaffe <yishai1999@g=
mail.com> ha scritto:
>> >> >>
>> >> >> Hi,
>> >> >> I was wondering if there has been talk about support for source-le=
ss python on an image. Installing py and pyc files doubles the size of pyth=
on on the rootfs. I can imagine this being implemented as an image feature.
>> >> >> I know that in buildroot it is supported.
>> >> >> Was this discussed and decided against? Is this an open issue?
>> >> >> I have a working patch that implements this. I can submit it for r=
eview.
>> >> >>
>> >> >> Thanks,
>> >> >> Yishai Jaffe
>> >> >> Yishai Jaffe
>> >> >>
>> >> >>
>> >> >>
>> >> >
>> >> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >> > Links: You receive all messages sent to this group.
>> >> > View/Reply Online (#58549): https://lists.yoctoproject.org/g/yocto/=
message/58549
>> >> > Mute This Topic: https://lists.yoctoproject.org/mt/94997538/1686489
>> >> > Group Owner: yocto+owner@lists.yoctoproject.org
>> >> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kan=
avin@gmail.com]
>> >> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >> >

