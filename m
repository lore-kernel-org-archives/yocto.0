Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1FAAEC43458
	for <webhook@archiver.kernel.org>; Sat, 27 Jun 2026 05:39:14 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.50485.1782538749038294416
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Jun 2026 22:39:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=T2wFbc6L;
 spf=pass (domain: gmail.com, ip: 209.85.219.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-8dd6e530061so26278926d6.2
        for <yocto@lists.yoctoproject.org>; Fri, 26 Jun 2026 22:39:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782538748; cv=none;
        d=google.com; s=arc-20260327;
        b=n40WG2mZzpn70JK35RqBTh2vKavCyqtLjCr8h8ouoQdqf4sfkMEJSm7Jby1DqV5ajZ
         EME1Htnen9GpHQCuguhH8a8+u3WdES/tevul+TY324weNFf2KO6xdlxROQSl9sBS7Xst
         K63ZrxQ82KRMQyXq5epHIg7zfcKr6E1kEXTFkz5qkhfLphu873ncVC8n6mWZPADUXfjh
         OT3ereEMhc/xNaS3iPCMehaWCLfMDSz0+Db6oXJBvXwUhR+4OsT/mSBnVHB1jrzw9kn0
         jHuu1fEnsf8bEGw+1tDjhXmnyt/VaCbNaU9rPSGY65qBuAOM8HcQi5vEXKcJdM2190tY
         lBPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=FnNfXoelmojpDsKfedDQ0imH7UdLEGJfJWjFphfkz4c=;
        fh=895zONqTn4QDA5dyMZu8dW/pu+aPU6tAzBqy6TVfeMQ=;
        b=UkIZjd9NeaAMDE2aLZq/xT8+eEbDqW1bgBkZKe6Jg0dNs+F3pRffCmppsW5l9cK4dY
         A5M5QOnBokB1IUVUdVKT1+PcpL2bH72OQN76rq4piGALgQllWjI6Z5HhSIWNqA9VM8FW
         YlZ0WEm736KubGjQ/kRWqB4bLiKsEB5nVKp4FnjBuUs0+J14SceKx9V9FfHq8Oeg1wIN
         ztOFGisO8+t8b/2vAwysJdH5hMXhorPdAwW7GVVWjQDB3rGBmdP5srQvh8U8+cweJED0
         qBsZbUoVOxPV/wJbNKrx5jAusTdSVRHqPF+ySjXqZhXIwuprMSNfI+WtEYpCUCG6dRL4
         B5pg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782538748; x=1783143548; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FnNfXoelmojpDsKfedDQ0imH7UdLEGJfJWjFphfkz4c=;
        b=T2wFbc6LfbbgRRIaUX2ljHdYOvXqkYTRkcRmQTsxDHzkb5PkZB7T612VBeIwj3gPWZ
         x6uc3oRg3EHl38H72mJ73wktf/TJVl3YeWXaZ4McrP2SsNA0SbSiUKMXefYwRYuRD7VC
         CNf59dhacAFzLqCJxpHFcGB/YThIsV9RN62/190SHxgvBjrFsXMIWPF8oEPBq01jfE3a
         B6bc0PntW9eaAoT83PqeYo2dFNHhJ5slqT249wH0LNWKtNqM3TMAGK5cxSACvrG95S72
         eVkVBQmelbNyFD96QBYF0uV5zJSCniPLicfw1+vK/SWYN62b96NS1amYNJVpXN2IIH4m
         braA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782538748; x=1783143548;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FnNfXoelmojpDsKfedDQ0imH7UdLEGJfJWjFphfkz4c=;
        b=pSTO3fWXHpnc2ahag2JudX4L8gZq8I9wVxnjhToGZ9IO30sd3zjuHHAF5t8oGKh4+9
         dqp+OnSfgmHhcxxauDKE4QmHTl8Q6gagmDJMJWv506aSUHSXX9eZYJzY5s0dM153N2Br
         bZpUrIbDiQoT27Rn95GvSBdH4QwpmsmU6d65F5cIHBZYzbeg+bYIKCSCg1+xHof8XYvi
         0fOT0g2/aGzHreCjacP6XC5vIanjPD4dppSwUZWCmDvxLJ73gAa4B64dsmcpAerkMUJW
         CWRHD5tfZCmX1M1/NYQ5qXg0K60SBGnacCVRaH7QUWTeG2ZpwoMuNMpuDY+tvwizsnY0
         giVQ==
X-Gm-Message-State: AOJu0YzGFqnjyVSbeSJCT+luf496Bg8fLA27vmCkZcnnaFV8YaC0rSJb
	/SCpP+Rq/XTrCVfRLp6/n66WHHTtlQ9Uo+OD/NImHSRqFp9m0dVOAzeWaFxSZFezjB/v4c2wUiH
	Z3ocRCBq0bHKFvg91QUxG+FwoR0MraiopOnpmBk0=
X-Gm-Gg: AfdE7cl0VntHqWa7iNj8r8SSCfnP2jXL5M6m3aT2V0feKI9FjlAR26DxfQHeqmnMGMb
	Yko7NQBukMuwYR8106qJYjV//qiD4P/dhgInja4EPhB0JdKD2zRITte358sX9obLLIuMfUwypp5
	SSQEWhNhnt2sB+tA4JBkmz6pzzMZmu32Y9qjcxocLM9Udu9+wBadIcbM6ELLtUIybH45stlSMWL
	T+H/sF7HWv+1H9GwM7kpMLhh46vMUqU4rJYa0zISE4Zty0n8AE0td6ctoLnFsDkh2tUtAlNEZJ0
	pSaey7Eo
X-Received: by 2002:a05:6214:130b:b0:8cc:f074:95e with SMTP id
 6a1803df08f44-8e6d6190b5cmr150910066d6.30.1782538747904; Fri, 26 Jun 2026
 22:39:07 -0700 (PDT)
MIME-Version: 1.0
References: <An64.1782521077873496785.i3e6@lists.yoctoproject.org>
In-Reply-To: <An64.1782521077873496785.i3e6@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 27 Jun 2026 07:38:57 +0200
X-Gm-Features: AVVi8CeCA-csutWaxumhvqTl4Ztxzwixz8TOI9mrrez30lVPp2xxNcbJeSqg5dw
Message-ID: <CANNYZj9uYQ6mCyjAtpZos2poV872YvFPd=T08FCMWTS5G36ykQ@mail.gmail.com>
Subject: Re: [yocto] I got an error stating that "python3-pytest contains
 reference to the build host HOME directory" when attempting the Yocto Project
 Quick Build. What do I do?
To: yocto@lists.yoctoproject.org, 99thornroad@protonmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 27 Jun 2026 05:39:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66613

On Sat, 27 Jun 2026 at 02:44, 99thornroad via lists.yoctoproject.org
<99thornroad=protonmail.com@lists.yoctoproject.org> wrote:
> ERROR: python3-pytest-9.1.0-r0 do_package_qa: QA Issue: File /usr/lib/python3.14/site-packages/_pytest/main.py in package python3-pytest contains reference to the build host HOME directory [buildpaths]
> ERROR: python3-pytest-9.1.0-r0 do_package_qa: QA Issue: File /usr/lib/python3.14/site-packages/_pytest/assertion/rewrite.py in package python3-pytest contains reference to the build host HOME directory [buildpaths]
> ERROR: python3-pytest-9.1.0-r0 do_package_qa: QA Issue: File /usr/lib/python3.14/site-packages/_pytest/__pycache__/main.cpython-314.pyc in package python3-pytest contains reference to the build host HOME directory [buildpaths]
> ERROR: python3-pytest-9.1.0-r0 do_package_qa: Fatal QA errors were found, failing task.
> ERROR: Logfile of failure stored in: /home/user/asteroid/bitbake-builds/poky-master/build/tmp/work/x86-64-v3-poky-linux/python3-pytest/9.1.0/temp/log.do_package_qa.1216269
> ERROR: Task (/home/user/asteroid/bitbake-builds/poky-master/layers/openembedded-core/meta/recipes-devtools/python/python3-pytest_9.1.0.bb:do_package_qa) failed with exit code '1'
>
> What should I do to fix this?
> I am Using Debian 13.5.

This is unfortunately a false positive in the QA, as pytest upstream
hardcodes '/home/user' into the installed files.

You can work around it by adding to conf/local.conf:

INSANE_SKIP:pn-python3-pytest = "buildpaths"

but we need to add ability to specify exceptions in the QA test.

Alex

