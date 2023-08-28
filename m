Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD84C71153
	for <webhook@archiver.kernel.org>; Mon, 28 Aug 2023 20:38:35 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web11.2467.1693255107338282631
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Aug 2023 13:38:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=nQFQc2VH;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: marek.belisko@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-500b0f06136so3551396e87.0
        for <yocto@lists.yoctoproject.org>; Mon, 28 Aug 2023 13:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693255105; x=1693859905;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gAEkGgq2TThgErR5cnhA95DGtLnVRLUSUNQoODYZ8cw=;
        b=nQFQc2VHz8FQMUzsorYpB1Xhzx+rtDDt0Y3+4dmQg6eZmY7Bi/TeV8fA6nhph31Vux
         Gjgb0BPr4oI+hb6O1Q08iDtg1sfEKuRxdiximSYYzFJMzrlRU8sTugD+2JX2iRp0O8ZS
         AbAi33s8Y6F8eUmuYSWRQKVO8lOXCmO+baEcPxExfTohHVOWVlhw+Akq+cI9LJwRZUoZ
         kiluT6M0+sH0cozqZwXy+kNo5dxlegj1D7Q6VBGToPEY1x4sQAxMoFOSz6hI+XDJICbN
         WOxRnDfU+5Ft2SG3tF9qQYdkKF1pox8EQsvG6sb5Y1DGloyOVWP+g2FToDGvU2oP5a4F
         4TlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693255105; x=1693859905;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gAEkGgq2TThgErR5cnhA95DGtLnVRLUSUNQoODYZ8cw=;
        b=f+NGoewtAwoFP4sVdcee/BqZoJoKZ1ZBZ+1f1Qq4oK2kA7Qw7jxCedMQmHJ75cd1zE
         +n+SvJWmn4COFsAxDUVpd5hZMXaQcvc5dfIkdjBE1ukAfocD/7Ao/mdjS64UMj9H2XMv
         Ctyhzmhe5yW/BNU3a15GzzKs0vPS6QERmnHb9K6HBmDVl6rRE4wphxIICqywUx6UdJ6r
         /RVbTLN3sPJa61ZYTMLyQj0l2z+BJdQxsApgTr3mAYb9DhNQN8wy9UiMgnE0AWHCAEQh
         HMzLVlSC+gjtD4Q7yWRExkA842sZGB57FFQFqMHPy/ft+36hpt3r40tXFgCZzHK0/xGt
         2hNg==
X-Gm-Message-State: AOJu0YxM+5dCXxp3BnJKhEhna1Ewp8m4x1vmCX6oJzRUBSG/pXJQY41F
	lCRppO1eJYqBkUZwLTwWnsYvY2nH2IXh0DGd084=
X-Google-Smtp-Source: AGHT+IGBVFZ3vbaWoZ+9umblr8Rt8H+LfeWgJHQN2lXkkxyLyu5VXHvYeT3+FQT48MdGtrAOcgypnqjJl5i2i6Hw3d8=
X-Received: by 2002:a05:6512:3241:b0:4fe:25bc:71f5 with SMTP id
 c1-20020a056512324100b004fe25bc71f5mr16555011lfr.11.1693255105107; Mon, 28
 Aug 2023 13:38:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1sqe4sqEK6fO0nF2JKx-bGH6zxwZtKhbuxhDJC6=H+tJXA@mail.gmail.com>
 <246F203D-CE28-4FFB-B75B-430B65D64816@gmail.com> <CAMKF1sq-HLEDTVVwbqQXASE4GvH1zbWNe5fiaVF8=imKEwAH_g@mail.gmail.com>
In-Reply-To: <CAMKF1sq-HLEDTVVwbqQXASE4GvH1zbWNe5fiaVF8=imKEwAH_g@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 28 Aug 2023 22:38:13 +0200
Message-ID: <CAAfyv35kSOPJqGgjsPbO-969TwKk0969eEuKR5361d+OCrYnDg@mail.gmail.com>
Subject: Re: [yocto] [meta-virtualization] nerdctl broken in kirkstone
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>, Bruce Ashfield <bruce.ashfield@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000000ddc7f060401ad05"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Aug 2023 20:38:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60905

--0000000000000ddc7f060401ad05
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 24, 2023 at 4:05=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wrote=
:

> does it work if you add do_compile[network] =3D "1"
>
Nope it is not. It turns out that the fetch phase is not correct. When I do
bitbake nerdctl -e | grep SRC_URI I got only:

 SRC_URI=3D"git://
github.com/containerd/nerdctl.git;name=3Dnerdcli;branch=3Dmain;protocol=3Dh=
ttps"

and not other SRC_URI's added in src_uri.inc file. It's mystery to me why
this include is not working

>
> On Wed, Aug 23, 2023 at 11:14=E2=80=AFPM Belisko Marek <marek.belisko@gma=
il.com>
> wrote:
> >
> >
> >
> > Sent from my iPhone
> >
> > > On 24 Aug 2023, at 02:23, Khem Raj <raj.khem@gmail.com> wrote:
> > >
> > > =EF=BB=BFwhich task is failing ?
> > do_compile
> > >
> > >> On Wed, Aug 23, 2023 at 2:31=E2=80=AFPM Marek Belisko <
> marek.belisko@gmail.com> wrote:
> > >>
> > >> Hi,
> > >>
> > >> I'm trying to add nerdctl to an image using kirkstone release for
> meta-virtualization.
> > >> I've added bbappend with following fix:
> > >>
> > >> SRC_URI =3D "git://
> github.com/containerd/nerdctl.git;name=3Dnerdcli;branch=3Dmain;protocol=
=3Dhttps"
> > >>
> > >> (branch name in original recipe is master but main is required)
> > >>
> > >> but then anyways it fails with:
> > >>
> > >> rsync: [sender] change_dir
> "/data/projects/test/build/tmp/work/cortexa53-crypto-poky-linux/nerdctl/v=
0.18.0-r0/nerdctl-v0.18.0/src/import/vendor.fetch/
> github.com/Masterminds/semver/v3" failed: No such file or directory (2)
> > >> | rsync error: some files/attrs were not transferred (see previous
> errors) (code 23) at main.c(1327) [sender=3D3.2.5]
> > >>
> > >> And in ${BP} I cannot see any of those vendor stuff which should be
> present. Is there some fix for that already pending or it's known issue?
> > >>
> > >> Thanks and BR,
> > >>
> > >> marek
> > >>
> > >> --
> > >> as simple and primitive as possible
> > >> -------------------------------------------------
> > >> Marek Belisko - OPEN-NANDRA
> > >> Freelance Developer
> > >>
> > >> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> > >> Tel: +421 915 052 184
> > >> skype: marekwhite
> > >> twitter: #opennandra
> > >> web: http://open-nandra.com
> > >>
> > >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > >> Links: You receive all messages sent to this group.
> > >> You automatically follow any topics you start or reply to.
> > >> View/Reply Online (#60868):
> https://lists.yoctoproject.org/g/yocto/message/60868
> > >> Mute This Topic: https://lists.yoctoproject.org/mt/100924569/1997914
> > >> Group Owner: yocto+owner@lists.yoctoproject.org
> > >> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> > >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > >>
>


--=20
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--0000000000000ddc7f060401ad05
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Aug 24, 2023 at 4:05=E2=80=AFPM K=
hem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt=
; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">does it work if you add do_compile[network] =3D &quot;1=
&quot;<br></blockquote><div>Nope it is not. It turns out that the fetch pha=
se is not correct. When I do bitbake nerdctl -e | grep SRC_URI I got only:<=
br><br></div><div>=C2=A0SRC_URI=3D&quot;git://<a href=3D"http://github.com/=
containerd/nerdctl.git;name=3Dnerdcli;branch=3Dmain;protocol=3Dhttps">githu=
b.com/containerd/nerdctl.git;name=3Dnerdcli;branch=3Dmain;protocol=3Dhttps<=
/a>&quot;</div><div><br></div><div>and not other SRC_URI&#39;s added in src=
_uri.inc file. It&#39;s mystery to me why this include is not working</div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
On Wed, Aug 23, 2023 at 11:14=E2=80=AFPM Belisko Marek &lt;<a href=3D"mailt=
o:marek.belisko@gmail.com" target=3D"_blank">marek.belisko@gmail.com</a>&gt=
; wrote:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Sent from my iPhone<br>
&gt;<br>
&gt; &gt; On 24 Aug 2023, at 02:23, Khem Raj &lt;<a href=3D"mailto:raj.khem=
@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; =EF=BB=BFwhich task is failing ?<br>
&gt; do_compile<br>
&gt; &gt;<br>
&gt; &gt;&gt; On Wed, Aug 23, 2023 at 2:31=E2=80=AFPM Marek Belisko &lt;<a =
href=3D"mailto:marek.belisko@gmail.com" target=3D"_blank">marek.belisko@gma=
il.com</a>&gt; wrote:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Hi,<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; I&#39;m trying to add nerdctl to an image using kirkstone rel=
ease for meta-virtualization.<br>
&gt; &gt;&gt; I&#39;ve added bbappend with following fix:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; SRC_URI =3D &quot;git://<a href=3D"http://github.com/containe=
rd/nerdctl.git;name=3Dnerdcli;branch=3Dmain;protocol=3Dhttps" rel=3D"norefe=
rrer" target=3D"_blank">github.com/containerd/nerdctl.git;name=3Dnerdcli;br=
anch=3Dmain;protocol=3Dhttps</a>&quot;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; (branch name in original recipe is master but main is require=
d)<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; but then anyways it fails with:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; rsync: [sender] change_dir &quot;/data/projects/test/build/tm=
p/work/cortexa53-crypto-poky-linux/nerdctl/v0.18.0-r0/nerdctl-v0.18.0/src/i=
mport/vendor.fetch/<a href=3D"http://github.com/Masterminds/semver/v3" rel=
=3D"noreferrer" target=3D"_blank">github.com/Masterminds/semver/v3</a>&quot=
; failed: No such file or directory (2)<br>
&gt; &gt;&gt; | rsync error: some files/attrs were not transferred (see pre=
vious errors) (code 23) at main.c(1327) [sender=3D3.2.5]<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; And in ${BP} I cannot see any of those vendor stuff which sho=
uld be present. Is there some fix for that already pending or it&#39;s know=
n issue?<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Thanks and BR,<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; marek<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; --<br>
&gt; &gt;&gt; as simple and primitive as possible<br>
&gt; &gt;&gt; -------------------------------------------------<br>
&gt; &gt;&gt; Marek Belisko - OPEN-NANDRA<br>
&gt; &gt;&gt; Freelance Developer<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>
&gt; &gt;&gt; Tel: +421 915 052 184<br>
&gt; &gt;&gt; skype: marekwhite<br>
&gt; &gt;&gt; twitter: #opennandra<br>
&gt; &gt;&gt; web: <a href=3D"http://open-nandra.com" rel=3D"noreferrer" ta=
rget=3D"_blank">http://open-nandra.com</a><br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt;&gt; Links: You receive all messages sent to this group.<br>
&gt; &gt;&gt; You automatically follow any topics you start or reply to.<br=
>
&gt; &gt;&gt; View/Reply Online (#60868): <a href=3D"https://lists.yoctopro=
ject.org/g/yocto/message/60868" rel=3D"noreferrer" target=3D"_blank">https:=
//lists.yoctoproject.org/g/yocto/message/60868</a><br>
&gt; &gt;&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt=
/100924569/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoct=
oproject.org/mt/100924569/1997914</a><br>
&gt; &gt;&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproje=
ct.org" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; &gt;&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yoct=
o/unsub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.or=
g/g/yocto/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank=
">raj.khem@gmail.com</a>]<br>
&gt; &gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt;&gt;<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature">as=
 simple and primitive as possible<br>--------------------------------------=
-----------<br>Marek Belisko - OPEN-NANDRA<br>Freelance Developer<br><br>Ru=
ska Nova Ves 219 | Presov, 08005 Slovak Republic<br>Tel: +421 915 052 184<b=
r>skype: marekwhite<br>twitter: #opennandra<br>web: <a href=3D"http://open-=
nandra.com" target=3D"_blank">http://open-nandra.com</a></div></div>

--0000000000000ddc7f060401ad05--

