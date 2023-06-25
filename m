Return-Path: <michael@amarulasolutions.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1317EB64DC
	for <webhook@archiver.kernel.org>; Sun, 25 Jun 2023 15:12:15 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web10.13166.1687705932907830535
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Jun 2023 08:12:13 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@amarulasolutions.com header.s=google header.b=hlKfNprn;
 spf=pass (domain: amarulasolutions.com, ip: 209.85.128.49, mailfrom: michael@amarulasolutions.com)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-3f90b8acefdso21500635e9.1
        for <yocto@lists.yoctoproject.org>; Sun, 25 Jun 2023 08:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1687705931; x=1690297931;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=biaRsAVqiVwRC3F0NFXWCO8Ish6Nt0Xj95ZrOLl59K4=;
        b=hlKfNprn4dfXU/gLKGGdG4u6X2m/QS/QMD33I6WHpbvYEC6xOkmHaQOaPNeIMd758X
         leFHHGdlUvTkdIk3NWJNRM6A5ZSlFPu4ClpvIFPVwSQVFwLGSbOEqj7Y/k7Ie5jBtCeH
         MO/Zt3tnAsIzkc1bVNxP3Pl/g4HRTTPEMY1QE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687705931; x=1690297931;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=biaRsAVqiVwRC3F0NFXWCO8Ish6Nt0Xj95ZrOLl59K4=;
        b=k+W7mXycER51lHBLb8TfRbVcOn43QEvnjBhNtGbHi6vOl44cdOH7e7HXJm/o9ymPXe
         5C9JHcfxd6owa73V3icVjoZt/3Ndrbq5e/sxuA2lPVgT6bK11Bcx4lyDwBrwkLk6uLgO
         avV6v4SzbmhVhn8cge9DF/rJowXx447g6/Pm5IwuDe4yqFvPRf7kF4AzDK8QUX6rqYEW
         j8p7j4VOn7vEeOZTEJ94gv2Yt1lPQ7LGuDo7qdaDo2TSiV5alQDEh83+uXqAC9Hkv/+Y
         kQ4A+gw693V9YHVjAFfLCGSFU9nDsjA3iqmyz/P09+dm4q1LnISodEZwHO19qn/tErDf
         Bc2g==
X-Gm-Message-State: AC+VfDzwji5P1BLAkgCwLNkbx/g0kFswSIPGsXRmfe/QD3jFP18QZuns
	ggq9DSlwIPNFMtrivxsLnBCDsVjx+nc4jSL5Ft5z6Q==
X-Google-Smtp-Source: ACHHUZ6avO52MAF9rR4yJua5a40/HbxqzgzfFLEQPHqzAbK7JwQ/2BeZgdYFxgr9eD6sXPlh9HdPRgghjl7Vox1EWo0=
X-Received: by 2002:a7b:cbd9:0:b0:3fa:7d9d:456f with SMTP id
 n25-20020a7bcbd9000000b003fa7d9d456fmr3963576wmi.40.1687705931026; Sun, 25
 Jun 2023 08:12:11 -0700 (PDT)
MIME-Version: 1.0
References: <295f.1687705561082738712.NH3Z@lists.yoctoproject.org>
In-Reply-To: <295f.1687705561082738712.NH3Z@lists.yoctoproject.org>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Sun, 25 Jun 2023 17:11:58 +0200
Message-ID: <CAOf5uw=Z731pgzSq6WvDQgz0MO_ugdPQXBL-3j7Nws5cPMB64g@mail.gmail.com>
Subject: Re: [yocto] #gcc Is it possible to have Yocto Build go with distcc?
To: mwen@ambarella.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008128cb05fef5a808"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 Jun 2023 15:12:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60436

--0000000000008128cb05fef5a808
Content-Type: text/plain; charset="UTF-8"

Hi

Il dom 25 giu 2023, 17:06 <mwen@ambarella.com> ha scritto:

> Hi
>
> As you know Yocto Build is time consuming, we'd like to check with you to
> see if there is any way to have Yocto Build go with distcc as we have
> multiple build servers shared by the office members. If going with distcc,
> they can be effectively leveraged.
> We did some try, but hit below error immediately. :(
>


Why not proxy state cache?

Michael

>
>    ljiang@shbuild10 13:25:50
> :/daily_build/yocto/yocto_daily/ambarella/out/yocto_out/cv72_gage$ make
> ipcam_config
>
> /usr/lib/python3/dist-packages/html5lib/_trie/_base.py:3:
> DeprecationWarning: Using or importing the ABCs from 'collections' instead
> of from 'collections.abc' is deprecated since Python 3.3, and in 3.10 it
> will stop working
>
>   from collections import Mapping
>
> ERROR: Error running gcc  --version: distcc[3226461] (main) CRITICAL!
> distcc seems to have invoked itself recursively!
>
> distcc[3226460] ERROR: compile (null) on localhost failed with exit code
> 111
>
>
>
> make: *** [/daily_build/yocto/yocto_daily/ambarella/build/bin/yocto/
> inc-yocto-build.mk:96: kconfig-native] Error 1
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60435):
> https://lists.yoctoproject.org/g/yocto/message/60435
> Mute This Topic: https://lists.yoctoproject.org/mt/99770227/1862104
> Mute #gcc:https://lists.yoctoproject.org/g/yocto/mutehashtag/gcc
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> michael@amarulasolutions.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000008128cb05fef5a808
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi<br><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">Il dom 25 giu 2023, 17:06  &lt;<a href=3D"mailto:mwe=
n@ambarella.com">mwen@ambarella.com</a>&gt; ha scritto:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">Hi=C2=A0<br><br>As you know Yocto Build is time consum=
ing, we&#39;d like to check with you to see if there is any way to have Yoc=
to Build go with distcc as we have multiple build servers shared by the off=
ice members. If going with distcc, they can be effectively leveraged.<br>We=
 did some try, but hit below error immediately. :(<br></blockquote></div></=
div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"aut=
o">Why not proxy state cache?</div><div dir=3D"auto"><br></div><div dir=3D"=
auto">Michael=C2=A0</div><div dir=3D"auto"><div class=3D"gmail_quote"><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><br>
<p style=3D"margin:0px"><span style=3D"font-size:14.0pt;font-family:&#39;Mi=
ngLiU-ExtB&#39;,serif;color:#1f3864">=C2=A0 =C2=A0ljiang@shbuild10 13:25:50=
 :/daily_build/yocto/yocto_daily/ambarella/out/yocto_out/cv72_gage$ make ip=
cam_config</span></p>
<p style=3D"margin:0px"><span style=3D"font-size:14.0pt;font-family:&#39;Mi=
ngLiU-ExtB&#39;,serif;color:#1f3864">/usr/lib/python3/dist-packages/html5li=
b/_trie/_base.py:3: DeprecationWarning: Using or importing the ABCs from &#=
39;collections&#39; instead of from &#39;collections.abc&#39; is deprecated=
 since Python 3.3, and in 3.10 it will stop working</span></p>
<p style=3D"margin:0px"><span style=3D"font-size:14.0pt;font-family:&#39;Mi=
ngLiU-ExtB&#39;,serif;color:#1f3864">=C2=A0 from collections import Mapping=
</span></p>
<p style=3D"margin:0px"><span style=3D"font-size:14.0pt;font-family:&#39;Mi=
ngLiU-ExtB&#39;,serif;color:#1f3864;background:yellow">ERROR: Error running=
 gcc=C2=A0 --version: distcc[3226461] (main) CRITICAL! distcc seems to have=
 invoked itself recursively!</span></p>
<p style=3D"margin:0px"><span style=3D"font-size:14.0pt;font-family:&#39;Mi=
ngLiU-ExtB&#39;,serif;color:#1f3864;background:yellow">distcc[3226460] ERRO=
R: compile (null) on localhost failed with exit code 111</span><span style=
=3D"font-size:14.0pt;font-family:&#39;MingLiU-ExtB&#39;,serif;color:#1f3864=
"></span></p>
<p style=3D"margin:0px"><span style=3D"font-size:14.0pt;font-family:&#39;Mi=
ngLiU-ExtB&#39;,serif;color:#1f3864">=C2=A0</span></p>
<p style=3D"margin:0px"><span style=3D"font-size:14.0pt;font-family:&#39;Mi=
ngLiU-ExtB&#39;,serif;color:#1f3864">make: *** [/daily_build/yocto/yocto_da=
ily/ambarella/build/bin/yocto/<a href=3D"http://inc-yocto-build.mk:96" targ=
et=3D"_blank" rel=3D"noreferrer">inc-yocto-build.mk:96</a>: kconfig-native]=
 Error 1</span></p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60435): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60435" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/60435</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/99770227/1862=
104" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/99770227/1862104</a><br>
Mute #gcc:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/gcc=
" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoprojec=
t.org/g/yocto/mutehashtag/gcc</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:michael@amarulasolutions.com" target=
=3D"_blank" rel=3D"noreferrer">michael@amarulasolutions.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div></div>

--0000000000008128cb05fef5a808--

