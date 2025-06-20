Return-Path: <fede@evolware.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DEAC71155
	for <webhook@archiver.kernel.org>; Fri, 20 Jun 2025 04:41:14 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web11.629.1750394468633529813
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Jun 2025 21:41:08 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: gmail.com, ip: 209.85.218.44, mailfrom: fede.evol@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-adeaa4f3d07so283664166b.0
        for <yocto@lists.yoctoproject.org>; Thu, 19 Jun 2025 21:41:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750394467; x=1750999267;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1FQKt1RiocR7KPJ7y3jm5sx+ICalnCcCyfHAEMix6Rc=;
        b=NknjMVu8XFYLhJOF0UHPi8BM0RKOK1j2wI1LRoIrsqK1Q13F3asKiDBO4XE5D0hkzJ
         XbOHyz9YAPLsKFUD32XCHKGcehv9EMdTyornlBlSQAOctqgXlkSWlbSyxPOnzNY4zl8u
         0j3AEScUNM1ES1C+z62ei99dqdUDMIlaF8FKubElv2W23ukvwblVgULowasH/IpUTMW1
         F7Nm/j7NBHeFJ4moQVcCtD/N3w2bWjbOaWK0J8mSBxjwSFuD/VMw0gY5sH+J/7Bu7+pI
         QxzPCnS/4G3lqRgy2kiMRjnxMXmxHbxLGIyjRBdG60WMnBC/OwKOERhAi7RyZU+2sQhL
         6pAA==
X-Gm-Message-State: AOJu0Yw6Lhuyoxg3Y35xdZwDBd1Qfc3kfNajEneIOfCNoHB5Enwwl4+O
	CsO57uHpISdwnTto9ZcRz+2155OmvUna7L36E5iHCtLpvBG7VHW7aJDYJpkt1Hf2CaE8A4Vc7Xj
	XApGkazSc1/uGEvvs1kdliEzsWytlo8+zDb/t
X-Gm-Gg: ASbGnctBc6a727DceRiSAvvGcPE6beyI4QDL2nmkA9RLVXerF1VI1xBYkFvuKWUUKQg
	dY9BR+B/HjRyaeA93qwFpxZ/DqFuv9wTnh+3kMuYtpmhB2iqbQNEu81BqTQCu3ro+q0VcBVgOoJ
	NYrAXKk5r0FCsDcdKSQW+kuZI8S336zoIrULmMCPi7xFYtNWGTQEBxqDvk8PvOzGnlzYI7WXZ7/
	5RNrg==
X-Google-Smtp-Source: AGHT+IFzy5BxL0PBidiGOE9oa5e6bAGLPgecZJekXk2HaMQNpvdgEQg7Dbqqe93K5ZohfFJjdeAFCU9eqAEGhHMLWPc=
X-Received: by 2002:a17:907:1c10:b0:ad8:9e5b:9217 with SMTP id
 a640c23a62f3a-ae057f653a3mr116276566b.45.1750394466675; Thu, 19 Jun 2025
 21:41:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBniNPkLC+7Gd3Ryh=qTqysjKUX2fCfFAo-7NxASq_Z1UFw@mail.gmail.com>
In-Reply-To: <CAPJWBniNPkLC+7Gd3Ryh=qTqysjKUX2fCfFAo-7NxASq_Z1UFw@mail.gmail.com>
From: Federico Pellegrin <fede@evolware.org>
Date: Fri, 20 Jun 2025 06:40:55 +0200
X-Gm-Features: AX0GCFshACYdoTqVYmPzB49tcISRdxtWETXI0ZXNn-t_TeqxikgDxdX0V3EFV6M
Message-ID: <CAM6O0Zg1r1dDObuzs+SA2eWrP0h=RRUVZmozXDjtovtSNuogbg@mail.gmail.com>
Subject: Re: [yocto] Building nodejs with only 16GB RAM
To: yocto@lists.yoctoproject.org, hassanchattarki@gmail.com
Content-Type: multipart/alternative; boundary="0000000000006732240637f978b4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Jun 2025 04:41:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65529

--0000000000006732240637f978b4
Content-Type: text/plain; charset="UTF-8"

Hi,
Increasing processor cores will usually make things *worse* as more
processes may be spawned at the same time and therefore more RAM used.

Instead you could try to reduce numer of parallel processes
(see BB_NUMBER_THREADS and PARALLEL_MAKE for example) albeit of course this
will make the compilation (even) slower.

Another possibility: create a swap file/partition on the system. Also this
will make things slower, but you will have "more RAM".

Cheers,
Federico



Il giorno ven 20 giu 2025 alle ore 06:34 MOHAMMED HASSAN via
lists.yoctoproject.org <hassanchattarki=gmail.com@lists.yoctoproject.org>
ha scritto:

> Hi all,
> I have to build nodejs which I noticed takes 32GB RAM. Unfortunately, I
> only have 16GB and can't upgrade. So I want to know if I can increase the
> processor cores and hopefully that might help. I am using the Lenovo
> Thinkpad P15v laptop. Let me know if this can work or any one has tried it
> here.
>
> Thanks
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65528):
> https://lists.yoctoproject.org/g/yocto/message/65528
> Mute This Topic: https://lists.yoctoproject.org/mt/113737892/5117409
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> fede@evolware.org]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000006732240637f978b4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hi,</div><div>Increasing processor cor=
es will usually make things *worse* as more processes may be spawned at the=
 same time and therefore more RAM used.</div><div><br></div><div>Instead yo=
u could try to reduce numer of parallel processes (see=C2=A0BB_NUMBER_THREA=
DS and=C2=A0PARALLEL_MAKE for example) albeit of course this will make the =
compilation (even) slower.</div><div><br></div><div>Another possibility: cr=
eate a swap file/partition on the system. Also this will make things slower=
, but you will have &quot;more RAM&quot;.</div><div><br></div><div>Cheers,<=
/div><div>Federico</div><div><br></div><div><br></div></div><br><div class=
=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr=
">Il giorno ven 20 giu 2025 alle ore 06:34 MOHAMMED HASSAN via <a href=3D"h=
ttp://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;hassanchattark=
i=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoc=
toproject.org</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr">Hi all,<div>I have to build nodejs which=
 I noticed takes 32GB RAM. Unfortunately, I only have 16GB and can&#39;t up=
grade. So I want to know if I can increase=C2=A0the processor cores and hop=
efully=C2=A0that might help. I am using the Lenovo Thinkpad P15v laptop. Le=
t me know if this can work or any one has tried it here.</div><div><br></di=
v><div>Thanks</div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#65528): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/65528" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/65528</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/113737892/511=
7409" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/113737892/5117409</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:fede@evolware.org" target=3D"_blank">fede@evolwa=
re.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000006732240637f978b4--

