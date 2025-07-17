Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E994AC83F1B
	for <webhook@archiver.kernel.org>; Thu, 17 Jul 2025 09:43:53 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web10.44554.1752745424590877537
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Jul 2025 02:43:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LI0w/u9Q;
 spf=pass (domain: gmail.com, ip: 209.85.219.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-6fad3400ea3so8363446d6.0
        for <yocto@lists.yoctoproject.org>; Thu, 17 Jul 2025 02:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752745423; x=1753350223; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cDmQKLm02+fsUKmRwN0mNzEBp0l7gmFCcrHdPP63OBo=;
        b=LI0w/u9Qy9giRlPDK2x+wQnqP3kQZjXge4sN0PhuDP2gpUjv7bK0hAXok1RXkMmL12
         kpFUim4aQWOCW49wZ4FwvKbr0u16xgWWVaJ1pLRwoZpkV861Xw664jMhPye8c6OJco5v
         ENAYcW3u+otRSOOnpU9bwmrSxclZ8QBWwxtW+MvH/C954aJtyNmJC+D3Slz0X4Jttz62
         aIL9U75BcqZpNsdBUUaTEn6u4WecDsOqq0xe1jBulWDfo65r4KbFSSk6qaONJGiJSlXu
         lGCPfzrJJkfAKOrFKPpQEZg/3MOn/NywzJ/LzT7HrcbSofepoAriZOEFvcDoDpifArLs
         wG9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752745423; x=1753350223;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cDmQKLm02+fsUKmRwN0mNzEBp0l7gmFCcrHdPP63OBo=;
        b=IOWh4PopnjImhcRo4Dmwjn/vNYRK/lSYfddL1252z+GwWMeqUZeHEQEm0BOm6/7KNI
         5uPNDrTrvt65DFxLI8lrev6SGN+g+NlUQqwaYX+d5YalUDqKBjpIhrTyZ0voz3Nep0KG
         R03JK1qRtKpaGKTtupLe6DJBzsucM5KLSchgPCOaRx3hNnE8rPhQOZ+WPXP6Kf5vzBNZ
         xMlLpC9PMyZCazeny0Ee7yzyG0eJoI0vS1oqm/ksM3jk3TFr7PN7h+0Bck0xNviIzAlN
         mkbpYG0L6qYaR5nlGOokJ8IwZi80CsFoZO5mB9O5rm/cJPBHlCIGsoW4jTxcf0tiTVwk
         TEPA==
X-Gm-Message-State: AOJu0YzomOknkmumILhqHf8zG4v9C0fMYcGWeVhZ1OkZYIMzRSoKaN+M
	XaDdYV8vlJTml6sMu4M5PE5/gOOKIc31qn0oTW1397kdqTTnKCNNtvxW2a88SJT1xj0Su0BYmBv
	1vqhO43+8Mkza5BEEagYz+AC3eIzTPKN/LQ==
X-Gm-Gg: ASbGncsolVhcCLtn5fb3uJVg2BG5v+uotHwCS860iZS79p9COGutXe1jr8qNqGfWdsk
	5p6AFAY6g/j3m/U9RPzszfMrJPvnaBz3TjTTyNK1zE32iF8+BARi62ZhTo3+L28oVC7dCQVoQH6
	VfdWsEXwav+AmW8AObZqTFHAl9aSM+iKKBaZZQXeNV++IprTafu7lvoHDXIBUweV8OAEETHitHw
	ukDWzC8GX8YNq0=
X-Google-Smtp-Source: AGHT+IFgw4MkP6TSQnMTXG+VVMqXuxDl5IZrZrEXUE7Pr3rBFc4kPo5OQSFom+BhzG+V/vViP33uf1tnUmZiBrt1QUg=
X-Received: by 2002:ad4:5766:0:b0:704:81a4:2847 with SMTP id
 6a1803df08f44-70507212018mr29486836d6.17.1752745423274; Thu, 17 Jul 2025
 02:43:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAD1meC74hZji20CCg2TM8YJPT+6UJCYLPffkEdfKxVdYO7=7ag@mail.gmail.com>
In-Reply-To: <CAD1meC74hZji20CCg2TM8YJPT+6UJCYLPffkEdfKxVdYO7=7ag@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 17 Jul 2025 11:43:31 +0200
X-Gm-Features: Ac12FXxh7vJGl9BUkEMH6x4C9_p5o_SJf06gx5gI51nPFZLmdbLGfuklECaEgXg
Message-ID: <CANNYZj_0qxBkhFTkkH9CLTN2V65tpd4bD78koaDBptKMEo8YRg@mail.gmail.com>
Subject: Re: [yocto] Backporting Python Versions
To: yocto@lists.yoctoproject.org, rhoffmann@layerzero.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Jul 2025 09:43:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65671

It would help if you tell what is that older package you need to use,
and what is the issue there. I think you're far better off fixing
that, than trying to put kirkstone python into scarthgap.

Alex

On Wed, 16 Jul 2025 at 22:38, Ryan Hoffmann via lists.yoctoproject.org
<rhoffmann=layerzero.com@lists.yoctoproject.org> wrote:
>
> I have recently upgraded from Kirkstone to Scarthgap and due to compatibility issues(arm32) I need an older version of Python to use an older python package.
> I have my preferred version set to the right version and I copied the old Python recipe from the Kirkstone branch of openembedded-core.
> When trying to build I get this error:
> | if test $? -ne 0 ; then \
> |       echo "generate-posix-vars failed" ; \
> |       rm -f ./pybuilddir.txt ; \
> |       exit 1 ; \
> | fi
> | /bin/sh: 1: python: not found
> | generate-posix-vars failed
> | make: *** [Makefile:614: pybuilddir.txt] Error 1
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
>
> Attached is the full log.
> I can see here that it's attempting to use python2 instead of python3 in that generated file, but I'm not sure how to get it to generate it with python3 instead.
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65668): https://lists.yoctoproject.org/g/yocto/message/65668
> Mute This Topic: https://lists.yoctoproject.org/mt/114192541/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

