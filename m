Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A98DC25B75
	for <webhook@archiver.kernel.org>; Thu, 23 May 2024 09:50:30 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web10.11560.1716457818301140868
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 May 2024 02:50:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=c2GdJI/M;
 spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-51f60817e34so8499687e87.2
        for <yocto@lists.yoctoproject.org>; Thu, 23 May 2024 02:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716457816; x=1717062616; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gp/TxmzKwnvLoAjswLvwy+jgzMySySTZpYmqB+wd/V8=;
        b=c2GdJI/MtZZSCYtiFDT1EVqE4xjymBTHplQAAabSQNhyAi9QGzdwOeTLVJSoo8mtKs
         HRUSM/tR6RoNw9x78EFkvkz3DlWz6zTICmGEkYFMJugdZOQcJZuHaGcEEVJpdbtV53Jc
         /hWSoYlQ50Ch0s7iv44pln9M9k95SGWWK63Mj/ZjsOjS0NR7M4JsAfM7XazpstdjRX1Z
         SMvc++JkhyA4mPrz2GRMawEPHQjAc0sr8CEoec54Puvt+S2LZ8rX+EiHKDPov4BQWVd0
         ps2FyraK0tJ/kB3cNtWVmdRm+QhY+hT9kmHyPtscDl0G0nm9n3GBhg+8F19YBdXKxd+1
         bM2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716457816; x=1717062616;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gp/TxmzKwnvLoAjswLvwy+jgzMySySTZpYmqB+wd/V8=;
        b=GXV+6ubf5qZqrwyMBFGcfeupAnZbYozLhT08Y+WAlKeYcTrWDvTtLX2dtpyb4ToF8k
         4WctPwiHiDGtteZr4ZVrD4ZtWyiZQLXkscIIj7X4qSkfsubT98x5Off7W2/unWapUlDC
         khpaahHArgni7T8jR0xTuG3sEmFyLF56QYs4Ln0a/WDw109F9EZRLa9WyZb9F0lDAaC3
         OtjDrpYfU145YDwqNyGe0UQVEHdJziMGstFV/tW5BrzFoNLR/tVSv6cWH3q3xEJOQXNY
         QDU8RqaIArsM8G6HIP+MbFedFDXUxJvSLDPRQCgP5aBgo3MAav17ai4otmMPegtiXa1M
         O7dQ==
X-Gm-Message-State: AOJu0Yw0MPQ28Ly+gp1HLxcZNezNbFhtYVrYrCJlIoOE5sMKXQBJ4/7K
	gWUHx9jjD9K5rh48Zwdmtho1XPEQvc4o3jXQh3Rs1rbFZeV2/p5S7fFqoJ04iJtnur1R9niEUTa
	PlI6oBh+yooUKvPwCY6tox3WzqAGI+g==
X-Google-Smtp-Source: AGHT+IH+5jAyBlxtX41WbmY4One38mfskT/IJSD73/kyofB9z11Yu+SbophmITwhwRNZdiCYoTqAYWq41/sG35aFjzY=
X-Received: by 2002:ac2:4d87:0:b0:51b:58c7:d04d with SMTP id
 2adb3069b0e04-526bbea2866mr2537168e87.0.1716457816183; Thu, 23 May 2024
 02:50:16 -0700 (PDT)
MIME-Version: 1.0
References: <lZoQ.1716452851320671080.ZUB7@lists.yoctoproject.org>
In-Reply-To: <lZoQ.1716452851320671080.ZUB7@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 23 May 2024 11:50:03 +0200
Message-ID: <CANNYZj_hqM=FvvWhN-c2=g8Wom3RwFWZH0HSgsDrm9RM2GAoeg@mail.gmail.com>
Subject: Re: [yocto] Getting a list of recipes which accessed network during do_fetch
To: yocto@lists.yoctoproject.org, gauravpathak129@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 May 2024 09:50:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63179

I wonder what is the use case? Perhaps there's a way to achieve that
in some other way altogether?

Alex

On Thu, 23 May 2024 at 11:46, gauravpathak129 via
lists.yoctoproject.org
<gauravpathak129=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hello Experts,
>
> I am wondering if there is any built in "Yocto way" of listing all the re=
cipes/packages which accessed network while fetching the source code during=
 do_fetch().
>
> Also, would like to list the recipes/packages which got its source code f=
rom local file system and didn't accessed the network.
>
> I did a grep for "Trying Upstream" and "Fetcher accessed the network" and=
 I indeed got the output something like
>
> tmp-glibc/work/x86_64-linux/python3-flit-core-native/3.7.1-r0/temp/log.do=
_fetch.80085:34:DEBUG: Trying Upstream
> tmp-glibc/work/x86_64-linux/python3-flit-core-native/3.7.1-r0/temp/log.do=
_fetch.80085:36:DEBUG: Fetcher accessed the network with the command /usr/b=
in/env wget -t 2 -T 30 --passive-ftp -P /home/gaurav/uno_yocto_cache/downlo=
ads 'https://files.pythonhosted.org/packages/source/f/flit/flit-3.7.1.tar.g=
z'
> tmp-glibc/work/x86_64-linux/unifdef-native/2.12-r0/temp/log.do_fetch.7925=
4:34:DEBUG: Trying Upstream
> tmp-glibc/work/x86_64-linux/unifdef-native/2.12-r0/temp/log.do_fetch.7925=
4:36:DEBUG: Fetcher accessed the network with the command /usr/bin/env wget=
 -t 2 -T 30 --passive-ftp -P /home/gaurav/uno_yocto_cache/downloads 'http:/=
/dotat.at/prog/unifdef/unifdef-2.12.tar.xz'
> tmp-glibc/work/x86_64-linux/unifdef-native/2.12-r0/temp/log.do_fetch.7925=
4:324:DEBUG: Fetcher accessed the network with the command /usr/bin/env wge=
t -t 2 -T 30 --passive-ftp -P /home/gaurav/uno_yocto_cache/downloads 'http:=
//downloads.yoctoproject.org/mirror/sources/unifdef-2.12.tar.xz'
> tmp-glibc/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+c9670c27ff-r0/=
temp/log.do_fetch.86477:102:DEBUG: Trying Upstream
> tmp-glibc/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+c9670c27ff-r0/=
temp/log.do_fetch.86477:104:DEBUG: Fetcher accessed the network with the co=
mmand /usr/bin/env wget -t 2 -T 30 --passive-ftp -P /home/gaurav/uno_yocto_=
cache/downloads 'http://downloads.yoctoproject.org/mirror/sources/pseudo-pr=
ebuilt-2.33.tar.xz'
> tmp-glibc/work/x86_64-linux/python3-installer-native/0.5.1-r0/temp/log.do=
_fetch.82362:34:DEBUG: Trying Upstream
>
> But I would like to list only the package name such as unifdef-native pyt=
hon3-installer-native.
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63178): https://lists.yoctoproject.org/g/yocto/messag=
e/63178
> Mute This Topic: https://lists.yoctoproject.org/mt/106259482/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

