Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
 by mx.groups.io with SMTP id smtpd.web11.63541.1584348228231005276
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Mar 2020 01:43:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QYSwRLtn;
 spf=pass (domain: gmail.com, ip: 209.85.166.179, mailfrom: alex.kanavin@gmail.com)
Received: by mail-il1-f179.google.com with SMTP id w15so8313589ilq.6
        for <yocto@lists.yoctoproject.org>; Mon, 16 Mar 2020 01:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aCj91xHqTxri3sOyUdW6mSjNzvbHsdP1j0fMZerGWYY=;
        b=QYSwRLtnm/Xxtt7AOjXJVaAnCzUuzFq/6MdenOKT085bwmgxY8YjTobhXroMjLjbbq
         JLin1A1nF9YGV855oe6D4E41yqs5PegQIHCq1Od2VRLtqMmu7EQF8RQ5vT8OSQ502BP6
         Nn+kiCuDheTtY3sIb6lOPAHDOmta1KKCLXPLhXnAfi2RH+ZdcicxWhRkSASQbit1iIWc
         eGxAemwLVzMbZaAmGhiDkjeB4yNebux+qsyTpdhT3spGrjr6LoaaL1SrEHeHKmTtdkVO
         ydb0b4fwBWrDpysQFex1OHn8PW6AbCkt01thzpk5II11Ux5JKLEtc6NjnTeX1XIIUU1B
         JF/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aCj91xHqTxri3sOyUdW6mSjNzvbHsdP1j0fMZerGWYY=;
        b=WWfbaD7ObPhPjBnCK3WdnKHVJkr0oOKpgv+ocTD2DWKYh6qtuE3SgIAx2qI2dyPXqs
         AI87I3z5WAhsqmRgbpE6fTwOBnUQNqEC8K0aB5wcJV2Nnxk5QHhHV1KgNm3d4k683NZ6
         Hh5zyRX8PN18ChcVDX9aZGqGOd+sEMOoOtqhyW7BWf9ee9bDInoR57n4uSgehWMMb1cI
         AmEaad5EjDgjCUfqgP4uOvESX5AxdK1jVAM6eruLYZjD//3R5f2VMxgkbHZIr6h2WQi3
         2Z0cmGE2ZdyEVa6ji4DZEI7FwatyIzYWX4xiKrd0TTojBOvN29HWdoZfK3pSyhbWtuOD
         5LIQ==
X-Gm-Message-State: ANhLgQ2xRc3E6nyVDfzGQmlEqhTOuPlCbmQ9MrjLxBBgdaQw5oyXOscN
	nQ5MO6/n8cY9z+RYHhTOLEz1L+mzEHEGqDhTN28=
X-Google-Smtp-Source: ADFU+vtkJ3gFKFzTD1qycrNb3BpCVKdZ86el/YVmtAnR2ZiK9lhfMW65abvJAPgkK5swmBXcegphNuY59XbyW13fCV0=
X-Received: by 2002:a92:1906:: with SMTP id 6mr26783300ilz.130.1584348227533;
 Mon, 16 Mar 2020 01:43:47 -0700 (PDT)
MIME-Version: 1.0
References: <cb73c40e-6eed-d626-513d-c1012a0f9f32@googlemail.com>
 <20200313162915.GM1578@denix.org> <ec9fb315-af0f-8d9b-18aa-43640e6a7df7@googlemail.com>
 <CANNYZj_==0Xsvp+_6YnkPDUSGOFKJE7orEQNubaTr_giG+qv4Q@mail.gmail.com> <1ff9ea04-a995-606c-45c6-d51bc4839b57@googlemail.com>
In-Reply-To: <1ff9ea04-a995-606c-45c6-d51bc4839b57@googlemail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 16 Mar 2020 09:43:35 +0100
Message-ID: <CANNYZj8VnfmmEU_VHVu+Tq_NoiyzUGEmFpisxeg4bJ8Vr_00fw@mail.gmail.com>
Subject: Re: [yocto] git fetcher: does not execute git fetch --tags or similar when HEAD has not changed
To: =?UTF-8?Q?Matthias_Sch=C3=B6pfer?= <matthias.schoepfer@googlemail.com>
Cc: Denys Dmytriyenko <denis@denix.org>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004d812e05a0f4d147"

--0000000000004d812e05a0f4d147
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

'devtool upgrade' updates SRCREV to match the version tag that you specify:

devtool upgrade -V <tag>

If you omit -V, it will upgrade to the latest tag. It updates PV as well.
Why is it unsuitable for you?

Alex

On Mon, 16 Mar 2020 at 09:35, Matthias Sch=C3=B6pfer <
matthias.schoepfer@googlemail.com> wrote:

> Hi Alexander,
>
> does it solve the Problem of a SRCREV, that has been fetched (for
> example for a _git testbuild) and now gets a tag applied and build with
> the _<version> build. The problem is *not* that the yocto PV package is
> wrong *nor* that the wrong version of the software gets build! The
> problem is, that the tag does not get fetched and our software gets its
> version from the git tags. Since this is very convenient to have the
> version information in one place only, we will not change this.
>
> Thanks and Regards,
>
>    Matthias
>
> On 3/15/20 5:02 PM, Alexander Kanavin wrote:
> > On Sun, 15 Mar 2020 at 15:04, Matthias Schoepfer via
> > Lists.Yoctoproject.Org <http://Lists.Yoctoproject.Org>
> > <matthias.schoepfer=3Dgooglemail.com@lists.yoctoproject.org
> > <mailto:googlemail.com@lists.yoctoproject.org>> wrote:
> >
> >     2) It allows for very convenient bump of versions. We develop a
> >     product,
> >     so, version bumps are on daily or weekly basis. All that is needed
> >     is to
> >     rename the .bb file. No need to edit SRCREV.
> >
> >
> > You can trivially script SRCREV updates ('devtool upgrade'/'devtool
> > finish'). The disadvantage of using tags is that you lose
> > reproducibility, as tags can be moved or deleted, and so I wouldn't
> > encourage this practice.
> >
> > Alex
>
>
> --
>
> Dr.-Ing. Matthias Schoepfer
> Mobile: +49 175 2062739
> email: matthias.schoepfer@googlemail.com
>

--0000000000004d812e05a0f4d147
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>&#39;devtool upgrade&#39; updates SRCREV to match the=
 version tag that you specify:</div><div><br></div><div>devtool upgrade -V =
&lt;tag&gt;</div><div><br></div><div>If you omit -V, it will upgrade to the=
 latest tag. It updates PV as well. Why is it unsuitable for you?<br></div>=
<div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Mon, 16 Mar 2020 at 09:35, Matthias Sc=
h=C3=B6pfer &lt;<a href=3D"mailto:matthias.schoepfer@googlemail.com">matthi=
as.schoepfer@googlemail.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">Hi Alexander,<br>
<br>
does it solve the Problem of a SRCREV, that has been fetched (for <br>
example for a _git testbuild) and now gets a tag applied and build with <br=
>
the _&lt;version&gt; build. The problem is *not* that the yocto PV package =
is <br>
wrong *nor* that the wrong version of the software gets build! The <br>
problem is, that the tag does not get fetched and our software gets its <br=
>
version from the git tags. Since this is very convenient to have the <br>
version information in one place only, we will not change this.<br>
<br>
Thanks and Regards,<br>
<br>
=C2=A0 =C2=A0Matthias<br>
<br>
On 3/15/20 5:02 PM, Alexander Kanavin wrote:<br>
&gt; On Sun, 15 Mar 2020 at 15:04, Matthias Schoepfer via <br>
&gt; <a href=3D"http://Lists.Yoctoproject.Org" rel=3D"noreferrer" target=3D=
"_blank">Lists.Yoctoproject.Org</a> &lt;<a href=3D"http://Lists.Yoctoprojec=
t.Org" rel=3D"noreferrer" target=3D"_blank">http://Lists.Yoctoproject.Org</=
a>&gt; <br>
&gt; &lt;matthias.schoepfer=3D<a href=3D"mailto:googlemail.com@lists.yoctop=
roject.org" target=3D"_blank">googlemail.com@lists.yoctoproject.org</a> <br=
>
&gt; &lt;mailto:<a href=3D"mailto:googlemail.com@lists.yoctoproject.org" ta=
rget=3D"_blank">googlemail.com@lists.yoctoproject.org</a>&gt;&gt; wrote:<br=
>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A02) It allows for very convenient bump of versions. =
We develop a<br>
&gt;=C2=A0 =C2=A0 =C2=A0product,<br>
&gt;=C2=A0 =C2=A0 =C2=A0so, version bumps are on daily or weekly basis. All=
 that is needed<br>
&gt;=C2=A0 =C2=A0 =C2=A0is to<br>
&gt;=C2=A0 =C2=A0 =C2=A0rename the .bb file. No need to edit SRCREV.<br>
&gt; <br>
&gt; <br>
&gt; You can trivially script SRCREV updates (&#39;devtool upgrade&#39;/&#3=
9;devtool <br>
&gt; finish&#39;). The disadvantage of using tags is that you lose <br>
&gt; reproducibility, as tags can be moved or deleted, and so I wouldn&#39;=
t <br>
&gt; encourage this practice.<br>
&gt; <br>
&gt; Alex<br>
<br>
<br>
-- <br>
<br>
Dr.-Ing. Matthias Schoepfer<br>
Mobile: +49 175 2062739<br>
email: <a href=3D"mailto:matthias.schoepfer@googlemail.com" target=3D"_blan=
k">matthias.schoepfer@googlemail.com</a><br>
</blockquote></div>

--0000000000004d812e05a0f4d147--
