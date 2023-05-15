Return-Path: <tyrocjl@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA0FEC77B75
	for <webhook@archiver.kernel.org>; Mon, 15 May 2023 10:08:41 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web10.85042.1684145312079168875
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 May 2023 03:08:32 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=cjYOYvSd;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: tyrocjl@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2ad819ab8a9so103258591fa.0
        for <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 03:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684145310; x=1686737310;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UVhUO+nnuBsZaP8/f43036WfiTvPKyNwFBrc/A2qBQc=;
        b=cjYOYvSdjS9I03kdLSe6/skdAb4z13gN8A4weT+rNeYikDg940ZdQIre5wBVMPAV3p
         JAmVXnYnAV9R3R1Ed7WUiynURYrq8ONpEe5W1wUpNjszEZql8InODwqZuxivq2/a7aeG
         U/TLvyQlJ2+jhnr79t1wDi6gX1+NHRkbASafie8/XOeEIUdjv+oXAGSa6Fnq/xggugbH
         RYj3v9GV/BAIRkWGUCJYoUKalABSM/ifH8jyLFuwY8S44kh5RuqhTTK3lm6wl+Estgdw
         4Pq2mal8kiwo5E1SabOCIf0gg3auT0Uws3Fz5GC5aC9OeQPD5hcDPOtWamYT+BqvngMb
         4Iog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684145310; x=1686737310;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UVhUO+nnuBsZaP8/f43036WfiTvPKyNwFBrc/A2qBQc=;
        b=OONFMkD9kgY9E64TvS6c4Q7SC9LfBvvhc43jVrrwSRtBWXJDNppx3I3/lU2qxs6g2Q
         hiJ8x0P2hguk0mqYbJHSQW/dVQA8NrxnimM7JCPw4lf15BBN9EfEMOfAD5unFs1IOoAu
         8wo1BoW7XDlmWPS49a2FBwTUhkapEKbqGvt3EjcrFYYnrMV1ndEUukEejsnAiwtcp8Is
         jueZXxERfIYanBNTTaqfCqaLg5/bRRZP24inanc8jnOP37j7bj2QLyN/bT4Jedg/N/bt
         MUAMIQa1DJ8305ClHFvl8UEJUEKr+ponit5AVa8/9pE5EW+lD7ejN6FMERdDT1j/Vcnt
         GY1A==
X-Gm-Message-State: AC+VfDzOZBbqahe+M5aFuIDulPjZvO1ZUnobBbcDCMuE6EG189xrzmjk
	dY7FWEN2/04BWOSIrDVPk9z1msP2VuWp1M1jcMc=
X-Google-Smtp-Source: ACHHUZ55bzY40uSMMkRToerP38B40d20Qh9ZixKrB6otRRgIPdC8opeauUxJyj3CqkyYzG+hQ+FJ9aqrn9VyZJm9Xg8=
X-Received: by 2002:a2e:9612:0:b0:2ac:f597:f823 with SMTP id
 v18-20020a2e9612000000b002acf597f823mr6133085ljh.26.1684145309870; Mon, 15
 May 2023 03:08:29 -0700 (PDT)
MIME-Version: 1.0
References: <CANzPQ-CGsofjwD8bg8_8XyOJ8FAiyazy+UjtzTQgQteoiioBXg@mail.gmail.com>
 <CA+chaQej4J96=EQ8OvpA9v0icv9rvcf0GMUYS0-ESQpBJma6_w@mail.gmail.com>
 <CANzPQ-Ct81W1O+ooyfyhhFGF2iN-C7w=as-vFSvQupqgdjzvLQ@mail.gmail.com> <CA+chaQcO7mvN5d-tJfT4G8hiGXQ3e_ganexKOBHzxMuUA2uoag@mail.gmail.com>
In-Reply-To: <CA+chaQcO7mvN5d-tJfT4G8hiGXQ3e_ganexKOBHzxMuUA2uoag@mail.gmail.com>
From: Jiliang Cai <tyrocjl@gmail.com>
Date: Mon, 15 May 2023 18:09:17 +0800
Message-ID: <CANzPQ-D0wfW6iWr80gD928VAWzRbf0EG-uMpPPzgZ-0+hzz+kA@mail.gmail.com>
Subject: Re: [yocto][meta-python2] Kirkstone EXTRANATIVEPATH is not in effect
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 10:08:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60023

Yes. Everything works fine after I inherit pythonnative. I mistakenly
thought that there was no need to inhert it manually.

Martin Jansa <martin.jansa@gmail.com> =E4=BA=8E2023=E5=B9=B45=E6=9C=8815=E6=
=97=A5=E5=91=A8=E4=B8=80 17:46=E5=86=99=E9=81=93=EF=BC=9A
>
> > I don't know why my EXTRANATIVEPATH doesn't contain python-native
>
> Because you didn't inherit pythonnative?
>
> On Mon, May 15, 2023 at 11:38=E2=80=AFAM Jiliang Cai <tyrocjl@gmail.com> =
wrote:
>>
>> I added:
>> DEPENDS +=3D "python-native python-setuptools-native".
>>
>> I think it should work just fine, because:
>> python-setuptools.bb    inherit setuptools      -->
>> setuptools.bbclass      inherit distutils       -->
>> distutils.bbclass       inherit distutils-base  -->
>> distutils-base.bbclass  inherit pythonnative    -->
>> pythonnative.bbclass   contains 'EXTRANATIVEPATH +=3D "python-native"'
>>
>> I don't know why my EXTRANATIVEPATH doesn't contain python-native when I=
 run
>> 'bitbake -e <my_package_name>'. And this causes my bitbake can not searc=
h
>> 'python2'.
>>
>> Martin Jansa <martin.jansa@gmail.com> =E4=BA=8E2023=E5=B9=B45=E6=9C=8815=
=E6=97=A5=E5=91=A8=E4=B8=80 16:40=E5=86=99=E9=81=93=EF=BC=9A
>> >
>> > Did you add "inherit pythonnative" or DEPENDS +=3D "python-native"?
>> >
>> > You need just the inherit line.
>> >
>> > On Mon, May 15, 2023 at 10:23=E2=80=AFAM Jiliang Cai <tyrocjl@gmail.co=
m> wrote:
>> >>
>> >> I have a bb file abc_1.0.bb:
>> >> DEPENDS +=3D "python3-native"
>> >> And EXTRANATIVEPATH contains "python3-native" as expected, so command=
 'python3'
>> >> can be searched.
>> >>
>> >> Then I add DEPENDS +=3D "python-native", but EXTRANATIVEPATH doesn't =
contains
>> >> "python-native", so command 'python' can not be searched.
>> >>
>> >> python3native.bbclass  has a line:
>> >> EXTRANATIVEPATH +=3D "python3-native"
>> >> So python3 can be searched when bitbake this recipe. I saw similar co=
des in the
>> >> pythonnative.bbclass file, but why didn't it take effect?
>> >>
>> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >> Links: You receive all messages sent to this group.
>> >> View/Reply Online (#60018): https://lists.yoctoproject.org/g/yocto/me=
ssage/60018
>> >> Mute This Topic: https://lists.yoctoproject.org/mt/98899140/3617156
>> >> Group Owner: yocto+owner@lists.yoctoproject.org
>> >> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [Martin.Jan=
sa@gmail.com]
>> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >>

