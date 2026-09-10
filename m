Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6C1C79FBB
	for <webhook@archiver.kernel.org>; Thu, 10 Sep 2026 19:58:38 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.23847.1789070314690729955
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2026 12:58:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=G8gOV2mA;
 spf=pass (domain: gmail.com, ip: 209.85.128.175, mailfrom: jpewhacker@gmail.com)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-87ffa98d4a9so814637b3.3
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2026 12:58:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789070314; cv=none;
        d=google.com; s=arc-20260327;
        b=kLV+tcMrIOtRLeif/UcmiDcHOGUz8yS5IX+bhy2VD4uohwNWpAvJTIx75LFEtIqiiC
         hbldbMZxBYPV6Vayn05lXHw+7xuWKdPcAP/Tz+yrX4AeuMa+CfNFG48mnAWIiIDSsFvI
         2/Ko1aYACPKYc7qOrCad3VKPbR8wxQOD8KsQtj1BuGbKe3Gts+KYEMwvFjm3j/avv+n8
         AmV6RDLIl4NgsRnrbZdvqUj5oZ3IUyrd0RUXr0hXrWo9MZ2VRy4rIhDUJuk7YAtrvRFn
         CRNW3SIOyR9HBlE0iDTwAdJEfS+SJGwZyX0iyFb0jbB8hQQBvO5BPXnZ4Ak185GijzXg
         UCYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=kLQTFGbA6OZDuAqV/KFF4Id4fh67gYSWcMnRYMLw4t8=;
        fh=OmIBit34vGolAmUGVlVOwl2WiHGbGRffiegO/2+9Z6A=;
        b=XeD2FX8Cmp1H+Az4cmVd527f+yT/IM/DpPgaP2w9Uj9hHv9zsD8aq/4i1UGGbOQ9CX
         mqVNb7r16Z5oopxJdBj2OrDxwQYzUOhsX/g4iN5SYxgvD1RNWUbYAKsSgk0chs/5qJLc
         L/cA/Xc6I9NAHAt+vjvDAzCEJAZE65ilBiPRgFNWWm5nSfjVD0BPrU60CEaKUVvUp2MS
         sXkCacvdoX5y5Hn84kFFDJGrQYLP2sNBgNqCXou9gdV+9wo2kah9qlvqIcSiuSjSlSuR
         bprStHZdMXlT9SVMFn2tySAR9qIzHkuIdq/WEvP90Zv1pW9QNLoNiTtTxfesmzSJ0QjS
         rfpA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789070314; x=1789675114; darn=lists.yoctoproject.org;
        h=content-type:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kLQTFGbA6OZDuAqV/KFF4Id4fh67gYSWcMnRYMLw4t8=;
        b=G8gOV2mAq3es75KS6Xp5cUJrvC6zW03G5CAD8mc6/uWAfmcDC2Ao8mrJ4wyWJ2aOiu
         /dorh2TaRoYmz3P1C5Ma0alyJLg7Ohi+jyDC7NFotzQvfRZ5b5uxpH7MoiprhW5AtHeF
         HPJhwGx+NQZBENP/wez2/lm4QsZExPjusLK8wjKUD4aaUy7tKeeSA4iBO+draoKuQdYR
         SXIKjT3GJ2xq9Rm/+NoPq2lwcAFmoFRk/qIf1keBQFf70KwEPe0dF8XSg0oXkTSRChRK
         lPVRdAf5VfUMx7ewFmiEZ/YAEGf2R6lsPP46kFrW5k8HGDUzgQpi0TIWreFJ5Vk9Esw0
         CzBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789070314; x=1789675114;
        h=content-type:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kLQTFGbA6OZDuAqV/KFF4Id4fh67gYSWcMnRYMLw4t8=;
        b=BK91KOqXffXQ90UhUpNkubClOxRpke7Z2XPaOETmS4KzfRmlcmoL1lg8Tc36mYaPLx
         boSqBsFTAHDRKq+i8ww58nN2i/BwoGkh2I6Iv3Xd/o2mHR2JoZMzmnX8t76fXbUbDcLK
         FS6AP8Jbvk/ZAGFU84fLfkX24Dy9b2abN/rfthv6udr0Q/GKIQpt1PV1ZW8tiZ8xvAzX
         /BD2CFyxb4cg67x7g39VJoXlSa0kDYfGTwqC0swfOgdZBh3Tp1CyWIqNF8remqFbxgcQ
         gyVNrlNXdSm6VE5qlmQj0k2L8xbtgeOshxbzMmBDZ9GrOtbXQJ4pLZkDeOE4KofVLdK5
         fcjA==
X-Gm-Message-State: AFuF++lRYdlvQIDYRSROwbIUSBogvQ687GHbzLbobDFLdyuI/xWhEL0L
	In4CtSYHkilnclqYaVW+UCyMu8zSfzDp76i/c5J0hYy1mJ22yLpi7UaS9MxwvGJANO1rArJClL9
	6sVoif4jBqusywnZK7NKJssVKKoSA8answlf3
X-Gm-Gg: AYBFou1Ayrvt+OdGiBfRpLYKHxe4Thk/v4TpSaChnrIdRAcQGLMwJ7GlPKqqnDIjwZh
	vb4RlFibnB7/7ISPw6GZkLYnvudozU/NAC9Sy86c5kgHOV0s+yjF+eILSrqiqO9GklOtvgwQPBS
	zoPuo3MqjxfRehDc8ZmCPDMgMMtRzsgZb8uGrMUzd1NSF1yUnU6UpuW66glgOuS8laIt6WhL14e
	3PK78UZ8yiMiqEWPbMinfiOh5bXQQ8GLJ3rPZpuwPMaXeiO/ZIRwX5c30FEO3L4hnaSByCMY/rB
	e4DYs3jPuLFdI6Ts43/d/oND7rzzzULUAWbhzm6V2VcfbQYSxYUtkuTP/aJeYsAJ7F1mqg==
X-Received: by 2002:a05:690c:c505:b0:81e:45a6:bd53 with SMTP id
 00721157ae682-884b21066c6mr4503557b3.8.1789070313562; Thu, 10 Sep 2026
 12:58:33 -0700 (PDT)
MIME-Version: 1.0
References: <p7FW.1789069372704480303.Aepi@lists.yoctoproject.org> <307014.1789069815176190258@lists.yoctoproject.org>
In-Reply-To: <307014.1789069815176190258@lists.yoctoproject.org>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Thu, 10 Sep 2026 13:58:22 -0600
X-Gm-Features: AcwNN1U97IjogSUHe9KfDx6xTLPLel80qVzFbf0Ruq1JI9fTmgoomQLvE2Pd6Rw
Message-ID: <CAJdd5GYmUEJjWnVCYC1y_g+_0gMFASHw4M+ZjHnGBOZHTKocVw@mail.gmail.com>
Subject: Re: [yocto] Hashserve OEEquivHash unihash issue
To: yocto@lists.yoctoproject.org, wanwizard@openpli.org
Content-Type: multipart/alternative; boundary="00000000000084a523065b2664de"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2026 19:58:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66717

--00000000000084a523065b2664de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 10, 2026 at 1:50=E2=80=AFPM Harro Verton via lists.yoctoproject=
.org
<wanwizard=3Dopenpli.org@lists.yoctoproject.org> wrote:

> Note that what I find very strange, is that the first MACHINE comes up
> with efe6373f8d36e03f92f0198b5c2891fba8b459bd1e16ee9043f3e3d85a47c65e as
> unihash.
>
> But for the second MACHINE it says the hash was
> 8da90b016d0a41cac6ce46c20d8ee64d5e7af35687de43c306544508050227e8 (why?
> how?) and is changed to
> efe6373f8d36e03f92f0198b5c2891fba8b459bd1e16ee9043f3e3d85a47c65e (which i=
t
> should have been in the first place).
>
> Does this suggest a lookup issue?
>

Probably not. The unihash is (basically) the taskhash first reported to the
server with a given output hash (a hash of the output the task produced).
When a second taskhash is reported to the server with the same output, it
gets mapped to the same unihash (which is the message you see above).

What this usually means is that you have two recipes that have different
task hashes, but produce the same output so the hashserver is mapping them
together as expected. You might want to figure out why the taskhashes are
different; if you have the .sigdata files for those hashes (look for e.g.
"sigdata.8da90b016d0a41cac6ce46c20d8ee64d5e7af35687de43c306544508050227e8"
in the stamps directory) you can diff them with bitbake-diffsigs and see
what is actually different.


>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66716):
> https://lists.yoctoproject.org/g/yocto/message/66716
> Mute This Topic: https://lists.yoctoproject.org/mt/121187356/3616693
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> JPEWhacker@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000084a523065b2664de
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 10,=
 2026 at 1:50=E2=80=AFPM Harro Verton via <a href=3D"http://lists.yoctoproj=
ect.org">lists.yoctoproject.org</a> &lt;wanwizard=3D<a href=3D"mailto:openp=
li.org@lists.yoctoproject.org">openpli.org@lists.yoctoproject.org</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>Note =
that what I find very strange, is that the first MACHINE comes up with efe6=
373f8d36e03f92f0198b5c2891fba8b459bd1e16ee9043f3e3d85a47c65e as unihash.</d=
iv>
<div>=C2=A0</div>
<div>But for the second MACHINE it says the hash was 8da90b016d0a41cac6ce46=
c20d8ee64d5e7af35687de43c306544508050227e8 (why? how?) and is changed to ef=
e6373f8d36e03f92f0198b5c2891fba8b459bd1e16ee9043f3e3d85a47c65e (which it sh=
ould have been in the first place).</div>
<div>=C2=A0</div>
<div>Does this suggest a lookup issue?</div></blockquote><div><br></div><di=
v>Probably not. The unihash is (basically) the taskhash first reported to t=
he server with a given output hash (a hash of the output the task produced)=
. When a second taskhash is reported to the server with the same output, it=
 gets mapped to the same unihash (which is the message you see above).</div=
><div><br></div><div>What this usually means is that you have two recipes t=
hat have different task hashes, but produce the same output so the hashserv=
er=C2=A0is mapping them together as expected. You might want to figure out =
why the taskhashes are different; if you have the .sigdata files for those =
hashes (look for e.g. &quot;sigdata.8da90b016d0a41cac6ce46c20d8ee64d5e7af35=
687de43c306544508050227e8&quot; in the stamps directory) you can diff them =
with bitbake-diffsigs and see what is actually different.</div><div>=C2=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#66716): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66716" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66716</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/121187356/361=
6693" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/121187356/3616693</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:JPEWhacker@gmail.com" target=3D"_blank">JPEWhack=
er@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000084a523065b2664de--

