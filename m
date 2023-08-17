Return-Path: <mattwood2000@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D736BC3063E
	for <webhook@archiver.kernel.org>; Thu, 17 Aug 2023 15:12:49 +0000 (UTC)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
 by mx.groups.io with SMTP id smtpd.web10.190277.1692285167631062726
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Aug 2023 08:12:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=NqaaJfJW;
 spf=pass (domain: gmail.com, ip: 209.85.219.176, mailfrom: mattwood2000@gmail.com)
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-d67305c80deso1481574276.1
        for <yocto@lists.yoctoproject.org>; Thu, 17 Aug 2023 08:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692285167; x=1692889967;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=U0oieX+34mwAGo8mpJ/42TBJqHyGwa5JgLgV23I44Fc=;
        b=NqaaJfJWDNoQJymEEpzSNkg9boquWFCFWe0kmrOwnFXWGriNlfBoUzCGbjlGL/WNgF
         Qsh/7PEC+rkwCACfwkCB8kE25O9yvyThXox/EBZrBXlzquD6najzCL/sk6JM7xw391ad
         bAg6c0MeyAyhE9BYjVKpfts1OulrC/BK9JUebeirjdzIOj4/NzNPE1vxiKdEsQqOL8NF
         2XNq4HbdfFh8VUi/e/9I1RKF3kbQGJe2auIgBDWVFGrh2UIe9a9FbRS2zEapPnGqFLWw
         haO21Kh5CpX4I2izGkwPhxFHjcw7aAimLIJn1Wq1OoPLw54zHMamhOS1HfY9wk908pZI
         Vf/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692285167; x=1692889967;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U0oieX+34mwAGo8mpJ/42TBJqHyGwa5JgLgV23I44Fc=;
        b=QZic0Xf9Dazj8rMXFNjMiMxszmQKVWpWtJRRGOGWLGN7/gKpcC/wY8gdoOczvSwTBj
         SxUwWKTLG9/uZDb0kzqo8RDKPl9lnLITR8L9RGv4unHWs1flkatPElJf3/mcx6TyuSfW
         Vu/YigcPqBrMUAMeuadXFeQI2Qp22URIZtWseqIqDInSS0oakrKRykwVfw9P6sTKRooc
         Yz0DlOIvYBL4EaCMo9/X2CxVvLa+LpreHEGy0gdyTHL4w+ohKeUmOlj9iWAR8NisGH9A
         bUqqNveGG3YjKF+EezQTGekD0JxfozOQsIwfjBnu02Ng52RabiJ4szxGfurAbmRDHBqu
         KMjQ==
X-Gm-Message-State: AOJu0Yx5rUntucspoQ5EoevpDbi/NCKfVICcs94vktxDejI04l3j6ycl
	Nvci0SpDSfBfr3YkuDGP1+AK07cEVJt7ER3GZnISHyhf
X-Google-Smtp-Source: AGHT+IFwlSD+tqZYBbsQv5VxGuFzYNbEfefVP2xzoN74eHG9Gf9Rw5rg8LSsM0ToASCN2Zgc+8LKqvEO6ttguxrcDBI=
X-Received: by 2002:a25:a2c1:0:b0:d09:22c0:138d with SMTP id
 c1-20020a25a2c1000000b00d0922c0138dmr3744610ybn.7.1692285166611; Thu, 17 Aug
 2023 08:12:46 -0700 (PDT)
MIME-Version: 1.0
From: mattwood2000@gmail.com
Date: Thu, 17 Aug 2023 11:12:35 -0400
Message-ID: <CADjezmZdfUDB=vbRnFpa0gcLhZFFAWDdVAdE-4wo7nUmHpyP1g@mail.gmail.com>
Subject: image checksum
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000036f2d706031fd8f6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Aug 2023 15:12:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60820

--00000000000036f2d706031fd8f6
Content-Type: text/plain; charset="UTF-8"

Hi,

is there a way to have yocto checksum the final image as a post-build
task?  The CONVERSION_CMD:sha256sum in the testdata.json file implies this
is possible, but I'm not sure how to invoke it as a task.

Thanks, Matt.

--00000000000036f2d706031fd8f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>is there a way to have y=
octo checksum the final image as a post-build task?=C2=A0 The CONVERSION_CM=
D:sha256sum in the testdata.json file implies this is possible, but I&#39;m=
 not sure how to invoke it as a task.</div><div><br></div><div>Thanks, Matt=
.<br></div><div><br></div><div><br></div></div>

--00000000000036f2d706031fd8f6--

