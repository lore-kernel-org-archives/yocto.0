Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
 by mx.groups.io with SMTP id smtpd.web09.19712.1618158011065589294
 for <yocto@lists.yoctoproject.org>;
 Sun, 11 Apr 2021 09:20:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qGP99fTa;
 spf=pass (domain: gmail.com, ip: 209.85.217.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f41.google.com with SMTP id t17so904063vsq.12
        for <yocto@lists.yoctoproject.org>; Sun, 11 Apr 2021 09:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8PJPpuODP6IYsaChCh7tqt8vVKuIXGXLbPBQFUPRlJ4=;
        b=qGP99fTa1IPXpfc+RldkqZRqgL5NICjBLaRlkI6j76KPkpeAIMtctJOS43VPWfGQWx
         08i7WDU8anntlX0zRmEpdVQ0n2dvnBfWk5LQZB2yVVAZW8E2tswFbjV6qCbUPvbo1dQG
         Y83Dfx4NTYvkOl6whNfECm4s0/qPaxNlXZwsmjIqTV/SwmqP3298mQaXo1mTgO7cB79U
         Jzm/yWV7dKyh9N1oU7M84c3uuIyAxhz6GjR87LL07B8tfv15wPFPrjC96Gz1NsCVDe0M
         MXmeYY677FhOreVA6vOUBvRkwoPgba20ANzDBsn3pwFInvhaGxkM8YH74Rz8DDzYyeah
         4pgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8PJPpuODP6IYsaChCh7tqt8vVKuIXGXLbPBQFUPRlJ4=;
        b=YQ6MK06/1KH64y3yCdgI+vCdarmHxUMgnypmZ7bcSZTTEE5zHaIThZ8zvfuXl9G5rV
         ytudZKc2EC97Q+0wYFvj9nqeNn18uoixiaDGWyVlZJnHmJbZP8PsHUeFu396XaB6YgBt
         izUIXuoFA/LsD3yaHsrAhKtmIbId8byEHPy00OHMS09h7WKSaw4G+l+mcURavBA4pNBx
         gdU3JDwJNFfAwfdx0jM07TLATWZTuk4P+I9LyUwvfLvK1zG4zxecYo2p5YjA5pCcst1A
         oPlKd8JElvj2MLKdjF+69oPANCUyNIenU6Cf5AJ75owzMGFz0EfrqUC5OTd5xwCk9ut7
         RkiQ==
X-Gm-Message-State: AOAM532EpwhxfBTSLy9AtJiS+9yXmBEL0PY3zp9Hx+vUEsFLiPcuPYPU
	tzHGhT80w7TMUX/kzjyYjR+J9MeYoWnra3FgUNg=
X-Google-Smtp-Source: ABdhPJzPtzAjlv50G29jZN03q+hyzo2mK+PwN3ZLDzWS48QkULGhaYEIlQiLZkdfCcLEit5Q7JO/u0bpjgWvuYCT6UM=
X-Received: by 2002:a67:6485:: with SMTP id y127mr4873730vsb.51.1618158010150;
 Sun, 11 Apr 2021 09:20:10 -0700 (PDT)
MIME-Version: 1.0
References: <s4v495$bak$1@ciao.gmane.io> <CANNYZj_CsY0YL_bjtgf6O3A16FXe38-hLke4wEQR6mMz58SMVg@mail.gmail.com>
 <d8ab0231-717d-69e4-e6f9-739b9a08bd29@gmail.com> <CANNYZj_K-zpP-iTQMh5YA58dhBV88wLP-PouXS5KrHjybfsy-g@mail.gmail.com>
 <14207c27-7f5e-9a13-d8e8-28dbb0e7ea7b@gmail.com>
In-Reply-To: <14207c27-7f5e-9a13-d8e8-28dbb0e7ea7b@gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sun, 11 Apr 2021 18:19:58 +0200
Message-ID: <CANNYZj8MtLM5KdUqMsqhiVMHTnmj4VMoSf3XnCLvSns8grpmmA@mail.gmail.com>
Subject: Re: [yocto] bitbake controlling memory use
To: Gmane Admin <gley-yocto@m.gmane-mx.org>
Cc: yocto@lists.yoctoproject.org, 
	yocto-gJxINTE1zeQw8ufyyF7U+SST3g8Odh+X-XMD5yJDbdMReXY1tMh2IBg@public.gmane.org, 
	yocto-gJxINTE1zeQw8ufyyF7U+SST3g8Odh+X@public.gmane.org, 
	Ferry Toth <fntoth-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Type: multipart/alternative; boundary="00000000000062b53e05bfb4c556"

--00000000000062b53e05bfb4c556
Content-Type: text/plain; charset="UTF-8"

make already has -l option for limiting new instances if load average is
too high, so it's only natural to add a RAM limiter too.

  -l [N], --load-average[=N], --max-load[=N]
                              Don't start multiple jobs unless load is
below N.

In any case, patches welcome :)

Alex

On Sun, 11 Apr 2021 at 18:08, Gmane Admin <gley-yocto@m.gmane-mx.org> wrote:

> Op 11-04-2021 om 17:55 schreef Alexander Kanavin:
> > On Sun, 11 Apr 2021 at 17:49, Gmane Admin <gley-yocto@m.gmane-mx.org
> > <mailto:gley-yocto@m.gmane-mx.org>> wrote:
> >
> >     Yes, and make project doesn't care, because make is called with -j
> >     16 so
> >     that is what it does.
> >
> >     So here's my pitch: bitbake can stop processes spawned by make,
> because
> >     it knows that it started make on 4 recipies, each with -j 16. The
> >     individual makes don't know about each other.
> >
> >
> > And neither they should. They can simply abstain from spawning new
> > compilers if used RAM is, say, at 90% total. Then bitbake does not have
> > to get involved in babysitting those makes.
> >
> > Alex
> Bitbake does a lot of babysitting anyway :-) And is pretty good at it too.
>
> To me, fixing make et al. is more work and less effective then adding a
> feature to bitbake. The only way to know how much memory the compiler
> will use for each spawned compiler is to let it run. And then it's too
> late.
>
> This memory issue is all over our eco system and nobody cares (kernel,
> make etc.) The only thing moving is systemd's oom killer will arrive and
> start killing processes. So that will just stop our builds from completing.
>
> Yeah, I prefer a babysitter over a child murderer :-)
>
> Ferry
>
>
> 
>
>

--00000000000062b53e05bfb4c556
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>make already has -l option for limiting new instances=
 if load average is too high, so it&#39;s only natural to add a RAM limiter=
 too.</div><div><br></div><div>=C2=A0 -l [N], --load-average[=3DN], --max-l=
oad[=3DN]<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Don&#39;t start multiple jobs un=
less load is below N.<br></div><div><br></div><div>In any case, patches wel=
come :)<br></div><div><br></div><div>Alex<br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, 11 Apr 2021 at 1=
8:08, Gmane Admin &lt;<a href=3D"mailto:gley-yocto@m.gmane-mx.org">gley-yoc=
to@m.gmane-mx.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">Op 11-04-2021 om 17:55 schreef Alexander Kanavin:<br>
&gt; On Sun, 11 Apr 2021 at 17:49, Gmane Admin &lt;<a href=3D"mailto:gley-=
yocto@m.gmane-mx.org" target=3D"_blank">gley-yocto@m.gmane-mx.org</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:gley-yocto@m.gmane-mx.org" target=3D"_bl=
ank">gley-yocto@m.gmane-mx.org</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Yes, and make project doesn&#39;t care, because ma=
ke is called with -j<br>
&gt;=C2=A0 =C2=A0 =C2=A016 so<br>
&gt;=C2=A0 =C2=A0 =C2=A0that is what it does.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0So here&#39;s my pitch: bitbake can stop processes=
 spawned by make, because<br>
&gt;=C2=A0 =C2=A0 =C2=A0it knows that it started make on 4 recipies, each =
with -j 16. The<br>
&gt;=C2=A0 =C2=A0 =C2=A0individual makes don&#39;t know about each other.<=
br>
&gt; <br>
&gt; <br>
&gt; And neither they should. They can simply abstain from spawning new <b=
r>
&gt; compilers if used RAM is, say, at 90% total. Then bitbake does not ha=
ve <br>
&gt; to get involved in babysitting those makes.<br>
&gt; <br>
&gt; Alex<br>
Bitbake does a lot of babysitting anyway :-) And is pretty good at it too.=
<br>
<br>
To me, fixing make et al. is more work and less effective then adding a <b=
r>
feature to bitbake. The only way to know how much memory the compiler <br>
will use for each spawned compiler is to let it run. And then it&#39;s too=
 late.<br>
<br>
This memory issue is all over our eco system and nobody cares (kernel, <br=
>
make etc.) The only thing moving is systemd&#39;s oom killer will arrive a=
nd <br>
start killing processes. So that will just stop our builds from completing=
.<br>
<br>
Yeah, I prefer a babysitter over a child murderer :-)<br>
<br>
Ferry<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--00000000000062b53e05bfb4c556--
