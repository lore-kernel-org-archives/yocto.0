Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76B76C2D0CD
	for <webhook@archiver.kernel.org>; Thu, 15 May 2025 10:49:18 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web10.9708.1747306156891254927
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 May 2025 03:49:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RjjdGAol;
 spf=pass (domain: gmail.com, ip: 209.85.218.53, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ad1f6aa2f84so167556266b.0
        for <yocto@lists.yoctoproject.org>; Thu, 15 May 2025 03:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747306155; x=1747910955; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ImJtM1CbDAh4pdwPaVqgECZaktb40ulwV98O36jx2F0=;
        b=RjjdGAolYoxEI5m2zWmdZCeiB7boiSvR8FvigszNwPuYVUCUJJSaBLsAgGoL7GZarD
         KzZcMAWudilU2GJxErsAKuyYHAHRCe9d/jFEDw/Fr6nPfpL2RQbYZtCKiFVhHoWpyLrW
         ng2EcWok3oQa3eK2P1tIuAhj50vKjCXsN0DF+FDPxVNymeNu73/dbl6hBCbbVcjRjiDp
         cKmu3EA+bvAmBOyPo73vTxd8Ifc3/naG4iEB051TO+wAtQL+ILpYbtkUx8Wm+hoRi6K+
         njZWZ8L9J5zFCYsrPjfeiTO3iU3aQoVcyrvtFRD4YBVzpT/amA/lctk6CqF4N2ASrUdR
         D3CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747306155; x=1747910955;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ImJtM1CbDAh4pdwPaVqgECZaktb40ulwV98O36jx2F0=;
        b=mGmTunkLP/pAfZRyo6G1mBqc1G0coyH5fUVYeNuC3fVsJ8zPC4wGdaB/AtMvRDHflX
         /AX7qGj1JOADDYeYDP0ZvQPrXXbsHNJnSptdXtx1boodwhUo3uxD9PzqKLxJzw9TbsqR
         uNZzzlHbXAxKe4TGTEVpzeQxTQwsQd/8vtij3M32nUspYWBjnaraUbEa9JpXC16wpPMM
         rUq7EFiRYVl+xfJVKP7r8NUbnS8EnsXa+BHggtOC62Is9tWTIL+GuPkVw8OiJDf524HZ
         MmbWMJgzNyO+MmP3HOJOhSW+MLynNMu3+4LXIU4Ex00xYosYbZYwOCTCEZgeO+g+dMPr
         qWzw==
X-Gm-Message-State: AOJu0YwjgFugvi5xH4uV7T0kdLzKiToy4WHypS6jFQTC0k171XpCW4TW
	bvs/Bv3OZ86Ozy7jsW5RtOkWQxy8wrvxhkQeUC7T1vSZgl/Ic/YZ
X-Gm-Gg: ASbGncupt42C1+r6KBITAOZG12QMAXHPN7aYu7+Er6rNWw9AeG2xTLqhMO4qPAPFbyV
	vsmD8/mvVldo5JGdu+tiSfpHemOx39ii9YFi4qH8Qf9BlFu6tOraqUZti1HYtYh0VG2JtfBuTBC
	quuO1W9rpVT4Kok5iyfmKqFR/02mmPIhTQYUOm7VHxBKJmKLdMBA4kGreF0GgZvZmQZCVbFH1Y6
	R87q95AZjBVoHzDoJxzQkHXPaFKeq0/yXglV81bJUhHvrTmTlGSIhk5Rwy+rSmlEiUhBUMTpVU9
	02y4K1oHrssWyoBHjlRCTVqFGkPKb/E6jhz6f4YjulcU+ZyQym+TSKNmiz0=
X-Google-Smtp-Source: AGHT+IGmNrJLKmrdXvDyMLF/Y8z3HQc09rsIRujToL0qeFkscaNed4GilnsvfBBfU0aMIwum5E4hkQ==
X-Received: by 2002:a17:907:d406:b0:ad2:15cc:4888 with SMTP id a640c23a62f3a-ad50f69213amr244439266b.28.1747306154894;
        Thu, 15 May 2025 03:49:14 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad21933be9esm1086943966b.46.2025.05.15.03.49.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 May 2025 03:49:14 -0700 (PDT)
Message-ID: <1d046c6d-b9b4-488d-b41b-82866c1bf140@gmail.com>
Date: Thu, 15 May 2025 12:49:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] mozjs 60.9 CVE issues fix.
To: sateesh m <sateesh0457@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <yoeb.1747283643576382007.FPXh@lists.yoctoproject.org>
 <42bc33b8-8b36-44a6-9cd0-0a447520876f@gmail.com>
 <CACsETSur6ntPh9h_DUjsxe4N8POjpit1MbDffdYX=wXZ10v1yA@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CACsETSur6ntPh9h_DUjsxe4N8POjpit1MbDffdYX=wXZ10v1yA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 May 2025 10:49:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65344

On 5/15/25 10:30, sateesh m wrote:
>
> Thank you for your response. But i am having some doubts If I want to
> get upstream patches for the Firefox  60.9 version how to get it.
>
60.x ESR series is long abandoned, there are no upstream patches for it.
What are you trying to do? If you are trying to make it up to date
against today's known threats, that's realistically not doable. EOL
Yocto releases/recipes in general are not suitable for this.
If you have a more narrow goal, knowing it could help with getting
targeted, more useful answer on this list.
>
> Thanks & Regards,
> Satish M
>
>
> On Thu, 15 May, 2025, 12:22 pm Gyorgy Sarvari, <skandigraun@gmail.com>
> wrote:
>
>     On 5/15/25 06:34, sateesh m via lists.yoctoproject.org
>     <http://lists.yoctoproject.org> wrote:
>     >
>     > Hi Team,
>     >
>     > I am currently working on CVE-related issues in the mozjs
>     library that
>     > need to be fixed for version 60.9. I am using the Dunfell
>     branch, but
>     > upon comparing it to the Gatesgarth branch, I noticed an additional
>     > patch is available. The patch
>     > |file://0014-fallback-to-2011-C++-standard.patch| has been removed,
>     > and |0014-remove-JS_VOLATIME_ARM.patch| has been added instead.
>     >
>     > Could you confirm whether these changes need to be applied to my
>     local
>     > build as well? Additionally, I would like to understand the
>     reason for
>     > removing the fallback-to-2011 patch. If we retain it, could it
>     lead to
>     > any issues?
>     >
>     The patch comments look fairly descriptive. These are not security
>     fixes, rather change gcc compatibility.
>
>     0014-fallback-to-2011-C++-standard.patch - it was introduced because
>     Dunfell supported building on distros that came with an old gcc that
>     couldn't compile without this patch. But later Yocto releases dropped
>     support for these old distros, so this patch wasn't necessary. If your
>     compiler supports c++14, then this patch is optional for you, and
>     can be
>     safely dropped. But you can also keep it.
>
>     0014-remove-JS_VOLATIME_ARM.patch - This patch removes a
>     workaround that
>     was added to fix an old gcc bug. If you are using old gcc, or very old
>     Arm HW (that doesn't support aligned access), you shouldn't use
>     this patch.
>     >
>     > I want to incorporate upstream patch changes related to the mozjs
>     > library. Since version 60.9 is a tar bundle and not a Git source,
>     > where can I find relevant solutions and reference links?
>     >
>     Mozilla primarily does development in their Mercurial repo, where you
>     can also see the commit history[1]. Incidentally they have just
>     announced hosting their code in their official Github repo also, where
>     you can also browse the history[2] if you are more comfortable
>     with that
>     - mostly check in the js folder history.
>
>     Of course, security-wise the best would be if you could migrate to
>     newer
>     versions. All of these are pretty old, and most probably having
>     lots of
>     issues that weren't found back when developers were still fixing them.
>     (Not only mozjs, but whole Dunfell)
>
>     [1]: https://hg-edge.mozilla.org/mozilla-central/
>     [2]: https://github.com/mozilla-firefox/firefox
>     >
>     > I have reviewed Bugzilla IDs, and they indicate that the issue has
>     > been fixed in example Firefox ESR78 and ESR128 and few mentioned <91
>     > (Is that mean below 91 all versions may effect changes). However,
>     > based on my understanding, adding those changes might result in
>     > dependency package version issues, such as requiring a more recent
>     > Python version (e.g., Python 3.10).
>     >
>     > I would appreciate any clarification on this matter.
>     >
>     > Thanks in advance.
>     >
>     > Best regards,
>     >
>     > Satish M
>     >
>     >
>     > -=-=-=-=-=-=-=-=-=-=-=-
>     > Links: You receive all messages sent to this group.
>     > View/Reply Online (#65341):
>     https://lists.yoctoproject.org/g/yocto/message/65341
>     > Mute This Topic: https://lists.yoctoproject.org/mt/113122170/6084445
>     > Group Owner: yocto+owner@lists.yoctoproject.org
>     <mailto:yocto%2Bowner@lists.yoctoproject.org>
>     > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>     [skandigraun@gmail.com]
>     > -=-=-=-=-=-=-=-=-=-=-=-
>     >
>


