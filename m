Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A531CFA75D
	for <webhook@archiver.kernel.org>; Fri,  4 Oct 2024 10:21:23 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web11.18921.1728037279732424662
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Oct 2024 03:21:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=F1VNdURr;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-42cbc38a997so11835485e9.1
        for <yocto@lists.yoctoproject.org>; Fri, 04 Oct 2024 03:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1728037277; x=1728642077; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HR9csCFptX6jwhGwSH3LSoH5wRFpoh4fJVqeC70LIfk=;
        b=F1VNdURrzvi/QGrH8YD22kX08QTZmCC3e23QZkBttOzqsJTvzKlfynOWaLLozAC93q
         0uALhvDWJilr/6EBUKl8PsyaDm2vvkUi78eYpfY4af1n40al2KgNZM5/1vK0V8Qg/tL5
         5/LOU/VEvIAdRe1oOmygt4hgEeJjkTciSxLiI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728037277; x=1728642077;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HR9csCFptX6jwhGwSH3LSoH5wRFpoh4fJVqeC70LIfk=;
        b=eGxTGgsJWqeoQ2OXG+SoelINyd0IZkZfNyxc3l2jec50HblemEo3CBWxOGHaW/EJ9x
         hJC4bqafy570OFkhliCiUZhZjrRWtz3HdZxs4fNDpxw5Re8fC9PNO6oOPITZkSvKzbpO
         hE3/2ZtOKcLXrAsGehkS/j7vTK8fwZpOVxIkXGy5m8NSZ1pn/++v8PMNSmKnvl/BhlNu
         kVFs5L1VqgoLliMHbF6CoZJCZoPg1ZnnBnjgLjCMMaoJo3xA5SSWnHRGk/7xb/o5R8Z8
         bwtnKFM0lWLjqLYYIKIf7RkG0vWZhS/0Kym0ULw17R8Ly1hsPfu69N6VDPO56vC0hpeX
         mBtw==
X-Gm-Message-State: AOJu0YzgmfdYrT/U7hSH4RtEKs85LFla5vfFX18Zs66Hc4Q5Ck1Qb9jE
	uPxjI+sMelQFBjxOiAMkKTgW6OpvJHgNi+b8qxYLaqHX7KqJeGDVoA3DeWrds/MUWjfu22R3RED
	o
X-Google-Smtp-Source: AGHT+IFfkiOlFU8KNoPl02dBko9nF5/S/5aVRdQy+xaNk7465Xa3Dqu2MgC3iV1hRp6+ZfSTtp66lQ==
X-Received: by 2002:a05:600c:5022:b0:426:64c1:8388 with SMTP id 5b1f17b1804b1-42f858d78famr13134715e9.17.1728037277398;
        Fri, 04 Oct 2024 03:21:17 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:25ac:3f31:db63:541d? ([2001:8b0:aba:5f3c:25ac:3f31:db63:541d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42f86b3a28dsm11977865e9.42.2024.10.04.03.21.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 03:21:17 -0700 (PDT)
Message-ID: <2e69144abbe85faef5500fa43b6b904587711881.camel@linuxfoundation.org>
Subject: Re: [yocto] sstate cache and task hash changing with constant base
 hash
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, philip.dawson@datapath.co.uk
Date: Fri, 04 Oct 2024 11:21:16 +0100
In-Reply-To: <XALn.1728031763085754078.irlF@lists.yoctoproject.org>
References: <XALn.1728031763085754078.irlF@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Oct 2024 10:21:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63937

On Fri, 2024-10-04 at 01:49 -0700, philip.dawson via lists.yoctoproject.org=
 wrote:
> I'm trying to set up a network sstate cache server for yocto builds
> run on developer machines and CI systems.
> =C2=A0
> One of my recipes is not using the sstate cache objects from the
> network server only when run from the CI machine. When run from my
> development PC it uses the network cache just fine.
> =C2=A0
> I have copied the siginfo files for the do_fetch task from the CI
> build stamps folder (which had an sstate cache miss) and the sstate
> cache (for the dev PC which used the cache objects). Putting them
> both through bitbake-diffsigs shows no difference. Putting them both
> through bitbake-dumpsig shows they only differ on "Computed task
> hash" the rest of the output (including Computed base hash) is
> identical.
> =C2=A0
> I've tried reading through the various bits of bitbake and yocto
> documentation on sstate hashes/signatures and as far as I can tell
> the task hash is supposed to be based on the basehash and the hashes
> of any tasks it depends on, but in this case its a do_fetch and has
> no tasks it depends on.
> =C2=A0
> The signature handler as checked through bitbake-getvar is:
> BB_SIGNATURE_HANDLER=3D"OEBasicHash"
> =C2=A0
> How is the task hash being computed? And why is it different on these
> two machines even though the rest of the siginfo is identical?

It sounds like you're on the right track but there is a piece of
information which I can highlight: do_fetch is not an sstate
accelerated task.

As such, I'd not expect a do_fetch task to come from sstate. What
happens is that a recipe's other sstate tasks (populate_sysroot,
package_write_XXX, package, package_qa, packagedata) come from sstate
and if that happens, tasks like fetch, configure, compile and so on
don't need to happen.

I'd therefore look at the populate_sysroot task and compare the sigs
there.

Also, FWIW do_fetch can have task dependencies although you may be
right that yours does not.

Cheers,

Richard



