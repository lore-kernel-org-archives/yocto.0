Return-Path: <matt@madison.systems>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D483C7EE2C
	for <webhook@archiver.kernel.org>; Fri, 26 May 2023 13:41:54 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
 by mx.groups.io with SMTP id smtpd.web11.8311.1685108511248507020
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 May 2023 06:41:51 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@madison.systems header.s=google header.b=RRezDcIZ;
 spf=pass (domain: madison.systems, ip: 209.85.208.46, mailfrom: matt@madison.systems)
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-510b4e488e4so1249377a12.3
        for <yocto@lists.yoctoproject.org>; Fri, 26 May 2023 06:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=madison.systems; s=google; t=1685108509; x=1687700509;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=X4PSRVZKbDFBULzy1YGWw7ExvPbgZoVcYfbYIG/kvk4=;
        b=RRezDcIZUw2PfF1/Regk+GzI86STVbTnkOy263OS77NNUnQcWPJYolMYIdcalMIMCN
         57qD5//pmkwPVQYPb1pPG3e4xf0Bf1NfA1qFAB/SGOtnZKRkk4JPLsBYcRV0VyWXaFir
         pSl62QEZ3qfief1dXuRUZcIuhQedSELKlSklR9gOzWryk8POLCfbUxJSgQ71Vgfau/u8
         5vuGiKCTnxVvnjsYRFj8Az3JcBJJTrPn/dqbN6Ydi5lZBlLVyqi2+bH8ac9y5ZfFfZXO
         iKnfnUfnB2tUI8jkjgu1ZXdHAN3JsChcfsRR/QLixq7QogjCCcKPKRVYDK9fvc+QjUh8
         S65g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685108509; x=1687700509;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X4PSRVZKbDFBULzy1YGWw7ExvPbgZoVcYfbYIG/kvk4=;
        b=jZe0FDiMw0Sl0eq8RuQDeH3fI7w3WsOrhJd8nYeZn0qIRqHDb2yF/PEhNYovZ3HyL7
         o7S3ycS9AFpMrbLz6KpBD+aiFzcivafKHe4yVj37iwYXiQOBcalpa80Pjj7gXczHmJWs
         G49FtjMgzYBQ7HGg5u6jFgtTBaw1Eo5cVjEh4+TeKrjuOraExEX1DXz8vjxd9vwX5IVz
         +2YTwGZ/tUwwsli+Z9mVYks2b8BIQThiMTUTEw+zAdJH29DbSwNuYOarNXFwwT7/r0XO
         3xdjTYt74TtLeHYPieQmP4RTfiYu7gfFXE1UAvh281q27p58nAQw0qTmoa+b6MWvMeaH
         0ySw==
X-Gm-Message-State: AC+VfDzU0h2KmbO+C9sPoF2Al+G8fsOWvYMUx3KfdWYiGe167OcveRD6
	d07CAmzUxkzncfpZSDVB/goOzy+ZcMYHcnW8x9vnCw==
X-Google-Smtp-Source: ACHHUZ5SLuH34k2M0VcMEOJXFYMukUQgBwDs0rNFpZ8ImFmb+OcyUoCD+QQG2xTC3l1EdejvabHUTE4Irm3tCNeotR0=
X-Received: by 2002:a17:907:60ce:b0:965:6199:cf60 with SMTP id
 hv14-20020a17090760ce00b009656199cf60mr2225985ejc.42.1685108509347; Fri, 26
 May 2023 06:41:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv36uvzbb8N=AHOcRPjjzxELc0vie2AsGine7rJxwc6ZS6g@mail.gmail.com>
In-Reply-To: <CAAfyv36uvzbb8N=AHOcRPjjzxELc0vie2AsGine7rJxwc6ZS6g@mail.gmail.com>
From: Matt Madison <matt@madison.systems>
Date: Fri, 26 May 2023 06:41:38 -0700
Message-ID: <CAGgRHJpTUv1pPjQ=t2N0pkOiYv5wtrchDx83nmNVd3=exV3YWA@mail.gmail.com>
Subject: Re: [yocto] opencv pseudo abort
To: Marek Belisko <marek.belisko@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001bad2705fc98e6f2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 May 2023 13:41:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60129

--0000000000001bad2705fc98e6f2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 26, 2023 at 4:38=E2=80=AFAM Marek Belisko <marek.belisko@gmail.=
com>
wrote:

> Hi,
>
> I'm using kirkstone and from time to time I'm getting pseudo abort on
> opencv.
>
> There are some topics already reported:
>
>
> https://lists.yoctoproject.org/g/yocto/topic/opencv_build_generates_pseud=
o/82884027?p=3D
>
>
> https://community.nxp.com/t5/i-MX-Processors/yocto-failed-to-build-Machin=
e-Learning-for-linux-5-10-9/td-p/1388423
>
> but with no solution. I'm hitting following:
>
> | DEBUG: Python function extend_recipe_sysroot finished
> | DEBUG: Executing shell function do_install
> | NOTE:
> DESTDIR=3D/home/builder/build/tmp/work/corei7-64-poky-linux/opencv/4.5.5-=
r0/image
> VERBOSE=3D1 cmake --build
> /home/builder/build/tmp/work/corei7-64-poky-linux/opencv/4.5.5-r0/build
> --target install --
> | abort()ing pseudo client by server request. See
> https://wiki.yoctoproject.org/wiki/Pseudo_Abort for more details on this.
> | Check logfile:
> /home/builder/build/tmp/work/corei7-64-poky-linux/opencv/4.5.5-r0/pseudo/=
/pseudo.log
> | Subprocess aborted
> | CMake Error: Generator: execution of make failed. Make command was:
> ninja -v -j 32 install &&
> | WARNING: exit code 1 from a shell command.
> ERROR: Task
> (/home/builder/build/../oe/meta-oe/recipes-support/opencv/opencv_4.5.5.bb=
:do_install)
> failed with exit code '1'
> Pseudo log:
> path mismatch [3 links]: ino 94381104 db
> '/home/builder/build/tmp/work/corei7-64-poky-linux/opencv/4.5.5-r0/packag=
e/usr/src/debug/opencv/4.5.5-r0/contrib/modules/intensity_transform/src/bim=
ef.cpp'
> req
> '/home/builder/build/tmp/work/corei7-64-poky-linux/opencv/4.5.5-r0/contri=
b/modules/intensity_transform/src/bimef.cpp'.
> Setup complete, sending SIGUSR1 to pid 1215.
>
> Is there at least any workaround available please (except of deleting
> build.tmp ;))
>


I've worked around this by adding this in a bbappend:

PSEUDO_IGNORE_PATHS:append =3D ",${WORKDIR}/contrib"

but have never got round to sending a patch upstream to get it fixed in the
recipe.  I think it should also have been fixed as a side-effect of

https://git.openembedded.org/meta-openembedded/commit/?id=3D6b7cf95e75cbfc0=
8cf1f6eddc7ce3f6a0a39edcf

which moved the add-on sources under ${S}, which is already covered by
PSEUDO_IGNORE_PATHS.  That might be a better change to backport.

-Matt



>
> Thanks and BR,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60127):
> https://lists.yoctoproject.org/g/yocto/message/60127
> Mute This Topic: https://lists.yoctoproject.org/mt/99147968/3618418
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> [matt@madison.systems]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000001bad2705fc98e6f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 26, 2023 at 4:38=E2=80=AF=
AM Marek Belisko &lt;<a href=3D"mailto:marek.belisko@gmail.com">marek.belis=
ko@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m using kirkstone=
 and from time to time I&#39;m getting pseudo abort on opencv.</div><div><b=
r></div><div>There are some topics already reported:</div><div><br></div><d=
iv><a href=3D"https://lists.yoctoproject.org/g/yocto/topic/opencv_build_gen=
erates_pseudo/82884027?p=3D" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/topic/opencv_build_generates_pseudo/82884027?p=3D</a>=C2=A0</div=
><div><a href=3D"https://community.nxp.com/t5/i-MX-Processors/yocto-failed-=
to-build-Machine-Learning-for-linux-5-10-9/td-p/1388423" target=3D"_blank">=
https://community.nxp.com/t5/i-MX-Processors/yocto-failed-to-build-Machine-=
Learning-for-linux-5-10-9/td-p/1388423</a></div><div><br></div><div>but wit=
h no solution. I&#39;m hitting following:</div><div><br></div><div>| DEBUG:=
 Python function extend_recipe_sysroot finished<br>| DEBUG: Executing shell=
 function do_install<br>| NOTE: DESTDIR=3D/home/builder/build/tmp/work/core=
i7-64-poky-linux/opencv/4.5.5-r0/image VERBOSE=3D1 cmake --build /home/buil=
der/build/tmp/work/corei7-64-poky-linux/opencv/4.5.5-r0/build --target inst=
all --<br>| abort()ing pseudo client by server request. See <a href=3D"http=
s://wiki.yoctoproject.org/wiki/Pseudo_Abort" target=3D"_blank">https://wiki=
.yoctoproject.org/wiki/Pseudo_Abort</a> for more details on this.<br>| Chec=
k logfile: /home/builder/build/tmp/work/corei7-64-poky-linux/opencv/4.5.5-r=
0/pseudo//pseudo.log<br>| Subprocess aborted<br>| CMake Error: Generator: e=
xecution of make failed. Make command was: ninja -v -j 32 install &amp;&amp=
;<br>| WARNING: exit code 1 from a shell command.<br>ERROR: Task (/home/bui=
lder/build/../oe/meta-oe/recipes-support/opencv/opencv_4.5.5.bb:do_install)=
 failed with exit code &#39;1&#39; <br>Pseudo log:<br>path mismatch [3 link=
s]: ino 94381104 db &#39;/home/builder/build/tmp/work/corei7-64-poky-linux/=
opencv/4.5.5-r0/package/usr/src/debug/opencv/4.5.5-r0/contrib/modules/inten=
sity_transform/src/bimef.cpp&#39; req &#39;/home/builder/build/tmp/work/cor=
ei7-64-poky-linux/opencv/4.5.5-r0/contrib/modules/intensity_transform/src/b=
imef.cpp&#39;.<br>Setup complete, sending SIGUSR1 to pid 1215.<br><br>Is th=
ere at least any workaround available please (except of deleting build.tmp =
;))</div></div></blockquote><div><br></div><div><br></div><div>I&#39;ve wor=
ked around this by adding this in a bbappend:</div><div><br></div><div>PSEU=
DO_IGNORE_PATHS:append =3D &quot;,${WORKDIR}/contrib&quot;<br></div><div><b=
r></div><div>but have never got round to sending a patch upstream to get it=
 fixed in the recipe.=C2=A0 I think it should also have been fixed as a sid=
e-effect of=C2=A0</div><div><br></div><div><a href=3D"https://git.openembed=
ded.org/meta-openembedded/commit/?id=3D6b7cf95e75cbfc08cf1f6eddc7ce3f6a0a39=
edcf">https://git.openembedded.org/meta-openembedded/commit/?id=3D6b7cf95e7=
5cbfc08cf1f6eddc7ce3f6a0a39edcf</a><br></div><div><br></div><div>which move=
d the add-on sources under ${S}, which is already covered by PSEUDO_IGNORE_=
PATHS.=C2=A0 That might be a better change to backport.</div><div><br></div=
><div>-Matt</div><div><br></div><div>=C2=A0</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div><br></div><div>Thanks and BR,=
</div><div><br></div><div>marek</div><div><br><span class=3D"gmail_signatur=
e_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature">as simpl=
e and primitive as possible<br>--------------------------------------------=
-----<br>Marek Belisko - OPEN-NANDRA<br>Freelance Developer<br><br>Ruska No=
va Ves 219 | Presov, 08005 Slovak Republic<br>Tel: +421 915 052 184<br>skyp=
e: marekwhite<br>twitter: #opennandra<br>web: <a href=3D"http://open-nandra=
.com" target=3D"_blank">http://open-nandra.com</a></div></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60127): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60127" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60127</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/99147968/3618=
418" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/99147968/3618418</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [matt@madison.systems]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000001bad2705fc98e6f2--

