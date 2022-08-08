Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41B2DC00140
	for <webhook@archiver.kernel.org>; Mon,  8 Aug 2022 06:18:26 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web10.22322.1659939500192824423
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Aug 2022 23:18:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kp243Im2;
 spf=pass (domain: gmail.com, ip: 209.85.167.52,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id u1so11226571lfq.4
        for <yocto@lists.yoctoproject.org>;
 Sun, 07 Aug 2022 23:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Oo7EGpROXxGtBLm02s9nQIb/xQnV7Lp20BGCYEXG8Yo=;
        b=kp243Im2OiM53jS/kAtFtSTuEqAczbkf6FKEL44SF8nR+El52s9XmAP/pXIRSmgcrM
         ukxYE32GCztHBsRB0X7VqZ56CcsqeZvuZggBADbSXP8aUfM0iIN0Llrf+fAfOjuaIjzx
         DPOBb5JhtdXfYj4KSnPvvW1K3RnnWMo6zHt8detQc/mGUJuWeDc+GmbGS3PzkV2v5hSA
         bceFNW1FnWtnu0RHuOUup95gpOgT2NWo0pvzHkXLXhN5S10zeu0DqNEhfWHs09D6qKmJ
         7kb132BsqaoBIYbXpeS7/wQCutvsBtaAh2/KNBGPDDBXC2x8qxqsHQ+1lcWjqJK941wp
         G44g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Oo7EGpROXxGtBLm02s9nQIb/xQnV7Lp20BGCYEXG8Yo=;
        b=MNGrA7/ruISTCrJfBzosbsuJnvGV7vcQRk+Vh4okehg1D3mXAh0DKhmCUR6rlkYCGl
         k5j8APXL4vhosLa03zFRbjNjZVJnBSE2UNnv8VFqjUVU3751Ldd3oOPGlCozqlzxCLyr
         FIPbwmVH2l4k/PmFBToo2N8avGmdKAwDcbv25nt39qaf48A/++goOSADZKVCQUAhDsml
         eK4sZY1nK3Dtey9UjQFoCNvUU9LGzCg6hZ0wnNMCrFyqJCaM82Fod9QrjF5Gv6JNhYSe
         nr9zAAYWmDkrm2o4FOT1VOATpqUrDRNiFzmUoRv3qkGH2Pxw9Q6kUA0uVNHgLXf/40VF
         tF/w==
X-Gm-Message-State: ACgBeo2tCyvn9JSwVUj3M4CrXswjClQJzasUh6ZlnteTdgqg6tbO7kLl
	yov8i3y3LWAblm6tVgp6E2IM2f597j+o+Vo1Zqk=
X-Google-Smtp-Source: 
 AA6agR7x+xNhaaMYWyY3pkC3xGtbf5CgHXcbkCqVn7nPha5y75kAZretnxEkKKYU8WQQAbs52El5jMvd3ouKTHhg77w=
X-Received: by 2002:a05:6512:230a:b0:48c:2e06:6c74 with SMTP id
 o10-20020a056512230a00b0048c2e066c74mr2373492lfu.358.1659939498227; Sun, 07
 Aug 2022 23:18:18 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAOC70tue67GwmrdrJ1JduuscAyuDmctNmYaYr_Q-D=hC0A7Faw@mail.gmail.com>
In-Reply-To: 
 <CAOC70tue67GwmrdrJ1JduuscAyuDmctNmYaYr_Q-D=hC0A7Faw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 8 Aug 2022 08:18:06 +0200
Message-ID: 
 <CANNYZj-pcgLx_opKYsLuXO1vPZDRRaLF10L4FWgj22xobMOkZA@mail.gmail.com>
Subject: Re: [yocto] Custom QA Checks
To: Paul Wicks <pwicks86@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Aug 2022 06:18:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57793

I don't have a ready example, but you can start by reading
meta/classes/insane.class - I think all of the things defined in it
are extensible from a different class.

Alex

On Sun, 7 Aug 2022 at 21:21, Paul Wicks <pwicks86@gmail.com> wrote:
>
> Is it possible to create additional QA checks such that they apply to all recipes automatically? Or even just to all recipes in a given layer?
>
> -Paul Wicks
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57791): https://lists.yoctoproject.org/g/yocto/message/57791
> Mute This Topic: https://lists.yoctoproject.org/mt/92877742/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

