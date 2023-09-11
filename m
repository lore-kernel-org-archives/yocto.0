Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E75DEEB581
	for <webhook@archiver.kernel.org>; Mon, 11 Sep 2023 19:50:38 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web10.7645.1694461834276688091
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Sep 2023 12:50:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=jJCxg7fC;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: marek.belisko@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2ba1e9b1fa9so83105631fa.3
        for <yocto@lists.yoctoproject.org>; Mon, 11 Sep 2023 12:50:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694461832; x=1695066632; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xLfOUxbUjO3nTXheBURrpuLghHMAwOcTzOn38zz+1qU=;
        b=jJCxg7fCm2bKSTBxmhGt/EiC9kYrm6xWqhwJtoEeMFYLnCQkBG/CUTCCXvnWBFLeOV
         QL15HhidenllH4Exvbyw1EqioXtnwAMJvUSEMsNi+RHWEtvhBFWl35szpYTkrrFBrjXd
         zJ7ZqQ/xU34BcAVdzci9J5zsWnUY1rBmgjtuy4VmkTHDWz2AdFJYjwtomW6sI5Eq8zY0
         PnXhkVf7MfqvWTSIUv/2HhgE7KJHlwTpeMqrnoyK/bYMGJ7wIbW+P+HhZBXCuFlW4b8f
         LUEv1DQLbSxCPiID7ZKqngks17oPnQdqVY0qAOSXDlW3Dk4JpJ2RE/Y+vP61MHAp6uKS
         nC/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694461832; x=1695066632;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xLfOUxbUjO3nTXheBURrpuLghHMAwOcTzOn38zz+1qU=;
        b=nSUtihPcJAEreTxT1YG3prgYEUkxJPp6nRS0jnQpcSMytq5SiKrOzcCobvVVBj33wD
         PkgaWv9Wb93jQnE7ikSK7jL+Cpdb9m9Ykhnc/473No/GDsNwVpTTTU8EaT97Q6l44Ifv
         auyr2T/T+f54Cvf3XeThlSVbq2kC4fE6WEvKoWHGdWViXjI8zjhOSaIvHEZYdkFnRc3g
         kYcj1V5fMgmubv/XL4dPmyfvE9Nj3Y4fs9TRI9IP4yPC1XI88C2oVmiNkUIz2f0BNwUe
         wyegX0QbhVbkCbweUyN0fxUY40QbA26LlX0Cf2DM6/4XvTNcVnLwCgFxMvB9uUeHV/uT
         hl0A==
X-Gm-Message-State: AOJu0Yzl3Pabw+YJkrbcUM88f9V42hn5wQFa1r7R95d7iI6ixtQbXrvA
	Cq02ihEE0IHj+WqEmY6gpD3m3xZNfRh4eeUsB3k=
X-Google-Smtp-Source: AGHT+IF6WbkBBdYsXfacLa7/M3ccZNHIo7lZlx89ufJNH41bfFato3WJ+Axet+aZyTKLwOd/T1fC80rKK5nIfDBZy+4=
X-Received: by 2002:a2e:7a0a:0:b0:2b5:7f93:b3b0 with SMTP id
 v10-20020a2e7a0a000000b002b57f93b3b0mr8846620ljc.17.1694461832058; Mon, 11
 Sep 2023 12:50:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1sqe4sqEK6fO0nF2JKx-bGH6zxwZtKhbuxhDJC6=H+tJXA@mail.gmail.com>
 <246F203D-CE28-4FFB-B75B-430B65D64816@gmail.com> <CAMKF1sq-HLEDTVVwbqQXASE4GvH1zbWNe5fiaVF8=imKEwAH_g@mail.gmail.com>
 <CAAfyv35kSOPJqGgjsPbO-969TwKk0969eEuKR5361d+OCrYnDg@mail.gmail.com> <1783EECA054B2736.5496@lists.yoctoproject.org>
In-Reply-To: <1783EECA054B2736.5496@lists.yoctoproject.org>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 11 Sep 2023 21:50:20 +0200
Message-ID: <CAAfyv36C=i6uo9X_xidsz9R=wwWabTtNa0+7MCcpDiuWQP1m0Q@mail.gmail.com>
Subject: Re: [yocto] [meta-virtualization] nerdctl broken in kirkstone
To: marek.belisko@gmail.com
Cc: Khem Raj <raj.khem@gmail.com>, Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000095dd2e06051aa31e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Sep 2023 19:50:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60973

--00000000000095dd2e06051aa31e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 11, 2023 at 9:27=E2=80=AFPM Marek Belisko via lists.yoctoprojec=
t.org
<marek.belisko=3Dgmail.com@lists.yoctoproject.org> wrote:

> On Mon, Aug 28, 2023 at 10:38=E2=80=AFPM Belisko Marek <marek.belisko@gma=
il.com>
> wrote:
>
>> On Thu, Aug 24, 2023 at 4:05=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wr=
ote:
>>
>>> does it work if you add do_compile[network] =3D "1"
>>>
>> Nope it is not. It turns out that the fetch phase is not correct. When I
>> do bitbake nerdctl -e | grep SRC_URI I got only:
>>
>>  SRC_URI=3D"git://
>> github.com/containerd/nerdctl.git;name=3Dnerdcli;branch=3Dmain;protocol=
=3Dhttps
>> "
>>
>> and not other SRC_URI's added in src_uri.inc file. It's mystery to me wh=
y
>> this include is not working
>>
> Khem any idea what can be the cause of this issue please? I've tried yq
> recipe which using more less the same approach and there SRC_URI's are
> printed properly.
>
OK please disregard this message. I find out I have a nerdctl bbappend
which overwrites SRC_URI permanently. BTW on kirkstone nerdctl is broken
due wrong branch name + wrong SRCREV. Should I post a patch?

>
>>> On Wed, Aug 23, 2023 at 11:14=E2=80=AFPM Belisko Marek <marek.belisko@g=
mail.com>
>>> wrote:
>>> >
>>> >
>>> >
>>> > Sent from my iPhone
>>> >
>>> > > On 24 Aug 2023, at 02:23, Khem Raj <raj.khem@gmail.com> wrote:
>>> > >
>>> > > =EF=BB=BFwhich task is failing ?
>>> > do_compile
>>> > >
>>> > >> On Wed, Aug 23, 2023 at 2:31=E2=80=AFPM Marek Belisko <
>>> marek.belisko@gmail.com> wrote:
>>> > >>
>>> > >> Hi,
>>> > >>
>>> > >> I'm trying to add nerdctl to an image using kirkstone release for
>>> meta-virtualization.
>>> > >> I've added bbappend with following fix:
>>> > >>
>>> > >> SRC_URI =3D "git://
>>> github.com/containerd/nerdctl.git;name=3Dnerdcli;branch=3Dmain;protocol=
=3Dhttps
>>> "
>>> > >>
>>> > >> (branch name in original recipe is master but main is required)
>>> > >>
>>> > >> but then anyways it fails with:
>>> > >>
>>> > >> rsync: [sender] change_dir
>>> "/data/projects/test/build/tmp/work/cortexa53-crypto-poky-linux/nerdctl=
/v0.18.0-r0/nerdctl-v0.18.0/src/import/vendor.fetch/
>>> github.com/Masterminds/semver/v3" failed: No such file or directory (2)
>>> > >> | rsync error: some files/attrs were not transferred (see previous
>>> errors) (code 23) at main.c(1327) [sender=3D3.2.5]
>>> > >>
>>> > >> And in ${BP} I cannot see any of those vendor stuff which should b=
e
>>> present. Is there some fix for that already pending or it's known issue=
?
>>> > >>
>>> > >> Thanks and BR,
>>> > >>
>>> > >> marek
>>> > >>
>>> > >> --
>>> > >> as simple and primitive as possible
>>> > >> -------------------------------------------------
>>> > >> Marek Belisko - OPEN-NANDRA
>>> > >> Freelance Developer
>>> > >>
>>> > >> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
>>> > >> Tel: +421 915 052 184
>>> > >> skype: marekwhite
>>> > >> twitter: #opennandra
>>> > >> web: http://open-nandra.com
>>> > >>
>>> > >>
>>> > >>
>>>
>>
>>
>> Thanks,
>
> marek
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60972):
> https://lists.yoctoproject.org/g/yocto/message/60972
> Mute This Topic: https://lists.yoctoproject.org/mt/100924569/900721
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> marek.belisko@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>
Thanks,

marek

--00000000000095dd2e06051aa31e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Sep 11, 2023 at 9:27=E2=80=AFPM M=
arek Belisko via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproje=
ct.org</a> &lt;marek.belisko=3D<a href=3D"mailto:gmail.com@lists.yoctoproje=
ct.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr">On Mon, Aug 28, 2023 at 10:38=E2=80=AFPM Belisko =
Marek &lt;<a href=3D"mailto:marek.belisko@gmail.com" target=3D"_blank">mare=
k.belisko@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"=
ltr">On Thu, Aug 24, 2023 at 4:05=E2=80=AFPM Khem Raj &lt;<a href=3D"mailto=
:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br=
></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">does it work if you add do_compile[network] =3D &quot;1&quot;<br=
></blockquote><div>Nope it is not. It turns out that the fetch phase is not=
 correct. When I do bitbake nerdctl -e | grep SRC_URI I got only:<br><br></=
div><div>=C2=A0SRC_URI=3D&quot;git://<a href=3D"http://github.com/container=
d/nerdctl.git;name=3Dnerdcli;branch=3Dmain;protocol=3Dhttps" target=3D"_bla=
nk">github.com/containerd/nerdctl.git;name=3Dnerdcli;branch=3Dmain;protocol=
=3Dhttps</a>&quot;</div><div><br></div><div>and not other SRC_URI&#39;s add=
ed in src_uri.inc file. It&#39;s mystery to me why this include is not work=
ing</div></div></div></blockquote><div>Khem any idea what can be the cause =
of this issue please? I&#39;ve tried yq recipe which using more less the sa=
me approach and there SRC_URI&#39;s are printed properly.</div></div></div>=
</blockquote><div>OK please disregard this message. I find out I have a ner=
dctl=C2=A0bbappend which overwrites SRC_URI permanently. BTW on kirkstone=
=C2=A0nerdctl is broken due wrong branch name=C2=A0+ wrong SRCREV. Should I=
 post a patch?</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
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
&gt; &gt;&gt; <br>
&gt; &gt;&gt;<br>
</blockquote></div><br clear=3D"all"><div><br></div></div></blockquote></di=
v><div>Thanks,</div><div><br></div><div>marek</div><span class=3D"gmail_sig=
nature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature">as =
simple and primitive as possible<br>---------------------------------------=
----------<br>Marek Belisko - OPEN-NANDRA<br>Freelance Developer<br><br>Rus=
ka Nova Ves 219 | Presov, 08005 Slovak Republic<br>Tel: +421 915 052 184<br=
>skype: marekwhite<br>twitter: #opennandra<br>web: <a href=3D"http://open-n=
andra.com" target=3D"_blank">http://open-nandra.com</a></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60972): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60972" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60972</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/100924569/900=
721" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/100924569/900721</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:marek.belisko@gmail.com" target=3D"_blank">marek=
.belisko@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div>Thanks,</div><div><br></div><div>=
marek</div><br><div dir=3D"ltr" class=3D"gmail_signature"></div></div>

--00000000000095dd2e06051aa31e--

