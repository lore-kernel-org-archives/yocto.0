Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF183E7716E
	for <webhook@archiver.kernel.org>; Thu,  5 Dec 2024 21:03:25 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
 by mx.groups.io with SMTP id smtpd.web11.22666.1733432602338979367
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Dec 2024 13:03:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=jMbJlB9e;
 spf=pass (domain: konsulko.com, ip: 209.85.160.176, mailfrom: scott.murray@konsulko.com)
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-46695478d03so20015641cf.1
        for <yocto@lists.yoctoproject.org>; Thu, 05 Dec 2024 13:03:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1733432601; x=1734037401; darn=lists.yoctoproject.org;
        h=mime-version:message-id:subject:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/L8DABzmv/ws7LBpXwaW9wDdr+oOVM+1FH3fYWHFW10=;
        b=jMbJlB9eelyUKeZfwFXdWEznG51PnzMfyUUT1AJ6WywE0YxFXbEqBB/0+jsYX+/r14
         pj+gCYsGQxhv0V3i4pj/kelsZrM6m+I2tt2GEm+swu+v9Zs4AhZjxNlb9h6w15yyxLu2
         hJPLIfXcDejHvfGR7j9clYP8nkgwfrrj1d4Is=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733432601; x=1734037401;
        h=mime-version:message-id:subject:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/L8DABzmv/ws7LBpXwaW9wDdr+oOVM+1FH3fYWHFW10=;
        b=q8TzW3QOcdzOcGaD0o+aBMYmcWEZ215dJSmbaCfVXyYXlJQBY5IKICVLNU+ftiPTx7
         fWe12gFSFQC0+fewjZ4bIC8Fl+Ur/SUYjQu4jLrUUIalw7t1lrKo+D6OzeWwmweFne59
         PPBKY/wHVUkHdwnKyQAq7GWQZw2AYjA5EEY7rYx8quJ1m3HYUOygLc30B6IHsiDB3KHx
         aNDzK8LQhMkTqWPFr+VVRWVe/cUFdfYl5T6bQfQOo8cGrRFU3KHemWoJxjgiKNZ5fXSh
         zU+7mYwWP9j/cFr/bKCL5dynh1RTa0avof/pp4w9y0dLweykckDZyALv+aU+m/kgD69x
         d4OA==
X-Gm-Message-State: AOJu0YxiHXqhS/XO4lATqmA/GArh6YhnuBVxccCUK1NUoJHYdoXct9Uz
	sszBTcJ68hYlG2MS2Hvajj9RdwVjrQD/Z+20omsggNlXAv738ETnwpH8FhYk1yeA6eUPmGlRoSW
	W
X-Gm-Gg: ASbGnctrri7YRy1GxDHSFveP/FZTOOs69ZryYQnej/XrYdhzcSp+Y5xPEAu9u9xv3dD
	k8NuaWtqJibvlnjo81ASWzUnoxWZERl3rDcv/sjYdFVMbzgkQzTVtX/M+F1y4cuX/c624Xy50zm
	f123NoQ4AX0RmVTd2zRoQQOBXA+GKhTe+7QTHlisK0VB8mwvizNBvqiMfC5xNocfZxbMyFrfbeU
	L+g+pvT1Eyx8XnIizV8w7+DHUM7QCgcMbrbFBFuwoaSiEVj/KH2yqMuy3nlX6sKTkeUn/atf99d
	7fRGyG39
X-Google-Smtp-Source: AGHT+IFrC37lmV4D4sqrnsKSiBDv9K0zw+8/J7JPrJ63TXtcdq7rT3OA0gPsPVkM4z4pyeqsyznpxA==
X-Received: by 2002:a05:6214:2622:b0:6d8:9124:8795 with SMTP id 6a1803df08f44-6d8e707ddc1mr5927376d6.1.1733432600949;
        Thu, 05 Dec 2024 13:03:20 -0800 (PST)
Received: from godzilla (107-179-213-3.cpe.teksavvy.com. [107.179.213.3])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6d8da6968b1sm10351686d6.39.2024.12.05.13.03.19
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 13:03:19 -0800 (PST)
Date: Thu, 5 Dec 2024 16:03:19 -0500 (EST)
From: Scott Murray <scott.murray@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: scarthgap/rust mixin layer available
Message-ID: <3b25f667-bdb0-5e04-0639-2b277951b8f7@konsulko.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Dec 2024 21:03:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64408

I have just pushed my initial release of the scarthgap/rust mixin
layer branch to the meta-lts-mixins repository.  Like the kirkstone/rust
mixin, its aim is to backport the current version of Rust from oe-core
master branch (currently 1.80.1) for the LTS release.  See README.md in
the layer for more information on maintenance policy.

Note that unlike kirkstone/rust, I have been attempting to ensure the
selftest works, and have mostly gotten there. Since an existing selftest
cannot be overlaid AFAICT, the backported selftest needs to be run as
"rust_mixin".  At the moment I have disabled the one alignment test that
is failing, and I will investigate further as time permits (see the HEAD
commit for more details).  If someone wants to assist on this front, it
would be appreciated.

Cheers,

Scott

