Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7ADDEE0059A
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 16:37:04 -0700 (PDT)
Received: from mail-lpp01m010-f52.google.com ([209.85.215.52])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 12 Apr 2012 16:37:02 -0700
Received: by lahi5 with SMTP id i5so1762048lah.25
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 16:37:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=Xjt0wDe6ocbHHG4L6BXjeIcTXfDIlFIM1g7Lt8E61bU=;
	b=WfMn0TUyJ5QFQpaqw2dLF8kfS/RtfJCdJaSbCq65mkYf6I45GTuLSEl0nRXCPBCbmt
	kEGiUIuk4If6qfZyrC9IRIC2SE2T8wbuwgv9BtjUa7EZ4v9df0t/dgukJBeKyO5C6NYI
	dYds2zQgDIDQOk02hhVZ1k2mZWK8/w9p2jaCYlcOnS5COKRW8VahIlo5Uv0Zv3vit2ib
	AQt9JdnvBsYP0KvssLX5DvzS8k014IzlKHilB7r7aLLQuk/h+dg4HhqB5xCvkAaAlc7i
	qLZwaRi7ZT45R/1JJHrTdIUy0OKKFd2pF1rs/rQ3CXkWwJVuTajnj2mQRABfm4xqn0E7
	j9wA==
MIME-Version: 1.0
Received: by 10.152.103.239 with SMTP id fz15mr49870lab.42.1334273820661; Thu,
	12 Apr 2012 16:37:00 -0700 (PDT)
Received: by 10.112.102.5 with HTTP; Thu, 12 Apr 2012 16:37:00 -0700 (PDT)
In-Reply-To: <4F86E2E8.2030607@linux.intel.com>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com>
	<1334216100.2759.2.camel@babel.joshhome>
	<20120412080021.GA3661@jama.jama.net>
	<4F86E2E8.2030607@linux.intel.com>
Date: Thu, 12 Apr 2012 16:37:00 -0700
Message-ID: <CAPhnLPCc1+uV5rM48k45JxbSwHpPqG9x7ci=uN_5TA8j1XmpJg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQkcXZpebEu9lvZS0q3OKUB+qW7SzTKWiGrqnudpLUOeLiG6FDnn/Hk4CFNV3JoHnMxsO5T4
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Build time data
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 12 Apr 2012 23:37:04 -0000
Content-Type: multipart/alternative; boundary=f46d04088e9f1d17bb04bd83d534

--f46d04088e9f1d17bb04bd83d534
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Apr 12, 2012 at 7:12 AM, Darren Hart <dvhart@linux.intel.com> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
>
>
> On 04/12/2012 01:00 AM, Martin Jansa wrote:
> > On Thu, Apr 12, 2012 at 01:05:00PM +0530, Joshua Immanuel wrote:
> >> Darren,
> >>
> >> On Wed, 2012-04-11 at 17:30 -0700, Darren Hart wrote:
> >>> I run on a beast with 12 cores, 48GB of RAM, OS and sources on
> >>> a G2 Intel SSD, with two Seagate Barracudas in a RAID0 array
> >>> for my /build partition. I run a headless Ubuntu 11.10 (x86_64)
> >>> installation running the 3.0.0-16-server kernel. I can build
> >>> core-image-minimal in < 30 minutes and core-image-sato in < 50
> >>> minutes from scratch.
> >
> > why not use so much RAM for WORKDIR in tmpfs? I bought 16GB just to
> > be able to do my builds in tmpfs and keep only more permanent data
> > on RAID.
>
> We've done some experiments with tmpfs, adding Beth on CC. If I recall
> correctly, my RAID0 array with the mount options I specified
> accomplishes much of what tmpfs does for me without the added setup.
>

This should be the case in general. For the most part, if you have a decent
RAID setup (We're using RAID10 on the ab) with fast disks you should be
able to hit tmpfs speed (or close to it). I've done some experiments with
this and what I found was maybe a 5 minute difference, sometimes, from a
clean build between tmpfs and RAID10.

I discussed this during Yocto Developer Day. Let me boil it down a bit to
explain some of what I did on the autobuilders.

Caveat first though. I would avoid using autobuilder time as representative
of prime yocto build time. The autobuilder hosts a lot of different
services that sometimes impact build time and this can vary depending on
what else is going on on the machine.

There are four places, in general, where you want to look at optimizing
outside of dependency issues. CPU, disk, memory, build process. What I
found was that the most useful of these in getting the autobuilder time
down was disk and build process.

With disk, spreading it across the RAID saved us not only a bit of time,
but also helped us avoid trashed disks. More disk thrash == higher failure
rate. So far this year we've seen two disk failures that have resulted in
almost zero autobuilder downtime.

The real time saver however ended up being maintaining sstate across build
runs. Even with our sstate on nfs, we're still seeing a dramatic decrease
in build time.

I would be interested in seeing what times you get with tmpfs. I've done
tmpfs builds before and have seen good results, but bang for the buck did
end up being a RAID array.


With a higher commit interval, the kernel doesn't try to sync the
> dcache with the disks as frequently (eg not even once during a build),
> so it's effectively writing to memory (although there is still plenty
> of IO occurring).
>
> The other reason is that while 48GB is plenty for a single build, I
> often run many builds in parallel, sometimes in virtual machines when
> I need to reproduce or test something on different hosts.
>
> For example:
>
> https://picasaweb.google.com/lh/photo/7PCrqXQqxL98SAY1ecNzDdMTjNZETYmyPJy0liipFm0?feat=directlink
>
>
> - --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.11 (GNU/Linux)
> Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/
>
> iQEcBAEBAgAGBQJPhuLfAAoJEKbMaAwKp3648pYH/1HGCzI1QP1mj1OPfbo1TNou
> nq1dCnEQOc+vUqShrmgjEY5H2G7Kqu5Y8JRp8m3D6v2iUPwu+ko3xASJkIVetgTn
> 1J+dkZl93Gbm8nm63b5bES0mMqyiycNgXW4KTL0iA+4mLbKSXck7nF/gIyjE4iHa
> SR+DDavSoOIJUiZsJBJpIdS4sY2RpalohhJvp97Qfmbxmqlo2RJkqzB7OmLliKbB
> zGiuXeFgGojZXIRl11Rr36kqqA75WoTlNYjlkcg1paEhCr4zCMh0sujGaPQgVPtu
> YU+FCtGxQ569f+hahdJraCU9T4IbMK4AOk30VqVxPifCqFhIvr7FnVRkYtV5pZM=
> =tdFq
> -----END PGP SIGNATURE-----
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

--f46d04088e9f1d17bb04bd83d534
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Thu, Apr 12, 2012 at 7:12 AM, Darren =
Hart <span dir=3D"ltr">&lt;<a href=3D"mailto:dvhart@linux.intel.com" target=
=3D"_blank">dvhart@linux.intel.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">

-----BEGIN PGP SIGNED MESSAGE-----<br>
Hash: SHA1<br>
<div><div><br>
<br>
<br>
On 04/12/2012 01:00 AM, Martin Jansa wrote:<br>
&gt; On Thu, Apr 12, 2012 at 01:05:00PM +0530, Joshua Immanuel wrote:<br>
&gt;&gt; Darren,<br>
&gt;&gt;<br>
&gt;&gt; On Wed, 2012-04-11 at 17:30 -0700, Darren Hart wrote:<br>
&gt;&gt;&gt; I run on a beast with 12 cores, 48GB of RAM, OS and sources on=
<br>
&gt;&gt;&gt; a G2 Intel SSD, with two Seagate Barracudas in a RAID0 array<b=
r>
&gt;&gt;&gt; for my /build partition. I run a headless Ubuntu 11.10 (x86_64=
)<br>
&gt;&gt;&gt; installation running the 3.0.0-16-server kernel. I can build<b=
r>
&gt;&gt;&gt; core-image-minimal in &lt; 30 minutes and core-image-sato in &=
lt; 50<br>
&gt;&gt;&gt; minutes from scratch.<br>
&gt;<br>
&gt; why not use so much RAM for WORKDIR in tmpfs? I bought 16GB just to<br=
>
&gt; be able to do my builds in tmpfs and keep only more permanent data<br>
&gt; on RAID.<br>
<br>
</div></div>We&#39;ve done some experiments with tmpfs, adding Beth on CC. =
If I recall<br>
correctly, my RAID0 array with the mount options I specified<br>
accomplishes much of what tmpfs does for me without the added setup.<br></b=
lockquote><div><br>This should be the case in general. For the most part, i=
f you have a decent RAID setup (We&#39;re using RAID10 on the ab) with fast=
 disks you should be able to hit tmpfs speed (or close to it). I&#39;ve don=
e some experiments with this and what I found was maybe a 5 minute differen=
ce, sometimes, from a clean build between tmpfs and RAID10.<br>

=A0<br>I discussed this during Yocto Developer Day. Let me boil it down a b=
it to explain some of what I did on the autobuilders.<br><br>Caveat first t=
hough. I would avoid using autobuilder time as representative of prime yoct=
o build time. The autobuilder hosts a lot of different services that someti=
mes impact build time and this can vary depending on what else is going on =
on the machine.<br>

<br>There are four places, in general, where you want to look at optimizing=
 outside of dependency issues. CPU, disk, memory, build process. What I fou=
nd was that the most useful of these in getting the autobuilder time down w=
as disk and build process. <br>

<br>With disk, spreading it across the RAID saved us not only a bit of time=
, but also helped us avoid trashed disks. More disk thrash =3D=3D higher fa=
ilure rate. So far this year we&#39;ve seen two disk failures that have res=
ulted in almost zero autobuilder downtime. <br>
<br>The real time saver however ended up being maintaining sstate across bu=
ild runs. Even with our sstate on nfs, we&#39;re still seeing a dramatic de=
crease in build time.<br><br>I would be interested in seeing what times you=
 get with tmpfs. I&#39;ve done tmpfs builds before and have seen good resul=
ts, but bang for the buck did end up being a RAID array.<br>
<br><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">

With a higher commit interval, the kernel doesn&#39;t try to sync the<br>
dcache with the disks as frequently (eg not even once during a build),<br>
so it&#39;s effectively writing to memory (although there is still plenty<b=
r>
of IO occurring).<br>
<br>
The other reason is that while 48GB is plenty for a single build, I<br>
often run many builds in parallel, sometimes in virtual machines when<br>
I need to reproduce or test something on different hosts.<br>
<br>
For example:<br>
<a href=3D"https://picasaweb.google.com/lh/photo/7PCrqXQqxL98SAY1ecNzDdMTjN=
ZETYmyPJy0liipFm0?feat=3Ddirectlink" target=3D"_blank">https://picasaweb.go=
ogle.com/lh/photo/7PCrqXQqxL98SAY1ecNzDdMTjNZETYmyPJy0liipFm0?feat=3Ddirect=
link</a><br>


<br>
<br>
- --<br>
<div>Darren Hart<br>
Intel Open Source Technology Center<br>
Yocto Project - Linux Kernel<br>
</div>-----BEGIN PGP SIGNATURE-----<br>
Version: GnuPG v1.4.11 (GNU/Linux)<br>
Comment: Using GnuPG with Mozilla - <a href=3D"http://enigmail.mozdev.org/"=
 target=3D"_blank">http://enigmail.mozdev.org/</a><br>
<br>
iQEcBAEBAgAGBQJPhuLfAAoJEKbMaAwKp3648pYH/1HGCzI1QP1mj1OPfbo1TNou<br>
nq1dCnEQOc+vUqShrmgjEY5H2G7Kqu5Y8JRp8m3D6v2iUPwu+ko3xASJkIVetgTn<br>
1J+dkZl93Gbm8nm63b5bES0mMqyiycNgXW4KTL0iA+4mLbKSXck7nF/gIyjE4iHa<br>
SR+DDavSoOIJUiZsJBJpIdS4sY2RpalohhJvp97Qfmbxmqlo2RJkqzB7OmLliKbB<br>
zGiuXeFgGojZXIRl11Rr36kqqA75WoTlNYjlkcg1paEhCr4zCMh0sujGaPQgVPtu<br>
YU+FCtGxQ569f+hahdJraCU9T4IbMK4AOk30VqVxPifCqFhIvr7FnVRkYtV5pZM=3D<br>
=3DtdFq<br>
-----END PGP SIGNATURE-----<br>
</blockquote></div><br><br clear=3D"all"><br>-- <br>Elizabeth Flanagan<br>Y=
octo Project<br>Build and Release<br>

--f46d04088e9f1d17bb04bd83d534--
