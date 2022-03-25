Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49D8BC433F5
	for <webhook@archiver.kernel.org>; Fri, 25 Mar 2022 01:13:55 +0000 (UTC)
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
 [209.85.215.177])
 by mx.groups.io with SMTP id smtpd.web12.650.1648170834734606873
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Mar 2022 18:13:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=W0+5Kr5d;
 spf=pass (domain: gmail.com, ip: 209.85.215.177,
 mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f177.google.com with SMTP id k14so5243155pga.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 24 Mar 2022 18:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nQshQ79iOcPJA1MENGiDlqpjuq8zYK1PVsttgSck5I0=;
        b=W0+5Kr5dQygHwJLGRPi8ojuAnMosuKWeVvAQU9GOSZsvmEypSASCiTA6aAlUkpdjnO
         4YJG3+vcK+2+sFdIO32iEGv7vFLYaBX092FpQgm9qr7Zc2N5pupxbHl/GP17s6QlU1wS
         c6Z8rn8RfxI3Pv1ul2taVjD/W8Ry8eFGh2W6/kf0IdhuS5jhQTBN4+EvqxlVckMHPRN8
         0ZZM1/fXWpdwESCbVif/dt5uHcsj31jj71NLi672TRKK5QGH4rOYRiZs7RPN1FQ/GnqR
         3sF5QPdE5YAPLiDqAuLSNTp7bGbsbjzzmdkrc0zSVbB22TF3kOcl/cbBmj7zExwDXUrd
         skhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nQshQ79iOcPJA1MENGiDlqpjuq8zYK1PVsttgSck5I0=;
        b=g/V0vj0k8nIAvu/1IJ06Nn/R09t79UxDC2HnWd1JrLPBMzgdd4KylyM2UtfotJw30N
         ckQPPZGEqUA/wgJF/At1TFFgsCJ1s70zdczZe1/DQV2xnMtDMWoQm74Cdmr/GoDdX/L/
         0hPqA2kIzgRzTD8jtDQm1y+HAWDRFXzLYGM4MXAMuuXEgXA2jDSu1WGgcv4EEShSqo4K
         hbqprC5M/f26lycPxwgHJfz/wqr3H/YdiykCWOVY/vafTyGvt4vMSchnO11bACJQwbc8
         eI5qgYdZ+kkh9+FVtyFnAuoC2t3nPUXDWiFvrsG5eRhlNXwgUc2uVsw3SR8dFDsFtQqN
         qm8Q==
X-Gm-Message-State: AOAM531K8wlRZsxcuSAZh4B+THZQpJE1mzDf+wZD/6bJaCwv7seRJpCa
	MNw/IuSO+Stk24rwoxrhxpwGM2ByGYl+cKju1fU=
X-Google-Smtp-Source: 
 ABdhPJz9cWP2ScpqPwJ4WiW7Kpyv8CRbyaeNXnpVPtDkGgiS5jEoweeR23Qsg52bC9Wzhvmj+02c3AqQ24CiaZ8Thjc=
X-Received: by 2002:a65:5a06:0:b0:375:81c9:74b1 with SMTP id
 y6-20020a655a06000000b0037581c974b1mr6091129pgs.122.1648170834058; Thu, 24
 Mar 2022 18:13:54 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.16DF5F8906D065B9.27042@lists.yoctoproject.org>
 <a789cfc1a41ac9b17dc81efb7aab3b56716a64bb.camel@linuxfoundation.org>
In-Reply-To: 
 <a789cfc1a41ac9b17dc81efb7aab3b56716a64bb.camel@linuxfoundation.org>
From: Tim Orling <ticotimo@gmail.com>
Date: Thu, 24 Mar 2022 18:02:42 -0700
Message-ID: 
 <CANx9H-DwXcaNigE9JsR7NXRznmRXkdyiknQcMBcUYJYpj+Wy1Q@mail.gmail.com>
Subject: Re: [yocto] CVE patch updates
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: steven.monsees@baesystems.com,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000017e1a205db00ad35"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Mar 2022 01:13:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56558

--00000000000017e1a205db00ad35
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 24, 2022 at 2:45 PM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Thu, 2022-03-24 at 16:56 +0000, Monsees, Steven C (US) via
> lists.yoctoproject.org wrote:
> >
> > I am currently building in cve-check to see what is reported, and I was
> curious
> > if Yocto might provide any CVE based patch repositories ?
> >
> > Is there a yocto page somewhere that goes over this side of things ?,
> > I did not see much in the mega-manual=E2=80=A6 I am running on zeus bas=
ed
> platforms (for
> > both armarch64 and x86_64).
> >
>
> You'll see output of cve-check on the yocto-security list for layers that
> are
> still in maintenance:
>
> https://lists.yoctoproject.org/g/yocto-security/messages
>
> although zeus is out of maintenance.
>
> We merge CVE fixes to the branches that are in maintenance.
>
> A graph showing the data over time:
>
>
> https://docs.google.com/spreadsheets/d/e/2PACX-1vRgNISmH0Ditf0bRtSezeR2Xs=
gKIiSFJKF6KJUHpnzocNGzvKZbuSDKfmV3n64BFXDRqElBSJnhHtG4/pubchart?oid=3D19933=
75488&format=3Dinteractive
>

Steven, if you haven=E2=80=99t already, you should subscribe to
https://lists.yoctoproject.org/g/yocto-security

Emails are sent out, usually on Sunday. If you see a CVE that interests
you=E2=80=A6 grab it and fix it.

This is mostly a community effort. There is no special dedicated squad of
security champions.


> Cheers,
>
> Richard
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56555):
> https://lists.yoctoproject.org/g/yocto/message/56555
> Mute This Topic: https://lists.yoctoproject.org/mt/90004034/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000017e1a205db00ad35
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Mar 24, 2022 at 2:45 PM Richard Purdie &lt;<a href=
=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundati=
on.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;paddi=
ng-left:1ex;border-left-color:rgb(204,204,204)">On Thu, 2022-03-24 at 16:56=
 +0000, Monsees, Steven C (US) via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a> wrote:<br>
&gt; =C2=A0=C2=A0<br>
&gt; I am currently building in cve-check to see what is reported, and I wa=
s curious<br>
&gt; if Yocto might provide any CVE based patch repositories ?<br>
&gt; =C2=A0<br>
&gt; Is there a yocto page somewhere that goes over this side of things ?,<=
br>
&gt; I did not see much in the mega-manual=E2=80=A6 I am running on zeus ba=
sed platforms (for<br>
&gt; both armarch64 and x86_64).<br>
&gt; <br>
<br>
You&#39;ll see output of cve-check on the yocto-security list for layers th=
at are<br>
still in maintenance:<br>
<br>
<a href=3D"https://lists.yoctoproject.org/g/yocto-security/messages" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto-secur=
ity/messages</a><br>
<br>
although zeus is out of maintenance.<br>
<br>
We merge CVE fixes to the branches that are in maintenance.<br>
<br>
A graph showing the data over time:<br>
<br>
<a href=3D"https://docs.google.com/spreadsheets/d/e/2PACX-1vRgNISmH0Ditf0bR=
tSezeR2XsgKIiSFJKF6KJUHpnzocNGzvKZbuSDKfmV3n64BFXDRqElBSJnhHtG4/pubchart?oi=
d=3D1993375488&amp;format=3Dinteractive" rel=3D"noreferrer" target=3D"_blan=
k">https://docs.google.com/spreadsheets/d/e/2PACX-1vRgNISmH0Ditf0bRtSezeR2X=
sgKIiSFJKF6KJUHpnzocNGzvKZbuSDKfmV3n64BFXDRqElBSJnhHtG4/pubchart?oid=3D1993=
375488&amp;format=3Dinteractive</a><br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Steven, if you h=
aven=E2=80=99t already, you should subscribe to=C2=A0<div><a href=3D"https:=
//lists.yoctoproject.org/g/yocto-security">https://lists.yoctoproject.org/g=
/yocto-security</a></div><div dir=3D"auto"><br></div><div dir=3D"auto">Emai=
ls are sent out, usually on Sunday. If you see a CVE that interests you=E2=
=80=A6 grab it and fix it.</div><div dir=3D"auto"><br></div><div dir=3D"aut=
o">This is mostly a community effort. There is no special dedicated squad o=
f security champions.</div><div dir=3D"auto"><br></div></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px=
;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204=
)"><br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56555): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56555" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56555</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/90004034/9247=
29" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
90004034/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000017e1a205db00ad35--

