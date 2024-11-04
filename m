Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33A80D1BDCF
	for <webhook@archiver.kernel.org>; Mon,  4 Nov 2024 17:04:46 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web10.740.1730739878487626736
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Nov 2024 09:04:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iqdpWTaS;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2fb3da341c9so41747831fa.2
        for <yocto@lists.yoctoproject.org>; Mon, 04 Nov 2024 09:04:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730739877; x=1731344677; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ubeEaglktJf1fDD5QvUYd2e+X3rJ9G1LxuDbWH2j2jc=;
        b=iqdpWTaSZIYBCoZ+zgpQbZt9QKQanyyF5+GzSVyDhdvum5j/8h4Ia+FTkOQh8h7MGF
         i+PhrIYhjRZiTuZsDzgSeHd5+/Ph9NLG6RZtE9GzqKGMpcMX2/a4UzDqL9WYaT9ILQUU
         6og5WKxOqY9N5CrYbUyqEby34nXo2QSSHpyjVXz2pTyhZ77H8bSQAaVXKIjIf1kccRuA
         WdM+qLRlmUb6Bb50uWz7Y4lmO0vlUJ56hkDbZnLyJdfVUqTZs0i3++D0a3avOACJHfgx
         Tkz0SWC9wXRvtwasE79qhn8WdALuEdYBBVVM2tngcD6/UxpZB9dEKzmwX6gVX74ReL0J
         pZ5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730739877; x=1731344677;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ubeEaglktJf1fDD5QvUYd2e+X3rJ9G1LxuDbWH2j2jc=;
        b=vKcX+rWFqAyycOaKU42ip3MzB/0g0iqN1GVOpXwsWvgcdA656dRVkCa3aeSHfu0ZF7
         kiYhbY/CHmldXw/4G7Hkb2fT6WoM3nJ2AhSULVcM2QR7lENwPA52jGx95ugNf1UavreH
         pNQly7j2a/Ngef8rYUsjq8pOQJDb4tLPhpVMTTvHekKmQQo0FPYzWi+bN9wMqTWgapq/
         9o6uNFSENgdquYgwJKHuj/Wa/kPPIjAk99i4zgNoUE9lO4RgOySIPtYvp/L5bMlRlbV0
         Cq1+yr0o7VpZ+imDQerD1v0578xi+8Sq6L06v2pn7gL2zTLpuv7KXIcZgp80wb0k5mgZ
         j4Sg==
X-Gm-Message-State: AOJu0YwaJwSYj8LbSVNlFblbYW3GPwPchrPDnv1LjRHQPZlrHqiEBc3c
	Tpn6tnZOijBtR49/+pDD9hJM9/V0ISn/er+qXygQVeZZbGsye5GBexO+N9eTgswlDTGi1kReN2X
	RIfAkk12muq85kzCq5RUvfoq1dzpf6g==
X-Google-Smtp-Source: AGHT+IFnG4w/ixCz0S7RG2+KJUcwWm7ExcsHANYSleJv+Hd79QhhwxHtJY+hBuHLSqsyjC1P7YygGaOFu2jWEtbDqs0=
X-Received: by 2002:a2e:a801:0:b0:2fb:565a:d918 with SMTP id
 38308e7fff4ca-2fedb77157bmr71088071fa.12.1730739876132; Mon, 04 Nov 2024
 09:04:36 -0800 (PST)
MIME-Version: 1.0
References: <ivJP.1730738125256770830.PSGR@lists.yoctoproject.org>
In-Reply-To: <ivJP.1730738125256770830.PSGR@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 4 Nov 2024 18:04:24 +0100
Message-ID: <CANNYZj_z1gYHeJ80=-_JTZTygpxBCc+QROKoDdZFGD7KyC-eAg@mail.gmail.com>
Subject: Re: [yocto] Set global variable based on recipes versions
To: yocto@lists.yoctoproject.org, sidali.teir@cysec.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Nov 2024 17:04:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64211

Presumably you list these somewhere in an image recipe (so that
they're installed) - this could be moved into a variable in your
distro definition where it would be global?

Alex

On Mon, 4 Nov 2024 at 17:35, Sid-Ali via lists.yoctoproject.org
<sidali.teir=cysec.com@lists.yoctoproject.org> wrote:
>
> Hello
>
> I am struggling with a simple case but I cannot find a simple solution.
>
> I want to set a global variable from a bbclass or from recipes (impossible right?).
> My usecase is that I am installing multiple version of the same package into my image and I need at my build time to get access to a variable with the list of versions installed.
>
> For example, my package is named pkg. I created the following recipes:
>
> pkg-1.1_1.1.12.bb
> pkg-1.2_1.2.4.bb
> pkg-1.3_1.3.9.bb
>
> That way I installed the versions 1.1, 1.2 and 1.3.
>
> I tried having a global inherit of a bbclass that addhandler on a specific event (ParseRecipe) but I cannot set a global variable that will be used from recipes.
>
> is there a way to get the list of packages that are going to be installed in the image from an event or variable? I could do the parsing afterwards.
>
> Thanks
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64210): https://lists.yoctoproject.org/g/yocto/message/64210
> Mute This Topic: https://lists.yoctoproject.org/mt/109388624/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

