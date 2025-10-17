Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E182CCD1A4
	for <webhook@archiver.kernel.org>; Fri, 17 Oct 2025 13:41:31 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web10.15709.1760708484013008577
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Oct 2025 06:41:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=DxYvQqvp;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3ee130237a8so1314818f8f.0
        for <yocto@lists.yoctoproject.org>; Fri, 17 Oct 2025 06:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1760708482; x=1761313282; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E01TJ6LiBnfegCYMEpb+ExuX8ATwIR6NiNqYVmk929Y=;
        b=DxYvQqvpKMVuqQWAIxXqS2nV3lLlEPYj2WdMjz9AwPOgz55/qMHbsD2yo42deY5VmW
         lIqJOrXd5wZXQJC3Rg5yiuodfPmuewsNPSsWAc3L/fQbdqwLlKM9ZTijgAobR65rQpJu
         RS2C6NFRzJVSvKB2+3h/gtawAvuVfhaRc/4zk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760708482; x=1761313282;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=E01TJ6LiBnfegCYMEpb+ExuX8ATwIR6NiNqYVmk929Y=;
        b=kJaBWxS9OUo75ifXDfSzjnk17ym/exsGBwHYR57wThnIodo+o6s6cdw3TNlbOGE6su
         6nc42r/vC3y4fQ84j92L7pfDPNqtNSRw2pAMx8vv1CnLIP2mw4Tr7EkUDSjyBxVsqTR9
         SuFa4ZSWWFvyZ6CWia+HIC0vKgCzY/zm3lAB4Ho5KE413sJ+ZA1HqSu4qROMV2laNTig
         AJVWLUf0z3fIImhlWmsunNZJyrt62hSpbmFG3xuKA4gFj9JNDxXcELAkMhvy873G6YQc
         PbmLASjBtDo67QP9strul6c3OT+veiENUocHAHHqSp2dMTnnf/BLcXB4yjm05RjfsrXC
         KiPw==
X-Forwarded-Encrypted: i=1; AJvYcCUI5kV5+uIscyXq7i2m7eb9zl+4GRplUVRhyl2yUSOdIQoXHXnAiqAik2GxmKMuQ4OH+30rKQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yx28jN98zPBgeIl+TZFmqXEtWDN+J7oiFTM0MiA1F3MUG4yodAr
	PNBfYmTQHvUOaD25lfG852a/1En9vcrRSIXYIguNLo6ekXSaJDEXdCosrSh/zmh3FKY=
X-Gm-Gg: ASbGncsHhsmxG1xBQzDSwLMAsCfKp3xKorfFW5zZpCaTJfMVntlf4Ss3v00pR+4ZrbD
	+DsG6iYQHBOYjpk1Q58B60F3CSVG7MRmGHzIUd66tsmXrfqmKkQWafAMM+oKL+06FCm9tKPdjN+
	91qE14LwjZfOF9htsSkTndzSbo8kYTOkqlZ3FX1rmEgd6kHngaNPpodotkJ2RWKCRCPH2wCKN0J
	U2hVYP2p4RAAm5CZuzqz+pIfJQTUC4cLt7XtSx/pKt+DTTFbcbt+16eHVZExgAqTDpDRLgmBNna
	Bn3hG+DFwHR0kBzCU/cUghYHpH1O8ZKiIH4InrlzPq3L+417RoA9z5jH5EdWXBaPRLkFoPEWHQp
	DQ3Uo/NlBJ13kXwkppS4B/1U7WA3/wIPhUog2ldnKeYLuhZ1923hGnsM+TKoGAxUiW5CH3nc01B
	CwZYEw3YMG1rrIxNXKs3bVrSMsl1VY87xBbqEKLg7/6UFzugzuIkuEDxJeYcves/H1o8wXDhcOy
	ik=
X-Google-Smtp-Source: AGHT+IEObvvdaPcN1y5tIpNdzuz0QFGnDJ4DDowcQjEApzlVHxY+z2KtDmlE/rpmFzbhKgKW5M6luw==
X-Received: by 2002:a05:6000:288c:b0:426:d5a0:bac8 with SMTP id ffacd0b85a97d-42704e0eec2mr2765661f8f.56.1760708482286;
        Fri, 17 Oct 2025 06:41:22 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:1a30:cb0f:26e4:b12a? ([2001:8b0:aba:5f3c:1a30:cb0f:26e4:b12a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5e1024sm40467930f8f.42.2025.10.17.06.41.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 06:41:21 -0700 (PDT)
Message-ID: <c468850cf4ff968eea851d95a5e23ce1b910d3dc.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.3_M3.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Date: Fri, 17 Oct 2025 14:41:20 +0100
In-Reply-To: <01010199f1ec695e-da41e756-c561-4a89-814f-693aef0cfc37-000000@us-west-2.amazonses.com>
References: 
	<01010199f1ec695e-da41e756-c561-4a89-814f-693aef0cfc37-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Oct 2025 13:41:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65950

On Fri, 2025-10-17 at 11:27 +0000, Pokybuild User via lists.yoctoproject.or=
g wrote:
>=20
> =C2=A0=C2=A0=C2=A0 A build flagged for QA (yocto-5.3_M3.rc1) was complete=
d on the autobuilder and is available at:
>=20
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 https://valkyrie.yocto.io/pub/=
releases/yocto-5.3_M3.rc1
>=20
>=20
> =C2=A0=C2=A0=C2=A0 Build URL: https://autobuilder.yoctoproject.org/valkyr=
ie/#/builders/29/builds/2605
>=20
> =C2=A0=C2=A0=C2=A0 Build hash information:=20
>=20
> =C2=A0=C2=A0=C2=A0 bitbake: 8b582ef8dd0cef0192d4c0104bcd9b5d642d132c
> meta-agl: f30cc1bec758954f7cc44f15b1df3c7a49ff2e1c
> meta-arm: 40a5aac50c2540d32f79c30accd4bd5e891a87a4
> meta-aws: 20cdd76c203b9b5b3331a145e9afcc9171a40b7d
> meta-clang: 9c772c10f9001db62e4391b6617d03086a24beb1
> meta-intel: c347d0be75958ca095d4ad320c6f2faf88b364a6
> meta-mingw: 00323de97e397d4f6734ef2191806616989f5e10
> meta-openembedded: b28f8caccfefa7c03ec193a67fa8b11deeafa558
> meta-virtualization: 437efd9259c1786c130c724290cb1e46d50edcb2
> meta-yocto: fe65e142d0d9ba0e51ff9175ffa82e902f982a20
> oecore: 5298d01663f897e38380116edf23973d2a156cbc
> yocto-docs: 8b85245490ae0b19a9c3880ec31e55b42e19d094

There are two failures in this build:
  https://autobuilder.yoctoproject.org/valkyrie/#/builders/23/builds/2714
  https://autobuilder.yoctoproject.org/valkyrie/#/builders/67/builds/2630

One looks like a qemu boot hang, the other a stap test timeout which
could be load related. For the latter we have a timeout lengthening in
testing/discussion but it hasn't merged yet.

I believe neither should block release and we should proceed with QA.

I am saddened we have to do that and haven't been able to fix more of
the intermittent issues to stop them occurring in the first place.

Cheers,

Richard

