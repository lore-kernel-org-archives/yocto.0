Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
 by mx.groups.io with SMTP id smtpd.web11.899.1584555162940211751
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 11:12:43 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=IT2wk+RE;
 spf=pass (domain: blade-group.com, ip: 209.85.210.50, mailfrom: yann.dirson@blade-group.com)
Received: by mail-ot1-f50.google.com with SMTP id e19so5477842otj.7
        for <yocto@lists.yoctoproject.org>; Wed, 18 Mar 2020 11:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8q+krTWc6YTmNwd0HR6hM94k9dOv0/5L4jfFpjCFAa0=;
        b=IT2wk+REONsVEMzaCI0PubMSR9K+vevWc0wa1I8Svr7IimO/wTx+ggr0B0e0JXA9xR
         8lc2Dsvgz9emA+YDOpFtwaexQ1D0RnIl6Xp/8iJ5VFXAMm8YIHgtoDb49UcUVQ0H0ubJ
         wegF+wvNo4TB6xIs3JvCzIbRcKgP3jfYVYLGvN5dpp+0I0L7hC/bmj04mcwBMjizrQE9
         nAxqhV3WLyBqazBHtP60cXrEzv/DKbuix5Z2Pv8/VDo/yVaiq1d3Bq8BYwEufwDLs2kb
         nslABZRdrlG39Fw+ARp4TjoXIeuSJOuYdRSN7lrCu8hDNKTOSA5j0y7OsmsjTny8cPDy
         4ioQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8q+krTWc6YTmNwd0HR6hM94k9dOv0/5L4jfFpjCFAa0=;
        b=F9cOjLpwqKVLRNm9bq19DB6c1bAduBLXgPlyTzTU2bN0GjphHDV0zgJ2o4OQdwt5mR
         SkyJPCPvkJq44ObLlwxK8IT/d+SRH0Tr1pfnADrtD8velVkvngUPd0b1VVgdseX0zkaQ
         lFqEZXNmyVtMs+sACoK/NUCrN3t/iyiGsZSFALAIe3kPGWb107dtBD5d4dAC0YxBTVCR
         EXPX+ta1L/VMcS/ydSK7GVE1DXwWL4dZB8VTJaTP4/xzCbuaTml4E8RU93WIoT7jwIg8
         tX8c6PV1yJ5DX+IqAqHXcb35clbtFgVdty9mULFhzbuLto+0lu+30CH7+UiAbX5oaVOx
         qYVA==
X-Gm-Message-State: ANhLgQ2opJUeSgwjf0fK4SjAqtcR2Sfpk/6W3v2YjMa2zZJBie+s/SCe
	1Ol5hF6jzW+aCmbL7xGs6vBWdKuOuN9QlOw4RfXGAw==
X-Google-Smtp-Source: ADFU+vvAn2/HbxTRPebsD/nUr8CGStpXF4eYMU/lxytqQPM0Pu6WTZG1oxsHBF61Nt5gZ4XGFxaj4JeA+XqLgfmGh6c=
X-Received: by 2002:a9d:4f0:: with SMTP id 103mr4840772otm.336.1584555162227;
 Wed, 18 Mar 2020 11:12:42 -0700 (PDT)
MIME-Version: 1.0
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
 <20200318130126.GK104502@korppu> <CAM9ZRVuQyj7X0YFqkpSFWM2=kQHnu8ZGpMsD34ntHYny4x7XJg@mail.gmail.com>
 <251912923.167286.1584540746314.JavaMail.zimbra@savoirfairelinux.com>
 <20200318144906.GC23112@localhost> <080227a9-b5f2-8e3e-201f-5285a1f80e2d@topic.nl>
 <20200318155132.GO104502@korppu> <06037dcfe9e74e4e80cd1e8b41593542@USDVREX02.abiomed.com>
 <D90B4E9C-DD70-4489-803D-079524AF20A7@intel.com>
In-Reply-To: <D90B4E9C-DD70-4489-803D-079524AF20A7@intel.com>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Wed, 18 Mar 2020 19:12:31 +0100
Message-ID: <CA+4=imar1T_sd+JviRKYG-dL=eKJt_0QeGz3+mX9m0DdfvFFuw@mail.gmail.com>
Subject: Re: <EXT> Re: [yocto] What are the key factors for yocto build speed?
To: David Stewart <david.c.stewart@intel.com>
Cc: Srini <rsrinivasan@abiomed.com>, "mikko.rapeli@bmw.de" <mikko.rapeli@bmw.de>, 
	"mike.looijmans@topic.nl" <mike.looijmans@topic.nl>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000009268b505a124ff1e"

--0000000000009268b505a124ff1e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

anyway this sounds like a complete rebuild not taking advantage of
shard-state cache

Le mer. 18 mars 2020 =C3=A0 18:47, David Stewart <david.c.stewart@intel.co=
m> a
=C3=A9crit :

> 4 hours seems extremely long to me for a 8 core system, but I have not
> tried this in a while. Were you removing all the sources and re-download=
ing
> them for every build?
>
>
>
> *From: *<yocto@lists.yoctoproject.org> on behalf of Srini <
> rsrinivasan@abiomed.com>
> *Date: *Wednesday, March 18, 2020 at 10:13 AM
> *To: *"mikko.rapeli@bmw.de" <mikko.rapeli@bmw.de>, "
> mike.looijmans@topic.nl" <mike.looijmans@topic.nl>
> *Cc: *"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
> *Subject: *Re: <EXT> Re: [yocto] What are the key factors for yocto buil=
d
> speed?
>
>
>
> My own experience (pardon me if already discussed)
>
> Fought the build times for several months - ending up eventually at 8
> cores (but specifying 16 threads in poky builds). Best times for my buil=
d
> about 4 hours. Clearly impractical during engineering.
>
> Generated an sdk and used it for app development. Each build is now a
> minute or 2.
>
> Using a homegrown utility, updated the image file with applications in a
> jiffy - to produce burnable sdcard image.
>
> Complete build required only for the final release -- or made major
> changes like python2 to python3!
>
> YMMV.
>
> srini
>
> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Mikko Rapeli via Lists.Yoctoproject.Org
> Sent: Wednesday, March 18, 2020 11:52 AM
> To: mike.looijmans@topic.nl
> Cc: yocto@lists.yoctoproject.org
> Subject: <EXT> Re: [yocto] What are the key factors for yocto build spee=
d?
>
> On Wed, Mar 18, 2020 at 04:09:39PM +0100, Mike Looijmans wrote:
> > On 18-03-2020 15:49, Adrian Bunk via Lists.Yoctoproject.Org wrote:
> > > On Wed, Mar 18, 2020 at 10:12:26AM -0400, Jean-Marie Lemetayer wrote=
:
> > > > ...
> > > > For example one of our build servers is using:
> > > > - AMD Ryzen 9 3900X
> > > > ...
> > > > - 32Go DDR4 3200 MHZ CL14
> > > > ...
> > > > It is a really good price / build time ratio configuration.
> > >
> > > Depends on what you are building.
> > >
> > > Building non-trivial C++ code (e.g. webkitgtk) with 24 cores but
> > > only 32 GB RAM will not work, for such code you need more than 2
> > > GB/core.
> >
> > Seems a bit excessive to buy hardware just to handle a particular
> > corner case. Most of OE/Yocto code is plain C, not even C++.
> >
> > My rig only has 8GB but doesn't run into memory issues during big GUI
> > builds. The only thing that made it swap was the populate_sdk task
> > that created a 1.1GB fiel and needed 20GB of RAM to compress that.
> > Took a few minutes more due to swapping.
> > I submitted a patch today to fix that in OE.
> >
> > Your mileage may vary. But RAM is easy to add.
>
> Well, I can't build with under 2 gigs per core or I run out of physical
> memory and kernel oom-killer kicks in to kill the build. Also can't run
> with yocto default parallel settings which only take into account the
> number of cores and thus have a custom script which does caps the thread=
s
> so that 2 gigs of RAM for each are available.
>
> Though I'm sure plain C and plain poky projects have less requirements f=
or
> RAM.
>
> -Mikko
>
> ________________________________
>
> CONFIDENTIALITY NOTICE: This email message and any attachments are
> confidential and may be privileged and are meant to be read by the inten=
ded
> recipient only. If you are not the intended recipient, please notify sen=
der
> immediately and destroy all copies of this message and any attachments
> without reading or disclosing their contents. Thank you
>
>=20
>


--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech

--0000000000009268b505a124ff1e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">anyway this sounds like a complete rebuild not taking adva=
ntage of shard-state cache<br></div><br><div class=3D"gmail_quote"><div dir=
=
=3D"ltr" class=3D"gmail_attr">Le=C2=A0mer. 18 mars 2020 =C3=A0=C2=A018:47,=
 David Stewart &lt;<a href=3D"mailto:david.c.stewart@intel.com">david.c.ste=
wart@intel.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_6618007326145212200WordSection1">
<p class=3D"MsoNormal">4 hours seems extremely long to me for a 8 core sys=
tem, but I have not tried this in a while. Were you removing all the source=
s and re-downloading them for every build?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div style=3D"border-color:rgb(181,196,223) currentcolor currentcolor;bord=
er-style:solid none none;border-width:1pt medium medium;padding:3pt 0in 0in=
">
<p class=3D"MsoNormal"><b><span style=3D"font-size:12pt;color:black">From:=
 </span></b><span style=3D"font-size:12pt;color:black">&lt;<a href=3D"mailt=
o:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctoproject.=
org</a>&gt; on behalf of Srini &lt;<a href=3D"mailto:rsrinivasan@abiomed.co=
m" target=3D"_blank">rsrinivasan@abiomed.com</a>&gt;<br>
<b>Date: </b>Wednesday, March 18, 2020 at 10:13 AM<br>
<b>To: </b>&quot;<a href=3D"mailto:mikko.rapeli@bmw.de" target=3D"_blank">=
mikko.rapeli@bmw.de</a>&quot; &lt;<a href=3D"mailto:mikko.rapeli@bmw.de" ta=
rget=3D"_blank">mikko.rapeli@bmw.de</a>&gt;, &quot;<a href=3D"mailto:mike.l=
ooijmans@topic.nl" target=3D"_blank">mike.looijmans@topic.nl</a>&quot; &lt;=
<a href=3D"mailto:mike.looijmans@topic.nl" target=3D"_blank">mike.looijmans=
@topic.nl</a>&gt;<br>
<b>Cc: </b>&quot;<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D=
"_blank">yocto@lists.yoctoproject.org</a>&quot; &lt;<a href=3D"mailto:yocto=
@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>=
&gt;<br>
<b>Subject: </b>Re: &lt;EXT&gt; Re: [yocto] What are the key factors for y=
octo build speed?<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt">My own experience (par=
don me if already discussed)<br>
<br>
Fought the build times for several months - ending up eventually at 8 core=
s (but specifying 16 threads in poky builds). Best times for my build about=
 4 hours. Clearly impractical during engineering.<br>
<br>
Generated an sdk and used it for app development. Each build is now a minu=
te or 2.<br>
<br>
Using a homegrown utility, updated the image file with applications in a j=
iffy - to produce burnable sdcard image.<br>
<br>
Complete build required only for the final release -- or made major change=
s like python2 to python3!<br>
<br>
YMMV.<br>
<br>
srini<br>
<br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yo=
cto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproje=
ct.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt; On Behalf Of=
 Mikko Rapeli via <a href=3D"http://Lists.Yoctoproject.Org" target=3D"_blan=
k">Lists.Yoctoproject.Org</a><br>
Sent: Wednesday, March 18, 2020 11:52 AM<br>
To: <a href=3D"mailto:mike.looijmans@topic.nl" target=3D"_blank">mike.looi=
jmans@topic.nl</a><br>
Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yoct=
o@lists.yoctoproject.org</a><br>
Subject: &lt;EXT&gt; Re: [yocto] What are the key factors for yocto build =
speed?<br>
<br>
On Wed, Mar 18, 2020 at 04:09:39PM +0100, Mike Looijmans wrote:<br>
&gt; On 18-03-2020 15:49, Adrian Bunk via <a href=3D"http://Lists.Yoctopro=
ject.Org" target=3D"_blank">Lists.Yoctoproject.Org</a> wrote:<br>
&gt; &gt; On Wed, Mar 18, 2020 at 10:12:26AM -0400, Jean-Marie Lemetayer w=
rote:<br>
&gt; &gt; &gt; ...<br>
&gt; &gt; &gt; For example one of our build servers is using:<br>
&gt; &gt; &gt; - AMD Ryzen 9 3900X<br>
&gt; &gt; &gt; ...<br>
&gt; &gt; &gt; - 32Go DDR4 3200 MHZ CL14<br>
&gt; &gt; &gt; ...<br>
&gt; &gt; &gt; It is a really good price / build time ratio configuration.=
<br>
&gt; &gt;<br>
&gt; &gt; Depends on what you are building.<br>
&gt; &gt;<br>
&gt; &gt; Building non-trivial C++ code (e.g. webkitgtk) with 24 cores but=
<br>
&gt; &gt; only 32 GB RAM will not work, for such code you need more than 2=
<br>
&gt; &gt; GB/core.<br>
&gt;<br>
&gt; Seems a bit excessive to buy hardware just to handle a particular<br>
&gt; corner case. Most of OE/Yocto code is plain C, not even C++.<br>
&gt;<br>
&gt; My rig only has 8GB but doesn&#39;t run into memory issues during big=
 GUI<br>
&gt; builds. The only thing that made it swap was the populate_sdk task<br=
>
&gt; that created a 1.1GB fiel and needed 20GB of RAM to compress that.<br=
>
&gt; Took a few minutes more due to swapping.<br>
&gt; I submitted a patch today to fix that in OE.<br>
&gt;<br>
&gt; Your mileage may vary. But RAM is easy to add.<br>
<br>
Well, I can&#39;t build with under 2 gigs per core or I run out of physica=
l memory and kernel oom-killer kicks in to kill the build. Also can&#39;t r=
un with yocto default parallel settings which only take into account the nu=
mber of cores and thus have a custom script
 which does caps the threads so that 2 gigs of RAM for each are available.=
<br>
<br>
Though I&#39;m sure plain C and plain poky projects have less requirements=
 for RAM.<br>
<br>
-Mikko<br>
<br>
________________________________<br>
<br>
CONFIDENTIALITY NOTICE: This email message and any attachments are confide=
ntial and may be privileged and are meant to be read by the intended recipi=
ent only. If you are not the intended recipient, please notify sender immed=
iately and destroy all copies of
 this message and any attachments without reading or disclosing their cont=
ents. Thank you<br>
<br>
<u></u><u></u></p>
</div>
</div>

<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature">Yann Dirson &lt;<a href=3D"mailto:yann@blade-group.com" ta=
rget=3D"_blank">yann@blade-group.com</a>&gt;<br>Blade / Shadow -- <a href=
=3D"http://shadow.tech" target=3D"_blank">http://shadow.tech</a><br><br></=
div>

--0000000000009268b505a124ff1e--
