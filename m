Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6886E95A96
	for <webhook@archiver.kernel.org>; Mon,  9 Oct 2023 13:12:09 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web11.60841.1696857125353428537
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Oct 2023 06:12:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=jB/3MQz9;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.52, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-99c3c8adb27so764826866b.1
        for <yocto@lists.yoctoproject.org>; Mon, 09 Oct 2023 06:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1696857124; x=1697461924; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Lpd5pc024ViRV1qcJPuzpETcQ7t2Q2t8dUZgTcID/Zc=;
        b=jB/3MQz9NP1rKpdc6CyLiDrO/wtOodlr3s24hfrP/RaexZt7XJkBJIi90fO6lznEAF
         wm7FKzZHOgOMqqQ1fgCmuMkOozTCNBhsKWKjuPwLAmmR7mKeM3QsHnRnqxJXS3VKIDaE
         LxrQ79QOitQSRkfC81joCbOAycKJxFpJO1X4PN89VYu5M4+4mE5nCjxthzD5lzaqOj49
         bm0So8BAA/+0pu2lX8HSTlhqcPAvqAnRV8gVrjyUAg0EaxAN1U4JwmItiVOUfiWHKdmf
         yGISfkqwmKA+6RWqdIsy2Zn+VM4lqjohBm0dJRPy9zOoOReXzGaYdzKAwfJ9FatRoQYy
         d10A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696857124; x=1697461924;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lpd5pc024ViRV1qcJPuzpETcQ7t2Q2t8dUZgTcID/Zc=;
        b=nmBmPeZGkCXRero1dUtmz64dCSI1gIpTT/8VzvCU9mWbCOboBTu/A+HKR2qV87MZGF
         a7yM3au2eBdyA5F/bPl0StbPjBpGsvXKhhbZDpA8jz56f80CR3+rPQCIxoGgIPOgN3mn
         Wodo+cwEdl6FeKcPhRUFdELLi28jPd3K/kv0aOZmfkWAvvCmsVjDAwXcXSH7mUQtpohf
         Tw4CX9rsYNL58q7cW2vuL5hn4qOQyox3NQwIyTSN+6qJS2Xw1XmuWncqMzTUbq+JM6kj
         lZJHdMVai83tBRambagTQh9Kz+wq3FdfjSIdok93RMVPs3RwaKMJnMtGAQ07aLSH/hWg
         CL5w==
X-Gm-Message-State: AOJu0YwVDXEH99AMzQJgeplnj3GiOdRGTOOk2xc6yiMOAjs3GgcCkuAf
	4Vu+51WkhiBGqoneJAGxqd12izoVlt8Oh/a4Uf1Yyg==
X-Google-Smtp-Source: AGHT+IGYcM1ISLLTG/87/slrC6m5rrroxzgVByK2d9j6qJ8pzHpwK0tb9I/VmNPcxtVlq0dV0p/mI/VZay/iALnVH00=
X-Received: by 2002:a17:906:30d6:b0:9ad:a4bd:dc67 with SMTP id
 b22-20020a17090630d600b009ada4bddc67mr11338569ejb.50.1696857123284; Mon, 09
 Oct 2023 06:12:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBnjjq1YO3o7r1upd2FR5rP8cX24VbzccMTsK-XGw5-624A@mail.gmail.com>
In-Reply-To: <CAPJWBnjjq1YO3o7r1upd2FR5rP8cX24VbzccMTsK-XGw5-624A@mail.gmail.com>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Mon, 9 Oct 2023 15:11:37 +0200
Message-ID: <CAEt6NwrNMDodSnjYnYd==0raYMnrU+bVb6aTz+pe9vK6EhWP-Q@mail.gmail.com>
Subject: Re: [yocto] continuous security updates for the Linux system
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000117ff40607485671"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Oct 2023 13:12:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61285

--000000000000117ff40607485671
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Please see https://wiki.yoctoproject.org/wiki/System_Update

Full disclosure: I work for Mender, which is one of the mentioned OTA
solutions - mender.io

Greetz,
Josef

On Mon, Oct 9, 2023 at 2:56=E2=80=AFPM MOHAMMED HASSAN <hassanchattarki@gma=
il.com>
wrote:

> Hi guys,
> I want to know more about security updates in yocto.
> So generally we update our distros when we get pop-ups about security
> updates and it's done. But what if my device is installed at a
> remote location? How does security update take place in the case of yocto=
?
> How can we do it?
> Any other relevant information is graciously welcomed.
>
>
> Thanks and Regards,
> Hassan
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61284):
> https://lists.yoctoproject.org/g/yocto/message/61284
> Mute This Topic: https://lists.yoctoproject.org/mt/101851310/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000117ff40607485671
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Please see=C2=A0<a href=3D"https://wiki.yoctoproject.org/w=
iki/System_Update">https://wiki.yoctoproject.org/wiki/System_Update</a><div=
><br></div><div>Full disclosure: I work for Mender, which is one of the men=
tioned OTA solutions - <a href=3D"http://mender.io">mender.io</a></div><div=
><br></div><div>Greetz,</div><div>Josef</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 9, 2023 at 2:56=E2=
=80=AFPM MOHAMMED HASSAN &lt;<a href=3D"mailto:hassanchattarki@gmail.com">h=
assanchattarki@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr">Hi guys,<div>I want to know more a=
bout security updates in yocto.</div><div>So generally we update our distro=
s when we get pop-ups about security updates and it&#39;s done. But what if=
 my device is installed at a remote=C2=A0location? How does security update=
=C2=A0take place in the case of yocto? How can we do it?</div><div>Any othe=
r=C2=A0relevant information is graciously welcomed.</div><div><br></div><di=
v><br></div><div>Thanks and Regards,</div><div>Hassan=C2=A0</div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#61284): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61284" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61284</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/101851310/468=
9568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/101851310/4689568</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000117ff40607485671--

