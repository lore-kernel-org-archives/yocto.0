Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BCCC04A95
	for <webhook@archiver.kernel.org>; Wed, 28 Sep 2022 08:14:47 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web11.5449.1664352878406743680
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Sep 2022 01:14:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dSY7hj4a;
 spf=pass (domain: gmail.com, ip: 209.85.167.50,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id k10so19235371lfm.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 28 Sep 2022 01:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=Kd5L1uDzNr1eYGkH6vaUXOUWxTv2mIQImTeo7Hb52c4=;
        b=dSY7hj4ah23/B1pEqsnljNlj1m0nKW4+Gxse+AS8OioHWUCquXnxY4o8FKYPg+1TBQ
         p/L5nqDmFYzA3zQDm2Arfw2fxzjeYCAVjRBRwNR8SL7PZpdRawRyiaZOiR2ltvQM9qXt
         rWJ3XRjO0ojrvz7TI5xjiJc8HbE7JJryZsUGjnI0YQ+yMxb++0cW5u6Wmn8wnkjoRGuD
         eXcSDCLsxcb9EkZRq/5EB7UMIoxylJWusevgwdvj63gNWba8971kotk5lzeDR+8rpC5P
         RnpLidokJ4diyPMIF8DrgIlABWS7u4nQXXPBRtD36UhNkhpUGoGluYB0bmplbm3lH4I/
         jUUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=Kd5L1uDzNr1eYGkH6vaUXOUWxTv2mIQImTeo7Hb52c4=;
        b=3CP3IKOWhBqrsPa2IUmEs1isUNWoA3dKl/GWUlYivsd8NL3G9LGtpgYf4s3dfRMPVi
         rMTtrW23V6Jgcsd8ujt2JSFvsFAUJVOl/WHwePchuD/VzFbTQwBJE1Ia1s9vny9gkLuT
         xzz2t2ZFaBcsS+wloYwAV6UW+e/9hCOOwd4QB9FHWun6fQK9IGzxse8Cm2QM0iHwLmRP
         6lQ+sTE7sV8oZ2GGP0dzZk6XZ5cE3de8/rL/DypYT96X6J/hLpjXTjOAcungib5OHG4f
         7CvIWseCV8Z+KM9+eKiSDLsqrC9H64ZJbcbBhZTcNJnRv3BX8S39mwv13DNS2yzrtyT3
         2Yog==
X-Gm-Message-State: ACrzQf1QZUXhLxEOmkFj/4+gk+2E7UHuD9HmzYDRNDiVKQ8XH2pY6njT
	/75pHjhT2DsUIigGX0WnjeyPWUGWrEXkbqDwBv0=
X-Google-Smtp-Source: 
 AMsMyM7N0SRkmY58NxBl+Tw6HxaakQqRdOLtt7ETqnu6o6clE7zq09tz4y3Zo5sew8DFJc4cta+Px03K7IakvuOu1qs=
X-Received: by 2002:a05:6512:13a4:b0:479:3b9f:f13c with SMTP id
 p36-20020a05651213a400b004793b9ff13cmr12394167lfa.380.1664352876021; Wed, 28
 Sep 2022 01:14:36 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB183515506D92EF8DE17EDEDDC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH0PR84MB183515506D92EF8DE17EDEDDC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 28 Sep 2022 10:14:24 +0200
Message-ID: 
 <CANNYZj-ybq6AhgDM3UKpMf9xsBqpzNW5vXYQQ-8Vr8U4R8U-tA@mail.gmail.com>
Subject: Re: [yocto] Changing git url of qemu
To: Edgar Mobile <heideggm@hotmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f4cde105e9b85963"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Sep 2022 08:14:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58197

--000000000000f4cde105e9b85963
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You need to clarify what you want to do exactly. Why can=E2=80=99t you use =
the
existing recipe?

Alex

On Wed 28. Sep 2022 at 9.58, Edgar Mobile <heideggm@hotmail.com> wrote:

> Greetings,
>
> I want to change the git repo url in order to test the Venus driver. Can
> someone tell me which variable in which recipe I'd have to set?
>
> Regards
> --
> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58196):
> https://lists.yoctoproject.org/g/yocto/message/58196
> Mute This Topic: https://lists.yoctoproject.org/mt/93968127/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000f4cde105e9b85963
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">You need to clarify what you want to do exactly. Why can=
=E2=80=99t you use the existing recipe?</div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Wed 28. Sep 2022 at 9.58, Edgar Mobile &lt;<a h=
ref=3D"mailto:heideggm@hotmail.com">heideggm@hotmail.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-c=
olor:rgb(204,204,204)"><u></u>


<div>Greetings,<br><br>I want to change the git repo url in order to test t=
he Venus driver. Can someone tell me which variable in which recipe I&#39;d=
 have to set?<br><br>Regards</div><div><div style=3D"white-space:pre-wrap">=
<div>-- <br>Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mai=
l gesendet.</div></div></div><br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58196): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58196" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58196</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/93968127/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/93968127/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000f4cde105e9b85963--

