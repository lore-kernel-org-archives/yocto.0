Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F5AFE95A8E
	for <webhook@archiver.kernel.org>; Mon,  9 Oct 2023 14:02:20 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.62210.1696860130155872795
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Oct 2023 07:02:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=D2Ls/S2P;
 spf=pass (domain: gmail.com, ip: 209.85.221.47, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3231df68584so4255174f8f.1
        for <yocto@lists.yoctoproject.org>; Mon, 09 Oct 2023 07:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696860128; x=1697464928; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=C+zJMZcMG6PbIG8nLCR+CXxuGwoB8Y+b6XZTGN6E4QI=;
        b=D2Ls/S2P6xvFtlyYXbZgXBj5kz4g6E24ikEJYT5kY1Ifw/ypJSs0AJY9FxeaeQaFTd
         hic5rpq7/ZkXuAWnmUMj+JR/DCBwXtd0J2hhr3CKmG8wop64XMe85CAG3ro4dAI9kg8H
         JTWMuA3/qiPmTz9AuVG/whTfvvozMym1ISaknoNJAFK/y4h0Mu7ltNU8l3VDEnV5Yz+Y
         Gr/5psxDO83rV6HXzqwMCAasA9CEWGGW1gVw1vkx2tkrf1NqiZdYmgRB2HvO6YepH0QZ
         WeoIbKKc8Y3Ta0UQ6BNCwXZmZjuAz6T62sWYdRuuGAjZC45iuhUQMrWpRRSn0Fma4PdM
         5O5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696860128; x=1697464928;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C+zJMZcMG6PbIG8nLCR+CXxuGwoB8Y+b6XZTGN6E4QI=;
        b=nek9mN9D2TlWwpGYc3cjRSUPtK60WtYRaKVUn6t6bq4AELa7sASIy9y7wc2THrv2p4
         9IZA8diV5pLGRG6EI5wKVBn8yNiStxZX0VVjk3w1GzLe8+kJkbx74Rr2QWm9Rta/pPux
         0RrMU5KtWWAsu/uFstmLYISMfKM9zhNK8ztKuebvbf/Bo9IF06tu9TqWdqP6MA27k8ET
         JeS6sCxlYGmZERU2TUWy83PfuZS70jM2BiYtG1a6P+/EE0Yod53IKdNDETMPofE4Z/fj
         5hb/siBeHADDt5o2lWZUZCQFuipyS+iqlJTtDpkuWvAx+3IX0s8v1uoXJOhG1XelHOGS
         tUCg==
X-Gm-Message-State: AOJu0YzwG2Rh6GLsaax1poZ+VzyihqNcWo2chTM06GBAMQJBeWpwq4MP
	W48s+qoxYHf7CBH/zF9eHpBWPTcW6LnTYg==
X-Google-Smtp-Source: AGHT+IFLbwX4reLPAdG7H2kONXWLNM9SEHPoewQYnDplVgQ7V14JiDJhbBKqLddBobVCxhbKtVn01w==
X-Received: by 2002:a5d:644b:0:b0:317:61af:d64a with SMTP id d11-20020a5d644b000000b0031761afd64amr12758218wrw.3.1696860125429;
        Mon, 09 Oct 2023 07:02:05 -0700 (PDT)
Received: from ?IPv6:2a02:169:59a6:0:55c4:f628:91f3:4287? ([2a02:169:59a6:0:55c4:f628:91f3:4287])
        by smtp.gmail.com with ESMTPSA id z3-20020a056000110300b0031c6581d55esm9696286wrw.91.2023.10.09.07.02.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Oct 2023 07:02:05 -0700 (PDT)
Message-ID: <7f4c0937dd59eceaf2fcbac8a8634007423db5fd.camel@gmail.com>
Subject: Re: [yocto] continuous security updates for the Linux system
From: adrian.freihofer@gmail.com
To: yocto@lists.yoctoproject.org
Cc: MOHAMMED HASSAN <hassanchattarki@gmail.com>, jester@theyoctojester.info
Date: Mon, 09 Oct 2023 16:02:04 +0200
In-Reply-To: <12652.1696857725620212439@lists.yoctoproject.org>
References: 
	<CAEt6NwrNMDodSnjYnYd==0raYMnrU+bVb6aTz+pe9vK6EhWP-Q@mail.gmail.com>
	 <12652.1696857725620212439@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="=-oiL/KNlQJufb8OrxSnxb"
User-Agent: Evolution 3.48.4 (3.48.4-1.module_f38+17164+63eeee4a) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Oct 2023 14:02:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61287

--=-oiL/KNlQJufb8OrxSnxb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

Would it be possible to extend the
https://wiki.yoctoproject.org/wiki/System_Update table with compatible
backends? Ideally the license of the backends should also be
transparent. OE/Yocto should not end up with a vendor lock in when it
comes to a standard update mechanism. In the end it's about a solution
with client and server, where a client alone is usually pretty
worthless.

Regards,
Adrian

On Mon, 2023-10-09 at 06:22 -0700, MOHAMMED HASSAN wrote:
> On Mon, Oct 9, 2023 at 06:12 AM, Josef Holzmayr wrote:
> > Please see=C2=A0https://wiki.yoctoproject.org/wiki/System_Update
> > =C2=A0
> Thanks for your reply. I am aware of the system_updates feature
> though still yet to implement. Is it possible to update the yocto
> version (i use dunfell) to the latest one, to update the linux
> version(mine is 5.4.180) to the latest and to update the tools to the
> latest using these features. Actually i have no clarity with this so
> I am asking.
>=20
> Thanks and regards,
> Hassan
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61286):
> https://lists.yoctoproject.org/g/yocto/message/61286
> Mute This Topic: https://lists.yoctoproject.org/mt/101851310/4454582
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/unsub=C2=A0[adrian.freihofer@gmail=
.com
> ]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


--=-oiL/KNlQJufb8OrxSnxb
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style>pre,code,address {
  margin: 0px;
}
h1,h2,h3,h4,h5,h6 {
  margin-top: 0.2em;
  margin-bottom: 0.2em;
}
ol,ul {
  margin-top: 0em;
  margin-bottom: 0em;
}
blockquote {
  margin-top: 0em;
  margin-bottom: 0em;
}
</style></head><body><div>Hi</div><div><br></div><div>Would it be possible =
to extend the <a href=3D"https://wiki.yoctoproject.org/wiki/System_Update">=
https://wiki.yoctoproject.org/wiki/System_Update</a> table with compatible =
backends? Ideally the license of the backends should also be transparent. O=
E/Yocto should not end up with a vendor lock in when it comes to a standard=
 update mechanism. In the end it's about a solution with client and server,=
 where a client alone is usually pretty worthless.</div><div><br></div><div=
>Regards,</div><div>Adrian</div><div><br></div><div>On Mon, 2023-10-09 at 0=
6:22 -0700, MOHAMMED HASSAN wrote:</div><blockquote type=3D"cite" style=3D"=
margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><div>On =
Mon, Oct 9, 2023 at 06:12 AM, Josef Holzmayr wrote:<br></div><blockquote ty=
pe=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;paddi=
ng-left:1ex"><div dir=3D"ltr">Please see&nbsp;<a href=3D"https://wiki.yocto=
project.org/wiki/System_Update">https://wiki.yoctoproject.org/wiki/System_U=
pdate</a></div><div class=3D"gmail_quote">&nbsp;</div></blockquote><div>Tha=
nks for your reply. I am aware of the system_updates feature though still y=
et to implement. Is it possible to update the yocto version (i use dunfell)=
 to the latest one, to update the linux version(mine is 5.4.180) to the lat=
est and to update the tools to the latest using these features. Actually i =
have no clarity with this so I am asking.<br><br>Thanks and regards,<br>Has=
san</div><div><br></div><div>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<=
br></div><div>Links: You receive all messages sent to this group.<br></div>=
<div>View/Reply Online (#61286): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/61286">https://lists.yoctoproject.org/g/yocto/message/61286=
</a><br></div><div>Mute This Topic: <a href=3D"https://lists.yoctoproject.o=
rg/mt/101851310/4454582">https://lists.yoctoproject.org/mt/101851310/445458=
2</a><br></div><div>Group Owner: <a href=3D"mailto:yocto+owner@lists.yoctop=
roject.org">yocto+owner@lists.yoctoproject.org</a><br></div><div>Unsubscrib=
e: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub">https://lists.y=
octoproject.org/g/yocto/unsub</a>&nbsp;[<a href=3D"mailto:adrian.freihofer@=
gmail.com">adrian.freihofer@gmail.com</a>]<br></div><div>-=3D-=3D-=3D-=3D-=
=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br></div><div><br></div></blockquote><div><br>=
</div><div><span></span></div></body></html>

--=-oiL/KNlQJufb8OrxSnxb--

