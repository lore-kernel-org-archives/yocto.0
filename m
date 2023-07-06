Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0657DEB64D9
	for <webhook@archiver.kernel.org>; Thu,  6 Jul 2023 11:49:50 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web10.20096.1688644183214914776
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jul 2023 04:49:43 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=DGHIB4t3;
 spf=pass (domain: gmail.com, ip: 209.85.208.53, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-51bece5d935so929400a12.1
        for <yocto@lists.yoctoproject.org>; Thu, 06 Jul 2023 04:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688644181; x=1691236181;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=S9unBzF2nBVm5rkb4NL9qMrb1sVCIFgBDFrpGGgEbAE=;
        b=DGHIB4t3F3maUyv5xSWs948Wla1+S2G6hOEQEdsAjEdG267APwiaWs1F3tTiB6ee66
         kppexUj7Lq8Pt9Tw+IkNXchMQPAXzaqRWE4VvEefxoeuFRSye4Gq8W2sI+GSJy6jrQnB
         s+5TCDJJ3jq7YbojeHptePjde3Z8rdOoa/YlZ7iBcjCsVuHV50bmy+0UvV1/f0eVTmOi
         U/Lm3xmGIkeehxbw26PFgjHWCh+vHo02/aRNCfpkB2wMrN4D62ppDt4uc6X0kgrTlj6z
         1dwqsj6BKgH2uxdJiRcQrJloMsufWOpryrT2EEu/no7bdvNQMTqjEpg7VEu+xJRl8Pha
         mzBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688644181; x=1691236181;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S9unBzF2nBVm5rkb4NL9qMrb1sVCIFgBDFrpGGgEbAE=;
        b=jB3C5AOU61y+xF1BAcRUYLu6E8n7aOlwozs94BEY9qGOgNhftHz0PjjI9eiG8h9ocT
         cxd2wbiHjRlaeNODs5ak+XP+pEXmYCYFzNWALG4o64rNCl10CTScScQhLGhLkEanxtu4
         38govNxpQEWiypCKq1eL0nBfHhRScV+iCiB63TR67ac++5HQMMMDMbtOSNhFut830oH0
         Kr8s1+WbWcwYFrQN/CmLf3qGhufi5xbIu4vmGmc+J0n7Zqmo+s8pw50npn9Thmysi7NU
         taLyP3EjqmY5euGvRxjeTL8EDDGLjFW4gjele4Xp0BWBt13wZ2HHR6JK9Z/vnuJ8c5wq
         1qgQ==
X-Gm-Message-State: ABy/qLbcSHmk9NuBNnQotK6iXi8nhQauHdlV3HhXhQYcpPztamDqPfvn
	/dw2+c6oO6sJ2iPEvqKW37U=
X-Google-Smtp-Source: APBJJlGukeQDf41THsA9OlspF8I1IcvXc+I6DaEANefiSMwZXtqx5Nx5v7tqI/RzIf1uMNEtOXJuxg==
X-Received: by 2002:a17:906:74d7:b0:987:59b6:c9fa with SMTP id z23-20020a17090674d700b0098759b6c9famr1431719ejl.19.1688644181456;
        Thu, 06 Jul 2023 04:49:41 -0700 (PDT)
Received: from [100.64.0.1] ([165.225.94.221])
        by smtp.gmail.com with ESMTPSA id lg7-20020a170906f88700b0098d93142ce1sm703481ejb.109.2023.07.06.04.49.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jul 2023 04:49:40 -0700 (PDT)
Message-ID: <7f512a428ba58064a0f948df4c37af45ae6e9b4d.camel@gmail.com>
Subject: Re: [yocto] do_configure error while adding networkmanager to image
From: adrian.freihofer@gmail.com
To: Anders.Montonen@iki.fi, MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Date: Thu, 06 Jul 2023 13:49:39 +0200
In-Reply-To: <B120A605-E6D6-44EF-AC6F-FEB9174570B2@iki.fi>
References: <8d25b1e3d7a401d493802117d0cc48c3f63e7544.camel@gmail.com>
	 <17151.1688637320466205781@lists.yoctoproject.org>
	 <B120A605-E6D6-44EF-AC6F-FEB9174570B2@iki.fi>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Jul 2023 11:49:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60528

On Thu, 2023-07-06 at 13:12 +0300, Anders Montonen wrote:
>=20
>=20
> > On 6 Jul 2023, at 12:55, MOHAMMED HASSAN
> > <hassanchattarki@gmail.com> wrote:
> >=20
> > On Thu, Jul 6, 2023 at 02:29 AM, Adrian Freihofer wrote:
> > > Hi Hassan
> > >=20
> > > It's a bit hard to guess what you are really doing. The bb is a
> > > fork
> > > from a quite old version when it was still using the autotools.
> > > Now we
> > > use meson.
> > >=20
> > > The check for rl_echo_signal_char came into NetworkManager 8
> > > years ago
> > > https://gitlab.freedesktop.org/NetworkManager/NetworkManager/-/commit=
/b69143b5085c58e51ab8077ee5cbe6fafe73e041
> > > .
> > > It's probably not a change on NetworkManager side which came in
> > > recently with your update to 1.22.16.
> > >=20
> > > Compiling nmcli with readline works with the bb from meta-
> > > openembedded
> > > and the poky version with a similar age. That's the default.
> > >=20
> > > Some ideas:
> > > - Try if the original recipe throws the same error
> > > - Pass the readline parameter to autotools (what we do with newer
> > > versions of the recipe and meson)
> > > - Compile without nmcli and remove the readline dependency. Look
> > > at the
> > > commit history of the networkmanager.bb. There was an autotools
> > > based
> > > recipe which supported compiling without nmcli at some point in
> > > time.
> > Actually I want nmcli recipe in my yocto image file. I am still a
> > beginner with this so i am facing these issues. Alternatively, I
> > was looking at adding wireless-tools to my image file but i dont
> > have its related recipe in my SDK. Do let me know if you have any
> > suggestions.
>=20
> Are you using meta-gplv2? Its version of readline is too old for
> NetworkManager.

No, we don't use meta-gplv2.

But we contributed the feature for compiling NetworkManager without
readline to NetworkManager. Recent NetworkManager recipe versions 1.36+
have a packageconfig flag to build it with libedit instead of
libreadline.

Here are all commits:
https://github.com/openembedded/meta-openembedded/commits/master/meta-netwo=
rking/recipes-connectivity/networkmanager

That's the one which introduces the libedit feature:
https://github.com/openembedded/meta-openembedded/commit/9632eca6d27f29dc22=
9d7a4c6663f97fc036661e

--> Updating at least NetworkManager would help you.

Regards,
Adrian

>=20
> -a
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60527):
> https://lists.yoctoproject.org/g/yocto/message/60527
> Mute This Topic: https://lists.yoctoproject.org/mt/99982001/4454582
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/unsub=C2=A0[adrian.freihofer@gmail=
.com
> ]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


