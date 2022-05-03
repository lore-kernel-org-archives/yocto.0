Return-Path: <ashutosh.naik@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70437C433EF
	for <webhook@archiver.kernel.org>; Tue,  3 May 2022 13:40:45 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web10.11224.1651585237678477758
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 May 2022 06:40:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=BOGQ8XoK;
 spf=pass (domain: gmail.com, ip: 209.85.208.179,
 mailfrom: ashutosh.naik@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id 17so22055198lji.1
        for <yocto@lists.yoctoproject.org>;
 Tue, 03 May 2022 06:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=JxI4ZxhfUvIjeCF637HfFnl0zC2uD0on0xanREyMI9g=;
        b=BOGQ8XoKa9AKQReaIElkvqI7p/+70v+ZBOkf5IK9eH7fjg/mPle+0oqajbrfKF/yiz
         WvZI+jmnZA4E37m9ILUJOQoNRAvE8uf94j5ecBUVx/SLpaSz/Ykv2gf0d9JVvu6uLH5n
         iMzCscFnUDNpWBZemzD9owHnWdN9hJJ7iO5XHUkDipiL3UsuGNMXmQvWfn4Ud6mt9pju
         CokIeZO7AYrKWAeby9qxyqj74SuLbIADLEpuy9JU8F8ukgePQAEo5QemejVfJ9lYLQwK
         cHqOhSIkqQOqUrZFV44Zf2ob5BUuvWDcqIYmRw6WxI5r2L+gLXEWiu2EGWAGg0Rpi5eN
         0LPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=JxI4ZxhfUvIjeCF637HfFnl0zC2uD0on0xanREyMI9g=;
        b=Qw+vB0I81QNMa1YFWigd6Zxuc7rwX+7A1WhB8folRm5fo3NkJdWlg57xsO0xCziDvA
         eo99S+JJbDWzxb5tc2qm+ibBCJ4D2tK328oxUIt+uSoALIG32xckqKTPWX7zMtaMynAk
         APH0hchXBZNgpAVjYDV2nTm4YBIpYc9lF6lsxDTfbRc++AEiED1FojJvvMDDyf3yTsGz
         hVSU8zwAyi9i+r7+j/Z0cuafu5rSbiLdwU86gpsoH0032EPHw9Yy9alV6JM6V+8EAcMV
         BLWgZpaPY+vBPNCKbmkyHs8Sq582HJCZF6C2k6QUCcGR4SlqDd3/AhGEvb+hdO4NICOk
         zIDw==
X-Gm-Message-State: AOAM531BFSmztoC7/dZCAB0hNfLZEsLxF/GI8gGmQl20ibNzNIOZX6jL
	bo3gqgrZ68h8OaZzsIApxiLRZq1RJu9HrIa/87I=
X-Google-Smtp-Source: 
 ABdhPJzxdcG/WSUGII8DCZXmM9oo4uVFCJQtWs4RSKdR1DMHqRPB27lY1z43sstB9KfriE6aRjcRGsWDt0lTnCGw2i0=
X-Received: by 2002:a2e:9c90:0:b0:24f:1107:14b0 with SMTP id
 x16-20020a2e9c90000000b0024f110714b0mr10280658lji.342.1651585235689; Tue, 03
 May 2022 06:40:35 -0700 (PDT)
MIME-Version: 1.0
References: <r3Gt.1651240088695680202.RPCQ@lists.yoctoproject.org>
 <58450f3f5c59fe95666e1e528f40cf9ca47248ce.camel@delisys.ch>
In-Reply-To: <58450f3f5c59fe95666e1e528f40cf9ca47248ce.camel@delisys.ch>
From: Ashutosh Naik <ashutosh.naik@gmail.com>
Date: Tue, 3 May 2022 19:10:26 +0530
Message-ID: 
 <CAAJeOA_+y-sYK3nGJWPEoqdPs=DUoq1Fd-yb1yWQho1wWub1jg@mail.gmail.com>
Subject: Re: [yocto] Yocto cyrillic characters support #yocto
To: Nicolas Jeker <n.jeker@delisys.ch>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 May 2022 13:40:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56982

On Tue, May 3, 2022 at 2:02 PM Nicolas Jeker <n.jeker@delisys.ch> wrote:
> On Fri, 2022-04-29 at 06:48 -0700, Ashutosh Naik wrote:
> > For eg. If I try to create a file like :
> > # touch  1=D0=A7=D0=B5=D1=80=D0=BD=D0=B0=D1=8F
> >
> > I do get:
> >
> > # ls
> > 1??????
>
> Is your file created with the wrong name or is it actually just the
> 'ls' output that doesn't support unicode characters?
>
> If you're using busybox, I think these configuration options could be
> of interest:
>
> CONFIG_UNICODE_SUPPORT
> CONFIG_LAST_SUPPORTED_WCHAR
>
> You'll find this at the bottom of "Settings -> Support Unicode" when
> using menuconfig.

I have enabled those options in Busybox to no avail.

I still cant see my files :

# touch 1=D0=A7=D0=B5=D1=80=D0=BD=D0=B0=D1=8F=D0=B3
# ls -l 1=D0=A7=D0=B5=D1=80=D0=BD=D0=B0=D1=8F=D0=B3
-rw-r--r--    1 root     root             0 May  3 13:35 1???????

The file is created though and visible in bash completion and I am
able to delete the file as well.

Is this working for you on yocto ?

Regards
Ash

