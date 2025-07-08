Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF8FDC83F0A
	for <webhook@archiver.kernel.org>; Tue,  8 Jul 2025 17:00:37 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.web10.1568.1751994030023109879
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jul 2025 10:00:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CUTBfgxE;
 spf=pass (domain: gmail.com, ip: 209.85.208.50, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-60c51860bf5so7536777a12.1
        for <yocto@lists.yoctoproject.org>; Tue, 08 Jul 2025 10:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751994028; x=1752598828; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mgqEoxrLQI4OMh9EmVrZ+mbCnahDwBSO8zdPSIs9v28=;
        b=CUTBfgxEjuI/zm7RsRPD0XKOIJEWcysdX6FnF6clOfrCA8TE5RkkFApTN+6ncNPjms
         J7bTpuk8u9nrife8z8ETlOraROydxyghiIwrISXLMRDgNK89BTRvtSNSstr5GIYKxmjg
         LoRnzjBoHVpgk/tbT+6peJoWEHDqVfby5jNRssRJsNPSCJ/cj1bye27DMgIwAp9OKZ0j
         Y8qNrOPZsko1rABxkl0e5rwdutofS1+Q3QKd5y7NcD0TtYwdreeEq8L8Cx31EwQ/rfFp
         XcQesdgEZamXDj6SZoWOwfsane9IsvZURhpNdTZ3W+ULF5UqL2ztEHKtPuWaAf+E/Dvy
         QJUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751994028; x=1752598828;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mgqEoxrLQI4OMh9EmVrZ+mbCnahDwBSO8zdPSIs9v28=;
        b=OonXLxioOgkyKYPEJ+IKIktvUzN7tjEvdy5IOOYdA7jRLGlzBFcisctL+t7NFX6iC3
         actIhOf7XyhiL+2mq4lDVCNOnBXfuVN1M9sQMZk0VTyBycQTCwQFGyVHE1zpNoi3qdgx
         +NMjINnXumlwBNSIkRQ63GxVO0Hq9zbceRl/tb0eAhRiYT8NG2q22y4jFSqGvx//l5Rl
         RXXxKQv0GkZD6vE3++YHO3qLqXvly90F/c/XzWVFrG6CL6Fa6S+RAS4cZnes4JIbd2ml
         k4kGpP/4reqPo1HVxfwJU0YXyTsi7uX6jyBRcg7HzWEyknD+oI4UV4qRL8LwPo8F/PY/
         siJw==
X-Gm-Message-State: AOJu0YxM5MZCc5fKh0LYvu9KJ87wnSR/k8C1RrlKbSi+pBVuA4N58/ID
	XPGgxyjvlxo8oK6bbxIRcnO2guF58X9TpLP7y9tfBj/ntABpHAHoUGJa1SXYhSxK
X-Gm-Gg: ASbGnctHTdbT0T2D+whElDkLxb3j/qimv84uf2gWLgdWsLapkGe/Tuhb0YtiDm/MB5o
	AYjeK6l7tGgpsrLABj4bT1lnIgBL3lorETrY4RmnIVDzts33k97RUhgnMTPejraWkqvuH/k6oLQ
	Gri8w/5pL28mKmjpbYuiDXiXCsrODJEcar+EGlL3e56ivHxdkJzeokva4vQvzHsFEeRyb1BNbvn
	kPM6XZcwI0JxOVpiirrqBHIMFOWVRlckB6CaJjp6CpJboblLxU1r2KUQ9j6RC44nIjKBGUbm5GK
	kN3ViHC4MelfnAW+evD+soeWNisD6Yyx1NxdQHe57irsOJuthtNWTHNx4rqT27ZtzFvotA==
X-Google-Smtp-Source: AGHT+IFxkM7l0BWUqQr86SeOKJb6kZz8/SRiGPNz0rx4OiVeUIaEpEX8yoajd6xwN0X242gDKY+YiQ==
X-Received: by 2002:a17:907:3c88:b0:ae0:c690:1bed with SMTP id a640c23a62f3a-ae6b0e911f6mr429279466b.51.1751994027849;
        Tue, 08 Jul 2025 10:00:27 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f66d91c2sm909632766b.28.2025.07.08.10.00.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 10:00:27 -0700 (PDT)
Message-ID: <4ad8c93f-4bca-45ca-85cf-baa269dbb63d@gmail.com>
Date: Tue, 8 Jul 2025 19:00:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] base-files: invalid 'strictatime' on /run
To: yocto@lists.yoctoproject.org, daniel@d-f-d.ca
References: <14b926fd-9e17-4f0d-a267-cdfb255532ec@d-f-d.ca>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <14b926fd-9e17-4f0d-a267-cdfb255532ec@d-f-d.ca>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Jul 2025 17:00:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65628



On 7/8/25 06:31, Daniel F. Dickinson via lists.yoctoproject.org wrote:
> Currently in OE-Core meta/recipes-core/base-files/base-files/fstab
>
> (which becomes /etc/fstab on-device) has
>
>
> tmpfs                /run                 tmpfs 
> mode=0755,nodev,nosuid,strictatime 0  0
>
> which for qemuarm64 (from OE-core) and raspberrypi5 (from 
> meta-raspberrypi) both
>
> emit an error in dmesg during boot "invalid mount option 'strictatime'".
>
> With busybox this seems to be cosmetic (strictatime simply ignored), but 
> with using
>
> toybox the mount error results in /run not being mounted, which causes 
> problems
>
> for other packages (like udev) when using sysvinit.
>
>
> Before I create a patch, I'd like to understand why this is occurring, 
> and the preferred fix.
>
>
> 1. Is this arm/arm64 specific due to defconfig not being aligned with 
> e.g. x64, or
>
> 2. Is this a result of a change in default kernel config across the board?
>
> 3. Or, am I missing something about this?
>
>
> In the case of 1, is the preferred resolution to add strictatime to 
> arm/arm64 defconfig?
>
> In the case of 2, should the 'strictatime' be dropped entirely or 
> replace with a different
>
> 'atime' option?
>
>
> Oh, and should busybox config be changed so that an invalid mount option 
> is not
>
> silently ignored?

I did some quick tests with qemuarm64, with largely default config. I
did not see busybox ignoring this flag, it seems to be handled and
converted to a flag in the call. (Did you use some custom config with it
maybe? Or did I do something incorrectly?). The issue doesn't look arch
nor kernel specific to me.

Looking at the syscalls, the following shows up when running "mkdir aaa
&& mount -t tmpfs -o mode=0755,nodev,nosuid,strictatime tmpfs ./aaa":

toybox:
mount("tmpfs", "./aaa", "tmpfs", MS_NOSUID|MS_NODEV|MS_SILENT,
"mode=0755,strictatime") = -1 EINVAL (Invalid argument)

busybox:
mount("tmpfs", "./aaa", "tmpfs",
MS_NOSUID|MS_NODEV|MS_SILENT|MS_STRICTATIME, "mode=0755") = 0

The error[1] itself seems to originate from the kernel because of this
unrecognized option[2].

Looking at toybox source, it seems that it doesn't know about this
flag/option, it is mentioned in a comment also[3], so it just passes to
the kernel as it is, as opposed to busybox[4], which does recognize it.

Personally I would just use a custom a fstab without strictatime option
- the one in oe-core is meant to be a sample. Patches are always great
of course, especially if it can be made toybox-friendly without removing
busybox features.

If you would like to use this option along with toybox, instead of
changing the options in Yocto, I would check in toybox if adding this
flag to the options list works out of the box. If it works, why not open
a PR with them.

[1]: option parser, that returns EINVAL in case of unrecognized option,
based on the function's docs:
https://github.com/torvalds/linux/blob/master/fs/fs_parser.c#L101
[2]: recognized options for tmpfs:
https://github.com/torvalds/linux/blob/master/mm/shmem.c#L4512
[3]: https://github.com/landley/toybox/blob/master/toys/lsb/mount.c#L116
[4]: https://github.com/mirror/busybox/blob/master/util-linux/mount.c#L431


>
>
> Regards,
>
> Daniel
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65624): https://lists.yoctoproject.org/g/yocto/message/65624
> Mute This Topic: https://lists.yoctoproject.org/mt/114041657/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


