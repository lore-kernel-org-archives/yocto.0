Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 606E9C25B75
	for <webhook@archiver.kernel.org>; Thu, 23 May 2024 09:59:30 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web10.11742.1716458368021349924
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 May 2024 02:59:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Kcq7bjN4;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: martin.jansa@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2e576057c2bso109852901fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 23 May 2024 02:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716458366; x=1717063166; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zeGWckbkqskTNb1p79xjkvo9z1mm/OIH6pd7dBhrEK8=;
        b=Kcq7bjN4dJNoBmISrh7rMC9LJYCpVDXXl9zfMn/UFsegVVzQJnyGTPyOEV6nFRXc9+
         wP2/5NA7Ar8o4Y/W6fE8ePshd8P3V30oobvnBQI9fL//G4HOjI1HnR7JTmiq4s/ZIkYn
         /xYYPoNSPTraNThLDpSJrCCSwrk9uyXBklch5b6YfxRpFBCOFh+8rIH+aDpTJx2TIakc
         fPCIXimp7TY0+T1LAj4BkPCkdYsHG97tSrJhjso+K//5gsLN+tohcBdP8NW/FenxoBjT
         8BhB7V2Vq/OKi+kAj923EjMPbsVOdx7h9x7MIDPDCL6xKOC+vgvpfL3nC/1Fmtkpjzfm
         QKRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716458366; x=1717063166;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zeGWckbkqskTNb1p79xjkvo9z1mm/OIH6pd7dBhrEK8=;
        b=PCyHAddATkxcmblFqO/7wjKNQh3/7ixjFo+KCBI8fV0OE95z2KYJ7Tn3lR/lwVij5Q
         qKspDlubgnnyoIrI9tK3Kx3OQS5nL5GLYkodYayJWMEO1diP5mHOCXfDgWBwBfJvgS9B
         wG18kuCRU+8/ncgCM/Q77npL/yzPD/eke+t97Y3Lg3oljqqEPi9y1sVqJBUax0FgRhno
         GYB9Z7cb69ts8hCCF+tpIQHfifynho8llC6ylAdp87XvtCKwz7I2F/vDcbnmw8t1rlwM
         x+IocKPUewBhKv+AJpPdEzD9dJOmTFA51MuqXGkz1AUpDADFfggwV0+NlTInMfW61FaP
         ut3Q==
X-Gm-Message-State: AOJu0YxVdv9m2mnhtfXStIjMPus0Y0z34L2PaIX+wpLxznKlq7nVHgca
	6URHUfswwK9FMpdCWd77jwCzs7ykhy2KAVJIfhKbIHoRVqZwgsVrHDrCTWoxPp43rkIHabeKNAE
	2jwnieC67EK/XnmOqLlgnh6H7Gcr+lZ+5
X-Google-Smtp-Source: AGHT+IEBHAyqV+ECi3H9G/QKhveig6sKT3T26665Lz2UAwgCqjSfp/B3xaIevgpNDjOTOeutSOXiBLXQteprkuJua+k=
X-Received: by 2002:a2e:8017:0:b0:2e1:d48e:d5b3 with SMTP id
 38308e7fff4ca-2e949467efemr36708991fa.20.1716458365917; Thu, 23 May 2024
 02:59:25 -0700 (PDT)
MIME-Version: 1.0
References: <lZoQ.1716452851320671080.ZUB7@lists.yoctoproject.org>
In-Reply-To: <lZoQ.1716452851320671080.ZUB7@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 23 May 2024 11:59:09 +0200
Message-ID: <CA+chaQd8-hn=5AAsF32LfDjLv0FNn3ca95XAgLzCUa3vkEheqg@mail.gmail.com>
Subject: Re: [yocto] Getting a list of recipes which accessed network during do_fetch
To: yocto@lists.yoctoproject.org, gauravpathak129@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 May 2024 09:59:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63180

You can set BB_NO_NETWORK and check what fails to build from local DL_DIR.

On Thu, May 23, 2024 at 11:46=E2=80=AFAM gauravpathak129 via
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
> Mute This Topic: https://lists.yoctoproject.org/mt/106259482/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [martin.jansa@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

