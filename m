Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87D54C7618E
	for <webhook@archiver.kernel.org>; Mon, 24 Apr 2023 08:05:20 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.web11.45438.1682323510297085115
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Apr 2023 01:05:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=f2EFWD13;
 spf=pass (domain: gmail.com, ip: 209.85.208.54, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-504eb1155d3so30569318a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 24 Apr 2023 01:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682323508; x=1684915508;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pzmpIR00VwsG5xZwR2HiiuCAUvJeae4dfrwEdsjopk0=;
        b=f2EFWD13vN0fpOpw9Xquzhbwi0+81ncwhD8bZfGlPcdDarAyZuyxwam6Ktu+avaQbq
         bbURdli8kyr3xGf4VIzBwk2Z3ugkvYhAtWjGioKLYP4BsrS/n34pfRUSkSlYhdNLJbwO
         N+tER6IsY0htUZ2+QCDATYmfs6uvrvdFQL/SQGkf9XNrOe+gSihQRecJhBA+ILv4l8oh
         qmGmd7e/DL8I8QvEe9ZR8CZ43zoPblfy2JS6x5GEyFcl9Qab3jR4q4pZkyW3NzGUWIGn
         no2H1/2gag5/1uZjIfoRV0n8PpZz/JI8kGHmvYtx7Bh0errdG8h1cqRLeQHmYzE+MaW8
         tmqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682323508; x=1684915508;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pzmpIR00VwsG5xZwR2HiiuCAUvJeae4dfrwEdsjopk0=;
        b=QPny9W9likvPupbNdcl3rZGO1qLD5WwrkboVjsa3HTGsNwMP2HnqfJdLdIKRZca5lA
         NjxK3RhNWLWDYU5+ZOZGptT/ZHKxAuRds2aNMXJGvFfDHutXB94XCRUwNbrKw+YtgZ4n
         oKck2LDsMQuJsylKEfs1Xt0m8YFzXUQd0N2s+wY/PARKROq+hve1xmCEWf+df4rfJcdP
         Hv+up5U9+oXNWtE8DPVCreq0kagp8rHrjFvojTnimlifYFsH9RYyljEksBg35acOMWp5
         nldOwDSFIc1ktLYQsNs/sdk4t73kPTzNYRcLlwSH1b3Rq3hBvAGAVfhbDKoKDlcTkcpG
         yOmQ==
X-Gm-Message-State: AAQBX9f5KMvUl6Qd4+bB5KiOMHoL14hYWEnAqHw6+j6pQ1W8ilrWa18V
	MTkAaOypgIpQ3npbff1Wc07uXqzIxYB9QaazSaKx3+tB
X-Google-Smtp-Source: AKy350ZTJWvyfrB/ReBiKuk1yXxjfYEIAHqkFe24QpAmDuUzlGpZciz15HqfDZwagHgoorO5/Gbk2ltCVdX6oXPCaR4=
X-Received: by 2002:a17:906:7e42:b0:94a:8771:fb60 with SMTP id
 z2-20020a1709067e4200b0094a8771fb60mr8213207ejr.37.1682323508032; Mon, 24 Apr
 2023 01:05:08 -0700 (PDT)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Mon, 24 Apr 2023 13:34:56 +0530
Message-ID: <CAPJWBnjcY9uCQ3_mShv6w0bzpAYOcsJc9pG9jkfL5E+cVn282A@mail.gmail.com>
Subject: Integrating npm packages in yocto build
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000017faae05fa107730"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Apr 2023 08:05:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59765

--00000000000017faae05fa107730
Content-Type: text/plain; charset="UTF-8"

Hi guys,
If I want to add a nodejs application, how can I add  its necessary npm
packages. Do I have to create a folder containing all the packages source
files and install or build them with the application.
I have gone through the documentation and read about devtool but
didn't understand much about it.
It would be better if you can share some real time examples you've worked
on.
If you want to share your insights feel free to connect with me.

Thanks and Regards,
Hassan

--00000000000017faae05fa107730
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<br><div>If I want to add a nodejs application, ho=
w can I add=C2=A0 its necessary npm packages. Do I have to create a folder =
containing all the packages source files and install or build them with the=
 application.=C2=A0</div><div>I have gone through the documentation and rea=
d about devtool but didn&#39;t=C2=A0understand much about it.</div><div>It =
would be better if you can share some real time examples you&#39;ve worked =
on.</div><div>If you want to share your insights feel free to connect with =
me.</div><div><br></div><div>Thanks and Regards,</div><div>Hassan</div></di=
v>

--00000000000017faae05fa107730--

