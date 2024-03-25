Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2069C47DD9
	for <webhook@archiver.kernel.org>; Mon, 25 Mar 2024 01:33:58 +0000 (UTC)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
 by mx.groups.io with SMTP id smtpd.web11.42562.1711330435602318500
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Mar 2024 18:33:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=eyKuMbr8;
 spf=pass (domain: gmail.com, ip: 209.85.160.48, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-222a9eae9a7so2096639fac.3
        for <yocto@lists.yoctoproject.org>; Sun, 24 Mar 2024 18:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711330435; x=1711935235; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wwoN82Wmpb5BMvEQ028GJC97oTrWjcctA/nztqfiMOI=;
        b=eyKuMbr8PQtezKFl3oLELgDupqVDsiyXla7TEfBMBu8to9d9S+SigoKVJajzZPxXrV
         5XAy0y9O9uPmVVG9uP8sHmfyL8Abccrs1MU1L4SkLd4IyyA1MIDxpxjqHDq9+xa7U90Y
         wlDOlELRwh7x1OrHbM4uRrbnNgUFq7Yb+c8hklLsRGxz942pxC+JpACVBuOybrnWSSL4
         r27q35vvrli+JVKexlGpgFMbIHdSNE1SMGsBJ65dQ7jwTTq6Yxt+4/eCQYylsmSvqpgs
         K6IaIUvc/u/OMeFloVJyPR+s9z9bZYAbLm+wUj2yqRjahdEKHJfqB4hjbeOrSvo7+dLH
         YEpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711330435; x=1711935235;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wwoN82Wmpb5BMvEQ028GJC97oTrWjcctA/nztqfiMOI=;
        b=kIgDHQMu4ztJ7AaDt8xWw0F28ivVuntcN2rrtceP2HZWAdZSJDvflHIdsW7rnNHiGo
         OUHKOWDns6AnjJanJuXAG5RcDiF7gsTeIULFPKPi5tgGYMfg5S2YU6PR+Ib1hFePZKwm
         obfsn9bNDfpLS9fzjU5Kd1J1NxOqSg/FMsmyokBnqqCvqs5XSUvoXgI3WfHBAzIvvK2G
         3qpIZlLWRJOSnzLUApS9+i1IEhCa3xu9ivjvC7SzYfm05JVRFg7IharT3uAs/6Q0ghgW
         iU0jFvXKucCY1VGol1W3gu9xuKbAsZGK64MKEb4VSMuu3AIzE2LHgOhrlegwf6mbVMbU
         5nyA==
X-Gm-Message-State: AOJu0YySUzO9hRyQMH3bSkOJfKttQTthSn3TuV9oNlGXmyxYTkai0ejE
	WtfjT3Z1F0TFlT51ODXvW9pKBLfSKkBp7mxO6BGNhYtE8GC31igAawRSObXIksMSeq2snWM8DER
	QB5bp2vJgaMkfY/GEvbE9Cy9Qa7fZGgw5
X-Google-Smtp-Source: AGHT+IFMO14fY8zUbnIT91iJNFIwI+WnxQyoSwA/f8y4HREyfb/nz3Q4h8bfM8M4xREVm0pBp7CVCoN9WYOyUqIc3cg=
X-Received: by 2002:a05:6871:b1f:b0:221:8143:eeef with SMTP id
 fq31-20020a0568710b1f00b002218143eeefmr7309561oab.3.1711330434621; Sun, 24
 Mar 2024 18:33:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAAkkBwNMmPQfG6-EV0jZhVef5JSP9KX2PWdy0TfFfcmC1kYAXw@mail.gmail.com>
In-Reply-To: <CAAkkBwNMmPQfG6-EV0jZhVef5JSP9KX2PWdy0TfFfcmC1kYAXw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 24 Mar 2024 18:33:28 -0700
Message-ID: <CAMKF1soVYaBCpfeHmbbbOA2zmEYxzj1tMGipXP=tofqTF9sRwA@mail.gmail.com>
Subject: Re: [yocto] libtool error
To: yocto@lists.yoctoproject.org, amolpractise@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Mar 2024 01:33:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62835

is this error reproducible ? Check if its causing some sort of out of
memory errors and crashes on your build system. Can you see if there
are some coredumps etc ?

On Sun, Mar 24, 2024 at 9:04=E2=80=AFAM Amol Practise <amolpractise@gmail.c=
om> wrote:
>
> Hello ,
>
> I am getting error while building yocto for raspberry pi , please see att=
ached log file for reference.
>
> Help is appreciated.
>
> Thank you.
> Amol Palshetkar
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#62834): https://lists.yoctoproject.org/g/yocto/messag=
e/62834
> Mute This Topic: https://lists.yoctoproject.org/mt/105121719/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

