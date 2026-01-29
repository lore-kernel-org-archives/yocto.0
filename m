Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FAD5D358EE
	for <webhook@archiver.kernel.org>; Thu, 29 Jan 2026 09:48:26 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.11631.1769680100563597452
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Jan 2026 01:48:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nYbvUlI6;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-8c07bc2ad13so63551885a.2
        for <yocto@lists.yoctoproject.org>; Thu, 29 Jan 2026 01:48:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769680099; cv=none;
        d=google.com; s=arc-20240605;
        b=W/Q6atLXl09pXSh6B3GFU5NleZNIJBIFpIoeOvCMWF2/o1gqpFbZzw57GfPP/2Y6zG
         YRLsPqh/OXYbT5WdO4AdLECWlctUQiIo/T8s9dpwQpHTJdM+p86BCnPNqkE7OmNcXTZl
         eUzhRkvhXjzFyGDu3ryKeH9o+UdPFSp+LE9SIymCsrVzH7NVrVtYh+iIcNslNfixWPeD
         cxNRcLMx87dsIzwnxHe0fWlaY3ryPBzcZsC51RymeMbmvkMXwVzgZNmCahy0PetzPRCd
         Fh9XdrDH0I+P9ETpZ6SRMWjP6ZsMIBAdbJnWXRA6bQc1cryRCm2PIaOJKVHU+LbO63/4
         lGHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=YXoxkmZXYLtD2gblF1zOeG0MclVj2uiI2Is1kYGFOeE=;
        fh=oXEIind2+i/hy2xmDPLXzFaIvzEMeSKgJAf+9rpTTd0=;
        b=NlYVse3m8YHNqWEbrIj+JlCyYsK9lPbzPB2Ydwq5sto0PhftxE92w3IfbhIiD9P/3w
         UPEs/UMKsA4gaUmWk2RiyzwX3+bF61qTRKkn6KqUf3u452vM85OfN+dnE5ubwvIIXQc8
         8wcgankDYsrbrr9VUcxDn94cQqiwnXfDhO/rHK6Rgr2QVjOLg/4wm1kxCyfJRCRo0Njd
         tsX+UyMK0Ed858HfRmQsza2RHdxDAi3kMW26jCLB44TzKTFYvkJLDr0kFbCkfhk9LskM
         i8hhZLvwfZpxL4ue+yckZwN2OUYW0M2VfqSAkanO5rPj/CdzFDkJWw/u7t/jyHTb79Dm
         FVKA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769680099; x=1770284899; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YXoxkmZXYLtD2gblF1zOeG0MclVj2uiI2Is1kYGFOeE=;
        b=nYbvUlI61WW7AHCpbq0926Iaa/4ip2mtKX622CgN6yHFfqjbOymE67jPVJ5bKrm8Dk
         KW0FZMvvdyLF/Y+Q8nFPtDT7aXL5nmcmN6yG6E2S22v/hpOAtlg82lMXx4YgfcnwZk+l
         Xye7ERJ4k9ADioZUfveq0WDYsE1o784Q18pgYOrrcSVzaT3pqSitNpGk3GN38vXDks09
         Tdb1Ryt8OmKcJ34qXv5vcLovAykoxn4c3NCwqVXeoWDuuEXJL1HDMfZVjmU51VtTdnx1
         9KdroIBraEZX/onra/JKsW98YYTReLvrREn7WjCMPYYsN9WsM9KJ2WX3R85AgndLI3xc
         ckCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769680099; x=1770284899;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YXoxkmZXYLtD2gblF1zOeG0MclVj2uiI2Is1kYGFOeE=;
        b=Nu7H0j+B1/YK9/cN/pMbLnQsIgu0rlDtQU6ydYViRY8dfvJBSCh8jPAsfN0mYLF8Te
         9hlmge+5S4zL4d0VOU2kdVhWxj0pgOzhrZ+hbdhJsLHACgIVCEAeP4JH0OBU5iuDjzxO
         TLbuf50EH3YvvUPHJsuzWVhrOv7PoQ1HkYRy9XWBPQX3HXShAu4aB9M7z4rh4sG9PUty
         UeCmojEk9UnDhGJB8OcOLyqKkmp0rrK1kVoKS8+QCf36yPPwqgw/HhVOox9lwqVDe+r2
         ASaDw6tu7kStXT3evYr9RlsT5WzlNdaPMJVgtOAlmPcq937Ehoxm2iiQOywQb1/Chbv2
         pk4w==
X-Gm-Message-State: AOJu0Ywvrr5toQERhP8mxPh6rulgeJnnrDjY5I2OWJnPpM/LdLd6mvLy
	n0kUqgLe+/B1NkYbtMdJXprsK8q9ZMQ3FQN8pTQXq64rNcOxVyxv3qhvyNGaU2iRrc8RA1e5EaW
	2RNuDxobtYmLb+l/G3n0vqUJhVzduJdD0KQ==
X-Gm-Gg: AZuq6aLRvj6zgZhpfarLX7BjNZg+qjwjL8FeEKbm/dNh9YN55kCS+1NyaF+f7R0d/HP
	PkySQNn8ITimZIH1iChhPJEmW1zDqB/75Ghhlgq+A8hgAB4vXIv/eVTSrMqub4d76Ov1Dvr8rPp
	qs97ss3LO+Z9gLc6XwaMR9QCahCwyhOBu6hXdhkRzbq1B7LmGzLf7+ozCYwOZPQDQAbHy/fWR6X
	1Mco4FYMUu7DCTv6MHtE+hrkUDz6oMxTGX+eX3kgT1TOtpVap8ZqBiS+ZYa46pwBIFdqVlOsG6a
	bQZJc/csztdN8r5TKgSk4Z3UIQomaw==
X-Received: by 2002:a05:620a:28c2:b0:8c3:650d:577e with SMTP id
 af79cd13be357-8c70b859271mr1013331685a.4.1769680099417; Thu, 29 Jan 2026
 01:48:19 -0800 (PST)
MIME-Version: 1.0
References: <2hjc.1769622992022831072.Xhaw@lists.yoctoproject.org>
In-Reply-To: <2hjc.1769622992022831072.Xhaw@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 29 Jan 2026 10:48:08 +0100
X-Gm-Features: AZwV_QjAXA97HoKdwadxMqPopMGc-aD_TkuB2ZqmXGQtfXrGQTSgbpXLXQBsGRs
Message-ID: <CANNYZj88ijGUCd9Ux=055dWJoECuyo=Tf1sd41X9Oa4=1xO+Wg@mail.gmail.com>
Subject: Re: [yocto] Image UNPACKDIR is being cleared
To: yocto@lists.yoctoproject.org, rg@braneaudio.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Jan 2026 09:48:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66203

On Wed, 28 Jan 2026 at 18:56, Richard Greer via lists.yoctoproject.org
<rg=braneaudio.com@lists.yoctoproject.org> wrote:

> What is causing either S or UNPACKDIR to be cleared out after do_unpack but before my task can run after do_rootfs?  Is it something to do with it being the image recipe which is treated differently?
>
> Any help would be appreciated since we would like to move to a later version of Yocto.

If you can provide a simple reproducer for latest master revision of
poky/oe-core, you have a much higher chance of getting help. Otherwise
you're inviting people to a guessing game in an uncommon scenario in a
version of yocto that has been EOL for several months, all of which
lowers your chances a lot.

Alex

