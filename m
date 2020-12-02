Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web08.2848.1606904251843676410
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Dec 2020 02:17:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=wgCCT0zP;
 spf=pass (domain: burtonini.com, ip: 209.85.167.44, mailfrom: ross@burtonini.com)
Received: by mail-lf1-f44.google.com with SMTP id d20so3582506lfe.11
        for <yocto@lists.yoctoproject.org>; Wed, 02 Dec 2020 02:17:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=0kPJRDeFS0BFV/9CeytJhcfW7LepfiJGTzHQ9lj6kA8=;
        b=wgCCT0zPbjujPJA3wwM1tgwHWjS+d2hepkaMB2UJJF9lI8pcZIws/Dx+2cnN8Q81+3
         6GMGr0dsGWZC35e7E41gkWxd2Hod3lAvvhvqp5cQ+VOVbqsljkwPfWv2EYl06nQ5dsth
         KWYe4X7F+feCNswfo0pFvWF1dgkr6hwthaCpvuKSnrmYBgo7fUeLQY0z54xiONH6s9Bn
         +TIzjp8Mw1xa+yAXzc3MOzDHJ4eaptgQQJAJqBo81Zl/mFjtyoi3fWqqDeYLsqqqOHNy
         Ajs0yCpUQCnHYIfBIf7KPYvGngJAuY7wJLGY411014OMzlp0FmPhGia9BZnAryt1dXXc
         Zz8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=0kPJRDeFS0BFV/9CeytJhcfW7LepfiJGTzHQ9lj6kA8=;
        b=q0SrSC8gTLJ0qLb7z6BPx8YYU+RVUgrOOh+3wh3KeL6ecrUmkx/sg3YojtYJKBYxlL
         4DV2/BUemhinTU5HKdoOREp5d5SbuxyxofvmjJR0owmJk/mI2kyUHh0E1Hveh9uv4ODb
         URHqWU9uT+ZeI3LmswUHYwVMe6IkRN+jZkM+m32iviMdl/YnE49aysXpjZvJSn+qzxcD
         25mmM8vbqX6cYcwD22p6G+S/JeDqUFwlg37ifFCiuB62pInQZUGoJniRwCwcAQaIEfMN
         tS011PW8EA4rb9beuI1YEtMExBlmffM2olmIXoJX2/3FM2kvFCYzshJRvdXW12tAfl9o
         sw9Q==
X-Gm-Message-State: AOAM531d3O9/fanV5KHqgw6eC+Xtk71S1fyyIx0YCXCwnQ/dPy1ZWiEQ
	EEh3uL6U5hyEIDr+Zu7tNqVMtxid5ejAHVKZCJgLlQ==
X-Google-Smtp-Source: ABdhPJxsrjOstqlQTJBDoaZzrB83p/2b63zOY8XQg98PhCx9s6w4bq/JSVq58BTGZqrXivQQHp1uBGimGoSCbyYd/LA=
X-Received: by 2002:a19:ac07:: with SMTP id g7mr949431lfc.125.1606904249679;
 Wed, 02 Dec 2020 02:17:29 -0800 (PST)
MIME-Version: 1.0
References: <ed8Q.1606903359819273417.jd39@lists.yoctoproject.org>
In-Reply-To: <ed8Q.1606903359819273417.jd39@lists.yoctoproject.org>
From: "Ross Burton" <ross@burtonini.com>
Date: Wed, 2 Dec 2020 10:17:18 +0000
Message-ID: <CAAnfSTv7K8Q+APg_T8sjSRSO3hEkZsYUVa2UeqtHdT4n6uJOLw@mail.gmail.com>
Subject: Re: [yocto] How to write custom recipe to install AWS C SDK from github #dunfell #linux #yocto
To: vijayrakeshmunganda@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I suggest looking at meta-aws (https://github.com/aws/meta-aws) to see
if that has a recipe already, and if it doesn't use one of the recipes
there as a starting point.

Ross

On Wed, 2 Dec 2020 at 10:02, <vijayrakeshmunganda@gmail.com> wrote:
>
> Hi,
>
> I'm trying to write a recipe to install AWS SDK into the build(https://g=
ithub.com/aws/aws-iot-device-sdk-embedded-C), but I complete don't know how=
 to do it. Based on online example https://github.com/joaocfernandes/Learn-=
Yocto/blob/master/develop/Recipe-CMake.md I have written my recipe file and=
 download the sdk into files folder of my recipe. When I run build do_confi=
gure got failed.
>
> SUMMARY =3D "AWS IoT SDK EMBEDDED C"
> SECTION =3D "examples"
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e=
0bcf8506ecda2f7b4f302"
>
> SRC_URI =3D "file://CMakeLists.txt"
>
> S =3D "${WORKDIR}"
>
> inherit cmake
>
> EXTRA_OECMAKE =3D ""
>
> I know it is wrong, but kindly please someone help to write it correctly=
, thank you.
>
> Thanks & Regards,
> VR
>=20
>
