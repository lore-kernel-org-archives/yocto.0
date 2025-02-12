Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7042BC021A1
	for <webhook@archiver.kernel.org>; Wed, 12 Feb 2025 09:47:15 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.11430.1739353600661135176
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Feb 2025 01:46:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WIofP98k;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-38dc962f1b9so3047239f8f.3
        for <yocto@lists.yoctoproject.org>; Wed, 12 Feb 2025 01:46:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1739353599; x=1739958399; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ii+F7yxrwXHqH1Q5bgBsR4+NI8/Lx0G+3vPUyagEgPQ=;
        b=WIofP98kAfXHcXEY9lzZksLW5E6p3uupXH5XdH7zn1JT0Y/rlkqYEctj/wGK7Zpkd0
         bhbDEqiuXxI3RbpjqFFDwVYgmaB6tl6fKRTfuBJClWLHfcWLKN12TUQU5B8Qzv9dlK3f
         dwnzscOqCOtQJOcMPkUcX1WsZfKLMoFKBQP48=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739353599; x=1739958399;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ii+F7yxrwXHqH1Q5bgBsR4+NI8/Lx0G+3vPUyagEgPQ=;
        b=Kshi98nWr5Oomf18YczNVjqxBhjmohYfsrbxeFyYtf33mCV5M+cozusdexm9BIxESE
         aIx5a6JW20wY///+ESwW0nSv2izycP8BWiSvI3m9uvMGPNVe1xvJMSibMg6QMfhN75GK
         JtQWuyphRVBlQRPpWunQ/8AYvH1lh+KBMbZzoD07xr5P7NPq8PFB4fpuW/6YVKIfDG0Q
         qdf9XXQQiENwPe6p0LanhdXYb9GO16BYym4DEiGWoS0H1nc+4yek7/xP0+gr1SdqTDTS
         fbITwDs9BPFpzUFnmYWnEX9qVdnR2kVe/DlccWVHpvDI78JF0cctySzHyRV2fS36ayHz
         IrEA==
X-Gm-Message-State: AOJu0YyQwYYloaEnWTItoBBVxO17pgft3MQ5m3UNBFcRuWy7Tf95A/R9
	njdkz+4n75pHtrThmuredzXS8BF+H4+WZnAkv7d6UOQ7NXmgB/NPCkOMrSyHhcI=
X-Gm-Gg: ASbGnct6Iqo9zGNaChcPqIr7oxbhb5s3MCdyslyPnk9igLK8sGkEoXYTqG2ydPpbA8M
	XHHUER3GsQ8fKBfi3gvp80GmK5sSEHBuTPjlQga3sC5l6p3AWlfeVdqRZnBz87omqxja92WQcT/
	55iqfZvEaYZNJfz+tCwC1LUEWiGjSpnWDvWHprGem6LJRVgNuO30KsCs7+t71uj+EeVYuzi+vgF
	2qDthCIs1GuOXu7WQOHdg95nU2jcTAhqIz2DoEYjNlks/e9k99Owhp/X6YM/Ziz733BykzBYqZF
	H+Nz3FuZ9o/WbMa/SiBSxkUHRPOpu/xn1i7VsJWqitwF5uSyIyYkNXI4dh0/Yul552he6WcfBIb
	PsA==
X-Google-Smtp-Source: AGHT+IEx9NbV7BIWeO9NYk/qrsCWuXJzq0ieF0XQ5Ca3S7wtLejVfY9CpVbd8cmuFEUPDG7A8vcDxQ==
X-Received: by 2002:adf:e390:0:b0:388:da10:ff13 with SMTP id ffacd0b85a97d-38dea26e7e4mr1761154f8f.21.1739353598815;
        Wed, 12 Feb 2025 01:46:38 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:af16:73ba:601:d9ae? ([2001:8b0:aba:5f3c:af16:73ba:601:d9ae])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dca0b4237sm14177779f8f.85.2025.02.12.01.46.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 01:46:38 -0800 (PST)
Message-ID: <0a17e5adbc72d205aa1cd512873ba4a72a252cc0.camel@linuxfoundation.org>
Subject: Re: [yocto] [OE-core] Yocto Project Status 11 Feb. 2025 (WW07)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, Yoann Congal
	 <yoann.congal@smile.fr>
Cc: yocto@lists.yoctoproject.org,
 ",openembedded-core@lists.openembedded.org"	
 <openembedded-core@lists.openembedded.org>
Date: Wed, 12 Feb 2025 09:46:37 +0000
In-Reply-To: <CANNYZj-ijxTudoYuU5g=_QH5D5ce4zC=EW2rNbiMKY3iBktisw@mail.gmail.com>
References: 
	<CAK5yBb9Fr9MFy5uub2_pTRWmVbt96OWBJ5ty+eAB9Qn+LYa_Wg@mail.gmail.com>
	 <CANNYZj-PbWQDa5hAc5X6sqHVMvJ0QE01XXwytya8rprwvSsqag@mail.gmail.com>
	 <d22a4cec5e317e62f1f44d8d9a810cf4745ccb48.camel@linuxfoundation.org>
	 <CAMSfU+6d7gvYkjC5sbUPu6D_hOOF43ZUnM_NMEwmLUxZn6ysSA@mail.gmail.com>
	 <CANNYZj-ijxTudoYuU5g=_QH5D5ce4zC=EW2rNbiMKY3iBktisw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Feb 2025 09:47:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64780

On Wed, 2025-02-12 at 10:38 +0100, Alexander Kanavin wrote:

> I also do dislike that all of this discussion around creating those
> mirrors happened behind closed doors, at least I have no recollection
> of it.

I don't think any of it was a secret and that isn't a fair
characterisation although I don't remember all the detail. The oldest
pull requests are from 2013 so it may have been before you were
involved with the project!

The YP github was newer than OE, mainly as we ended up having to
protect the namespace and there was pressure to match what OE had done.

Cheers,

Richard

