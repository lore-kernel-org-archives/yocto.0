Return-Path: <pintu.ping@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87CD5C4332F
	for <webhook@archiver.kernel.org>; Mon, 14 Nov 2022 15:05:20 +0000 (UTC)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
 by mx.groups.io with SMTP id smtpd.web12.6762.1668438312004844352
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Nov 2022 07:05:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZiLva9ep;
 spf=pass (domain: gmail.com, ip: 209.85.221.176, mailfrom: pintu.ping@gmail.com)
Received: by mail-vk1-f176.google.com with SMTP id s204so5065643vkb.3;
        Mon, 14 Nov 2022 07:05:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=a3HWU3ozsT92GZMbvEobFy/xJFvY6R7oR6iNQp+J6yc=;
        b=ZiLva9epaHxjSDhMnyZmvm+FP3xgDyNmWtYmXANWh9GsqhZuqbIqQZnSaLWtKWrxZB
         2zvOo8X4eXA7FTNWGbwpUsdC+fG5Yolq0Am7SMhyljJbR8Z7NwHrARSViXsIBy1DLHbW
         H8KkMDQdPCphYWLKZn2RPiv/mzXn1uQ6OA4mHjejR0eY/4Q02QSWk2kbPkwbYzOQa1V4
         iJwuHELkEoMvgDR12um/1zG/Q6uvctow9PvDXEQeagwRI60aJI8dBIgGR5m6wQnJirHy
         3aXz3YdFxYDQsuScFAgJndk4tH+BPCVyAc8tOkJR+JqHzkmn4V1wvtquELaof6xfU53w
         jGgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a3HWU3ozsT92GZMbvEobFy/xJFvY6R7oR6iNQp+J6yc=;
        b=rd3+FAyLnepkF6RpZjDZiviR8Swuae0LcllUwlP6A3W8t4X9gkWaRvD9i3LRfSArJT
         EWgDqx7TbL7KX37QuS7BXbvREqHiD3Q/eaoni3AoRz5wJRVsMZ61MEmgAan/gpvygAmP
         M2Jtk4heYj3K610cFzTOPMY5FU16+MzFtHL74TCNpheeVCAE0BQLrDB19yW00h5VfA0e
         AtYeE0yhSqdpyROE0wsqhU5i8VPDLf9BA7YjNnVhh3MaX6ZSLve6q8i8d6fPRDMQrgNm
         aVgZJnU/SXLnhd5X7HeqE9exnxZdvyGo6+S9E75aOu72b4FuF7n6m1P3EdM9gl810zBM
         jOsw==
X-Gm-Message-State: ANoB5pnD751w7ekbKWcsAkJL5j8AejGmGj18Vrb2gaheSFE2Ia3ULugg
	Q45KVu/qCzyDPLW6tewwc9z98whZIr7aPG6jesBn/WYSjwo=
X-Google-Smtp-Source: AA0mqf5xcepYOd98/51EXE8GzuGLf0t5mmncA4UABCHAkGd391E8q3TdeH1hnbC3Dt3LFyaYZKV3ckWWpc8MahmtfKI=
X-Received: by 2002:ac5:cac5:0:b0:3af:2285:b2d7 with SMTP id
 m5-20020ac5cac5000000b003af2285b2d7mr6532257vkl.14.1668438310116; Mon, 14 Nov
 2022 07:05:10 -0800 (PST)
MIME-Version: 1.0
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Mon, 14 Nov 2022 20:34:58 +0530
Message-ID: <CAOuPNLh1+LhxH8yuQprUntwjibAP_iuwF7tXnHjfhAZhLCCG-A@mail.gmail.com>
Subject: Removing DISTRO_FEATURES from a specific machine type
To: yocto@lists.yoctoproject.org, linux-yocto@lists.yoctoproject.org, 
	poky@lists.yoctoproject.org, bitbake-devel@lists.openembedded.org
Content-Type: multipart/alternative; boundary="000000000000cde0d305ed6f9045"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Nov 2022 15:05:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58555

--000000000000cde0d305ed6f9045
Content-Type: text/plain; charset="UTF-8"

Hi,

This question is related to Yocto Dunfell specifically.

I have certain distro features defined (by default) in our distro
include/conf file.
These distro features are required for certain machines and should not be
enabled for only one machine.
For example, we have a distro feature such as "nand-squashfs".
So, in our distro.inc file we are including like this:
DISTRO_FEATURES_append = " nand-squashfs"

Since this distro.inc file is shared across 2-3 machines, this feature will
be available to all.
But we don't want to include it in the "xyz" machine.

So, can I do like this:
DISTRO_FEATURES_append = " nand-squashfs"
DISTRO_FEATURES_remove_xyz = " nand-squashfs"

If there is some other better way please suggest.

Thanks,
Pintu

--000000000000cde0d305ed6f9045
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hi,</div><div class=3D"gmail_default" style=3D"font-family:verd=
ana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family=
:verdana,sans-serif">This question is related to Yocto Dunfell specifically=
.</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif=
"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-=
serif">I have certain distro features defined (by default) in our distro in=
clude/conf file.</div><div class=3D"gmail_default" style=3D"font-family:ver=
dana,sans-serif">These distro features are required for certain machines an=
d should not be enabled for only one machine.</div><div class=3D"gmail_defa=
ult" style=3D"font-family:verdana,sans-serif">For example, we have a distro=
 feature such as &quot;nand-squashfs&quot;.</div><div class=3D"gmail_defaul=
t" style=3D"font-family:verdana,sans-serif">So, in our distro.inc file we a=
re including like this:</div><div class=3D"gmail_default" style=3D"font-fam=
ily:verdana,sans-serif">DISTRO_FEATURES_append =3D &quot; nand-squashfs&quo=
t;</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans=
-serif">Since this distro.inc file is shared across 2-3 machines, this feat=
ure will be available to all.</div><div class=3D"gmail_default" style=3D"fo=
nt-family:verdana,sans-serif">But we don&#39;t want to include it in the &q=
uot;xyz&quot; machine.</div><div class=3D"gmail_default" style=3D"font-fami=
ly:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font=
-family:verdana,sans-serif">So, can I do like this:</div><div class=3D"gmai=
l_default" style=3D"font-family:verdana,sans-serif">DISTRO_FEATURES_append =
=3D &quot; nand-squashfs&quot;<br></div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif">DISTRO_FEATURES_remove_xyz =3D &quot; n=
and-squashfs&quot;<br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font=
-family:verdana,sans-serif">If there is some other better way please sugges=
t.</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans=
-serif">Thanks,</div><div class=3D"gmail_default" style=3D"font-family:verd=
ana,sans-serif">Pintu</div><div class=3D"gmail_default" style=3D"font-famil=
y:verdana,sans-serif"><br></div></div>

--000000000000cde0d305ed6f9045--

