Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7B38C433F5
	for <webhook@archiver.kernel.org>; Wed, 27 Apr 2022 08:19:06 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web08.5767.1651047536441287227
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Apr 2022 01:18:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Jsb/tvNR;
 spf=pass (domain: gmail.com, ip: 209.85.208.174,
 mailfrom: quaresma.jose@gmail.com)
Received: by mail-lj1-f174.google.com with SMTP id bn33so1628852ljb.6
        for <yocto@lists.yoctoproject.org>;
 Wed, 27 Apr 2022 01:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k36YX+1WvQnyPrfp72T1n0GUFsY1FDBTmWPw370rrw8=;
        b=Jsb/tvNRp/1ZsrTuTcOAZp9kU4qW20f09tMdi1CTbuza8ZI+n7NBgYY9R2nCzAcU+3
         CDMIA4So3Km+a6Ux6g6OpIwm4NP9nVEFEiOLsKXlMJNGlbh6oBWMRX4FsK3fSp9TwY9+
         ALPyNp8h1qCQTers5nUk/cxN8CJUwQeuhif1JHy1Kh2EB4SbY/pTgCuERO/IK83yPEhn
         uJRAhrz9VRcPA5f3vqly5P/7aOwz4MCXBV08wcIasbovxDRh/ED44taYrAT/l33VoTt3
         gU8uAkOJ80QA04bbPP6+DOwuSpkBqjkJwttyS0bF5zjUjbINgoBrYidbjP1DqM9KsgDS
         I/Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k36YX+1WvQnyPrfp72T1n0GUFsY1FDBTmWPw370rrw8=;
        b=kxQawd+XqTVUnMpcN93oG74PIUxBdYW/dMeormBLDC6U17B2zGDC5TWQGWqyssZUC6
         va001Hoko7QSskDMfoCSeO4h3RxKp9i32NSSYnAofFwCE5MpeHMhRQGJyTsPZPqUp4gu
         hSf0nW3IfD5PWS1nRKUO29rSjbB45hfIj24kxen5O3X/HK7QP2kOL0Zh1nymUVOogNoe
         GTyid23gFv1S5eHfw9A2n0/90minrxQ/4bVXmujpPu0lMm/F6jUdjW+Q16AixAbx++3L
         aPTs+2fTryE3PDLi7GirM7aN42v5IsemMu53BwTjrwu6T+1EsuY3lGAkv8zwNUMem+x2
         +3kA==
X-Gm-Message-State: AOAM531zcauVE3TPJU2Lhh44eBzMfIvWLftUDt87WQeN8EpjcXJ2DUER
	N59zh4jKBIY/XnZEu+2J9+2/6LuMsZB3iOqTUxc=
X-Google-Smtp-Source: 
 ABdhPJx9AHO7+XgX/sIDwGFr05/KdKh7abKME80F7YQOnt/r14CWezwKqHfPJjWzddL/5MamnSM+hEMpv6bPz0M3Zqk=
X-Received: by 2002:a2e:bd83:0:b0:24e:fe7b:7235 with SMTP id
 o3-20020a2ebd83000000b0024efe7b7235mr14770084ljq.409.1651047534602; Wed, 27
 Apr 2022 01:18:54 -0700 (PDT)
MIME-Version: 1.0
References: 
 <DM5PR1101MB236176E376BD554365050E72B9FA9@DM5PR1101MB2361.namprd11.prod.outlook.com>
 <90b05148-5215-584e-0080-24cd411b2ba8@sancloud.com>
In-Reply-To: <90b05148-5215-584e-0080-24cd411b2ba8@sancloud.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Wed, 27 Apr 2022 09:18:43 +0100
Message-ID: 
 <CANPvuR=Sp+tuOAmFRzw207e_1+jNzOyR1AST9J=jh7_KgsOS2Q@mail.gmail.com>
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 4.0 is Released
To: Paul Barker <paul.barker@sancloud.com>
Cc: "Lee, Chee Yang" <chee.yang.lee@intel.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ceaddb05dd9e759b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Apr 2022 08:19:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56906

--000000000000ceaddb05dd9e759b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Congratulation to everyone involved

Paul Barker <paul.barker@sancloud.com> escreveu no dia quarta, 27/04/2022
=C3=A0(s) 09:08:

> On 27/04/2022 02:49, Lee, Chee Yang wrote:
> > Hi
> >
> > We are pleased to announce the Yocto Project 4.0 Release is now
> > available for download.
>
> Congratulations on another release everyone!
>
> I noticed one minor issue in the release notes:
>
> >
> > - The Yocto Project now allows you to reuse the Shared State cache from
> >
> >    its autobuilder. If the network connection between our server and yo=
ur
> >
> >    machine is faster than you would build recipes from source, you can
> >
> >    try to speed up your builds by using such Shared State and Hash
> >
> >    Equivalence by setting::
> >
> >       BB_SIGNATURE_HANDLER =3D "OEEquivHash"
> >
> >       BB_HASHSERVE =3D "auto"
> >
> >       BB_HASHSERVE_UPSTREAM =3D "typhoon.yocto.io:8687"
> >
> >       SSTATE_MIRRORS ?=3D file://.*
> >
> https://sstate.yoctoproject.org/&YOCTO_DOC_VERSION;/PATH;downloadfilename=
=3DPATH
> > <file://.*%20https:/
> sstate.yoctoproject.org/&YOCTO_DOC_VERSION;/PATH;downloadfilename=3DPATH>
>
> It looks like &YOCTO_DOC_VERSION wasn't substituted for 4.0 above.
>

In the HTML page it is fine, the &YOCTO_DOC_VERSION is 4.0
https://docs.yoctoproject.org/4.0/migration-guides/migration-4.0.html#relea=
se-notes-for-4-0-kirkstone

In the dev version the &YOCTO_DOC_VERSION is not replaced by dev
https://docs.yoctoproject.org/dev/migration-guides/migration-4.0.html#relea=
se-notes-for-4-0-kirkstone

Jose


>
> Thanks,
>
> --
> Paul Barker
> Principal Software Engineer
> SanCloud Ltd
>
> e: paul.barker@sancloud.com
> w: https://sancloud.co.uk/
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56905):
> https://lists.yoctoproject.org/g/yocto/message/56905
> Mute This Topic: https://lists.yoctoproject.org/mt/90722660/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000ceaddb05dd9e759b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div><div>Congratulation to e=
veryone involved</div><br class=3D"gmail-Apple-interchange-newline"></div><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Paul Barker=
 &lt;<a href=3D"mailto:paul.barker@sancloud.com">paul.barker@sancloud.com</=
a>&gt; escreveu no dia quarta, 27/04/2022 =C3=A0(s) 09:08:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">On 27/04/2022 02:49, Lee, Chee Y=
ang wrote:<br>
&gt; Hi<br>
&gt; <br>
&gt; We are pleased to announce the Yocto Project 4.0 Release is now <br>
&gt; available for download.<br>
<br>
Congratulations on another release everyone!<br>
<br>
I noticed one minor issue in the release notes:<br>
<br>
&gt; <br>
&gt; - The Yocto Project now allows you to reuse the Shared State cache fro=
m<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 its autobuilder. If the network connection between our se=
rver and your<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 machine is faster than you would build recipes from sourc=
e, you can<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 try to speed up your builds by using such Shared State an=
d Hash<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 Equivalence by setting::<br>
&gt; <br>
&gt;=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 BB_SIGNATURE_HANDLER =3D &quot;OEEquivH=
ash&quot;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 BB_HASHSERVE =3D &quot;auto&quot;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 BB_HASHSERVE_UPSTREAM =3D &quot;<a href=
=3D"http://typhoon.yocto.io:8687" rel=3D"noreferrer" target=3D"_blank">typh=
oon.yocto.io:8687</a>&quot;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 SSTATE_MIRRORS ?=3D file://.* <br>
&gt; <a href=3D"https://sstate.yoctoproject.org/&amp;YOCTO_DOC_VERSION;/PAT=
H;downloadfilename=3DPATH" rel=3D"noreferrer" target=3D"_blank">https://sst=
ate.yoctoproject.org/&amp;YOCTO_DOC_VERSION;/PATH;downloadfilename=3DPATH</=
a> <br>
&gt; &lt;file://.*%20https:/<a href=3D"http://sstate.yoctoproject.org/&amp;=
YOCTO_DOC_VERSION;/PATH;downloadfilename=3DPATH" rel=3D"noreferrer" target=
=3D"_blank">sstate.yoctoproject.org/&amp;YOCTO_DOC_VERSION;/PATH;downloadfi=
lename=3DPATH</a>&gt;<br>
<br>
It looks like &amp;YOCTO_DOC_VERSION wasn&#39;t substituted for 4.0 above.<=
br></blockquote><div>=C2=A0<br></div><div>In the HTML page it is fine, the =
&amp;YOCTO_DOC_VERSION is 4.0<br><a href=3D"https://docs.yoctoproject.org/4=
.0/migration-guides/migration-4.0.html#release-notes-for-4-0-kirkstone">htt=
ps://docs.yoctoproject.org/4.0/migration-guides/migration-4.0.html#release-=
notes-for-4-0-kirkstone</a><br><br>In the dev version the &amp;YOCTO_DOC_VE=
RSION is not replaced by dev<br><a href=3D"https://docs.yoctoproject.org/de=
v/migration-guides/migration-4.0.html#release-notes-for-4-0-kirkstone">http=
s://docs.yoctoproject.org/dev/migration-guides/migration-4.0.html#release-n=
otes-for-4-0-kirkstone</a><br></div><div><br></div><div>Jose</div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Thanks,<br>
<br>
-- <br>
Paul Barker<br>
Principal Software Engineer<br>
SanCloud Ltd<br>
<br>
e: <a href=3D"mailto:paul.barker@sancloud.com" target=3D"_blank">paul.barke=
r@sancloud.com</a><br>
w: <a href=3D"https://sancloud.co.uk/" rel=3D"noreferrer" target=3D"_blank"=
>https://sancloud.co.uk/</a><br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56905): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56905" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56905</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/90722660/5052=
612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/90722660/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Best regards,<div><br>Jos=C3=A9=
 Quaresma</div></div></div></div>

--000000000000ceaddb05dd9e759b--

