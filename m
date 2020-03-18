Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
 by mx.groups.io with SMTP id smtpd.web10.16551.1584541869356355565
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 07:31:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=l1EsFoWb;
 spf=pass (domain: gmail.com, ip: 209.85.222.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f49.google.com with SMTP id 9so9015244uav.12
        for <yocto@lists.yoctoproject.org>; Wed, 18 Mar 2020 07:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hsy8ZGVM/h6584dZmY8OHDOKIk2OsQHT3uXykLmSAD0=;
        b=l1EsFoWbr54SruauwazXcxym+JdnBdBTPHy85uYl8YjLBR+hmYZlRF+abMyXCO6Pc5
         sjbRLA48OFIRdG3p+4VRtUU3MHOQhqUMf9QnNhdCiJ9zOcAugG9sfXmf1dj6j3vOu+Qm
         UrealcsFoBk0XLicm0hHMpvHWkm6HO+nLvDlmC860BcNTD7ll1dF1vESuYgh6wdZIcbn
         xs7w/1F+FVd7iLU2bF5EJsjZKOfJae/wMQ34tooOKOnH3drDhxhh+Eh4gZuj+ITJVMWr
         8QmTopeDrfZMVO8lW9gbh6Cb7tKLIELtpBugQ7Zq3LYho2qZnVnYMdWfiailDv0N5+nO
         guMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hsy8ZGVM/h6584dZmY8OHDOKIk2OsQHT3uXykLmSAD0=;
        b=oe9BrSBKlwdhc7h6N5vJkpEMhk1/Vr3n0i9laFLgc3FBgmKkfVTJP0kptPJJHHBwCj
         SDIpbhm/9ul0DdKeQXHmmdVkuOj/sLn0dYxK8bOxvQacTt5YUG/HXGi87R50+/QxWe21
         ZptQXM2LnQutXjwFGYlyTl+eDKWQHSNR6fWK4kNsu87yLldoVZ26GIsAPz0YCIWDuM7Z
         6cG38IO+eazUksaZ7dRS8AQE66FavxrrbCV0kSVO5Qw5XwA4fcZaiqfh8nuD2CDWxkaf
         amn/6UO9ejGDsLvpHn1+0MXjtx7hqYcCZwrfVQp3KBLcW6MWBUneH1I64Iu5sPuDJ0Lh
         8fXA==
X-Gm-Message-State: ANhLgQ07/LFDwBCQA0o1vRlAq4m4NrbcYdWgKSTs7+ubdlppn6//1sRK
	eNf5JFzizkKodp0RZr6yA9IlJZvNpgT75yHYP1s=
X-Google-Smtp-Source: ADFU+vsg9K+MY8PcYUJ6IPtD0dd1rYOm775RSw9lPt29VFegbA+NkVvTmvbP4xqikszba+uIheCu9uSxUC12CfH1bd4=
X-Received: by 2002:ab0:1158:: with SMTP id g24mr3016239uac.71.1584541868331;
 Wed, 18 Mar 2020 07:31:08 -0700 (PDT)
MIME-Version: 1.0
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
 <20200318130126.GK104502@korppu> <CAM9ZRVuQyj7X0YFqkpSFWM2=kQHnu8ZGpMsD34ntHYny4x7XJg@mail.gmail.com>
 <251912923.167286.1584540746314.JavaMail.zimbra@savoirfairelinux.com>
In-Reply-To: <251912923.167286.1584540746314.JavaMail.zimbra@savoirfairelinux.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 18 Mar 2020 15:30:57 +0100
Message-ID: <CANNYZj-gOE8PBFy_BZAiaVc7M30oKOBT80GkQ8Q=FfnrqzBB=A@mail.gmail.com>
Subject: Re: [yocto] What are the key factors for yocto build speed?
To: Jean-Marie Lemetayer <jean-marie.lemetayer@savoirfairelinux.com>
Cc: Paul Barker <pbarker@konsulko.com>, Mikko Rapeli <mikko.rapeli@bmw.de>, 
	oliver westermann <oliver.westermann@cognex.com>, yocto@lists.yoctoproject.org, 
	embedded-discuss <embedded-discuss@lists.savoirfairelinux.net>
Content-Type: multipart/alternative; boundary="0000000000003197e205a121e74d"

--0000000000003197e205a121e74d
Content-Type: text/plain; charset="UTF-8"

I have to say that AMD aggressively pursuing core count increase on
consumer level CPUs is awesome news for the YP. Previously, you had to buy
some hugely overpriced Xeons or similar to be able to work efficiently, or
rely on CI doing builds for you which makes interactive development
complicated.

Alex

On Wed, 18 Mar 2020 at 15:12, Jean-Marie Lemetayer <
jean-marie.lemetayer@savoirfairelinux.com> wrote:

> Hi,
>
> In my company we have tested some "big Ryzen" configurations to speed up
> Yocto builds.
>
> The conclusion of these tests is that the build time is almost only
> related to the CPU score: https://www.cpubenchmark.net/high_end_cpus.html
>
> The speed (overclock) and size of the RAM does not influence the build
> time, neither the the use of a SATA SSD or a NVME.
>
> For example one of our build servers is using:
> - AMD Ryzen 9 3900X
> - ASUS PRIME X570-P
> - 32Go DDR4 3200 MHZ CL14
> - 500Go SSD
>
> It is a really good price / build time ratio configuration.
>
> Best regards,
> Jean-Marie
>
> On Mar 18, 2020, at 2:29 PM, Paul Barker pbarker@konsulko.com wrote:
> > On Wed, 18 Mar 2020 at 13:01, Mikko Rapeli <mikko.rapeli@bmw.de> wrote:
> >>
> >> On Wed, Mar 18, 2020 at 05:52:37AM -0700, Oliver Westermann wrote:
> >> > Hey,
> >> >
> >> > We're currently using a VM on Windows and it's a lot slower than the
> native
> >> > linux build (which is expected).
> >> > We're looking into getting a dedicated build server for our team
> (basically a
> >> > self-build tower PC). Any suggestions what to put in that build to
> get the most
> >> > out of it?
> >> >
> >> > Currently we're looking at a big Ryzen, 64G of RAM and one or
> multiple SSDs on a
> >> > "consumer grade" board like the X570.
> >>
> >> Drop all virtualization and go for Linux on bare metal. Then make sure
> there
> >> is enough(tm) physical RAM for each CPU thread. For a "big Ryzen" the
> 64G of RAM
> >> sounds
> >> too little. I'd go higher there, but it all depends what kind of project
> >> is being compiled.
> >>
> >> I would also setup CPU, RAM, disk IO and network IO monitoring on the
> build
> >> machines
> >> and review and monitor the build times and results when the project
> evolves.
> >> There are
> >> times when most CPUs will be idling and there will be times when IO to
> disk is
> >> happening even when RAM is available. Linux kernel can be tuned to
> avoid disk IO
> >> if
> >> RAM is still available for example.
> >
> > What Mikko said is excellent advice.
> >
> > I'd recommend NVMe drives if you can. My build machine has two large
> > M.2 NVMe drives, one is used for the working directory and the other
> > for sstate, downloads and source checkouts to make the best use of the
> > available bandwidth. I find that XFS is a better fit than ext4 when
> > you've got fast drives and highly parallel I/O workloads.
> >
> > Make sure you spread your RAM across the different memory channels on
> > your motherboard as this increases memory bandwidth - this usually
> > means either filling your RAM slots or half-filling them with RAM in
> > every 2nd slot but you'll need to check the motherboard manual to
> > confirm the channel layout.
> >
> > Let me know if you need a detailed review of your proposed setup.
> >
> > Thanks,
> > Paul
> >
> >
> 
>

--0000000000003197e205a121e74d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have to say that AMD aggressively pursuing core cou=
nt increase on consumer level CPUs is awesome news for the YP. Previously, =
you had to buy some hugely overpriced Xeons or similar to be able to work e=
fficiently, or rely on CI doing builds for you which makes interactive deve=
lopment complicated.</div><div><br></div><div>Alex<br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 18 Mar =
2020 at 15:12, Jean-Marie Lemetayer &lt;<a href=3D"mailto:jean-marie.lemeta=
yer@savoirfairelinux.com">jean-marie.lemetayer@savoirfairelinux.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
In my company we have tested some &quot;big Ryzen&quot; configurations to =
speed up Yocto builds.<br>
<br>
The conclusion of these tests is that the build time is almost only relate=
d to the CPU score: <a href=3D"https://www.cpubenchmark.net/high_end_cpus.h=
tml" rel=3D"noreferrer" target=3D"_blank">https://www.cpubenchmark.net/high=
_end_cpus.html</a><br>
<br>
The speed (overclock) and size of the RAM does not influence the build tim=
e, neither the the use of a SATA SSD or a NVME.<br>
<br>
For example one of our build servers is using:<br>
- AMD Ryzen 9 3900X<br>
- ASUS PRIME X570-P<br>
- 32Go DDR4 3200 MHZ CL14<br>
- 500Go SSD<br>
<br>
It is a really good price / build time ratio configuration.<br>
<br>
Best regards,<br>
Jean-Marie<br>
<br>
On Mar 18, 2020, at 2:29 PM, Paul Barker <a href=3D"mailto:pbarker@konsulk=
o.com" target=3D"_blank">pbarker@konsulko.com</a> wrote:<br>
&gt; On Wed, 18 Mar 2020 at 13:01, Mikko Rapeli &lt;<a href=3D"mailto:mikk=
o.rapeli@bmw.de" target=3D"_blank">mikko.rapeli@bmw.de</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Wed, Mar 18, 2020 at 05:52:37AM -0700, Oliver Westermann wrote=
:<br>
&gt;&gt; &gt; Hey,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; We&#39;re currently using a VM on Windows and it&#39;s a lot=
 slower than the native<br>
&gt;&gt; &gt; linux build (which is expected).<br>
&gt;&gt; &gt; We&#39;re looking into getting a dedicated build server for =
our team (basically a<br>
&gt;&gt; &gt; self-build tower PC). Any suggestions what to put in that bu=
ild to get the most<br>
&gt;&gt; &gt; out of it?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Currently we&#39;re looking at a big Ryzen, 64G of RAM and o=
ne or multiple SSDs on a<br>
&gt;&gt; &gt; &quot;consumer grade&quot; board like the X570.<br>
&gt;&gt;<br>
&gt;&gt; Drop all virtualization and go for Linux on bare metal. Then make=
 sure there<br>
&gt;&gt; is enough(tm) physical RAM for each CPU thread. For a &quot;big R=
yzen&quot; the 64G of RAM<br>
&gt;&gt; sounds<br>
&gt;&gt; too little. I&#39;d go higher there, but it all depends what kind=
 of project<br>
&gt;&gt; is being compiled.<br>
&gt;&gt;<br>
&gt;&gt; I would also setup CPU, RAM, disk IO and network IO monitoring on=
 the build<br>
&gt;&gt; machines<br>
&gt;&gt; and review and monitor the build times and results when the proje=
ct evolves.<br>
&gt;&gt; There are<br>
&gt;&gt; times when most CPUs will be idling and there will be times when =
IO to disk is<br>
&gt;&gt; happening even when RAM is available. Linux kernel can be tuned t=
o avoid disk IO<br>
&gt;&gt; if<br>
&gt;&gt; RAM is still available for example.<br>
&gt; <br>
&gt; What Mikko said is excellent advice.<br>
&gt; <br>
&gt; I&#39;d recommend NVMe drives if you can. My build machine has two la=
rge<br>
&gt; M.2 NVMe drives, one is used for the working directory and the other<=
br>
&gt; for sstate, downloads and source checkouts to make the best use of th=
e<br>
&gt; available bandwidth. I find that XFS is a better fit than ext4 when<b=
r>
&gt; you&#39;ve got fast drives and highly parallel I/O workloads.<br>
&gt; <br>
&gt; Make sure you spread your RAM across the different memory channels on=
<br>
&gt; your motherboard as this increases memory bandwidth - this usually<br=
>
&gt; means either filling your RAM slots or half-filling them with RAM in<=
br>
&gt; every 2nd slot but you&#39;ll need to check the motherboard manual to=
<br>
&gt; confirm the channel layout.<br>
&gt; <br>
&gt; Let me know if you need a detailed review of your proposed setup.<br>
&gt; <br>
&gt; Thanks,<br>
&gt; Paul<br>
&gt; <br>
&gt; <br>
<br>
</blockquote></div>

--0000000000003197e205a121e74d--
