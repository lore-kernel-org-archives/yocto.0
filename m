Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.20426.1601384589576093169
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Sep 2020 06:03:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@soccasys-com.20150623.gappssmtp.com header.s=20150623 header.b=0BWqjDs+;
 spf=softfail (domain: soccasys.com, ip: 198.145.29.25, mailfrom: laurent.gauthier@soccasys.com)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9058B38C0636
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2020 06:03:08 -0700 (PDT)
Received: by mail-vs1-f51.google.com with SMTP id j185so2877374vsc.3
        for <yocto@yoctoproject.org>; Tue, 29 Sep 2020 06:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soccasys-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3+fkTCW2vo5rfGLoYLRcRen7f2nT9bMXMmXqkAqBAoc=;
        b=0BWqjDs+7HoFf9wZRGIg7vXBMiqh93hcyTDewCqf6RzsEcOSeYtJ/jEf27GgjBArbq
         yPF3Z738AgddLMdWz8wFPcTf7G3VZTMSg6jbKX00jFIY4KNzi+lVkxgYkMTVwXoxZWFF
         ltgdy3FmdCt5veP5NEC3GGtQwe+ee+kf09C/vPsadVdZG8Kfkz6Grwp4Cg/wp77/MV+X
         1pHVdt5u4sZS8KU0/DRcon/7pUSeicwCw5VJKW4dKt53L3kF2nI03PgghTCFJ6vnD1TA
         Q1p0//EJozawP1pzjVu5aST7e2eNok0eqFjUX2j7stdqUiFVTYuiePpgLyUPGxjMRwKT
         QJgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3+fkTCW2vo5rfGLoYLRcRen7f2nT9bMXMmXqkAqBAoc=;
        b=IF+XL9EbOi/C3qNmU8MvgEcH7fJWo18zdUYWCUdX8jGJtjEhOhWDik9lNApE2fk12C
         U3V3tHjXrQZQ4s+mUgHOdEkj9hQZtwHJmoZfpAqVJ4Az+4miv99bxe1xc4NawoFyz+2p
         LuTe7E/S1KrfJX5J+bAaDMMJ+m/mKIVjSPaX76Ip0bYs4HIy7yYpQgwsQL0Wlq94U8SA
         vLaUDJ16sVsxsyZDX07ZuYaBG2+ZEFLkzgQvXmUlRH01TDfuAacZiS7D42SfXUNb3mtK
         QyGRozlHgYja+e9oMbNyO2xlMy1bfdrP2VPb0GKAr2KPToLRGCx0SY/PNxglmjG5y4jl
         0yLA==
X-Gm-Message-State: AOAM531FP5Jl0ZDD5gno53lv5J4qVzg/cUFEq7k/tVRSHG/0MJXF3E66
	uNHPxAc6wCWcesiYGgXaLoyzNzQsdBVGbP6lCEP1bhAMoG6H6A==
X-Google-Smtp-Source: ABdhPJx0Dy1wihzwIjS6NTaBFkTZMV1PUn9i/QJXPpb9mkJevKiXuJbdOVtGttrFB+jpiTG2G/PAN/gfkmqyAz6/w18=
X-Received: by 2002:a67:6bc6:: with SMTP id g189mr2608108vsc.30.1601384584664;
 Tue, 29 Sep 2020 06:03:04 -0700 (PDT)
MIME-Version: 1.0
References: <10274ebc-8857-8c51-55b0-f0a888ce8bf9@faresoftware.it>
 <CAGbd71RQrjf8vEfcoS9ZPAWXKCr20yGPesZT_bushNeqgkNX9w@mail.gmail.com>
 <7e203494-00c7-384c-d73e-551397701820@faresoftware.it> <CAGbd71RoTDco8Brc2qd=Vtv7=8H0CpAwy8u-or2fF5PbY06nRA@mail.gmail.com>
 <20200929125920.hlmibi2fst6ammzx@qschulz>
In-Reply-To: <20200929125920.hlmibi2fst6ammzx@qschulz>
From: "Laurent Gauthier" <laurent.gauthier@soccasys.com>
Date: Tue, 29 Sep 2020 15:02:26 +0200
Message-ID: <CAGbd71S4D6CMnkkbNpq7icguarN22TdX3hwa+C4aZAK7Vg1r+w@mail.gmail.com>
Subject: Re: [yocto] File collision: same path from 2 recipes
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: Mauro Ziliani <mauro@faresoftware.it>, Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000529f6105b0736723"

--000000000000529f6105b0736723
Content-Type: text/plain; charset="UTF-8"

Hehe, who needs a new command when you have already have "echo" :-)

On Tue, Sep 29, 2020 at 2:59 PM Quentin Schulz <
quentin.schulz@streamunlimited.com> wrote:

> On Tue, Sep 29, 2020 at 02:56:28PM +0200, Laurent Gauthier wrote:
> > I would guess so.
> >
> > Here is a way to figure out all the packages in which your file is
> > delivered (small trick that has proven quite useful for me to figure out
> > which recipe/package provides a specific file):
> >
> > 1. cd <your-build-directory>
> > 2. echo
> tmp/work/*/*/*/packages-split/*/etc/network/if-up,d/hostapd_restart
> >
> > This will show you which packages have the file
> > "/etc/network/if-up,d/hostapd_restart".
> >
> > If you just want to check which recipe installs it (in case it is
> installed
> > by the recipe, but not packaged):
> >
> > 1. cd <your-build-directory>
> > 2. echo tmp/work/*/*/*/package/etc/network/if-up,d/hostapd_restart
> >
>
> If available in krogoth,
> `oe-pkdata-util find-path /etc/network/if-up,d/hostapd_restart` does
> this exact thing :)
>
> Quentin
>
> > I hope this helps.
> >
> > Kind Regards, Laurent.
> >
> > PS: in some configurations of your build you might have to adjust the
> name
> > of the "tmp" directory.
> >
> >
> > On Tue, Sep 29, 2020 at 2:37 PM Mauro Ziliani <mauro@faresoftware.it>
> wrote:
> >
> > > Thanks for your help.
> > >
> > > I'm working with an old Krogoth.
> > >
> > > This checks is true even with Krogoth?
> > >
> > >
> > > MZ
> > > Il 29/09/20 14:17, Laurent Gauthier ha scritto:
> > >
> > > Hi Mauro,
> > >
> > > From my experience there should be an error reported during the image
> > > creation as long as the two *packages* that contain a file with the
> same
> > > name are BOTH installed in the root filesystem.
> > >
> > > If you don't receive an error I would suspect that for some reason the
> > > file is really only installed by one of the two packages.
> > >
> > > Another source of your issue is that there can be more than one package
> > > created by one recipe, and maybe you are not installing the package
> which
> > > contains the contentious file.
> > >
> > > Kind Regards, Laurent.
> > >
> > > On Tue, Sep 29, 2020 at 2:08 PM Mauro Ziliani <mauro@faresoftware.it>
> > > wrote:
> > >
> > >> Hi all.
> > >>
> > >> There is a QA to test if 2 recipes try to install a file with the same
> > >> path?
> > >>
> > >> In my BSP 2 recipes try install the file
> > >> ${D}/etc/network/if-up,d/hostapd_restart
> > >>
> > >>
> > >> I'd like receive an error from bitbale
> > >>
> > >>
> > >> Best regards,
> > >>
> > >>
> > >>     MZ
> > >>
> > >>
> > >>
> > >>
> > >>
> > >
> > > --
> > > Laurent Gauthier
> > > Embedded Linux Systems & Software
> > > Phone: +33 630 483 429
> > > http://soccasys.com
> > >
> > >
> >
> > --
> > Laurent Gauthier
> > Embedded Linux Systems & Software
> > Phone: +33 630 483 429
> > http://soccasys.com
>
> >
> > 
> >
>
>
> --
> StreamUnlimited Engineering GmbH
> High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria
> Fax: +43 1 667 20 02 4401
> quentin.schulz@streamunlimited.com, www.streamunlimited.com
>


-- 
Laurent Gauthier
Embedded Linux Systems & Software
Phone: +33 630 483 429
http://soccasys.com

--000000000000529f6105b0736723
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hehe, who needs a new command when you have already h=
ave &quot;echo&quot; :-)<br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 29, 2020 at 2:59 PM Quentin S=
chulz &lt;<a href=3D"mailto:quentin.schulz@streamunlimited.com">quentin.sch=
ulz@streamunlimited.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">On Tue, Sep 29, 2020 at 02:56:28PM +0200, Laurent Ga=
uthier wrote:<br>
&gt; I would guess so.<br>
&gt; <br>
&gt; Here is a way to figure out all the packages in which your file is<br=
>
&gt; delivered (small trick that has proven quite useful for me to figure =
out<br>
&gt; which recipe/package provides a specific file):<br>
&gt; <br>
&gt; 1. cd &lt;your-build-directory&gt;<br>
&gt; 2. echo tmp/work/*/*/*/packages-split/*/etc/network/if-up,d/hostapd_r=
estart<br>
&gt; <br>
&gt; This will show you which packages have the file<br>
&gt; &quot;/etc/network/if-up,d/hostapd_restart&quot;.<br>
&gt; <br>
&gt; If you just want to check which recipe installs it (in case it is ins=
talled<br>
&gt; by the recipe, but not packaged):<br>
&gt; <br>
&gt; 1. cd &lt;your-build-directory&gt;<br>
&gt; 2. echo tmp/work/*/*/*/package/etc/network/if-up,d/hostapd_restart<br=
>
&gt; <br>
<br>
If available in krogoth,<br>
`oe-pkdata-util find-path /etc/network/if-up,d/hostapd_restart` does<br>
this exact thing :)<br>
<br>
Quentin<br>
<br>
&gt; I hope this helps.<br>
&gt; <br>
&gt; Kind Regards, Laurent.<br>
&gt; <br>
&gt; PS: in some configurations of your build you might have to adjust the=
 name<br>
&gt; of the &quot;tmp&quot; directory.<br>
&gt; <br>
&gt; <br>
&gt; On Tue, Sep 29, 2020 at 2:37 PM Mauro Ziliani &lt;<a href=3D"mailto:m=
auro@faresoftware.it" target=3D"_blank">mauro@faresoftware.it</a>&gt; wrote=
:<br>
&gt; <br>
&gt; &gt; Thanks for your help.<br>
&gt; &gt;<br>
&gt; &gt; I&#39;m working with an old Krogoth.<br>
&gt; &gt;<br>
&gt; &gt; This checks is true even with Krogoth?<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; MZ<br>
&gt; &gt; Il 29/09/20 14:17, Laurent Gauthier ha scritto:<br>
&gt; &gt;<br>
&gt; &gt; Hi Mauro,<br>
&gt; &gt;<br>
&gt; &gt; From my experience there should be an error reported during the =
image<br>
&gt; &gt; creation as long as the two *packages* that contain a file with =
the same<br>
&gt; &gt; name are BOTH installed in the root filesystem.<br>
&gt; &gt;<br>
&gt; &gt; If you don&#39;t receive an error I would suspect that for some =
reason the<br>
&gt; &gt; file is really only installed by one of the two packages.<br>
&gt; &gt;<br>
&gt; &gt; Another source of your issue is that there can be more than one =
package<br>
&gt; &gt; created by one recipe, and maybe you are not installing the pack=
age which<br>
&gt; &gt; contains the contentious file.<br>
&gt; &gt;<br>
&gt; &gt; Kind Regards, Laurent.<br>
&gt; &gt;<br>
&gt; &gt; On Tue, Sep 29, 2020 at 2:08 PM Mauro Ziliani &lt;<a href=3D"mai=
lto:mauro@faresoftware.it" target=3D"_blank">mauro@faresoftware.it</a>&gt;<=
br>
&gt; &gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt;&gt; Hi all.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; There is a QA to test if 2 recipes try to install a file wit=
h the same<br>
&gt; &gt;&gt; path?<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; In my BSP 2 recipes try install the file<br>
&gt; &gt;&gt; ${D}/etc/network/if-up,d/hostapd_restart<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; I&#39;d like receive an error from bitbale<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Best regards,<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0MZ<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; <br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; Laurent Gauthier<br>
&gt; &gt; Embedded Linux Systems &amp; Software<br>
&gt; &gt; Phone: +33 630 483 429<br>
&gt; &gt; <a href=3D"http://soccasys.com" rel=3D"noreferrer" target=3D"_bl=
ank">http://soccasys.com</a><br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; <br>
&gt; -- <br>
&gt; Laurent Gauthier<br>
&gt; Embedded Linux Systems &amp; Software<br>
&gt; Phone: +33 630 483 429<br>
&gt; <a href=3D"http://soccasys.com" rel=3D"noreferrer" target=3D"_blank">=
http://soccasys.com</a><br>
<br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
<br>
-- <br>
StreamUnlimited Engineering GmbH<br>
High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria<br=
>
Fax: +43 1 667 20 02 4401<br>
<a href=3D"mailto:quentin.schulz@streamunlimited.com" target=3D"_blank">qu=
entin.schulz@streamunlimited.com</a>, <a href=3D"http://www.streamunlimited=
.com" rel=3D"noreferrer" target=3D"_blank">www.streamunlimited.com</a><br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature">Laurent Gauthier<br>Embedded Linux Systems &amp; Software<=
br>Phone: +33 630 483 429<br><a href=3D"http://soccasys.com" target=3D"_bla=
nk">http://soccasys.com</a></div>

--000000000000529f6105b0736723--
