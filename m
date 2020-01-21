Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
 by mx.groups.io with SMTP id smtpd.web10.15645.1579627692703461839
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2020 09:28:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WjcIjQ/V;
 spf=pass (domain: gmail.com, ip: 209.85.208.65, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f65.google.com with SMTP id e10so3782963edv.9
        for <yocto@lists.yoctoproject.org>; Tue, 21 Jan 2020 09:28:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IcMKqx4+sWmwYfq1Of4Cp+Y+xQxD3RdNhOp38LVugsc=;
        b=WjcIjQ/V/fbl6KX0POzeulqITbqq/7dh7OEyuyJdbVzCaqfdXWDkPuWMs8SrNGLfw/
         nT4Ee3euYqzY84KQojsotfxK0jKZhbxiCa+G83U52Dw7ozEZUlMwxB9KF8Amwj+9Ah5B
         XqZmx60uMgOfCT4UGBE0wq0DhfgYl8ow2zhKZ7/NiZdOYbm8LYjVN47UuZAP8un/cAzy
         jyD9bDDsaHqgbji9EEvlyP4tX661+dVLasAkCkcnPdH6c7YOUyoo9lp0JRw7G6+ilsKI
         5f6IWAVGkSMCO9s+kTHl2VxuezFeF1I1TdFpBSW4cw4uBqdXWpFzUN9FD78gprkOfU8r
         gzLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IcMKqx4+sWmwYfq1Of4Cp+Y+xQxD3RdNhOp38LVugsc=;
        b=BhWvV+bGOh0MxMMXoNDG4+noPJdpfj4Rt75zBGCc75/HGS8rU9vlsYz0CrFzQw7rlF
         Uwh8X2GE5gAtwn4BSkl5Y82buZaiWtz2Srw0zijHIm1djjuqNCyyotTN3Tjslt7+9RAh
         jTsKYoti0GvvN3DtlGNZGUA5YvLW/WRx0lpo1FRsbjO1B9HiHziN+ZkU+wXlubIbjYgB
         p+3pWETuh1IYAleC3Lc4+pY5S09jQOg6o5nGEPWV3RQBZ/V87lkXYe/bhKHIXfZ8rz1M
         rBLkzopMvbsFsLiYcxAZx2IMe+4ypaQlGVcGWC2dlSifefKdVmRc3R6Szm0wlQ3F8Cu3
         jmBQ==
X-Gm-Message-State: APjAAAWxl4Kuvo+kgWCGXWNoWlchm6eXB1/QYh+vF3OM1Akhvcw79kh6
	pUIa/QPm2crG1H6HkHnIT8CDC7bjingg1SWJzkE=
X-Google-Smtp-Source: APXvYqxxIodD6x6ZszIb4lAl033QrfO3kfF1rIEDEwI7ofH0ohpEh4+A3rRyNE5LJqM93RupJb6hs5ZqT7oswaADOmI=
X-Received: by 2002:a17:906:4947:: with SMTP id f7mr5243179ejt.172.1579627691040;
 Tue, 21 Jan 2020 09:28:11 -0800 (PST)
MIME-Version: 1.0
References: <20200117141632.3809-1-ross.burton@intel.com> <fe0eae43-f005-6062-cd0b-18788aeb0e88@gmail.com>
 <CALbNGRTvOk6YQ_vD1VmNA+RD-1dNc2J+mdKxpq971V=D2t7-Hg@mail.gmail.com>
 <20200117202126.GY4735@denix.org> <CALbNGRTv8S3V9TLE+uwX4Dei=5m1LBKowzGF5Nr1L8iPHBSQsg@mail.gmail.com>
 <3d6f5ef4-3c70-a172-7f14-bfb63bbf3d86@intel.com> <AM4PR05MB33802E8CAA38C64493DC3584A80D0@AM4PR05MB3380.eurprd05.prod.outlook.com>
In-Reply-To: <AM4PR05MB33802E8CAA38C64493DC3584A80D0@AM4PR05MB3380.eurprd05.prod.outlook.com>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Tue, 21 Jan 2020 18:27:57 +0100
Message-ID: <CA+chaQfwiwur0AbMz1sEee5Q7f3PziRxec6QRzBN37HqUd1Rww@mail.gmail.com>
Subject: Re: [yocto] [RFC PATCH] python: remove Python 2 and all supporting classes
To: Konrad Weihmann <kweihmann@outlook.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000066e651059ca9bb00"

--00000000000066e651059ca9bb00
Content-Type: text/plain; charset="UTF-8"

There is nodejs upgrade to 12.x on oe-devel ML:
http://lists.openembedded.org/pipermail/openembedded-devel/2020-January/204363.html
so we won't be staying on 10.x, but if 12.x isn't enough to build without
meta-python2, then we might need 13.x :/.

On Tue, Jan 21, 2020 at 6:09 PM Konrad Weihmann <kweihmann@outlook.com>
wrote:

>
> On 20.01.20 12:22, Ross Burton wrote:
> > npm needing Py2 is just disappointing.  Surely someone has ported it
> > to py3 by now?
> >
>
> Any news on that? From what I see nodejs is fully supporting python3 on
> build host, only in 13.x branch (in 11.x and 12.x it's marked
> 'experimental', whatever that means).
> Have heard from a few people that cross compiling newer version is a
> tricky thing to do.
>
> So what's the plan, stay on 10.x branch (which soon will be outdated
> anyway) or go to 13.x?
>
> Regards
>
> Konrad
>
> 
>

--00000000000066e651059ca9bb00
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">There is nodejs upgrade to 12.x on oe-devel ML:<div><a hre=
f=3D"http://lists.openembedded.org/pipermail/openembedded-devel/2020-Januar=
y/204363.html">http://lists.openembedded.org/pipermail/openembedded-devel/2=
020-January/204363.html</a><br></div><div>so we won&#39;t be staying on 10.=
x, but if 12.x isn&#39;t enough to build without meta-python2, then we migh=
t need 13.x :/.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, Jan 21, 2020 at 6:09 PM Konrad Weihmann &lt;<a=
 href=3D"mailto:kweihmann@outlook.com">kweihmann@outlook.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
On 20.01.20 12:22, Ross Burton wrote:<br>
&gt; npm needing Py2 is just disappointing.=C2=A0 Surely someone has porte=
d it <br>
&gt; to py3 by now?<br>
&gt;<br>
<br>
Any news on that? From what I see nodejs is fully supporting python3 on <b=
r>
build host, only in 13.x branch (in 11.x and 12.x it&#39;s marked <br>
&#39;experimental&#39;, whatever that means).<br>
Have heard from a few people that cross compiling newer version is a <br>
tricky thing to do.<br>
<br>
So what&#39;s the plan, stay on 10.x branch (which soon will be outdated <=
br>
anyway) or go to 13.x?<br>
<br>
Regards<br>
<br>
Konrad<br>
<br>
<br>
</blockquote></div>

--00000000000066e651059ca9bb00--
