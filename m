Return-Path: <aurelien@hackers.camp>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5D59E93804
	for <webhook@archiver.kernel.org>; Sun, 12 Apr 2026 20:00:28 +0000 (UTC)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.257034.1776024021623005887
 for <yocto@lists.yoctoproject.org>;
 Sun, 12 Apr 2026 13:00:21 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: gmail.com, ip: 209.85.222.53, mailfrom: aurelien.desbrieres@gmail.com)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-9539b4df32fso65637241.0
        for <yocto@lists.yoctoproject.org>; Sun, 12 Apr 2026 13:00:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776024020; x=1776628820;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gus9hKo9Srkd21Eo8b+/tI6nyyJL+7mPKnbX7ecWcPo=;
        b=N+v/M/2E7DZcPlfM9U4EsznGzWLkyNOiIo/v54Xd3yEzLf/9msTBMf0WremD0J7vNV
         z+4g7y3ZnDYkge3RuMlgeYHuAabWLho9HGJOkGLu3EOiEMLAB7tx7SxfoCwxzC+EFqFx
         6h113WQlUPJaToXpo22a3z6/6ng2Low1z29uk8sjYPwx16EzcoeAcVBPWw6GTU34k5nP
         LUBIJAJ1pfadEpu6YJnmw5ttJPP5Z3W+M37tzSdIkD19p7yVfAx4LF2cGKIzQhq1ezJD
         UZD3u8f5l4Bt5domLcccNfgi8SQTghEjRtoRD4QXJgQjwLI7UyQIkRiKJ8Ban/OF3QV7
         5y4A==
X-Gm-Message-State: AOJu0YwkTdpXfbETS6zJErvV6wRcXnypIzPkonJiuRcu2BZV7SOs19qx
	mvTi14xDxN0bjrEEdM8z4I7XSxEzgW3QlRo+K3XeBmsB5uVdZ65aPzywpMYjng==
X-Gm-Gg: AeBDieuKqNrbbAnCJhOMSEta85s4vrDJ14uY5+ss/gKQcIuTRw4zyab+T7f+ECZMjOq
	vTKPBPfO7m+AfklHi8IcTKwdBTk7RzDOd42dhoZVQTEQfu4dt+ROfzCRTfrSaEMzVmx+h95TWqM
	74RHBgoqdg9SKGuqQPQIVBA5pHmFix6CJG08ddTxiiqlNZ/IDgB7yMb2woB7jxyCqG6MbGSwAV3
	wGZjeKtPTqZwwuI/r/vXiuFTTqQltODsX2uMeVGv/TXcrGAtxR8+Su4RrHlaxu55SVlH484rnZI
	14EHd1hdFyXYCGUJimtqiEkPyyeg9pXkolfbK1QTJkHThDuWYD+PqCBvWXZcFIhMmjACdEDSPCh
	aUnLsvDtfkp3V81d0ug3nMnHoHf9f9eg1+AUxzv87MX4BhRMQZ7FO8o5NH8pfzZQThYBAVr265Q
	6MF4oPOIxYt0TyP/ST0faX1OnaWt7/jnpDSOINvMAKFQAwkIMqpQBAsfH27GlpN5KgBwwtJ473I
	u5cOMP9+1DuPOo0pOx16zpPwcQC8NhB
X-Received: by 2002:a05:6102:c13:b0:604:f07b:efbd with SMTP id ada2fe7eead31-609fe7a6d18mr1987026137.2.1776024020346;
        Sun, 12 Apr 2026 13:00:20 -0700 (PDT)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-60fc59765e9sm31931137.5.2026.04.12.13.00.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Apr 2026 13:00:20 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-60f75ba103cso4860137.2
        for <yocto@lists.yoctoproject.org>; Sun, 12 Apr 2026 13:00:20 -0700 (PDT)
X-Received: by 2002:a05:6102:d8a:b0:607:c6e1:bc8c with SMTP id
 ada2fe7eead31-60a01681529mr1903288137.8.1776024019847; Sun, 12 Apr 2026
 13:00:19 -0700 (PDT)
MIME-Version: 1.0
References: <6KwS.1775631328520262279.RWyv@lists.yoctoproject.org>
In-Reply-To: <6KwS.1775631328520262279.RWyv@lists.yoctoproject.org>
From: Aurelien DESBRIERES <aurelien@hackers.camp>
Date: Sun, 12 Apr 2026 23:59:45 +0200
X-Gmail-Original-Message-ID: <CAM=40tVV57_198qBoOorCtPLcf_WSYY2w9jybvuSixhr665CmA@mail.gmail.com>
X-Gm-Features: AQROBzBfrJXCHf2Ewl3q3DOrooSV8NRB_sLWDpExD5PHrAcqsR_zD60RD5jaLb8
Message-ID: <CAM=40tVV57_198qBoOorCtPLcf_WSYY2w9jybvuSixhr665CmA@mail.gmail.com>
Subject: Re: [yocto] Fetch Issue
To: yocto@lists.yoctoproject.org, snehadhar39@gmail.com
Content-Type: multipart/alternative; boundary="000000000000d0cf4e064f48d058"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 12 Apr 2026 20:00:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66402

--000000000000d0cf4e064f48d058
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I just can say that I have requested for a wiki access that I never get
back.
So I continue my project on my side ... it seems that Gentoo is not
considered as a "distro"

But I am running a lab on Gentoo full of yocto VMs for HPC and now dev some
stuff for Kernel 7RC7 for yocto arm64 to run a filesystem I am
developing from papers for HPC in Space.

Well, a lot of fun and hope that things will soon go better :)

"Put the fun back in you hack" --Cynbe Ru Taren .. a filesystem for space
to send you a sign to your paradise island

https://github.com/roastercode/yocto-hardened/tree/yocto-hpc


Aurelien DESBRIERES


Le dim. 12 avr. 2026 =C3=A0 21:45, sneha Dhar via lists.yoctoproject.org
<snehadhar39=3Dgmail.com@lists.yoctoproject.org> a =C3=A9crit :

> Hi
>
> Is anyone else experiencing issues accessing git.yoctoproject.org? We are
> seeing fetch failures for meta-intel, poky, etc.
> Thanks.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66401):
> https://lists.yoctoproject.org/g/yocto/message/66401
> Mute This Topic: https://lists.yoctoproject.org/mt/118793581/1024429
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> [aurelien@hackers.camp]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000d0cf4e064f48d058
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I just can say that I ha=
ve requested for a wiki access that I never get back.</div><div>So I contin=
ue my project on my side ... it seems that Gentoo is not considered as a &q=
uot;distro&quot;</div><div><br></div><div>But I am running a lab on Gentoo =
full of yocto VMs for HPC and now dev some stuff for Kernel 7RC7 for yocto =
arm64 to run a filesystem I am developing=C2=A0from papers for HPC in Space=
.</div><div><br></div><div>Well, a lot of fun and hope that things will soo=
n go better :)</div><div><br></div><div>&quot;Put the fun back in you hack&=
quot; --Cynbe Ru Taren .. a filesystem for space to send you a sign to your=
 paradise island</div><div><br></div><div><a href=3D"https://github.com/roa=
stercode/yocto-hardened/tree/yocto-hpc">https://github.com/roastercode/yoct=
o-hardened/tree/yocto-hpc</a></div><div><br></div><div><br></div><div>Aurel=
ien DESBRIERES</div><div><br></div></div><br><div class=3D"gmail_quote gmai=
l_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0dim. 12 av=
r. 2026 =C3=A0=C2=A021:45, sneha Dhar via <a href=3D"http://lists.yoctoproj=
ect.org">lists.yoctoproject.org</a> &lt;snehadhar39=3D<a href=3D"mailto:gma=
il.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; a =
=C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div>Hi=C2=A0</div>
<div>=C2=A0</div>
<div>
<div>Is anyone else experiencing issues accessing <a href=3D"http://git.yoc=
toproject.org" target=3D"_blank">git.yoctoproject.org</a>? We are seeing fe=
tch failures for meta-intel, poky, etc.</div>
<div>Thanks.</div>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#66401): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66401" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66401</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/118793581/102=
4429" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/118793581/1024429</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [aurelien@hackers.camp]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000d0cf4e064f48d058--

