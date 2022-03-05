Return-Path: <chuckwolber@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E08ABC433EF
	for <webhook@archiver.kernel.org>; Sat,  5 Mar 2022 23:12:49 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com
 [209.85.128.174])
 by mx.groups.io with SMTP id smtpd.web11.10527.1646521968603506830
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Mar 2022 15:12:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=gPrsJ/++;
 spf=pass (domain: gmail.com, ip: 209.85.128.174,
 mailfrom: chuckwolber@gmail.com)
Received: by mail-yw1-f174.google.com with SMTP id
 00721157ae682-2dbfe58670cso127931017b3.3
        for <yocto@lists.yoctoproject.org>;
 Sat, 05 Mar 2022 15:12:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xrgMuXGHvOMwYTYeSwbarsLI9qhkSxvf+Olm3MAhaN0=;
        b=gPrsJ/++joyF3nBbgAV63dxcrgw2uLsymjVoaxLO8cU+RCKAOXUCVUJ00TBu9PcoAK
         AhmkJy3MrsbZh72QbNR/auAkOJxjNa6EfezQgjXJLUJEG1rqaRwcf5q5ET6pwMQqnTTi
         ud7k2kjfTAGuPtLm2DIBRWOFclSvVAO9F4r0t62jWVSsX7rplc5JSxa1sdmRIygx8xWP
         kGquqN5OrEasgh+qTOVRLhwBee4dmt65JYgV/4QPwij2y/426ePBBv9Fg3AsMw6fdUMa
         ouj+lLm8cOAT1WJZSMuvsCtETBiu1HE2ad2p0BVO2/a4oZ9DEUYDpgIbzWeEbhQmjt8a
         hpIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xrgMuXGHvOMwYTYeSwbarsLI9qhkSxvf+Olm3MAhaN0=;
        b=UL+WSYmjnE/n5y6zKZjIyY5E3i+H9n/lTphaYTOkRVL1BYPVWziYZOxCdT74N5ToiM
         e+AnCTWInxREglpLR5N91kRyZPVgTA37ZoAh72rudAUJW2wo6og0gPq0hW8VFhUXgiDe
         r0A8Zn9DhRoOqmrJQfct48ws3xCKWq6zvU5JHw5/NGm+RpsWK3+AZTIJ3X85Oo15GQ74
         HfXRASSN457K58VVJk2QqGnalkRR4nAemoYlEBysMknK/xHv8xLEDqJmSrmRr8h2Ycv9
         uOaWGR0mVsOkETCHAp/x0ypcSXH4PLAwkcqT/ybOXpUytg+cCQe19IiFcdqkRlGqcpKU
         LXSg==
X-Gm-Message-State: AOAM531O0BAEgqEDBPzvzG19eRYL8O46mfwkxQtjE7nOlMARFDnERQgx
	vcdWEVm9XUivH+u+ANEpJYN0SbqmlupWdxorDrE4lB+S
X-Google-Smtp-Source: 
 ABdhPJxhmPLSWYQk+EeJ8s5TmnwKCKH0HMImqI30hCDIYrIY9swTWV6mT5IrHAXtrYdDQ2STGxh/OfUuXzqahpOL+vg=
X-Received: by 2002:a81:40f:0:b0:2dc:502:a6d0 with SMTP id
 15-20020a81040f000000b002dc0502a6d0mr3908594ywe.99.1646521967652;
 Sat, 05 Mar 2022 15:12:47 -0800 (PST)
MIME-Version: 1.0
References: <e1372f3c-6576-3ad3-1c21-f1aa872fc84f@bytesatwork.ch>
In-Reply-To: <e1372f3c-6576-3ad3-1c21-f1aa872fc84f@bytesatwork.ch>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Sat, 5 Mar 2022 15:12:35 -0800
Message-ID: 
 <CAB=6tBTVGRsQoBSUC=Jii=bWT5_MbJ+rK4bzfLicYfgHBQkvWg@mail.gmail.com>
Subject: Re: [yocto] Honister on Ubuntu 14.04
To: Daniel Ammann <daniel.ammann@bytesatwork.ch>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ff327c05d980c428"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 05 Mar 2022 23:12:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56378

--000000000000ff327c05d980c428
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 3, 2022 at 10:07 AM Daniel Ammann <daniel.ammann@bytesatwork.ch>
wrote:


> I'm trying to build honister on Ubuntu 14.04. This is meant as a temporary
> solution until the build server can be upgraded to something recent.
> For now, I got it running with extended buildtools from poky, but the
> build of
> libnsl2-native fails. It appears that the pkgconfig step is not executed
> properly since do_compile fails with a header not found error.
>
> Has anybody done a successful build of honister on Ubuntu 14.04? Is it even
> possible?
>


I cannot speak for Honister, but I can speak to the higher level
abstraction that is causing you issues.
The solution is to copy the (right version of the) missing header file into
the proper location in the buildtools
directory. I maintain a running list of things I have to add to buildtools
that I have posted to this list in the
past.

..Ch:W..

-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--000000000000ff327c05d980c428
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Mar 3, 2022 at 10:07 AM Daniel Am=
mann &lt;<a href=3D"mailto:daniel.ammann@bytesatwork.ch">daniel.ammann@byte=
satwork.ch</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><div>=C2=A0</=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">
I&#39;m trying to build honister on Ubuntu 14.04. This is meant as a tempor=
ary<br>
solution until the build server can be upgraded to something recent.<br>
For now, I got it running with extended buildtools from poky, but the build=
 of<br>
libnsl2-native fails. It appears that the pkgconfig step is not executed<br=
>
properly since do_compile fails with a header not found error.<br>
<br>
Has anybody done a successful build of honister on Ubuntu 14.04? Is it even=
<br>
possible?<br></blockquote><div><br></div><div><br></div><div>I cannot speak=
 for Honister, but I can speak to the higher level abstraction that is caus=
ing you issues.</div><div>The solution is to copy the (right version of the=
) missing header file into the proper location in the buildtools</div><div>=
directory. I maintain a running list of things I have to add to buildtools =
that I have posted to this list in the</div><div>past.</div></div><div><br>=
</div><div>..Ch:W..<br></div><br>-- <br><div dir=3D"ltr" class=3D"gmail_sig=
nature"><div dir=3D"ltr"><div><b><span style=3D"font-family:monospace">&quo=
t;Perfection must be reached by degrees; she requires the slow hand of time=
.&quot; - Voltaire</span></b></div></div></div></div>

--000000000000ff327c05d980c428--

