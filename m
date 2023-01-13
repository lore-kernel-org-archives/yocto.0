Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CD5C3DA78
	for <webhook@archiver.kernel.org>; Fri, 13 Jan 2023 23:15:28 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web11.104332.1673651723132930086
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Jan 2023 15:15:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=AvuNBBEA;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so19762184wmb.2
        for <yocto@lists.yoctoproject.org>; Fri, 13 Jan 2023 15:15:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UTm3bVsf7UgzvK8+FnvRSkd1wWcGLlnDFGKZFf8qjFs=;
        b=AvuNBBEAHxDlkeFyskVmA79b5zoJ3IW+rVXOVGhUyJjy/8aVtd8VkBPoJG+NsSWzIk
         sGPk6jWpKG+lkTFYbaR+ImgvORpZjh3p2QaxQsdWRIzatVbf4ki3KksyGO1I5JKy9j2U
         vlVC+KRKMgb0YVe1puMn1I7pEvcnLzrjMWO20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UTm3bVsf7UgzvK8+FnvRSkd1wWcGLlnDFGKZFf8qjFs=;
        b=hUlLlRRgIHkninKZdTJgk/0hK/syuFT0Mgb45qm6Z9LBwWlx40anF1+a/2WWyoyWHS
         s0jqt5whJptfU4un8u5FUVKNN2XbLD8mFNNx07XZ0y2q+6uc8PVhFIxCPalM30eByq4t
         DJO1y3F1C5mvOEW+pxNIP4xviMSig29BgymOBb12pxIuu3Jpi8IVPm2X11ykiVqM7FVf
         aUmmx82a3CR9rHLyeBbR5/An65bmydlpjsk5OMHWcgpehq9SYPnzOOR42iXns1Qqvlxi
         q8pQ6zuQOQQJSRwbOJbrvcxXlLG74H9LSMkUtwuXPJW0mKIGTUnTCfJfSd5KGyttjAFj
         i7JQ==
X-Gm-Message-State: AFqh2kqD9tVmOKk/AH9OBQfs85gCHe8vSS+BHOdu7Gby9lR8dSeW3WfD
	LC7dw+ziC4r9B7nzWTWLsr0hAw==
X-Google-Smtp-Source: AMrXdXvdgn/kDA848hQKwENYdIH64DkzzkdbvPSyJQDTTr3lAEvo3Gt2PLhPhHpoK4HPbFyWOx1KxQ==
X-Received: by 2002:a05:600c:34d4:b0:3cf:a39f:eb2a with SMTP id d20-20020a05600c34d400b003cfa39feb2amr60070058wmq.11.1673651721522;
        Fri, 13 Jan 2023 15:15:21 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:9575:dc1:804e:bc61? ([2001:8b0:aba:5f3c:9575:dc1:804e:bc61])
        by smtp.gmail.com with ESMTPSA id bi22-20020a05600c3d9600b003d208eb17ecsm25897451wmb.26.2023.01.13.15.15.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 15:15:20 -0800 (PST)
Message-ID: <756057d922292976182a7e1c0474cc8f33d075b6.camel@linuxfoundation.org>
Subject: Re: [yocto] [autobuilder][PATCH 1/2] scripts/send-qa-email : clone
 older history to allow comparing against older releases
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alexis.lothore@bootlin.com, yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com
Date: Fri, 13 Jan 2023 23:15:18 +0000
In-Reply-To: <1739EF72D910A436.25137@lists.yoctoproject.org>
References: <20230113150646.44144-1-alexis.lothore@bootlin.com>
	 <20230113150646.44144-2-alexis.lothore@bootlin.com>
	 <1739EF72D910A436.25137@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Jan 2023 23:15:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58984

On Fri, 2023-01-13 at 17:46 +0000, Richard Purdie via
lists.yoctoproject.org wrote:
> On Fri, 2023-01-13 at 16:06 +0100, Alexis Lothor=C3=A9 via
> lists.yoctoproject.org wrote:
> > In order to generate relevant regression reports, we need to use result=
tool
> > against taggued releases, which can be way older than the last five pre=
vious
> > commits
> >=20
> > Signed-off-by: Alexis Lothor=C3=A9 <alexis.lothore@bootlin.com>
> > ---
> >  scripts/send-qa-email | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/scripts/send-qa-email b/scripts/send-qa-email
> > index d2f63dc..c2c5a4b 100755
> > --- a/scripts/send-qa-email
> > +++ b/scripts/send-qa-email
> > @@ -78,10 +78,10 @@ if 'poky' in repos and os.path.exists(resulttool) a=
nd args.results_dir:
> >          elif basebranch:
> >              cloneopts =3D ["--branch", basebranch]
> >          try:
> > -            subprocess.check_call(["git", "clone", "git@push.yoctoproj=
ect.org:yocto-testresults", tempdir, "--depth", "5"] + cloneopts)
> > +            subprocess.check_call(["git", "clone", "git@push.yoctoproj=
ect.org:yocto-testresults", tempdir] + cloneopts)
> >          except subprocess.CalledProcessError:
> >              print("No comparision branch found, falling back to master=
")
> > -            subprocess.check_call(["git", "clone", "git@push.yoctoproj=
ect.org:yocto-testresults", tempdir, "--depth", "5"])
> > +            subprocess.check_call(["git", "clone", "git@push.yoctoproj=
ect.org:yocto-testresults", tempdir])
> > =20
> >          # If the base comparision branch isn't present regression comp=
arision won't work
> >          # at least until we can tell the tool to ignore internal branc=
h information
>=20
> That is a somewhat "easy" option but it might not be practical.
>=20
> The yocto-testresults repo is large. I tried a clone here and it is
> taking rather a while, it starts ok but then starts taking a long time
> with a lot of data transfer (over a GB so far) :(.
>=20
> Can we check the tags with something like ls-remote and then only fetch
> what we need to compare against?

For reference the clone took 49 minutes and 12.45GiB so we will need to
find a different approach.

Cheers,

Richard

