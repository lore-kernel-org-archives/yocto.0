Return-Path: <tyrocjl@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72295C77B7A
	for <webhook@archiver.kernel.org>; Tue, 16 May 2023 12:13:42 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.20115.1684239215659839334
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 May 2023 05:13:36 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=OL6d23n9;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: tyrocjl@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ad1ba5dff7so122708721fa.3
        for <yocto@lists.yoctoproject.org>; Tue, 16 May 2023 05:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684239213; x=1686831213;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MhPRRVOBbAXkRMI/f2wRjpgXL7erVK8Qas/leGSVQL4=;
        b=OL6d23n9AGPFZNYBIGnn39O3MGZBWgTI0Fb6thVdI2fuMsQ0kyMNdPfFPxCWTlOSxv
         QYDDptU8Mzn89U5WNqzwL8c/zBo2h3lNv0DF63Bgbr4x/D1svbpWGXJGTGoNYnjS+gI8
         yqxFDId4616DKtUW4MyDZX2pFYGVXz3S2/os6lTjmmlMW0rvAX8pROlKHUiUf2mtEF5Z
         6mXThLuJKECrupT2FwMEQvZ4A/7dX1GwcPsGJss0cFbVYv4x2WD95qJimBvgo9ufJgxm
         DZYdhjtMVBF5ttX5LdWmu7ZIFsojJEwB1WD0uRpMD3Iddk0z21e3abAzVEUOKLu00WCf
         Mcgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684239213; x=1686831213;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MhPRRVOBbAXkRMI/f2wRjpgXL7erVK8Qas/leGSVQL4=;
        b=Od0Ar5eB/OhCMIpy8o4FXuw43CExdmWFczaT7pFEgj1cdnV6Z4ojzUSVXEYQWWsxz/
         uroEQqV6YG9B8T3JRFWQDPiG30ezxBLRllzGnHjo1TePfmlqYAaiTXJQM1pE8BGSf6Z6
         p/pyDpp90v5GcN2uftLjSv2vj9k855SFl4C7b4bk+r5CKJjssVnC6jVw6LkUeFgDjnd4
         UoVGnHRtpdgSBGUkIvFQhngNBAE635XKXmyIzE66itIbEYZuePjGMOWtFz7+w2CrJeK/
         F6TwrVw59egpeH6zF+Snz+oho/IsXQ2WgWiFvRmfnj3hiOEoeguFxxIUOQLWx3QLqZJt
         hNbw==
X-Gm-Message-State: AC+VfDyIsTG/cNBt1Ln6u0H8BBttmSnDmOu+jJ0Q4SCiD2UoBUiGzydb
	y4j12EDg3xIZsQ58b18fdpXjXA+vifwfKfIP/24/LCkxFc92aw==
X-Google-Smtp-Source: ACHHUZ4neguBsVwmvbmWP/WdFzQ1HXaTbzw8OwvXJvOzIsP7fYYhrh3PnWt8So3FBWY+cYV7mawhQpOD54/lVDa9VmM=
X-Received: by 2002:a2e:894c:0:b0:2a8:c333:ebee with SMTP id
 b12-20020a2e894c000000b002a8c333ebeemr9173506ljk.49.1684239213021; Tue, 16
 May 2023 05:13:33 -0700 (PDT)
MIME-Version: 1.0
From: Jiliang Cai <tyrocjl@gmail.com>
Date: Tue, 16 May 2023 20:14:20 +0800
Message-ID: <CANzPQ-BRK-i17cQ0aLXscPdD2+HXmDTQjBi8=6r1yms8rMvWEA@mail.gmail.com>
Subject: [yocto] bb.event.BuildStarted didn't work in a bbappend
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 May 2023 12:13:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60033

I add these lines in a bbappend file:
addhandler cjltest
cjltest[eventmask] = "bb.event.BuildStarted"
python cjltest () {
    bb.warn("enter my event code")
}

But when bitbake this recipe, no warning message appears.

