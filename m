Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E33AC433FE
	for <webhook@archiver.kernel.org>; Thu, 17 Nov 2022 12:34:13 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web11.14344.1668688446351648176
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Nov 2022 04:34:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LienlYZP;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id d6so2533558lfs.10
        for <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 04:34:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RsKnubYywn8qaLdLCO2002yyGmpJJsik2D5WylTEQgA=;
        b=LienlYZP+Fhd63eO2ECj38MB9+bICzgA+g5vpLHPhjNZN0H8WwbGZvHlbAcB0cl/QY
         kh4nvLzRHrMRaYkTrcNXDN2gdOrvfJcBuY9bhJ5mSqjUGiO/pPtUtfK6YygSHhtPGpHz
         9BaktpUZLI5sW/I7c2woA0Gzp3oEAofDVi+0iLUW5cjD8gShDVtNOyd5huyxg8L01UFa
         KhqUzhn97yQxeY01LXVEiGTgVTyAaorc8Iz0bGUueZ+IsH4Nv3PoNSCX3w4TUY4KeHhn
         8N/QmCpHRscj9oTAjzPhVUKmrTNEOnBvuuvh/esZEcUL1bgBpCe5BfsamtwiUvmYbxwk
         TREA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RsKnubYywn8qaLdLCO2002yyGmpJJsik2D5WylTEQgA=;
        b=lgBYBJDSyEixs1H0dUaA5vm9+OtsAZ4ZzHmV8FEtnkF4Y/X/iNEUTueBdQA9jAYX3/
         J2wNhRO0/4CottMxNKWSEjb3goB1XFsp8qOmFUcc2Ki62S5FQ8Uco16F/exTXG6SwZZx
         DGC4ETUzu9vz/eY9RE5Xz4GBvi0a1DBNGGmWliByOoG64qgdQZWl9Dw1E1nsm+XlZ8IQ
         IoD3+GavgrSkb7zLH+tHjctlfAALaQmdlgHkWyRUZiUkGYS3iuv5xyaA+s2u6q6cSHwh
         BveNZVIQivX6X9OqJgBam/QE8d5h//+K9Q+60KBqwuB0nq44y6HkKE1IGlpdAb8b3teN
         CsAQ==
X-Gm-Message-State: ANoB5pnxrdHPibLbfngyx8k8KfDwifQGgvYHxlXzrF8v4ptTD64hU1EV
	qRJiCoDbf++T8vTbPSR3Xls2jlf3RjuA9Rco2J4=
X-Google-Smtp-Source: AA0mqf5iB/ni159Wk8iRcmuwhsHXyMnPBQLypMG3/ZtaRsjXws8RKc7tERRKTwEy0UDHj/fU4bUFbuJVaTYXEQr2nsw=
X-Received: by 2002:a05:6512:3b9b:b0:4a2:4aad:8fff with SMTP id
 g27-20020a0565123b9b00b004a24aad8fffmr752312lfv.445.1668688444293; Thu, 17
 Nov 2022 04:34:04 -0800 (PST)
MIME-Version: 1.0
References: <CAJw49vp4_4BMooNGxrN-YKk+GzotueV9FOj+XYGzRdv2oQOL_A@mail.gmail.com>
 <CAM6O0ZjaXbYkU9r5gtSepmOfQG0gF00mpfA6rhMGYUL7ugXh4w@mail.gmail.com>
 <CANNYZj9pw4LDBjM3xrzU=g2ddU-Cc1jSpiYyWH+FWC9RX_Pk4g@mail.gmail.com>
 <CAJw49voA19vhm-zKszFYOa6cVy567qy6gaBJb+H2Oy9PkxYdpA@mail.gmail.com>
 <CANNYZj-8A2JD1JSxOEvkuSLtyg+QtaLj5P6DzNKveh5dW6so1A@mail.gmail.com>
 <CAJw49vp4MTCYM3aWnGVpA47iFD+ENwCdMo7j4xoOkyxfszWjog@mail.gmail.com>
 <CANNYZj9Jg9z25eK_jjZFSgOi5Vok_50+DCXih15zUs-q77eLyA@mail.gmail.com> <CAJw49vrQnOVJEZkYQMWCe2jwdEE=WfG5Tv7U7pEgcpF0ez1KDQ@mail.gmail.com>
In-Reply-To: <CAJw49vrQnOVJEZkYQMWCe2jwdEE=WfG5Tv7U7pEgcpF0ez1KDQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 17 Nov 2022 13:33:52 +0100
Message-ID: <CANNYZj8bnJHrYcYumz1Sk-Gzz7iSWZG4wrQaUH98x-DCLGjmqA@mail.gmail.com>
Subject: Re: [yocto] source-less python
To: Yishai Jaffe <yishai1999@gmail.com>
Cc: Federico Pellegrin <fede@evolware.org>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 12:34:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58584

 Making your own! You can have it added to the layer index for better publi=
city.

Alex

On Thu, 17 Nov 2022 at 13:27, Yishai Jaffe <yishai1999@gmail.com> wrote:
>
> What layer would you suggest?
>
> Yishai Jaffe
>
> On Thu, Nov 17, 2022, 2:21 PM Alexander Kanavin <alex.kanavin@gmail.com> =
wrote:
>>
>> You can start by placing it in a separate layer?
>>
>> Alex
>>
>> On Thu, 17 Nov 2022 at 13:04, Yishai Jaffe <yishai1999@gmail.com> wrote:
>> >
>> > I assume by core you mean openembedded-core/poky, yes?
>> >
>> > So where would you add it to?
>> >
>> > Seems to me like a very useful feature that many people would use if t=
hey knew the option exists.
>> >
>> > Also, I noticed that in the recipe for python there is a variable name=
d INCLUDE_PYC which does exactly what you think it would. This looks to me =
like someone did think about the whole python size subject but didn't exact=
ly go through with it all the way. You can decide if to include pyc files b=
ut not the opposite. Also, this feature which does exist only applies to th=
e python recipe but not to all other non-base python module recipes. Maybe =
this can be added to setuptools3 bbclass?
>> >
>> > Yishai Jaffe
>> >
>> > On Thu, Nov 17, 2022, 1:24 PM Alexander Kanavin <alex.kanavin@gmail.co=
m> wrote:
>> >>
>> >> I just wonder if this should really be in core. The standards for cor=
e
>> >> are high: it needs to be both testable and tested, and there's only s=
o
>> >> many possible options and tweaks where things can regress that we can
>> >> take. On the other hand, there has not been much demand for it.
>> >>
>> >> Alex
>> >>
>> >> On Thu, 17 Nov 2022 at 12:13, Yishai Jaffe <yishai1999@gmail.com> wro=
te:
>> >> >
>> >> > Hi Alexander,
>> >> >
>> >> > After some research, these are the numbers I came up with for compi=
ling core-image-minimal with python3-core:
>> >> >
>> >> > Normal compilation:
>> >> > tar.bz2 - 6.6MB
>> >> > squashfs-xz - 6.1MB
>> >> >
>> >> > With my pyc-only patch:
>> >> > tar.bz2 - 5.8MB
>> >> > squashfs-xz - 5.2MB
>> >> >
>> >> > So that's about a 15% decrease in size.
>> >> > Again, this is for an image only with python3-core. Logically that =
would mean that if you had an image with more python packages it would be e=
ven a bigger percentage.
>> >> >
>> >> >
>> >> > Yishai Jaffe
>> >> >
>> >> >
>> >> > On Sun, Nov 13, 2022 at 5:12 PM Alexander Kanavin <alex.kanavin@gma=
il.com> wrote:
>> >> >>
>> >> >> Generally we slim down python installations by not installing all =
of
>> >> >> the standard library, and rather having precise dependencies for
>> >> >> specific modules. Can you illustrate the kind of space savings tha=
t
>> >> >> can be gained in actual numbers?
>> >> >>
>> >> >> Another issue is that this should be supported upstream and in the
>> >> >> wider python community. Is it?
>> >> >>
>> >> >> Alex
>> >> >>
>> >> >> On Sun, 13 Nov 2022 at 14:25, Federico Pellegrin <fede@evolware.or=
g> wrote:
>> >> >> >
>> >> >> >
>> >> >> > Hello,
>> >> >> > Just as a small reference since I raised some doubts and questio=
ns in Buildroot community on this: there has been also some troubles to und=
erstand the correctness or not there (as I found some packages with problem=
s due to this source-less management) and this then sparked, besides discus=
sions in the Buildroot mailing list (roughly end of July / beginning of Aug=
ust if someone interested searching there), also an issue to the Python com=
munity, which albeit some discussion I think never arrived to a concrete co=
nclusion. This is the issue: https://github.com/python/cpython/issues/95827=
 (see also the linked one maybe)
>> >> >> >
>> >> >> > These are just my 2 cents to this discussion, then of course the=
 Python experts will probably chime in and describe the official/discussed =
position of Yocto regarding to this, but just felt like mentioning that alt=
hough Buildroot is somehow offering this right now (and likely mostly works=
 as well!), it's not really a so clean and/or agreed solution.
>> >> >> >
>> >> >> > Cheers,
>> >> >> > Federico
>> >> >> >
>> >> >> > Il giorno dom 13 nov 2022 alle ore 13:55 Yishai Jaffe <yishai199=
9@gmail.com> ha scritto:
>> >> >> >>
>> >> >> >> Hi,
>> >> >> >> I was wondering if there has been talk about support for source=
-less python on an image. Installing py and pyc files doubles the size of p=
ython on the rootfs. I can imagine this being implemented as an image featu=
re.
>> >> >> >> I know that in buildroot it is supported.
>> >> >> >> Was this discussed and decided against? Is this an open issue?
>> >> >> >> I have a working patch that implements this. I can submit it fo=
r review.
>> >> >> >>
>> >> >> >> Thanks,
>> >> >> >> Yishai Jaffe
>> >> >> >> Yishai Jaffe
>> >> >> >>
>> >> >> >>
>> >> >> >>
>> >> >> >
>> >> >> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >> >> > Links: You receive all messages sent to this group.
>> >> >> > View/Reply Online (#58549): https://lists.yoctoproject.org/g/yoc=
to/message/58549
>> >> >> > Mute This Topic: https://lists.yoctoproject.org/mt/94997538/1686=
489
>> >> >> > Group Owner: yocto+owner@lists.yoctoproject.org
>> >> >> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.=
kanavin@gmail.com]
>> >> >> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >> >> >

