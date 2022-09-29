Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3713CC433F5
	for <webhook@archiver.kernel.org>; Thu, 29 Sep 2022 15:32:27 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web09.12105.1664465541932631546
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 08:32:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=aLFY7i+3;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.221.42,
 mailfrom: jdmason@kudzu.us)
Received: by mail-wr1-f42.google.com with SMTP id x15so2284714wrv.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 08:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=LwVKwL0y/Yf3YKUbIZKZD7IznsWgJTWrP/H7Kh84eH8=;
        b=aLFY7i+3OwYg6RAtkhC0AbwYW4E6yj0S4PA0chglmpV67WtQ4B1X3bwoE3xS+d0OTW
         H71Q8+xR7bbuZidAXxeLNrfgfmboKLDI5HyQ17pGIe4SvQmGEmjjVeeen8FlPa6Ykb17
         XPluwbICk7n3xPcDdSQ+EMUnqcWjrtzkQnGpwS17Tr5NG4rMJjUoFpAAC72+eb5PETxM
         b/VEHofk9dC68A3Om7Zhj+7UQAdW3DVtc1saZSGsKeK0ISxoC7rkXyumDll+tJg+wLN5
         b1lRjsJNW2cbCid5VwTuLQHr1DezuWfk+g+VfqItJoQZAEBXDy4v86Dr3rzJ6/tXygX9
         f6QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=LwVKwL0y/Yf3YKUbIZKZD7IznsWgJTWrP/H7Kh84eH8=;
        b=QN1bVf8S12OLOMXKlvvPlVmywkmmahN7Rx8OgXiSlOLFxYABJc7grn+a6jqCYLsdV5
         XrZVBhnr+E7PnGszlteElVomW9FAEpxH5qCwljqaojveL/jb/YpSI41cV0The4RGoikm
         e+PhXYDHplGLR6sXlrchQZovT2Y7AOYCNyO2Qbb744ClRIhO9vlf0oUZAkRV76ydX3qc
         dhjFCsjqDlp7Rqs48gk97UNJilclZO47BsyHGKMiI4obr+nV4V/OofvL1dRlH4xCcODP
         PM5yIUzz+doKJfA2AWliBRaMSiLvIiXkV0QX4tZ24B+Z4jIlDDWnSBN988TKrt4eFmaa
         AMRw==
X-Gm-Message-State: ACrzQf2rEb5EVx0n+nG9NQYiw1LV992sgIfEMN/oeS0Rc9+nFHRoMUVY
	aThhPW9pd/d+3CoodasPMLnWbtwl67K2Dejmc5vfUg==
X-Google-Smtp-Source: 
 AMsMyM4J2Qsn/W3KV1iN9sO1a8LujiYujw9ZDxxKHOeV4rpn8kcNEw7DjuKRggss17JDGZzw0x8wL0KAGakjuNyOCuM=
X-Received: by 2002:a5d:5089:0:b0:229:3151:2865 with SMTP id
 a9-20020a5d5089000000b0022931512865mr2694062wrt.81.1664465540016; Thu, 29 Sep
 2022 08:32:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220929153030.6087-1-jon.mason@arm.com>
In-Reply-To: <20220929153030.6087-1-jon.mason@arm.com>
From: Jon Mason <jdmason@kudzu.us>
Date: Thu, 29 Sep 2022 11:32:08 -0400
Message-ID: 
 <CAPoiz9xaCLwFyEe8s7HmRJc3277f=aP8S8ad3h3xrj5XRYxZAg@mail.gmail.com>
Subject: Re: [yocto] [meta-zephyr][PATCH] ci: add zephyr-openthread-rcp test
To: Jon Mason <jon.mason@arm.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Sep 2022 15:32:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58219

On Thu, Sep 29, 2022 at 11:30 AM Jon Mason <jon.mason@arm.com> wrote:
>
> zephyr-openthread-rcp support was recently added to
> nrf52840-mdk-usb-dongle and nrf52840dk-nrf52840.  Add this to the
> targets for both machines, which necessitates adding a target entry
> for nrf52840-mdk-usb-dongle.
>
> Signed-off-by: Jon Mason <jon.mason@arm.com>

I probably should've added this to the patch before submitting, but
the CI pipeline is
https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/654297811

> ---
>  ci/nrf52840-mdk-usb-dongle.yml | 14 ++++++++++++++
>  ci/nrf52840dk-nrf52840.yml     |  1 +
>  2 files changed, 15 insertions(+)
>
> diff --git a/ci/nrf52840-mdk-usb-dongle.yml b/ci/nrf52840-mdk-usb-dongle.yml
> index 0dc3433..e9a36a0 100644
> --- a/ci/nrf52840-mdk-usb-dongle.yml
> +++ b/ci/nrf52840-mdk-usb-dongle.yml
> @@ -4,3 +4,17 @@ header:
>      - ci/base.yml
>
>  machine: nrf52840-mdk-usb-dongle
> +
> +target:
> +  - zephyr-blinky
> +  - zephyr-coap-client
> +  - zephyr-coap-server
> +  - zephyr-echo-client
> +  - zephyr-helloworld
> +  - zephyr-http-client
> +  - zephyr-kernel-test-all
> +  - zephyr-mqtt-publisher
> +  - zephyr-openthread-rcp
> +  - zephyr-peripheral-esp
> +  - zephyr-peripheral-hr
> +  - zephyr-philosophers
> diff --git a/ci/nrf52840dk-nrf52840.yml b/ci/nrf52840dk-nrf52840.yml
> index a0c1587..1b16af1 100644
> --- a/ci/nrf52840dk-nrf52840.yml
> +++ b/ci/nrf52840dk-nrf52840.yml
> @@ -15,6 +15,7 @@ target:
>    - zephyr-kernel-test-all
>    - zephyr-lvgl
>    - zephyr-mqtt-publisher
> +  - zephyr-openthread-rcp
>    - zephyr-peripheral-esp
>    - zephyr-peripheral-hr
>    - zephyr-philosophers
> --
> 2.17.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58218): https://lists.yoctoproject.org/g/yocto/message/58218
> Mute This Topic: https://lists.yoctoproject.org/mt/93996985/3616920
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jdmason@kudzu.us]
> -=-=-=-=-=-=-=-=-=-=-=-
>

