Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E2C6C02183
	for <webhook@archiver.kernel.org>; Fri, 17 Jan 2025 15:13:19 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web11.12791.1737126789887534348
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jan 2025 07:13:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=L5t3fIeZ;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6d88cb85987so19975366d6.1
        for <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 07:13:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737126789; x=1737731589; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eNjmhDAzvx1x9palok1LNOxIdl8AH91W8Kyb4Sipqv0=;
        b=L5t3fIeZL2HUI/tcsLSN/xi1jVvNAF/+c0QGI6EK8+PHtvJXv94yU0R0S+hPxeT0SA
         o8F+FGTJ5aTMs0374UxLQhIcCa/qNIoN+0BI+eqkidjbIGnNu9J+ah4VWMbnpPYVYCII
         N3/Du9kmdDvZ25GgZuzvSBWCcT4rqoNpiHTI2hSfw1h+INFIOsD4Lc/jB6ezv5guCoeY
         5vZ+zSQsYEq68x8lquCP71TVOq3GcUkFIdtixrr/ZTdXdiTVYloQ/66d4pxptTS9gSYv
         HoKa2wKiOuaMYNTREdeZKDGo+A0+rU6iIBt0yaecievpACO6DDeFn4HuK+kefuFGexTV
         7jhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737126789; x=1737731589;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eNjmhDAzvx1x9palok1LNOxIdl8AH91W8Kyb4Sipqv0=;
        b=lRfbNci4iBk0ZH3x3/irRY/ulCtpNph/U4onfG0/D0vezx01Ab0jUcoU03vL7+kJQQ
         UsOOQ1bAoeItiT4AwG5actKqmakV/t5nlj8QqlpblLikRGBIMOg9KrKVV4/Wr5zmWHBe
         ZKu80fZL43nrU3z6u4Ls/YkavjWOZUohXw3XEg2+PdihmHPA+cCO8CQMjp2hLxLkUgkg
         8ICYiyFQMnfRY2+FALldatuzIiBZ+ThDhJy/C+JV+7lRh93KMG2CGj7elY6oS4pOkfxm
         acGnc0M+PMIYNXqwz3wlqX5vE1kvqfZI9WoI997jSiMCXZRipFg2FPuVCyoXrjMU+7fe
         KmhA==
X-Gm-Message-State: AOJu0YySR4wC2l9ahNB4cUrFMSRneka7YhqDnjsg25HhAWK0QJpZYCfO
	MHvVJL0CRC+AuNaQjgkQKyU5E1Q18ltmiIxms3aXpDkmfMoAOf74jeWPZwLbSZHaPGvlmfEwP87
	3hy5J1eig1D3K3jkNElEEj6fXPYo/Xg==
X-Gm-Gg: ASbGncsLU1GwVHtQwlehsueRZ46KEhOi4GDdhSj5xrw3o8UbA3dD2jcGVkbBgNzE1wX
	WC2hWUPRX9Pmai1SrlRPelMaC1RiojxQkUWLb81f2w2OezDcu7eZIvNVsDzTZPiC2/GDALwWI
X-Google-Smtp-Source: AGHT+IGG3yXb+lV95I4/lvomGlldGkbq2CDSjACiNdQ4W5k0KHmK11w+ONG3/QgSeiMSGLTlXeRB04sTxfEKvjTB6Xs=
X-Received: by 2002:a05:6214:5789:b0:6d8:a258:68bc with SMTP id
 6a1803df08f44-6e1b2750d6bmr38492276d6.11.1737126788726; Fri, 17 Jan 2025
 07:13:08 -0800 (PST)
MIME-Version: 1.0
References: <CACRoYp_pFeOTE9VYZh+tsvrXbgXXX2YgsCCSDt06CB1BrUcpzg@mail.gmail.com>
 <9114649f-4ed7-4691-a76f-b3b8aaea5d90@cherry.de> <CACRoYp9ra6a8=V5i3mpUQN+wnsZ94hLxoDtX3ds3-ZXo9K2knA@mail.gmail.com>
In-Reply-To: <CACRoYp9ra6a8=V5i3mpUQN+wnsZ94hLxoDtX3ds3-ZXo9K2knA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 17 Jan 2025 16:12:57 +0100
X-Gm-Features: AbW1kvaND3rPvA9vuWIW7R5pmIaN6fOR9eeuAizgYWWDv0YFqcGdl8D9IhNMOwQ
Message-ID: <CANNYZj-rqD1npzoq-OoUROyv+MCiiCbw3D-_jCa6NHqKAx+smQ@mail.gmail.com>
Subject: Re: [yocto] do_unpack:append
To: yocto@lists.yoctoproject.org, kjeld.flarup@liberalismen.dk
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 15:13:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64586

But what are you actually need this for? do_unpack is not meant to be
extended, and chances are, there's a better way to achieve what you
need.

Alex

On Fri, 17 Jan 2025 at 16:02, Kjeld Flarup via lists.yoctoproject.org
<kjeld.flarup=3Dliberalismen.dk@lists.yoctoproject.org> wrote:
>
> Thanks for the alternatives Quentin
>
> --------------------- Med Liberalistiske Hilsner ----------------------
>
>    Civilingeni=C3=B8r, Kjeld Flarup - Mit sind er mere =C3=A5bent end min=
 tegnebog
>    Sofienlundvej 6B, 7560 Hjerm, Tlf: 40 29 41 49
>    Den ikke akademiske hjemmeside for liberalismen - www.liberalismen.dk
>
>
>
> Den fre. 17. jan. 2025 kl. 15.57 skrev Quentin Schulz <quentin.schulz@che=
rry.de>:
>>
>> Hi,
>>
>> On 1/17/25 3:25 PM, Kjeld Flarup via lists.yoctoproject.org wrote:
>> > You don't often get email from kjeld.flarup=3Dliberalismen.dk@lists.yo=
ctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSender=
Identification>
>> > I try to write an append for do_unpack
>> > do_unpack:append() {
>> >    echo Hello
>> > }
>> >
>> > But it looks like it is parsed as Python
>> >
>> >                       parser =3D bb.codeparser.PythonParser(key, logge=
r)
>> >      >                parser.parse_python(value, filename=3Dvarflags.g=
et("filename"), lineno=3Dvarflags.get("lineno"))
>> >                       deps =3D deps | parser.references
>> >    File "/tmp/yocto/meta-poky/bitbake/lib/bb/codeparser.py", line 358,=
 in PythonParser.parse_python(node=3D"\n    bb.build.exec_func('base_do_unp=
ack', d)\n  echo Hello\n", lineno=3D1, filename=3D'autogenerated', fixedhas=
h=3DNone):
>> >               node =3D "\n" * int(lineno) + node
>> >      >        code =3D compile(check_indent(str(node)), filename, "exe=
c",
>> >                              ast.PyCF_ONLY_AST)
>> >    File "autogenerated", line 3
>> >      echo Hello
>> >                ^
>> > IndentationError: unindent does not match any outer indentation level
>> >
>> > Isn't this possible using shell
>> >
>>
>> Tasks can be python or shell, here do_unpack is Python, so you need to
>> write Python code in :prepend or :append.
>>
>> Depending on your usecase, you can simply add a new task and insert it
>> between do_unpack and the next task depending on this change for example=
.
>>
>> Another option is to use bb.build.exec_func() from Python code to
>> execute a shell function, though I don't think this is widely used
>> outside of core code (and I haven't used it myself, so maybe not the
>> best practice either).
>>
>> You can also have shell functions run after the python task is run,
>> those are added with:
>>
>> do_unpack[prefuncs] +=3D "my-shell-func another-shell-func"
>> do_unpack[postfuncs] +=3D "my-shell-func yet-another-shell-func"
>>
>> c.f.
>> https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-m=
anual-metadata.html#variable-flags
>>
>> Cheers,
>> Quentin
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64584): https://lists.yoctoproject.org/g/yocto/messag=
e/64584
> Mute This Topic: https://lists.yoctoproject.org/mt/110666328/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

