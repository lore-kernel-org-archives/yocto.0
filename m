Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51D74D11183
	for <webhook@archiver.kernel.org>; Wed, 26 Nov 2025 16:14:17 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.16898.1764173651593448358
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Nov 2025 08:14:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jqpVdGWF;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-88056cab4eeso50802126d6.2
        for <yocto@lists.yoctoproject.org>; Wed, 26 Nov 2025 08:14:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764173650; x=1764778450; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DkTDRGdIVMCwt7gOALdgJa8uLpc8FWwdZhB4SA6SQ6U=;
        b=jqpVdGWFBkGXPnP6ONsDtvMaT5q/0qRpD1iWF6aZhUFYsd1KnDd4YajpTLbs8l+0EQ
         wDBfEqhafQSwXO3gpPs9RtqtHX5irR0eYQriajNnwXUrl+CaXfp0TlVk/3dLqnRLFTW+
         JC1RtUrZ1OV9LckO4c4mXsYqd6fWRNxTXFjZmzHQAqx5sI3iDuqQ7tcGrCTIqOU5WdxC
         r7kKtMMpdbNxy/88Atys01vQWoPzBWWC/YqN4Y9UeXPzruQlIPRAd5T0/0gDbqjrWxHc
         4wSnetn0S6lR6jLnj+S+Hy+6Jefr40z01/jsdtSbWYSSv9hhPkZtLgSt79HJf7pl6MQs
         DRvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764173650; x=1764778450;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DkTDRGdIVMCwt7gOALdgJa8uLpc8FWwdZhB4SA6SQ6U=;
        b=o8JLQZMCWBD7r95tIOhtV5MBfm/jXdVs4j5TrpAP3/N/JK6wdpl6OyI+AfYXN+I9RY
         IiObx5l1dJpMHsOvE+Ccgo+fsdtXjKlzHlTEw2TWsaDbfoynDCOELO8a8SRkVzUg5Dwz
         HYqhJKq5wJxX5i7i6FCDpYr3hVz0LaTX0Efw37sdkUuAb5KXnPrjtU2/w16XnWq7C3m0
         fq3RKCLif7UGRFwO1ejum0HlB5BCyUn9IhUH8wcwOjhSArliJiPfJEv/XpzTFEfAUdzr
         /RXED0eAmokVbBjMDv8XHNLhWZY/0BnndqMMWaQ5BtCaMK1ZRpxw2vpUCpFHzT1YrSmg
         oh3g==
X-Gm-Message-State: AOJu0YyxZCQdwsGOhhr5PQXYeQRybr5M03OiQiVS2V/mWFgk05SwlUbW
	2OD8RCWwUayUqEKOaI9ptzyoo1v72xJEZH25Y1qd54lzNsYMu+xpvkQCsnUN2b/DBF4gv6JhEB3
	m6gFuXZEPa0/lFt3P5W/y11CCRrlVDP+Jog==
X-Gm-Gg: ASbGncuYlS79WzzTwWUYe5RvcykUoutsPVtnqVcrK2KXiITMfbuRd7+f8ZkOxuZJF+/
	B387dzxp1q9V+FsBp00bN/8LpE0DophIUWYH6MMFX/yLDL5F/IHKMYgBytt4187m1WynK+voJ0I
	OYCZJyINvYrShCwi81TmyZh2ilCGKgdIVUm/MYUEFyqQZYDU469h/cB5LDJ/g9MeAlFG/c/9mAC
	A1xNCM/FxnBhtTk/9+kPlx6qy7wX/cmKmH/5+Wi3702THETMCSi1UEd5Zqq2LoKoH82BAGlhPZ9
	BjedGJ15yHRk7+oWIoWrV2kwZE9TvUMnzA==
X-Google-Smtp-Source: AGHT+IHBYHrD/DUwAp5zD5bKz8E0DLnjm2VTd7vxXXahgnry+reHLgyeAg2l1DIJOdhvC+Y8gZtevWwItC+YNMsrmfk=
X-Received: by 2002:a05:6214:3d07:b0:70f:5a6d:a253 with SMTP id
 6a1803df08f44-8863aff288bmr110146776d6.49.1764173650507; Wed, 26 Nov 2025
 08:14:10 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb8SJ79GDs5aGpz0MGuNNdKf26Z7nw81yNtAsUr9VNq01A@mail.gmail.com>
 <187B446507D0D6B0.100836@lists.yoctoproject.org>
In-Reply-To: <187B446507D0D6B0.100836@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 26 Nov 2025 17:13:59 +0100
X-Gm-Features: AWmQ_blYWL_7VbxdOBr2YnDAlrD_G3MBd2TlspvR6i_ZQpvZD6nZXneu5fvhELA
Message-ID: <CANNYZj_QRWSTZMne1B0PO8rdo19Ltb=QqQGVmSRk7ZpnaY2MAQ@mail.gmail.com>
Subject: sharing sstate in bitbake-setup
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Alexander Kanavin <alex.kanavin@gmail.com>
Cc: ",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	Joshua Watt <jpewhacker@gmail.com>, Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Nov 2025 16:14:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66068

On Tue, 25 Nov 2025 at 14:54, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>
wrote:
> BB_HASHSERVE_SHARED_DB = "/path/to/common/hashserv.db"
>
> bitbake-setup would put this (and SSTATE_DIR) into site.conf that is
> symlinked into every build.

I quickly hacked bitbake's cooker.py to try this out:

-                dbfile = (self.data.getVar("PERSISTENT_DIR") or
self.data.getVar("CACHE")) + "/hashserv.db"
+                dbfile = "/home/alex" + "/hashserv.db"


And then made two build directories with shared SSTATE_DIR.

TL;DR: everything ran smoothly and as expected.

I ran overlapping builds, added no-ops to gnu-config recipe to 'force'
hash equivalency, and there were no errors or crashes, and sstate was
reused as expected.

So I think we should do it like this, subject to 'shared-sstate'
setting in bitbake-setup, on by default.

Alex

