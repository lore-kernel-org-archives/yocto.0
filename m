Return-Path: <vvavrychuk@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21B48C3DA6E
	for <webhook@archiver.kernel.org>; Wed,  3 Jan 2024 03:41:52 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web10.9380.1704253310303222358
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Jan 2024 19:41:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bzvBGw0W;
 spf=pass (domain: gmail.com, ip: 209.85.208.180, mailfrom: vvavrychuk@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2cce6c719caso49770351fa.2
        for <yocto@lists.yoctoproject.org>; Tue, 02 Jan 2024 19:41:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704253308; x=1704858108; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=y09KBCn11QuHTIMnX9AmcIsf271E4vGXbXXdMMvB5ok=;
        b=bzvBGw0WAk/ma7Ii5pvsBAgpArO5REZwZ0rWn8IYAV7CHO7/m7aoxpBbsO3G/TSyZW
         HrVpD0XFENSuaWHuZyE2sae3P8A5jXXeT8+ZO2yuK8x8sFa9M6uclk2mjvlUMgUtDzm5
         zRhq9/wBabDehz7JifqHxrj/wfkjkHwXNyOK4aeCQYu2CniFiCn6L6rAOzTGwes3SZs+
         /Av5V5NazQSRYMJm0wq3m+46qaY7afrUt0wNzuy4360aRIofT3FBggfoO1TYsfOrlYCv
         KHYbJNPpMjlyXj+aiTpqITX8gRAn9m6t0MdjoTmpMAoaOEJVYF2UusRRYhHyYWFCW0K5
         2aSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704253308; x=1704858108;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y09KBCn11QuHTIMnX9AmcIsf271E4vGXbXXdMMvB5ok=;
        b=qSZcmFH9NXS7ECI2OnjFo9qO5u6BY/3rq6O30FG24zYMqznJ1Mdvkwzk7PdF7HZpck
         RVHogF7ZoawvZ5dIoP5fYzS1k14DavlxCDAgCNuTmskVg3ghaljNrihcDMvLubT563lg
         Y/TwM3lfUZQx6CYI6L2pESDJHYdl1j+2wnceNvXFMphXQfwZvpoXcfUQNXXKKeIXPUJz
         y7bcDXr78XRyAotRwvH+5itpHdbOtKez2WPy7Fwe8T0zlDNpbSZCnjPZff4b85zuuopl
         2CVHUiaMy1gFMJsLldWpIcG8ySMB7BxjLuT1hufTYpJ35pWud9KB3J7u3OuDV4faDu47
         1Gog==
X-Gm-Message-State: AOJu0YwrFeMI9IpYh2zTi5YwMdmWZ6NSNNhw+8LjV7QQe6UU+iM3W38D
	8WeuhmiC7cyHKmVlxnPqoy/ClaxkA35r2+AMw9uIaOXY30ZXiQ==
X-Google-Smtp-Source: AGHT+IEcRrX1Do1LHInPMqf841d0wCD02PJlS0FnSyP9ToIp2CkP1AzUI9uUsNtRDm/+xXxKagdFo7IcfG/5zIO8WTU=
X-Received: by 2002:a2e:a993:0:b0:2cc:dbf3:d53d with SMTP id
 x19-20020a2ea993000000b002ccdbf3d53dmr5088070ljq.13.1704253307737; Tue, 02
 Jan 2024 19:41:47 -0800 (PST)
MIME-Version: 1.0
From: Vasyl Vavrychuk <vvavrychuk@gmail.com>
Date: Wed, 3 Jan 2024 05:41:36 +0200
Message-ID: <CAGj4m+64odu_xCj_s+=NSFbrhLCek7xJk_5FPQaA65Fga0-v8A@mail.gmail.com>
Subject: comment in base_eventhandler regarding virtual providers is confusing
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Jan 2024 03:41:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62075

Comment in `base_eventhandler` for `bb.event.RecipeParsed` event says:

> If we have multiple providers of virtual/X and a PREFERRED_PROVIDER_virtual/X is set *skip parsing* for all the other providers which will mean they get uninstalled from the sysroot since they're now "unreachable".

Is the statement that we _skip parsing_ of unselected virtual
providers correct given that it is done in _bb.event.RecipeParsed_
event handler?

Thanks,
Vasyl

