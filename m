Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50FBDC6FD1D
	for <webhook@archiver.kernel.org>; Thu, 30 Mar 2023 14:41:42 +0000 (UTC)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
 by mx.groups.io with SMTP id smtpd.web10.26974.1680187297156930777
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Mar 2023 07:41:37 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=agMgBKLh;
 spf=pass (domain: gmail.com, ip: 209.85.222.41, mailfrom: quaresma.jose@gmail.com)
Received: by mail-ua1-f41.google.com with SMTP id 89so14016411uao.0
        for <yocto@lists.yoctoproject.org>; Thu, 30 Mar 2023 07:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680187296; x=1682779296;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9hmyqvDQD1akAyVCnL3ZOFYWqNk0FIFK5nMaqbr9Qrc=;
        b=agMgBKLh6dFLRdEjrNAvo22EtkvLkvAdIU4k6bvW7oR6VU8DWUQ15P7Zi20+Ty3Kn/
         qcqX2fadvzgjUopXd+i6i9JZriyNSRFPcktKrYG9SqRULvjiULH+w5vSn+PCbnb3alHp
         rjGGBIln1fWxi6lB3luNPz47fqp+Wz6dx4ZJC2wytWbMHIDlPNsdkyDJChQIx/eaVCp7
         +OMCDAVN8vi2RQTgOKzHyWAPNWjeVAA+iS7TbMbNvXXhJS9H/3n7xh7WX68TMhJFabMm
         NUpMfEk+W4L2zwBG3fOn5FfHP7HfVJ8YGq73rIlcd9Bu+nch7mgNY/VqQsjSOExIb2uu
         pOWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680187296; x=1682779296;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9hmyqvDQD1akAyVCnL3ZOFYWqNk0FIFK5nMaqbr9Qrc=;
        b=GiDjYiEn8eZQnaXbOJu37lmsxvEjIm7PtIAIN1X1mPXKFa5iqDSdqCgW9a+ui0aOZl
         8XkH4GgkRIesEgcAgGLM6yZmWH+cnTewuufyW1F8NngPYPuR6ROByBFBgksDj9CLgx+k
         A6gIY2eddXjlaitXJfxO4cJc+ASTd3PxONGhFBOy/RLjwmIg38RWQQ6moLNS8r/OTRZb
         8Glt1A/Zq0BI3RcTEKRB4P3fuDGML+AnTS+H9PWjEFR6clmNkZs7DXJoa1NIGVevAl0R
         8/KieCiXcx9FQf99kcODIRtbGbxUjlqNs5pjXOUwes9qpAJuQMz+cSi9/yAgOdp5mqkY
         IaBw==
X-Gm-Message-State: AAQBX9e3KpXlJIpEnG6Xx4RyFSMzaBKVYC7saxu4k6NtQixRFgyA1UqE
	ZuzBw68wsHwyThTF5zXNpZxmdt7hE9q9piWH+ns=
X-Google-Smtp-Source: AKy350Z1YMRoA5WMVao25XgiugZOO+CrKslCU62nWgmgr+JYt0vFagotDy6UhdtjRHiyVW+5qHJzJHX7LCIdnsvsIqY=
X-Received: by 2002:ab0:3c15:0:b0:68a:7224:2034 with SMTP id
 t21-20020ab03c15000000b0068a72242034mr16462651uaw.0.1680187296124; Thu, 30
 Mar 2023 07:41:36 -0700 (PDT)
MIME-Version: 1.0
References: <CANPvuRmPDaqPUDK+Qn-iMQ7i=gqz_Jgz6rMef4o0Yj4+0u518g@mail.gmail.com>
 <CANNYZj9VGZ+-m77Brq=1jCt_+LyyUbadx6+WopzyVa-ED4Ft7A@mail.gmail.com>
 <4275a1007b94c03891f304db0b9926620fe52457.camel@gmail.com> <CANNYZj-m6UdUunpRQES7jmMtTKat-uhuv7-gnAh_7UwKMf5eVQ@mail.gmail.com>
In-Reply-To: <CANNYZj-m6UdUunpRQES7jmMtTKat-uhuv7-gnAh_7UwKMf5eVQ@mail.gmail.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Thu, 30 Mar 2023 15:41:25 +0100
Message-ID: <CANPvuRk7AFx9cOXkYjmaTop9Z=tintcnZ+Nwx5CMkFWf1HLE2Q@mail.gmail.com>
Subject: Re: [RFC][yocto][meta-lts-mixins][kirkstone/go] Backport golang from
 master to kirkstone
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: adrian.freihofer@gmail.com, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, Jose Quaresma <jose.quaresma@foundries.io>, 
	Ricardo Salveti <ricardo@foundries.io>, Bruce Ashfield <bruce.ashfield@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000f114ed05f81f16dd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Mar 2023 14:41:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59551

--000000000000f114ed05f81f16dd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I already did some tests using the meta-virt master branch with
the oe-core kirkstone and this version of the meta-lts-mixins.
Our stack on meta-virt is not very big but what I tested looks good.

On meta-virt I only need to add kirk compatibility:
LAYERSERIES_COMPAT_virtualization-layer +=3D "kirkstone"

On meta-lts-mixins I need to change the meta-virt busybox oe-core tracked
version:
PV:pn-busybox-initrd =3D "1.35.0"

But maybe I need to test this with a large set of recipes in the meta-virt
master branch.
I will add Bruce and I take the opportunity to ask him what he thinks of
this approach?

Jose


Alexander Kanavin <alex.kanavin@gmail.com> escreveu no dia quinta,
30/03/2023 =C3=A0(s) 14:42:

> That may require an unknown amount of fixing in the recipes and
> classes. Existing code is not designed for co-existing with a
> different version of itself, and so everything needs to be versioned
> and cleanly separated. But in theory it's possible.
>
> Alex
>
> On Thu, 30 Mar 2023 at 15:15, <adrian.freihofer@gmail.com> wrote:
> >
> > Hi Alex, hi Jos=C3=A9
> >
> > The meta-lts-mixin layers for dunfell have a major disadvantage:
> > Replacing the go tool-chain breaks more or less all recipes from meta-
> > virtualization and potentially other layers.
> >
> > I think with go it should be possible to have a meta-lts-mixin layer
> > which adds support for additional go versions instead of overriding the
> > version provided by poky. That would potentially allow to use poky on
> > the kirkstone branch and meta-virtualization on a newer branch on the
> > long run.
> >
> > Would it be possible to add e.g. a copy of the go.bbclass as well as
> > the go recipes from a recent poky version in a way it does not override
> > the go stack provided by poky?
> > As an example: Would it be possible to add a go1-19.bbclass to the
> > meta-meta-lts-mixin layer? This would allow to add also a newer Docker
> > recipe which inherits go1-19 instead of just go to the meta-lts-mixin
> > layers without breaking anything from poky or meta-virtualization.
> >
> > I already tried to share my thoughts here:
> >
> https://lists.openembedded.org/g/openembedded-core/message/178146?p=3D%2C=
%2C%2C20%2C0%2C0%2C0%3A%3Acreated%2C0%2Cgolang%2C20%2C2%2C0%2C97444547
> >
> > Best regards,
> > Adrian
> >
> >
> > On Thu, 2023-03-30 at 12:08 +0200, Alexander Kanavin wrote:
> > > I think I pushed the work directly to the respecitve branches in
> > > meta-lts-mixins. I'd suggest you send the patches here, and we'll
> > > sort
> > > out the technicalities (I can publish the branch on
> > > git.yoctoproject.org, or maybe you'll be able to push directly as
> > > well, provided you also send the patches here). There's no
> > > autobuilder
> > > testing; for mixin items the contributors are trusted :)
> > >
> > > Alex
> > >
> > >
> > > On Thu, 30 Mar 2023 at 11:20, Jose Quaresma <quaresma.jose@gmail.com>
> > > wrote:
> > > >
> > > > Hi,
> > > >
> > > > The golang version in kirkstone is the 1.17 and because of this is
> > > > not possible to use some recent version of other projects like
> > > > docker that requires a more recent version of the language.
> > > >
> > > > I have a kirkstone branch [1] available at Foundries.io with the
> > > > golang backported from the oe-core master that I liked to submit to
> > > > the meta-lts-mixins [2].
> > > > Alex is the maintainer of the dunfell golang backport and this
> > > > kirkstone branch is based on that version.
> > > >
> > > > Would that be interesting for the project? How should I proceed?
> > > >
> > > > [1]
> > > > https://github.com/foundriesio/meta-lts-mixins/tree/kirkstone/go
> > > > [2] https://git.yoctoproject.org/meta-lts-mixins
> > > >
> > > > Jose
> > > >
> > > > --
> > > > Best regards,
> > > >
> > > > Jos=C3=A9 Quaresma
> > >
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > Links: You receive all messages sent to this group.
> > > View/Reply Online (#59547):
> > > https://lists.yoctoproject.org/g/yocto/message/59547
> > > Mute This Topic: https://lists.yoctoproject.org/mt/97946990/4454582
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe:
> > > https://lists.yoctoproject.org/g/yocto/unsub [
> adrian.freihofer@gmail.com
> > > ]
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > >
> >
>


--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000f114ed05f81f16dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br>=C2=A0<br>I already did some tests using the meta-v=
irt master branch with<div>the oe-core kirkstone and this version of the=C2=
=A0meta-lts-mixins.</div><div>Our stack on meta-virt is not very big but wh=
at I tested looks=C2=A0good.<br><br>On meta-virt I only need to add kirk co=
mpatibility:<br>LAYERSERIES_COMPAT_virtualization-layer +=3D &quot;kirkston=
e&quot;<br><br>On=C2=A0meta-lts-mixins I need to change the meta-virt=C2=A0=
busybox oe-core tracked version:<br>PV:pn-busybox-initrd =3D &quot;1.35.0&q=
uot;<br><br>But maybe I need to test this with a large set of recipes in th=
e meta-virt master branch.<br>I will add Bruce=C2=A0and I take the opportun=
ity to ask him what he thinks of this approach?<br><br>Jose<br><br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Al=
exander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@=
gmail.com</a>&gt; escreveu no dia quinta, 30/03/2023 =C3=A0(s) 14:42:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">That may require an u=
nknown amount of fixing in the recipes and<br>
classes. Existing code is not designed for co-existing with a<br>
different version of itself, and so everything needs to be versioned<br>
and cleanly separated. But in theory it&#39;s possible.<br>
<br>
Alex<br>
<br>
On Thu, 30 Mar 2023 at 15:15, &lt;<a href=3D"mailto:adrian.freihofer@gmail.=
com" target=3D"_blank">adrian.freihofer@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Alex, hi Jos=C3=A9<br>
&gt;<br>
&gt; The meta-lts-mixin layers for dunfell have a major disadvantage:<br>
&gt; Replacing the go tool-chain breaks more or less all recipes from meta-=
<br>
&gt; virtualization and potentially other layers.<br>
&gt;<br>
&gt; I think with go it should be possible to have a meta-lts-mixin layer<b=
r>
&gt; which adds support for additional go versions instead of overriding th=
e<br>
&gt; version provided by poky. That would potentially allow to use poky on<=
br>
&gt; the kirkstone branch and meta-virtualization on a newer branch on the<=
br>
&gt; long run.<br>
&gt;<br>
&gt; Would it be possible to add e.g. a copy of the go.bbclass as well as<b=
r>
&gt; the go recipes from a recent poky version in a way it does not overrid=
e<br>
&gt; the go stack provided by poky?<br>
&gt; As an example: Would it be possible to add a go1-19.bbclass to the<br>
&gt; meta-meta-lts-mixin layer? This would allow to add also a newer Docker=
<br>
&gt; recipe which inherits go1-19 instead of just go to the meta-lts-mixin<=
br>
&gt; layers without breaking anything from poky or meta-virtualization.<br>
&gt;<br>
&gt; I already tried to share my thoughts here:<br>
&gt; <a href=3D"https://lists.openembedded.org/g/openembedded-core/message/=
178146?p=3D%2C%2C%2C20%2C0%2C0%2C0%3A%3Acreated%2C0%2Cgolang%2C20%2C2%2C0%2=
C97444547" rel=3D"noreferrer" target=3D"_blank">https://lists.openembedded.=
org/g/openembedded-core/message/178146?p=3D%2C%2C%2C20%2C0%2C0%2C0%3A%3Acre=
ated%2C0%2Cgolang%2C20%2C2%2C0%2C97444547</a><br>
&gt;<br>
&gt; Best regards,<br>
&gt; Adrian<br>
&gt;<br>
&gt;<br>
&gt; On Thu, 2023-03-30 at 12:08 +0200, Alexander Kanavin wrote:<br>
&gt; &gt; I think I pushed the work directly to the respecitve branches in<=
br>
&gt; &gt; meta-lts-mixins. I&#39;d suggest you send the patches here, and w=
e&#39;ll<br>
&gt; &gt; sort<br>
&gt; &gt; out the technicalities (I can publish the branch on<br>
&gt; &gt; <a href=3D"http://git.yoctoproject.org" rel=3D"noreferrer" target=
=3D"_blank">git.yoctoproject.org</a>, or maybe you&#39;ll be able to push d=
irectly as<br>
&gt; &gt; well, provided you also send the patches here). There&#39;s no<br=
>
&gt; &gt; autobuilder<br>
&gt; &gt; testing; for mixin items the contributors are trusted :)<br>
&gt; &gt;<br>
&gt; &gt; Alex<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; On Thu, 30 Mar 2023 at 11:20, Jose Quaresma &lt;<a href=3D"mailto=
:quaresma.jose@gmail.com" target=3D"_blank">quaresma.jose@gmail.com</a>&gt;=
<br>
&gt; &gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Hi,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; The golang version in kirkstone is the 1.17 and because of t=
his is<br>
&gt; &gt; &gt; not possible to use some recent version of other projects li=
ke<br>
&gt; &gt; &gt; docker that requires a more recent version of the language.<=
br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I have a kirkstone branch [1] available at Foundries.io with=
 the<br>
&gt; &gt; &gt; golang backported from the oe-core master that I liked to su=
bmit to<br>
&gt; &gt; &gt; the meta-lts-mixins [2].<br>
&gt; &gt; &gt; Alex is the maintainer of the dunfell golang backport and th=
is<br>
&gt; &gt; &gt; kirkstone branch is based on that version.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Would that be interesting for the project? How should I proc=
eed?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; [1]<br>
&gt; &gt; &gt; <a href=3D"https://github.com/foundriesio/meta-lts-mixins/tr=
ee/kirkstone/go" rel=3D"noreferrer" target=3D"_blank">https://github.com/fo=
undriesio/meta-lts-mixins/tree/kirkstone/go</a><br>
&gt; &gt; &gt; [2] <a href=3D"https://git.yoctoproject.org/meta-lts-mixins"=
 rel=3D"noreferrer" target=3D"_blank">https://git.yoctoproject.org/meta-lts=
-mixins</a><br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Jose<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt; Best regards,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Jos=C3=A9 Quaresma<br>
&gt; &gt;<br>
&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt; Links: You receive all messages sent to this group.<br>
&gt; &gt; View/Reply Online (#59547):<br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/g/yocto/message/59547" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/message/59547</a><br>
&gt; &gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/979=
46990/4454582" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.org/mt/97946990/4454582</a><br>
&gt; &gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.o=
rg" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; &gt; Unsubscribe:<br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/unsub</=
a> [<a href=3D"mailto:adrian.freihofer@gmail.com" target=3D"_blank">adrian.=
freihofer@gmail.com</a><br>
&gt; &gt; ]<br>
&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt;<br>
&gt;<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div>

--000000000000f114ed05f81f16dd--

