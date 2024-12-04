Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 597A3E77169
	for <webhook@archiver.kernel.org>; Wed,  4 Dec 2024 00:30:59 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
 by mx.groups.io with SMTP id smtpd.web11.2936.1733272256075830391
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2024 16:30:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=tuvI+S7O;
 spf=pass (domain: konsulko.com, ip: 209.85.222.178, mailfrom: scott.murray@konsulko.com)
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-7b15467f383so459740585a.3
        for <yocto@lists.yoctoproject.org>; Tue, 03 Dec 2024 16:30:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1733272255; x=1733877055; darn=lists.yoctoproject.org;
        h=mime-version:message-id:subject:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HpXzeBUhs7ZmlerDfPFZc9byY+jp2LyT4L7M3vlqOF0=;
        b=tuvI+S7OdWtTqrq6KzTpULUD6kIhTFnlSMW93LkJ44UXdMh6VjJ21DPQg3lsRP1qYS
         bWhXqsNoR+S6tt5HALQvUtX0TaDmbw556fRRwqVH5+WBFLtR95KUigDsssK9KgTT+srS
         TKB2IERvJgZgiWL3P7VcnJ6N0SMuRd4qC4SDQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733272255; x=1733877055;
        h=mime-version:message-id:subject:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HpXzeBUhs7ZmlerDfPFZc9byY+jp2LyT4L7M3vlqOF0=;
        b=jnFbQW4Oucp88qSan0WmTlcqonjTC2oS9h/cRuJOqG4/AzgSJNZXcwLH8EcoZQdnWc
         s2e7UdwHLDdG5wh9r9tAOwFAavfza7DzFMZQOudgpM5b+RKnQB4e5WJEsGS1QT2Neacq
         4a+/6tPceVZJzKMK6+qqgKVgjt8LNHDJLOZzTdhR3LFIYoTQCWWbSE0KuxFfIdJahXy4
         a5j2IG9vagAtTK0CdvKyMtf7AysfGhL8glXvIcGP4jWp5m37BiqRHaC3awRvL7LLYerU
         3YRjwAOKteqhEBPFdFYVgOb66/jxZ3tnY5hbH8RduSj89RN8NW9ZfbNga5B4W3oV4zZu
         pv3A==
X-Gm-Message-State: AOJu0YyP7sah5IbeFKGMgLXDGy0tS3mKuyT7w/jfVd+QWM/tNHUFoJMV
	MFVaqHeIJTF/GGD6xML95tW6YvpdbiNFduqwYN8v0ZEQ+E/UgWrwJs5ja3WfN4/cO304I2uk3f6
	Y
X-Gm-Gg: ASbGncvWwXoZEV4xLl8/SVZ9nEvNQ7CX++NNINsi14SXF9cnEYf4IJoaedc90LBih4Z
	ZzitG4tKxmkYUdaTyl+D5xx0kM3LsqdW6HxD0l2YOgQk6fgTMP4Fkww9nVeFGDxbuY79/m0ZuQu
	TQKMNG34B+5Vvv0SCNnOTC1s4j0f5T7kk5QfXV+1ZFk49PZGm92Ip39cCHCeGyarHbKITtRJtl+
	Ec8mY8QIX4niEX4NC062pYi/a3DjhIFUTHc3LB5jyY3/Ferdfb7WTylUMOSsEmieuCSR78st4Jm
	45VCbYnh
X-Google-Smtp-Source: AGHT+IGasIqN5zCXrYJkzfSt5+/CcN9aSB5M0fuEiZwuM+ZSPXg3fJxEDoAGi4Y8fGCmQT3oSnXm5g==
X-Received: by 2002:a05:620a:2915:b0:7b6:6642:b5f0 with SMTP id af79cd13be357-7b6a5d168f2mr554557985a.11.1733272254745;
        Tue, 03 Dec 2024 16:30:54 -0800 (PST)
Received: from godzilla (107-179-213-3.cpe.teksavvy.com. [107.179.213.3])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7b684944f04sm561280285a.51.2024.12.03.16.30.53
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 16:30:54 -0800 (PST)
Date: Tue, 3 Dec 2024 19:30:52 -0500 (EST)
From: Scott Murray <scott.murray@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: scarthgap/rust mixin progress update
Message-ID: <19f48f4b-0232-1fcd-2c98-baf64656db27@konsulko.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Dec 2024 00:30:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64393

For folks waiting on a scarthap/rust mixin, I believe I'm almost
there. I am currently working through what I've missed that somewhat
breaks the Rust selftests between 1.79.0 and 1.80.0 (the tests pass,
but an overall failure is reported).  I decided that being more
ambitious with scarthgap/rust with respect to keeping the selftests
working is hopefully a bit of a win/win, as in addition to giving me
a good sanity check for backports, other folks can also use it to do
their own checks.

I'm hoping to get the mixin branch pushed in the next day or two,
and it will definitely be pushed and announced here by the end of the
week even if the selftests still have an issue, as I will be off on
vacation next week.

Scott



