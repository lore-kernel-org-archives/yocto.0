Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web10.15333.1591195204606185460
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Jun 2020 07:40:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=il9sFz5I;
 spf=pass (domain: gmail.com, ip: 209.85.222.179, mailfrom: kergoth@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id v79so2315446qkb.10
        for <yocto@lists.yoctoproject.org>; Wed, 03 Jun 2020 07:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:in-reply-to:to;
        bh=yJ9cGaw6MQHv5GYG/+I+wFm99ZSmltlujI3qHYawH2o=;
        b=il9sFz5IHVqeWGUkEPN6tBk66MFDSoLelMKMl1PGVGXPhTBzkxZNtzkBpsXxWoPbN6
         I36Nl2zh+CdLj0iuJz9S8haSWnqA4jpSwaAv84gXZ3aqDJeEV6e6J6F7MysImSPgjNlD
         9Z39LfZSZ/aM3/VfQg6O7EQO2jTLJ3Saa+6aSjHzTsvgH5eFqXXL4vPlalM908k0Jmwt
         NnqT+mN78zWFH23Qt45auiNu4fV6ykCjjoYwuP5gsOHlps5MdEAdGvlyDn7+EDy8QH+u
         ZOeU+BpFD3lVWZDcPAqSx5a6GpRtJYkps/XbvXLQEr66u1Rp+4B81i4VRaKF9jiTdtMo
         ap7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:in-reply-to:to;
        bh=yJ9cGaw6MQHv5GYG/+I+wFm99ZSmltlujI3qHYawH2o=;
        b=Mv02hhtZJGr1Ak0o674KwrAzxC8nc1YSS1cjxGtA6dNp+alpx6PSSf2JjGanR4L/gU
         MEQdkAa1i73gqWRmWdWeAHYSrBub8t+bP6TftW+0xwIcx8tGiL7rAcc2xILLMVqMHPPd
         lv47TpEO4SFlfBlw61fRXgKBii4ivG/DTjAHcKHX0+00Et3osEr31nJxwv07Ggu6lM1w
         kAoijO4xoBeHLmj80VF5kEzs9Rcl1v6vX7sQIuL/pRVFQJsYtY96HjdZw6aNZb7gNgwt
         8lo8Y/oaktYwdu6+ke8Is2Fmp8XZ5zfbxsa6H1kjj2xfht6muoP8Kwjeab0irxfVFpgn
         DKxA==
X-Gm-Message-State: AOAM530D9bDNdxw1sUl4RpGAi58XIdCpsDS+4HNRS0ebMGTVVHtBsvn3
	ylmXPK9LoOHRkK2pmUPvYSAZnMgqzNA=
X-Google-Smtp-Source: ABdhPJyXGc8IuDqaLbD23JUGkseeR38/Qf0zvRgwkHz/QeTRUPn3FMAx3OYLEiinxk9DIahi1ILnww==
X-Received: by 2002:a05:620a:2290:: with SMTP id o16mr30513425qkh.205.1591195203176;
        Wed, 03 Jun 2020 07:40:03 -0700 (PDT)
Return-Path: <kergoth@gmail.com>
Received: from [192.168.1.36] (ip70-180-21-74.ph.ph.cox.net. [70.180.21.74])
        by smtp.gmail.com with ESMTPSA id z9sm283856qkj.129.2020.06.03.07.40.01
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 07:40:02 -0700 (PDT)
From: kergoth@gmail.com
Mime-Version: 1.0 (1.0)
Subject: Re: [yocto] devtool modify issues with ubuntu 20 and fedora core 32
Date: Wed, 3 Jun 2020 07:40:00 -0700
Message-Id: <E1827ACC-C046-4086-B4CB-026A0FC58904@gmail.com>
References: <115f3f1f445a163af79f94cdd48b497f478ae85d.camel@linuxfoundation.org>
In-Reply-To: <115f3f1f445a163af79f94cdd48b497f478ae85d.camel@linuxfoundation.org>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
X-Mailer: iPhone Mail (17E262)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



> On Jun 3, 2020, at 6:43 AM, Richard Purdie <richard.purdie@linuxfoundation=
.org> wrote:
>=20
> =EF=BB=BFOn Wed, 2020-06-03 at 11:06 +0200, Alexander Kanavin wrote:
>> I'm not sure if this is distro specific. _PYTHON_SYSCONFIGDATA_NAME
>> is set from python3native.bbclass so that native python can pick up
>> target configuration, and if the target configuration is not there
>> (it comes with target python3 build), then there will be a failure
>> like the above. How does your recipe look like? Do you get the same
>> failure if you try devtool modify in a plain yocto environment (not
>> the SDK)?
>=20
> Chris and I did talk about this on irc:
>=20
> (22:33:38) kergoth: actually fails even without prserv enabled at all
> (22:34:07) kergoth: just import pydoc will call sysconfig.get_path() which=
 enters that codepath
> (22:34:22) kergoth: so calling anything that imports bb from a task will e=
xplode
> (22:34:33) kergoth: cooker pulls in xmlrpc, which pulls in pydoc
> (22:34:41) kergoth: breaks devtool modify
> (22:37:04) RP: kergoth: right, it was more about it being a hint at the ki=
nds of issues
> (22:37:11) kergoth: ah, fair enough
> (22:37:26) kergoth: i expect we may need to change how python3native is do=
ing its thing
> (22:42:55) RP: kergoth: quite possibly. I never liked that fix and suspect=
ed there was more to it :/
> (23:21:39) kergoth: RP: maybe something like https://github.com/openembedd=
ed/openembedded-core/compare/master...kergoth:python-sysconfig ? i'll mull i=
t over. makes sense, though. we rename _sysconfig only for the python3-nativ=
e recipe, so it'd make sense for us to only change that name for our python,=
 not any python run from the task
> (23:21:49) kergoth: _sysconfigdata, that is
> (23:46:35) RP: kergoth: something like that would make sense, yes
>=20
> Chris: Did you come to any conclusion?=20

I tested the initial linked prototype but it caused failures in the glib bui=
ld so it must have been missing something. I haven=E2=80=99t had time this w=
eek to look back into it yet.

> Does someone want to send a patch?
>=20
> Cheers,
>=20
> Richard
>=20
