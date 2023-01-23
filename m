Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 732D8C38142
	for <webhook@archiver.kernel.org>; Mon, 23 Jan 2023 16:04:50 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web10.45962.1674489884070233504
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Jan 2023 08:04:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Ts11TMsd;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id r2so11264138wrv.7
        for <yocto@lists.yoctoproject.org>; Mon, 23 Jan 2023 08:04:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kz7e3nu2xs7nrsase61w+rGwE3A1V5vLhdcQhCIgrL4=;
        b=Ts11TMsd6ypN7mg8+uD74YsZhgW4/LwOnnY8urf/GnZEw8i1twa2a1zWVUMEgnWYbh
         yULKVhaGPHsVTuomJPQ7JMoyihGNKYXCjB98/9rTTv7fPmN/dvdOwxsoqacTS50CbJsr
         icrPqkxTglNuH8XyFzx4K7+ckm1Pt8t8JLZb8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kz7e3nu2xs7nrsase61w+rGwE3A1V5vLhdcQhCIgrL4=;
        b=juT8/hNjRIm/KSjoY6KZo2DB+1d/T4/OEX7hKKprvPX5IapctjEFCsqWujGuOh6x0O
         icPDPIBp0aC8vDqBRIMNhoTIHjbTtjLrIf5Ena3OlMR9ytfL8c8LhIT725t7y6Zaega1
         TMdtxdnSZsK8rVNuTQj6FjSIm5fh/NYZKK878fkK7w7zuZTfqfDwOE3ziqTiiDO2Pzkg
         8YGQPd7yjeX8u6ERmWxEm4ui/C4xLDsAqlaHyKRciqa2NY3ygFpBTSqUt5SGJKHDE+yZ
         hbFOLIBIBHVrdL9f3L9GOFMs5cIB/uBy+7XaQ+95L+9M4RSW/vDjQSHwLBknIsfpvTUT
         nlkA==
X-Gm-Message-State: AFqh2kqXOlHrsRFlEU4bEKkTj+eqPjHZ28bHjTUEVZ8vW6PbPgks0+So
	uufa3ZcAcam4PcJwy0fAuO41ZA==
X-Google-Smtp-Source: AMrXdXutCXIz5L6WnZm9CiRHMwubTV+mIdVANBsFN0WidGWaceJtIoxu1adXgvqVzkhdmnuyIKREyg==
X-Received: by 2002:a05:6000:1e04:b0:2bd:e8c2:c9bc with SMTP id bj4-20020a0560001e0400b002bde8c2c9bcmr20704181wrb.42.1674489882502;
        Mon, 23 Jan 2023 08:04:42 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:9195:b014:a064:8114? ([2001:8b0:aba:5f3c:9195:b014:a064:8114])
        by smtp.gmail.com with ESMTPSA id co22-20020a0560000a1600b002a01e64f7a1sm19176273wrb.88.2023.01.23.08.04.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 08:04:42 -0800 (PST)
Message-ID: <ee04558ef4b07cc8a3ba8f3e4b05ed68315d679c.camel@linuxfoundation.org>
Subject: Re: [yocto] [autobuilder][PATCH v2 1/1] builders: update
 send-qa-email name
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alexis.lothore@bootlin.com, yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com, thomas.petazzoni@bootlin.com
Date: Mon, 23 Jan 2023 16:04:41 +0000
In-Reply-To: <173CF4A5A7B83280.5916@lists.yoctoproject.org>
References: <20230123123343.37841-1-alexis.lothore@bootlin.com>
	 <20230123123343.37841-2-alexis.lothore@bootlin.com>
	 <173CF4A5A7B83280.5916@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Jan 2023 16:04:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59039

On Mon, 2023-01-23 at 13:55 +0000, Richard Purdie via
lists.yoctoproject.org wrote:
> On Mon, 2023-01-23 at 13:33 +0100, Alexis Lothor=C3=A9 via
> lists.yoctoproject.org wrote:
> > Signed-off-by: Alexis Lothor=C3=A9 <alexis.lothore@bootlin.com>
> > ---
> >  builders.py | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/builders.py b/builders.py
> > index d942346..b052f71 100644
> > --- a/builders.py
> > +++ b/builders.py
> > @@ -322,7 +322,7 @@ def create_parent_builder_factory(buildername, wait=
name):
> > =20
> >      factory.addStep(steps.ShellCommand(
> >          command=3D[
> > -            util.Interpolate("%(prop:builddir)s/yocto-autobuilder-help=
er/scripts/send-qa-email"),
> > +            util.Interpolate("%(prop:builddir)s/yocto-autobuilder-help=
er/scripts/send_qa_email.py"),
> >              util.Property("send_email"),
> >              util.Interpolate("%(prop:builddir)s/layerinfo.json"),
> >              util.Interpolate("%(prop:sharedrepolocation)s"),
>=20
> This gets a little tricky. Changes to autobuilder-helper are easy but
> if we change autobuilder2, it has to match changes on all active
> autobuilder-helper branches.

Thinking about this a little, we can probably push symlinks into the
older release branches, at least until we consider backporting some
changes.

Cheers,

Richard

