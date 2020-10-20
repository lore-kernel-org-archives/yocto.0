Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com [209.85.215.194])
 by mx.groups.io with SMTP id smtpd.web12.526.1603214983216607021
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Oct 2020 10:29:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FI3gVl+P;
 spf=pass (domain: gmail.com, ip: 209.85.215.194, mailfrom: chuckwolber@gmail.com)
Received: by mail-pg1-f194.google.com with SMTP id r10so1487124pgb.10
        for <yocto@lists.yoctoproject.org>; Tue, 20 Oct 2020 10:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Nood/ucYoZCM6mKLwkWHltbkSz9Wq2WVfUa1AfKI4Xc=;
        b=FI3gVl+PneSoTMC0JcCEWTU/0GN9XR1tY8yowq/8q93m963SePEjMVcu81UHgt1RIu
         XIG+DFXrfka5O17zihMQbLPA7mV983jxm43bEKqLiQfMMX+VoAaUlpEQF6OYyAWP8Zm0
         82dLxy/+E/6Glh4zy2UZlxpUKe49g+tR4VTn0FeadbMXBF6qa/yopX2hGznoJOabZU4t
         NcuhKQXjGzFsU5IjlJ5PrzalsyiWFhufJHWEJwg9LkPwTT4UHoYzlWfdzmy/r2KZXrmg
         LNE20E3plXyPg30+KGhzeBb56ExFYu5U+ZSuFTwWjd6jqLVqgYm3aL9Za/HTjiaJoG+b
         hMYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Nood/ucYoZCM6mKLwkWHltbkSz9Wq2WVfUa1AfKI4Xc=;
        b=tOkfVviG+oEA+ajHEfRa6Mu1hkMqAYQeFCIFmfDyodnEeQ9eKkeYaSLMIMrtGlspf0
         mb+oURCcZEg46Bf4I7p78LSjS7bKSC0OD6Pl2V4ZPUnwc+vl0j9xG8gdwvmXot5GnBgM
         nS4WRS8XGFzEkmAFARafVuc4cd0Cy6vGnEKV3WVzJ8I1vHc2mB06qr5JA7Z48HT88BB2
         e62hy0u+5P1uHpcz96dF2bAI1Ln6EaIehCdE8oZghE0I9rG/Ppf9XAmSZ6As1zItRjav
         hgv6Eyu41s1myIybfxwtDKRhQuncK30VfW2Gv+tLEVvlJxdHtyxaMXEuqH1imr19bR8v
         aVjw==
X-Gm-Message-State: AOAM531tBplO8m2vQusnu92sCNEKToJmBuQ47jKkOakxizf9GmhmBMJL
	KvohjDvZCjN5bSWnCMdYKw1HPbBP9qnh0wQuBmWG/brHmsl8NQ==
X-Google-Smtp-Source: ABdhPJzb6sxG3vEgw0a6YfFFlyxEXykr8AlMtsy0eMldi44VnthNfHxx3bAJEc5HUdiDZ+udlvgKRMzTEsF8PAOz4S8=
X-Received: by 2002:a63:6c6:: with SMTP id 189mr3541229pgg.133.1603214982382;
 Tue, 20 Oct 2020 10:29:42 -0700 (PDT)
MIME-Version: 1.0
References: <20201019090639.Horde.Tqhv0ILpUhAkZNsSAVutZ0r@crashcourse.ca> <20201019131220.4g37cxuoiu23p35g@qschulz>
In-Reply-To: <20201019131220.4g37cxuoiu23p35g@qschulz>
From: "Chuck Wolber" <chuckwolber@gmail.com>
Date: Tue, 20 Oct 2020 10:29:31 -0700
Message-ID: <CAB=6tBSRhjUhELKQPW9GVUUU0FsPu4yjhr+ZLGLFpV9Uju0yGA@mail.gmail.com>
Subject: Re: [yocto] Using RDEPENDS in bbappend files to install additional packages?
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008608cc05b21d9323"

--0000000000008608cc05b21d9323
Content-Type: text/plain; charset="UTF-8"

Apologies for the marginally related reply, but the provided example
triggered a reminder of a best practice we started doing that had some
significant maintainability benefits.

Instead of this pattern:

RDEPENDS_${PN} += " \
         lighttpd-module-alias \
         lighttpd-module-auth \
         lighttpd-module-cgi \
         lighttpd-module-compress \
         lighttpd-module-evasive \
         lighttpd-module-evhost \


We found that this pattern made it significantly easier to manage recipes,
as well as use common command line tools like grep/sed/awk, without having
to deal with the complexities of multi-line processing. It also helped make
git commits and patches much more focused and readable.

RDEPENDS_${PN} += " lighttpd-module-alias"
RDEPENDS_${PN} += " lighttpd-module-auth"
RDEPENDS_${PN} += " lighttpd-module-cgi"
RDEPENDS_${PN} += " lighttpd-module-compress"
RDEPENDS_${PN} += " lighttpd-module-evasive"
RDEPENDS_${PN} += " lighttpd-module-evhost"

..Ch:W..


On Mon, Oct 19, 2020 at 6:12 AM Quentin Schulz <
quentin.schulz@streamunlimited.com> wrote:

> Hi Robert,
>
> On Mon, Oct 19, 2020 at 09:06:39AM -0400, Robert P. J. Day wrote:
> > Another question regarding recipe/coding style (based on actual
> > examples I run across in existing code bases).
> >
> > In one vendor's layer, in file "lighttpd_1.4.%.bbappend", I read:
> >
> >   RDEPENDS_${PN} += " \
> >         lighttpd-module-alias \
> >         lighttpd-module-auth \
> >         lighttpd-module-cgi \
> >         lighttpd-module-compress \
> >         lighttpd-module-evasive \
> >         lighttpd-module-evhost \
> >         ... sizable snip of many ore modules ...
> >
> > There's little question that this is being used to incorporate a
> > number of optional modules into the final image, but I'm assuming
> > that this is really not the recommended way to do it.
> >
> > The YP reference manual defines RDEPENDS as identifying "other
> > packages that must be installed in order for the package to function
> > correctly," which suggests that it's the base recipe that should
> > define actual runtime dependencies.
> >
> > I would have thought that the natural way to do the above would
> > be to either use IMAGE_INSTALL_append or (my preference) define
> > a packagegroup that includes all those packages, then simply
> > include the packagegroup.
> >
> > In short, am I reasonable in assuming that bbappend files should
> > not (ab)use RDEPENDS in the above way?
> >
>
> I'd say they either should be added to IMAGE_INSTALL one by one, or
> being put into a packagegroup or even use RRECOMMENDS instead of
> RDEPENDS. To me, it feels wrong too, if it's really not a need, they
> should not be in RDEPENDS.
>
> Quentin
>
> 
>
>

-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--0000000000008608cc05b21d9323
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Apologies for the marginally related reply, but the p=
rovided example triggered a reminder of a best practice we started doing th=
at had some significant maintainability benefits.</div><div><br></div><div>=
Instead of this pattern:</div><div><br></div><div>RDEPENDS_${PN} +=3D &quot=
; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lighttpd-module-alias \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lighttpd-module-auth \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lighttpd-module-cgi \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lighttpd-module-compress \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lighttpd-module-evasive \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lighttpd-module-evhost \</div><div><br><=
/div><div><br></div><div>We found that this pattern made it significantly e=
asier to manage recipes, as well as use common command line tools like grep=
/sed/awk, without having to deal with the complexities of multi-line proces=
sing. It also helped make git commits and patches much more focused and rea=
dable.</div><div><br></div><div>RDEPENDS_${PN} +=3D &quot; lighttpd-module-=
alias&quot;<br>RDEPENDS_${PN} +=3D &quot; lighttpd-module-auth&quot;<br>
RDEPENDS_${PN} +=3D &quot;  lighttpd-module-cgi&quot;<br>
RDEPENDS_${PN} +=3D &quot; lighttpd-module-compress&quot;<br>
RDEPENDS_${PN} +=3D &quot; lighttpd-module-evasive&quot;<br>
RDEPENDS_${PN} +=3D &quot;  lighttpd-module-evhost&quot;<br></div><div><br=
></div>..Ch:W..<br><div><div><br></div></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 19, 2020 at 6:12 A=
M Quentin Schulz &lt;<a href=3D"mailto:quentin.schulz@streamunlimited.com">=
quentin.schulz@streamunlimited.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">Hi Robert,<br>
<br>
On Mon, Oct 19, 2020 at 09:06:39AM -0400, Robert P. J. Day wrote:<br>
&gt; Another question regarding recipe/coding style (based on actual<br>
&gt; examples I run across in existing code bases).<br>
&gt; <br>
&gt; In one vendor&#39;s layer, in file &quot;lighttpd_1.4.%.bbappend&quot=
;, I read:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0RDEPENDS_${PN} +=3D &quot; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lighttpd-module-alias \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lighttpd-module-auth \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lighttpd-module-cgi \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lighttpd-module-compress \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lighttpd-module-evasive \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lighttpd-module-evhost \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0... sizable snip of many ore modules=
 ...<br>
&gt; <br>
&gt; There&#39;s little question that this is being used to incorporate a<=
br>
&gt; number of optional modules into the final image, but I&#39;m assuming=
<br>
&gt; that this is really not the recommended way to do it.<br>
&gt; <br>
&gt; The YP reference manual defines RDEPENDS as identifying &quot;other<b=
r>
&gt; packages that must be installed in order for the package to function<=
br>
&gt; correctly,&quot; which suggests that it&#39;s the base recipe that sh=
ould<br>
&gt; define actual runtime dependencies.<br>
&gt; <br>
&gt; I would have thought that the natural way to do the above would<br>
&gt; be to either use IMAGE_INSTALL_append or (my preference) define<br>
&gt; a packagegroup that includes all those packages, then simply<br>
&gt; include the packagegroup.<br>
&gt; <br>
&gt; In short, am I reasonable in assuming that bbappend files should<br>
&gt; not (ab)use RDEPENDS in the above way?<br>
&gt; <br>
<br>
I&#39;d say they either should be added to IMAGE_INSTALL one by one, or<br=
>
being put into a packagegroup or even use RRECOMMENDS instead of<br>
RDEPENDS. To me, it feels wrong too, if it&#39;s really not a need, they<b=
r>
should not be in RDEPENDS.<br>
<br>
Quentin<br>
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature"><div dir=3D"ltr"><div><b><span style=3D"font-family:monosp=
ace">&quot;Perfection must be reached by degrees; she requires the slow han=
d of time.&quot; - Voltaire</span></b></div></div></div>

--0000000000008608cc05b21d9323--
