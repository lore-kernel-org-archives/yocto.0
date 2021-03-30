Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.web11.1048.1617143539923268234
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Mar 2021 15:32:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=frcLy9Pm;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.177, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lj1-f177.google.com with SMTP id u9so21574096ljd.11
        for <yocto@lists.yoctoproject.org>; Tue, 30 Mar 2021 15:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Mx24laxp3b7DlsaQ3D9n+uIiwYyKgYEfracVyw2hAKw=;
        b=frcLy9PmHnInd09Hy+jHSyLErMFweH6xqR1QeFAPE6tmCEZLBCWCxXvF4SZToD8xy2
         KD4GYjLF4Tnr1VZG3AZV7d3Ka8JXKddy8PI8UETR7e2bZ4unj/kEZodnh14sjOShDTXG
         PLFusOElcd3ZeXoOLu8e8M4eNrUGoSRbx3zls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Mx24laxp3b7DlsaQ3D9n+uIiwYyKgYEfracVyw2hAKw=;
        b=Ni06dgQVNvNas5bhvDcbcs3fYcWLnGQK+fLtjsHQ/OlQCE58YKfzKObSUTzL97oFCG
         7IAjgn7zMRttsNcB3BUrGuzHHj2nndr3QCWg9tpgAwsDqWbEmR7c6ogD9EkVpf0u70vw
         Jd0pBso2ZSMCWq2qNfUZwd9M4Bd9zJUctrBIHFpa1AN1YFhoimZmjtggh+KhrNHFk3+Q
         pM3hjIgki9vW//SxEtWQ+6yjo5pXjYZT/oEKmr70Jr012hGqWiWFCyjmuP/LkdF2uUnf
         Uk4J2LrwjRsdGYFurR+egGRBidzL0BT/c5HerMj9ZsFRuOnpRqqJ/GX5arSJOQ8SZR3E
         T75A==
X-Gm-Message-State: AOAM533PqQ4qSYu/3rlBtMffGPNuvJiA+6fX3atwN95BWDS4MVUb8N8k
	+IN7lHH0a6trmfzUNqcvawNwPj06MaDswZrAJB4fmg==
X-Google-Smtp-Source: ABdhPJzChcoLivc4R6ZIDAXzt+HU4A3CxjVzMWUb4DR3BPyeu8/fmqVnSx2WqU1X337/K/EFcarvvUjVYoImHnd9jmo=
X-Received: by 2002:a2e:9a03:: with SMTP id o3mr173132lji.501.1617143537743;
 Tue, 30 Mar 2021 15:32:17 -0700 (PDT)
MIME-Version: 1.0
References: <4Qxn.1617074544212136798.2egN@lists.yoctoproject.org>
 <CAEt6NwotWrmAwXcFsD2asp0LUG42pn1J_6WzW4vDAF+RvrA3ig@mail.gmail.com> <1671286A89D1134A.4802@lists.yoctoproject.org>
In-Reply-To: <1671286A89D1134A.4802@lists.yoctoproject.org>
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
Date: Tue, 30 Mar 2021 15:32:06 -0700
Message-ID: <CADfgfoZLDXGvTzkoskkShT6sioAAFvV9W3DVXQxSbA1hhwGjgA@mail.gmail.com>
Subject: Re: [yocto] eula-downloads.yoctoproject.org down???
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: Josef Holzmayr <jester@theyoctojester.info>, anthony.l@axxin.com, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001e5af005bec89230"

--0000000000001e5af005bec89230
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

After further discussion we've decided to take the site offline again as
recommended <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14174>. T=
his
check was removed on Jan 29 2016 and any systems still performing the chec=
k
need to be updated.

On Tue, Mar 30, 2021 at 8:29 AM Michael Halstead via lists.yoctoproject.or=
g
<mhalstead=3Dlinuxfoundation.org@lists.yoctoproject.org> wrote:

> I have restored https://eula-downloads.yoctoproject.org/index.php since
> these connectivity checks rely on it. The driver binaries are not availa=
ble
> any longer so I will alter the site to indicate that.
>
> On Tue, Mar 30, 2021 at 1:02 AM Josef Holzmayr <jester@theyoctojester.in=
fo>
> wrote:
>
>> Am Di., 30. M=C3=A4rz 2021 um 05:22 Uhr schrieb anthony.l via
>> lists.yoctoproject.org <anthony.l=3Daxxin.com@lists.yoctoproject.org>:
>> >
>> > Getting a message today
>> > Fetcher failure for URL: '
>> https://eula-downloads.yoctoproject.org/index.php'. URL
>> https://eula-downloads.yoctoproject.org/index.php doesn't work. Please
>> ensure your network is configured correctly.
>> >
>> > Can't ping the url?  Anyone have an ETA on this being back up?  Just
>> trying to get some urgent builds done today.
>>
>> Please see
>> https://www.yoctoproject.org/pipermail/poky/2016-January/010357.html
>>
>> If you are experiencing problems, you can override the connectivity
>> check, and then please revisit your versions and/or third party
>> layers.
>>
>> Greetz
>>
>> >
>> > Many thanks.
>> > Anthony
>> >
>> >
>>
>>
>>
>>
>
> --
> Michael Halstead
> Linux Foundation / Yocto Project
> Systems Operations Engineer
>
>=20
>
>

--=20
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--0000000000001e5af005bec89230
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">After further discussion we&#39;ve decide=
d to take the site offline again as <a href=3D"https://bugzilla.yoctoprojec=
t.org/show_bug.cgi?id=3D14174">recommended</a>. This check was removed on J=
an 29 2016 and any systems still performing the check need to be updated.<b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Tue, Mar 30, 2021 at 8:29 AM Michael Halstead via <a href=3D"htt=
p://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;mhalstead=3D<a h=
ref=3D"mailto:linuxfoundation.org@lists.yoctoproject.org">linuxfoundation.o=
rg@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr">I have restored=C2=A0<a href=3D"h=
ttps://eula-downloads.yoctoproject.org/index.php" target=3D"_blank">https:/=
/eula-downloads.yoctoproject.org/index.php</a> since these connectivity che=
cks rely on it. The driver binaries are not available any longer so I will =
alter the site to indicate that.</div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 30, 2021 at 1:02 AM Josef Holzm=
ayr &lt;<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">jes=
ter@theyoctojester.info</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">Am Di., 30. M=C3=A4rz 2021 um 05:22 Uhr schrieb anth=
ony.l via<br>
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
"><div dir=3D"ltr">Michael Halstead<div>Linux Foundation / Yocto Project</d=
iv><div>Systems Operations Engineer</div></div></div>
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature"><div dir=3D"ltr">Michael Halstead<div>Linux Fou=
ndation / Yocto Project</div><div>Systems Operations Engineer</div></div></=
div>

--0000000000001e5af005bec89230--
