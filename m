Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0503FC433EF
	for <webhook@archiver.kernel.org>; Wed, 16 Mar 2022 07:18:53 +0000 (UTC)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com
 [209.85.221.181])
 by mx.groups.io with SMTP id smtpd.web08.22379.1647415131912152022
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Mar 2022 00:18:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ph1SvYef;
 spf=pass (domain: gmail.com, ip: 209.85.221.181,
 mailfrom: martin.jansa@gmail.com)
Received: by mail-vk1-f181.google.com with SMTP id e188so768469vkh.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 16 Mar 2022 00:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/s4E3koe75JNiHxtmhDHqcBWukxkf46DgA2qkpa7SF8=;
        b=Ph1SvYef5AP0nCKXitAYMs4jGiuy/J5hlNAR6rlgrB9VAOUiWGB9krQ5qOawwNXkGI
         423RljUKMCTB65qfXYEcXvXZ5kpTWQRa/2/wO6MeqqLssT+nDTu/uI8dMSsBrDGiqutT
         EVDz97BTEycyLb8Viqz9Ct12/o+swbAMNdLq8fMleu0EsuglSEYspt76pbdZe8tAra/x
         dzj22RBRgFIg9BmbRupY8ONa4f6sN2rxYbN7s0eQ5HfKr/mof9qfo8+aY9Pc+2FlRd8X
         FMMs+wlWb1jOY+FFoDJ0fb9UH7lqSe27IK4LXgyLgAHB3+/TwFesyok0aobeg/DpBcUE
         xbXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/s4E3koe75JNiHxtmhDHqcBWukxkf46DgA2qkpa7SF8=;
        b=r4wGK2VD0S0nRTlfyUWypsovnLHFDuvy6UhxU9x2A39vFVMSSum0JK57Q4Meu7OhPf
         wvki2aKERxsEkJGxx5+o0XH9VimQciJOqpjqRqfzUy1x6k5jcsyUTALsA2KsP+9eA///
         TQzzSbG8a/KipYvREK9ZLWFhD+GWFXVNqLp9POAVWD2YpR2kHW2oKyP+zm+1sKxqbTd4
         4kwNpx9a85deT8MRKfDHruAA/qlYLvo3IVLAPM2Iaodh4TN12BmfwEOQGgUhF8BYeKiW
         C54iomParaszsxFDEtdlnCVZ2fQnrPA/+Ji4l1dLeS7lzmjTLfdeEqyReXlDQMmqq1HC
         9nJw==
X-Gm-Message-State: AOAM531ZY2A+r0qNOfyFeMZXi2LcoGXS2uQgeeT14+lFXQ5FD8b9pbCN
	peFdQTV+g/Db2DJ7b+nqLUMbt1vqM1IK8I4oDO8=
X-Google-Smtp-Source: 
 ABdhPJwOSZSY82gIFbN25/9ZN1xlRJ4/OA+BAdwq8oSyXtQ8/sTGuBmsvn7E7ZnB3FcBrbQyYb24HkWxa9Gk38AMAS4=
X-Received: by 2002:a05:6122:68a:b0:33e:52c3:8ef4 with SMTP id
 n10-20020a056122068a00b0033e52c38ef4mr449160vkq.28.1647415130937; Wed, 16 Mar
 2022 00:18:50 -0700 (PDT)
MIME-Version: 1.0
References: <43ad16aa-6986-4790-a4fa-86cdd8fcb6e3@www.fastmail.com>
In-Reply-To: <43ad16aa-6986-4790-a4fa-86cdd8fcb6e3@www.fastmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 16 Mar 2022 08:18:26 +0100
Message-ID: 
 <CA+chaQc978SPe-3=+iLiit61xKTjZNVAvYf3760gZ5Lsjbsn+w@mail.gmail.com>
Subject: Re: [yocto] Still affected by recent pkgconfig-native issue
To: Manuel Wagesreither <manwag@fastmail.fm>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ad5b6d05da50b937"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Mar 2022 07:18:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56455

--000000000000ad5b6d05da50b937
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 16, 2022 at 8:02 AM Manuel Wagesreither <ManWag@fastmail.fm>
wrote:

> Poky dunfell contains [1] as 83b827e3d6835ef62cb2db3fc7505679ae727529 and
> [2] as a28d37580a1ae34d6c170490be420c7812d2b3e6 but not [3]. [3] patches
> glibc 2.34, while poky dunfell contains 2.31.
>

It's not about glibc version used in target builds on dunfell, but about
glibc version used to build uninative tarball.

If you're using older docker daemon to run your builds, then easiest fix is
to upgrade to latest which contains the fix or as work around use
privileged containers.

Regards,

--000000000000ad5b6d05da50b937
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Mar 16, 2022 at 8:02 AM Manuel Wa=
gesreither &lt;<a href=3D"mailto:ManWag@fastmail.fm">ManWag@fastmail.fm</a>=
&gt; wrote:</div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">
Poky dunfell contains [1] as 83b827e3d6835ef62cb2db3fc7505679ae727529 and [=
2] as a28d37580a1ae34d6c170490be420c7812d2b3e6 but not [3]. [3] patches gli=
bc 2.34, while poky dunfell contains 2.31.<br></blockquote><div><br></div><=
div>It&#39;s not about glibc version used in target builds on dunfell, but =
about glibc version used to build uninative tarball.</div><div><br></div><d=
iv>If you&#39;re using older docker daemon to run your builds, then easiest=
 fix is to upgrade to latest which contains the fix or as work around use p=
rivileged containers.</div><div><br></div><div>Regards,=C2=A0</div></div></=
div>

--000000000000ad5b6d05da50b937--

