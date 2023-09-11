Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C389EE57DF
	for <webhook@archiver.kernel.org>; Mon, 11 Sep 2023 19:27:18 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.6934.1694460435811518910
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Sep 2023 12:27:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=DmGMr9nI;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: marek.belisko@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2bcb50e194dso82409981fa.3
        for <yocto@lists.yoctoproject.org>; Mon, 11 Sep 2023 12:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694460434; x=1695065234; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NUYvNUYGTeZvSNUEG9SqJccJm2y/sJAcHgzUQFZAlc8=;
        b=DmGMr9nI2t/tuAIx7NeFjnO/z74h0bjPvIYOoDP3icFhQ5LSCA1yZjDHQQmWpMV6yf
         FsB//eOlXKJD/aVo4fFR3FPICdyMDv9oUgaN5prwO8UzrWYOrnJ1aC4XdwKEDddxrMbA
         9D3G4AgBlyLW3oos7lxFTlaa9P2YYFVbyYBL88UryavwTVmkuUH8gTKdjexh793GxyJm
         P4RyE9O7DJIYYy0vMpZ/7iQ44tcPvOVLIw7EOxDm1damxS//vlOehjknrfSGfnf8hyyy
         CsaGxhBdymxmFQkJMrIcbu2vPUYeLKBK1QRmemAk8VbjA1CViWDuhY4o8Sg6bbR8xOtY
         SkMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694460434; x=1695065234;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NUYvNUYGTeZvSNUEG9SqJccJm2y/sJAcHgzUQFZAlc8=;
        b=TcdIk9b/DfMXzf6YBLT9KJxcdWJ8+5CxY5xEgFKBb7nS6xbgVXJlguU82qlxpdfPEE
         aVr3l5pGEOWut0Tit5gvtxvX7mMqA/Ne1tjFicC3eh1XjJ6vZnODaJcnki+Ryxo6wL3O
         kbA3h68Xg+QsL7PIAetc+czBKohauf6vzdvJXXTpzRXbI8nN3pEylAqYCnDYx9yBxZha
         DWqXdgWesya6GomvH1ZOcLxXdFDCgyGtuhG1wHHmzHKDpbpT+Kpa6E1P+gvQ9aqJ2vgH
         US+hUqJTLxk72M3xYdX/SIViwCWZMw8v0Yh6V8bKoJm1pZk1dzO5rGuyw8DAlXD3YJe4
         IXUQ==
X-Gm-Message-State: AOJu0YyXwfybOkEA2nbbvXsxGmviRZdEeiVfdHPtAYZlDqgT8P05DGa1
	ZB1PnjJ69BfxiRdFh/UrM9HxG4ifLHm6OItUem4=
X-Google-Smtp-Source: AGHT+IFGtdMuanoD2zrpI+NO8eseW+9qzy1QnpywErBm2FlurrER0S8QmXLgVZpJDsHm1daEGySeY/zYR10ANVP0zv4=
X-Received: by 2002:a2e:9845:0:b0:2b1:a89a:5f2b with SMTP id
 e5-20020a2e9845000000b002b1a89a5f2bmr8799474ljj.2.1694460433544; Mon, 11 Sep
 2023 12:27:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1sqe4sqEK6fO0nF2JKx-bGH6zxwZtKhbuxhDJC6=H+tJXA@mail.gmail.com>
 <246F203D-CE28-4FFB-B75B-430B65D64816@gmail.com> <CAMKF1sq-HLEDTVVwbqQXASE4GvH1zbWNe5fiaVF8=imKEwAH_g@mail.gmail.com>
 <CAAfyv35kSOPJqGgjsPbO-969TwKk0969eEuKR5361d+OCrYnDg@mail.gmail.com>
In-Reply-To: <CAAfyv35kSOPJqGgjsPbO-969TwKk0969eEuKR5361d+OCrYnDg@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 11 Sep 2023 21:27:01 +0200
Message-ID: <CAAfyv35_hqrGHS6wkCXG8sBZuXpuigq4ts6-OfSJdAZ64uLwXA@mail.gmail.com>
Subject: Re: [yocto] [meta-virtualization] nerdctl broken in kirkstone
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003a3cee06051a505d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Sep 2023 19:27:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60972

--0000000000003a3cee06051a505d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 28, 2023 at 10:38=E2=80=AFPM Belisko Marek <marek.belisko@gmail=
.com>
wrote:

> On Thu, Aug 24, 2023 at 4:05=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wro=
te:
>
>> does it work if you add do_compile[network] =3D "1"
>>
> Nope it is not. It turns out that the fetch phase is not correct. When I
> do bitbake nerdctl -e | grep SRC_URI I got only:
>
>  SRC_URI=3D"git://
> github.com/containerd/nerdctl.git;name=3Dnerdcli;branch=3Dmain;protocol=
=3Dhttps"
>
> and not other SRC_URI's added in src_uri.inc file. It's mystery to me why
> this include is not working
>
Khem any idea what can be the cause of this issue please? I've tried yq
recipe which using more less the same approach and there SRC_URI's are
printed properly.

>
>> On Wed, Aug 23, 2023 at 11:14=E2=80=AFPM Belisko Marek <marek.belisko@gm=
ail.com>
>> wrote:
>> >
>> >
>> >
>> > Sent from my iPhone
>> >
>> > > On 24 Aug 2023, at 02:23, Khem Raj <raj.khem@gmail.com> wrote:
>> > >
>> > > =EF=BB=BFwhich task is failing ?
>> > do_compile
>> > >
>> > >> On Wed, Aug 23, 2023 at 2:31=E2=80=AFPM Marek Belisko <
>> marek.belisko@gmail.com> wrote:
>> > >>
>> > >> Hi,
>> > >>
>> > >> I'm trying to add nerdctl to an image using kirkstone release for
>> meta-virtualization.
>> > >> I've added bbappend with following fix:
>> > >>
>> > >> SRC_URI =3D "git://
>> github.com/containerd/nerdctl.git;name=3Dnerdcli;branch=3Dmain;protocol=
=3Dhttps
>> "
>> > >>
>> > >> (branch name in original recipe is master but main is required)
>> > >>
>> > >> but then anyways it fails with:
>> > >>
>> > >> rsync: [sender] change_dir
>> "/data/projects/test/build/tmp/work/cortexa53-crypto-poky-linux/nerdctl/=
v0.18.0-r0/nerdctl-v0.18.0/src/import/vendor.fetch/
>> github.com/Masterminds/semver/v3" failed: No such file or directory (2)
>> > >> | rsync error: some files/attrs were not transferred (see previous
>> errors) (code 23) at main.c(1327) [sender=3D3.2.5]
>> > >>
>> > >> And in ${BP} I cannot see any of those vendor stuff which should be
>> present. Is there some fix for that already pending or it's known issue?
>> > >>
>> > >> Thanks and BR,
>> > >>
>> > >> marek
>> > >>
>> > >> --
>> > >> as simple and primitive as possible
>> > >> -------------------------------------------------
>> > >> Marek Belisko - OPEN-NANDRA
>> > >> Freelance Developer
>> > >>
>> > >> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
>> > >> Tel: +421 915 052 184
>> > >> skype: marekwhite
>> > >> twitter: #opennandra
>> > >> web: http://open-nandra.com
>> > >>
>> > >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> > >> Links: You receive all messages sent to this group.
>> > >> You automatically follow any topics you start or reply to.
>> > >> View/Reply Online (#60868):
>> https://lists.yoctoproject.org/g/yocto/message/60868
>> > >> Mute This Topic: https://lists.yoctoproject.org/mt/100924569/199791=
4
>> > >> Group Owner: yocto+owner@lists.yoctoproject.org
>> > >> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> raj.khem@gmail.com]
>> > >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> > >>
>>
>
>
> Thanks,

marek
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

--0000000000003a3cee06051a505d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Aug 28, 2023 at 10:38=E2=80=AFPM =
Belisko Marek &lt;<a href=3D"mailto:marek.belisko@gmail.com">marek.belisko@=
gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Th=
u, Aug 24, 2023 at 4:05=E2=80=AFPM Khem Raj &lt;<a href=3D"mailto:raj.khem@=
gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br></div><di=
v class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">d=
oes it work if you add do_compile[network] =3D &quot;1&quot;<br></blockquot=
e><div>Nope it is not. It turns out that the fetch phase is not correct. Wh=
en I do bitbake nerdctl -e | grep SRC_URI I got only:<br><br></div><div>=C2=
=A0SRC_URI=3D&quot;git://<a href=3D"http://github.com/containerd/nerdctl.gi=
t;name=3Dnerdcli;branch=3Dmain;protocol=3Dhttps" target=3D"_blank">github.c=
om/containerd/nerdctl.git;name=3Dnerdcli;branch=3Dmain;protocol=3Dhttps</a>=
&quot;</div><div><br></div><div>and not other SRC_URI&#39;s added in src_ur=
i.inc file. It&#39;s mystery to me why this include is not working</div></d=
iv></div></blockquote><div>Khem any idea what can be the cause of this issu=
e please? I&#39;ve tried yq recipe which using more less the same approach =
and there SRC_URI&#39;s are printed properly.</div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">
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
</blockquote></div><br clear=3D"all"><div><br></div></div></blockquote></di=
v><div>Thanks,</div><div><br></div><div>marek</div><span class=3D"gmail_sig=
nature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature">as =
simple and primitive as possible<br>---------------------------------------=
----------<br>Marek Belisko - OPEN-NANDRA<br>Freelance Developer<br><br>Rus=
ka Nova Ves 219 | Presov, 08005 Slovak Republic<br>Tel: +421 915 052 184<br=
>skype: marekwhite<br>twitter: #opennandra<br>web: <a href=3D"http://open-n=
andra.com" target=3D"_blank">http://open-nandra.com</a></div></div>

--0000000000003a3cee06051a505d--

