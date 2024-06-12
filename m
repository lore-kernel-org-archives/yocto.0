Return-Path: <kaiwan.billimoria@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F260C27C53
	for <webhook@archiver.kernel.org>; Wed, 12 Jun 2024 10:45:20 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web11.8242.1718189111519758804
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jun 2024 03:45:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SjtSljr+;
 spf=pass (domain: gmail.com, ip: 209.85.208.42, mailfrom: kaiwan.billimoria@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-57cad452f8bso450988a12.2
        for <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 03:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718189109; x=1718793909; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6jrV5zVPdTNheiT+QhYcYbOlDiTIM/CLSut/rbvR9nw=;
        b=SjtSljr+YyNDxQJjbpPSyRoEIhlOhEZnWbau+HcAOUyjIAb7Qj0VIPkYWvYNULQv6H
         uoBkIj9wXOFQY0tJItnCxXBEo01Ti3Yb+VJhKOgkrtORY4Q20hrikz0yEV9mZL+wcNNA
         kiCgGPaeDoFLZDZmMnsLiF5YR/zceAQYyiPgJWWceD/4NQfA087bzm1JL0NYdKz//b/w
         BZmDZq0lr+u88WGrN3HdVS9IMMYimNHmF18MtLd+evgxrJIbVK/yUVygtAR9Ccaf5RTF
         34r6+II81TllO1OJR2u2NrHhpqYF33YaeL2won3UvdNP5Iok/1JH3dcb7eEJURk5f0lf
         GkTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718189109; x=1718793909;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6jrV5zVPdTNheiT+QhYcYbOlDiTIM/CLSut/rbvR9nw=;
        b=Ik+1xMxGk3/9xEQJsw/Tnp+ekbMAO9a+KvE4MpNCGIt4m25zFaKKEH1owBa5HKduuF
         GbKXRcqu/tsPQOX2S31MreNSkYmf1AKCPMFQSjN7fn2Kp5q81c6T14EqYHxXedIAl4dg
         vgPP+sX/I0RToJDH+iNmEU2s1XQi+kNDLZU9XHkV8Jd+DjtM9JiqNx1fOKg8vtTKhkOc
         dnxZ9vyuC12Zq6iyLG52FDGuIueCPY59lT72zydyKxxOCmxTEnfTiA6nCgKvHx9kEzXv
         I02WzE90uTW1/e1dbxJvZfnzoshYGgQkqtBTb79b0BHljCupM4Ewks1LWBnEHT6yPaBU
         fAnw==
X-Gm-Message-State: AOJu0YyRKBpAcz/7WU9m2xbxl0lyHVWX9WkhAO4y8wQbiExUzkwpese6
	Jt8wnINwaCwexo4m818b4Qr6QgbW7xeirLFExq9rbZ7fJtwFhFBbiiwB2YG5qiq0obfO45qm7rd
	nWM+WoYYlvvBorfxR/MN/A9KaiAmHHiUrG0c=
X-Google-Smtp-Source: AGHT+IGpWFSqrpD36BcY2ZVC4SN5UYt6SSaSeQul9D38n9xV9MdkeiSFsKW9K9RAk8N1QJoUNzbF46s4VHu4aqhhP+Y=
X-Received: by 2002:a17:906:d296:b0:a66:414c:2abf with SMTP id
 a640c23a62f3a-a6f47f8d11dmr88030766b.26.1718189108850; Wed, 12 Jun 2024
 03:45:08 -0700 (PDT)
MIME-Version: 1.0
From: Kaiwan N Billimoria <kaiwan.billimoria@gmail.com>
Date: Wed, 12 Jun 2024 16:14:52 +0530
Message-ID: <CAPDLWs9n96dwiMAkVr9LXY8-64Q0ze3ER1SYs-cpuUV2hfBo+w@mail.gmail.com>
Subject: Recipe for using a custom Makefile with C source
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 10:45:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63325

Hello all!

I have a newbie question regarding creating a recipe for C code, where
the project already has a custom Makefile -which of course must be
used for the build.
From what I recall, the recipe doesn't have to do anything special;
bitbake will pick up the Makefile and do the 'make'...

However, when experimenting with a v simple 'hello, world' C program
and Makefile, I find that am unable to get a 'debug build'
helloworld_dbg binary executable - it simply seems to use the default
$(CFLAGS) value and I can't seem to influence it, via the recipe or
the Makefile??
I've tried the CFLAGS:append approach as well as the TARGET_CFLAGS
setting but they don't seem to help.

Here's my (essential) recipe:
...
SRC_URI = "\
    file://helloworld.c \
    file://Makefile \
    "

FILES:${PN} += "helloworld helloworld_dbg"
S = "${WORKDIR}"

# GCC: later option takes precedence
CFLAGS:append = " -g -ggdb -O0 -Wpedantic"

do_configure:prepend() {
    bbplain ">>> WORKDIR = S = ${WORKDIR}"
    bbplain ">>> build dir B = ${B}"
    bbplain ">>> dest dir D  = ${D}"
    bbplain ">>> CFLAGS = ${CFLAGS}"
    bbplain ">>> TARGET_CFLAGS = ${TARGET_CFLAGS}"
    bbplain ">>> TMPDIR = ${TMPDIR} "
}

PARALLEL_MAKE = ""

do_install() {
    install -d ${D}${bindir}
    install -m 0755 ${S}/helloworld ${D}${bindir}
    install -m 0755 ${S}/helloworld_dbg ${D}${bindir}
}


And my Makefile:
ALL := helloworld helloworld_dbg
all: ${ALL}

helloworld: helloworld.c
    $(CC) $(CFLAGS) $(LDFLAGS) helloworld.c -o helloworld -Wall -O2
    ls -l ./helloworld ; file ./helloworld
#    strip --strip-all ./helloworld
helloworld_dbg: helloworld.c
    $(CC) $(CFLAGS_DBG) $(LDFLAGS) helloworld.c -o helloworld_dbg -Wall

clean:
    rm -f $(ALL)

The helloworld.c is the usual...

$ ls -l .../tmp-glibc/work/cortexa72-kaiwanTECH-linux/hellomake/1.0/helloworld*
-rwxr-xr-x 1 kaiwan kaiwan 77680 Jun 12 15:45
.../tmp-glibc/work/cortexa72-kaiwanTECH-linux/hellomake/1.0/helloworld*
-rw-rw-r-- 1 kaiwan kaiwan    83 May 30 11:08
.../tmp-glibc/work/cortexa72-kaiwanTECH-linux/hellomake/1.0/helloworld.c
-rwxr-xr-x 1 kaiwan kaiwan 77000 Jun 12 15:45
.../tmp-glibc/work/cortexa72-kaiwanTECH-linux/hellomake/1.0/helloworld_dbg2*

You can see that both binaries are essentially the same...
(I realize that an answer to a very similar query was posted here [1];
am just looking to see if there's any update).

[1] https://stackoverflow.com/questions/34934869/why-does-bitbake-ignore-cflags-in-my-makefile

Thanks and regards,
Kaiwan.

--
Kaiwan N Billimoria
Founder, kaiwanTECH
kaiwantech.com  |  https://amazon.com/author/kaiwanbillimoria

