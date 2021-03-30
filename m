Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web11.52.1617118178660313383
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Mar 2021 08:29:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=SyCYt1aM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.46, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lf1-f46.google.com with SMTP id d12so3335622lfv.11
        for <yocto@lists.yoctoproject.org>; Tue, 30 Mar 2021 08:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=z2g8uchHM8tN8CGqQXJq9WwJ15OXhyl+zG2gKkuc17s=;
        b=SyCYt1aMPSxFhE6LAFv1qOZTZ/4PVi+RnWWa+/Wa6DOQsotF48RK0eldv2buO5HWOE
         tP1q3eMchg/Gih4Iq7HRkzhFL0fpnvIqs0Qf5vKZGhkaAVa3x9UxaF4nLB5UACPSKJVg
         PbrV7ORp8GHiBS3Vf3DvHG3lAms3r3mjKdFv0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=z2g8uchHM8tN8CGqQXJq9WwJ15OXhyl+zG2gKkuc17s=;
        b=Nebz8an9p6uZhJTH2mdl6++zs8CuWT0NW/24ZB90jLXeUCUdoXAikQc3HWY7AxKhnC
         J4NrqK2Qcb8S7G9tLEBCgVi/HzCm6NI3y0qrSlzwcaNR6M49OhHvmhJbswjG+G1a1NSD
         HJyLO4N5hQTz136+V2MAgW5hnko+1kiWMHEr6HsoPa8DypVYXxsja0c6txjXmcsbrt0o
         R8xjf/azsMiBWf2EYgm/T9FL3pBFrSUeSPyAovJMy2VTqUjlM2ej/CHAG1IQGZlvZGGf
         uZ2WmAbeVerI+98VkuF36cznrOUK1gBjjIG1fxG2RktiRWKc4IwhYTOppDfok04rjDoZ
         4X5g==
X-Gm-Message-State: AOAM531gMmq1lvLaLPgtJIQmGLJUhRF07XMZft0qxA0aFtg4/nqrmMj2
	eYZE+ZRcipba/IDtL+HNxuOg6MkpvxRcizXhQl6idw==
X-Google-Smtp-Source: ABdhPJzG1yUwZ/hz+OAdi1TTdYslaSmXZC2lFzxF7618WzCcHtwEW8kM2rtD3ejnckEakqFmBO+JuzqZ3kYppQig3M4=
X-Received: by 2002:a19:48d2:: with SMTP id v201mr19610630lfa.504.1617118176652;
 Tue, 30 Mar 2021 08:29:36 -0700 (PDT)
MIME-Version: 1.0
References: <4Qxn.1617074544212136798.2egN@lists.yoctoproject.org> <CAEt6NwotWrmAwXcFsD2asp0LUG42pn1J_6WzW4vDAF+RvrA3ig@mail.gmail.com>
In-Reply-To: <CAEt6NwotWrmAwXcFsD2asp0LUG42pn1J_6WzW4vDAF+RvrA3ig@mail.gmail.com>
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
Date: Tue, 30 Mar 2021 08:29:25 -0700
Message-ID: <CADfgfobBY_YZnoZ=1y146pD839A5nVEB70vzuCWB8m47FO-Qrw@mail.gmail.com>
Subject: Re: [yocto] eula-downloads.yoctoproject.org down???
To: Josef Holzmayr <jester@theyoctojester.info>
Cc: anthony.l@axxin.com, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007ac30505bec2aa73"

--0000000000007ac30505bec2aa73
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have restored https://eula-downloads.yoctoproject.org/index.php since
these connectivity checks rely on it. The driver binaries are not availabl=
e
any longer so I will alter the site to indicate that.

On Tue, Mar 30, 2021 at 1:02 AM Josef Holzmayr <jester@theyoctojester.info=
>
wrote:

> Am Di., 30. M=C3=A4rz 2021 um 05:22 Uhr schrieb anthony.l via
> lists.yoctoproject.org <anthony.l=3Daxxin.com@lists.yoctoproject.org>:
> >
> > Getting a message today
> > Fetcher failure for URL: '
> https://eula-downloads.yoctoproject.org/index.php'. URL
> https://eula-downloads.yoctoproject.org/index.php doesn't work. Please
> ensure your network is configured correctly.
> >
> > Can't ping the url?  Anyone have an ETA on this being back up?  Just
> trying to get some urgent builds done today.
>
> Please see
> https://www.yoctoproject.org/pipermail/poky/2016-January/010357.html
>
> If you are experiencing problems, you can override the connectivity
> check, and then please revisit your versions and/or third party
> layers.
>
> Greetz
>
> >
> > Many thanks.
> > Anthony
> >
> >
>
>=20
>
>

--=20
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--0000000000007ac30505bec2aa73
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have restored=C2=A0<a href=3D"https://eula-downloads.yoc=
toproject.org/index.php">https://eula-downloads.yoctoproject.org/index.php<=
/a> since these connectivity checks rely on it. The driver binaries are not=
 available any longer so I will alter the site to indicate that.</div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar=
 30, 2021 at 1:02 AM Josef Holzmayr &lt;<a href=3D"mailto:jester@theyoctoje=
ster.info">jester@theyoctojester.info</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">Am Di., 30. M=C3=A4rz 2021 um 05:22 Uh=
r schrieb anthony.l via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bl=
ank">lists.yoctoproject.org</a> &lt;anthony.l=3D<a href=3D"mailto:axxin.com=
@lists.yoctoproject.org" target=3D"_blank">axxin.com@lists.yoctoproject.org=
</a>&gt;:<br>
&gt;<br>
&gt; Getting a message today<br>
&gt; Fetcher failure for URL: &#39;<a href=3D"https://eula-downloads.yocto=
project.org/index.php" rel=3D"noreferrer" target=3D"_blank">https://eula-do=
wnloads.yoctoproject.org/index.php</a>&#39;. URL <a href=3D"https://eula-do=
wnloads.yoctoproject.org/index.php" rel=3D"noreferrer" target=3D"_blank">ht=
tps://eula-downloads.yoctoproject.org/index.php</a> doesn&#39;t work. Pleas=
e ensure your network is configured correctly.<br>
&gt;<br>
&gt; Can&#39;t ping the url?=C2=A0 Anyone have an ETA on this being back u=
p?=C2=A0 Just trying to get some urgent builds done today.<br>
<br>
Please see <a href=3D"https://www.yoctoproject.org/pipermail/poky/2016-Jan=
uary/010357.html" rel=3D"noreferrer" target=3D"_blank">https://www.yoctopro=
ject.org/pipermail/poky/2016-January/010357.html</a><br>
<br>
If you are experiencing problems, you can override the connectivity<br>
check, and then please revisit your versions and/or third party<br>
layers.<br>
<br>
Greetz<br>
<br>
&gt;<br>
&gt; Many thanks.<br>
&gt; Anthony<br>
&gt; <br>
&gt;<br>
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature"><div dir=3D"ltr">Michael Halstead<div>Linux Fou=
ndation / Yocto Project</div><div>Systems Operations Engineer</div></div></=
div>

--0000000000007ac30505bec2aa73--
