Return-Path: <prashantsbemail@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D80B6C433EF
	for <webhook@archiver.kernel.org>; Thu, 26 May 2022 05:06:50 +0000 (UTC)
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com
 [209.85.166.175])
 by mx.groups.io with SMTP id smtpd.web10.16308.1653541606985149607
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 May 2022 22:06:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=TMGBbvJ1;
 spf=pass (domain: gmail.com, ip: 209.85.166.175,
 mailfrom: prashantsbemail@gmail.com)
Received: by mail-il1-f175.google.com with SMTP id j6so395210ilk.11
        for <yocto@lists.yoctoproject.org>;
 Wed, 25 May 2022 22:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tDI/LObX9ynLKxaCHkxXlXYariT8WGizs+gUixCCU3c=;
        b=TMGBbvJ1i28wAMP0tOk5+jSrJZlG8z3Lncs8U1uPtlFJ/lsZORtvxEPybnjAosNTK5
         omxff/pXh+6lZFHu+jSjzqAEk/bzlRIBSGdAC+2+d1frLg86ozlcW6Kmi2ZcbGwibr+3
         wpy74KtAsAiUPASjrDfTt2lyzEHLCimOT3eKoETw4sq+gjyYsPsFNOhMBzszx64UHMhM
         uN+ODRwFlf29FgXYR5PHwkDnP9xSybW78TH+LIhmYd6rq+aE9xbb94z7ejq+AhC4IfhJ
         HEAhyf7ygMGLGfFsugV9IkO+FxqkPFjmKHmBem1lr+eCMYej9va9q5qj/c9o0qVODxi4
         cSBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tDI/LObX9ynLKxaCHkxXlXYariT8WGizs+gUixCCU3c=;
        b=NcOWvi+jD+D2ciDynxYrGMUYn5DMUhYrVXCAFz4T5zO8syAB44ckOG9/nJ/RyvB+LU
         CWKVrGuGqwnLnJMON7AOC3YR+aSrKqJmu4SC6uQmpOfE1v8q8jfAZ+T48PqX0I8TayB6
         GpIPfr3yYbJ3nQEGgUMDZyP8/Je50rYQi04Ryq11dnFcpeCAz+Zw8p6Er7PNq9MvOO8S
         zFT0kt9u8G00UX1VhKOVmnSdyZsgxdD777U8hSfOxRF1EZz37qgxUQS7ycxbeqI1KvE5
         2K8FQvk/HxGA53+3Rq+4anZyAHmOMPrxXuaX8JnZc5cqwxraHc2ypkS2lvnNd5p8Jh6X
         k91w==
X-Gm-Message-State: AOAM533FpEYZSc4FpEVFLWzqSs9i332NaX83kMGEUz6SDDlo8HD6bnEf
	bWTJ3Hp5ddutvDAtNrJME5qQ7WGgDR3etfOTENo=
X-Google-Smtp-Source: 
 ABdhPJy3dFxTKz7OyqVYLSjYl3XVqS8wYMwTFHy139b9bSuVwzSHYzTs/jWcJYGNSnXBeIhVY94hiAYMSZHTiTkWD+k=
X-Received: by 2002:a92:ddcb:0:b0:2cf:8e55:e997 with SMTP id
 d11-20020a92ddcb000000b002cf8e55e997mr18069898ilr.8.1653541606379; Wed, 25
 May 2022 22:06:46 -0700 (PDT)
MIME-Version: 1.0
References: <16F25DCAB76F4D97.14582@lists.yoctoproject.org>
In-Reply-To: <16F25DCAB76F4D97.14582@lists.yoctoproject.org>
From: Prashant Badsheshi <prashantsbemail@gmail.com>
Date: Thu, 26 May 2022 10:36:35 +0530
Message-ID: 
 <CAD5wtF2GXLbsdHHDQSci4EvHujpr1JgxDCf-SN1Gf0SpS7Z4DA@mail.gmail.com>
Subject: Re: [yocto] Need help in namespace journal implementation
To: Prashant B <prashantsbemail@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000011d5f705dfe32820"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 May 2022 05:06:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57192

--00000000000011d5f705dfe32820
Content-Type: text/plain; charset="UTF-8"

Can someone help here?

"I am trying to add 'namespace journal' logging for debug purpose"


On Wed, May 25, 2022 at 7:29 PM Prashant Badsheshi via
lists.yoctoproject.org <prashantsbemail=gmail.com@lists.yoctoproject.org>
wrote:

> Hi,
>
> I am working on a yocto based project, I am trying to add namespace
> journal logging for debug purpose.
>
> Can anyone share the steps to create a namespace journal logging in the
> yocto based project.
>
> Also it would be helpful if we have any examples implemented for namespace
> journals.
>
>
>
> Thanks,
>
> Prashant
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57185):
> https://lists.yoctoproject.org/g/yocto/message/57185
> Mute This Topic: https://lists.yoctoproject.org/mt/91333450/6943658
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> prashantsbemail@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000011d5f705dfe32820
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Can someone help here?</div><div><br></div><div><span=
 style=3D"font-family:calibri,sans-serif;font-size:14.6667px">&quot;I am tr=
ying to add &#39;namespace journal&#39; logging for debug purpose&quot;</sp=
an><br></div><div><span style=3D"font-family:calibri,sans-serif;font-size:1=
4.6667px"><br></span></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Wed, May 25, 2022 at 7:29 PM Prashant Badsheshi via=
 <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;p=
rashantsbemail=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.=
com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"auto"><p style=3D"margin:0in;font-siz=
e:11pt;font-family:calibri,sans-serif">Hi,</p><p style=3D"margin:0in;font-s=
ize:11pt;font-family:calibri,sans-serif">I am working on a yocto based proj=
ect, I am trying to add namespace journal logging for debug purpose.</p><p =
style=3D"margin:0in;font-size:11pt;font-family:calibri,sans-serif">Can anyo=
ne share the steps to create a namespace journal logging in the yocto based=
 project.</p><p style=3D"margin:0in;font-size:11pt;font-family:calibri,sans=
-serif">Also it would be helpful if we have any examples implemented for na=
mespace journals.</p><p style=3D"margin:0in;font-size:11pt;font-family:cali=
bri,sans-serif">=C2=A0</p><p style=3D"margin:0in;font-size:11pt;font-family=
:calibri,sans-serif">Thanks,</p><p style=3D"margin:0in;font-size:11pt;font-=
family:calibri,sans-serif">Prashant</p></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#57185): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57185" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57185</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/91333450/6943=
658" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/91333450/6943658</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:prashantsbemail@gmail.com" target=3D"_blank">pra=
shantsbemail@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000011d5f705dfe32820--

