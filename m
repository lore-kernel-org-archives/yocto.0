Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 781CFC4332F
	for <webhook@archiver.kernel.org>; Tue, 20 Dec 2022 16:40:14 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web10.54831.1671554407412663758
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Dec 2022 08:40:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=gh0Mq3iC;
 spf=pass (domain: gmail.com, ip: 209.85.218.48, mailfrom: ticotimo@gmail.com)
Received: by mail-ej1-f48.google.com with SMTP id jo4so21623287ejb.7
        for <yocto@lists.yoctoproject.org>; Tue, 20 Dec 2022 08:40:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qhpUEI9P1ZPmCwYYxAqf1yLJcyooobceH2IoXP15VHc=;
        b=gh0Mq3iCZC2cned0AlopsGp5rgelfJB8Cciy43r2k8lED5o0H9/0zIMFiETwPSWC9o
         w2LKLKUFekbFMvI1Hpzf9ufwgER8wrU1bULPHfb+rVuZQ+o9To17yBdrJ1fWgVwUGsNP
         LXb1uJMeujpJZLoUUY6fRfHeBEFwvq2L5kbWnkWsj/vmpAvdGhPiIgais3EehRVIS6eO
         zSBvl1i5fOQcPqZhguv/eo6yHTKLTCcF2Jp1YZiXteVPL38SWVassisCFNTY6c0bnmIm
         JdIEcDb9ZCJPP9+nZTRtEm6eTIvQdpVgX1RHsTnzbO5tlfklhnl92NSxN27AbPkf1/hl
         ljoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qhpUEI9P1ZPmCwYYxAqf1yLJcyooobceH2IoXP15VHc=;
        b=meliRm7Cf5qxz/Gb2ZGybpOs87zX5e/ShbDH3KPCMVLJjz/H1dOu8CWW72/TwwZt71
         VE/ao6MUFKbMck/wEIwC/dDGz4PY59I+Rx7Qm/1bB5Diuoj6y8HoqbQ6QOyjt9bwfi0y
         gfPCCu8zdVa30QJ+h2+g60PAgfM9IRp5mNyD4hmZGK6P0UWNdYUHtxJLqyiKhf90hi0W
         LhmLXGCxf8HT0vDj8Fy8sX3nPKkZrenm0HPdTQ8cVCRJlGjqISsJuXMc4A9T8IICe3UE
         OR+N0K8/SqMUNo/XHojZi7JDlHg7fzanbet5DeKrbLRt0iqevdfqQn2aX9SezNEfMa9f
         016g==
X-Gm-Message-State: ANoB5pkx3fhaMU0P9cbD3dqmnE+cB8T1ZbarIA4suEHa2u0Nd0gKEVuJ
	sWvVDVZejYfaAoovjFdEhbjdq5c6AqM5+JzWYiQ=
X-Google-Smtp-Source: AA0mqf6AMwpsZYO8/D//vUIYk0DED7mjI7M25bNGBlsd3iBt4eFkOZYMECavMUuT/lDMr0Eizc3Xuw2eDvMEhSqVJ8o=
X-Received: by 2002:a17:907:29cf:b0:7c1:1444:da3c with SMTP id
 ev15-20020a17090729cf00b007c11444da3cmr10570551ejc.564.1671554405709; Tue, 20
 Dec 2022 08:40:05 -0800 (PST)
MIME-Version: 1.0
References: <20221220072619.104336-1-liezhi.yang@windriver.com>
In-Reply-To: <20221220072619.104336-1-liezhi.yang@windriver.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Tue, 20 Dec 2022 08:39:54 -0800
Message-ID: <CANx9H-DG4fiWcp_YahKF_ZScvSz5ZCJczE3F7e2pNHf0wfTLsw@mail.gmail.com>
Subject: Re: [yocto] [layerindex-web] [PATCH] layerindex/utils.py: Add to
 baseconfig=True for bb.parse.handle()
To: Robert Yang <liezhi.yang@windriver.com>
Cc: yocto@lists.yoctoproject.org, tim.orling@konsulko.com, 
	martin.jansa@gmail.com, richard.purdie@linuxfoundation.org
Content-Type: multipart/alternative; boundary="000000000000933d0d05f045160d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Dec 2022 16:40:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58843

--000000000000933d0d05f045160d
Content-Type: text/plain; charset="UTF-8"

On Mon, Dec 19, 2022 at 11:26 PM Robert Yang <liezhi.yang@windriver.com>
wrote:

> Bitbake's api has been changed via:
> afb8478d3 parse: Add support for addpylib conf file directive and
> BB_GLOBAL_PYMODULES
>
> The conf file won't be parsed without baseconfig=True:
> bb.parse.ParseError: ParseError at
> /path/to/oe-core/meta/conf/layer.conf:132: unparsed line: 'addpylib
> ${LAYERDIR}/lib oe'
>
> Merged. Thank you!


> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> ---
> <snip>
> --
> 2.37.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58837):
> https://lists.yoctoproject.org/g/yocto/message/58837
> Mute This Topic: https://lists.yoctoproject.org/mt/95781944/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000933d0d05f045160d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 19, 2022 at 11:26 PM Robe=
rt Yang &lt;<a href=3D"mailto:liezhi.yang@windriver.com">liezhi.yang@windri=
ver.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">Bitbake&#39;s api has been changed via:<br>
afb8478d3 parse: Add support for addpylib conf file directive and BB_GLOBAL=
_PYMODULES<br>
<br>
The conf file won&#39;t be parsed without baseconfig=3DTrue:<br>
bb.parse.ParseError: ParseError at /path/to/oe-core/meta/conf/layer.conf:13=
2: unparsed line: &#39;addpylib ${LAYERDIR}/lib oe&#39;<br>
<br></blockquote><div>Merged. Thank you!</div><div>=C2=A0</div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
Signed-off-by: Robert Yang &lt;<a href=3D"mailto:liezhi.yang@windriver.com"=
 target=3D"_blank">liezhi.yang@windriver.com</a>&gt;<br>
---<br>&lt;snip&gt;<br>
-- <br>
2.37.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58837): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58837" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58837</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/95781944/9247=
29" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
95781944/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000933d0d05f045160d--

