Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3380C433F5
	for <webhook@archiver.kernel.org>; Wed,  6 Oct 2021 11:26:15 +0000 (UTC)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com
 [209.85.217.41])
 by mx.groups.io with SMTP id smtpd.web11.10566.1633519575009796321
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Oct 2021 04:26:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=A1RgVbeW;
 spf=pass (domain: gmail.com, ip: 209.85.217.41,
 mailfrom: joel.winarske@gmail.com)
Received: by mail-vs1-f41.google.com with SMTP id 66so2473914vsd.11
        for <yocto@lists.yoctoproject.org>;
 Wed, 06 Oct 2021 04:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=F57+c3NSJVNaRTtzzvObwMYEhF+O0+zZnhkVPQpa3ew=;
        b=A1RgVbeWnRX7P/Z45p2Pr/V/Fik/pnf6Re+LMiSYnu0LE4/sk3hewH+23ECwis0tFN
         HrnhMVBWPY3Fh2MGVvXkeagXtKUMasFQHkri8bpglh4LAZv1oRpLKawKvxvHxF74swWU
         jjgQFpHMrhS/aqFkjlHRj9DSdUKxr6zIf6rRyImHV5wxEaXdLhPc+gwGtfnlAaHmPJxo
         NFHiHZaDt1iMGVH3Ws6GVAWLm6A3bqAFkCb2dKaKWVydtK/AlbniZR0oGDm8WEADfWoG
         UXcun2BJg791YzCsjVOrc8lN5mn9hnEay/riDoXHA4+lRGIz8I/73PU5K3thaekfV0dd
         qNuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=F57+c3NSJVNaRTtzzvObwMYEhF+O0+zZnhkVPQpa3ew=;
        b=H+rLchZd8qy5YZWraajjho5Rl8YVaG8D5+UW/yF+HVN0JHkBe/c7JEqSlQ0t6hZnSw
         5MMGh/W8whcs3i1CxrtZyENXvDz81A2rfZ4rlTxtesgbTJ00dYKbNYtUH6CdcJjThYR6
         4kcjxZdkJfJA290PntxGoqMaRKsh9XA+WigyrW4pzTwqxy2QSZDY1mYKKSGWF/4jELsn
         HIPy1HWkESTkRIpY/0hI8npxo6LTn8HGlY0mpPwNw9vtB2uiPdJn319Ww6BoJPnqA+iL
         2BRuMpEdSI3NpTIFn5FOR73vDCRs/0R86cKfZtt2vQaftqvtUHvapkHD9KUFn8t4k89r
         mVJA==
X-Gm-Message-State: AOAM530kekgyhogCRfNvf7TxganyttFVDqvwcYzVVIOK6/TQKQrgMXn8
	Hy7i3MwGTc342N+7fEP8k/2MXHaHWJ2I6EQ4sGA=
X-Google-Smtp-Source: 
 ABdhPJzfDcsVQ1NnA6Drda5jQfd+79l2Ic0Gpo9oLQErEU0h+u58PpEMJX3Gawz6PicKiq1Cwhmv09KNx9OamEObg5U=
X-Received: by 2002:a05:6102:350:: with SMTP id
 e16mr22779468vsa.59.1633519574079;
 Wed, 06 Oct 2021 04:26:14 -0700 (PDT)
MIME-Version: 1.0
References: <0c6e789aba8141509bb31779a8393cbf@sakuraus.com>
 <0a038b52-6f11-662a-8d77-786919852079@gmail.com>
 <aa11888f9dc34eed9383c55ceae3eb9f@sakuraus.com>
 <CAMKF1srthNYZQq_N8p5s_z2KYyWhQ-xb8T5X=+JYri7G2iobmg@mail.gmail.com>
 <05663a522f6a4b44b12746c31d96ca0f@sakuraus.com>
 <CAMKF1sqR2qztzv+4HeuqhbzY57WYMh4wU57b2LJ=OTv-9ooJhA@mail.gmail.com>
 <a8fed034af6e471894743920f7f2ba83@sakuraus.com>
In-Reply-To: <a8fed034af6e471894743920f7f2ba83@sakuraus.com>
From: Joel Winarske <joel.winarske@gmail.com>
Date: Wed, 6 Oct 2021 04:26:01 -0700
Message-ID: 
 <CABKMkPLh6eM5=U5OtRBuhQ0vwud73HFk0yqLLkGH0CBBGsfHSA@mail.gmail.com>
Subject: Re: [yocto] virtual/egl on Raspberry Pi 4
To: Greg Wilson-Lindberg <gwilson@sakuraus.com>
Cc: Khem Raj <raj.khem@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f25c1f05cdad6904"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Oct 2021 11:26:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54978

--000000000000f25c1f05cdad6904
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Greg,

Do you have this in your local.conf?

DISTRO_FEATURES_append =3D " opengl"

On Tue, Oct 5, 2021, 11:22 AM Greg Wilson-Lindberg <gwilson@sakuraus.com>
wrote:

> Hi Khem,
>
> I added the VC4GRAPHICS line and here is the complete error that I get:
>
>
> ERROR: Nothing PROVIDES 'virtual/egl' (but
> /home/gwilson/Qt-5.15.6/Yocto-build-RPi4/sources/meta-qt5/recipes-qt/qt5/
> qtbase_git.bb DEPENDS on or otherwise requires it)
> vc-graphics PROVIDES virtual/egl but was skipped:
> PREFERRED_PROVIDER_virtual/libgles2 set to mesa, not vc-graphics
> opengldummy PROVIDES virtual/egl but was skipped:
> PREFERRED_PROVIDER_virtual/libgles2 set to mesa, not opengldummy
> vc-graphics-hardfp PROVIDES virtual/egl but was skipped:
> PREFERRED_PROVIDER_virtual/libgles2 set to mesa, not vc-graphics-hardfp
> qtglesstream-dummy-client PROVIDES virtual/egl but was skipped:
> PREFERRED_PROVIDER_virtual/libgles2 set to mesa, not
> qtglesstream-dummy-client
> NOTE: Runtime target 'zint' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['zint', 'qtbase',
> 'virtual/egl']
>
> Regards,
>
> Greg
> ------------------------------
> *From:* Khem Raj <raj.khem@gmail.com>
> *Sent:* Tuesday, October 5, 2021 9:31:49 AM
> *To:* Greg Wilson-Lindberg
> *Cc:* yocto@lists.yoctoproject.org
> *Subject:* Re: [yocto] virtual/egl on Raspberry Pi 4
>
> that should have worked well for userland recipe to provide it. Maybe
> you need to set
>
> VC4GRAPHICS =3D ""
>
> in local.conf
>
> On Tue, Oct 5, 2021 at 8:53 AM Greg Wilson-Lindberg
> <GWilson@sakuraus.com> wrote:
> >
> > I am compiling in 32 bit mode.
> >
> >
> >
> > From: Khem Raj <raj.khem@gmail.com>
> > Sent: Monday, October 4, 2021 5:15 PM
> > To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> > Cc: yocto@lists.yoctoproject.org
> > Subject: Re: [yocto] virtual/egl on Raspberry Pi 4
> >
> >
> >
> > It should have automatically found user land package as one of provider=
s
> but if it is not doing so that means it=E2=80=99s being ignored because i=
t=E2=80=99s not
> compatible arch or something
> >
> > Are you compiling 32bit mode ?
> >
> >
> >
> >
> >
> > On Mon, Oct 4, 2021 at 4:08 PM Greg Wilson-Lindberg <
> GWilson@sakuraus.com> wrote:
> >
> > Hi Khem,
> > Yes, the Raspberry Pi boards do use closed source drivers. What I need
> is how do I include the proper package that will bring in the necessary
> virtual/egl for the Raspberry Pi 4.
> >
> > Greg
> > > -----Original Message-----
> > > From: Khem Raj <raj.khem@gmail.com>
> > > Sent: Monday, October 4, 2021 14:17
> > > To: Greg Wilson-Lindberg <GWilson@sakuraus.com>;
> > > yocto@lists.yoctoproject.org
> > > Subject: Re: [yocto] virtual/egl on Raspberry Pi 4
> > >
> > >
> > >
> > > On 10/4/21 12:39 PM, Greg Wilson-Lindberg wrote:
> > > > Hello list,
> > > >
> > > > I'm working on a Qt supplied boot2qt Yocto build currently based on
> > > > Zeus that is running on a Raspberry Pi 4. I recently updated the qt
> > > > version to 5.15.6 and Qt changed something in the Yocto configurati=
on
> > > > that they are using and now one of the recipes that we use is faili=
ng
> > > > saying that in needs 'virtual/egl' but that it is not provided by
> any recipe.
> > > >
> > > > In the searching that I have done I have found that the raspberry p=
i
> 4
> > > > is particular on which package supplies the virtual/egl but I haven=
't
> > > > seen anything that indicates what I should do to re-enable it.
> > > >
> > > > Can anyone tell me what I need to do to enable the correct driver t=
o
> > > > get virtual/egl provided on the Raspberry Pi 4? Or maybe even bette=
r,
> > > > how I could search through the packages that are enabled on the old
> > > > and new Yocto trees so that I can figure out what changed between t=
he
> > > > releases and re-enable the virtual/egl.
> > > >
> > >
> > > it should be provided by userland package if you are using closed
> source
> > > graphics driver.
> > >
> > > > Best Regards,
> > > >
> > > > Greg Wilson-Lindberg
> > > >
> > > >
> > > >
> > > >
> > > >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54963):
> https://lists.yoctoproject.org/g/yocto/message/54963
> Mute This Topic: https://lists.yoctoproject.org/mt/86076611/2167248
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> joel.winarske@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000f25c1f05cdad6904
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Greg,<div dir=3D"auto"><br><div dir=3D"auto">Do you ha=
ve this in your local.conf?</div><div dir=3D"auto"><br></div><div dir=3D"au=
to"><span style=3D"color:rgb(240,246,252);font-family:ui-monospace,sfmono-r=
egular,&quot;sf mono&quot;,menlo,consolas,&quot;liberation mono&quot;,monos=
pace;font-size:12px;white-space:pre;background-color:rgb(22,27,34)">DISTRO_=
FEATURES_append =3D &quot; opengl&quot;</span><br></div></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 5=
, 2021, 11:22 AM Greg Wilson-Lindberg &lt;<a href=3D"mailto:gwilson@sakurau=
s.com">gwilson@sakuraus.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex">





<div>


<div dir=3D"ltr">
<div id=3D"m_-3301180309723432010x_divtagdefaultwrapper" dir=3D"ltr" style=
=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif">
<p>Hi Khem,</p>
<p>I added the VC4GRAPHICS line and here is the complete error that I get:<=
/p>
<p><br>
</p>
<p></p>
<div>ERROR: Nothing PROVIDES &#39;virtual/egl&#39; (but /home/gwilson/Qt-5.=
15.6/Yocto-build-RPi4/sources/meta-qt5/recipes-qt/qt5/<a href=3D"http://qtb=
ase_git.bb" target=3D"_blank" rel=3D"noreferrer">qtbase_git.bb</a> DEPENDS =
on or otherwise requires it)</div>
<div>vc-graphics PROVIDES virtual/egl but was skipped: PREFERRED_PROVIDER_v=
irtual/libgles2 set to mesa, not vc-graphics</div>
<div>opengldummy PROVIDES virtual/egl but was skipped: PREFERRED_PROVIDER_v=
irtual/libgles2 set to mesa, not opengldummy</div>
<div>vc-graphics-hardfp PROVIDES virtual/egl but was skipped: PREFERRED_PRO=
VIDER_virtual/libgles2 set to mesa, not vc-graphics-hardfp</div>
<div>qtglesstream-dummy-client PROVIDES virtual/egl but was skipped: PREFER=
RED_PROVIDER_virtual/libgles2 set to mesa, not qtglesstream-dummy-client</d=
iv>
<div>NOTE: Runtime target &#39;zint&#39; is unbuildable, removing...</div>
<div>Missing or unbuildable dependency chain was: [&#39;zint&#39;, &#39;qtb=
ase&#39;, &#39;virtual/egl&#39;]</div>
<div><br>
</div>
Regards,
<p></p>
<p>Greg</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-3301180309723432010x_divRplyFwdMsg" dir=3D"ltr"><font face=3D=
"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From:</=
b> Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank" rel=
=3D"noreferrer">raj.khem@gmail.com</a>&gt;<br>
<b>Sent:</b> Tuesday, October 5, 2021 9:31:49 AM<br>
<b>To:</b> Greg Wilson-Lindberg<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
" rel=3D"noreferrer">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] virtual/egl on Raspberry Pi 4</font>
<div>=C2=A0</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt">
<div>that should have worked well for userland recipe to provide it. Maybe<=
br>
you need to set<br>
<br>
VC4GRAPHICS =3D &quot;&quot;<br>
<br>
in local.conf<br>
<br>
On Tue, Oct 5, 2021 at 8:53 AM Greg Wilson-Lindberg<br>
&lt;<a href=3D"mailto:GWilson@sakuraus.com" target=3D"_blank" rel=3D"norefe=
rrer">GWilson@sakuraus.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I am compiling in 32 bit mode.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; From: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bl=
ank" rel=3D"noreferrer">raj.khem@gmail.com</a>&gt;<br>
&gt; Sent: Monday, October 4, 2021 5:15 PM<br>
&gt; To: Greg Wilson-Lindberg &lt;<a href=3D"mailto:GWilson@sakuraus.com" t=
arget=3D"_blank" rel=3D"noreferrer">GWilson@sakuraus.com</a>&gt;<br>
&gt; Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank" =
rel=3D"noreferrer">yocto@lists.yoctoproject.org</a><br>
&gt; Subject: Re: [yocto] virtual/egl on Raspberry Pi 4<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; It should have automatically found user land package as one of provide=
rs but if it is not doing so that means it=E2=80=99s being ignored because =
it=E2=80=99s not compatible arch or something<br>
&gt;<br>
&gt; Are you compiling 32bit mode ?<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Mon, Oct 4, 2021 at 4:08 PM Greg Wilson-Lindberg &lt;<a href=3D"mai=
lto:GWilson@sakuraus.com" target=3D"_blank" rel=3D"noreferrer">GWilson@saku=
raus.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Khem,<br>
&gt; Yes, the Raspberry Pi boards do use closed source drivers. What I need=
 is how do I include the proper package that will bring in the necessary vi=
rtual/egl for the Raspberry Pi 4.<br>
&gt;<br>
&gt; Greg<br>
&gt; &gt; -----Original Message-----<br>
&gt; &gt; From: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank" rel=3D"noreferrer">raj.khem@gmail.com</a>&gt;<br>
&gt; &gt; Sent: Monday, October 4, 2021 14:17<br>
&gt; &gt; To: Greg Wilson-Lindberg &lt;<a href=3D"mailto:GWilson@sakuraus.c=
om" target=3D"_blank" rel=3D"noreferrer">GWilson@sakuraus.com</a>&gt;;<br>
&gt; &gt; <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank"=
 rel=3D"noreferrer">yocto@lists.yoctoproject.org</a><br>
&gt; &gt; Subject: Re: [yocto] virtual/egl on Raspberry Pi 4<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; On 10/4/21 12:39 PM, Greg Wilson-Lindberg wrote:<br>
&gt; &gt; &gt; Hello list,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I&#39;m working on a Qt supplied boot2qt Yocto build current=
ly based on<br>
&gt; &gt; &gt; Zeus that is running on a Raspberry Pi 4. I recently updated=
 the qt<br>
&gt; &gt; &gt; version to 5.15.6 and Qt changed something in the Yocto conf=
iguration<br>
&gt; &gt; &gt; that they are using and now one of the recipes that we use i=
s failing<br>
&gt; &gt; &gt; saying that in needs &#39;virtual/egl&#39; but that it is no=
t provided by any recipe.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; In the searching that I have done I have found that the rasp=
berry pi 4<br>
&gt; &gt; &gt; is particular on which package supplies the virtual/egl but =
I haven&#39;t<br>
&gt; &gt; &gt; seen anything that indicates what I should do to re-enable i=
t.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Can anyone tell me what I need to do to enable the correct d=
river to<br>
&gt; &gt; &gt; get virtual/egl provided on the Raspberry Pi 4? Or maybe eve=
n better,<br>
&gt; &gt; &gt; how I could search through the packages that are enabled on =
the old<br>
&gt; &gt; &gt; and new Yocto trees so that I can figure out what changed be=
tween the<br>
&gt; &gt; &gt; releases and re-enable the virtual/egl.<br>
&gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; it should be provided by userland package if you are using closed=
 source<br>
&gt; &gt; graphics driver.<br>
&gt; &gt;<br>
&gt; &gt; &gt; Best Regards,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Greg Wilson-Lindberg<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;<br>
</div>
</span></font>
</div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#54963): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/54963" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/54963</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86076611/2167=
248" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/86076611/2167248</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:joel.winarske@gmail.com" target=3D"_b=
lank" rel=3D"noreferrer">joel.winarske@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000f25c1f05cdad6904--

