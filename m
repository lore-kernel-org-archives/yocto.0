Return-Path: <chrisfriedt@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01DF6C352A1
	for <webhook@archiver.kernel.org>; Tue,  6 Dec 2022 22:07:14 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web11.1695.1670364428937736410
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Dec 2022 14:07:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=UmoUSQ1v;
 spf=pass (domain: gmail.com, ip: 209.85.208.42, mailfrom: chrisfriedt@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id d20so22440354edn.0
        for <yocto@lists.yoctoproject.org>; Tue, 06 Dec 2022 14:07:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CHuSD4M9Hrw6uf8nC8/NOOHacxaoFETeOW88uNTAqAQ=;
        b=UmoUSQ1vHKOpj2mqGNqau0Q+y3DK6XlcMSVGeNLN+X/wCFsQKogMgukZHSvj5aHnxy
         IleovncaSR9Jd07bh8q9KVLAeGhIG6FJPCt944ldH8YY0qN3/ggfcQbNDwsKR937olc4
         aAcYsVl5GlkYyP1lcHmtMM6p0JY3mX5j9AEpDXrd38v4ohavqJzY3xIIeWE3/tQnNMl9
         w1/M1IuYJJCaL4bzl/JUtXuA+N/xy8DvgDc+iktjubTMQWiT2bHN6r0Nnp0IB2grjz3u
         sxlkrgXm+i/2Pdrd8reR2MayBOruNqIo2qiopccncyxIert49IR4jYq8S0VwBbigZ4dk
         lFQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CHuSD4M9Hrw6uf8nC8/NOOHacxaoFETeOW88uNTAqAQ=;
        b=WW7aWI+CdNO0su54kxd68yYzrD73ObeYRwxnpNArukm1gsVffH8jISXF8mrHMZWYDf
         E4IJSq3Hch8/BHWiC44ZjhLrMYrZ7t38yAk3Y8dkWrbW4NoSZll6wtNyNtWHxEvbVQbe
         Udm1wSczplSsvSZRequWJxzA1AWqAg+WYmyYPe6ys04yDNF25kbS2Efk+d99/Oe83Kof
         Y8EaxY36V8HXN52UoTh4jPs0IaN2+Gli+GkGHsdqO4nyVuFUq4ITvoWj/dl4NXm73gGd
         T1F2LQnS/PyVUv/eDIwJXZHdBCMecfEIVDKo4lS0ITArl3jsbtIWtJP2NPNPCUig1Hp9
         aDew==
X-Gm-Message-State: ANoB5pnx+iz+AewkFQfU0yGTGoNbWt3ujIDbJ8dDGgTf8vUFYupDfjKn
	lw7xsmxHMuzj0lLDkbjnqeyaT62Ppp/Gbmqb8ddHcK/EZdd8xg==
X-Google-Smtp-Source: AA0mqf59ROQViKFv2TR9/aD3QPiFJkAA8dz+DqAXK+1oNpHxbXW3ae4DPri6accD1vH4OJAfBromGdcnrlrNnEAF2Qs=
X-Received: by 2002:aa7:c0c7:0:b0:46c:8142:3873 with SMTP id
 j7-20020aa7c0c7000000b0046c81423873mr12285163edp.428.1670364426312; Tue, 06
 Dec 2022 14:07:06 -0800 (PST)
MIME-Version: 1.0
References: <CAF4BF-QXr8QVZOF_pPonpJbPN5O5sNjDaL78q1b5qbEcobhBqg@mail.gmail.com>
 <172E4A3E9370D7CD.20831@lists.yoctoproject.org>
In-Reply-To: <172E4A3E9370D7CD.20831@lists.yoctoproject.org>
From: Christopher Friedt <chrisfriedt@gmail.com>
Date: Tue, 6 Dec 2022 17:06:54 -0500
Message-ID: <CAF4BF-R5ingAhi=Xk9tuVCht72E1kGVHTOtdC5YUTVUp_tuGsg@mail.gmail.com>
Subject: Re: [yocto] do_install hangs on native tasks
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Dec 2022 22:07:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58743

In all cases, the problem is traced back to a Makefile, where
something calls $(shell git ... ) to get a git version.

I was able to find out because one shell had executed a script called
scripts/setlocalversion that looked kind of suspicious in terms of
error propagation. In this script, if I manually echoed "1.6.0" and
then exited, do_install would not hang.

Some early discussion suggests that it might be avoidable with 'set -o
pipefail' in the shell, but I haven't investigated further.

C

