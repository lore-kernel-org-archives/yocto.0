Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB598EE4996
	for <webhook@archiver.kernel.org>; Mon, 21 Aug 2023 13:23:34 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web11.10859.1692624207950425778
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Aug 2023 06:23:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=UEiURP++;
 spf=pass (domain: gmail.com, ip: 209.85.167.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5007f3d3235so1640185e87.2
        for <yocto@lists.yoctoproject.org>; Mon, 21 Aug 2023 06:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692624206; x=1693229006;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Bj8NW3fR1SgO+vi77VQMYc5jLW6ryB3LHjQLQr8LcIg=;
        b=UEiURP++jFwqXP6XwoTCfL3VWknyrl2jsalgcQcwil9qskZIzPbzQwZKAegNYvmYOq
         sCMeMjC91A98eVNcLNLTVXgocofdn3u9RsblNvVkgCJ3NF5YFpxQCkWFSjMjQigbbxbe
         Vu8Bijvc+E80/C3/9VAWT0CteTzGYTtgusfHo3S5p33p1BwpEg5Nva+oMgPLTVwvD4kT
         IMEsPHULiOt4PSbwzjeJOavB0EIBv9wwGVYS44t67josTYBM1ve7umzDgEmM8DVjsr1d
         Gg0ACya4vi/iP/sEqjTz0sHRGafm2RxqDmb4PwmO06ulsPGKJ4TmMV+AA6GuLtmBUidK
         XUEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692624206; x=1693229006;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bj8NW3fR1SgO+vi77VQMYc5jLW6ryB3LHjQLQr8LcIg=;
        b=bCz7iNSGAKxB0VWNXi5k1aQR1RlC9CGmJcyELN/FBn2R2pGQaUEJGAcNP7yA/NHPfo
         K8LX49UBaay6t3nQAvwN86DtyFCh73wZYknL4x6t5YWiAGcofS5agzy3abpJ1A166ZL7
         BQktw+s8Rl9PtgqIMt0unPtO+pA1Loh38uuhhN4Muyf84XHS5De9ZcckH3p0LhMm+1N/
         id+tq5mKKFgzSapI837jJxNAWHDqApssQQ7Q/1zwyvaGxuCJyzEc++IYnfMA1YfAw31V
         i3hGGyemxjyQYuKWBjX1HJONlodqCgDVT1cz/7UznwnhRdxmyBiV87m7jbQoZnSQNb7w
         dt9Q==
X-Gm-Message-State: AOJu0Yz2QoarSCpI5JMLzvYhZK2Us31rKklUmS/eKM0DmHIWRETVxiqA
	hRq2d1RFvQz3/hdctU6Y3el+v7U9voSYf5p0glU=
X-Google-Smtp-Source: AGHT+IE7YC/vTezy/mvCuvAisasdLq/wu6p9KuIor8ZQrwofpxgroRqiDA2hGi6GEyYW0LJEh/30Ux2oQ7rwnJp444E=
X-Received: by 2002:a05:6512:114d:b0:4f8:67f0:7253 with SMTP id
 m13-20020a056512114d00b004f867f07253mr5989125lfg.49.1692624205708; Mon, 21
 Aug 2023 06:23:25 -0700 (PDT)
MIME-Version: 1.0
References: <7d6af5897b3a409c3252dcce0286ff449952cff1.camel@vrag.ch>
In-Reply-To: <7d6af5897b3a409c3252dcce0286ff449952cff1.camel@vrag.ch>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 21 Aug 2023 15:23:14 +0200
Message-ID: <CANNYZj89ftN29+X3TfWJU1FV2_O0UduZ5FbL4LiAhUt9hUzgfg@mail.gmail.com>
Subject: Re: [yocto] SDK build generally broken?
To: David Daniel <david.daniel@vrag.ch>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Aug 2023 13:23:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60839

SDK testing happens several times a day in yocto CI. You should
probably try building for core-image-minimal with only poky, no custom
layers, as that is where it's tested. Then bring bits of your custom
setup until it starts failing.

Alex

On Mon, 21 Aug 2023 at 14:49, David Daniel <david.daniel@vrag.ch> wrote:
>
> Hello everybody
>
> Has anyone successfully built an SDK lately? I cannot build any SDK,
> neither for my image nor for core-image-minimal.
>
> If I define my own image I get the error (I already wrote - nobody any
> idea?) that the dummy-sdk package is to be built for a different
> architecture:
>
>
> x86_64_nativesdk           3.1.2-r0    oe-repo  330 k
>  nativesdk-openssl-conf                 x86_64_nativesdk           3.1.2-r0    oe-repo   12 k
>  target-sdk-provides-dummy              sdk_provides_dummy_target  1.0-r0      oe-repo  9.0 k
>
> THIS ERROR ONLY APPEARS IF I DEFINE MY OWN IMAGE (though the image can be built and works).
>
> I guess this is due to the following code in the sdk-dummy recipe:
>
> python() {
>     # Put the package somewhere separate to ensure it's never used except
>     # when we want it
>     # (note that we have to do this in anonymous python here to avoid
>     # allarch.bbclass disabling itself)
>     d.setVar('PACKAGE_ARCH', '${DUMMYARCH}')
> }
>
> But furthermore, I am completely unable to build the SDK with my
> machine - I took the machine from the working image sources I am
> working with and took a plain master poky checkout (bleeding master).
> When I want to build the SDK for the core-image-minimal I get the
> following error:
>
> ERROR: m4-native-1.4.19-r0 do_collect_spdx_deps: Error executing a python function in exec_func_python() autogenerated:
>
> The stack trace of python calls that resulted in this exception/failure was:
> File: 'exec_func_python() autogenerated', lineno: 2, function: <module>
>      0001:
>  *** 0002:do_collect_spdx_deps(d)
>      0003:
> File: '/home/david/yocto/bf133/poky/meta/classes/create-spdx-2.2.bbclass', lineno: 494, function: do_collect_spdx_deps
>      0490:    from pathlib import Path
>      0491:
>      0492:    spdx_deps_file = Path(d.getVar("SPDXDEPS"))
>      0493:
>  *** 0494:    deps = collect_direct_deps(d, "do_create_spdx")
>      0495:
>      0496:    with spdx_deps_file.open("w") as f:
>      0497:        json.dump(deps, f)
>      0498:}
> File: '/home/david/yocto/bf133/poky/meta/classes/create-spdx-2.2.bbclass', lineno: 475, function: collect_direct_deps
>      0471:    deps = set()
>      0472:    for dep_name in this_dep[3]:
>      0473:        dep_data = taskdepdata[dep_name]
>      0474:        if dep_data[1] == dep_task and dep_data[0] != pn:
>  *** 0475:            deps.add((dep_data[0], dep_data[7]))
>      0476:
>      0477:    return sorted(deps)
>      0478:
>      0479:collect_direct_deps[vardepsexclude] += "BB_TASKDEPDATA"
> Exception: IndexError: list index out of range
>
> ERROR: Logfile of failure stored in: /mnt/data/yocto/bf133/sdk/build/tmp/work/x86_64-linux/m4-native/1.4.19/temp/log.do_collect_spdx_deps.731506
> ERROR: Task (/home/david/yocto/bf133/poky/meta/recipes-devtools/m4/m4-native_1.4.19.bb:do_collect_spdx_deps) failed with exit code '1'
>
> Is the generation of an SDK outdated, not recommended, not maintained
> anymore? Or do you have any recommendations to troubleshoot these
> issues?
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60838): https://lists.yoctoproject.org/g/yocto/message/60838
> Mute This Topic: https://lists.yoctoproject.org/mt/100872021/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

