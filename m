Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5318ACD4F25
	for <webhook@archiver.kernel.org>; Sun, 17 May 2026 07:02:48 +0000 (UTC)
Received: from mail-dy1-f169.google.com (mail-dy1-f169.google.com [74.125.82.169])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.19574.1779001357626718080
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 May 2026 00:02:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20251104.gappssmtp.com header.s=20251104 header.b=c45sCxVH;
 spf=neutral (domain: theyoctojester.info, ip: 74.125.82.169, mailfrom: jester@theyoctojester.info)
Received: by mail-dy1-f169.google.com with SMTP id 5a478bee46e88-2f30a4601bbso1013648eec.1
        for <yocto@lists.yoctoproject.org>; Sun, 17 May 2026 00:02:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779001357; cv=none;
        d=google.com; s=arc-20240605;
        b=LYt+JKLZ5H/sWO3ZaXr2AJJ+lxZvDcpPUoaaVHGkt7522RIdJtFXwdjn6KeZTtFJm3
         0QhzhNGPDk2S1f2zw4fOijo7YTYnCTk46eHDGWB5GvFU/pN4Yv+B4gDhCgyF3rWzvB22
         X2P+P3fjluMb5l2klHDyR3ygxxqwhNsWXYA7kXo/Pko31YP8F3eC113yVwby85rb6Ak5
         cKTMD5DzovTHlrGo4BPFcjffwKp0vEG4DtJFi6dHsX+17K4dPeWK+jy7/H8OZqoTsUDe
         mgsH0m1Ia1kGqngtW/ob6aGTf6bDbcn6+RE6lX9b7fv9Iz/Fq9hB3646pUG5vML8hQzV
         6prg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=n4FER4YZS98YJJQel4GC3nKZh6L2b4n9f5+ULmfb1dw=;
        fh=JlRysFYozpHOQzE1emFMZBv80GAr62nSnzJJa7lvg9o=;
        b=Ql8V6BuOfjtuH994rdxvR1ctlTbE+AA3//5gXlScHizOzLNxULyg0Say1vAHAKzlU7
         IlpGd6OpJpbWeILev7G2ygcjF4plf5llVrKBJMqJhWq/xvzh17ZIEJG2CpLL4VhMsNRZ
         RMOwv0RQSAhyiY9+96pKDqHGvE+Li1zrp+N+/cQ/Fgo6QGo82SSZrXXjFvhbSlHTmtDb
         880bXrQLW8bs686vvlRfWawzniKauQ/yExeZcIpYv/mXxblplFW302apYKwfJZ/vxaEL
         1Vsm+wtmdNzupCrndpWdyWjaRGh+IDBEBZfdAVvJgs9wNu5KxSy69z0knnQ32KY6RtJ4
         fp4A==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20251104.gappssmtp.com; s=20251104; t=1779001357; x=1779606157; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n4FER4YZS98YJJQel4GC3nKZh6L2b4n9f5+ULmfb1dw=;
        b=c45sCxVHc6LdNnieVW1Y4Y2i7zbvnP9Net3f/pht/a5pnhhFDihDj1GH0XM1SZ2WLp
         s/p3Ay9n55hnfZcJIaYTr9dW2T6hUAp5KTZUQycIenMIPYZWU4O3U3VlH22VbMnqDV1L
         GwZPof2hJiexYpr26HKMQ5Zg3Wm/+DOlGRUrTYC8NRY/TGFE5Bsn0h3P80aIuzsCF7ig
         6z6OzBsyy2uYN7zCRPOEg8vfOaX/tTITIWuoBPiTgWnEXL5TkdnLI+pMFxir3eJsSEzt
         1EHlcaxQlsmJXPKVajy32Y38emoou2GaDwU3KGuPnYjB3vh5hThjLF4ELUfpehtWSnVC
         0hIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779001357; x=1779606157;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n4FER4YZS98YJJQel4GC3nKZh6L2b4n9f5+ULmfb1dw=;
        b=c9oLaMHqszzzCNIdFRCC1puPXeg58jYYRr6+Iivc28ZwQtOiwDODsFzjTgmoa1QJBN
         q2ZVsR7JnoQEnr0ZRXgWROGxYU49FJOo95hb1R9S4XwjIrreQGnPNNKCkJmWYMcNHR0Q
         VY11ejtF/dULds8jAiBSP3SXHvny0/IifbKNjeytkFHeYmtOXGVOd6q5ZQs/ylGmMaRv
         YiBMgqaA74+gb6lZ6CvCk+TcIKlDt6OS6kpOMXmBRW1AhxSfmMXcJpSxiLjikCIXi4ns
         xRWInHw/wB9qOdbAnL4EBDC1L09WeFBbiwWhq/332hFC+vcYcLQttrBkDfScDzIH7Jvt
         LwOQ==
X-Gm-Message-State: AOJu0Yz6lCcFQyXG3FsS/S/29l30dXcCdGjaU1b0pVrXf6PAKX5MGWXu
	uj0vOLkEkawDMe04OTtTfk4WdzKUn4i76yJI74RGEDhuBHyEJW/KBPbBuTRHNc0BLmpj5E+9Fqx
	quZlNae42IZ0qV5oshHofQRLPCCkxBvJhc3bfEK10ovzuXglZzDsgS6E=
X-Gm-Gg: Acq92OFPOb5TBCrAvTz32PzI2We86+QmCgH0bVm4fJKcjfQn4WLWvXy8OutVtyJK5Qg
	VabWyXpyoS7fmQ0wyfrkzCoF8yUVpGTeuA32TSyhNwDvTgriivC1mU4fkEdnnoMvfps/gPMyddV
	a17LAufUavkcd5YL+7f4pbuoMK6S3gL6C6xfzv/GWMp/Z/OfPxwPVfqKo0060U8Rhvae4TmmpCT
	SnjSGIK78zfN0tVS0tPc20sAx5tRF74YCX6aNTzPbRo6Ra3TyQTQgaFn8cJlnTET+dg5yFgIJYB
	Xjh3442d2kDeZPgFuMXCOD25ClXc196+2AyvI2vEYg==
X-Received: by 2002:a05:7301:608c:b0:2df:c5bb:3720 with SMTP id
 5a478bee46e88-303984edb2dmr5629418eec.15.1779001356692; Sun, 17 May 2026
 00:02:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAOEGfx1pmVB-gP8t9bUiMiq1a3awZbyec6drze6YoNoPzS2tLg@mail.gmail.com>
In-Reply-To: <CAOEGfx1pmVB-gP8t9bUiMiq1a3awZbyec6drze6YoNoPzS2tLg@mail.gmail.com>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Sun, 17 May 2026 09:02:09 +0200
X-Gm-Features: AVHnY4IPS_MXlgSDufKjOEahxDGpvw8zkrkh4HdaDE4tIGTrVWnKxxJD1PoAOhY
Message-ID: <CAEt6Nwqvc1y_3Lu3-J1pZV5NDaYf30-_eNaPjpBG3XfOHCM1bA@mail.gmail.com>
Subject: Re: [yocto] yocto git server issues ?
To: yocto@lists.yoctoproject.org, stefan@seefeld.name
Content-Type: multipart/alternative; boundary="000000000000ebb9610651fe0740"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 May 2026 07:02:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66570

--000000000000ebb9610651fe0740
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stefan

please use the https://git.yoctoproject.org endpoints. Bot/crawler attacks
forced us to move behind a CDN, and that doesn't support the git://
protocol. Switching to https:// should get you going immediately, let us
know if not.

Greetz,
Josef

On Sat, May 16, 2026 at 11:47=E2=80=AFPM Stefan Seefeld via lists.yoctoproj=
ect.org
<stefan=3Dseefeld.name@lists.yoctoproject.org> wrote:

> Hello,
> For a little more than a day my team has been unable to use the yocto git
> server, i.e. trying to pull from the `poky` repo resulted in a connection
> failure.
> ``` $ git fetch -v yocto
> Looking up git.yoctoproject.org ... done.
> Connecting to git.yoctoproject.org (port 9418) ... fatal: unable to
> connect to git.yoctoproject.org:
> git.yoctoproject.org[0: 104.18.1.115]: errno=3DConnection timed out
> git.yoctoproject.org[1: 104.18.0.115]: errno=3DConnection timed out
> git.yoctoproject.org[2: 2606:4700::6812:73]: errno=3DNetwork is unreachab=
le
> git.yoctoproject.org[3: 2606:4700::6812:173]: errno=3DNetwork is unreacha=
ble
> ```
>
> I just wanted to check whether this is a known issue with the yocto git
> server, or whether we need to check elsewhere.
>
> Thank you,
>
> --
>
>       ...ich hab' noch einen Koffer in Berlin...
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#66569):
> https://lists.yoctoproject.org/g/yocto/message/66569
> Mute This Topic: https://lists.yoctoproject.org/mt/119350787/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000ebb9610651fe0740
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Stefan<div><br></div><div>please use the <a href=3D"htt=
ps://git.yoctoproject.org">https://git.yoctoproject.org</a> endpoints. Bot/=
crawler attacks forced us to move behind a CDN, and that doesn&#39;t suppor=
t the git:// protocol. Switching to https:// should get you going immediate=
ly, let us know if not.</div><div><br></div><div>Greetz,</div><div>Josef</d=
iv></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"l=
tr" class=3D"gmail_attr">On Sat, May 16, 2026 at 11:47=E2=80=AFPM Stefan Se=
efeld via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org<=
/a> &lt;stefan=3D<a href=3D"mailto:seefeld.name@lists.yoctoproject.org">see=
feld.name@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div>For=
 a little more than a day my team has been unable to use the yocto git serv=
er, i.e. trying to pull from the `poky` repo resulted in a connection failu=
re.</div><div>```






<span style=3D"font-family:monospace"><span style=3D"color:rgb(0,0,0);backg=
round-color:rgb(255,255,255)">$ git fetch -v yocto </span><span style=3D"co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">=C2=A0</span><br><span st=
yle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">Looking up <a hr=
ef=3D"http://git.yoctoproject.org" target=3D"_blank">git.yoctoproject.org</=
a> ... done.</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255=
,255,255)">
</span><br><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Connecting to <a href=3D"http://git.yoctoproject.org" target=3D"_blank">=
git.yoctoproject.org</a> (port 9418) ... fatal: unable to connect to <a hre=
f=3D"http://git.yoctoproject.org" target=3D"_blank">git.yoctoproject.org</a=
>:</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"=
>
</span><br><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255=
)"><a href=3D"http://git.yoctoproject.org" target=3D"_blank">git.yoctoproje=
ct.org</a>[0: 104.18.1.115]: errno=3DConnection timed out</span><span style=
=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">
</span><br><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255=
)"><a href=3D"http://git.yoctoproject.org" target=3D"_blank">git.yoctoproje=
ct.org</a>[1: 104.18.0.115]: errno=3DConnection timed out</span><span style=
=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">
</span><br><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255=
)"><a href=3D"http://git.yoctoproject.org" target=3D"_blank">git.yoctoproje=
ct.org</a>[2: 2606:4700::6812:73]: errno=3DNetwork is unreachable</span><sp=
an style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">
</span><br><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255=
)"><a href=3D"http://git.yoctoproject.org" target=3D"_blank">git.yoctoproje=
ct.org</a>[3: 2606:4700::6812:173]: errno=3DNetwork is unreachable</span><b=
r></span>

</div><div>```</div><div><br></div><div>I just wanted to check whether this=
 is a known issue with the yocto git server, or whether we need to check el=
sewhere.</div><div><br></div><div>Thank you,</div><br><span class=3D"gmail_=
signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature">=
<div dir=3D"ltr"><div><img src=3D"https://ci3.googleusercontent.com/mail-si=
g/AIorK4yh4RzsqlxV6irScDGRVZ8a7NRCh_INtpPsAHx2Y8v4Vu3VKsI54RFNs3YRZk_2xTTtM=
MdSCzdNrf5XRUlmF4BkezmtZv-j5c3A4G0hEA"></div><div><pre>      ...ich hab&#39=
; noch einen Koffer in Berlin...
</pre></div></div></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#66569): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66569" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66569</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/119350787/468=
9568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/119350787/4689568</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000ebb9610651fe0740--

