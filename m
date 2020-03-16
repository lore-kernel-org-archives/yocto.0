Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
 by mx.groups.io with SMTP id smtpd.web11.67810.1584365604132108477
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Mar 2020 06:33:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kf+B/91K;
 spf=pass (domain: gmail.com, ip: 209.85.217.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f47.google.com with SMTP id i25so11255978vsq.9
        for <yocto@lists.yoctoproject.org>; Mon, 16 Mar 2020 06:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wIk6Efxz5QrzQdJFEOmBmX73skoMm10EZ4SCoDmqw5c=;
        b=Kf+B/91KQoZc9UHcafpWJvalystJk9zZ8M/07B6LiriqehAt1FyHJW0XagM3moFXTg
         2DPIMnGxCfKMcMFhyOqpL0eS52rFDDTWSvHyvUCpqnbhYWkCMqu3n5ziCLQzLQlMb/sd
         zV+TeMan1fVTBjitQeQXlHtPafiFvKWRDbQAQKTqHb6lpirh82EFtSOcnusnpL2cAHGl
         S2NOhy2x3oOGLlSFQEUrm0Kn4AhOb+92uWfkDqtq88j2QN+DyOrMxyONy0qqd6DxiVGf
         cAXLIdn1m0gZRKAHFfuNwMAYvh7qS8jcSIhZXXXSOXVTN0bBHXLWXYM+hNYZJ8zzztwp
         /Ksw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wIk6Efxz5QrzQdJFEOmBmX73skoMm10EZ4SCoDmqw5c=;
        b=edEhspXT9tw6paueQdh4mJPZBTc0CS1Y8JIL4fFgX2wh+FeepybPLpe5Fai1HQ0drj
         cZHJhuDXcMKHTl1KqUgyhJDEUoHaXykQqnn0V3rB4uWFCbBCuZApcYq9FqNf/JuCCkep
         zqwTuC8Lse5wYmYVEuVqseMhkjNbUC1LE5PA60Qn5nDeugIYjq62c6ynoVxsd9oCvPK7
         FM3oa3AOnsg7414TbQ05mVjKq1ijnGCnT6Z/pivg9o2jik7u9T/K7vntUFKS2PFy5roT
         1eNkx0C3r/4kSVPqTPYa5GVc2wsFKru1qoXAph+mBxtH0074KFJHiMYTeVeaDq2FwIKH
         lNdg==
X-Gm-Message-State: ANhLgQ1YwmXsTMwO+cxG8UnftGIvM6uy9ZELpyCf4a71UTTBdEgfiu76
	p1A4eZx5c3/llw4tpBs9BviHSFNjhN/SZH2LZA4=
X-Google-Smtp-Source: ADFU+vsqEygXGe5o33k1LWa0vaKxthP8FKTX7ozsMebww5F+ftdgfWeR4zLTeIqJYByFXgDAJbvlWQcjAari6YfjQGc=
X-Received: by 2002:a67:de97:: with SMTP id r23mr18700674vsk.23.1584365603225;
 Mon, 16 Mar 2020 06:33:23 -0700 (PDT)
MIME-Version: 1.0
References: <cb73c40e-6eed-d626-513d-c1012a0f9f32@googlemail.com>
 <20200313162915.GM1578@denix.org> <ec9fb315-af0f-8d9b-18aa-43640e6a7df7@googlemail.com>
 <CANNYZj_==0Xsvp+_6YnkPDUSGOFKJE7orEQNubaTr_giG+qv4Q@mail.gmail.com>
 <1ff9ea04-a995-606c-45c6-d51bc4839b57@googlemail.com> <CANNYZj8VnfmmEU_VHVu+Tq_NoiyzUGEmFpisxeg4bJ8Vr_00fw@mail.gmail.com>
 <17c9ee3f-5c7c-9515-f9fb-bfff0cb1fa0e@googlemail.com>
In-Reply-To: <17c9ee3f-5c7c-9515-f9fb-bfff0cb1fa0e@googlemail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 16 Mar 2020 14:33:11 +0100
Message-ID: <CANNYZj83GjX=UT6ssn17HD2ff1RwF4pX9QwdAiOf8=YdUyqyaw@mail.gmail.com>
Subject: Re: [yocto] git fetcher: does not execute git fetch --tags or similar when HEAD has not changed
To: =?UTF-8?Q?Matthias_Sch=C3=B6pfer?= <matthias.schoepfer@googlemail.com>
Cc: Denys Dmytriyenko <denis@denix.org>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f9838605a0f8dcbe"

--000000000000f9838605a0f8dcbe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Right, now I see what you mean. The build process does not rely on static
metadata in the source tree to determine the version, and is instead poking
the git checkout to determine what the version is? That's not established
practice. You should write the version into a file in the source tree, then
create a commit, then tag that commit with the version.

Alternatively, you could pass in ${PV} to the build process instead as a
command line parameter.

Alex

On Mon, 16 Mar 2020 at 12:52, Matthias Sch=C3=B6pfer <
matthias.schoepfer@googlemail.com> wrote:

> Hi Alexander,
>
> thanks for your message. I will try to explain my issue once again,
> since it still seems not clearly formulated. We build our images on CI
> (Jenkins). There, we have a shared download dir, so that we do not have
> to fetch all sources on every build. This gets shared for our
> "experimental" builds, that use latest git master HEAD (yes, evil
> AUTOREV) and our "stable" builds, where only tagged (i.e. no AUTOREV
> versions) are used. Our software uses the git tag to create a version.
> So, when on experimental, you might get something like:
>
> # ourCoolSoftware --version
> This is ourCoolSoftware version 1.2.3-3 (gabcdef1)
>
> What happens is, that people check their changes on the experimental
> build. After testing, it is considered for the next release, so they
> attach a version tag to the git repository and update the _<version>.bb
> accordingly. Now they build the image with the "stable" profile. But the
> hash "abcdef1" has not changed. Hence, although we pushed a new tag,
> yocto git fetcher does not update the cached download git, since git
> hashes match (same with SRCREV). Which means, even tough we have a
> recipe ourcoolsoftware_1.2.4.bb with SRCREV=3D"abcdef1..." which will
> build the correct hash, our software checks the local repository, which
> is missing the last tag and will still be reporting a wrong version
> 1.2.3-3 for example.
>
> If we were to do a
> bitbake -c cleanall ourcoolsoftware && bitbake ourcoolimage
>
> then we get
> # ourCoolSoftware --version
> This is ourCoolSoftware version 1.2.4 (gabcdef1)
>
> because we artificially force a complete fetch of the repository.
>
> We usually do a clean build (no sstate / tmp / etc.) but we use the
> download dir, because we do not see why we would need to download gcc
> etc. every time. A workaround would be to bitbake -c cleanall our
> packages, but it seems hacky and prone to error (need to keep lists of
> our used software in at least two places). My question is therefore, if
> this is a "bug" and if we were to investigate this and propose a patch,
> if this could this be considered for merge, or if this behaviour is
> intentional and adding a fetch --tags would be considered harmful in any
> way.
>
> Hope, I could bring my point across now.
>
> Thanks and Regards,
>
>   Matthias
>
> On 3/16/20 9:43 AM, Alexander Kanavin wrote:
> > 'devtool upgrade' updates SRCREV to match the version tag that you
> specify:
> >
> > devtool upgrade -V <tag>
> >
> > If you omit -V, it will upgrade to the latest tag. It updates PV as
> > well. Why is it unsuitable for you?
> >
> > Alex
> >
> > On Mon, 16 Mar 2020 at 09:35, Matthias Sch=C3=B6pfer
> > <matthias.schoepfer@googlemail.com
> > <mailto:matthias.schoepfer@googlemail.com>> wrote:
> >
> >     Hi Alexander,
> >
> >     does it solve the Problem of a SRCREV, that has been fetched (for
> >     example for a _git testbuild) and now gets a tag applied and build
> with
> >     the _<version> build. The problem is *not* that the yocto PV packag=
e
> is
> >     wrong *nor* that the wrong version of the software gets build! The
> >     problem is, that the tag does not get fetched and our software gets
> its
> >     version from the git tags. Since this is very convenient to have th=
e
> >     version information in one place only, we will not change this.
> >
> >     Thanks and Regards,
> >
> >         Matthias
> >
> >     On 3/15/20 5:02 PM, Alexander Kanavin wrote:
> >      > On Sun, 15 Mar 2020 at 15:04, Matthias Schoepfer via
> >      > Lists.Yoctoproject.Org <http://Lists.Yoctoproject.Org>
> >     <http://Lists.Yoctoproject.Org>
> >      > <matthias.schoepfer=3Dgooglemail.com@lists.yoctoproject.org
> >     <mailto:googlemail.com@lists.yoctoproject.org>
> >      > <mailto:googlemail.com@lists.yoctoproject.org
> >     <mailto:googlemail.com@lists.yoctoproject.org>>> wrote:
> >      >
> >      >     2) It allows for very convenient bump of versions. We develo=
p
> a
> >      >     product,
> >      >     so, version bumps are on daily or weekly basis. All that is
> >     needed
> >      >     is to
> >      >     rename the .bb file. No need to edit SRCREV.
> >      >
> >      >
> >      > You can trivially script SRCREV updates ('devtool
> upgrade'/'devtool
> >      > finish'). The disadvantage of using tags is that you lose
> >      > reproducibility, as tags can be moved or deleted, and so I
> wouldn't
> >      > encourage this practice.
> >      >
> >      > Alex
> >
> >
> >     --
> >
> >     Dr.-Ing. Matthias Schoepfer
> >     Mobile: +49 175 2062739
> >     email: matthias.schoepfer@googlemail.com
> >     <mailto:matthias.schoepfer@googlemail.com>
> >
>
>
> --
>
> Dr.-Ing. Matthias Schoepfer
> Mobile: +49 175 2062739
> email: matthias.schoepfer@googlemail.com
>

--000000000000f9838605a0f8dcbe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Right, now I see what you mean. The build process doe=
s not rely on static metadata in the source tree to determine the version, =
and is instead poking the git checkout to determine what the version is? Th=
at&#39;s not established practice. You should write the version into a file=
 in the source tree, then create a commit, then tag that commit with the ve=
rsion.<br></div><div><br></div><div>Alternatively, you could pass in ${PV} =
to the build process instead as a command line parameter.</div><div><br></d=
iv><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Mon, 16 Mar 2020 at 12:52, Matthias Sch=C3=B6pfer =
&lt;<a href=3D"mailto:matthias.schoepfer@googlemail.com">matthias.schoepfer=
@googlemail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">Hi Alexander,<br>
<br>
thanks for your message. I will try to explain my issue once again, <br>
since it still seems not clearly formulated. We build our images on CI <br>
(Jenkins). There, we have a shared download dir, so that we do not have <br=
>
to fetch all sources on every build. This gets shared for our <br>
&quot;experimental&quot; builds, that use latest git master HEAD (yes, evil=
 <br>
AUTOREV) and our &quot;stable&quot; builds, where only tagged (i.e. no AUTO=
REV <br>
versions) are used. Our software uses the git tag to create a version. <br>
So, when on experimental, you might get something like:<br>
<br>
# ourCoolSoftware --version<br>
This is ourCoolSoftware version 1.2.3-3 (gabcdef1)<br>
<br>
What happens is, that people check their changes on the experimental <br>
build. After testing, it is considered for the next release, so they <br>
attach a version tag to the git repository and update the _&lt;version&gt;.=
bb <br>
accordingly. Now they build the image with the &quot;stable&quot; profile. =
But the <br>
hash &quot;abcdef1&quot; has not changed. Hence, although we pushed a new t=
ag, <br>
yocto git fetcher does not update the cached download git, since git <br>
hashes match (same with SRCREV). Which means, even tough we have a <br>
recipe <a href=3D"http://ourcoolsoftware_1.2.4.bb" rel=3D"noreferrer" targe=
t=3D"_blank">ourcoolsoftware_1.2.4.bb</a> with SRCREV=3D&quot;abcdef1...&qu=
ot; which will <br>
build the correct hash, our software checks the local repository, which <br=
>
is missing the last tag and will still be reporting a wrong version <br>
1.2.3-3 for example.<br>
<br>
If we were to do a<br>
bitbake -c cleanall ourcoolsoftware &amp;&amp; bitbake ourcoolimage<br>
<br>
then we get<br>
# ourCoolSoftware --version<br>
This is ourCoolSoftware version 1.2.4 (gabcdef1)<br>
<br>
because we artificially force a complete fetch of the repository.<br>
<br>
We usually do a clean build (no sstate / tmp / etc.) but we use the <br>
download dir, because we do not see why we would need to download gcc <br>
etc. every time. A workaround would be to bitbake -c cleanall our <br>
packages, but it seems hacky and prone to error (need to keep lists of <br>
our used software in at least two places). My question is therefore, if <br=
>
this is a &quot;bug&quot; and if we were to investigate this and propose a =
patch, <br>
if this could this be considered for merge, or if this behaviour is <br>
intentional and adding a fetch --tags would be considered harmful in any <b=
r>
way.<br>
<br>
Hope, I could bring my point across now.<br>
<br>
Thanks and Regards,<br>
<br>
=C2=A0 Matthias<br>
<br>
On 3/16/20 9:43 AM, Alexander Kanavin wrote:<br>
&gt; &#39;devtool upgrade&#39; updates SRCREV to match the version tag that=
 you specify:<br>
&gt; <br>
&gt; devtool upgrade -V &lt;tag&gt;<br>
&gt; <br>
&gt; If you omit -V, it will upgrade to the latest tag. It updates PV as <b=
r>
&gt; well. Why is it unsuitable for you?<br>
&gt; <br>
&gt; Alex<br>
&gt; <br>
&gt; On Mon, 16 Mar 2020 at 09:35, Matthias Sch=C3=B6pfer <br>
&gt; &lt;<a href=3D"mailto:matthias.schoepfer@googlemail.com" target=3D"_bl=
ank">matthias.schoepfer@googlemail.com</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:matthias.schoepfer@googlemail.com" target=
=3D"_blank">matthias.schoepfer@googlemail.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Hi Alexander,<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0does it solve the Problem of a SRCREV, that has bee=
n fetched (for<br>
&gt;=C2=A0 =C2=A0 =C2=A0example for a _git testbuild) and now gets a tag ap=
plied and build with<br>
&gt;=C2=A0 =C2=A0 =C2=A0the _&lt;version&gt; build. The problem is *not* th=
at the yocto PV package is<br>
&gt;=C2=A0 =C2=A0 =C2=A0wrong *nor* that the wrong version of the software =
gets build! The<br>
&gt;=C2=A0 =C2=A0 =C2=A0problem is, that the tag does not get fetched and o=
ur software gets its<br>
&gt;=C2=A0 =C2=A0 =C2=A0version from the git tags. Since this is very conve=
nient to have the<br>
&gt;=C2=A0 =C2=A0 =C2=A0version information in one place only, we will not =
change this.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Thanks and Regards,<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Matthias<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 3/15/20 5:02 PM, Alexander Kanavin wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; On Sun, 15 Mar 2020 at 15:04, Matthias Schoep=
fer via<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"http://Lists.Yoctoproject.Org" rel=
=3D"noreferrer" target=3D"_blank">Lists.Yoctoproject.Org</a> &lt;<a href=3D=
"http://Lists.Yoctoproject.Org" rel=3D"noreferrer" target=3D"_blank">http:/=
/Lists.Yoctoproject.Org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://Lists.Yoctoproject.Org" rel=
=3D"noreferrer" target=3D"_blank">http://Lists.Yoctoproject.Org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &lt;matthias.schoepfer=3D<a href=3D"mailto:go=
oglemail.com@lists.yoctoproject.org" target=3D"_blank">googlemail.com@lists=
.yoctoproject.org</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:googlemail.com@lists.y=
octoproject.org" target=3D"_blank">googlemail.com@lists.yoctoproject.org</a=
>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &lt;mailto:<a href=3D"mailto:googlemail.com@l=
ists.yoctoproject.org" target=3D"_blank">googlemail.com@lists.yoctoproject.=
org</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:googlemail.com@lists.y=
octoproject.org" target=3D"_blank">googlemail.com@lists.yoctoproject.org</a=
>&gt;&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A02) It allows for very conv=
enient bump of versions. We develop a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0product,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0so, version bumps are on d=
aily or weekly basis. All that is<br>
&gt;=C2=A0 =C2=A0 =C2=A0needed<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0is to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0rename the .bb file. No ne=
ed to edit SRCREV.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; You can trivially script SRCREV updates (&#39=
;devtool upgrade&#39;/&#39;devtool<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; finish&#39;). The disadvantage of using tags =
is that you lose<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; reproducibility, as tags can be moved or dele=
ted, and so I wouldn&#39;t<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; encourage this practice.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Alex<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-- <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Dr.-Ing. Matthias Schoepfer<br>
&gt;=C2=A0 =C2=A0 =C2=A0Mobile: +49 175 2062739<br>
&gt;=C2=A0 =C2=A0 =C2=A0email: <a href=3D"mailto:matthias.schoepfer@googlem=
ail.com" target=3D"_blank">matthias.schoepfer@googlemail.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:matthias.schoepfer@goo=
glemail.com" target=3D"_blank">matthias.schoepfer@googlemail.com</a>&gt;<br=
>
&gt; <br>
<br>
<br>
-- <br>
<br>
Dr.-Ing. Matthias Schoepfer<br>
Mobile: +49 175 2062739<br>
email: <a href=3D"mailto:matthias.schoepfer@googlemail.com" target=3D"_blan=
k">matthias.schoepfer@googlemail.com</a><br>
</blockquote></div>

--000000000000f9838605a0f8dcbe--
