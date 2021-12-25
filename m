Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 314A2C433EF
	for <webhook@archiver.kernel.org>; Sat, 25 Dec 2021 00:15:47 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
 [209.85.167.176])
 by mx.groups.io with SMTP id smtpd.web08.2881.1640391345395328636
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Dec 2021 16:15:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=QPSmYVi6;
 spf=pass (domain: mvista.com, ip: 209.85.167.176,
 mailfrom: jpuhlman@mvista.com)
Received: by mail-oi1-f176.google.com with SMTP id i9so7486709oih.4
        for <yocto@lists.yoctoproject.org>;
 Fri, 24 Dec 2021 16:15:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BRWO1ua/JRP2ocIlMoVgUeFaBaUQ9HBlCb4L1kYFJx4=;
        b=QPSmYVi6oOyfh2A7PiX0x8FvlnRt6va8ov3xSgGj1bJ4x8GRpo+EquUEaaZ4ll+UQl
         qjsJndHmJNzj7MTGWK+P9xRnFCguxlvWVy32KW6Bo8+2xQg6/Nj+XCqEatzSVA+OEHNc
         xrRRrQvOL1c6z5sRB3PpIs0BLYg07dUFNTYoc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BRWO1ua/JRP2ocIlMoVgUeFaBaUQ9HBlCb4L1kYFJx4=;
        b=A2UY9Q74OUMHGkxHygybarOxdCwQf3mRY8xyl6+WmOVgO4e9g0QWWQcNrcWHR9zv1A
         osLlWAVfMk836TR7fw6zBKhFLLiDf9YQHGlEMqhDa+sOgdvtglNGSLpen89I7dpr3fg3
         xq7LKBhz466+wPtsAX9voJWygM+Zy6Ee0/KoksWnMK4ilg8w1UPLRwIT52126r9cc+MU
         PPVm4imS6NqtiGMuDXhw5FrcfCGf1mQNpIi+PVgKUC+cJaYlFTdMQf+rCB+D7rLPCCp8
         5O3gg/4cAZOHMFrh79lj9L2YKkJ76HqK2VodNRRre+B+Zt5rWmwphydB9mQRjajXklfo
         eX6Q==
X-Gm-Message-State: AOAM531hIu+eQNUkxUID0lt51n5HwVp/tVYZ0sUfq133MDSr7nBi/aMp
	swtsVQuBAj8Lc3zdDxLbJ7JpJDBOC15KR+YMQOz3ow==
X-Google-Smtp-Source: 
 ABdhPJxOUnvBHGaqBMvMi6mS9SDCHPpOjOKB9JzEFy0hMG60FZMH4e0c5mg+5C1axhbKUkcNme4/XFupVXhYDd3iBnA=
X-Received: by 2002:a05:6808:d4d:: with SMTP id
 w13mr6318741oik.85.1640391344565;
 Fri, 24 Dec 2021 16:15:44 -0800 (PST)
MIME-Version: 1.0
References: <a2uY.1640379907858436042.H0yF@lists.yoctoproject.org>
In-Reply-To: <a2uY.1640379907858436042.H0yF@lists.yoctoproject.org>
From: Jeremy Puhlman <jpuhlman@mvista.com>
Date: Fri, 24 Dec 2021 16:15:34 -0800
Message-ID: 
 <CADe5tdM8NxO4DzRbWUAcc_E+p_s7n64nfz63wo1KQKGk1P2LTQ@mail.gmail.com>
Subject: Re: [yocto] Build failure when adding meta-cgl
To: gkarasin@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000062c29605d3ed5f22"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 25 Dec 2021 00:15:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55657

--00000000000062c29605d3ed5f22
Content-Type: text/plain; charset="UTF-8"

I haven't tested with the distro config in a while. Its highly likely its a
bit crusty. I will gladly take any patches or take a look at it when we I
get back from break.

On Fri, Dec 24, 2021 at 4:05 PM <gkarasin@gmail.com> wrote:

> Hi,
>
> I recently cloned yocto project and followed the guide(
> https://git.yoctoproject.org/meta-cgl/about/) to build a cgl image.
> But when running any bitbake command I got:
>
> *gabi@ubuntu-lp:~/yocto/cgl$ bitbake-layers show-recipes  "*-image-*"*
> *NOTE: Starting bitbake server...*
> *ERROR: ParseError at
> /home/gabi/yocto/poky/meta-cgl/meta-cgl-common/conf/distro/poky-cgl.conf:1:
> Could not include required file conf/distro/poky-lsb.conf*
>
>
> *ERROR: ParseError at
> /home/gabi/yocto/poky/meta-cgl/meta-cgl-common/conf/distro/poky-cgl.conf:1:
> Could not include required file conf/distro/poky-lsb.conf*
> *gabi@ubuntu-lp:~/yocto/cgl$ bitbake core-image-minimal*
> *ERROR: ParseError at
> /home/gabi/yocto/poky/meta-cgl/meta-cgl-common/conf/distro/poky-cgl.conf:1:
> Could not include required file conf/distro/poky-lsb.conf*
>
> From what I see poky-lsb was replaced by poky-altcfg in:
>
> *commit a91448bf731ef29a841a93e991e7b75efb5f1e28*
> *Author: Richard Purdie <richard.purdie@linuxfoundation.org
> <richard.purdie@linuxfoundation.org>>*
> *Date:   Wed Aug 28 17:21:23 2019 +0100*
>
> *    poky-altcfg: Replace poky-lsb with poky-altcfg*
>
> *    LSB has been removed, replace poky-lsb with poky-altcfg, a place*
> *    where we can test different configurations on the autobuilder as well*
> *    as showing an example of how to subclass a distro configuration.*
>
> *    (From meta-yocto rev: 00fdefff55717331a220fe624f29c387970d31d7)*
>
> *    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org
> <richard.purdie@linuxfoundation.org>>*
>
>
> Results in failing the first line in poky-cgl.conf:
> meta-cgl/meta-cgl-common/conf/distro/poky-cgl.conf:1:require
> conf/distro/poky-lsb.conf
>
> After changing it to "require conf/distro/poky-altcfg.conf" bitbake seems
> to run fine.
>
> Haven't found any fix or bug on it, is it a known issue or maybe I missed
> something?
>
> Thanks,
> Gabi
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55656):
> https://lists.yoctoproject.org/g/yocto/message/55656
> Mute This Topic: https://lists.yoctoproject.org/mt/87946236/2167262
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jpuhlman@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

-- 
Jeremy Puhlman
Montavista Software, LLC.

--00000000000062c29605d3ed5f22
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I haven&#39;t tested with the distro config in a while. It=
s highly likely its a bit crusty. I will gladly take any patches or take a =
look at it when we I get back from break.</div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 24, 2021 at 4:05 PM &l=
t;<a href=3D"mailto:gkarasin@gmail.com">gkarasin@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br><br>I rece=
ntly cloned yocto project and followed the guide(<a href=3D"https://git.yoc=
toproject.org/meta-cgl/about/" rel=3D"noopener" target=3D"_blank">https://g=
it.yoctoproject.org/meta-cgl/about/</a>) to build a cgl image.<br>But when =
running any bitbake command I got:<br>
<blockquote><em>gabi@ubuntu-lp:~/yocto/cgl$ bitbake-layers show-recipes=C2=
=A0 &quot;*-image-*&quot;</em>
<div><em>NOTE: Starting bitbake server...</em></div>
<div><em>ERROR: ParseError at /home/gabi/yocto/poky/meta-cgl/meta-cgl-commo=
n/conf/distro/poky-cgl.conf:1: Could not include required file conf/distro/=
poky-lsb.conf</em></div>
<div><em>ERROR: ParseError at /home/gabi/yocto/poky/meta-cgl/meta-cgl-commo=
n/conf/distro/poky-cgl.conf:1: Could not include required file conf/distro/=
poky-lsb.conf<br><br></em></div>
<div><em>gabi@ubuntu-lp:~/yocto/cgl$ bitbake core-image-minimal</em></div>
<div><em>ERROR: ParseError at /home/gabi/yocto/poky/meta-cgl/meta-cgl-commo=
n/conf/distro/poky-cgl.conf:1: Could not include required file conf/distro/=
poky-lsb.conf</em></div>
</blockquote>
<div>From what I see poky-lsb was replaced by poky-altcfg in:<br>
<blockquote>
<div><em>commit a91448bf731ef29a841a93e991e7b75efb5f1e28</em></div>
<div><em>Author: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxf=
oundation.org" target=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt;=
</em></div>
<div><em>Date:=C2=A0 =C2=A0Wed Aug 28 17:21:23 2019 +0100</em></div>
<div>=C2=A0</div>
<div><em>=C2=A0 =C2=A0 poky-altcfg: Replace poky-lsb with poky-altcfg</em><=
/div>
<div><em>=C2=A0 =C2=A0=C2=A0</em></div>
<div><em>=C2=A0 =C2=A0 LSB has been removed, replace poky-lsb with poky-alt=
cfg, a place</em></div>
<div><em>=C2=A0 =C2=A0 where we can test different configurations on the au=
tobuilder as well</em></div>
<div><em>=C2=A0 =C2=A0 as showing an example of how to subclass a distro co=
nfiguration.</em></div>
<div><em>=C2=A0 =C2=A0=C2=A0</em></div>
<div><em>=C2=A0 =C2=A0 (From meta-yocto rev: 00fdefff55717331a220fe624f29c3=
87970d31d7)</em></div>
<div><em>=C2=A0 =C2=A0=C2=A0</em></div>
<div><em>=C2=A0 =C2=A0 Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:=
richard.purdie@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxf=
oundation.org</a>&gt;</em></div>
</blockquote>
<br>Results in failing the first line in poky-cgl.conf:<br>meta-cgl/meta-cg=
l-common/conf/distro/poky-cgl.conf:1:require conf/distro/poky-lsb.conf<br><=
br>After changing it to &quot;require conf/distro/poky-altcfg.conf&quot; bi=
tbake seems to run fine.<br><br>Haven&#39;t found any fix or bug on it, is =
it a known issue or maybe I missed something?<br><br>Thanks,<br>Gabi</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55656): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55656" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55656</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/87946236/2167=
262" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/87946236/2167262</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jpuhlman@mvista.com" target=3D"_blank">jpuhlman@=
mvista.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">Jeremy Puhlman<br>Montavista Software, LLC.</div=
>

--00000000000062c29605d3ed5f22--

