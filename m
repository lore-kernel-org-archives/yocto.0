Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92957C3DA64
	for <webhook@archiver.kernel.org>; Thu,  1 Aug 2024 14:01:37 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web11.68971.1722520890926313036
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Aug 2024 07:01:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=QJK2o6GF;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-428e1915e7fso5613555e9.1
        for <yocto@lists.yoctoproject.org>; Thu, 01 Aug 2024 07:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1722520889; x=1723125689; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cotGrByrfZXqNmANcw4KvhJlPYXjJa/sK8IJMaQBoQU=;
        b=QJK2o6GFkjALbtI5fIvg9UbcXJ5RuS7LbeIDFU2tfPlP+PjX/dTn8riLxOzDxmaZi1
         A0MnHMr3jGqjO5oDbP6xWTQ9pt0nyHBWlHmDxF/zi7fUmldxx6bzb/P25VBad/LsJs89
         DoseQmvM2H4tQ/ICJHYiwYqSws16BhnoSfsts=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722520889; x=1723125689;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cotGrByrfZXqNmANcw4KvhJlPYXjJa/sK8IJMaQBoQU=;
        b=tVJqYbBJLbOLdFrE7zNJDTw7gDaXu09KQuPLXRaVxk79iBXFr5tZE50gjkFdYCWWto
         StIgZrhKZ1wOwvXCbxbsTRat7ExJWuUQuKUoYolQdXckZ/HL/jHqHID/bzAzqsnE3Xuc
         fz+bHvIn8umqxap44M9CCoW5SJO1YafQ9UfeCrOs+s0yLyoK2RY/GRi26fQvTd3JWboM
         Z4XvkiAluWRFoqiwt/imzWclKUEShot/TAlDUG9iwd6anbzlYvWpuIYFYKbTJlUU3KEB
         MfuUcDrrI6c4iOGTknZo+7LtoLG7j9QRFMY0qI+Pgi/hcabXUL18YaYRbXEiVcR5mvuk
         KSOA==
X-Gm-Message-State: AOJu0YznjTvWzZ+Lep3TUgBkeCiuoZ3MoL41Fz011AIKWkO7EghjDD60
	rLh91xRU5CZnLAQdjZbdLt08vIhXvfmsUuIM5aIB2BAhY2Y9lYXvNF5Kff3zfepPGePxzLvkCND
	2qxo=
X-Google-Smtp-Source: AGHT+IHQloBabzuvcY69PZImqDIp+5vGB6VGd+QOq0QUSthzjxAtzUHyCKPLI6w8/Yq8RWJpkTzBAQ==
X-Received: by 2002:a05:600c:46d1:b0:426:67ad:38e3 with SMTP id 5b1f17b1804b1-428a99e030amr21772575e9.3.1722520888571;
        Thu, 01 Aug 2024 07:01:28 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:6f1c:86e8:7d42:8e2f? ([2001:8b0:aba:5f3c:6f1c:86e8:7d42:8e2f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4282b89aa86sm59194035e9.3.2024.08.01.07.01.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 07:01:28 -0700 (PDT)
Message-ID: <c61a16a47d9d1a058b4fa9fdbc3178f4f60ce039.camel@linuxfoundation.org>
Subject: Re: [yocto] running ptest without internet?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, jan.vermaete@gmail.com
Date: Thu, 01 Aug 2024 15:01:27 +0100
In-Reply-To: <CABF_=yi6Bfegi6D5wEB72dtafxdZByww_pruDRFD-3rUH69ZdQ@mail.gmail.com>
References: 
	<CABF_=yi6Bfegi6D5wEB72dtafxdZByww_pruDRFD-3rUH69ZdQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.0-1build2 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Aug 2024 14:01:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63641

On Wed, 2024-07-31 at 20:50 +0200, Jan Vermaete via lists.yoctoproject.org =
wrote:
> I was wondering if there is a convention or agreement on what to do
> with tests under ptests that do need internet but are running without?
> An example could be a unittest of a package about networking that does
> a ping to an URL.

We haven't had anyone raise that as a requirement and we don't have any
markup of the tests for it.

The challenge is that ptests vary significantly in how they're run so
we probably can't control if they're executed or not on a per test
basis in a general way, only overall at the recipe level.

> For now, Yocto assumes there is always a network/internet?

For ptests, yes. We do assume the rest of the build can run offline
outside of fetching.

> Or we could exclude those tests based on BB_NO_NETWORK?
> Something else, or not in years a priority right now?

You could just run the tests and create a list of known failures
without network, then filter the results accordingly. You could also
have a list of recipes whos ptests are known to access the internet and
exclude those from your testing?

Cheers,

Richard

