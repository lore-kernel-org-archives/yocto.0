Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1080C04A95
	for <webhook@archiver.kernel.org>; Sun, 25 Sep 2022 21:03:22 +0000 (UTC)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com
 [209.85.217.53])
 by mx.groups.io with SMTP id smtpd.web10.21112.1664139795382925586
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Sep 2022 14:03:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=h5l5uW7G;
 spf=pass (domain: gmail.com, ip: 209.85.217.53,
 mailfrom: adrian.freihofer@gmail.com)
Received: by mail-vs1-f53.google.com with SMTP id 63so4862080vse.2
        for <yocto@lists.yoctoproject.org>;
 Sun, 25 Sep 2022 14:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=GCB6UA9nmJh9tYQ0bfVWg0PqLcplK3B1EoC2fUAEq4k=;
        b=h5l5uW7GoNjr3mHnKQLgC5lKnPPzovDCWDhEz8jiIOmF+L9WrCjWHGa2jPo4QYT1i6
         oY4v3LKGZV8r4iWjvRkviCCUu7SdaGDZT7jC1p1i5mycweP5QVPjhG4pFZEmsof6XC+J
         0jjm17xWe/ekJLqYvWZmgk6eEqkKyxlB3rOsy624evJ9M26174uv7eHyCyFs90W1wKkJ
         lDmJYtfcymB2xRpXShMff65qACsBD59fEsN4VC+0JgZ+fjAImWKxfnN8ys9Xtd2P4fQ1
         FUYmEqEOfLOxQpP++nlt6B9gdz/Pk1/FlXfJuNiZSvxhgePnLvbyHjUIKykJpkL0RF70
         4y4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=GCB6UA9nmJh9tYQ0bfVWg0PqLcplK3B1EoC2fUAEq4k=;
        b=g3ZhHwdZ+y1dOpzzrfKkqhQ75woBpY7cSeEkFwF0/ysFlM/1jLU2eDdTPtxv+pkfcs
         AmG1mc2TtEgtN8ijopSApaV+5GvcH97U4KNa2PBNaSyonAgdlRBawZi7KMMAVmJq2lGN
         ONGvTu2FCX6Diq03vBd4uCSTLfnMGoKxklkFUl2sJ6Xsuw0owE4g5ZqlMzfLm60XVA7c
         v1WS5HOQBoV/wwpnUjX1ZBfcHsf9swwIk2Y7mgbfaUGfqbC187eCKbHAYo3/MBIxno7f
         I0LykyKKOMVBgCIcS1cfNV4mZ/1QY9EsQgaAcgloRTbBLTzdABX8tlVE5ipfch0XCad5
         k4hQ==
X-Gm-Message-State: ACrzQf1qbyEZJzBCdOnnAWbt+ggYY2gEejEnjsC2U5/hrWpwFxiIomK6
	8nj3Ex3nD0ZkCPH6FV0aAIXTSpZSVrlLj5IxegQ=
X-Google-Smtp-Source: 
 AMsMyM4dBalmoYKX8U0AWu8rwPVIYAD1v9nnriV3eJoBXj1s9Qv0trnpOnnTQZMaGSmMqVjSRlowwtxZ354HUew5PLs=
X-Received: by 2002:a67:e1c3:0:b0:39b:340e:ee66 with SMTP id
 p3-20020a67e1c3000000b0039b340eee66mr7088125vsl.19.1664139794425; Sun, 25 Sep
 2022 14:03:14 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CA+6q8-6MRhJwcRFpev62TTQqgU7UcqHRK5MAZvSraBtJ4zL8eQ@mail.gmail.com>
 <18402.1664128901756925482@lists.yoctoproject.org>
In-Reply-To: <18402.1664128901756925482@lists.yoctoproject.org>
From: Adrian Freihofer <adrian.freihofer@gmail.com>
Date: Sun, 25 Sep 2022 23:03:01 +0200
Message-ID: 
 <CAB3asfiET_Lacbc_XOt7eDiEkgO6dUMYgTki9PbWrmpzUGraKQ@mail.gmail.com>
Subject: Re: [yocto] meta-swupdate integration with the custom Yocto image
 #dunfell
To: Mahendra Sondagar <mahendrasondagar08@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004dabcf05e986bdd1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 Sep 2022 21:03:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58157

--0000000000004dabcf05e986bdd1
Content-Type: text/plain; charset="UTF-8"

Hi,

I guess the sw-description file must be added to the Image recipe not to
swupdate.bb.

Note: There is a specific mailing list for swupdate.

Regards,
Adrian

Mahendra Sondagar <mahendrasondagar08@gmail.com> schrieb am So., 25. Sept.
2022, 20:01:

> Thanks, Chetan for swift reply :)
>
> However, swupdate unable to fetch the files mentioned in .bbappend file!
>
> The error logs are attahced here
>
> As i said in my post, I have created recipes-myswupdate in to the
> meta-custom file, which is parallel to meta-swupdate
> All the above files distributions are inside this recipes-myswupdate file
> I guess, that's the issue
>
> From the error logs, you can see, it's tries to find the file in to the
> default *meta-swupdate/recipes-support* files rather than
> *meta-custom/recipes-myswupdate*!
>
> Anyone else ?
>
> Regards
> Mahendra
>
>
> Thanks,
> Mahendra Sondagar
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58154):
> https://lists.yoctoproject.org/g/yocto/message/58154
> Mute This Topic: https://lists.yoctoproject.org/mt/93911152/4454582
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> adrian.freihofer@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000004dabcf05e986bdd1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">I guess =
the sw-description file must be added to the Image recipe not to <a href=3D=
"http://swupdate.bb">swupdate.bb</a>.</div><div dir=3D"auto"><br></div><div=
 dir=3D"auto">Note: There is a specific mailing list for swupdate.</div><di=
v dir=3D"auto"><br></div><div dir=3D"auto">Regards,</div><div dir=3D"auto">=
Adrian</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">Mahendra Sondagar &lt;<a href=3D"mailto:mahendrasondagar08@gmai=
l.com">mahendrasondagar08@gmail.com</a>&gt; schrieb am So., 25. Sept. 2022,=
 20:01:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><p>Thanks, Chetan for swift=
 reply :)<br><br>However, swupdate unable to fetch the files mentioned in .=
bbappend file!<br><br>The error logs are attahced here <br><br>As i said in=
 my post, I have created recipes-myswupdate in to the meta-custom file, whi=
ch is parallel to meta-swupdate<br>All the above files distributions are in=
side this recipes-myswupdate file <br>I guess, that&#39;s the issue <br><br=
>From the error logs, you can see, it&#39;s tries to find the file in to th=
e default <strong>meta-swupdate/recipes-support</strong> files rather than =
<strong>meta-custom/recipes-myswupdate</strong>!<br><br>Anyone else ?<br><b=
r>Regards<br>Mahendra <br><br><br>Thanks,<br>Mahendra Sondagar</p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58154): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58154" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/58154</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/93911152/4454=
582" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/93911152/4454582</a><br>
Mute #dunfell:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/dunfell" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoc=
toproject.org/g/yocto/mutehashtag/dunfell</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:adrian.freihofer@gmail.com" target=3D=
"_blank" rel=3D"noreferrer">adrian.freihofer@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000004dabcf05e986bdd1--

