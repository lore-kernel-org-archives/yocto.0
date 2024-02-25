Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 831F7C48BF6
	for <webhook@archiver.kernel.org>; Sun, 25 Feb 2024 02:06:16 +0000 (UTC)
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
 by mx.groups.io with SMTP id smtpd.web11.32707.1708826771475636045
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 Feb 2024 18:06:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=XT53IqOL;
 spf=pass (domain: gmail.com, ip: 209.85.160.42, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-21f0c82e97fso1429126fac.2
        for <yocto@lists.yoctoproject.org>; Sat, 24 Feb 2024 18:06:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708826770; x=1709431570; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/7ArFyDQmgB9LqhfZ/cttp428lIln2JYyZn34ysPeb0=;
        b=XT53IqOLqY9fYwKJVMc0kI2vMlwl+JCtKSW+4aRuGyW1Dx56jOAKIItjkzSmGmuI/9
         dls436Z5/B1EYwo6Y+DW82ytbiWudHjhnUF5qj3YSdokbSr1DQ/s2W/RTKDKX2J4eIYy
         eTm2D0kzwL0xRgy+dIw7aSfSS+WJLi0dhOGoJqYLdLStlAGak2cAry7taWMnIPDOWue8
         UJCSWQ/ZAmsOS+RsvqBxKG9ue8i8KimuXFNzdB6bJsoooVomEUpymtOsGt2bX9o7jD/g
         MMI8spNGTm/0WsUOxdVOl0z/NZ0C9PdXU0B1K0cjGJU+yiQ4ZRe/4DT+g9dkXokGtXyO
         i+XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708826770; x=1709431570;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/7ArFyDQmgB9LqhfZ/cttp428lIln2JYyZn34ysPeb0=;
        b=o4SDewwFVDvIvWhpSXjZvvrAtEnyl1134fkkPPJtDm373aa1BqVpXUpnMuGmTP0Xxy
         BTEL+A8lbWwkpYAXHB4dPvypG3mXZ44t11SxqQHF8svip9S2pmNzbYSXzqDf5wJVdFnk
         RlLgsGg38thrd7KCuF3nI6ANlzkTYp+/VuhS0QuqCZyKxp12kbxb7HiTHEfBl/Q51eKI
         7hfQmrjdw+CoGNkvHq/KGw/wY+1WUpokwWWTDT3I5GqAw3tf6HcVUcSs/uzMHblWjsCr
         3cmBwXIKa0/pGZtMt05eYSCdmMpkKHgjflAwX5eLfmkHJ5KXeWSHX7f3ZPN7H7elYv1L
         HtFg==
X-Gm-Message-State: AOJu0YyhsUE2TXqJWJNJK3JPJfVMOWXXg96QJQYCDnFg/GdHzye3Y3GO
	wRjVOwk8Vu+ogYZMQSrF1e8yxD8J/OFAKPiv2kRcbsDBwIKISE1+GyjqPvD8EimQWR4JoG9TeZD
	lY/hngccvf3ef2Qfs8JCejUgtTKppuC7/gOhrNQ==
X-Google-Smtp-Source: AGHT+IHVzWXwxZjnfak3r/0d9ZlhrxYu/aZTTyzMVL4asgOH3AxY+a5ipjmZzB7SPw8Uk7CMFU3fnk0C9M8nbg/BiW4=
X-Received: by 2002:a05:6870:3455:b0:21e:ed67:b0f5 with SMTP id
 i21-20020a056870345500b0021eed67b0f5mr4238299oah.53.1708826770226; Sat, 24
 Feb 2024 18:06:10 -0800 (PST)
MIME-Version: 1.0
References: <CABKMkPK-m3T120viE08qTJ8pm1xpd+bhZNAgevnmkvvb3XAFmA@mail.gmail.com>
 <CABKMkPKWppU6dSNRMuwt_dhJM4g3M4RSsTWKqRzintbZWiuz0A@mail.gmail.com>
In-Reply-To: <CABKMkPKWppU6dSNRMuwt_dhJM4g3M4RSsTWKqRzintbZWiuz0A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 24 Feb 2024 18:05:43 -0800
Message-ID: <CAMKF1spwK3a8YyBEFnrUMjLRqv+e8zHtWACJiNYi5QWhBNsZjg@mail.gmail.com>
Subject: Re: [yocto] [kirkstone] dwarfsrcfiles + rust staticlib
To: yocto@lists.yoctoproject.org, joel.winarske@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 Feb 2024 02:06:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62597

try to run ar x on the .a file and see what objects it contains.

On Fri, Feb 23, 2024 at 5:51=E2=80=AFPM Joel Winarske <joel.winarske@gmail.=
com> wrote:
>
> Running readelf -h on the file does work and it shows that it is indeed t=
he correct machine architecture
>
> ELF Header:
>   Magic:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00
>   Class:                             ELF64
>   Data:                              2's complement, little endian
>   Version:                           1 (current)
>   OS/ABI:                            UNIX - System V
>   ABI Version:                       0
>   Type:                              REL (Relocatable file)
>   Machine:                           AArch64
>   Version:                           0x1
>   Entry point address:               0x0
>   Start of program headers:          0 (bytes into file)
>   Start of section headers:          201744 (bytes into file)
>   Flags:                             0x0
>   Size of this header:               64 (bytes)
>   Size of program headers:           0 (bytes)
>   Number of program headers:         0
>   Size of section headers:           64 (bytes)
>   Number of section headers:         165
>   Section header string table index: 1
>
>
> On Fri, Feb 23, 2024 at 5:40=E2=80=AFPM Joel Winarske <joel.winarske@gmai=
l.com> wrote:
>>
>> I'm hitting qa issue when attempting to install a archive file built wit=
h Rust:
>>
>> dwarfsrcfiles: /home/joel/agl/raspberrypi4/tmp/work/aarch64-agl-linux/ri=
ve-taffy-ffi/0.3.0-r0/package/usr/lib/taffy_ffi/libtaffy_ffi.a: not a valid=
 ELF file
>>
>> I can link this same archive file with C code and the executable runs.  =
It's a valid archive.
>>
>> Any suggestions?
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#62594): https://lists.yoctoproject.org/g/yocto/messag=
e/62594
> Mute This Topic: https://lists.yoctoproject.org/mt/104540813/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

