Return-Path: <nicolas.dechesne@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A16C46467
	for <webhook@archiver.kernel.org>; Wed,  4 Jan 2023 08:52:20 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
 by mx.groups.io with SMTP id smtpd.web11.7669.1672822338227934888
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Jan 2023 00:52:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=sZ2wpXKj;
 spf=pass (domain: linaro.org, ip: 209.85.128.173, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-482363a1232so313865557b3.3
        for <yocto@lists.yoctoproject.org>; Wed, 04 Jan 2023 00:52:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7AE/9DbP64OnJEEosLu/94cQ+qcezmyxiuCgK75EEoA=;
        b=sZ2wpXKjFGDSGJZMCWSuBJRKAzdo74pi5Yl50c+XkctLRKB5Q/dplhbJrX7qa/R1yb
         oPnqROtIt+lOTpFUzTd3yEQSR0X5nnMJR7EgDQtdiB5sn3+ayjEzPSD4jD7pmPXEX8RQ
         KsLHwLht5XgiUspZK8Q2BEYK6+93GU8HN9gE4V27TMlw40RCI2YZHyxIdRZIMqDIC560
         5EuMzKMDVIXSEJQuhYNjxFLH4r0whAdQUXruYxP5yLDAbUBDWLu/5ti0/VD07dXBaIq2
         XbFtLuF/WeDepabkosAvUTL4XTRfP4YfzYVW/2W9NE8hqTZNtQSOt91qb2sxY2EIESyg
         0B9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7AE/9DbP64OnJEEosLu/94cQ+qcezmyxiuCgK75EEoA=;
        b=lgNFiT1HFZLGydUHwi/A3MJNJBcxAFx4kDjrrk29wuZlkd8NsjH4RsjnslMnPjtzF1
         Cym7rDaYKIFJ+GF+4lhwClDOPiz9PdFvsME54q1wted+nJ+hVj0D2Vxhg5TabkH2/Ps3
         eQjoBXmBM81BJgMN7feSMoVpBt1KnNAUOFwAZyfswJvYTdaXo55MjFtrWRQBMXtmsigJ
         JH9t7eFRm0jfNRjckmTA5MDa5Ht/DgPqtuWzuBUOLun4kLQRwLisNJkff1ObKHlRKa4q
         mAE+4tYFiH1EBwVbdvJaclZ6d6kaQ06mIBJDG2S5VGTOT+YPft7jWju00gY461b/+3cU
         bG9w==
X-Gm-Message-State: AFqh2krNBmZWEI5GVResficD6vnvMdYbWyc4Di0DrB8L/bGc6tmxQzeD
	eHwnYsYVNuLBjyb1+nHzoCO0AHjt+cgMRyuPXwOspA==
X-Google-Smtp-Source: AMrXdXszJb/XNJE1DH2W/jYwbjD1bG+amssndXRHyX3XZvKCwtHz80ur7BzRwHm3VASCcRdc5KsYm14btUET/Q7PeSg=
X-Received: by 2002:a81:17d5:0:b0:480:fa10:459e with SMTP id
 204-20020a8117d5000000b00480fa10459emr2179071ywx.283.1672822337268; Wed, 04
 Jan 2023 00:52:17 -0800 (PST)
MIME-Version: 1.0
References: <53a8df93-9880-0945-b334-020753a1771b@pbarker.dev>
In-Reply-To: <53a8df93-9880-0945-b334-020753a1771b@pbarker.dev>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 4 Jan 2023 09:52:05 +0100
Message-ID: <CAP71WjzAL4DJNVMQGaTTEGJArA77sUHYezz6CYvMuzRRZTKNRw@mail.gmail.com>
Subject: Re: [yocto] Layer index update for meta-linux-mainline
To: Paul Barker <paul@pbarker.dev>
Cc: yocto@lists.yoctoproject.org, 
	Paul Eggleton <paul.eggleton@linux.microsoft.com>, Tim Orling <ticotimo@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000002f860d05f16c4d5e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Jan 2023 08:52:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58923

--0000000000002f860d05f16c4d5e
Content-Type: text/plain; charset="UTF-8"

On Wed, Jan 4, 2023 at 9:37 AM Paul Barker <paul@pbarker.dev> wrote:

> Hi folks,
>
> I'm unable to make updates to the meta-linux-mainline layer on the layer
> index. It still has an old email address in the maintainer field which I
> no longer have access to.
>
> The layer can be seen on the dunfell branch here:
>
> https://layers.openembedded.org/layerindex/branch/dunfell/layer/meta-linux-mainline/
>
> Is it possible to update the layer index so that the current details are
> used?
>
> Repository URL:
> https://github.com/unnecessary-abstraction/meta-linux-mainline
> Maintainer email: paul@pbarker.dev


I've made the changes, please check. there is still some old data,
hopefully it will be fixed when the index is updated.


>
>
> Thanks,
>
> --
> Paul Barker
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58922):
> https://lists.yoctoproject.org/g/yocto/message/58922
> Mute This Topic: https://lists.yoctoproject.org/mt/96046763/1279857
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> nicolas.dechesne@linaro.org]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000002f860d05f16c4d5e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 4, 2023 at 9:37 AM Paul B=
arker &lt;<a href=3D"mailto:paul@pbarker.dev">paul@pbarker.dev</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi folks,<br>
<br>
I&#39;m unable to make updates to the meta-linux-mainline layer on the laye=
r<br>
index. It still has an old email address in the maintainer field which I<br=
>
no longer have access to.<br>
<br>
The layer can be seen on the dunfell branch here:<br>
<a href=3D"https://layers.openembedded.org/layerindex/branch/dunfell/layer/=
meta-linux-mainline/" rel=3D"noreferrer" target=3D"_blank">https://layers.o=
penembedded.org/layerindex/branch/dunfell/layer/meta-linux-mainline/</a><br=
>
<br>
Is it possible to update the layer index so that the current details are <b=
r>
used?<br>
<br>
Repository URL: <a href=3D"https://github.com/unnecessary-abstraction/meta-=
linux-mainline" rel=3D"noreferrer" target=3D"_blank">https://github.com/unn=
ecessary-abstraction/meta-linux-mainline</a><br>
Maintainer email: <a href=3D"mailto:paul@pbarker.dev" target=3D"_blank">pau=
l@pbarker.dev</a></blockquote><div><br></div><div>I&#39;ve made the changes=
, please check. there is still some old data, hopefully it will be fixed wh=
en the index is updated.=C2=A0</div><div>=C2=A0</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><br>
<br>
Thanks,<br>
<br>
-- <br>
Paul Barker<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58922): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58922" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58922</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/96046763/1279=
857" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/96046763/1279857</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:nicolas.dechesne@linaro.org" target=3D"_blank">n=
icolas.dechesne@linaro.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000002f860d05f16c4d5e--

