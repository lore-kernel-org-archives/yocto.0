Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web12.809.1623167539672743501
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 08:52:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ei7QuH/j;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.170, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lj1-f170.google.com with SMTP id r16so8470912ljk.9
        for <yocto@lists.yoctoproject.org>; Tue, 08 Jun 2021 08:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=raSmrKB9rd+IGKVJqj+lX9FJkJud/PzrFqnRpQZHZjQ=;
        b=ei7QuH/jML/C4u8m7VZlYBL8h3j8q7Hc2lf1mHdFU47AYdfYjkMd+W/lAuCftUKjX1
         sjqxiki5dAdgGF6nOPdwD4eWRvPu/MDmaeAvho6His4cEnL9S+20AiTKlRAhPSYYBduO
         FKTU08hu7cgdeAmCqfux+vf8o5x++oSCSoclA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=raSmrKB9rd+IGKVJqj+lX9FJkJud/PzrFqnRpQZHZjQ=;
        b=Tz4FlGOj/gzkdCA4U8Am4rhL8Z1lTgvJCb50Oq6gP/DKvcgENx8K1qfhXQwHZt+Xgt
         uF7G8YFsrfKnYRqlhkcgZ1WxD3LeiSESGILZ7QBr3i6nsti9vbnOcBWr0s+4dajHGPej
         JydRvm89uM1vr0i1h0DNQpLQjjWaSDDAWOam4sF9FBZv5NABmOR0ZiTc8j1nwuNbIM1/
         ZDJOQ8JYzbk4u9dECWwjNV+F0D/gsdTSXBVof1Urh9rNXAe3MlHCrmdBimm94BtYKQqj
         PMa6cG5m7kua5NKuOMqilynD0W55cDV2ZQzVWLstzJdwIti9onaw2F4tm7Dc9dqTBDVS
         gjMQ==
X-Gm-Message-State: AOAM5332P3zcnlzFONlw53x82j3TfDsCI5L36cahm55bwBerlhdhCnlN
	7EkvYj0hg4hsCVekuzBEV4lyLIvfp2O0REvzHygMKA==
X-Google-Smtp-Source: ABdhPJzy+cmlKESh7lQYPDDPIFlWd4TwAvRH56XVvS4OEE5ZCiROSgSmEUmgV01c/fiF8sw7CzXDqG6tV/MzH5rEZ6U=
X-Received: by 2002:a2e:bf21:: with SMTP id c33mr19100867ljr.28.1623167537526;
 Tue, 08 Jun 2021 08:52:17 -0700 (PDT)
MIME-Version: 1.0
References: <BYAPR11MB33017216B14BA159AF5601E588269@BYAPR11MB3301.namprd11.prod.outlook.com>
 <8e289c9f6578427d85c56618de3a130d@XBOX03.axis.com> <f75c8b912e10f2383159c9edac3de2a8f84cee70.camel@linuxfoundation.org>
 <11f3b266de0a4120a96f32977064a7c1@XBOX03.axis.com>
In-Reply-To: <11f3b266de0a4120a96f32977064a7c1@XBOX03.axis.com>
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
Date: Tue, 8 Jun 2021 08:52:06 -0700
Message-ID: <CADfgfobLQv+3JGb1NOmvN3kgF7+Y6EwHoAhSOcqMipkBsyVhug@mail.gmail.com>
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 3.3.1 (hardknott-25.0.1) is Released
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Vineela <vineela.tummalapalli@intel.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007c51d005c443248a"

--0000000000007c51d005c443248a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

After discussing it we've gone ahead and deleted the hardknott-25.0.0 tag
then added hardknott-3.3, and hardknott-3.3.1 tags.

From now on any release before 3.3 will have the poky version number tags
and from the 3.3 release forward we will use branchname-yocto-version tags.

On Tue, May 25, 2021 at 6:12 AM Peter Kjellerstedt <
peter.kjellerstedt@axis.com> wrote:

> > -----Original Message-----
> > From: Richard Purdie <richard.purdie@linuxfoundation.org>
> > Sent: den 25 maj 2021 14:44
> > To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>; Vineela
> > <vineela.tummalapalli@intel.com>
> > Cc: 'yocto@lists.yoctoproject.org' <yocto@lists.yoctoproject.org>;
> Michael
> > Halstead <mhalstead@linuxfoundation.org>
> > Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 3.3.1
> (hardknott-25.0.1)
> > is Released
> >
> > On Tue, 2021-05-25 at 12:13 +0000, Peter Kjellerstedt wrote:
> > > It seems the =E2=80=9Dhardknott-25.0.1=E2=80=9D tag is missing for me=
ta-gplv2.
> > > The =E2=80=9Cyoccto-3.3.1=E2=80=9D tag is present.
> >
> > This was deliberate since we've been trying to step away from the
> > "poky" version numbers, I'm not sure they add much to anything.
> >
> > Is there a particular reason you were looking for those?
>
> Well, those are the ones we have traditionally been using. The benefit I
> see
> with them are that they contain the release name. For me as a user, it is
> much
> easier to see and refer to "hardknott-something.1" than "yocto-3.3.1".
> I.e.,
> I don't have a relation to the "25.0" or "3.3" part, but to the release
> name.
> We typically only talk about "hardknott" or "the second hardknott
> release".
>
> That said, a tag such as "yocto-hardknott-3.3.1" or "hardknott-3.3.1"
> would
> fulfill the same properties as "hardknott-25.0.1", though the one without
> the "yocto-" prefix is more suitable when tab completing, e.g.,
> `git log hardknott-3.3..hardknott-3.3.1`, so that is the one I would use
> if
> it was up to me. ;)
>
> > Cheers,
> >
> > Richard
>
> //Peter
>
>

--=20
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--0000000000007c51d005c443248a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">After discussing it we&#39;ve gone ahead and deleted the h=
ardknott-25.0.0 tag then added=C2=A0hardknott-3.3, and=C2=A0hardknott-3.3.1=
 tags.=C2=A0<div><br></div><div>From now on any release before 3.3 will hav=
e the poky version number tags and from the 3.3 release forward we will use=
 branchname-yocto-version=C2=A0tags.</div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 25, 2021 at 6:12 AM P=
eter Kjellerstedt &lt;<a href=3D"mailto:peter.kjellerstedt@axis.com">peter.=
kjellerstedt@axis.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">&gt; -----Original Message-----<br>
&gt; From: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundat=
ion.org" target=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt;<br>
&gt; Sent: den 25 maj 2021 14:44<br>
&gt; To: Peter Kjellerstedt &lt;<a href=3D"mailto:peter.kjellerstedt@axis.c=
om" target=3D"_blank">peter.kjellerstedt@axis.com</a>&gt;; Vineela<br>
&gt; &lt;<a href=3D"mailto:vineela.tummalapalli@intel.com" target=3D"_blank=
">vineela.tummalapalli@intel.com</a>&gt;<br>
&gt; Cc: &#39;<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_bl=
ank">yocto@lists.yoctoproject.org</a>&#39; &lt;<a href=3D"mailto:yocto@list=
s.yoctoproject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;;=
 Michael<br>
&gt; Halstead &lt;<a href=3D"mailto:mhalstead@linuxfoundation.org" target=
=3D"_blank">mhalstead@linuxfoundation.org</a>&gt;<br>
&gt; Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 3.3.1 (hardknott-25.=
0.1)<br>
&gt; is Released<br>
&gt; <br>
&gt; On Tue, 2021-05-25 at 12:13 +0000, Peter Kjellerstedt wrote:<br>
&gt; &gt; It seems the =E2=80=9Dhardknott-25.0.1=E2=80=9D tag is missing fo=
r meta-gplv2.<br>
&gt; &gt; The =E2=80=9Cyoccto-3.3.1=E2=80=9D tag is present.<br>
&gt; <br>
&gt; This was deliberate since we&#39;ve been trying to step away from the<=
br>
&gt; &quot;poky&quot; version numbers, I&#39;m not sure they add much to an=
ything.<br>
&gt; <br>
&gt; Is there a particular reason you were looking for those?<br>
<br>
Well, those are the ones we have traditionally been using. The benefit I se=
e <br>
with them are that they contain the release name. For me as a user, it is m=
uch <br>
easier to see and refer to &quot;hardknott-something.1&quot; than &quot;yoc=
to-3.3.1&quot;. I.e., <br>
I don&#39;t have a relation to the &quot;25.0&quot; or &quot;3.3&quot; part=
, but to the release name. <br>
We typically only talk about &quot;hardknott&quot; or &quot;the second hard=
knott release&quot;. <br>
<br>
That said, a tag such as &quot;yocto-hardknott-3.3.1&quot; or &quot;hardkno=
tt-3.3.1&quot; would <br>
fulfill the same properties as &quot;hardknott-25.0.1&quot;, though the one=
 without <br>
the &quot;yocto-&quot; prefix is more suitable when tab completing, e.g., <=
br>
`git log hardknott-3.3..hardknott-3.3.1`, so that is the one I would use if=
 <br>
it was up to me. ;)<br>
<br>
&gt; Cheers,<br>
&gt; <br>
&gt; Richard<br>
<br>
//Peter<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Michael Halstead<div>Linux Foun=
dation / Yocto Project</div><div>Systems Operations Engineer</div></div></d=
iv>

--0000000000007c51d005c443248a--
