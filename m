Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3799CD4851
	for <webhook@archiver.kernel.org>; Tue, 12 May 2026 15:07:23 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.77746.1778598434282622870
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 May 2026 08:07:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=RBuMISDx;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-8b5de17382cso40029676d6.1
        for <yocto@lists.yoctoproject.org>; Tue, 12 May 2026 08:07:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778598433; cv=none;
        d=google.com; s=arc-20240605;
        b=Xf89xKQadFyHIIBWv0e1crTdbbc7GkjwQU27pwOVsJTduVzJ3waIk48IiJjZPAY1YV
         qffZFMlf/c0eD3Xb+dUqLT2/YaMRHo1QuAta4zmBC20svuFEsVAl2Dcxq4ECq3Bj7GSR
         N/zw8mM8K2dhyFLVx9i0Dntnt0s8TRR4pxrRuJRysRhKXv8Dhd7l593AhT5Qq8JsSD6X
         bSKGEG9AJA4HZUfiiaPkPoB2MasQLgmMkxRd/NjQkZvcAKIPBkh6w3+gfp8R4fWfEczT
         LY6Zg2u0dHpLbD9K14TEoVPhzMD34sguW8w/EKqKqxn1D7IweNEYKQFchU/1edsAA6F3
         gh9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=V9N/sUjnRTLNffEkN6OWqqCEsngQUcR2+WA35ltmzRw=;
        fh=PaCoefWFmkFLxT8cExE+3jqAoVAW1g5QHgRIWAFRCJU=;
        b=SnA59BA7+p5BuRWzFoS7G3xU3gYrsWTtScZTa0yD8Yk4L3qoTvgtTJc//ArElHSlXN
         r1G6zIkF1bgb2cogvEU70byX6ISkxrRSMZQbekf0g1a6gdWPKVbBZV5P3EtGLElEpPy9
         aTco6f+eL59zQisHWsRWKDg5kxNp1z1mYBBgj5chv97U8dNqUDtf5m8SKnwUukKhR0wI
         X0ovAFST0PAP6Un8gP/aVEFfA5tnzL/nx/Fru7oGq0bJFo2dzX1eYrprMns7K0n/J+b3
         IB3s+CLh9Rc4qMtPIbD1Y8AbxJp/mbHwpW0Ciwfs3QXKn5GsC6gd47ZAJrtnvzGkJI9P
         hOhA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778598433; x=1779203233; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V9N/sUjnRTLNffEkN6OWqqCEsngQUcR2+WA35ltmzRw=;
        b=RBuMISDxbBdK6+Xg0lW0jVGO0UwbEFPsB482t36Q4ZQuB8Ra3GuumbmR2zEJYVfdSi
         HBYmWtZh3MnNYT3wnDayVxjvxcaTrA8Gb5YBjy2IZhDb4nP5RwGMYs2jUWHi2fU+Y+Ja
         dOa9OH8o1ZVvK0CYwk1xif+PtX3MQ1Dr0u6VggsG8FPzMW+6yWK0LttDLpIbIT5BrSah
         kpqwC2MmzOwX04OYtt0AXQRVhevNa8fNtz+sBtxenl163/ujaQKgZP+P3nkEDP6pXN6o
         P/HuUTWTkogZWW4R83tFNWhqDPoE2NWHzUcoysu2c86UTlyx1Y1IINUnwGP4bJbxWBpg
         3deQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778598433; x=1779203233;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=V9N/sUjnRTLNffEkN6OWqqCEsngQUcR2+WA35ltmzRw=;
        b=kQHiT0dOYs5ifreGiGwM/o+I2Xft/nZJmbB5f8RZwtdImy5N63HFBBqmYOE/CdIqiD
         w7YQB/lbBXNeGVE+YP7fn1vYM3LRkl0BCvvPFi/334yQgq3QfHDuW6L4/WrFdl5k+dM9
         p197yhzmgZ8MDYChgihNINJY4AVb/8IadQSJX8B3YVJMfn7KYAZ8dcizUN//FRMcpi+N
         aasjh3hLAD+d05TptNLNbk0ZYwk/Pkzp1qKbB3MuSKxEOfC5exp1d+EDjZJ0T8kYipC1
         E5TQwICmCSJxW2pjheu+Xi25RjX+AdnhiwlqgpBdl5bOzM/y2Py+y0ncnT/zSKYrv5Rt
         jPTA==
X-Gm-Message-State: AOJu0Yx0n6x2buWK6HPy5QJf7j21h+5UybpFcCSAZ9yIQ7X2lC9JmaRZ
	8mAebpodSCXsX38umTPUrd4PAEsnDX9xJf2vLAKRPo9uMUSeZmRNKbdKKl6nR/1x4kXGpI8WsQR
	jmp0VNk3rqpegmKrY6S+ruIW8vYSIkT3OXA==
X-Gm-Gg: Acq92OHzRa4ArayNVeFsQiR/q/Kgs6B8k7eOx8BakAD5HZ8TkoYYB+0UnItOCt4nvnK
	SF9mfVR9LjQTFLL/+hYnEf6oDijBbyMq/ReVGZ9I52EZBOMWGnlwxkTsnSIU/FON71gCAxyw6si
	uaEy6Bxd0cZYUQkpHixorIYfdcXX7V8chkWLet8wLFa88d6XtGLk2C6pNrha4IcZJKl92B3YXuH
	kVYmMj/V0LtsC8dPmRTmL8KhzNlfK8XLUuqEDxX/UrH6jfVrfUfdoQTVfSv1UlPKcQvTC/pmod/
	IlBNxQ==
X-Received: by 2002:a05:6214:2428:b0:8bd:7b0b:45b with SMTP id
 6a1803df08f44-8c661d92792mr59038896d6.19.1778598433056; Tue, 12 May 2026
 08:07:13 -0700 (PDT)
MIME-Version: 1.0
References: <AS8PR08MB72519491BFB65260C510C104D5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
In-Reply-To: <AS8PR08MB72519491BFB65260C510C104D5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 12 May 2026 17:07:01 +0200
X-Gm-Features: AVHnY4JN18RNIZJ7CkXnWrIVhh26nRIWBXBcFEWZX8F6g4EZMTB_mvpPVchMGJk
Message-ID: <CANNYZj9d4aGunvF3tQPF9frgNGrxqcntb7AQO+XsBTDBsOejTg@mail.gmail.com>
Subject: Re: [yocto] Modifying SRC_URI before it is parsed by the fetcher
To: yocto@lists.yoctoproject.org, ext-antti.garding@kempower.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 May 2026 15:07:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66539

On Tue, 12 May 2026 at 16:47, EXT-Antti G=C3=A4rding via
lists.yoctoproject.org
<ext-antti.garding=3Dkempower.com@lists.yoctoproject.org> wrote:
> I am developing a .bbclass file that modifies SRC_URI of the inheriting r=
ecipe before bitbake (in this case, the git fetcher) initializes its intern=
al data structures with that data. Prepended to any task or as a dedicated =
task before any other tasks is too late, but a Python function declared __a=
nonymous seems to be invoked right after parsing the recipe, which is early=
 enough.

Please explain the problem first, before presenting the various
solution attempts. What do you need to modify in SRC_URI and why?
Maybe there's a completely different approach to the actual issue.

Alex

