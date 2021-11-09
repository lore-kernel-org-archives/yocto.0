Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6799C433F5
	for <webhook@archiver.kernel.org>; Tue,  9 Nov 2021 23:23:18 +0000 (UTC)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com
 [209.85.222.48])
 by mx.groups.io with SMTP id smtpd.web09.4739.1636500197540618772
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Nov 2021 15:23:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=M/sVrkro;
 spf=pass (domain: gmail.com, ip: 209.85.222.48,
 mailfrom: joel.winarske@gmail.com)
Received: by mail-ua1-f48.google.com with SMTP id q13so1053841uaq.2
        for <yocto@lists.yoctoproject.org>;
 Tue, 09 Nov 2021 15:23:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2XLS6cIysK9DdSjYJsl8qms+ZJ8B1ybh7HbaSdbq2So=;
        b=M/sVrkrozyNTzdesrPlRvC643kpcKiCY4QscTI6R9Ko0WSm8ybxumpo7lYOSfyBeke
         WXfxON1ErJJghnhUcXbKye8ZEp02vfVhFLn9cILPFtqtvdxFggFmkPvqQ7hSvUGqzS1l
         pdU7Zu9LhSzUAvfPWBQjxcgb3eFi2E2rq/urjZrD3Fg4JMFY5mbm3kALoVnYlItkZwMP
         wcglT6dzR9/gn5lqBsHVGF1y5scSLrR0DanyCUOBfo8uGIkC9aE2QtSwVuc2+zBhLb55
         udjDcELOOtg7nLxGyVOJQEvjs4cOtjNtCg83TSh4CdU/8eJdq88d2rgqHqYjuZAsJU+A
         kkTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2XLS6cIysK9DdSjYJsl8qms+ZJ8B1ybh7HbaSdbq2So=;
        b=jtHJ6ErVPsGXW4tm6aCATQOzhwHZtcitN0XPT9AjL3D92I1faRsRAoD86NXdCpaJtD
         iintcoaroaaUIXo+oYqQdnccmzdo4u1DPwwp2Iqb6d5POMqyPB3KiV949KbaEu8yyv6E
         KZzaOGhzfTp1LozX6GrDIc1oB5aYDy6Jmf+jpt2ZdOP37XExWHDm1q1CqC872OyaepXS
         ORhcz0yY6SrV7bGj9e1/nYUUoNEzSLex9Knh0xQeWrqwz1DTqHyg1QinAVIB+jgVwVnq
         uRX3wKXYQbCwiEPAWxYDKPD4ESFMZC3/0tiAmtoqmWvEIMVk+9YEs+5QkJDx/IE3P0ll
         d8+w==
X-Gm-Message-State: AOAM5337ahsU6YMl8Yhex820ILUIA4/K6dicRkhZNwM4VQt4YXDb18c0
	yUgjl27n/BTUwIwRC4Ys4Yvbkj24ouLTCJm7H47HYszm
X-Google-Smtp-Source: 
 ABdhPJySHLmK+OYNdugKLszGCmsp6smzmZIrIUEB8UjJbnQv+9fFDUaav9BL0I3sXSBBNZ/eweoCmyr7/DPx3FrNa8w=
X-Received: by 2002:ab0:3049:: with SMTP id x9mr15233684ual.55.1636500196558;
 Tue, 09 Nov 2021 15:23:16 -0800 (PST)
MIME-Version: 1.0
References: <16B60034E7406B64.3576@lists.yoctoproject.org>
In-Reply-To: <16B60034E7406B64.3576@lists.yoctoproject.org>
From: Joel Winarske <joel.winarske@gmail.com>
Date: Tue, 9 Nov 2021 15:23:05 -0800
Message-ID: 
 <CABKMkPKNnQH3gH+KGrQ3ewxFddCb3rdOvGXi-nu+YrtQLsiH4Q@mail.gmail.com>
Subject: Re: [yocto] pre-built native only tool for native and nativesdk
To: Joel Winarske <joel.winarske@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e4093d05d063644e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Nov 2021 23:23:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55295

--000000000000e4093d05d063644e
Content-Type: text/plain; charset="UTF-8"

To eliminate target option from the recipe I just need to make sure the
name of the recipe ends with -native, then removing inherit native works
fine.

On Tue, Nov 9, 2021 at 2:09 PM Joel Winarske via lists.yoctoproject.org
<joel.winarske=gmail.com@lists.yoctoproject.org> wrote:

> I'm trying to sort out how to install a pre-built host-only tool for
> native and nativesdk only.
>
> Using `inherit native` my-recipe-native and nativesdk-my-recipe both build
> fine, only -c populate_sdk generates "rdepends upon non-existent task
> do_package_write_rpm".  Looking at native.bbclass it includes `inherit
> nopackage` which explains the error.
>
> If I remove the `inherit native` and update my recipe name to not include
> `-native` I can build the -native version, only I can't build
> nativesdk-*-native.  A target build is invalid.
>
> What is the recommended pattern to do this, and is there an example of
> this anywhere?
>
>
> Thanks,
> Joel
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55293):
> https://lists.yoctoproject.org/g/yocto/message/55293
> Mute This Topic: https://lists.yoctoproject.org/mt/86943509/2167248
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> joel.winarske@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000e4093d05d063644e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">To eliminate target option from the recipe I just need to =
make sure the name of the recipe ends with -native, then removing inherit n=
ative works fine.<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, Nov 9, 2021 at 2:09 PM Joel Winarske via <a hr=
ef=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;joel.wi=
narske=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@list=
s.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div>I&#39;m trying to sort out how to i=
nstall a pre-built host-only tool for native and nativesdk only.</div><div>=
<br></div><div>Using `inherit native` my-recipe-native and nativesdk-my-rec=
ipe both build fine, only -c populate_sdk generates <code>&quot;rdepends up=
on non-existent task do_package_write_rpm&quot;</code>.=C2=A0 Looking at na=
tive.bbclass it includes `inherit nopackage` which explains the error.<br><=
/div><div><br></div><div>If I remove the `inherit native` and update my rec=
ipe name to not include `-native` I can build the -native version, only I c=
an&#39;t build nativesdk-*-native.=C2=A0 A target build is invalid.<br></di=
v><div><br></div>What is the recommended pattern to do this, and is there a=
n example of this anywhere?<br><div><br></div><div><br></div><div>Thanks,</=
div><div>Joel<br></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55293): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55293" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55293</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86943509/2167=
248" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/86943509/2167248</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:joel.winarske@gmail.com" target=3D"_blank">joel.=
winarske@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000e4093d05d063644e--

