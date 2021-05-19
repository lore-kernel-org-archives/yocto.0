Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
 by mx.groups.io with SMTP id smtpd.web09.10886.1621428790443125947
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 May 2021 05:53:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=B8XDG/Ym;
 spf=pass (domain: gmail.com, ip: 209.85.166.169, mailfrom: zmuda.w@gmail.com)
Received: by mail-il1-f169.google.com with SMTP id l15so6958171iln.8
        for <yocto@lists.yoctoproject.org>; Wed, 19 May 2021 05:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3+RzmaO8/Hpx+sIsBfnqOWrT3brZiC/wTgImDSId5v4=;
        b=B8XDG/YmbN5MH71Tra5WPeC2+a4J0CqSvine4Hi+3rBHSAi7vbwUkqfMRnGBwzPJej
         fsn2fR7lue9/kbbyi14KR5UVi4f8iWIfgsrTxQpqb5DbjsC5sieydqXs3zQkc9ayrw+0
         cHKS/In1bNVs429dSi7WGJJvATvsXe4dU06FVoX2qFFfvakwVHvgfTY1oHxo0YXvudoq
         y3G4dOtr1wlrObHFlA6OsTSS5spk++afJ4hOcaMbClFuzaPtxa0XZDJtlrdeHpzPam/x
         MTLTzf4AdODS4WbkA6/m463moTEtXe9xS0KVLCvx3bzh0l5Kznviqg9FgpXldoFbw6i6
         erIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3+RzmaO8/Hpx+sIsBfnqOWrT3brZiC/wTgImDSId5v4=;
        b=DxoSC3xZtcj8K8MNbPfsaiWjSOanZDJ4Bs0pKhn08ztl1CNhaQx9hcHSkCiXdxnXpD
         MEOvPv8MF+jLRG0TJY1WAjuy2M8za5nST8hD8P7XmBL+fJImx48vaXkPhLvX3RWBUCvT
         KJdc11qYqmm+Q14e/SmVtN7D9XiKeTfKLpf75d0WxKIFIklSdO9PQ+P1K7KDIJOpYIXf
         j1qaJ0XYP1cM2x8IaFvyL82zgTUVECdnSSRzCkMs/sSTkQYcGfG6VhOGKwpXHspTn8LJ
         BQsBlvpTmxpVHMAq1sZEJgJ/ZDJapDxO4rla6NYD015IHh9QxmWNtXJOZS9Uu7Cf69Vh
         kJeA==
X-Gm-Message-State: AOAM530TeuD+cwspN7O+ItjNllmJFUm3i0jTJ2N2SDgiz4WGFZ0P4GZL
	OslLK065a3oCeOHi6NED+1YKCl7a5x6vGvGZEQc=
X-Google-Smtp-Source: ABdhPJxOdV4UbiCF2Ogi120nXEF0fI77WGyo2EBeCOempf1jynHkKZR8mgxqvt2pZSmEwvHm3/D6m+Jv4DmO7+AMyOU=
X-Received: by 2002:a05:6e02:8f2:: with SMTP id n18mr9748814ilt.299.1621428789841;
 Wed, 19 May 2021 05:53:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210518122927.2554655-1-zmuda.w@gmail.com> <20210518122927.2554655-3-zmuda.w@gmail.com>
 <CAPoiz9wP6+k5BOiuqhZ5UjKC+ZAFuqgFj7beGzPXRvLch=oW_A@mail.gmail.com>
 <916c2b8e69224dba9179edff271c659d@huawei.com> <CAPoiz9w0hm_L_KZH+eM4bnPDdJzkt+ETwuteCPyfW4PAmoChsg@mail.gmail.com>
 <cb054588e7434b3bb6f04077a4313ea3@intel.com>
In-Reply-To: <cb054588e7434b3bb6f04077a4313ea3@intel.com>
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
Date: Wed, 19 May 2021 14:52:58 +0200
Message-ID: <CAL0FYXZVpjjOHCLhF485SPdswDQ+uySyO3PQBu43dhmDOxnv+w@mail.gmail.com>
Subject: Re: [yocto] [meta-zephyr][PATCH 2/2] zephyr-kernel-src.inc: set default preferred version to 2.6.0-rc1
To: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
Cc: Jon Mason <jdmason@kudzu.us>, Zbigniew Bodek <zbigniew.bodek@huawei.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000000c136105c2ae4f04"

--0000000000000c136105c2ae4f04
Content-Type: text/plain; charset="UTF-8"

Hello everybody, thanks for your comments.

Let's abandon this patch then. Judging by meta-zephyr commit history we
guessed that bumping up the rev to -rc is compliant with your policy. In
that case we, as meta-zephyr users, will just wait for the upstream to
reach stable 2.6.0.

Regards,
Wojciech

On Wed, 19 May 2021 at 08:08, Saini, Naveen Kumar <
naveen.kumar.saini@intel.com> wrote:

>
>
> > -----Original Message-----
> > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> > Behalf Of Jon Mason
> > Sent: Wednesday, May 19, 2021 12:00 AM
> > To: Zbigniew Bodek <zbigniew.bodek@huawei.com>
> > Cc: Wojciech Zmuda <zmuda.w@gmail.com>; yocto@lists.yoctoproject.org
> > Subject: Re: [yocto] [meta-zephyr][PATCH 2/2] zephyr-kernel-src.inc: set
> > default preferred version to 2.6.0-rc1
> >
> > On Tue, May 18, 2021 at 11:24 AM Zbigniew Bodek
> > <zbigniew.bodek@huawei.com> wrote:
> > >
> > > Hello Jon,
> > >
> > > Thanks for your comment. I will try to answer.
> > > This change is to include following bug fix:
> > > https://github.com/zephyrproject-rtos/zephyr/pull/33251
> > > I can also see we've had multiple RC versions in the past but in
> principle, I'm
> > not against your suggestion to have master-next, etc. So where should we
> go
> > from here?
> >
> > My recommendation would be to pull that patch out and apply it directly
> on
> > top of v2.5.0 (assuming that is feasible).  Maybe even asking the
> upstream
> > zephyr project to port this to v2.5.0 and make it
> > v2.5.1 would be the optimal solution.
>
> [Naveen]  We can wait for stable release. If it is urgent, we can carry
> patches for bug fixes,  in case upstream does not give dot release !
>
> > As far as a master-next branch, that would be up to Naveen.
> >
> > >
> > > Kind regards
> > > Zbigniew
> > >
> > > -----Original Message-----
> > > From: Jon Mason [mailto:jdmason@kudzu.us]
> > > Sent: 18 May, 2021 17:17
> > > To: Wojciech Zmuda <zmuda.w@gmail.com>
> > > Cc: yocto@lists.yoctoproject.org; Zbigniew Bodek
> > > <zbigniew.bodek@huawei.com>
> > > Subject: Re: [yocto] [meta-zephyr][PATCH 2/2] zephyr-kernel-src.inc:
> > > set default preferred version to 2.6.0-rc1
> > >
> > > On Tue, May 18, 2021 at 8:30 AM Wojciech Zmuda <zmuda.w@gmail.com>
> > wrote:
> > > >
> > > > From: Zbigniew Bodek <zbigniew.bodek@huawei.com>
> > > >
> > > > Signed-off-by: Zbigniew Bodek <zbigniew.bodek@huawei.com>
> > >
> > > Do we really want to have Zephyr on a release candidate?  IMHO, we
> > should never be doing this, as we should want the kernel in meta-zephyr
> to
> > be as stable as possible.  If this is really desired, perhaps a
> master-next
> > branch for things like this.
> > >
> > > Thanks,
> > > Jon
> > >
> > > > ---
> > > >  recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> > > > b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> > > > index 5ee40d4..9fc08ba 100644
> > > > --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> > > > +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> > > > @@ -2,7 +2,7 @@ LICENSE = "Apache-2.0"
> > > >  LIC_FILES_CHKSUM =
> > "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
> > > >
> > > >  # Default to a stable version
> > > > -PREFERRED_VERSION_zephyr-kernel ??= "2.5.0"
> > > > +PREFERRED_VERSION_zephyr-kernel ??= "2.6.0-rc1"
> > > >  include zephyr-kernel-src-${PREFERRED_VERSION_zephyr-kernel}.inc
> > > >
> > > >  inherit cmake
> > > > --
> > > > 2.25.1
> > > >
> > > >
> > > >
> > > >
>

--0000000000000c136105c2ae4f04
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello everybody, thanks for your comments.</div><div>=
<br></div><div>Let&#39;s abandon this patch then. Judging by meta-zephyr co=
mmit history we guessed that bumping up the rev to -rc is compliant with yo=
ur policy. In that case we, as meta-zephyr users, will just wait for the up=
stream to reach stable 2.6.0.</div><div><br></div><div>Regards,</div><div>W=
ojciech<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Wed, 19 May 2021 at 08:08, Saini, Naveen Kumar &lt;<a h=
ref=3D"mailto:naveen.kumar.saini@intel.com">naveen.kumar.saini@intel.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br=
>
<br>
&gt; -----Original Message-----<br>
&gt; From: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctop=
roject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt; On<br>
&gt; Behalf Of Jon Mason<br>
&gt; Sent: Wednesday, May 19, 2021 12:00 AM<br>
&gt; To: Zbigniew Bodek &lt;<a href=3D"mailto:zbigniew.bodek@huawei.com" ta=
rget=3D"_blank">zbigniew.bodek@huawei.com</a>&gt;<br>
&gt; Cc: Wojciech Zmuda &lt;<a href=3D"mailto:zmuda.w@gmail.com" target=3D"=
_blank">zmuda.w@gmail.com</a>&gt;; <a href=3D"mailto:yocto@lists.yoctoproje=
ct.org" target=3D"_blank">yocto@lists.yoctoproject.org</a><br>
&gt; Subject: Re: [yocto] [meta-zephyr][PATCH 2/2] zephyr-kernel-src.inc: s=
et<br>
&gt; default preferred version to 2.6.0-rc1<br>
&gt; <br>
&gt; On Tue, May 18, 2021 at 11:24 AM Zbigniew Bodek<br>
&gt; &lt;<a href=3D"mailto:zbigniew.bodek@huawei.com" target=3D"_blank">zbi=
gniew.bodek@huawei.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Hello Jon,<br>
&gt; &gt;<br>
&gt; &gt; Thanks for your comment. I will try to answer.<br>
&gt; &gt; This change is to include following bug fix:<br>
&gt; &gt; <a href=3D"https://github.com/zephyrproject-rtos/zephyr/pull/3325=
1" rel=3D"noreferrer" target=3D"_blank">https://github.com/zephyrproject-rt=
os/zephyr/pull/33251</a><br>
&gt; &gt; I can also see we&#39;ve had multiple RC versions in the past but=
 in principle, I&#39;m<br>
&gt; not against your suggestion to have master-next, etc. So where should =
we go<br>
&gt; from here?<br>
&gt; <br>
&gt; My recommendation would be to pull that patch out and apply it directl=
y on<br>
&gt; top of v2.5.0 (assuming that is feasible).=C2=A0 Maybe even asking the=
 upstream<br>
&gt; zephyr project to port this to v2.5.0 and make it<br>
&gt; v2.5.1 would be the optimal solution.<br>
<br>
[Naveen]=C2=A0 We can wait for stable release. If it is urgent, we can carr=
y patches for bug fixes,=C2=A0 in case upstream does not give dot release !=
<br>
<br>
&gt; As far as a master-next branch, that would be up to Naveen.<br>
&gt; <br>
&gt; &gt;<br>
&gt; &gt; Kind regards<br>
&gt; &gt; Zbigniew<br>
&gt; &gt;<br>
&gt; &gt; -----Original Message-----<br>
&gt; &gt; From: Jon Mason [mailto:<a href=3D"mailto:jdmason@kudzu.us" targe=
t=3D"_blank">jdmason@kudzu.us</a>]<br>
&gt; &gt; Sent: 18 May, 2021 17:17<br>
&gt; &gt; To: Wojciech Zmuda &lt;<a href=3D"mailto:zmuda.w@gmail.com" targe=
t=3D"_blank">zmuda.w@gmail.com</a>&gt;<br>
&gt; &gt; Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_bl=
ank">yocto@lists.yoctoproject.org</a>; Zbigniew Bodek<br>
&gt; &gt; &lt;<a href=3D"mailto:zbigniew.bodek@huawei.com" target=3D"_blank=
">zbigniew.bodek@huawei.com</a>&gt;<br>
&gt; &gt; Subject: Re: [yocto] [meta-zephyr][PATCH 2/2] zephyr-kernel-src.i=
nc:<br>
&gt; &gt; set default preferred version to 2.6.0-rc1<br>
&gt; &gt;<br>
&gt; &gt; On Tue, May 18, 2021 at 8:30 AM Wojciech Zmuda &lt;<a href=3D"mai=
lto:zmuda.w@gmail.com" target=3D"_blank">zmuda.w@gmail.com</a>&gt;<br>
&gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; From: Zbigniew Bodek &lt;<a href=3D"mailto:zbigniew.bodek@hu=
awei.com" target=3D"_blank">zbigniew.bodek@huawei.com</a>&gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Signed-off-by: Zbigniew Bodek &lt;<a href=3D"mailto:zbigniew=
.bodek@huawei.com" target=3D"_blank">zbigniew.bodek@huawei.com</a>&gt;<br>
&gt; &gt;<br>
&gt; &gt; Do we really want to have Zephyr on a release candidate?=C2=A0 IM=
HO, we<br>
&gt; should never be doing this, as we should want the kernel in meta-zephy=
r to<br>
&gt; be as stable as possible.=C2=A0 If this is really desired, perhaps a m=
aster-next<br>
&gt; branch for things like this.<br>
&gt; &gt;<br>
&gt; &gt; Thanks,<br>
&gt; &gt; Jon<br>
&gt; &gt;<br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt;=C2=A0 recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc | 2=
 +-<br>
&gt; &gt; &gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.=
inc<br>
&gt; &gt; &gt; b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc<br>
&gt; &gt; &gt; index 5ee40d4..9fc08ba 100644<br>
&gt; &gt; &gt; --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc<br>
&gt; &gt; &gt; +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc<br>
&gt; &gt; &gt; @@ -2,7 +2,7 @@ LICENSE =3D &quot;Apache-2.0&quot;<br>
&gt; &gt; &gt;=C2=A0 LIC_FILES_CHKSUM =3D<br>
&gt; &quot;file://LICENSE;md5=3Dfa818a259cbed7ce8bc2a22d35a464fc&quot;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;=C2=A0 # Default to a stable version<br>
&gt; &gt; &gt; -PREFERRED_VERSION_zephyr-kernel ??=3D &quot;2.5.0&quot;<br>
&gt; &gt; &gt; +PREFERRED_VERSION_zephyr-kernel ??=3D &quot;2.6.0-rc1&quot;=
<br>
&gt; &gt; &gt;=C2=A0 include zephyr-kernel-src-${PREFERRED_VERSION_zephyr-k=
ernel}.inc<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;=C2=A0 inherit cmake<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt; 2.25.1<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
</blockquote></div>

--0000000000000c136105c2ae4f04--
