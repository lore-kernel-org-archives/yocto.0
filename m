Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E74A0C761A6
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 16:09:09 +0000 (UTC)
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
 by mx.groups.io with SMTP id smtpd.web11.59244.1680278947168790698
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 09:09:07 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=qjCr39FY;
 spf=pass (domain: gmail.com, ip: 209.85.222.52, mailfrom: quaresma.jose@gmail.com)
Received: by mail-ua1-f52.google.com with SMTP id p2so16505778uap.1
        for <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 09:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680278946; x=1682870946;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Cp8hbI0cNy/fQOzpSWzkSrNaY0m0zVTw8/XbZDynT70=;
        b=qjCr39FYYsWskak5nG6lDyn2TuBUtDjB6MmRpeDf+jv6eqCx5YQ6KmriwI00RZzso4
         G8fr9PJrdjtk0P8o6FllIkfXk0DPool7GwkOCcHmqHmMtlgr0kntaB2TXfF4kWsG6TbK
         Ccrl5yOTPPJhwdM/hwwgZucRTl75R4AsYmh5MQM9BSMylRNp3qUVNJshgBOgFARgipxL
         ACWYSI7cBkyZwBXkzjyG+IU3n2PvOJCvgr2hQ/F6FDGd+nOiuX2X/H720JG7JrfZAD4s
         Vhf0bgbSRERVAZMSyNbXvF75ZLvLeyVIPQypRvNvuyeV07+A+751orgA/K5s+zLsLTUq
         TZUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680278946; x=1682870946;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Cp8hbI0cNy/fQOzpSWzkSrNaY0m0zVTw8/XbZDynT70=;
        b=q1En+mIrGyfI3QSvVXkvKTu4ft0wM/n9CIxGUah7Fbe/MTmXn73Bq0/Lz0AKdiOzyL
         xHdmxWP9vhyvXe5auCRbIecayeMXp3AD55Ljt48o9x5damJLSit6HwJOzoikE1+Gya0T
         I520lxRNpeLpie/YN3KywHMScaCip5UPCty5CN5nbHd8sKK8JzAo75qP9FvojbRAsdsi
         XL985LxrJXkLdZtgWr9F5LgMIQyNRdnEYoR97PRle5m4H6ZyDampPlyxGJsaF5MDMG6/
         R+GiVGpbJzZNqTFk+n38lvrsXPU7c7KUprhlT8Au5VHDMCqm/c1v8XNWaOWzgxsuUAu/
         docg==
X-Gm-Message-State: AAQBX9evl3LJ6ifk9iKw6N6Sr66eoJGqI1snKMeqo3/wUL1tdOX8r0Fk
	5W9OGcZsgflPRpCfWMd8XWDwEemqZPMrDQcJ+OQ=
X-Google-Smtp-Source: AKy350bneK47G4qzgpcxOKYF58N90jvBypoy64/8vsf2NWk/7kq3pLV/OuF+YTvELpJzC+rs/CuioOHWpHWDWuRV2+A=
X-Received: by 2002:ab0:5a98:0:b0:765:c171:5f29 with SMTP id
 w24-20020ab05a98000000b00765c1715f29mr8519923uae.0.1680278946094; Fri, 31 Mar
 2023 09:09:06 -0700 (PDT)
MIME-Version: 1.0
References: <CANPvuRmPDaqPUDK+Qn-iMQ7i=gqz_Jgz6rMef4o0Yj4+0u518g@mail.gmail.com>
 <CANNYZj9VGZ+-m77Brq=1jCt_+LyyUbadx6+WopzyVa-ED4Ft7A@mail.gmail.com>
 <4275a1007b94c03891f304db0b9926620fe52457.camel@gmail.com>
 <CANNYZj-m6UdUunpRQES7jmMtTKat-uhuv7-gnAh_7UwKMf5eVQ@mail.gmail.com>
 <CANPvuRk7AFx9cOXkYjmaTop9Z=tintcnZ+Nwx5CMkFWf1HLE2Q@mail.gmail.com> <CADkTA4NKawaY7GC7hbPy4K-1yTMt6bxtUq7MdYHdoEPpw5XJOQ@mail.gmail.com>
In-Reply-To: <CADkTA4NKawaY7GC7hbPy4K-1yTMt6bxtUq7MdYHdoEPpw5XJOQ@mail.gmail.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Fri, 31 Mar 2023 17:08:54 +0100
Message-ID: <CANPvuRmV42d+Y+yoL5v3eWqWU-DQyawCVAx_fAjpKETtusCjYQ@mail.gmail.com>
Subject: Re: [RFC][yocto][meta-lts-mixins][kirkstone/go] Backport golang from
 master to kirkstone
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, adrian.freihofer@gmail.com, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, Jose Quaresma <jose.quaresma@foundries.io>, 
	Ricardo Salveti <ricardo@foundries.io>
Content-Type: multipart/alternative; boundary="000000000000b4a2fb05f8346df6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 16:09:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59568

--000000000000b4a2fb05f8346df6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Bruce Ashfield <bruce.ashfield@gmail.com> escreveu no dia quinta,
30/03/2023 =C3=A0(s) 16:14:

> On Thu, Mar 30, 2023 at 10:41=E2=80=AFAM Jose Quaresma <quaresma.jose@gma=
il.com>
> wrote:
> >
> > Hi,
> >
> > I already did some tests using the meta-virt master branch with
> > the oe-core kirkstone and this version of the meta-lts-mixins.
> > Our stack on meta-virt is not very big but what I tested looks good.
> >
> > On meta-virt I only need to add kirk compatibility:
> > LAYERSERIES_COMPAT_virtualization-layer +=3D "kirkstone"
> >
> > On meta-lts-mixins I need to change the meta-virt busybox oe-core
> tracked version:
> > PV:pn-busybox-initrd =3D "1.35.0"
> >
> > But maybe I need to test this with a large set of recipes in the
> meta-virt master branch.
> > I will add Bruce and I take the opportunity to ask him what he thinks o=
f
> this approach?
> >
>
> I'm not sure I follow which approach you are referring to ?
>
> Tweaking the busybox-initrd and adding your own compatibility tag to
> the meta-virt branch you are matching (in this case master) ?
>

Yes, this is the only thing that breaks the bitbake parsing when using the
meta-virt master branch with oe-core kirkstone.


>
> If it works, I don't see any issues with it. I wouldn't carry such a
> layerseries_compat update in the layer itself, since additional layers
> are required to make it work.
>

The layer compat is the tricky one but can be solved in any other global
config file.


>
> I'm also still willing to carry multiple versions of recipes in
> maintained release branches (and set the preferred version to be the
> existing recipe), if we need to get a newer version of a recipe in a
> release branch to match both security and golang requirements.
>

This with the meta-lts-mixins will add a lot of flexibility.
I will do that in meta-virt, backporting some recipes from master to
kirstone.

Jose


>
> Bruce
>
> > Jose
> >
> >
> > Alexander Kanavin <alex.kanavin@gmail.com> escreveu no dia quinta,
> 30/03/2023 =C3=A0(s) 14:42:
> >>
> >> That may require an unknown amount of fixing in the recipes and
> >> classes. Existing code is not designed for co-existing with a
> >> different version of itself, and so everything needs to be versioned
> >> and cleanly separated. But in theory it's possible.
> >>
> >> Alex
> >>
> >> On Thu, 30 Mar 2023 at 15:15, <adrian.freihofer@gmail.com> wrote:
> >> >
> >> > Hi Alex, hi Jos=C3=A9
> >> >
> >> > The meta-lts-mixin layers for dunfell have a major disadvantage:
> >> > Replacing the go tool-chain breaks more or less all recipes from met=
a-
> >> > virtualization and potentially other layers.
> >> >
> >> > I think with go it should be possible to have a meta-lts-mixin layer
> >> > which adds support for additional go versions instead of overriding
> the
> >> > version provided by poky. That would potentially allow to use poky o=
n
> >> > the kirkstone branch and meta-virtualization on a newer branch on th=
e
> >> > long run.
> >> >
> >> > Would it be possible to add e.g. a copy of the go.bbclass as well as
> >> > the go recipes from a recent poky version in a way it does not
> override
> >> > the go stack provided by poky?
> >> > As an example: Would it be possible to add a go1-19.bbclass to the
> >> > meta-meta-lts-mixin layer? This would allow to add also a newer Dock=
er
> >> > recipe which inherits go1-19 instead of just go to the meta-lts-mixi=
n
> >> > layers without breaking anything from poky or meta-virtualization.
> >> >
> >> > I already tried to share my thoughts here:
> >> >
> https://lists.openembedded.org/g/openembedded-core/message/178146?p=3D%2C=
%2C%2C20%2C0%2C0%2C0%3A%3Acreated%2C0%2Cgolang%2C20%2C2%2C0%2C97444547
> >> >
> >> > Best regards,
> >> > Adrian
> >> >
> >> >
> >> > On Thu, 2023-03-30 at 12:08 +0200, Alexander Kanavin wrote:
> >> > > I think I pushed the work directly to the respecitve branches in
> >> > > meta-lts-mixins. I'd suggest you send the patches here, and we'll
> >> > > sort
> >> > > out the technicalities (I can publish the branch on
> >> > > git.yoctoproject.org, or maybe you'll be able to push directly as
> >> > > well, provided you also send the patches here). There's no
> >> > > autobuilder
> >> > > testing; for mixin items the contributors are trusted :)
> >> > >
> >> > > Alex
> >> > >
> >> > >
> >> > > On Thu, 30 Mar 2023 at 11:20, Jose Quaresma <
> quaresma.jose@gmail.com>
> >> > > wrote:
> >> > > >
> >> > > > Hi,
> >> > > >
> >> > > > The golang version in kirkstone is the 1.17 and because of this =
is
> >> > > > not possible to use some recent version of other projects like
> >> > > > docker that requires a more recent version of the language.
> >> > > >
> >> > > > I have a kirkstone branch [1] available at Foundries.io with the
> >> > > > golang backported from the oe-core master that I liked to submit
> to
> >> > > > the meta-lts-mixins [2].
> >> > > > Alex is the maintainer of the dunfell golang backport and this
> >> > > > kirkstone branch is based on that version.
> >> > > >
> >> > > > Would that be interesting for the project? How should I proceed?
> >> > > >
> >> > > > [1]
> >> > > > https://github.com/foundriesio/meta-lts-mixins/tree/kirkstone/go
> >> > > > [2] https://git.yoctoproject.org/meta-lts-mixins
> >> > > >
> >> > > > Jose
> >> > > >
> >> > > > --
> >> > > > Best regards,
> >> > > >
> >> > > > Jos=C3=A9 Quaresma
> >> > >
> >> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >> > > Links: You receive all messages sent to this group.
> >> > > View/Reply Online (#59547):
> >> > > https://lists.yoctoproject.org/g/yocto/message/59547
> >> > > Mute This Topic: https://lists.yoctoproject.org/mt/97946990/445458=
2
> >> > > Group Owner: yocto+owner@lists.yoctoproject.org
> >> > > Unsubscribe:
> >> > > https://lists.yoctoproject.org/g/yocto/unsub [
> adrian.freihofer@gmail.com
> >> > > ]
> >> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >> > >
> >> >
> >
> >
> >
> > --
> > Best regards,
> >
> > Jos=C3=A9 Quaresma
>
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>


--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000b4a2fb05f8346df6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Bruce Ashfield &lt;<a href=3D"mailto:=
bruce.ashfield@gmail.com">bruce.ashfield@gmail.com</a>&gt; escreveu no dia =
quinta, 30/03/2023 =C3=A0(s) 16:14:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">On Thu, Mar 30, 2023 at 10:41=E2=80=AFAM Jose Quaresma =
&lt;<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quaresma.j=
ose@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; I already did some tests using the meta-virt master branch with<br>
&gt; the oe-core kirkstone and this version of the meta-lts-mixins.<br>
&gt; Our stack on meta-virt is not very big but what I tested looks good.<b=
r>
&gt;<br>
&gt; On meta-virt I only need to add kirk compatibility:<br>
&gt; LAYERSERIES_COMPAT_virtualization-layer +=3D &quot;kirkstone&quot;<br>
&gt;<br>
&gt; On meta-lts-mixins I need to change the meta-virt busybox oe-core trac=
ked version:<br>
&gt; PV:pn-busybox-initrd =3D &quot;1.35.0&quot;<br>
&gt;<br>
&gt; But maybe I need to test this with a large set of recipes in the meta-=
virt master branch.<br>
&gt; I will add Bruce and I take the opportunity to ask him what he thinks =
of this approach?<br>
&gt;<br>
<br>
I&#39;m not sure I follow which approach you are referring to ?<br>
<br>
Tweaking the busybox-initrd and adding your own compatibility tag to<br>
the meta-virt branch you are matching (in this case master) ?<br></blockquo=
te><div><br></div><div>Yes, this is the only thing that breaks the bitbake =
parsing when using the</div><div>meta-virt=C2=A0master branch with oe-core =
kirkstone.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">
<br>
If it works, I don&#39;t see any issues with it. I wouldn&#39;t carry such =
a<br>
layerseries_compat update in the layer itself, since additional layers<br>
are required to make it work.<br></blockquote><div><br>The layer compat is =
the tricky one but can be solved in any other global</div><div>config file.=
=C2=A0<br>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
I&#39;m also still willing to carry multiple versions of recipes in<br>
maintained release branches (and set the preferred version to be the<br>
existing recipe), if we need to get a newer version of a recipe in a<br>
release branch to match both security and golang requirements.<br></blockqu=
ote><div><br></div><div>This with the meta-lts-mixins will add a lot of fle=
xibility.<br>I will do that in meta-virt, backporting some recipes from mas=
ter to kirstone.<br><br>Jose</div><div>=C2=A0</div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">
<br>
Bruce<br>
<br>
&gt; Jose<br>
&gt;<br>
&gt;<br>
&gt; Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=
=3D"_blank">alex.kanavin@gmail.com</a>&gt; escreveu no dia quinta, 30/03/20=
23 =C3=A0(s) 14:42:<br>
&gt;&gt;<br>
&gt;&gt; That may require an unknown amount of fixing in the recipes and<br=
>
&gt;&gt; classes. Existing code is not designed for co-existing with a<br>
&gt;&gt; different version of itself, and so everything needs to be version=
ed<br>
&gt;&gt; and cleanly separated. But in theory it&#39;s possible.<br>
&gt;&gt;<br>
&gt;&gt; Alex<br>
&gt;&gt;<br>
&gt;&gt; On Thu, 30 Mar 2023 at 15:15, &lt;<a href=3D"mailto:adrian.freihof=
er@gmail.com" target=3D"_blank">adrian.freihofer@gmail.com</a>&gt; wrote:<b=
r>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi Alex, hi Jos=C3=A9<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; The meta-lts-mixin layers for dunfell have a major disadvanta=
ge:<br>
&gt;&gt; &gt; Replacing the go tool-chain breaks more or less all recipes f=
rom meta-<br>
&gt;&gt; &gt; virtualization and potentially other layers.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I think with go it should be possible to have a meta-lts-mixi=
n layer<br>
&gt;&gt; &gt; which adds support for additional go versions instead of over=
riding the<br>
&gt;&gt; &gt; version provided by poky. That would potentially allow to use=
 poky on<br>
&gt;&gt; &gt; the kirkstone branch and meta-virtualization on a newer branc=
h on the<br>
&gt;&gt; &gt; long run.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Would it be possible to add e.g. a copy of the go.bbclass as =
well as<br>
&gt;&gt; &gt; the go recipes from a recent poky version in a way it does no=
t override<br>
&gt;&gt; &gt; the go stack provided by poky?<br>
&gt;&gt; &gt; As an example: Would it be possible to add a go1-19.bbclass t=
o the<br>
&gt;&gt; &gt; meta-meta-lts-mixin layer? This would allow to add also a new=
er Docker<br>
&gt;&gt; &gt; recipe which inherits go1-19 instead of just go to the meta-l=
ts-mixin<br>
&gt;&gt; &gt; layers without breaking anything from poky or meta-virtualiza=
tion.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I already tried to share my thoughts here:<br>
&gt;&gt; &gt; <a href=3D"https://lists.openembedded.org/g/openembedded-core=
/message/178146?p=3D%2C%2C%2C20%2C0%2C0%2C0%3A%3Acreated%2C0%2Cgolang%2C20%=
2C2%2C0%2C97444547" rel=3D"noreferrer" target=3D"_blank">https://lists.open=
embedded.org/g/openembedded-core/message/178146?p=3D%2C%2C%2C20%2C0%2C0%2C0=
%3A%3Acreated%2C0%2Cgolang%2C20%2C2%2C0%2C97444547</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Best regards,<br>
&gt;&gt; &gt; Adrian<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Thu, 2023-03-30 at 12:08 +0200, Alexander Kanavin wrote:<b=
r>
&gt;&gt; &gt; &gt; I think I pushed the work directly to the respecitve bra=
nches in<br>
&gt;&gt; &gt; &gt; meta-lts-mixins. I&#39;d suggest you send the patches he=
re, and we&#39;ll<br>
&gt;&gt; &gt; &gt; sort<br>
&gt;&gt; &gt; &gt; out the technicalities (I can publish the branch on<br>
&gt;&gt; &gt; &gt; <a href=3D"http://git.yoctoproject.org" rel=3D"noreferre=
r" target=3D"_blank">git.yoctoproject.org</a>, or maybe you&#39;ll be able =
to push directly as<br>
&gt;&gt; &gt; &gt; well, provided you also send the patches here). There&#3=
9;s no<br>
&gt;&gt; &gt; &gt; autobuilder<br>
&gt;&gt; &gt; &gt; testing; for mixin items the contributors are trusted :)=
<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; Alex<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; On Thu, 30 Mar 2023 at 11:20, Jose Quaresma &lt;<a href=
=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quaresma.jose@gmail.c=
om</a>&gt;<br>
&gt;&gt; &gt; &gt; wrote:<br>
&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; Hi,<br>
&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; The golang version in kirkstone is the 1.17 and bec=
ause of this is<br>
&gt;&gt; &gt; &gt; &gt; not possible to use some recent version of other pr=
ojects like<br>
&gt;&gt; &gt; &gt; &gt; docker that requires a more recent version of the l=
anguage.<br>
&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; I have a kirkstone branch [1] available at Foundrie=
s.io with the<br>
&gt;&gt; &gt; &gt; &gt; golang backported from the oe-core master that I li=
ked to submit to<br>
&gt;&gt; &gt; &gt; &gt; the meta-lts-mixins [2].<br>
&gt;&gt; &gt; &gt; &gt; Alex is the maintainer of the dunfell golang backpo=
rt and this<br>
&gt;&gt; &gt; &gt; &gt; kirkstone branch is based on that version.<br>
&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; Would that be interesting for the project? How shou=
ld I proceed?<br>
&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; [1]<br>
&gt;&gt; &gt; &gt; &gt; <a href=3D"https://github.com/foundriesio/meta-lts-=
mixins/tree/kirkstone/go" rel=3D"noreferrer" target=3D"_blank">https://gith=
ub.com/foundriesio/meta-lts-mixins/tree/kirkstone/go</a><br>
&gt;&gt; &gt; &gt; &gt; [2] <a href=3D"https://git.yoctoproject.org/meta-lt=
s-mixins" rel=3D"noreferrer" target=3D"_blank">https://git.yoctoproject.org=
/meta-lts-mixins</a><br>
&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; Jose<br>
&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; --<br>
&gt;&gt; &gt; &gt; &gt; Best regards,<br>
&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; Jos=C3=A9 Quaresma<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; &gt; &gt; Links: You receive all messages sent to this group.<br>
&gt;&gt; &gt; &gt; View/Reply Online (#59547):<br>
&gt;&gt; &gt; &gt; <a href=3D"https://lists.yoctoproject.org/g/yocto/messag=
e/59547" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.or=
g/g/yocto/message/59547</a><br>
&gt;&gt; &gt; &gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.o=
rg/mt/97946990/4454582" rel=3D"noreferrer" target=3D"_blank">https://lists.=
yoctoproject.org/mt/97946990/4454582</a><br>
&gt;&gt; &gt; &gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yocto=
project.org" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt;&gt; &gt; &gt; Unsubscribe:<br>
&gt;&gt; &gt; &gt; <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub"=
 rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yoct=
o/unsub</a> [<a href=3D"mailto:adrian.freihofer@gmail.com" target=3D"_blank=
">adrian.freihofer@gmail.com</a><br>
&gt;&gt; &gt; &gt; ]<br>
&gt;&gt; &gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; Best regards,<br>
&gt;<br>
&gt; Jos=C3=A9 Quaresma<br>
<br>
<br>
<br>
-- <br>
- Thou shalt not follow the NULL pointer, for chaos and madness await<br>
thee at its end<br>
- &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--000000000000b4a2fb05f8346df6--

