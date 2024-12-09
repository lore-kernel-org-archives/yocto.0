Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2FF3E7717D
	for <webhook@archiver.kernel.org>; Mon,  9 Dec 2024 11:52:11 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web10.99674.1733745122957553942
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Dec 2024 03:52:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VsLRCWyq;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6d8f75b31bfso15479506d6.3
        for <yocto@lists.yoctoproject.org>; Mon, 09 Dec 2024 03:52:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733745122; x=1734349922; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Zv6djpXdAhDcTfu8S4CiB8pjSeKBtQT9BsMNM+T3Hvo=;
        b=VsLRCWyqbksAX2K0wo8bxJCzkyR/B1sdwE1G+Swdc0VoMxpbb2wp6D0hugZnjl7o5G
         GgPi/LmfiAmB1pvz3JJMBlfnpPyr8hO5p2OtGcSwyAm57+rvFuE3MLg7RrkPI29OllVq
         /nS9cHBdc9Ts68IwcP1WaYDU7S6+FAqP4aAdm1VwM6LQWL/vzxWIS1oi8MbiHOGSLjFW
         gq98Xe9/Fn+Dl6wkKYHIJXNosXBYaVUa6E4gUzSbnNMY+0aIhcBfQNj0uM6KYyR3Newh
         ToELfwzmzH4V6gieVD51C51jhohiA10O4F41qUhUZUoF6mlVrO3RPEgAhb9asXXV8RFv
         cnHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733745122; x=1734349922;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zv6djpXdAhDcTfu8S4CiB8pjSeKBtQT9BsMNM+T3Hvo=;
        b=YBjpWdj54TfC4JUT8+N/o00zxlCM1PikCFuqPkRQMWvkMRRQ8bBbdhmJNQfN8AK1Ss
         xG59HVOmIQCN2X/bYKMkr1RiuMwM0gVbCIMRcOBWU4SBp3r5tdtOy8p8xrZ9sSHBRBuk
         UYIDt8s1m8pW1LkinKBDQsx2+OZmBTtNIdQbJS699e7cKg1bcLSrODGkRKj0BjuLTap0
         za+zVBD7RCRt1j1TxtPJXy987Us9WGxBM6NY280HqlE/4YJ9nzbTKmryLrIm9FPZhGWC
         5xBSIlcyHeoC0C1kWur3/bYqUvGGyr0ZyMkmQNWimp9gmbsrWNJkvljL8NYU8xkQ8Zoi
         vmTA==
X-Gm-Message-State: AOJu0YxvyTc/+Q/uDh+wIuNrhEVOUHi0cPE8Hgq0ZkAM5llEqIv7c1P6
	Nmdg8ryUWxgUR5oT76O+FcTgm92w+HdQvktBT1bP0aGB71BnCMr9zqdQchY8ijga065y0EHSk/2
	Hqk7SqHKSOBFBqHTsuUM41wRpR5SnHAxl
X-Gm-Gg: ASbGncseSY6FczcMct440YN39lDpca6S3C5iio4pWEjkBd4f8UdRwImRW3bvtVcWTfw
	ARlG9dpfM+RjrlwXGPRlENcU1bFgHrfErjRdzx3HDEHPhQ9oM21WFsaLzcLstfXKWMA==
X-Google-Smtp-Source: AGHT+IFlI14CuiZq+uBtHFGVDpsJEmSLs80cJ+G6l32Okhc7T4hqNWEOWc9ATLK5L/tdiz4NdG9PpChbzWMFlkKK2mM=
X-Received: by 2002:ad4:5e8f:0:b0:6d8:7eb9:9bd7 with SMTP id
 6a1803df08f44-6d8e73f4586mr185356176d6.43.1733745121983; Mon, 09 Dec 2024
 03:52:01 -0800 (PST)
MIME-Version: 1.0
References: <CALvuYrmW4YabKyAPs43GYOihOeEL67=u7+yy_2EMeawSmPzHQg@mail.gmail.com>
 <15637.1733744721485146927@lists.yoctoproject.org>
In-Reply-To: <15637.1733744721485146927@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 9 Dec 2024 12:51:51 +0100
Message-ID: <CANNYZj-UNZ7P83ETp8p=qvWgsmeuXR4j3zgO_T5fECxqJkeB_g@mail.gmail.com>
Subject: Re: [yocto] How to install files in root directory
To: yocto@lists.yoctoproject.org, hassanchattarki@gmail.com
Cc: aravind posina <posinaaravind0205@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Dec 2024 11:52:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64417

Please keep in mind: people are busy, any help you get is a favour.
You need to do everything you can to be precise and specific in your
request.

Particularly always include the full recipe, and the corresponding
error message you're getting, or explain what behaviour you are
observing, and what is your expectation that does not match that
behaviour. What do you mean exactly when you say 'none worked'?

Alex

On Mon, 9 Dec 2024 at 12:45, MOHAMMED HASSAN via
lists.yoctoproject.org
<hassanchattarki=gmail.com@lists.yoctoproject.org> wrote:
>
> It didnt work for me guys.
> I want to place the file in my root home directory.
>
> # Root home directory
> ROOT_HOME ??= "/root"
>
> if you guys have suggestions for me please let me know. I have tried the following lines below but none worked.
>
>
> install -d ${D}/${HOME}
>  install -m 0755 my-file ${D}/${HOME}/my-file
>
> and also tried
>
> install -d ${D}/root
>  install -m 0755 my-file ${D}/root/my-file
>
> none worked.
>
> Please let me know if they are any more options i can try.
>
> Thanks
> Hassan
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64416): https://lists.yoctoproject.org/g/yocto/message/64416
> Mute This Topic: https://lists.yoctoproject.org/mt/109914791/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

