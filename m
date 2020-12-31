Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web12.18302.1609398770744697656
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Dec 2020 23:12:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Cr6/xGZw;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: raghu.icecraft@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id m12so42404076lfo.7
        for <yocto@lists.yoctoproject.org>; Wed, 30 Dec 2020 23:12:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cvx+XzKc+WEJWYwAHMJmQEURjagUb2ud2ADzV9jYN9c=;
        b=Cr6/xGZw+mwgYYAHK1DQdqL8WO4KPk7sg74clXljmLx7PbMKbkM3ebYMiREza3bMo3
         jYBy7+bZTXAOM0uxPobWR6ATPdIW6Xpw5VJBoSqPAHlfL46QwHEu8+3YlEuHpmtcoirv
         BNvisy+UIlXYaDKw2+GtxY8U+5vZaWX6Fz2uhmLYOmG1izQUyJGwK55zz0EzU7P0y3bA
         Rrzu/DnF7tQ7g3+us4tkwFJ0xACAsAGc7mqn0AHyly5DSt8bLZ4RyhHrp/I0lXVAIpIO
         tpBIQ4Wqf/RGshtzgb3FbcyPe0uclVO1GWCLD48wxCWa0G5J+1B0NZ3Iz3PMYHFhLyU2
         9Tpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cvx+XzKc+WEJWYwAHMJmQEURjagUb2ud2ADzV9jYN9c=;
        b=mASpPbOM3Sb1GndzdcidCTvq/N/juHXkyu50e14l8ViaChzrDvFeQcg0rw+PFae8fz
         S5/8E8J/F36rcdySIFm4GWjwwNjn8bEbBghCfX2cQD8OSOwPwBeYJEz91ZlTpxWMMCZH
         dwtb+C8rcUzTiFDb5oME0zbS20OLSix74biwY1sg34sDPGz/UxK7EmzpM/ZCRD3IWP+e
         Q6BAZSk4O5PloHs1kSSUz2V0MY9sTRc7ItPOODrtXWv7t1R0EPOhZ/+zhMtooGtYY3pC
         WxJ1S1vfoXazSc8lbo2e5jFdX2/3H+XUuBh5wyJL+L5D+PJOSWLb46pRrelB0TRKR43R
         RCrw==
X-Gm-Message-State: AOAM533/hDTc2iPJxxJFTb97texlt93K4fnixy3rbTKGNRqab25yfCzY
	OW7jengiIRaXDhscvyDQ9w2qVo2CaCQHZfmufKs=
X-Google-Smtp-Source: ABdhPJwSrfyoclf7ssy1828bNE6u1wX+/28ZERyMxbTus/A0wQL8h6bi85qziUkwOOGAq+8tJoc3XzFKmat61G0iArI=
X-Received: by 2002:a2e:155d:: with SMTP id 29mr26461115ljv.3.1609398768234;
 Wed, 30 Dec 2020 23:12:48 -0800 (PST)
MIME-Version: 1.0
References: <CAKRDAG9vG0AsckYe2hJL9DW_FF6G_+71wLA5+hWG38xh7UjQUg@mail.gmail.com>
 <CAM9ZRVuM_zdytq2xYga15c4YpFNTZ3rNLPASZR-Akfb0Ao3x_A@mail.gmail.com>
 <CAKRDAG-CwUypnEGq05GocbGh-r_bt5HewOKqfWncWtyDoeXnpQ@mail.gmail.com> <cc7a7a8d-49fd-987a-6b8e-cc00f6fa802e@balister.org>
In-Reply-To: <cc7a7a8d-49fd-987a-6b8e-cc00f6fa802e@balister.org>
From: "Raghu Icecraft Software Trainings" <raghu.icecraft@gmail.com>
Date: Thu, 31 Dec 2020 12:42:36 +0530
Message-ID: <CAKRDAG8rUFG7QHZCX6XgDXQOgzJVe6pVKKVPHVmoaf8UZ1aw9Q@mail.gmail.com>
Subject: Re: [yocto] chpasswd not working in yocto-2019
To: Philip Balister <philip@balister.org>
Cc: Paul Barker <pbarker@konsulko.com>, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e1f42005b7bd5921"

--000000000000e1f42005b7bd5921
Content-Type: text/plain; charset="UTF-8"

Hello,
Thanks for the reply.
I mailed to
meta-xilinx@lists.yoctoproject.org
But no response yet, can you please let me know where else can i find some
information.

Thanks,
Raghu

On Mon, Dec 28, 2020 at 7:28 PM Philip Balister <philip@balister.org> wrote:

> On 12/28/20 7:33 AM, Raghu Icecraft Software Trainings wrote:
> > Paul,
> > Thanks for the reply.
> > I am using Xilinx-SDK based : Linux version 4.19.0-rt1-xilinx-v2019.1
> >
> > Can you please let me know how to verify the yocto version running on
> > target.
>
> You might have better luck on the meta-xilinx mailing list. They should
> know the details for their BSP.
>
> More info on Xilnx layers and a pointer to subscribe info to the mailing
> list is here:
>
> https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18841883/Yocto
>
> Philip
>
> >
> > Thanks,
> > Raghu
> >
> > On Mon, Dec 28, 2020 at 5:31 PM Paul Barker <pbarker@konsulko.com>
> wrote:
> >
> >> On Mon, 28 Dec 2020 at 09:44, Raghu Icecraft Software Trainings
> >> <raghu.icecraft@gmail.com> wrote:
> >>>
> >>> Hello,
> >>> I have upgraded my kernel poky to 2019.1 version, here i am unable to
> >> find chpasswd utility because of which i am unable to set password to my
> >> root-user.
> >>> Can you please let me know if the chpasswd utility has been changed or
> >> modified please.
> >>
> >> Yocto Project doesn't have a version "2019.1", see
> >> https://wiki.yoctoproject.org/wiki/Releases.
> >>
> >> I guess you're using a vendor supplied BSP or SDK with that version
> >> number. Could you provide the Yocto Project version number and the
> >> layers in use, or at least give some more info on where your "2019.1"
> >> release is from.
> >>
> >> Thanks,
> >>
> >> --
> >> Paul Barker
> >> Konsulko Group
> >>
> >
> >
> >
> > 
> >
>

--000000000000e1f42005b7bd5921
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div>Thanks for the=C2=A0reply.</div><div>I mailed t=
o=C2=A0</div><table cellpadding=3D"0" class=3D"gmail-ajC" style=3D"border-s=
pacing:0px;line-height:20px;font-family:Roboto,RobotoDraft,Helvetica,Arial,=
sans-serif;font-size:14px"><tbody><tr class=3D"gmail-ajv"><td colspan=3D"2"=
 tabindex=3D"0" class=3D"gmail-gL" style=3D"vertical-align:top;width:auto;p=
adding:2px 0px"><span class=3D"gmail-gI" style=3D"vertical-align:top"><a hr=
ef=3D"mailto:meta-xilinx@lists.yoctoproject.org">meta-xilinx@lists.yoctopro=
ject.org</a><br></span></td></tr><tr class=3D"gmail-ajv"></tr></tbody></tab=
le>But no=C2=A0response yet, can you please let me know where else can i fi=
nd some information.<div><br></div><div>Thanks,</div><div>Raghu</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon=
, Dec 28, 2020 at 7:28 PM Philip Balister &lt;<a href=3D"mailto:philip@bali=
ster.org" target=3D"_blank">philip@balister.org</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">On 12/28/20 7:33 AM, Raghu I=
cecraft Software Trainings wrote:<br>
&gt; Paul,<br>
&gt; Thanks for the reply.<br>
&gt; I am using Xilinx-SDK based : Linux version 4.19.0-rt1-xilinx-v2019.1=
<br>
&gt; <br>
&gt; Can you please let me know how to verify the yocto version running on=
<br>
&gt; target.<br>
<br>
You might have better luck on the meta-xilinx mailing list. They should<br=
>
know the details for their BSP.<br>
<br>
More info on Xilnx layers and a pointer to subscribe info to the mailing<b=
r>
list is here:<br>
<br>
<a href=3D"https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18841883/=
Yocto" rel=3D"noreferrer" target=3D"_blank">https://xilinx-wiki.atlassian.n=
et/wiki/spaces/A/pages/18841883/Yocto</a><br>
<br>
Philip<br>
<br>
&gt; <br>
&gt; Thanks,<br>
&gt; Raghu<br>
&gt; <br>
&gt; On Mon, Dec 28, 2020 at 5:31 PM Paul Barker &lt;<a href=3D"mailto:pba=
rker@konsulko.com" target=3D"_blank">pbarker@konsulko.com</a>&gt; wrote:<br=
>
&gt; <br>
&gt;&gt; On Mon, 28 Dec 2020 at 09:44, Raghu Icecraft Software Trainings<b=
r>
&gt;&gt; &lt;<a href=3D"mailto:raghu.icecraft@gmail.com" target=3D"_blank"=
>raghu.icecraft@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Hello,<br>
&gt;&gt;&gt; I have upgraded my kernel poky to 2019.1 version, here i am u=
nable to<br>
&gt;&gt; find chpasswd utility because of which i am unable to set passwor=
d to my<br>
&gt;&gt; root-user.<br>
&gt;&gt;&gt; Can you please let me know if the chpasswd utility has been c=
hanged or<br>
&gt;&gt; modified please.<br>
&gt;&gt;<br>
&gt;&gt; Yocto Project doesn&#39;t have a version &quot;2019.1&quot;, see<=
br>
&gt;&gt; <a href=3D"https://wiki.yoctoproject.org/wiki/Releases" rel=3D"no=
referrer" target=3D"_blank">https://wiki.yoctoproject.org/wiki/Releases</a>=
.<br>
&gt;&gt;<br>
&gt;&gt; I guess you&#39;re using a vendor supplied BSP or SDK with that v=
ersion<br>
&gt;&gt; number. Could you provide the Yocto Project version number and th=
e<br>
&gt;&gt; layers in use, or at least give some more info on where your &quo=
t;2019.1&quot;<br>
&gt;&gt; release is from.<br>
&gt;&gt;<br>
&gt;&gt; Thanks,<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; Paul Barker<br>
&gt;&gt; Konsulko Group<br>
&gt;&gt;<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
</blockquote></div>

--000000000000e1f42005b7bd5921--
