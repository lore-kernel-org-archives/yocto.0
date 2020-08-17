Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com [209.85.217.66])
 by mx.groups.io with SMTP id smtpd.web11.52719.1597696969678627945
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Aug 2020 13:42:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JvwaWS8I;
 spf=pass (domain: gmail.com, ip: 209.85.217.66, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f66.google.com with SMTP id n4so8964181vsl.10
        for <yocto@lists.yoctoproject.org>; Mon, 17 Aug 2020 13:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4RB5sJINaV9v250Q7/9fSyV0dZoWjD46Pu5PW012ZCw=;
        b=JvwaWS8IVWGXPvlWcFkg/NWUSn9/td/6ZuTgBCAGNyR7ntvvgpB4mkDMgmN1TEOsu1
         1dDMIZhAtW44y3SQHnD4gvSoPfESq0K6pPj1eEHdIngzDBphK3bcDDC1oiOO29OK16rE
         Qd3Z8XQF+iCeftI2841pRdRwPlaEukiKhlX7WbRUL8YxqapKvS3IBGzuAOHInFo/rH97
         ch26d0I1ACiQ2RMmIKbK30dand5qneUkFD7AuIdggTQ6B/rZXWqUFAyh4TbRmvKlFism
         M0uUOJLl1GXUd5HPu7aA/5DutsKtSsSWTzpJgU9nirRp6GDTLYY4igDagaOgKfNTx57b
         TqOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4RB5sJINaV9v250Q7/9fSyV0dZoWjD46Pu5PW012ZCw=;
        b=XNYWYhTPP7jLx+rwihC112e1l5rdcqFWCRcsHMARxamIAy2E6Qx0TrmMTDSVktlVPT
         ZpxjTDlRax72g6k/0PJ4L+MyMWt5ju7VasfGPoQyuJJmZCXiJi2DPf3KTKPcEStl5ml2
         AEB1hROA3oMDYplqq5J0Fo3aBwJ+IIvSPNeL5uyIsY9qFJqojb5+FEzjudqGeorkoX/V
         NLXqMsWFwTYlj+nbwbi1Jpr7cDCidoxPdgTpQ83fk+PaT024K/ihj2vDMiU/Ksp7KDc4
         UpPqAaMSfN7iE1TSSxSh3PKOcFdAjADX8ZZ+fBgw2vyeVoNIwsojkjX/zb2h9utezbnY
         DvXQ==
X-Gm-Message-State: AOAM532gsukATJJgzcGZL3JVb7ite+DCnsscveyxl0qUqq7X8YOONr66
	YTdh83WQMRFmTEZcHwoElGoQHlCIInDbPczXUdA=
X-Google-Smtp-Source: ABdhPJyhELHG+URvWzT2u+CMnwuH1JUxupbS2/wzedep9GFm0UIAUtJ3cYsh4j9zfE/+84javrlj5hsnpXH+wNn/HBY=
X-Received: by 2002:a67:66c1:: with SMTP id a184mr9896695vsc.23.1597696968835;
 Mon, 17 Aug 2020 13:42:48 -0700 (PDT)
MIME-Version: 1.0
References: <703f57d8-5647-41e6-1fa4-4cc744f1142c@comcast.net>
 <CANNYZj_e+_H1+MKGDGeDnz92GS8JkvTvCLwFw=rQRMC+iFBpGg@mail.gmail.com> <d2c4a71f-315e-77c0-93b4-36aa216a4d3e@comcast.net>
In-Reply-To: <d2c4a71f-315e-77c0-93b4-36aa216a4d3e@comcast.net>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 17 Aug 2020 22:42:36 +0200
Message-ID: <CANNYZj-mV8i7etSA7ny_Qn9Ajy_suyEXTUEwP+pB-F9RZiKyHw@mail.gmail.com>
Subject: Re: [yocto] pkg-config dependencies?
To: Rob Prowel <rprowel@comcast.net>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000049466805ad18d024"

--00000000000049466805ad18d024
Content-Type: text/plain; charset="UTF-8"

DEPENDS adds the dependencies into $WORKDIR/recipe-sysroot, and native
pkg-config looks there for .pc files in that directory.

Alex

On Mon, 17 Aug 2020 at 21:31, Rob Prowel <rprowel@comcast.net> wrote:

> On 2020-08-17 14:25, Alexander Kanavin wrote:
> > You need to add DEPENDS = "libmnl" maybe?
> >
> > RDEPENDS is needed for runtime things like script interpreters or
> > supplementary data; plain library dependencies are build-time.
>
> Tried both: DEPENDS and RDEPENDS.  libmnl.pc does exist in another tree
> but not visible to the ipset and not sure what environment var is proper
> to bring it into the build for ipset.bb
>
> There is a temp/sysroots-components/... tree that contains the .pc file,
> but it's not visible to the ipset.bb recipe.  How do I make it visible
> in a way that's not a hack?
>
> tmp/sysroots-components/cortexa9hf-neon/libmnl/usr/lib/pkgconfig/libmnl.pc
>
> is not visible under
>
> ${WORKDIR}
>
>
> > On Mon, 17 Aug 2020 at 19:14, Rob Prowel <rprowel@comcast.net> wrote:
> >
> >> I'm trying to add the ipset utility to my arm build so that I can group
> >> IP/ports for use in tc and netfilter.  I was able to update the vendor
> >> supplied iptools2 recipe to install tc and iptables, but ipset is a
> >> fresh recipe, not included in another existing layer.
> >>
> >> I'm adding the following in its bb file:
> >>
> >> # -----------------------------------------------------------------
> >> SRC_URI =  "file://ipset-7.6.tar.bz2"
> >> SRC_URI[md5sum] = "3a6f5952fd1bcf0eefb9c7c087acbfc9"
> >>
> >>
> >> inherit pkgconfig
> >>
> >> S = "${WORKDIR}/ipset-7.6"
> >>
> >> RDEPENDS_${PN} += "libmnl"
> >
>

--00000000000049466805ad18d024
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>DEPENDS adds the dependencies into $WORKDIR/recipe-sy=
sroot, and native pkg-config looks there for .pc files in that directory.</=
div><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, 17 Aug 2020 at 21:31, Rob Pro=
wel &lt;<a href=3D"mailto:rprowel@comcast.net">rprowel@comcast.net</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 2020-0=
8-17 14:25, Alexander Kanavin wrote:<br>
&gt; You need to add DEPENDS =3D &quot;libmnl&quot; maybe?<br>
&gt; <br>
&gt; RDEPENDS is needed for runtime things like script interpreters or<br>
&gt; supplementary data; plain library dependencies are build-time.<br>
<br>
Tried both: DEPENDS and RDEPENDS.=C2=A0 libmnl.pc does exist in another tre=
e <br>
but not visible to the ipset and not sure what environment var is proper <b=
r>
to bring it into the build for <a href=3D"http://ipset.bb" rel=3D"noreferre=
r" target=3D"_blank">ipset.bb</a><br>
<br>
There is a temp/sysroots-components/... tree that contains the .pc file, <b=
r>
but it&#39;s not visible to the <a href=3D"http://ipset.bb" rel=3D"noreferr=
er" target=3D"_blank">ipset.bb</a> recipe.=C2=A0 How do I make it visible <=
br>
in a way that&#39;s not a hack?<br>
<br>
tmp/sysroots-components/cortexa9hf-neon/libmnl/usr/lib/pkgconfig/libmnl.pc<=
br>
<br>
is not visible under<br>
<br>
${WORKDIR}<br>
<br>
<br>
&gt; On Mon, 17 Aug 2020 at 19:14, Rob Prowel &lt;<a href=3D"mailto:rprowel=
@comcast.net" target=3D"_blank">rprowel@comcast.net</a>&gt; wrote:<br>
&gt; <br>
&gt;&gt; I&#39;m trying to add the ipset utility to my arm build so that I =
can group<br>
&gt;&gt; IP/ports for use in tc and netfilter.=C2=A0 I was able to update t=
he vendor<br>
&gt;&gt; supplied iptools2 recipe to install tc and iptables, but ipset is =
a<br>
&gt;&gt; fresh recipe, not included in another existing layer.<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m adding the following in its bb file:<br>
&gt;&gt;<br>
&gt;&gt; # ----------------------------------------------------------------=
-<br>
&gt;&gt; SRC_URI =3D=C2=A0 &quot;file://ipset-7.6.tar.bz2&quot;<br>
&gt;&gt; SRC_URI[md5sum] =3D &quot;3a6f5952fd1bcf0eefb9c7c087acbfc9&quot;<b=
r>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; inherit pkgconfig<br>
&gt;&gt;<br>
&gt;&gt; S =3D &quot;${WORKDIR}/ipset-7.6&quot;<br>
&gt;&gt;<br>
&gt;&gt; RDEPENDS_${PN} +=3D &quot;libmnl&quot;<br>
&gt;<br>
</blockquote></div>

--00000000000049466805ad18d024--
