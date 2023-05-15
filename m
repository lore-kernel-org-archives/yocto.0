Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A7BC77B7F
	for <webhook@archiver.kernel.org>; Mon, 15 May 2023 01:46:19 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
 by mx.groups.io with SMTP id smtpd.web10.79445.1684115169103910573
 for <yocto@lists.yoctoproject.org>;
 Sun, 14 May 2023 18:46:09 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=chg/OiHr;
 spf=pass (domain: gmail.com, ip: 209.85.167.182, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-39212bf4ff0so6485123b6e.1
        for <yocto@lists.yoctoproject.org>; Sun, 14 May 2023 18:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684115168; x=1686707168;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5POl3rnHZGG3QzYeulH1zi7dYRor4grHyq+I/KTIXJc=;
        b=chg/OiHrMpdceCf3zxoLWyrZoYiYWu6OhVhmuxqOh18G++RZXWqClnh7vwJmILl5VC
         yoLBP+bEN/8MHKnpautrRJRj06rHEvSvmQ3baPF/2FNRX+/MYQtf/zdc2vzdv4zyr9pX
         4XdwtsUtyylwM6pJEBW4WWyJNQEsPhw+mBPht7XB+olCoyqL2ldDiDLUUBEQreO7FvYc
         kvm52BT5Se/OZnVK8azcZYbUOmKiFkmyaopuer74r8DUU9x5j05iCe3hP6jFdVy6Mgeu
         z3kNroTbaKia3lqfLCjnbPojYz7a+ANd+Nf/DslRNy05t195M/2s7gUb7D7fsw6HlM1F
         AeYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684115168; x=1686707168;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5POl3rnHZGG3QzYeulH1zi7dYRor4grHyq+I/KTIXJc=;
        b=a3D/nHn3dkKvPHnq7k2d4nnOgxsQQsMxVccu3uMCrGRzymmNkfCLp+1MXOdaq4SoE5
         y4cOwZIMNfdLpSdDt48gzNGAka5PTuwgRXnlPDZ1LGopib2P0MMkSSfIjNOXPe8MQuA9
         gECg5YfOoEdtf6CZt93wJ1iQfa5gw5Z3HwYUwXKZgn/BoNnpDBkIOwX2B+qu/DXBdLrq
         YAx72eBedmCyHWNr85//BcmR844A7KNOilZID9qzBzR4ff7jNaIKG1B2OwmRT5jOnxY8
         o9UnNWUJ4VBO4ARNfuXnXOm9iGiAjWyPhZazQGSmJycclL9+kK92svaB6yg27eewAWSE
         ++XA==
X-Gm-Message-State: AC+VfDyJCIQJoREhPgn+S8BEEePVsWx+jJNTHyuPcITxFWi05buBzwtF
	B7rHyA+7b5YSyI8UPCd5yWaBBisW4ecLjPvWNLqLMibs
X-Google-Smtp-Source: ACHHUZ4wCz8v7HxRR3KLbiWSd8ZSkyJYLsMXfRu1NYgFp5gOPxsAj9sVQHLha2BjnXNNN1k7+6lDMfd/CVb/E9MAOMI=
X-Received: by 2002:aca:1213:0:b0:394:45d5:2d92 with SMTP id
 19-20020aca1213000000b0039445d52d92mr7297388ois.22.1684115168001; Sun, 14 May
 2023 18:46:08 -0700 (PDT)
MIME-Version: 1.0
References: <CA+EiEZJrnJYYY7NMF521HemwaGKTFotkUdxC56w-qgYvm_j_Ng@mail.gmail.com>
 <CAMKF1sp+t6xO3ap5eDR-R=JNqbvcWwkxv1U3vWMSaqziBECGUw@mail.gmail.com> <CA+EiEZLfrymVYi=d3TOmnoej_pThBEdPOyfGQa-a3K7To02GaA@mail.gmail.com>
In-Reply-To: <CA+EiEZLfrymVYi=d3TOmnoej_pThBEdPOyfGQa-a3K7To02GaA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 14 May 2023 18:45:57 -0700
Message-ID: <CAMKF1sobF0FnUFUVcP+Jj+Gb3_=2Efz9gb5JRH32-k0DQcUrkg@mail.gmail.com>
Subject: Re: [yocto] LTS EOLs
To: Tom Isaacson <tom.isaacson@teknique.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000005981a805fbb19efc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 01:46:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60015

--0000000000005981a805fbb19efc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, May 14, 2023 at 5:58 PM Tom Isaacson <tom.isaacson@teknique.com>
wrote:

> The next LTS is being released the same month that the current LTSs go
> EOL? That seems a bit last minute. Or will the decision to extend
> Kirkstone be made earlier?


It should be happening earlier definitely

>
>
> On Mon, May 15, 2023 at 12:01=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wr=
ote:
> >
> > On Sun, May 14, 2023 at 4:55=E2=80=AFPM Tom Isaacson <tom.isaacson@tekn=
ique.com>
> wrote:
> > >
> > > I was just looking up the Yocto LTS and I found
> > > https://endoflife.date/yocto. It says:
> > > 3.1 'Dunfell' (LTS) Ends in 10 months (01 Apr 2024)
> > > 4.0 'Kirkstone' (LTS) Ends in 11 months (27 Apr 2024)
> > >
> > > Are these dates correct? If so, what's the point of the later LTS
> > > going EOL the same month as the previous one? There's not much point
> > > in upgrading.
> >
> > these dates are correct. Current LTS releases are for a period of 2
> > years, dunfell was extended
> > for another 2 years and became 4 years extended LTS, Kirkstone might
> > be extended for another 2 years too if the membership
> > decides to do so.
> >
> > >
> > > Is a new LTS planned?
> >
> > the next LTS is coming in April 2024. The duration for new LTS will be
> > 2 years or 4 perhaps
> > but this will be decided by membership hopefully soon.
> >
> > >
> > > Thanks.
> > >
> > > Tom Isaacson
> > >
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > Links: You receive all messages sent to this group.
> > > You automatically follow any topics you start or reply to.
> > > View/Reply Online (#60011):
> https://lists.yoctoproject.org/g/yocto/message/60011
> > > Mute This Topic: https://lists.yoctoproject.org/mt/98893130/1997914
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > >
>
>
>
> --
> Tom Isaacson
>

--0000000000005981a805fbb19efc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sun, May 14, 2023 at 5:58 PM Tom Isaacson &lt;<a href=3D=
"mailto:tom.isaacson@teknique.com">tom.isaacson@teknique.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">The next LTS is being released the=
 same month that the current LTSs go<br>
EOL? That seems a bit last minute. Or will the decision to extend<br>
Kirkstone be made earlier?</blockquote><div dir=3D"auto"><br></div><div dir=
=3D"auto">It should be happening earlier definitely=C2=A0</div><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex" dir=3D"auto"><br>
<br>
On Mon, May 15, 2023 at 12:01=E2=80=AFPM Khem Raj &lt;<a href=3D"mailto:raj=
.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On Sun, May 14, 2023 at 4:55=E2=80=AFPM Tom Isaacson &lt;<a href=3D"ma=
ilto:tom.isaacson@teknique.com" target=3D"_blank">tom.isaacson@teknique.com=
</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; I was just looking up the Yocto LTS and I found<br>
&gt; &gt; <a href=3D"https://endoflife.date/yocto" rel=3D"noreferrer" targe=
t=3D"_blank">https://endoflife.date/yocto</a>. It says:<br>
&gt; &gt; 3.1 &#39;Dunfell&#39; (LTS) Ends in 10 months (01 Apr 2024)<br>
&gt; &gt; 4.0 &#39;Kirkstone&#39; (LTS) Ends in 11 months (27 Apr 2024)<br>
&gt; &gt;<br>
&gt; &gt; Are these dates correct? If so, what&#39;s the point of the later=
 LTS<br>
&gt; &gt; going EOL the same month as the previous one? There&#39;s not muc=
h point<br>
&gt; &gt; in upgrading.<br>
&gt;<br>
&gt; these dates are correct. Current LTS releases are for a period of 2<br=
>
&gt; years, dunfell was extended<br>
&gt; for another 2 years and became 4 years extended LTS, Kirkstone might<b=
r>
&gt; be extended for another 2 years too if the membership<br>
&gt; decides to do so.<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; Is a new LTS planned?<br>
&gt;<br>
&gt; the next LTS is coming in April 2024. The duration for new LTS will be=
<br>
&gt; 2 years or 4 perhaps<br>
&gt; but this will be decided by membership hopefully soon.<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; Thanks.<br>
&gt; &gt;<br>
&gt; &gt; Tom Isaacson<br>
&gt; &gt;<br>
&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt; Links: You receive all messages sent to this group.<br>
&gt; &gt; You automatically follow any topics you start or reply to.<br>
&gt; &gt; View/Reply Online (#60011): <a href=3D"https://lists.yoctoproject=
.org/g/yocto/message/60011" rel=3D"noreferrer" target=3D"_blank">https://li=
sts.yoctoproject.org/g/yocto/message/60011</a><br>
&gt; &gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/988=
93130/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.org/mt/98893130/1997914</a><br>
&gt; &gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.o=
rg" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; &gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/un=
sub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/=
yocto/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">ra=
j.khem@gmail.com</a>]<br>
&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt;<br>
<br>
<br>
<br>
-- <br>
Tom Isaacson<br>
</blockquote></div></div>

--0000000000005981a805fbb19efc--

