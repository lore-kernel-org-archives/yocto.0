Return-Path: <chuckwolber@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 386F7C433F5
	for <webhook@archiver.kernel.org>; Tue,  8 Feb 2022 17:58:23 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com
 [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web12.14848.1644343102298570828
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Feb 2022 09:58:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=d41FhBN+;
 spf=pass (domain: gmail.com, ip: 209.85.219.171,
 mailfrom: chuckwolber@gmail.com)
Received: by mail-yb1-f171.google.com with SMTP id v47so27197555ybi.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 08 Feb 2022 09:58:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KZPNFf5VoUyhtDujRp0Z1eu1od/gcuB7aO610521a4Q=;
        b=d41FhBN+4nVD8PcUJ06byc+RtPS4V+IftuLYnLkgq7y3Gr56hkUyVeVztYC+TQrBY6
         tcFEPXJF2d4VpmOTgRMtFxbm2CykaDs8bLjfHxiesXinFvNJ7TF0DeLRDi/moUcjrned
         ZX9DTCMW/UJVhbqmvYqxqBRdTHx1kQTJ2840YdmGeq3KvyW+bZVjjBndiVLg8hEsIkzl
         L4MQ5obI3OMNttxHh7iZIJHLgsgWLWdVlxQw2X/9V4EhPwbma6MuibYWM3qlGcdcS+PD
         DY6EVlRSlEvrWHkUX6IAply7W25JmQSWSyKn9Bmdy5EXtraxYH67FMwW6yW/MxaSCLzv
         4koQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KZPNFf5VoUyhtDujRp0Z1eu1od/gcuB7aO610521a4Q=;
        b=22WHCuR+OL7tTOrfUbA11hgyeXDuxAR6CEWFNkHjSwL+QTSpASC+6+pPhSGgt0nWL8
         jXqAJMpIlCcJftPPLwSSDr65cWcy8lU9wsSky+xVFbjbrKH5t+7iODP3uUqM61ZZmft0
         fFDq/I2cJDcmzoHlGmj5aQsusQwL/uXpYAH1jXTm8uaHlT+xwDtuD2aHh7R0i958l1yS
         S3OdaYmgQZgzFv9qkfg97ubXUgFyNvMn0rA2HRLhN2KqjzB0V39m5hk0SK5uGPUFVilI
         qx97Bk+W2TPG4AeHs3a+NP6Iz2Ewahr+m2vp6FYN1SB6/qjwOylVLqgk5cmSKpF932NN
         rEpA==
X-Gm-Message-State: AOAM531N4ukn7n8t+XX+y7CtDKw2dkHEzC4KU33u3yITTExDLACURXji
	o2Jtp22DpJ4XNLJfJQEKd1/7+S9/PIPmitRDNm0=
X-Google-Smtp-Source: 
 ABdhPJw2RbpH6WCqcBpalwSN3lOyRu3aUeB8dGYUn+LDdS6U5vjb0pQQsOQL/JqxzHh3Ps1iR8hiToiW4K1PWNwCiCU=
X-Received: by 2002:a25:8b86:: with SMTP id j6mr5746514ybl.661.1644343101395;
 Tue, 08 Feb 2022 09:58:21 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAMKF1sorLM=2y07=SkxF0h0sc28CxFqibWwoqYEsQACU_X6yHg@mail.gmail.com>
 <28618.1644342412617479446@lists.yoctoproject.org>
In-Reply-To: <28618.1644342412617479446@lists.yoctoproject.org>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Tue, 8 Feb 2022 09:58:10 -0800
Message-ID: 
 <CAB=6tBR55oKm44rg9oVkw8YbJ3PRvWp7AwOifHEb30-kpG4c0Q@mail.gmail.com>
Subject: Re: [yocto] run.do_compile error on poky-dunfell release
To: Sourabh Hegde <hrsourabh011@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007296ef05d78576fb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Feb 2022 17:58:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56109

--0000000000007296ef05d78576fb
Content-Type: text/plain; charset="UTF-8"

Just replace the word "commit" in the URL with the word patch, like so:

https://git.kernel.org/pub/scm/linux/kernel/git/legion/kbd.git/patch/?id=50eae66fc21ef8e01c69a9d3c1ff3fcb0b2644a0

..Ch:W..

On Tue, Feb 8, 2022 at 9:46 AM Sourabh Hegde <hrsourabh011@gmail.com> wrote:

> Hello Khem,
>
> Thanks for quick response.
>
> Can you please let me know where to include this patch file?
>
> Thanks in advance.
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56108):
> https://lists.yoctoproject.org/g/yocto/message/56108
> Mute This Topic: https://lists.yoctoproject.org/mt/88998953/894569
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> chuckwolber@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--0000000000007296ef05d78576fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Just replace the word &quot;commit&quot; in the URL w=
ith the word patch, like so:</div><div><br></div><div><a href=3D"https://gi=
t.kernel.org/pub/scm/linux/kernel/git/legion/kbd.git/patch/?id=3D50eae66fc2=
1ef8e01c69a9d3c1ff3fcb0b2644a0">https://git.kernel.org/pub/scm/linux/kernel=
/git/legion/kbd.git/patch/?id=3D50eae66fc21ef8e01c69a9d3c1ff3fcb0b2644a0</a=
></div><div><br></div><div>..Ch:W..<br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 8, 2022 at 9:46 AM=
 Sourabh Hegde &lt;<a href=3D"mailto:hrsourabh011@gmail.com">hrsourabh011@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">Hello Khem,<br><br>Thanks for quick response.<br><br>Can you please=
 let me know where to include this patch file?<br><br>Thanks in advance.
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56108): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56108" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56108</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88998953/8945=
69" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
88998953/894569</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:chuckwolber@gmail.com" target=3D"_blank">chuckwo=
lber@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><div><b><span style=3D"font-family:monospa=
ce">&quot;Perfection must be reached by degrees; she requires the slow hand=
 of time.&quot; - Voltaire</span></b></div></div></div>

--0000000000007296ef05d78576fb--

