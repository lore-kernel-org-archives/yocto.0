Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D396EC7EE23
	for <webhook@archiver.kernel.org>; Fri, 26 May 2023 11:38:43 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web11.5895.1685101114215386364
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 May 2023 04:38:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Ic/FAmoq;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: marek.belisko@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-4f3b39cea1eso648293e87.3
        for <yocto@lists.yoctoproject.org>; Fri, 26 May 2023 04:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685101112; x=1687693112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AL4V93m6dcj7fxZAEVqzi5hLSWgfddkF6z76/JkRYaw=;
        b=Ic/FAmoqn7IpZCOgjFwHigUhygsAHMk6dxHX0IX+yvA9m1yd6bLFf/k8O+vLAem7bf
         8aTwAHLeFNlw3FXlK8VzD8Q3/tITkBdSUHg3uFWW4mR1rSSNBU+XgjVB5KAQh5jsFRB3
         qTvzm83dT0/CpU6KJHxtxzxN6p8jPTJlwcLzrJwKHSIj1qjC/q9ykcKSls//BWls3U9l
         puC3ezmigJYMuFYODrDcJJNlDlz1mZvLtmxOahVlp9XiPYvoHs+cWpBYqYvOxLztX8OU
         R4G5S5Nz5+Zn35CZwioc0tHqrp1rEWmnOailJQpH/bNG8dcKGjE+QKjEfS9RX/rXX2vn
         PTBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685101112; x=1687693112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AL4V93m6dcj7fxZAEVqzi5hLSWgfddkF6z76/JkRYaw=;
        b=VVts8bB/Ss+KwQ2F7o9RX2+yxG3jaR3elXtHc80rbylRnrDhnXVA8zzjMF/giJ7fkQ
         owTnCGgnvVz3enHiWkahrN/boQxgOUA2nHL6HoXAmOOLcvHF5h1CD5PH1sLJ4r37/4Q0
         lc4oey4OEaQWAdmPt0yyfglE/yE/Bz5URomLdbjSgnouhuh9mSAqclKBY0CP88yvwOQx
         5UEK8aXmaVR2nLZNp7z89pdl7GmlEswUF+JqkIUMPEiHrOvrebd4to6g+Jx9TYvHYfV6
         iT9wLyOB6nlpHOunS1cf0egEs3g0hkPoyJoVo9ikWFUsSgr2vEPwbTu8+zbcPWMZW+ys
         mXRw==
X-Gm-Message-State: AC+VfDzslyH1AZDlLmHGNtoyi7ZRpnb3LETV+9fsHLWm2v6iS2z2pi3y
	DSR4Nd6NWbd5Oh03Wv5oAVnlLr2Ef400AeGblnEhui1PXDg=
X-Google-Smtp-Source: ACHHUZ63FAE3c0+OfMfeHpk9e7dhMz34Q1ZNIVKU/yCXp5+zP9BC205go90VYKrm8aTxETkpT7P5uLDUc2teHdhmJws=
X-Received: by 2002:a05:6512:402:b0:4f2:6bc3:5e33 with SMTP id
 u2-20020a056512040200b004f26bc35e33mr518147lfk.9.1685101111461; Fri, 26 May
 2023 04:38:31 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Fri, 26 May 2023 13:38:19 +0200
Message-ID: <CAAfyv36uvzbb8N=AHOcRPjjzxELc0vie2AsGine7rJxwc6ZS6g@mail.gmail.com>
Subject: opencv pseudo abort
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000028cd5f05fc972dfa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 May 2023 11:38:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60127

--00000000000028cd5f05fc972dfa
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm using kirkstone and from time to time I'm getting pseudo abort on
opencv.

There are some topics already reported:

https://lists.yoctoproject.org/g/yocto/topic/opencv_build_generates_pseudo/82884027?p=

https://community.nxp.com/t5/i-MX-Processors/yocto-failed-to-build-Machine-Learning-for-linux-5-10-9/td-p/1388423

but with no solution. I'm hitting following:

| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_install
| NOTE:
DESTDIR=/home/builder/build/tmp/work/corei7-64-poky-linux/opencv/4.5.5-r0/image
VERBOSE=1 cmake --build
/home/builder/build/tmp/work/corei7-64-poky-linux/opencv/4.5.5-r0/build
--target install --
| abort()ing pseudo client by server request. See
https://wiki.yoctoproject.org/wiki/Pseudo_Abort for more details on this.
| Check logfile:
/home/builder/build/tmp/work/corei7-64-poky-linux/opencv/4.5.5-r0/pseudo//pseudo.log
| Subprocess aborted
| CMake Error: Generator: execution of make failed. Make command was: ninja
-v -j 32 install &&
| WARNING: exit code 1 from a shell command.
ERROR: Task
(/home/builder/build/../oe/meta-oe/recipes-support/opencv/opencv_4.5.5.bb:do_install)
failed with exit code '1'
Pseudo log:
path mismatch [3 links]: ino 94381104 db
'/home/builder/build/tmp/work/corei7-64-poky-linux/opencv/4.5.5-r0/package/usr/src/debug/opencv/4.5.5-r0/contrib/modules/intensity_transform/src/bimef.cpp'
req
'/home/builder/build/tmp/work/corei7-64-poky-linux/opencv/4.5.5-r0/contrib/modules/intensity_transform/src/bimef.cpp'.
Setup complete, sending SIGUSR1 to pid 1215.

Is there at least any workaround available please (except of deleting
build.tmp ;))

Thanks and BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--00000000000028cd5f05fc972dfa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m using kirkstone and from ti=
me to time I&#39;m getting pseudo abort on opencv.</div><div><br></div><div=
>There are some topics already reported:</div><div><br></div><div><a href=
=3D"https://lists.yoctoproject.org/g/yocto/topic/opencv_build_generates_pse=
udo/82884027?p=3D">https://lists.yoctoproject.org/g/yocto/topic/opencv_buil=
d_generates_pseudo/82884027?p=3D</a>=C2=A0</div><div><a href=3D"https://com=
munity.nxp.com/t5/i-MX-Processors/yocto-failed-to-build-Machine-Learning-fo=
r-linux-5-10-9/td-p/1388423">https://community.nxp.com/t5/i-MX-Processors/y=
octo-failed-to-build-Machine-Learning-for-linux-5-10-9/td-p/1388423</a></di=
v><div><br></div><div>but with no solution. I&#39;m hitting following:</div=
><div><br></div><div>| DEBUG: Python function extend_recipe_sysroot finishe=
d<br>| DEBUG: Executing shell function do_install<br>| NOTE: DESTDIR=3D/hom=
e/builder/build/tmp/work/corei7-64-poky-linux/opencv/4.5.5-r0/image VERBOSE=
=3D1 cmake --build /home/builder/build/tmp/work/corei7-64-poky-linux/opencv=
/4.5.5-r0/build --target install --<br>| abort()ing pseudo client by server=
 request. See <a href=3D"https://wiki.yoctoproject.org/wiki/Pseudo_Abort">h=
ttps://wiki.yoctoproject.org/wiki/Pseudo_Abort</a> for more details on this=
.<br>| Check logfile: /home/builder/build/tmp/work/corei7-64-poky-linux/ope=
ncv/4.5.5-r0/pseudo//pseudo.log<br>| Subprocess aborted<br>| CMake Error: G=
enerator: execution of make failed. Make command was: ninja -v -j 32 instal=
l &amp;&amp;<br>| WARNING: exit code 1 from a shell command.<br>ERROR: Task=
 (/home/builder/build/../oe/meta-oe/recipes-support/opencv/opencv_4.5.5.bb:=
do_install) failed with exit code &#39;1&#39; <br>Pseudo log:<br>path misma=
tch [3 links]: ino 94381104 db &#39;/home/builder/build/tmp/work/corei7-64-=
poky-linux/opencv/4.5.5-r0/package/usr/src/debug/opencv/4.5.5-r0/contrib/mo=
dules/intensity_transform/src/bimef.cpp&#39; req &#39;/home/builder/build/t=
mp/work/corei7-64-poky-linux/opencv/4.5.5-r0/contrib/modules/intensity_tran=
sform/src/bimef.cpp&#39;.<br>Setup complete, sending SIGUSR1 to pid 1215.<b=
r><br>Is there at least any workaround available please (except of deleting=
 build.tmp ;))</div><div><br></div><div>Thanks and BR,</div><div><br></div>=
<div>marek</div><div><br><span class=3D"gmail_signature_prefix">-- </span><=
br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signa=
ture">as simple and primitive as possible<br>------------------------------=
-------------------<br>Marek Belisko - OPEN-NANDRA<br>Freelance Developer<b=
r><br>Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>Tel: +421 915 0=
52 184<br>skype: marekwhite<br>twitter: #opennandra<br>web: <a href=3D"http=
://open-nandra.com" target=3D"_blank">http://open-nandra.com</a></div></div=
></div>

--00000000000028cd5f05fc972dfa--

