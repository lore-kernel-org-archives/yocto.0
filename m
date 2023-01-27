Return-Path: <nikitagupta2509@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81194C54EAA
	for <webhook@archiver.kernel.org>; Fri, 27 Jan 2023 06:45:38 +0000 (UTC)
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
 by mx.groups.io with SMTP id smtpd.web11.96943.1674801931707277324
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Jan 2023 22:45:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=I2knUI8f;
 spf=pass (domain: gmail.com, ip: 209.85.160.52, mailfrom: nikitagupta2509@gmail.com)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-15f97c478a8so5272130fac.13
        for <yocto@lists.yoctoproject.org>; Thu, 26 Jan 2023 22:45:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ztgl/58tYoa9fcy8r2WioTjihdvySUGVzMQNmDFW+D8=;
        b=I2knUI8fL35YmFcNJEmH+aWPT9nErrOD89cB7xi5QuP4Jo3FIEyRyqI/lhhHRzUdr9
         g960QdhuoR6FNl306IlhuewoLH3Ul+xfWf2Y/Ds7IhIUfzvY+durycL+Z9YxZfJxtia3
         rLoAoBAo7aKWcfNhMzpaV6T1WU+fv67WU/Y0pSA5YDF68ZOrONbrouMjZWSIS/WETMu+
         a6qs4DD/ESR0nQHpQ9nhT80DOGgRe2zOd3SVHCdqhOx4P3Tmmk57gzXXfo0rtGkS8iqe
         MKFRyafDPO9ZE+Zak+CwQMCYsqJY5a73xvkIVswGU00NpJ2axh0JTdQbnRp4VzvrIihf
         ocCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ztgl/58tYoa9fcy8r2WioTjihdvySUGVzMQNmDFW+D8=;
        b=2277/PRcyhJzxG891CcUpvOGm7+WuURIZ7SjByxFrv6SA50InOHWbs1Jux0lTLBtJ4
         SJwOUuxeDyELRbXahc3jVAtU9RolnffNT0ol3ZlbTLdGaCIDyVPeOLdz2Ke5ErG6LpDI
         lD28WK1Il6QQnK9UNQrcNE6/uOt1SdbIYpNSMgmmRXHzo06iSyqLvWbn/ybyXctJVwVj
         Kwm2RJ4XX9gB+xsB4kBUQFeUULuS/tkV67naVUVB3p83h5K+myeEkTfPRyO3kqqGwK5t
         u/rl/ithj/fG6LA0aUmwzcjtBTIrAJ/t9jyDV2pAY5g5P66w1HDpW06Yr5Jg+qqTUXCa
         wE0w==
X-Gm-Message-State: AO0yUKWlgqyWlvrW6uZ6PtaBAQcPHzT0V6LDbrUDbWW7L1TnpgO8ki3F
	gjm+UeoMHAR4njEWeFNHxOnPLgY9VNyulH0kuo0=
X-Google-Smtp-Source: AK7set8b6frP8qQ/XCip7ZXpTCTgMPV+GQkreiQni4yk31z67tQf4F5+Ur4U/TM2j+3DYKWim4IKeS8lgjx/KNzHlqA=
X-Received: by 2002:a05:6870:c885:b0:163:6b1f:ceb8 with SMTP id
 er5-20020a056870c88500b001636b1fceb8mr202556oab.200.1674801930860; Thu, 26
 Jan 2023 22:45:30 -0800 (PST)
MIME-Version: 1.0
References: <CAGQ3h144Hp00zHw+F2Px2+dFYtXti6aoBDYs7qe9j0tEZFbiyg@mail.gmail.com>
 <a189ac7d-e8bd-5a11-7a61-26428ca043ef@gmail.com>
In-Reply-To: <a189ac7d-e8bd-5a11-7a61-26428ca043ef@gmail.com>
From: Nikita Gupta <nikitagupta2509@gmail.com>
Date: Fri, 27 Jan 2023 12:15:18 +0530
Message-ID: <CAGQ3h16Bi+h1-_u2Y1HaAcsQPU6E05_rnaY6cWXd_pTE=YZPFA@mail.gmail.com>
Subject: Re: [yocto] Error while adding " libimxvpuapi2" and "gstreamer" pkgs
 in my local.conf for imx8mplus
To: Khem Raj <raj.khem@gmail.com>, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000287bf205f33936cd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 06:45:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59070

--000000000000287bf205f33936cd
Content-Type: text/plain; charset="UTF-8"

Hello sir

Yes, i had accepted everything while sourcing the build directory before
bitbake (there was step asking for accept t&c) but not set ACCEPT_FSL_EULA
= "1" such thing in local.conf or metadata .

Regards
Nikita Gupta


On Wed, Jan 25, 2023, 22:51 Khem Raj <raj.khem@gmail.com> wrote:

> On 1/25/23 4:47 AM, Nikita Gupta wrote:
> > Hello list,
> >
> > I was just making image for imx8mplus by adding few pkgs in my
> > local.conf but encountered few errors so i am here for your help.
> > I added below pkgs in my local.conf file
> >
> > IMAGE_INSTALL:append = "gstreamer1.0 gstreamer1.0-plugins-base
> > gstreamer1.0-plugins-good gstreamer1.0-plugins-bad
> > gstreamer1.0-plugins-ugly  gstreamer1.0-libav imx-vpuwrap imx-gpu-g2d
> > imx-gpu-viv gstreamer1.0-plugins-imx imx-gst1.0-plugin"
> > LICENSE_FLAGS_WHITELIST = "commercial"
> > IMAGE_INSTALL:append = "kernel-devsrc"
> > IMAGE_INSTALL_append += "gstreamer1.0-rtsp-server
> gst-variable-rtsp-server"
> > IMAGE_INSTALL:append = " gtk+3"
> > CORE_IMAGE_EXTRA_INSTALL += " opencv libopencv-core-dev
> > libopencv-highgui-dev libopencv-imgproc-dev libopencv-objdetect-dev
> > libopencv-ml-dev"
> > IMAGE_ROOTFS_EXTRA_SPACE = "1048576 "
> >
> > So my local.conf file now looks like this
> > So i am getting below error after baking my recipe ( Attached image).
> >
> > Please tell what should I need to do to resolve this.
> >
>
> Do you have ACCEPT_FSL_EULA = "1" set in config metadata e.g. local.conf
> or site.conf ?
>
> > Thanks in advance
> >
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#59056):
> https://lists.yoctoproject.org/g/yocto/message/59056
> > Mute This Topic: https://lists.yoctoproject.org/mt/96519310/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >
>

--000000000000287bf205f33936cd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hello sir<div dir=3D"auto"><br></div><div dir=3D"aut=
o">Yes, i had accepted everything while sourcing the build directory before=
 bitbake (there was step asking for accept t&amp;c) but not set ACCEPT_FSL_=
EULA =3D &quot;1&quot; such thing in local.conf or metadata .</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Regards</div><div dir=3D"auto">Nikita=
 Gupta=C2=A0</div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Jan 25, 2023, 22:51 Khem Raj &lt;<a href=3D"mailto:=
raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">On 1/25/23 4:47 AM, Nikita Gupta wrote:<br>
&gt; Hello list,<br>
&gt; <br>
&gt; I was just making image for imx8mplus by adding few pkgs in my <br>
&gt; local.conf but encountered few errors so i am here for your help.<br>
&gt; I added below pkgs in my local.conf file<br>
&gt; <br>
&gt; IMAGE_INSTALL:append =3D &quot;gstreamer1.0 gstreamer1.0-plugins-base =
<br>
&gt; gstreamer1.0-plugins-good gstreamer1.0-plugins-bad <br>
&gt; gstreamer1.0-plugins-ugly=C2=A0 gstreamer1.0-libav imx-vpuwrap imx-gpu=
-g2d <br>
&gt; imx-gpu-viv gstreamer1.0-plugins-imx imx-gst1.0-plugin&quot;<br>
&gt; LICENSE_FLAGS_WHITELIST =3D &quot;commercial&quot;<br>
&gt; IMAGE_INSTALL:append =3D &quot;kernel-devsrc&quot;<br>
&gt; IMAGE_INSTALL_append +=3D &quot;gstreamer1.0-rtsp-server gst-variable-=
rtsp-server&quot;<br>
&gt; IMAGE_INSTALL:append =3D &quot; gtk+3&quot;<br>
&gt; CORE_IMAGE_EXTRA_INSTALL +=3D &quot; opencv libopencv-core-dev <br>
&gt; libopencv-highgui-dev libopencv-imgproc-dev libopencv-objdetect-dev <b=
r>
&gt; libopencv-ml-dev&quot;<br>
&gt; IMAGE_ROOTFS_EXTRA_SPACE =3D &quot;1048576 &quot;<br>
&gt; <br>
&gt; So my local.conf file now looks like this<br>
&gt; So i am getting below error after baking my recipe ( Attached image).<=
br>
&gt; <br>
&gt; Please tell what should I need to do to resolve this.<br>
&gt; <br>
<br>
Do you have ACCEPT_FSL_EULA =3D &quot;1&quot; set in config metadata e.g. l=
ocal.conf <br>
or site.conf ?<br>
<br>
&gt; Thanks in advance<br>
&gt; <br>
&gt; <br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#59056): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/59056" rel=3D"noreferrer noreferrer" target=3D"_blank">http=
s://lists.yoctoproject.org/g/yocto/message/59056</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/96519310=
/1997914" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoc=
toproject.org/mt/96519310/1997914</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><=
br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/g/yocto/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bla=
nk" rel=3D"noreferrer">raj.khem@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; <br>
</blockquote></div></div></div>

--000000000000287bf205f33936cd--

