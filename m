Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D05AEC48260
	for <webhook@archiver.kernel.org>; Tue, 13 Feb 2024 22:17:17 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web10.27518.1707862631471338850
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Feb 2024 14:17:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=TiImjl+l;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.51, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-511898b6c9eso3336141e87.3
        for <yocto@lists.yoctoproject.org>; Tue, 13 Feb 2024 14:17:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1707862629; x=1708467429; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ikoR2hRP5xPvOc27g+Umkka8P0Ag4G0vBMaYPWWafx4=;
        b=TiImjl+lJUKTxlwTbxjSH36csGVi5NLU9vLOYt2i6Nn9LlMWALR0+S5CyCnzLj/k1s
         /0bUTBmaduSMbfQLJzXb8DpJOXgmZxvmNtwvhw4SxBfQEL6iurb3AV0NSvI5N5CN37v5
         7fBtqgdQ7+RcevAUFQmXc7tMh01s/aWyFj6CA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707862629; x=1708467429;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ikoR2hRP5xPvOc27g+Umkka8P0Ag4G0vBMaYPWWafx4=;
        b=D6rj+jQmSgb98iYaxZH11uF2St/cIkm8CSgIhj1TgQGm20gYy2OBwkZ1aLqduWViIC
         28SiPa1OSD/+R8nbDT0Ig6RaQZV47cJHu00QtRBPbfJ+RcdM0hth7Tz7CauVx+GtHjvx
         kCRhQN5JqX+QCcBXptWk+1V4pdmtXOZCeb1WvBrYP25ecqdbJVHQtBeT9T8w+uNd03gp
         SFVdm29QhBXJB4dMpFseUkCANL9jAwPDWeEqOFEvxArDDVX4zJLrr2jvbDvG2mJ1W6Yg
         7xOmbBnxBEDr8DMC0y458olDBHwnNcw3Qqv5xEIuA2gSYrmWkq9oUW3vU61gssBZopYj
         rhJA==
X-Gm-Message-State: AOJu0Yx4Nf1o+m3BQyhYPaDAl60nj3tHZKajItfsev4nkfRweFNDVkla
	gPse/ly+GLLR4shYjXBBL8wwjQPuDi6aAIkSvUzRkaHl3ai5U+zBK7w0+VPnfPN4p/7mRddl6M0
	fQO4Cq0ElBR5O6yZOS2u35Es9mShq6kJSrRQema5s+ks9tmyDLec=
X-Google-Smtp-Source: AGHT+IHajoCmCwrkJCCU5JxtlQn1EN+8sWY9EwlJ0UkYZIM4xsw12VzvZsT95CywXBDo64INo/xigq4NiaO8CE29Beg=
X-Received: by 2002:ac2:5238:0:b0:511:5b4e:1063 with SMTP id
 i24-20020ac25238000000b005115b4e1063mr558917lfl.24.1707862628666; Tue, 13 Feb
 2024 14:17:08 -0800 (PST)
MIME-Version: 1.0
References: <5e58c6719d797be31ece8149535531036ae18a47.camel@gmail.com>
 <e6cefe4b20af2ef03793fd096f01482f9f69cf67.camel@linuxfoundation.org>
 <ebd3d2dfe7da20db63df6ae404c7198baf484953.camel@gmail.com> <CAJdd5GaOESrSMpuKr1ZJYYcjeMspqOG5SvKeQU7hpuEF0NnXAw@mail.gmail.com>
In-Reply-To: <CAJdd5GaOESrSMpuKr1ZJYYcjeMspqOG5SvKeQU7hpuEF0NnXAw@mail.gmail.com>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Tue, 13 Feb 2024 14:16:57 -0800
Message-ID: <CADfgfoYd=CXoer6kVdPqT7XQid_52hUOyaBNyQh928zubYfN_A@mail.gmail.com>
Subject: Re: [yocto] bmap-tools repository closes
To: yocto@lists.yoctoproject.org, Artem Bityutskiy <dedekind1@gmail.com>
Cc: jpewhacker@gmail.com
Content-Type: multipart/alternative; boundary="0000000000004ea4bd06114ac120"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Feb 2024 22:17:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62483

--0000000000004ea4bd06114ac120
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 12, 2024 at 2:53=E2=80=AFPM Joshua Watt <JPEWhacker@gmail.com> =
wrote:

> On Sun, Feb 11, 2024 at 11:46=E2=80=AFPM Artem Bityutskiy <dedekind1@gmai=
l.com>
> wrote:
> >
> > On Fri, 2024-02-09 at 18:08 +0000, Richard Purdie wrote:
> > > Thanks for reaching out to us, it is good to do this proactively rath=
er
> > > than seeing it sit unmaintained. There is interest within the Yocto
> > > Project community to take this on so we'd like to take up that offer
> > > thanks!
> > >
> > > There are a few details we're working through but I did want to say
> > > this publicly and also to say thanks for reaching out.
> >
> > Thank! Let me know when if you do this, I'll point to the new place fro=
m
> current
> > bmap-tools github repo.
>
> I think ideally we would use the GitHub feature to move the repo if
> you have permissions to do that as it should preserve issues and such;
> I think maybe it will also automatically redirect if we do that, but
> I'm not positive because I've not done it before
>
> Hi, I'm Michael, the infrastructure lead at Yocto Project.

Ideally we would transfer https://github.com/intel/bmap-tools to
https://github.com/yoctoproject. If you grant me Admin access to
https://github.com/intel/bmap-tools I can initiate a transfer from the
current organization to Yocto Project. Transferring is preferred since it
would preserve all history including any issues or wiki entries. My github
account is https://github.com/halstead.

Please let me know if you'd like to facilitate the transfer and if you need
any additional information. If this isn't possible I can go ahead and set
up a fork.


> >
> > Artem.
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62468):
> https://lists.yoctoproject.org/g/yocto/message/62468
> Mute This Topic: https://lists.yoctoproject.org/mt/103930262/1003190
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> mhalstead@linuxfoundation.org]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--0000000000004ea4bd06114ac120
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 12, 2024 at 2:53=E2=80=AFPM Jos=
hua Watt &lt;<a href=3D"mailto:JPEWhacker@gmail.com" target=3D"_blank">JPEW=
hacker@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">On Sun, Feb 11, 2024 at 11:46=E2=80=AFPM Artem Bityutskiy &=
lt;<a href=3D"mailto:dedekind1@gmail.com" target=3D"_blank">dedekind1@gmail=
.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On Fri, 2024-02-09 at 18:08 +0000, Richard Purdie wrote:<br>
&gt; &gt; Thanks for reaching out to us, it is good to do this proactively =
rather<br>
&gt; &gt; than seeing it sit unmaintained. There is interest within the Yoc=
to<br>
&gt; &gt; Project community to take this on so we&#39;d like to take up tha=
t offer<br>
&gt; &gt; thanks!<br>
&gt; &gt;<br>
&gt; &gt; There are a few details we&#39;re working through but I did want =
to say<br>
&gt; &gt; this publicly and also to say thanks for reaching out.<br>
&gt;<br>
&gt; Thank! Let me know when if you do this, I&#39;ll point to the new plac=
e from current<br>
&gt; bmap-tools github repo.<br>
<br>
I think ideally we would use the GitHub feature to move the repo if<br>
you have permissions to do that as it should preserve issues and such;<br>
I think maybe it will also automatically redirect if we do that, but<br>
I&#39;m not positive because I&#39;ve not done it before<br>
<br></blockquote><div>Hi, I&#39;m Michael, the infrastructure lead at Yocto=
 Project.</div><div><br></div><div>Ideally we would transfer <a href=3D"htt=
ps://github.com/intel/bmap-tools">https://github.com/intel/bmap-tools</a> t=
o <a href=3D"https://github.com/yoctoproject">https://github.com/yoctoproje=
ct</a>. If you grant me Admin access to <a href=3D"https://github.com/intel=
/bmap-tools">https://github.com/intel/bmap-tools</a> I can initiate a trans=
fer from the current organization to Yocto Project. Transferring is preferr=
ed since it would preserve all history including any issues or wiki entries=
. My github account is <a href=3D"https://github.com/halstead">https://gith=
ub.com/halstead</a>.=C2=A0</div><div><br></div><div>Please let me know if y=
ou&#39;d like to facilitate the transfer and if you need any additional inf=
ormation. If this isn&#39;t possible I can go ahead and set up a fork.<br><=
/div><div>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>
&gt;<br>
&gt; Artem.<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62468): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62468" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62468</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/103930262/100=
3190" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/103930262/1003190</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:mhalstead@linuxfoundation.org" target=3D"_blank"=
>mhalstead@linuxfoundation.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Michael Halstead<div>Linux Foundation / Yocto Project</div><=
div>Systems Operations Engineer</div></div></div></div></div>

--0000000000004ea4bd06114ac120--

