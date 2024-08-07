Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F0FCC52D6F
	for <webhook@archiver.kernel.org>; Wed,  7 Aug 2024 09:13:18 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web10.29195.1723021988567902165
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Aug 2024 02:13:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fOK4+iIW;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-530d0882370so1557421e87.3
        for <yocto@lists.yoctoproject.org>; Wed, 07 Aug 2024 02:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723021987; x=1723626787; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C0cmtvtVsRGYE+6CMyZIbe6+7jURfG0scq356ielDLM=;
        b=fOK4+iIWDfdYYY522JKDiYQbAo5WvJMu9Fd42WMn0+F94LZSeZGr+vRtqUiW7500FJ
         W1uHTJW7VF3yXmPnrtb+vmODR4+xnZODTHkxfwSYRA4dzduNiktt5AfWYjZT+vPB1iAC
         2e4t4PNhCJEMSVWW8DsBQnpRdnhwLz+AV+TrLaflXjcfmRZK/R7eCovsJM4+E1mvYmhr
         SqP7FNskRuxrNdroXITGR5yyATWHpHhkgUtgxzvNEkVHmriqBCjf/yOLZ5/t+vZ9N5i5
         8YUyduCX/CNQuHOjht5U7kloQgCtkVyeoi4NaUUAzIxkIdyAZgiWfHekT0jg0+hQi61e
         kUxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723021987; x=1723626787;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C0cmtvtVsRGYE+6CMyZIbe6+7jURfG0scq356ielDLM=;
        b=Llwoo1K6XQKqObnTB8v3ZB/MZm+5eUK1BkBeUkF9lf3Sba5Wm5tv3xIUlUncbhAI1w
         O26fmQqVigw9UWA9R6mdporKfWX5gp91jFldgHBvP+O7Svn7yqnEERf4OuOWwAIcu7kF
         sOEEJcZRTUkOvXPEQzgFeZKHFrtA8s0QrFs1n7LF4lIToCERYP4qIjIYLd70NburDZan
         P+CdVWNEVOuDD+5tUVsgXXDhXcUQgyBUC9w1inpHRatUcQKOwqq5417fn/YX7TwFYa9s
         HzBUv9/hW1Rtm5JMnchByfItFZIFhlfyF8CoNG3cb4mGK3/VeilgbWSFq9YxGSCEdx5p
         gc4g==
X-Gm-Message-State: AOJu0YxiMIHZWDNAkbiyFS8Kso3XdnEuTgGLD4jTQ2XhRAPhjAAm4qkY
	c9/k57WxM9Pt8H67kt0i3dIyrL+2QgVVn/I9n0AL11OKA4jU4hjyzkZcYnhbApOTotlggIAzaVb
	fzl4f2fjY0V1t7dIpqIANCAg/d+246nOy
X-Google-Smtp-Source: AGHT+IGynr3VAx5LJcsgy+DGTlQ7BHyMIAmwRrzEr7Dj9AEbaWl7YtGpxHGjFxTCByJsnrlRwuxabI5Ul5VPSOml+88=
X-Received: by 2002:a05:6512:3d89:b0:52e:7542:f469 with SMTP id
 2adb3069b0e04-530bb306eefmr12582021e87.0.1723021986163; Wed, 07 Aug 2024
 02:13:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAC3TgA+HFgXcckqxUVgUQsRfJySytZSAj3PtSRD6TLzT5_yDqg@mail.gmail.com>
In-Reply-To: <CAC3TgA+HFgXcckqxUVgUQsRfJySytZSAj3PtSRD6TLzT5_yDqg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 7 Aug 2024 12:12:55 +0300
Message-ID: <CANNYZj-Fzc8eET37nhMCMh4g0T+RS3uMBhtSEStUXbA92ZoThQ@mail.gmail.com>
Subject: Re: [yocto][meta-openembedded] How to properly build a lib package
To: yocto@lists.yoctoproject.org, ycnakajsph@gmail.com
Content-Type: multipart/alternative; boundary="0000000000006cf43b061f145188"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Aug 2024 09:13:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63670

--0000000000006cf43b061f145188
Content-Type: text/plain; charset="UTF-8"

Just about any recipe for libsomething in or-core. You need to find out
what is happening that is special. Is it a prebuilt binary?

Alex

On Wed 7. Aug 2024 at 11.48, Yann CARDAILLAC via lists.yoctoproject.org
<ycnakajsph=gmail.com@lists.yoctoproject.org> wrote:

> Hi all,
>
> I'm working on upgrading different yocto BSPs to scarthgap, I'm having an
> error that I haven't seen. It's the one described here on stack overflow by
> someone else:
>
>
> https://stackoverflow.com/questions/64984897/yocto-package-requires-shared-library-but-no-providers-found-in-rdepends
>
> I have a very simple C library package that provides a shared library.
>
> My package is looking very close to:
> meta-openembedded/meta-oe/recipes-extended/p7zip/p7zip_16.02.bb
> <https://github.com/openembedded/meta-openembedded/blob/master/meta-oe/recipes-extended/p7zip/p7zip_16.02.bb>
>
> I don't really understand why we need to add the lib7z.so()(64bit)? Is
> there a "proper" way of avoiding that as it's not so common in other libs?
>
> I'm also not comfortable adding :
> INSANE_SKIP:${PN} += "dev-so"
>
> If any, can you point me to a simple library build that doesn't require
> the (64bit) that I don't really understand nor the INSANE_SKIP ? To sum up
> my need is to have a simple recipe for a shared library.
>
> Best regards,
>
> Yann CARDAILLAC
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63669):
> https://lists.yoctoproject.org/g/yocto/message/63669
> Mute This Topic: https://lists.yoctoproject.org/mt/107766049/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000006cf43b061f145188
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Just about any recipe for libsomething in or-core. You ne=
ed to find out what is happening that is special. Is it a prebuilt binary?<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed 7. Aug 2=
024 at 11.48, Yann CARDAILLAC via <a href=3D"http://lists.yoctoproject.org"=
>lists.yoctoproject.org</a> &lt;ycnakajsph=3D<a href=3D"mailto:gmail.com@li=
sts.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-col=
or:rgb(204,204,204)"><div dir=3D"ltr"><div>Hi all,</div><div><br></div><div=
>I&#39;m working on upgrading different yocto BSPs to scarthgap, I&#39;m ha=
ving an error that I haven&#39;t seen. It&#39;s the one described here on s=
tack overflow by someone else:<br><br><a href=3D"https://stackoverflow.com/=
questions/64984897/yocto-package-requires-shared-library-but-no-providers-f=
ound-in-rdepends" target=3D"_blank">https://stackoverflow.com/questions/649=
84897/yocto-package-requires-shared-library-but-no-providers-found-in-rdepe=
nds</a></div><div><br></div><div>I have a very simple C library package tha=
t provides a shared library.</div><div><br></div><div>My package is looking=
 very close to: <a href=3D"https://github.com/openembedded/meta-openembedde=
d/blob/master/meta-oe/recipes-extended/p7zip/p7zip_16.02.bb" target=3D"_bla=
nk">meta-openembedded/meta-oe/recipes-extended/p7zip/p7zip_16.02.bb</a></di=
v><div><br></div><div>I don&#39;t really understand why we need to add the =
lib7z.so()(64bit)? Is there a &quot;proper&quot; way of avoiding that as it=
&#39;s not so common in other libs?</div><div><br></div><div>I&#39;m also n=
ot comfortable adding :<br>INSANE_SKIP:${PN} +=3D &quot;dev-so&quot;</div><=
div><br></div><div>If any, can you point me to a simple library build that =
doesn&#39;t require the (64bit) that I don&#39;t really understand nor the =
INSANE_SKIP ? To sum up my need is to have a simple recipe for a shared lib=
rary.<br></div><div><br></div><div>Best regards,</div><div><br></div><div>Y=
ann CARDAILLAC<br></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63669): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63669" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63669</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/107766049/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/107766049/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000006cf43b061f145188--

