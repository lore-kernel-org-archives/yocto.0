Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C751C433EF
	for <webhook@archiver.kernel.org>; Tue, 31 May 2022 12:27:27 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web11.48733.1654000042052889294
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 May 2022 05:27:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=GRVcxkEW;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id o9so7954906wmd.0
        for <yocto@lists.yoctoproject.org>;
 Tue, 31 May 2022 05:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=Iho562BfKSUu1PKhUAQBtbxDjY8xZbFbwVHdEEEdVVU=;
        b=GRVcxkEWFQH+mEa6eOdTSgdYakA0vHhhnjXWOYY7naw//QMfMNvca4wyVIsbj0r40q
         Ag6NIHZswxN1B127fw3FR09Fb5t6M4BHjEnYV43gN6oauclOBMD66zeyMbrM9vnIQNTh
         zTx6xAlXYE1vMWENHXI80/JfUK7EmmaUbkRqA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=Iho562BfKSUu1PKhUAQBtbxDjY8xZbFbwVHdEEEdVVU=;
        b=UHzMfEJN4tOrDKuuPr9FUCgXAjutku088MoxGQqc8TdLgJUlARlMOqYfPKVoqFfblb
         FInyg7eq4HExqhqwSdnnmEWKjoN8Y+HJl+6B6V0l+iBz1DRG0zNO3uuHgC4WIej5YZRX
         TZZ6wDNPHVJesGgWe0Ofk3SBAIIemlt+1NTy87uxECKRrXT6cM0LEeAhzt7inN+t40CF
         5RDuRXyhqZ+VU9DvHv7q4SAWiOFdrtxdLJLqT1noYYnPU9wfqVx/Ie6JkZSTCU2pj9cP
         BvGSysB7mZHPTM2ttdUyN/o50oALSO03fiaM6TTS1dBdLyuNs1w4W0iZhsrMkEoVH7GI
         eC4g==
X-Gm-Message-State: AOAM532lJQj5Hb4sbnF+hZLCRBe3m+Cj1782KVTzyMaWs6PbneGfel+U
	YBFXY+lusKdpmwQ/WzI26BUvwA==
X-Google-Smtp-Source: 
 ABdhPJwr1bpFUacAN039jm67xf31ubLaVICpflGzG9Ck/JHKUsLxhYSZAuN0EhyctycVNxhkgQkb7w==
X-Received: by 2002:a05:600c:3d8e:b0:397:455c:c78b with SMTP id
 bi14-20020a05600c3d8e00b00397455cc78bmr23234085wmb.204.1654000040528;
        Tue, 31 May 2022 05:27:20 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:d16:2159:4370:b82e?
 ([2001:8b0:aba:5f3c:d16:2159:4370:b82e])
        by smtp.gmail.com with ESMTPSA id
 o3-20020a5d47c3000000b0020d0cdbf7eesm12218069wrc.111.2022.05.31.05.27.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 05:27:20 -0700 (PDT)
Message-ID: 
 <74a19bf1c3b4b88943a045fe6ba4e5a88d86db8e.camel@linuxfoundation.org>
Subject: Re: [yocto] meta-egl failure: Nothing RPROVIDES polkit
From: richard.purdie@linuxfoundation.org
To: Marius Vlad <marius.vlad@collabora.com>, Scott Murray
	 <scott.murray@konsulko.com>, Joshua Watt <JPEWhacker@gmail.com>
Cc: Tim Orling <ticotimo@gmail.com>, Jan Simon Moeller
 <jsmoeller@linuxfoundation.org>, Luca Ceresoli <luca.ceresoli@bootlin.com>,
  "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Date: Tue, 31 May 2022 13:27:19 +0100
In-Reply-To: <YpGn2ltFe33urvHD@xpredator>
References: <20220527135751.54a29f24@melee>
	 <CADja47NmNz+8es0ymHYxmozSPmMA1TCTFeDg7epCDoXMEgYzbA@mail.gmail.com>
	 <CANx9H-D_w2hupHXMxqYvQ2JYgfEKdvw5A_+OBpJ_9LW81s8efA@mail.gmail.com>
	 <4e629bf9-1cb7-f1b1-4ca7-b2e535aeeea0@spiteful.org>
	 <YpGn2ltFe33urvHD@xpredator>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 May 2022 12:27:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57233

On Sat, 2022-05-28 at 07:40 +0300, Marius Vlad wrote:
> On Fri, May 27, 2022 at 04:25:00PM -0400, Scott Murray wrote:
> > On Fri, 27 May 2022, Tim Orling wrote:
> >=20
> > > On Fri, May 27, 2022 at 9:18 AM Jan Simon Moeller <
> > > jsmoeller@linuxfoundation.org> wrote:
> > >=20
> > > > Hi !
> > > >=20
> > > > Yes, we need to look into this and likely change the location of th=
e
> > > > RDEPENDS.
> > > > Thanks for flagging.
> > > >=20
> > > > polkit needs to be in DISTRO_FEATURES and the recipe needs to have =
a check
> > > for that (and inherit features_check)
> > [snip]
> >=20
> > For an immediate fix I've moved the polkit addition to a bbappend added
> > via BBFILES_DYNAMIC, gated on meta-oe presence.  The current intent is
> > that the meta-agl-core test on the autobuilder only need poky, so letti=
ng
> > this slip in was a thinko on our part.  We may revisit making meta-oe a
> > required dependency when binary packagefeed prototyping starts in AGL.
> > Your comment re features_check is right on, I'll add that when I get a
> > chance over the weekend.  One thing I may bring up on the next dev call
> > is Weston does need polkit in some situations (hence the addition in
> > AGL), so maybe shifting it to oe-core starts to make more sense now...
> Yes, when using the logind launcher, or the seatd launcher with the
> logind back-end, polkit is needed to activate the session.  There's no
> more a direct launcher, weston-launch has been removed and upstream westo=
n=20
> can for some time now use systemd user sessions to starting-up.=20
>=20
> The seatd launcher with daemon or built-in back-end, appears to be doing
> the activation on its own, but I reckon systemd-logind back-end will be
> the de-facto back-end if changing the launcher in weston to seatd, and
> removing systemd-logind launcher (as we're currently working towards
> having just a single launcher).
>=20
> One thing to mention here is that while digging this up I've found a
> patch to systemd-logind [1] which supposedely should allow just logind
> to activate the session as a non-root user, just that either it wasn't
> working or it is no longer present, as I haven't been able to activate
> sessions without polkit installed.
>      =20
> [1] https://github.com/openembedded/openembedded-core/commit/e42dd9cff98f=
2149904e104f08bc3f19ee7b6fc0
>=20

Adding Joshua, I'm hoping he might have some ideas here?

Cheers,

Richard


