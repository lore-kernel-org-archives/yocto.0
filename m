Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12EBFC55ABF
	for <webhook@archiver.kernel.org>; Thu,  6 Aug 2026 10:51:15 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.16545.1786013472729513963
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Aug 2026 03:51:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=HUChOJaS;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-9034b6b7674so12952226d6.0
        for <yocto@lists.yoctoproject.org>; Thu, 06 Aug 2026 03:51:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786013471; cv=none;
        d=google.com; s=arc-20260327;
        b=D+JMNrVKeIQ6Dpwl+bRXavEL3hxcOr9AMWpUvRB4gAbk2K+C0/0sOSQhF/eMvuWNB6
         RFIGDmXHLklnrIuCDdt61pvj1qvkjmNc3g3M9sWF3qWPRm4je/XgcX+1rjVSDS54DVnJ
         +upR35c2FjueTDwN28yMtE2at5h73VDOENZlBXB5ErigpQkmIB4qvnsV68+7GQWlVqsw
         h8jbZmAb+o/8cMpUzQnanFBIKJXbxCbbACINsQ840auzqVazM84+ja17hQkDe+UV6QFL
         MluF5QvhU0TxU6D6cDQv2+s2DFH6UYdwTF7IiIJIMJP/yxrrImFAlOE7wmG7xk6FfTx9
         Zdaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wmy7v4efWaiNG0LzBv8U3KVjEcfSomB5AqJA3vrLE34=;
        fh=mqJwaa8jVSn/wCXyes5gXUDVfEW3aQUsMvRKhMPVvMg=;
        b=FOfuw0amjNvuHLnwMWMkWHsTYfFlOJBNAJSJWt5zajiZfHPtOI+bPPRlRVwG6iglXN
         Z3QWSNv7yE+wBT1fLNiLuUhQbxNrY4ELJC8MEYw3I0n+JKPClEvPcshnJi0dY3nWQFzq
         R9uIo5QyT/5wimf+69IPKafvdKWDEGgGfwek3VGpnzJawXPtgF1qMKZTKFKzby9hHJdt
         nw52qaAjTPKBJ/7kzOCXOkcp8eeMAZByGzusJqyTMz2+IXhBOlbgCbleXYaApMLLWehe
         UJ6vm785i2c4EmRjM85ESb2Z2flG950l4gDspgW/zIFCpspXSNtokPngHI/RxoTyM8th
         5rtQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786013471; x=1786618271; darn=lists.yoctoproject.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wmy7v4efWaiNG0LzBv8U3KVjEcfSomB5AqJA3vrLE34=;
        b=HUChOJaSZovChBPqgISd8PberToi/PSbGR9ZmoPBNu8h9//AMuCbIjjY7TRa22o6O6
         ULzj0F7ITqeXWkCkGSIk424MvtGJwHidTv/U2cnl1LBhUHJlGoIR1rPln0Obs1SB87hc
         RRQ7ZgvBhZnk7J8/HeYtOhWR31su0X+vXY/+ULiXyDYMmycqQm8J50aETl/0lj0cp2wO
         sC2B+qpm1szCt1ePGnMdvL8Vr+u4vAZS5DYeH4l+1J4JoqqUKVwaFdHTqBw7Z2NDYu5/
         zZeOaeLQGWVVPKkdRO+EFnbi6vIf4ZmE80gpL0XQlOxsV9PmXj7k01uN2Q2FjwhCJmm4
         NWsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786013471; x=1786618271;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=wmy7v4efWaiNG0LzBv8U3KVjEcfSomB5AqJA3vrLE34=;
        b=SktFsAhOKC8UPnrSPKUHbwakpyalvfVZwFV7EoqTdCyUhkz5zIRCrYMQvWKUWHJx1i
         Hu2QetodFU348c9ZHSvjyvtkqNF9xVpuZ7tOyXmqGwxyl4eeacNSBUdQNHrnMIlv+IDg
         sUXT4dqTXe92fkb+gwGEfhYmv1AUGKY7nZZkyqyIZVTbwf1tqX0aadGwHX3mFhKQRo0q
         89nKzyzqARG7AiH65U/nvOjBb+rKYgoWTRih5aONfI8tB1k91qN+DrGrUAKvwhJD0NUV
         Q0wZS2zMe57XiHox+SqKuMU5AKMDbHcV5h3L2T04W5R2jq2JSse+PQMVRJAKfvsmYOB1
         KZqw==
X-Gm-Message-State: AOJu0YwoXCMu9ic/etqUpLd/zydPu+asKJc7KW0wFmVrTN+sbgy8ePJZ
	pykI0DEA6v/ZP/6du0cnc0vZjdYk9z3tkcCxL/ul/fIRyAxE7KukNpd7km6AZX8A65lQwcIfrT7
	lsz00o5bjfIjL6RRySnIOmKTFdhvQpPL/xg==
X-Gm-Gg: AR+sD11Fctc5F2RUgn26ClgHXxEKqgKZdAt5Fcbu0gotyZGIdLIphv7n6eXmXEsfO8V
	5CCmj78A22B7TEjvr4EctbZ43awAbK1fTmcHfREyT4yIUvSEbyhU4SGwsPCocJGfYsk8Xz+KCFJ
	T8pkBDxOD4wmzedqxU9KTybAskOo5P54YqRVRZ+7etNVLBxyafqTu5UVmREPyhDuLrhNvw+IFZm
	kV27A3wm3Z0HOIAE/B9zPUtK+9IAQj1XktZauI4O3CAaSB/I/oXO1SRDq6TJ3tHHGGyDq1pqqSx
	2iITHu/fOUQlyL/nFbIz5JrWw5lYgIqByaUY5lgriKE7/4ZuLmX6gvgttzOY2avahNhYlkMnRmF
	5Sug=
X-Received: by 2002:a05:6214:5413:b0:8ff:6304:da9 with SMTP id
 6a1803df08f44-90881081a82mr164712076d6.6.1786013471507; Thu, 06 Aug 2026
 03:51:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb8f7Tnxyebp7o3Pkwdp2R4RbfZ2sVo-3fjh6MUGzvcESQ@mail.gmail.com>
In-Reply-To: <CAK5yBb8f7Tnxyebp7o3Pkwdp2R4RbfZ2sVo-3fjh6MUGzvcESQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 6 Aug 2026 12:51:00 +0200
X-Gm-Features: AUfX_mxaW1bVclRhIyBkVHQhFy5kxIJGjGf45zPAKdsqlLdB3SUoFeB5hI4Fyi0
Message-ID: <CANNYZj8MbUcOadseSfWcZzGxXaSC30DxE7HM1=oGrbpz4vpj=w@mail.gmail.com>
Subject: bitbake-setup in pip (was: [OE-core] Yocto Project Status 4 August
 2026 (WW32))
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: ",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	Rob Woolley <rob.woolley@windriver.com>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Aug 2026 10:51:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66680

On Tue, 4 Aug 2026 at 17:07, Stephen Jolley via lists.openembedded.org
<sjolley.yp.pm=gmail.com@lists.openembedded.org> wrote:
> Current Dev Position: YP 6.1 M3
>
> Next Deadline: YP 6.1 M3: w/c 2026-08-31

There was a question in the sync meeting about what people would like
to see in this cycle. I forgot to speak up: I'd like bitbake-setup
installable with pip :) I'm not 100% sure where we are with this right
now; I think all needed patches (or at least all published patches)
have merged, and what remains is the mechanics of making a release and
getting the artefacts to pypi.

The reason I'd like to see that is partly self-serving: I'm going to
talk about bitbake-setup (this time, as a released, shipped feature in
yocto) in ELC in Prague on 9 October, and it would be awesome to kick
it off with 'pip install bitbake-setup', rather than 'git clone
https://git.openembedded.org/bitbake'. But it's also good publicity
for the project to do it the former way.

So I'd like to hear from you Rob where we're at and if there's
something I could do, I'd be glad to.

Cheers,
Alex

