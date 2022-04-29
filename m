Return-Path: <laurent.gauthier@soccasys.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5A36C433F5
	for <webhook@archiver.kernel.org>; Fri, 29 Apr 2022 11:58:27 +0000 (UTC)
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
 [209.85.166.54])
 by mx.groups.io with SMTP id smtpd.web11.9013.1651233504941132517
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Apr 2022 04:58:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@soccasys-com.20210112.gappssmtp.com header.s=20210112
 header.b=XEN7d4Q6;
 spf=pass (domain: soccasys.com, ip: 209.85.166.54,
 mailfrom: laurent.gauthier@soccasys.com)
Received: by mail-io1-f54.google.com with SMTP id h8so9431219iov.12
        for <yocto@lists.yoctoproject.org>;
 Fri, 29 Apr 2022 04:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soccasys-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OeFnJKPVw6I1Nf9v/21iXRO1/fR+vgg8kr66S7Mssyk=;
        b=XEN7d4Q6jET/rIHs3kEDKgGv8ssO/lMJ0oKcbYDtIksytc9gY9NZXKCFDSVZUZirXR
         hoT1DkkOkAFYegw4yr7CHat+dGX748NjmDt8iuQ7MGYzCMrDfGmchJHtM/qtGhigMuHj
         DtF6bk2QyBsPxJi4Tm6AqSGr142eD3dLvpVQYXdIJ2ByWFEnHPSwO3rIheIOR5swyyDq
         OJS+U5l7C8exzLYJlSYkyiHnR1BjoB6DIpTDpL780i00rJ/VQFuElsWGzSRYQY9OMuTo
         to1sbXGCLULJgWYxWiQsR9yuNR8+zZSogk2/+zQD3PRMY8ZmbUt6+FDNrwA+laauXJRO
         m9kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OeFnJKPVw6I1Nf9v/21iXRO1/fR+vgg8kr66S7Mssyk=;
        b=lUzsb9OujleXcBL7+ysNOS31OK/x859MogiHnJwG3pRkVv3wAX9GDltxVtWHLyTI9M
         JkWV5FNK6HdyyHnUT0yHUdaQkVjQyyfx+zducMAVgLbf0zd5txsMQEdgcgId1+Nys+pX
         wrbxURMexYXownQ2NXkHU07fdMfrKM7hkOyklXXvEGmbvYsOR3CtSAyHwj4RqPyEYhMl
         4bBHZmnNxQGEpKcIYjbOawAYdY8k8CX9b0YPeNp+Wzhjw28NneG7dgYZyy46Xqi99HNm
         dTrTmxjT2FgoRUL4OPw0Kqyocps76wrtUjrI6LEk4DDiM4nY17QCuBsvdeRKGVZCHh3K
         fg4w==
X-Gm-Message-State: AOAM531vemzLrU8p2Zk3r+SuH1sVGXvQdf0zV0MAxnHMFcE1/wI2DG02
	wZrLplEcxtOl63ql0u0IBuKGOHypee+/4rXTg4QP1A==
X-Google-Smtp-Source: 
 ABdhPJz9GtMcN+uGPELhgvTNbe92yiS1ob+cQT4My6YMdNSMMl19bmqh2ixG3eIj9jtI/bJPoTD/hp/4fW1sNl1jEX4=
X-Received: by 2002:a05:6638:16cc:b0:32a:7375:8472 with SMTP id
 g12-20020a05663816cc00b0032a73758472mr16231147jat.256.1651233503955; Fri, 29
 Apr 2022 04:58:23 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAPk1OjHyko81NFi0FtGruE5Z8TvUiwsdyT9aOyKRSv5886Guvg@mail.gmail.com>
In-Reply-To: 
 <CAPk1OjHyko81NFi0FtGruE5Z8TvUiwsdyT9aOyKRSv5886Guvg@mail.gmail.com>
From: Laurent Gauthier <laurent.gauthier@soccasys.com>
Date: Fri, 29 Apr 2022 13:58:10 +0200
Message-ID: 
 <CAGbd71RtL5SCpSDhj0nD7D5CB8MjBbjTK90tPo4AeUyeikkPYA@mail.gmail.com>
Subject: Re: [yocto] OS-less SDK
To: Alessio Igor Bogani <alessio.bogani@elettra.eu>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000071e03705ddc9c208"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Apr 2022 11:58:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56954

--00000000000071e03705ddc9c208
Content-Type: text/plain; charset="UTF-8"

Hi Alessio,

Have you had a look at crosstool-ng?

Best regards, Laurent.

On Fri, 29 Apr 2022, 13:52 Alessio Igor Bogani, <alessio.bogani@elettra.eu>
wrote:

> Dear Yocto developers,
>
> Is there a way to generate an SDK which contains the toolchain for
> bare-metal systems (i.e. MCU without operating system)?
>
> Thanks in advance!
>
> Ciao,
> Alessio
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56953):
> https://lists.yoctoproject.org/g/yocto/message/56953
> Mute This Topic: https://lists.yoctoproject.org/mt/90774037/3618354
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> laurent.gauthier@soccasys.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000071e03705ddc9c208
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Alessio,<div dir=3D"auto"><br></div><div dir=3D"auto">=
Have you had a look at crosstool-ng?</div><div dir=3D"auto"><br></div><div =
dir=3D"auto">Best regards, Laurent.</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 29 Apr 2022, 13:52 Alessio=
 Igor Bogani, &lt;<a href=3D"mailto:alessio.bogani@elettra.eu">alessio.boga=
ni@elettra.eu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Dear Y=
octo developers,<br>
<br>
Is there a way to generate an SDK which contains the toolchain for<br>
bare-metal systems (i.e. MCU without operating system)?<br>
<br>
Thanks in advance!<br>
<br>
Ciao,<br>
Alessio<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56953): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56953" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/56953</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/90774037/3618=
354" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/90774037/3618354</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:laurent.gauthier@soccasys.com" target=
=3D"_blank" rel=3D"noreferrer">laurent.gauthier@soccasys.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000071e03705ddc9c208--

