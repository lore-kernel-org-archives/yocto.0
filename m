Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1FB1CC433EF
	for <webhook@archiver.kernel.org>; Thu, 13 Jan 2022 23:39:08 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web09.327.1642117147359264527
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 15:39:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=QHOHpmCe;
 spf=pass (domain: gmail.com, ip: 209.85.167.53,
 mailfrom: quaresma.jose@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id m3so10947772lfu.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 15:39:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WGwzCLW0RgC0T528NrnMaEPlluTaZ7rot5oS0CikPBo=;
        b=QHOHpmCeSj6rmzvTEFHv2GAXl+UBajIxGbGjSSKkMrt0OciDlgsSws3Os35rJmebHk
         DbqbIqxU5bpUNMaGjqu7K2dVJljJsTg3e//W6Ouu6YsX9jrkwCLgy418iui+KzI/AgZ0
         rM/AqZkLHRx8s88fbC99Oxp/DHgOLay5QncgxUNcL/KdBeAtjZtoC2vImTWIefX/IqDV
         eXIB0rAjhOM4oaEeIRV9klK5epD23gSAfpvueMZpDLKSFbn8jhd5MXwAR4YDgCqu7xEb
         DkuoTqkmtdrOzEsYZ/mBXZDk7i0gm8Y4y2ERLTVUmpHS/bpgpxmUGQXP4B5EQ0TNwz7C
         IcKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WGwzCLW0RgC0T528NrnMaEPlluTaZ7rot5oS0CikPBo=;
        b=0kkuuu3I6tpsua1TkSCXVu1t18zo0bX5qgcALXqKA9ye5lDf2Ub+FCkZPZ91Mf9lPd
         uFnlVEZKOM+6ZwSS8LjMjd+S9cy3OG3UrkMfwLGnAwWs1clF8AImSNPxqC3imOPpZg1x
         X027iprd15FJoz4/bAFQhpiHD5Ma6RZBcHbtzzEIeaqJjw/x13nKNMr1UbGHm687F0IJ
         crDIHIy5tD21rJEuQYq1wd1LnUxpM2HMQeiyHicmHcrI2asnwpex0t8lQQBTEVYyTi4Z
         Y5r6lth/1SAuMN7evJLn5HIpRTYFRisSv0FGSjqsOkCRMQUcZe6B+jgWe+7D9EA5ASXe
         9iQQ==
X-Gm-Message-State: AOAM532HlAILpdJ1TQB2pDW4+YB0ixA+3omioF/GHd93JDS+m84LM7kH
	hM9QCh583zQreYo66dB2soWKYyV+JWhRNgi8Z6k=
X-Google-Smtp-Source: 
 ABdhPJxFUMyPF7zFbS1Hq8TphoiGrBWJHNJeVKDu7LtgF8L1AhvEWX2aMYdXNnxRBtjbhMxAA/2BxGK/gcmH0ksTYEc=
X-Received: by 2002:a05:6512:398b:: with SMTP id
 j11mr4884586lfu.94.1642117145531;
 Thu, 13 Jan 2022 15:39:05 -0800 (PST)
MIME-Version: 1.0
References: <b4336117-2693-c1f4-30fb-08b92a5e5e1a@bootlin.com>
 <CANPvuR=fxxv_aFFJvo0y265r8NrpFwTevx33sdoTkZYdsP5YAA@mail.gmail.com>
 <9963686e-1acb-2cf0-a33b-74713ab99b51@bootlin.com>
 <a7a99ebd18e88097a0967fe8ab40f08ad4c5b028.camel@linuxfoundation.org>
In-Reply-To: 
 <a7a99ebd18e88097a0967fe8ab40f08ad4c5b028.camel@linuxfoundation.org>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Thu, 13 Jan 2022 23:38:54 +0000
Message-ID: 
 <CANPvuRkPLGWpxFjvZSZ7Hy=cdfpOE3W1YxpnFvV17V+-Y2iWfA@mail.gmail.com>
Subject: Re: [yocto] Red alert but apparently harmless setscene errors
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	Michael Halstead <mhalstead@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="0000000000002396ef05d57f3172"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jan 2022 23:39:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55846

--0000000000002396ef05d57f3172
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Richard Purdie <richard.purdie@linuxfoundation.org> escreveu no dia quinta,
13/01/2022 =C3=A0(s) 21:53:

> On Thu, 2022-01-13 at 19:37 +0100, Michael Opdenacker wrote:
> > Hi Jose,
> >
> > Thanks for your advice!
> >
> > On 1/13/22 6:37 PM, Jose Quaresma wrote:
> > > Hi,
> > >
> > > I've seen the same for some time now when building core-image-minimal
> > > with yocto state mirror and hashequiv servers.
> > >
> > > After some investigation I think the root cause is some
> > > bandwidth/connection limitation on the http yocto mirror.
> > >
> > > Reducing the BB_NUMBER_THREADS=3D"1" to a single core solves many of =
the
> > > fetch issues for me,
> > > my config is the default one with:
> > >
> > >   BB_NUMBER_THREADS=3D"1"
> > >   SSTATE_MIRRORS =3D "file://.*
> > > http://sstate.yoctoproject.org/dev/PATH;downloadfilename=3DPATH
> > > <http://sstate.yoctoproject.org/dev/PATH;downloadfilename=3DPATH>"
> > >   BB_HASHSERVE_UPSTREAM =3D "typhoon.yocto.io:8687
> > > <http://typhoon.yocto.io:8687>"
> >
> >
> > Oops, it seems you're right. I have the same SSTATE_MIRRORS and
> > BB_HASHSERVE_UPSTREAM settings as you do, and adding
> > BB_NUMBER_THREADS=3D"1" makes the errors disappear.
> >
> > It seems I should file a bug about that. The error messages just mentio=
n
> > local paths, not remote ones, so it sounds like a local issue while it'=
s
> > apparently not.
>
> That is useful to debug it but suggests there is an issue with concurrent
> connections to the YP server.
>
> I think we should have an open bug and get Michael Halstead's input on
> this.
>
> Cheers,
>
> Richard
>
>
During the last yocto project summit 2021.11 I have submitted a patch
to reduce the time needed for handling the sstate mirrors on startup,
that without my realizing it actually launches a DoS attack to the mirror.
This patch was rejected as expected.

After that patch, maybe by coincidence I got the idea that some measures
had been taken to mitigate this problem but if it wasn't the case then
there is
a bug in concurrent connections to the YP server.

When the patch was sent there was no problem with the concurrent connection=
s
to the YP server.
https://lists.openembedded.org/g/openembedded-core/topic/87464090#159111

Jose

--0000000000002396ef05d57f3172
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">Richard Purdie &lt;<a href=3D"mailto:richard.pur=
die@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt; escreve=
u no dia quinta, 13/01/2022 =C3=A0(s) 21:53:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">On Thu, 2022-01-13 at 19:37 +0100, Michael Opd=
enacker wrote:<br>
&gt; Hi Jose,<br>
&gt; <br>
&gt; Thanks for your advice!<br>
&gt; <br>
&gt; On 1/13/22 6:37 PM, Jose Quaresma wrote:<br>
&gt; &gt; Hi,<br>
&gt; &gt; <br>
&gt; &gt; I&#39;ve seen the same for some time now when=C2=A0building=C2=A0=
core-image-minimal<br>
&gt; &gt; with yocto state=C2=A0mirror and hashequiv servers.<br>
&gt; &gt; <br>
&gt; &gt; After some investigation I think the root cause is some<br>
&gt; &gt; bandwidth/connection=C2=A0limitation on the http yocto mirror.<br=
>
&gt; &gt; <br>
&gt; &gt; Reducing the=C2=A0BB_NUMBER_THREADS=3D&quot;1&quot; to a single c=
ore solves many of the<br>
&gt; &gt; fetch issues for me,<br>
&gt; &gt; my config is the default one with:<br>
&gt; &gt; <br>
&gt; &gt; =C2=A0 BB_NUMBER_THREADS=3D&quot;1&quot;<br>
&gt; &gt; =C2=A0 SSTATE_MIRRORS =3D &quot;file://.*<br>
&gt; &gt; <a href=3D"http://sstate.yoctoproject.org/dev/PATH;downloadfilena=
me=3DPATH" rel=3D"noreferrer" target=3D"_blank">http://sstate.yoctoproject.=
org/dev/PATH;downloadfilename=3DPATH</a><br>
&gt; &gt; &lt;<a href=3D"http://sstate.yoctoproject.org/dev/PATH;downloadfi=
lename=3DPATH" rel=3D"noreferrer" target=3D"_blank">http://sstate.yoctoproj=
ect.org/dev/PATH;downloadfilename=3DPATH</a>&gt;&quot;<br>
&gt; &gt; =C2=A0 BB_HASHSERVE_UPSTREAM =3D &quot;<a href=3D"http://typhoon.=
yocto.io:8687" rel=3D"noreferrer" target=3D"_blank">typhoon.yocto.io:8687</=
a><br>
&gt; &gt; &lt;<a href=3D"http://typhoon.yocto.io:8687" rel=3D"noreferrer" t=
arget=3D"_blank">http://typhoon.yocto.io:8687</a>&gt;&quot;<br>
&gt; <br>
&gt; <br>
&gt; Oops, it seems you&#39;re right. I have the same SSTATE_MIRRORS and<br=
>
&gt; BB_HASHSERVE_UPSTREAM settings as you do, and adding<br>
&gt; BB_NUMBER_THREADS=3D&quot;1&quot; makes the errors disappear.<br>
&gt; <br>
&gt; It seems I should file a bug about that. The error messages just menti=
on<br>
&gt; local paths, not remote ones, so it sounds like a local issue while it=
&#39;s<br>
&gt; apparently not.<br>
<br>
That is useful to debug it but suggests there is an issue with concurrent<b=
r>
connections to the YP server.<br>
<br>
I think we should have an open bug and get Michael Halstead&#39;s input on =
this.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</blockquote></div><div><div dir=3D"ltr"><br></div><div dir=3D"ltr">During =
the last yocto project summit 2021.11 I have submitted a patch<br></div><di=
v>to reduce the time needed for handling the sstate mirrors on startup,</di=
v><div>that without my realizing it actually launches a DoS attack to the m=
irror.<br></div><div>This patch was rejected as expected.<br></div><div><br=
></div><div>After that patch, maybe by coincidence I got the idea that some=
 measures</div><div>had been taken to mitigate this problem but if it wasn&=
#39;t the case=C2=A0then there is</div><div>a bug in=C2=A0<span style=3D"co=
lor:rgb(0,0,0)">concurrent=C2=A0</span><span style=3D"color:rgb(0,0,0)">con=
nections to the YP server.</span></div><div><br></div><div>When the patch w=
as sent there was no problem with the=C2=A0<span style=3D"color:rgb(0,0,0)"=
>concurrent=C2=A0</span>connections to the YP server.</div><div><a href=3D"=
https://lists.openembedded.org/g/openembedded-core/topic/87464090#159111">h=
ttps://lists.openembedded.org/g/openembedded-core/topic/87464090#159111</a>=
</div></div><div><br></div><div dir=3D"ltr" class=3D"gmail_signature"><div =
dir=3D"ltr"><div>Jose</div></div></div></div></div>

--0000000000002396ef05d57f3172--

