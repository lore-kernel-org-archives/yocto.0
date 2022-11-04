Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48E55C4332F
	for <webhook@archiver.kernel.org>; Fri,  4 Nov 2022 08:05:29 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web09.8731.1667549124924480168
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Nov 2022 01:05:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mNfPT+Y3;
 spf=pass (domain: gmail.com, ip: 209.85.208.176, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id h12so5243574ljg.9
        for <yocto@lists.yoctoproject.org>; Fri, 04 Nov 2022 01:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pr3XE/tdiNLoKfruQMKqKQz9RufBNhg6ey1vBJfgoNw=;
        b=mNfPT+Y3gQzLKqlfym/pE9ciCfeCirRd6cMk88yNI4OByBaukgD5Zf1+if7Ps65Ssc
         FAbOnGC2VNXLNWSTFiaHM3PuKs9QpSlDb0B0/0dHvMGefn/aM7PCqME1OCRO6QPPqM5Y
         0L9SQDojmWxM9qTKUx7wYBGUa/6Ja3Ue7Dx6PzpiqMYnCd5vPaf0CzLvqqTMVu7DNtf/
         F2OTb29Hmpfc5o8InbaXzOZVQkC5uaotcTvvm/2zhG7Hg2yoYNeO3gCsd2/3O6+7IlRK
         RlKY/PTPCbJWa3jpnCRkJB3Ll7+roMs+SqqXjZTA+37gHtu1Syoo4QmFqyYbPVeWBXkq
         +d5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pr3XE/tdiNLoKfruQMKqKQz9RufBNhg6ey1vBJfgoNw=;
        b=A5tS0W+1FUPi8nzVZj1qBJqrsOMGCUlxywp8yeOk7picpLsIXo3Q+B8CvbvXBKYkld
         M5qBOswfTDS9KkU80XJBlDHaWPpFAFKZm3gxsg/NT1qkb+goJ+Qd+VVGt6ja4JUkcgNi
         Ys1cCs6Dx6JFydEZaErrWo4dLXAJ6a9VTD9rT+Wtdm6KrSMpY9EjoZWJeSzRuDBN2qV4
         B5dj3YhMsrWKrTsEINCf7MkZ+kNeAVazhneksNF2EjZFpT5lmWWKH/bAPL6IE0ADnLsn
         eVVOXlQAq+UOvTp5K3rVu4xn3BSkT4140tOP7chQKLHFXEJ4ySjoENGiX97eA+dnk3B3
         gQSw==
X-Gm-Message-State: ACrzQf1YR19TJ5BxPi0/h4wUu6x8OM0XxvXtFU0HMLIIEwrJ3HqELP1E
	Fs0vFv8W7edacUn8u5YeLxCkYI7sBeQGjd7jHjs=
X-Google-Smtp-Source: AMsMyM4G1q0oJnMe2qfowHWRJd8BivtXY/cMgDPeJa8rktI5A4Dr3y8gXASitBKfPE4WwOBFchCMltZHRrO1ykxoDk4=
X-Received: by 2002:a2e:3011:0:b0:277:3a99:7a49 with SMTP id
 w17-20020a2e3011000000b002773a997a49mr13158476ljw.217.1667549122812; Fri, 04
 Nov 2022 01:05:22 -0700 (PDT)
MIME-Version: 1.0
References: <DM8PR13MB5111D68232CC40829F86E9E6FE389@DM8PR13MB5111.namprd13.prod.outlook.com>
In-Reply-To: <DM8PR13MB5111D68232CC40829F86E9E6FE389@DM8PR13MB5111.namprd13.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 4 Nov 2022 09:05:11 +0100
Message-ID: <CANNYZj-AoOpNh114rQjK=N3z4+piBsfE-TJrR1AxKFK_9FxMDw@mail.gmail.com>
Subject: Re: [yocto] Python3 project without setup.py
To: John Klug <john.klug@multitech.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Nov 2022 08:05:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58484

This is probably not available in dunfel, but in master there are
bbclasses that handle this:

inherit pypi python_setuptools_build_meta

So try with master, and then consider your options.

Alex

On Fri, 4 Nov 2022 at 00:03, John Klug <john.klug@multitech.com> wrote:
>
> I am using Dunfell.
>
> What should I do in a recipe if a python project has no setup.py?
>
> Specifically:
> https://github.com/pyhys/minimalmodbus
>
> I tried adding a trivial setup.py:
>
> >from setuptools import setup
> >if __name__ == '__main__':
> >    setup()
>
> This results in the recipe failing while trying to "import serial" from the python code in the project:
>
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | Traceback (most recent call last):
> |   File "setup.py", line 4, in <module>
> |     setup()
>
>    ...
>
> |   File "/home/jklug/mlinux/build/tmp/work/arm926ejste-mlinux-linux-gnueabi/python3-minimalmodbus/2.0.1-r0/git/minimalmodbus.py", line 38, in <module>
> |     import serial
> | ModuleNotFoundError: No module named 'serial'
>
>
>
> John Klug
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58482): https://lists.yoctoproject.org/g/yocto/message/58482
> Mute This Topic: https://lists.yoctoproject.org/mt/94795363/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

