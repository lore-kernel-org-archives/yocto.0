Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70955C3DA4A
	for <webhook@archiver.kernel.org>; Tue, 30 Jul 2024 00:23:06 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web11.7142.1722298983898698051
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Jul 2024 17:23:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IBWU6UNE;
 spf=pass (domain: gmail.com, ip: 209.85.218.42, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a7aa4ca9d72so524559466b.0
        for <yocto@lists.yoctoproject.org>; Mon, 29 Jul 2024 17:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722298982; x=1722903782; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RHIhYLNWuHEIEwdqn6uJAnMNVw/1SZTYHowsj8SDwh4=;
        b=IBWU6UNEB8fARAAv4RYN+4xfkL85s6MfcqoZn2PeGIWoS0D39s/89SwgV8C28US4vH
         uiIfK0Gx9PNrPKulMIVjwCZdQP5h2yjBHjsIFqAk75e94cpBV93brv2wwMCpArKsdcAu
         xEyKKGxPOtUtIqsBc2bODPBp0X/XGY6hPAFNER8hQdVurnKgaWyn/kWA7qTLn8juKI/J
         7fIoN3a6ejj1Sftz8aGhVffrDzFFz9H+8f5wHuEH7AY4z3uYKIGvftMTHHy6tP32Q3g+
         FNqMtsF4srV9xMha02v3o1IOFJBLttk3vw6mzj8l/OA5XAKwT+gTpF5RCOPZLr6s/PKq
         kwFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722298982; x=1722903782;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RHIhYLNWuHEIEwdqn6uJAnMNVw/1SZTYHowsj8SDwh4=;
        b=WorV6V5ELsnX+1y8oo1R7607kik1zs7rBaD4Rc6clU5D9CoVKN0iGb+UM0mBITUuIn
         Qvg8Kmvk1ZIcAdIwVK5kgONIMTFDGC0KAGNffsmc56MX2dl6oxyXb13HhkVNEkfYEoui
         hqu5PnfJjaTGeqpI9EGU79yxEEP2D5ctWqZrl04BX9H+WrMNBs6xq3Fw7whrBdMWzaCa
         SNPq/Ab2uDzCBXCQ/clDTq6uwg/AauJm4QtKBqWH7KPkeb/vStGnTunoffWpN/A+ZtRr
         dbrecJtkzFuXjrkXUuTjPItC8bvOrUp55wLtB7PpDaKPzOQAHI2YnLSPz06fz8aZl8N6
         +wBA==
X-Gm-Message-State: AOJu0YzUQoq33ROiQq/K4oQD9uSMciW3y/fbZKBd56+e2vSUanWK7yyY
	nkx2Ko5Dq11aLbNzm5cuvSllMXhZBbDKQ5TrDemCAD83c8GNZYsL3B4gpAawa0eeD0d1hHvGxVC
	X1m/19BaG8zhBqp9ujaNkhdZKjj0=
X-Google-Smtp-Source: AGHT+IHAMURoXWveVTaEaILc5Txf+hZQflEb5Q3qNBZrtrK18WL0Ma5oohWS5l8/l+bV/oHcPaRhxA0q07WECdlU32E=
X-Received: by 2002:a17:907:1b0a:b0:a7a:a46e:dc37 with SMTP id
 a640c23a62f3a-a7d401856b1mr506272666b.57.1722298981858; Mon, 29 Jul 2024
 17:23:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBnjOA=_vu+1uEq16Dtq_gGuVSdGWsRh88k9SK_1OZUwGFg@mail.gmail.com>
 <CANNYZj-SH92hn5goJ5N+kZq-3X8TNL9=azsqoVp+2fP6zfcp-w@mail.gmail.com>
In-Reply-To: <CANNYZj-SH92hn5goJ5N+kZq-3X8TNL9=azsqoVp+2fP6zfcp-w@mail.gmail.com>
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Tue, 30 Jul 2024 05:52:50 +0530
Message-ID: <CAPJWBng9ENBtLrT6tKx=bAevU_y87-a=zKNfeeXdkU-rgWP4KA@mail.gmail.com>
Subject: Re: [yocto] Update glib-2.0 from 2.7 to 2.8
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000002c557061e6bfbfe"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 00:23:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63591

--00000000000002c557061e6bfbfe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Well, I seem to be facing issue with the bluez stack. Though it builds
well, functionality wise I think it doesn=E2=80=99t  work as intended. So I=
 wanted
to try building it on the board using the source code. Now the source code
wants glib-2 2.8 .

Also, on a second thought how do you guys work your way around in case a
particular package is outdated? Really curious!

Thanks

On Tue, 30 Jul 2024 at 12:03=E2=80=AFAM, Alexander Kanavin <alex.kanavin@gm=
ail.com>
wrote:

> You can try, but this is likely to unravel into a mass scale upgrade
> of half of oe-core recipes, and you're on your own trying to make it
> work. I would suggest simply moving to a tagged master milestone
> rather.
>
> Where is the requirement coming from?
>
> Alex
>
> On Mon, 29 Jul 2024 at 06:46, MOHAMMED HASSAN via
> lists.yoctoproject.org
> <hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Hi guys,
> > I have kirkstone SDK with me that supports glib-2.0 version 2.70. I
> currently require version 2.80 which I noticed is available in the main
> branch of git. Do you think pulling the recipes and manually replacing th=
e
> file will resolve my issue. Or any other good methods I can try?
> >
> > Thanks
> > Hassan
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#63580):
> https://lists.yoctoproject.org/g/yocto/message/63580
> > Mute This Topic: https://lists.yoctoproject.org/mt/107603886/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--00000000000002c557061e6bfbfe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Well, I seem to be facing issue with the bluez stack. Tho=
ugh it builds well, functionality wise I think it doesn=E2=80=99t =C2=A0wor=
k as intended. So I wanted to try building it on the board using the source=
 code. Now the source code wants glib-2 2.8 .=C2=A0</div><div dir=3D"auto">=
<br></div><div dir=3D"auto">Also, on a second thought how do you guys work =
your way around in case a particular package is outdated? Really curious!</=
div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks</div><div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 30 Jul=
 2024 at 12:03=E2=80=AFAM, Alexander Kanavin &lt;<a href=3D"mailto:alex.kan=
avin@gmail.com">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1=
px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,2=
04)">You can try, but this is likely to unravel into a mass scale upgrade<b=
r>
of half of oe-core recipes, and you&#39;re on your own trying to make it<br=
>
work. I would suggest simply moving to a tagged master milestone<br>
rather.<br>
<br>
Where is the requirement coming from?<br>
<br>
Alex<br>
<br>
On Mon, 29 Jul 2024 at 06:46, MOHAMMED HASSAN via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a><br>
&lt;hassanchattarki=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" t=
arget=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi guys,<br>
&gt; I have kirkstone SDK with me that supports glib-2.0 version 2.70. I cu=
rrently require version 2.80 which I noticed is available in the main branc=
h of git. Do you think pulling the recipes and manually replacing the file =
will resolve my issue. Or any other good methods I can try?<br>
&gt;<br>
&gt; Thanks<br>
&gt; Hassan<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#63580): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/63580" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/63580</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/10760388=
6/1686489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/107603886/1686489</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">ale=
x.kanavin@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div></div>

--00000000000002c557061e6bfbfe--

