Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
 by mx.groups.io with SMTP id smtpd.web11.18274.1586967775046258064
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Apr 2020 09:22:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cGc6idN4;
 spf=pass (domain: gmail.com, ip: 209.85.221.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f175.google.com with SMTP id g129so1011386vkh.9
        for <yocto@lists.yoctoproject.org>; Wed, 15 Apr 2020 09:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=04nhs4UmqC2uAfGf4uG6s2tXCFn4ILlNImqeyW1w2y4=;
        b=cGc6idN4jikOkNaBwOdQlKefJPWrFfZLA7fgFL3bOMH8RbU6NyksTPEtwwCN092c5n
         lefFysYe1ma2VjTp3xV0oU0RI6B6R+z4hgasJWCXxay61nv9eWgHSYXvzwWUVJiGnFxB
         SATDYMVCJocQSKsSNmgWH42Pu45UOZBDxpgzPc8dwc5EHssyG2f0f8Q4MEyMNzqucwiH
         ilmDzKN+159IFnLPvHx9NlOxi37h2fvikoHPS2/1bqemmD1ox67j4n59ZxjD7lEiokfl
         QyLx0O6evCwmWP3gtBm/ZdQFQS1DfLaJ+l7b6jLh+bAKBGqHeGZa/ckuIFJUjfIBf95b
         IZbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=04nhs4UmqC2uAfGf4uG6s2tXCFn4ILlNImqeyW1w2y4=;
        b=ZJniQQ9xOTtK01oQnglEyPTxPFVJg2KCqAjuJGy4VJUtpyaiz2hSkCnLl/DGp1eZUn
         fAZWxjqyp0sDpSnI7Kysu7nm6vyJuaHCgbnR9eLEVuogyGcpbZWZWoKHQIFNkdizbQUv
         F2s8ft+jOnM8XxPd4dMZbPtRZgjWQWEhsD2YXE7xusnK0jABxaHCgQIe1umej3QkFN4T
         iGxSGciwE1wPDGX5gLwtS6SeS9qv/+q8/LtcCdhoG3vfscR+eCJwCFeLmHtBjl9x8Sp2
         rHiUvfHaV6uyaMvXwXNfTonrUPX9WLieLBA0jAuHyvtALC5DdAQL1IQBd9+wOjyxVbpL
         I1lA==
X-Gm-Message-State: AGi0PuYP9+DlzByrkOkKC/6eH7Ku0tg9S+2vYPr9io5hF51iTaXRy0uR
	aVSbeKNoeTg4nm2CvqYeonPTygQVcMMH5DgeGOM=
X-Google-Smtp-Source: APiQypIhJ4Tv2X/+xxfYnlJTziyD2SwsoShN0kfJdCS6Pm6+aJg9SMzUl8iA3923FMxf6l0V4NYPBGELPYHpyBCIZpI=
X-Received: by 2002:a1f:e182:: with SMTP id y124mr19958015vkg.0.1586967774202;
 Wed, 15 Apr 2020 09:22:54 -0700 (PDT)
MIME-Version: 1.0
References: <US9q.1586967370403874617.w9z2@lists.yoctoproject.org>
In-Reply-To: <US9q.1586967370403874617.w9z2@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 15 Apr 2020 18:22:42 +0200
Message-ID: <CANNYZj8=mbk9RTzum5Ded+ojZGa==hR7J0x2L9243mphMzgg8Q@mail.gmail.com>
Subject: Re: [yocto] Guidance Downgrading Python2 in Zeus #python
To: MikeB <mabnhdev@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000073914105a356ba38"

--00000000000073914105a356ba38
Content-Type: text/plain; charset="UTF-8"

I think python2 *recipe* requires openssl 1.1, but python2 itself will work
just fine with openssl 1.0. So you only need to adjust the dependency,
there are several ways to do that.

Alex

On Wed, 15 Apr 2020 at 18:16, MikeB <mabnhdev@gmail.com> wrote:

> I'm working on a set of platforms that have a FIPs certified OpenSSL.  We
> are at version 1.0.2l.
>
> I've found that the new version of python in Zeus (2.7.17) requires a
> newer version of OpenSSL (1.1).
>
> We really don't want to go through a new round of certification, so we
> want to keep our current OpenSSL (1.0.2l).
>
> I think the easiest solution is to downgrade python 2 back to the version
> used by Sumo (2.7.15).
>
> I know how to downgrade simple recipes, but python is far from simple.
>
> Can someone give me some guidance on how to approach the downgrade of
> python2 in Zeus?
>
> Thanks, Mike 
>

--00000000000073914105a356ba38
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I think python2 *recipe* requires openssl 1.1, but py=
thon2 itself will work just fine with openssl 1.0. So you only need to adju=
st the dependency, there are several ways to do that.</div><div><br></div><=
div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Wed, 15 Apr 2020 at 18:16, MikeB &lt;<a href=3D"mailto=
:mabnhdev@gmail.com">mabnhdev@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">I&#39;m working on a set of platform=
s that have a FIPs certified OpenSSL.=C2=A0 We are at version 1.0.2l.<br><b=
r>I&#39;ve found that the new version of python in Zeus (2.7.17) requires a=
 newer version of OpenSSL (1.1).<br><br>We really don&#39;t want to go thro=
ugh a new round of certification, so we want to keep our current OpenSSL (1=
.0.2l).<br><br>I think the easiest solution is to downgrade python 2 back t=
o the version used by Sumo (2.7.15).<br><br>I know how to downgrade simple =
recipes, but python is far from simple.<br><br>Can someone give me some gui=
dance on how to approach the downgrade of python2 in Zeus?<br><br>Thanks, M=
ike
<br>
</blockquote></div>

--00000000000073914105a356ba38--
