Return-Path: <mimoghosh9@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A859C5B543
	for <webhook@archiver.kernel.org>; Thu,  5 Jun 2025 13:34:30 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web11.7864.1749130460384138129
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Jun 2025 06:34:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dvJB+yxc;
 spf=pass (domain: gmail.com, ip: 209.85.160.172, mailfrom: mimoghosh9@gmail.com)
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-4a5ae2fdf4eso11842041cf.0
        for <yocto@lists.yoctoproject.org>; Thu, 05 Jun 2025 06:34:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749130459; x=1749735259; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=onYQfLQUsPe7z8hz6wTUhr3HxVndt/Sd2RGksETgYEI=;
        b=dvJB+yxcNUJ43IFMBehAOJRXkA6b9+wbY20Vti2UgA+90jnRCmzbW74iB/k32NvStL
         D5qPfSIjtyAMS5KxdtF6x2AGp1qOi/y8mJlhtlrQwmNb1ivJRWRrr4buGzmSyUzT3nTg
         LzTkvW8xkRrBUOn/cp8vYZ9mDe7PlUPMuZn+aoJfucLDgz60XQjzx6+pOYrkrZE653QO
         Nos5J9WkKchgR/El7gQ7HU2AcIDS2Vq+cG8PPrLdHLYm9UAG58QpuR2f37zC/oITLlf+
         b95hQ9APn7dAZljxdcusWYplscKmAIOJI8AhYUsSZLvy43stQdGWd9cN9rv+mDPit55n
         9t7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749130459; x=1749735259;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=onYQfLQUsPe7z8hz6wTUhr3HxVndt/Sd2RGksETgYEI=;
        b=tuH+fU+KRWIxnKDzmNCtc21GQ4L1IXr9f71CMnPV26KsKFRX0DmGCgrtV6lf3aLqzw
         de/zPeDDtMmc0zcgfWXwwW3VqIl9oJ94YY0LiiS8Q5neACnPYGO1mp7Mdp/vCGkWALzc
         NBuVbSmD2myCUh1/WqGbD1stgyFFx0HZvGFS4RhuuSC5VVlhmy2cSsphK65dhH9iJUVb
         amEYiloiTVRfyQPz/BQmQEcP3Ldb3kvKpxFgZRfQhXslBnlEK1FwKyOusGO6sywn/XL/
         +eq7qitNjPtGRtTf8IrHyxFTwP7VD3gNQjmcqqiWlp7xYPUBA8944+C32XfDm/bjeDpX
         4G7A==
X-Gm-Message-State: AOJu0YzXSBX2WGDjHyOb1io63VdgfQow7b09zDWXuCEfWfiEcapIRn6C
	pcrLSwa80RjrXFDBIOVvp0q/vG/fGOur7Xe5N1v8WKqExsnwaj4trkZl1litfQU9Jxj6upI0TAd
	SSn2vlhi8Qauyt6DQlcGrbmRJoELm3I0ciA==
X-Gm-Gg: ASbGncs6KmtkhsERkqjDUEZWzRG2m9J751zx7MFphBAODt7jq9gL0O2pWmw0Kprq+6H
	M6vPbGzMAQZKZjaqwWSv41Rmf3SzmffdUSgcw5pbifL90OvrSYqD8TL5KLQp9leEDS2so/s2Y0o
	NXMGXWh+thYnmY0mHbF1h6iOuSdCCnfj7p9Gi+Ya8bCNpKdm+syxzMPUw3+1+giBRAbc0=
X-Google-Smtp-Source: AGHT+IFfNoy0ePnZn7T81QFYuyU9zdkIRdi0yNvReAqzjYM94gOu6bjqyvA0x4YeVM5gRz/EQPfXJUl1adxgzepBNuk=
X-Received: by 2002:a05:6808:6f86:b0:406:8a86:6475 with SMTP id
 5614622812f47-408fac41eb8mr3068385b6e.19.1749130448751; Thu, 05 Jun 2025
 06:34:08 -0700 (PDT)
MIME-Version: 1.0
References: <2LPI.1749122640654962134.S5P0@lists.yoctoproject.org> <955097ed-505d-4d10-88c0-366de83e5ec9@cherry.de>
In-Reply-To: <955097ed-505d-4d10-88c0-366de83e5ec9@cherry.de>
From: Mimo Ghosh <mimoghosh9@gmail.com>
Date: Thu, 5 Jun 2025 19:03:54 +0530
X-Gm-Features: AX0GCFtowbDUu8COkxCeLKBhVJo1xbrST0sGN4y7AXg4BF-Q1HerNHTVSeZCe3k
Message-ID: <CAOKCUoUZ2ivr6e1VK5zT4atj8TGSimevBKoSfdOpqqYSNBTQpw@mail.gmail.com>
Subject: Re: [yocto] meta-optee
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000010503c0636d32b22"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Jun 2025 13:34:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65469

--00000000000010503c0636d32b22
Content-Type: text/plain; charset="UTF-8"

Thanks for the response.
May I get the op-tee os got or github clone link

On Thu, 5 Jun 2025, 18:37 Quentin Schulz, <quentin.schulz@cherry.de> wrote:

> Hi,
>
> On 6/5/25 1:24 PM, mimoghosh9 via lists.yoctoproject.org wrote:
> > You don't often get email from mimoghosh9=
> gmail.com@lists.yoctoproject.org. Learn why this is important<
> https://aka.ms/LearnAboutSenderIdentification>
> > I was looking for meta-optee in repository.  I used
> >
> > git clone https://git.yoctoproject.org/meta-optee
> >
> >
> > but it is getting failed as not found. Does op-tee remove or what would
> be the issue?
> >
>
> No clue, I've never used meta-optee but we do have op-tee os and client
> recipes in other layers. For ARM for example, it's in meta-arm.
>
> c.f.
> https://layers.openembedded.org/layerindex/branch/master/recipes/?q=optee
>
> Cheers,
> Quentin
>

--00000000000010503c0636d32b22
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thanks for the response.<div dir=3D"auto">May I get the o=
p-tee os got or github clone link</div></div><br><div class=3D"gmail_quote =
gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 5 Jun =
2025, 18:37 Quentin Schulz, &lt;<a href=3D"mailto:quentin.schulz@cherry.de"=
>quentin.schulz@cherry.de</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">Hi,<br>
<br>
On 6/5/25 1:24 PM, mimoghosh9 via <a href=3D"http://lists.yoctoproject.org"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">lists.yoctoproject.org</a>=
 wrote:<br>
&gt; You don&#39;t often get email from mimoghosh9=3D<a href=3D"mailto:gmai=
l.com@lists.yoctoproject.org" target=3D"_blank" rel=3D"noreferrer">gmail.co=
m@lists.yoctoproject.org</a>. Learn why this is important&lt;<a href=3D"htt=
ps://aka.ms/LearnAboutSenderIdentification" rel=3D"noreferrer noreferrer" t=
arget=3D"_blank">https://aka.ms/LearnAboutSenderIdentification</a>&gt;<br>
&gt; I was looking for meta-optee in repository.=C2=A0 I used<br>
&gt; <br>
&gt; git clone <a href=3D"https://git.yoctoproject.org/meta-optee" rel=3D"n=
oreferrer noreferrer" target=3D"_blank">https://git.yoctoproject.org/meta-o=
ptee</a><br>
&gt; <br>
&gt; <br>
&gt; but it is getting failed as not found. Does op-tee remove or what woul=
d be the issue?<br>
&gt; <br>
<br>
No clue, I&#39;ve never used meta-optee but we do have op-tee os and client=
 <br>
recipes in other layers. For ARM for example, it&#39;s in meta-arm.<br>
<br>
c.f. <br>
<a href=3D"https://layers.openembedded.org/layerindex/branch/master/recipes=
/?q=3Doptee" rel=3D"noreferrer noreferrer" target=3D"_blank">https://layers=
.openembedded.org/layerindex/branch/master/recipes/?q=3Doptee</a><br>
<br>
Cheers,<br>
Quentin<br>
</blockquote></div>

--00000000000010503c0636d32b22--

