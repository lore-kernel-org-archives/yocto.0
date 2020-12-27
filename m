Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web12.37601.1609103131037843925
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Dec 2020 13:05:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20161025 header.b=Q3PwUHbQ;
 spf=pass (domain: googlemail.com, ip: 209.85.219.41, mailfrom: matthias.rampke@googlemail.com)
Received: by mail-qv1-f41.google.com with SMTP id d11so4244667qvo.11
        for <yocto@lists.yoctoproject.org>; Sun, 27 Dec 2020 13:05:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9iOgGHkgBlHLBZp0vM8EHAQyuPmH0ofN5A/L8pzPTI0=;
        b=Q3PwUHbQvkDP4gdoFzJoJqfE0xgOGMZYCAiU5huvIS7jMZ3gZqCyGmCj7JF0bR4WHn
         phN2t39FJXIGTBzJHSAz27jfDIAsNe0FkDLBUMKHLG3K6iALs6WeSE7Ah0cIoOAkkW0a
         HmqaXf6ph5+dRULrrEz3vznkRo0105rcBbtrgcB2HOGcx5hlBTcrL3pC7PRh+IfVgZEw
         MyDiNwNUh2rweadh88vSoO36yPb8XcQse7kAJS/zEa8jThjh9ZiFUlPo5xqrkgW5nCkl
         iaOgjJ4KHn8wcDjJ1GOTlPMD60x6irEg01UGwI/NCRGPKnZQnD/aetAkAk13lh8KaRCJ
         ElTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9iOgGHkgBlHLBZp0vM8EHAQyuPmH0ofN5A/L8pzPTI0=;
        b=eGvtzZ7QH0mMsvoTYQnNFw+i1+z8rKkGyqHzDQQWxkXzk2k+1hHnEowpsGBF35y/jG
         swhNOOjOkEm6lT1FvACd7s/Km+YXM6tL6omXtpGVP9ValaqmgP9jnC1EMqMEH65tHKPI
         JxKUY22XTjoo2MWH8XHc37OMWs51fyK9an+xHrK1b07KFGF3xVU3577eT2NGUPXL7weU
         Wha6cC85an5Of1mzdQWyVGAuh4Q7lmvBhrw9BWRP9K6DmGPo38iqFmLXsRLb3dHp2ms6
         IAVXjvpUi0grLbGLggwKOSrhLiZX2h4w5vLTrDY/f0VLtkrDBM1Y8CckwcN9lIn14GkM
         gUKg==
X-Gm-Message-State: AOAM530dMpSiGU0fN0SUfCEw9UGS8jZJt1zpgQIzS0JhW/2bvAEM4dvC
	MAL/sG2N1TgjSHERwqumyLyVuIwfyhcuP+/WRTk=
X-Google-Smtp-Source: ABdhPJxna8nHz2hR+NKnHzpTvrEUz8jpYUuwX04iJkGFo/9dkoudWdmX94YjplysHsCZBf1qKrWIcYK1VG+Gr6aRMVQ=
X-Received: by 2002:a05:6214:cb:: with SMTP id f11mr44923500qvs.15.1609103130111;
 Sun, 27 Dec 2020 13:05:30 -0800 (PST)
MIME-Version: 1.0
References: <4430.1609097094568670186@lists.yoctoproject.org> <9239.1609098179883791636@lists.yoctoproject.org>
In-Reply-To: <9239.1609098179883791636@lists.yoctoproject.org>
From: matthias.rampke@googlemail.com
Date: Sun, 27 Dec 2020 22:05:18 +0100
Message-ID: <CAE3d8Ec2K-j-Gm8nwEk1zU_rO8W58avMJdK9KFqhcXotQPvQxQ@mail.gmail.com>
Subject: Re: [yocto] Error during do_install for linux-libc-headers_5.8 recipe during 'bitbake core-image-minimal'
To: Matthias Rampke <matthias.rampke@googlemail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007a33ec05b77884c5"

--0000000000007a33ec05b77884c5
Content-Type: text/plain; charset="UTF-8"

Bisect points at the commit that introduced the hard pseudo abort:

84e0642ed6aba422583871fc153bbd94380074de is the first bad commit
> commit 84e0642ed6aba422583871fc153bbd94380074de
> Author: Richard Purdie <richard.purdie@linuxfoundation.org>
> Date:   Tue Sep 29 17:57:38 2020 +0100
>
>     pseudo: Abort on mismatch patch
>
>     Rather than doing what turns out to be a rather dangerous "fixup" if
>     we see a file with a different path but the same inode as another file
>     we've previously seen, throw and abort. Direct the user to a wiki page
>     where we can maintain information about what this error means.
>
>     (From OE-Core rev: 2db491d97da08d44ebd257f98489550a82a7935c)
>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>
> :040000 040000 265627b814038c0cc19248bbb885ab7536202e1c
> acfc4fbeb04a887f2ceeaa029a63a4dd82f7767d M      meta
> bisect run success
>


/MR


On Sun, Dec 27, 2020 at 8:43 PM matthias.rampke via lists.yoctoproject.org
<matthias.rampke=googlemail.com@lists.yoctoproject.org> wrote:

> One more thing: I tried reverting the linux-libc-headers version change
> (57d5f4ad410d4e9d55bdd9734bf5ab8fa6667a53) and that fails in the same way,
> so it's not that.
>
> I also realized that the yocto-3.2 tag does not include the 3.2.1 updates;
> however the same issue happens on 3.2.1 as well.
>
> I will try to bisect this but it seems like it will take a long time since
> I need to wipe the tmp directory at every step.
>
> /MR
> 
>
>

--0000000000007a33ec05b77884c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Bisect points at the commit that introduced the hard pseud=
o abort:<div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">84=
e0642ed6aba422583871fc153bbd94380074de is the first bad commit<br>commit 84=
e0642ed6aba422583871fc153bbd94380074de<br>Author: Richard Purdie &lt;<a hre=
f=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundat=
ion.org</a>&gt;<br>Date: =C2=A0 Tue Sep 29 17:57:38 2020 +0100<br><br>=C2=
=A0 =C2=A0 pseudo: Abort on mismatch patch<br><br>=C2=A0 =C2=A0 Rather tha=
n doing what turns out to be a rather dangerous &quot;fixup&quot; if<br>=C2=
=
=A0 =C2=A0 we see a file with a different path but the same inode as anoth=
er file<br>=C2=A0 =C2=A0 we&#39;ve previously seen, throw and abort. Direct=
 the user to a wiki page<br>=C2=A0 =C2=A0 where we can maintain information=
 about what this error means.<br><br>=C2=A0 =C2=A0 (From OE-Core rev: 2db49=
1d97da08d44ebd257f98489550a82a7935c)<br><br>=C2=A0 =C2=A0 Signed-off-by: Ri=
chard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">rich=
ard.purdie@linuxfoundation.org</a>&gt;<br><br>:040000 040000 265627b814038c=
0cc19248bbb885ab7536202e1c acfc4fbeb04a887f2ceeaa029a63a4dd82f7767d M =C2=
=A0 =C2=A0 =C2=A0meta<br>bisect run success<br></blockquote><div><br></div=
><div><br></div><div>/MR</div></div><br><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Sun, Dec 27, 2020 at 8:43 PM matthias.=
rampke via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org=
</a> &lt;matthias.rampke=3D<a href=3D"mailto:googlemail.com@lists.yoctoproj=
ect.org">googlemail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">One more thing: I tried rever=
ting the linux-libc-headers version change (57d5f4ad410d4e9d55bdd9734bf5ab8=
fa6667a53) and that fails in the same way, so it&#39;s not that.<br><br>I a=
lso realized that the yocto-3.2 tag does not include the 3.2.1 updates; how=
ever the same issue happens on 3.2.1 as well.<br><br>I will try to bisect t=
his but it seems like it will take a long time since I need to wipe the tmp=
 directory at every step.<br><br>/MR
<br>
<br>
<br>
</blockquote></div>

--0000000000007a33ec05b77884c5--
