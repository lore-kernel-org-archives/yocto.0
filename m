Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C40AD149C5
	for <webhook@archiver.kernel.org>; Fri, 25 Oct 2024 16:24:39 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web11.16059.1729873469336947126
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Oct 2024 09:24:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PhL0baXq;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2fb470a8b27so30327981fa.1
        for <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 09:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729873467; x=1730478267; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yOAkwz4cdbkS5y06bZnn7IndYJ+FCYIo2SZvD+VbEQg=;
        b=PhL0baXqHdr/yo03L4h5QP6Oeb85KeaonpXbTxtkO290aHqJn/4HjHArFFCdhS18Yf
         Z0sbyqG2Q+ioBtzT/wpCm3LoxF7uqzHVNI4LwP1hcfMIwv3lGjHP7bQGQuN61xmxJgz+
         ORompabamgb97e8BtWk8LEAEcVavFf7bXduyAW42EO94fuUe9JVNByQK+o4illxbM7jq
         OLN5w7CkVGftMiiWfkJEYlLn87dpLZK5vUxRYQyDzIarjPmb4aGcmFVtRmC7esR98CXQ
         V4533bD4x0Af21YJGHBTuT8Tfs8mr8wtmWP+T3tvT8yopq1BSffdKMqZzKYypxZGwhZO
         ASxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729873467; x=1730478267;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yOAkwz4cdbkS5y06bZnn7IndYJ+FCYIo2SZvD+VbEQg=;
        b=LB/nDGY40bBlXogMRI6vmySnCKIr8rMe+D9BNvS5KYbb8uO9GCMKw1Ezx+4ni9FFov
         K+/IFgwXDNbVlff7tkOJvhVfvQNAsINNiaFnBg+4vT2tSyyN1WdmO29DNxdqT5siIY/y
         TcNTz88I1H35+WjP8lVXETfiuvSs1Al67F8fo/FN5Umt2KTkhSTD42TikDPQnkSKWBc3
         hES88ZcPtlji+hoEYrM7Epk6bEfBzUE7COCsj7jfyEonIJySxtNdxJ3MCaZOs6m2bMLd
         QFStkf8EghrzEKhvc/UfPWskGv/i0oKjJ9viROrv0S3CcYiWCveU/CN9gNfQUHhR7cdx
         ROeA==
X-Gm-Message-State: AOJu0YxqsfIDrR+9L2dOh0g1fyX+WTl68AjCoOc+sgMkA9NH5ZGjKFf/
	miWWSecOmhwWta4Gkrrlzo5t5y5/5nTVuSHanhrfdg3eBz9stCpfv05mTUDjjrcrz0ebKp95ud7
	p4Id8wcRvJEULXCRPA4NbS/iojoH3xA==
X-Google-Smtp-Source: AGHT+IFVrmwdr57B6MA7CoZ25nI/NWAi5T/0MfhHl0icaX03+u9KFCFrSzmgZym01l2iTbLwYDmUyfuSd5PdUQW/kFA=
X-Received: by 2002:a2e:b889:0:b0:2fb:4b0d:9070 with SMTP id
 38308e7fff4ca-2fcbd92725bmr350031fa.10.1729873467100; Fri, 25 Oct 2024
 09:24:27 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj-dV0yju36AhSXKpKaHRf0yXfZ1mikvuC47P-hb5jtgFw@mail.gmail.com>
 <7175.1729866771934814016@lists.yoctoproject.org>
In-Reply-To: <7175.1729866771934814016@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 25 Oct 2024 18:24:16 +0200
Message-ID: <CANNYZj_zfX4ZvAHWW9eKq4XZy97tN7sM+Tyb4EYT4Wmh3G8Dyw@mail.gmail.com>
Subject: Re: [yocto] How to add postinst and prerm scripts to a recipe?
To: hchanuy@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 16:24:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64132

On Fri, 25 Oct 2024 at 16:32, Uy Ha via Lists.Yoctoproject.Org
<hchanuy=gmail.com@lists.yoctoproject.org> wrote:
>
> I'm just not really sure what `pkg_prerm` does. Does it create a script that will be run when the package is removed? or does it run entirely during bitbake build step?

It creates a 'scriptlet' embedded into rpm package (for the sake of
example). rpm will write the scriptlet into the target package
database when you install the package, and take the 'scriptlet' from
that database whenever the package is removed, and then give it to
shell interpreter. Then you can put the actual script in that
scriptlet.

I'd suggest you run experiments with for example poky and toy recipes
and sample images that have package management, it's not difficult to
do.

Alex

