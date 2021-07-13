Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web11.197.1626149451690377148
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jul 2021 21:10:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qpV56JLm;
 spf=pass (domain: gmail.com, ip: 209.85.210.180, mailfrom: chuckwolber@gmail.com)
Received: by mail-pf1-f180.google.com with SMTP id a127so18360717pfa.10
        for <yocto@lists.yoctoproject.org>; Mon, 12 Jul 2021 21:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Fm6OuCBTxjLxkpwrQ1zqmSA0qKG8MKc8IdXarfYGJfk=;
        b=qpV56JLmKYjzUC6x6A7ls9/9hKf/QBalR6837/vEdwICLwaNSA9dnE0remNrNo6XUA
         20OK/23a4+rJHyPa4ischi8JpDbulGwFRM8FVoMP23ImQM08HB8j08MOisHnXkJ4MQjY
         nF+OnkXcE6nq1N2Fe2rT+Hkp3GBQ2C8MpELWWmfO+6qFvkSrw6dVR4l85+Hx+4M69TZU
         i+FuB03W7fokOLP09ThZRkpinSqYBdr6NhscGOIxrd3UMg9G7zEPJgffC31j9q/195uQ
         Fwphv6gCbp5GmebkuWxJcamk171wBootYkxUBS0Ztt6Wl6oW8BApN6b2cePesdFayU3v
         r2sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Fm6OuCBTxjLxkpwrQ1zqmSA0qKG8MKc8IdXarfYGJfk=;
        b=n/REBFbyZ+j1EOGQt5XMvvVvfAHORSGCT9aVtPEQUbXuHyMzYvMH0vfWor13Lohqul
         BDN0/1Ii3XAyKj/jixBvEAOQZeRaSU9m1v3L99KfTn8rBn/5+Vp14/f0RLejYnC/Mv15
         76CFWaBUgDYcRSOlYxhha/dovB6iMwFPsjAGZcOaVyj73iyHVU6DE+YVmfgnv/7iSl1D
         4V4wOnZwnHBhkH2IxjrSk27306FaX17WGS/SQslmlGMmQgNt/CSdeLuAKsM9mN500Gj4
         g6gHhRUkLeeXvG5HL78RfTPs+G0byLH/YccD/jU3yq3ptwkCGhrZgQ1FIxtqcF8tClOF
         F5Iw==
X-Gm-Message-State: AOAM5305tztQeC/3vIO99D2xq/wBtX3iaa6HJsMMpH8eg78ekH4qx/HK
	iFsNZDIYnLlM4dYDQqzmfEFvZKSA4+oR4b3Kh3Q=
X-Google-Smtp-Source: ABdhPJxP9SJLRfRsyLcAS7Ti/x6uGNRfcxJwOFQx5PUJ/4GySCmlJWwcqefvf/0ffm+DV57Qta+yJ91FOf3r/j9YBu0=
X-Received: by 2002:a63:fc02:: with SMTP id j2mr2431844pgi.235.1626149451143;
 Mon, 12 Jul 2021 21:10:51 -0700 (PDT)
MIME-Version: 1.0
References: <nspX.1626147640474271051.I1hn@lists.yoctoproject.org>
In-Reply-To: <nspX.1626147640474271051.I1hn@lists.yoctoproject.org>
From: "Chuck Wolber" <chuckwolber@gmail.com>
Date: Mon, 12 Jul 2021 21:10:40 -0700
Message-ID: <CAB=6tBSuPtobccea9_R9rXrgpZ_+dv966P-ihkVgDumK=-cVfA@mail.gmail.com>
Subject: Re: [yocto] #yocto Preferred development workflow
To: ivin.lim@aei.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000631c6305c6f96c1c"

--000000000000631c6305c6f96c1c
Content-Type: text/plain; charset="UTF-8"

You left a few details out about how the configuration files are managed.
Ideally you could just make bitbake recipes for the config files
themselves. This way you can create an image recipe for each project and
use the IMAGE_INSTALL variable to append whatever configs and modules you
want on a per-project basis.

..Ch:W..

On Mon, Jul 12, 2021 at 8:40 PM ivin.lim via lists.yoctoproject.org
<ivin.lim=aei.com@lists.yoctoproject.org> wrote:

> Hi everyone,
>
> I'm curious on a good approach when dealing with multiple projects
>
> I've just started out  yocto and have already  created our own meta-layer
> which contains our modules. Now these modules would sometimes have config
> files and this could vary when each project that we have would use these
> recipes. I'm thinking of a way to control this. And I don't think having
> one branch per project is a good style. Right now the best way I can think
> of is creating seperate "project layers" (ex. meta-project1, meta-project2)
> and from there create those .bbappends which would point to the
> project-specific conf files.
>
> But I was wondering if there is a better way of handling it. Thanks.
>
> Cheers.
> 
>
>

-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--000000000000631c6305c6f96c1c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You left a few details out about how the configuratio=
n files are managed. Ideally you could just make bitbake recipes for the co=
nfig files themselves. This way you can create an image recipe for each pro=
ject and use the IMAGE_INSTALL variable to append whatever configs and modu=
les you want on a per-project basis.</div><div><br></div><div>..Ch:W..<br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Mon, Jul 12, 2021 at 8:40 PM ivin.lim via <a href=3D"http://lists.y=
octoproject.org">lists.yoctoproject.org</a> &lt;ivin.lim=3D<a href=3D"mailt=
o:aei.com@lists.yoctoproject.org">aei.com@lists.yoctoproject.org</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi everyone=
,<br><br>I&#39;m curious on a good approach when dealing with multiple proj=
ects<br><br>I&#39;ve just started out=C2=A0 yocto and have already=C2=A0 cr=
eated our own meta-layer which contains our modules. Now these modules woul=
d sometimes have config files and this could vary when each project that we=
 have would use these recipes. I&#39;m thinking of a way to control this. A=
nd I don&#39;t think having one branch per project is a good style. Right n=
ow the best way I can think of is creating seperate &quot;project layers&qu=
ot; (ex. meta-project1, meta-project2) and from there create those .bbappen=
ds which would point to the project-specific conf files.=C2=A0<br><br>But I=
 was wondering if there is a better way of handling it. Thanks.<br><br>Chee=
rs.
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature"><div dir=3D"ltr"><div><b><span style=3D"font-family:monosp=
ace">&quot;Perfection must be reached by degrees; she requires the slow han=
d of time.&quot; - Voltaire</span></b></div></div></div>

--000000000000631c6305c6f96c1c--
