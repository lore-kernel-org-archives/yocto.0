Return-Path: <chuckwolber@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D01BC433F5
	for <webhook@archiver.kernel.org>; Tue, 22 Mar 2022 17:54:37 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com
 [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.web11.13577.1647971676382586487
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Mar 2022 10:54:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KDX7rZ9I;
 spf=pass (domain: gmail.com, ip: 209.85.128.181,
 mailfrom: chuckwolber@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id
 00721157ae682-2e5827a76f4so199839637b3.6
        for <yocto@lists.yoctoproject.org>;
 Tue, 22 Mar 2022 10:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kCiyDpqpmv0I9EjTyYAGk1aggai/4Uwj8df0ONGE9Ds=;
        b=KDX7rZ9IsdaiDYY4Q2AQIh1IqxMoyQTbzBWphG+QpLkklSYK+E16Nam8rnJK/8wIuM
         MrI4TH8iJMrw3MCMxhr/ism1QCeH4c29Ih5vluW8IMrKe12TD9Oq7oAUxHmjPPhvQM3O
         iQaXBCopfq2DMlv2oZZRxos3Xn/e7KcCR9qx5FZEcGPCCrkZAn9wX1MGRTl0TY1ZAYDK
         E9uCiXkzvqmmOnsopu8Sj+a15pNBXM24GFB1MW2KBIOypbmfZuWlNgxgVtxZ/19d86dW
         WEmYYWCQIpFA7y4Z1YAQ9PxM52va1yd7QiAFPDzFIY2/O9vc3awsUP7HAHZ9yd/rpBM4
         frFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kCiyDpqpmv0I9EjTyYAGk1aggai/4Uwj8df0ONGE9Ds=;
        b=N9r2kSlNjmd9WrOqmtxG7k4i5kVrRpi/EbaY565YiHIzzty3UYqhi99GNWw2UoaJtB
         NrQOKb5DZYlxvfAiU1lbFra8L1o6Ezfvu606Fkw1amZGSlDLgqunVGehgw1UwZzzRpob
         TvvgVneSz9w78Sfwpn6NX9IFjPLUMVt91GnMRQd5M5YMybkHvLs6OZHcxi3t4m135VW9
         Y+OZnwj/OOWetem/LYtQAwAhcgsBNH7TLXfzV+LxhYA0yZd/NXYnUn2HHP5mT2KkSLVi
         eUFXC0LkthMRCpGkfDlby9oNOBUFIPe9artXxHm63DCE+mAZQjbeaTOlCDyekFP1gXUB
         h/2Q==
X-Gm-Message-State: AOAM530yppYXW9CxyA+OSNWfxVhVB6EWs5NdDmXa4XmkNT+pEj54Zze7
	ZxvCYZzYtFmxoSETF1X8tIr2nBPpI0iwF0/fETA=
X-Google-Smtp-Source: 
 ABdhPJwfSHqUZK8iIemSEylr4s1wieZrZlHi9DubI2VhZhq1i3hS4vVlK8zaH8fVJtxfXDdGWyaIXfbPPavOTjpOOzo=
X-Received: by 2002:a81:8086:0:b0:2e5:c21c:bb86 with SMTP id
 q128-20020a818086000000b002e5c21cbb86mr27043912ywf.99.1647971675434; Tue, 22
 Mar 2022 10:54:35 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAE+BM3meYkLa3J_CUbmvRiz7w5LFE_QqyqkoDrkibuk-ietPFQ@mail.gmail.com>
 <CANNYZj8w_i+dPngM_4ucTTFhsCaH0dvqpK998i0hb6FEDNA5Yg@mail.gmail.com>
In-Reply-To: 
 <CANNYZj8w_i+dPngM_4ucTTFhsCaH0dvqpK998i0hb6FEDNA5Yg@mail.gmail.com>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Tue, 22 Mar 2022 10:54:23 -0700
Message-ID: 
 <CAB=6tBQTeCvvDYm0ATBMysKTzcStKHobuKMVUu3Sm_Tw=WCG7w@mail.gmail.com>
Subject: Re: [yocto] SSTATE corruption
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Rusty Howell <rustyhowell@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000050727505dad24e94"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Mar 2022 17:54:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56533

--00000000000050727505dad24e94
Content-Type: text/plain; charset="UTF-8"

Alex is very much correct, you should not see corruption. But I think more
detail is in order.

If your distro repository is a "garden variety" set of image recipes and
recipe overrides that pull upstream source bundles, then your SSTATE cache
should age nicely from release to release.

However, if your source code and associated application files ride along in
the same repository as your recipes, or you add your own bbclass
functionality, you may want to reconsider keeping SSTATE cache around for
too long. There are still some issues to be worked out to make the local
file fetcher as reliable as the other fetchers when it comes to keeping
your distro buttoned up into one monolithic repository with application
level source code trees.

..Ch:W..


On Tue, Mar 22, 2022 at 7:13 AM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> No and no.
>
> Alex
>
> On Tue, 22 Mar 2022 at 14:48, Rusty Howell <rustyhowell@gmail.com> wrote:
> >
> > Is the sstate cache sensitive to different releases and or the ordering
> of the bblayers?   We are upgrading our Yocto-based distro from dunfell to
> hardknott.  So for a while we will be building our distro on both
> releases.   Do we need to keep the sstate caches separate for these builds?
> >
> > Another related question... Does changing the order of the bblayers
> corrupt the sstate cache (ie require a fresh sstate)?
> > Thanks
> >
> >
> >
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56527):
> https://lists.yoctoproject.org/g/yocto/message/56527
> Mute This Topic: https://lists.yoctoproject.org/mt/89952176/894569
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> chuckwolber@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--00000000000050727505dad24e94
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Alex is very much correct, you should not see corrupt=
ion. But I think more detail is in order.</div><div><br></div><div>If your =
distro repository is a &quot;garden variety&quot; set of image recipes and =
recipe overrides that pull upstream source bundles, then your SSTATE cache =
should age nicely from release to release.</div><div><br></div><div>However=
, if your source code and associated application files ride along in the sa=
me repository as your recipes, or you add your own bbclass functionality, y=
ou may want to reconsider keeping SSTATE cache around for too long. There a=
re still some issues to be worked out to make the local file fetcher as rel=
iable as the other fetchers when it comes to keeping your distro buttoned u=
p into one monolithic repository with application level source code trees.<=
/div><div><br></div><div>..Ch:W..<br></div><div><br></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 22, 2022 at=
 7:13 AM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">al=
ex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">No and no.<br>
<br>
Alex<br>
<br>
On Tue, 22 Mar 2022 at 14:48, Rusty Howell &lt;<a href=3D"mailto:rustyhowel=
l@gmail.com" target=3D"_blank">rustyhowell@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Is the sstate cache sensitive to different releases and or the orderin=
g of the bblayers?=C2=A0 =C2=A0We are upgrading our Yocto-based distro from=
 dunfell to hardknott.=C2=A0 So for a while we will be building our distro =
on both releases.=C2=A0 =C2=A0Do we need to keep the sstate caches separate=
 for these builds?<br>
&gt;<br>
&gt; Another related question... Does changing the order of the bblayers co=
rrupt the sstate cache (ie require a fresh sstate)?<br>
&gt; Thanks<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56527): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56527" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56527</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/89952176/8945=
69" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
89952176/894569</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:chuckwolber@gmail.com" target=3D"_blank">chuckwo=
lber@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><div><b><span style=3D"font-family:monospa=
ce">&quot;Perfection must be reached by degrees; she requires the slow hand=
 of time.&quot; - Voltaire</span></b></div></div></div></div>

--00000000000050727505dad24e94--

