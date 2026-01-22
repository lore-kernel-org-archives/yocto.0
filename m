Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F28DD46952
	for <webhook@archiver.kernel.org>; Thu, 22 Jan 2026 17:23:01 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.42495.1769102575351242915
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jan 2026 09:22:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FV2bl2l9;
 spf=pass (domain: gmail.com, ip: 209.85.128.179, mailfrom: raj.khem@gmail.com)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-79420190633so12376427b3.0
        for <yocto@lists.yoctoproject.org>; Thu, 22 Jan 2026 09:22:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769102574; cv=none;
        d=google.com; s=arc-20240605;
        b=hAXn4rakBJN+x5h1r+li9J7JwF8ZuPQ5dYv/cdS0Mcv+ERQlgh0dcPdeACpscXBDoo
         3JIroX3XQ6RIJgzfEP+NgKrw8pqOGES81UF+G0hy+M82sQXxJARHQ4UNEvEmXTsuxLKn
         +V2GbO6X4d2EUoloV45OO1EMNec1cpJrfje7LC3bof1r3WWrRJ0jwiA5hOR4BDoDgGpR
         xot5mytUumKYN95Dw+rY5G/rOP/s0M2BdqoqdqfYYgDrpaIDZqZwY/7WoWfDIyl+I5EL
         jkJr77WfJV8TyQjmcTEoIshlRiVQaqUJ77nderogj7SMmURGEUYOMOTS9AQpCQ0Gz+kV
         kEbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uJmqXdYQWmtaLRpbMuu3UkxKfzz9ZFuIfqzuIxJZKC4=;
        fh=k5nDQ4+xMZZjNiHuNdoO+ATx6UB5HpH8nJqRXge9CqQ=;
        b=JqM9j7euqu3KkImDQ0AHyD6cTFTOJu6k4aiNQ+axNMP0Vq3f2xbNx2rsKLtVli2fXS
         vT+fE/PAkj4b1daU27uAKc1AGn+u13OqFD4vbeO94skrQX8+qD5tCpN9y0LXxaNa7fxw
         grRRSmsG73BNxgcDak+2kni4QzniZ3EhDz7H8sMkRFAYsoTvNWI91axAcWuxGaVqCfRy
         HEuP8JjYtgZ8FYitKkfysGLPbAIU/Iv8iGif0R3S2xBjn9oyj9pfKm2Y6y0vbH938wIn
         /s66HUVJw1ZJWS0BLlXGfPxa60FF3e+/fMFofUNb+OfuunNsNtXDKltSuO443zlzRJD1
         7slg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769102574; x=1769707374; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uJmqXdYQWmtaLRpbMuu3UkxKfzz9ZFuIfqzuIxJZKC4=;
        b=FV2bl2l9vP+ZMW5WOre2IRTD4PPmEkjjzhT+65rWDdSfGsDbNzX/BSHF+yd9ChDaoI
         3xsp5jHJLlGaJRN4i3d6ce7YD53CwrdxYI9BRyrG1nyhet99yCAVRNt96jOQJZdp0wpu
         n/n+tbJWJDQe0fGKilP44elYcCBpsftwL2dCIMnPm5iSKBS7Z0gpXoU3NvsU7wjrdmu7
         SqUzKCiNEbo66TyNvIGs6mnr14cCgommRiUE47b/0hCssmUQ1WS4uTx12NUa8C3OfmXr
         6VVuwNyj0SHwQJy6MJByY+UcDJ4FZKh+qOV3fZHxsKo9zkWUigwK10dUYvIqpclJGb3F
         G8WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769102574; x=1769707374;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uJmqXdYQWmtaLRpbMuu3UkxKfzz9ZFuIfqzuIxJZKC4=;
        b=C1BV4Jri/vasCyw9Y1qmn9MpkdpCE2jj8lqtxQrEtjTs9AL5aj/HgzbWvLNNq5iiow
         +R+ykvGowI91lgVDfBtfxP51DZcRXEqoBJa2RiDQ1K8Vpd7PLMi4i5g5AE2jVa5DiwvQ
         gwPP/z/WmLbpSJKOs0eoU2LX5fgxvCIOS81DZdp0qUG11UfVETUyYIk58OdNb/0wP4d0
         fq4ZOHTobDig/BspNoIQET4f6siH0wultGa8XbG6jv9KfKvBkpdjGDBP6KoVVGv1GEmW
         sWHiFiDeivw14lMTt+wXJOUpKdGYBg5AIA9MAF/JKvH1B7by2C/zyf3rmC8xITJ4WrJX
         OQHA==
X-Gm-Message-State: AOJu0YwlBR7D7DsrT6Y9fQRm0wUb/LD4oKyNAAbFK9ltw/zOKh76gTTk
	MTNJlNOkqn8p1v8WC+lciX2PmoNOgM6BoaqftO8d+9zEpYA5BDgLGh+sxRMuj/XavPcw2dIU5aO
	F5Vzxl/14godotghbhaksD0hHznyAbb2afDjS
X-Gm-Gg: AZuq6aJEdpOQwTugs7BWqPJbT1OcgW8Lr0zC/HQDdmI6EPQMnyW94hCHk/V7UWWgCki
	2kpUL6zc1ocLwmpNWbSX5Xy6npCJ1UmL5/l2zBvNjenrBVxEpZVvlzREAXnCXEJWEWJWzRDzIUZ
	QG2gmjgrZZK9r5qj4VE3j6+uJiloCuQd4yRFD8ejAHSiYxTakyoKUl0sL1eFncfzgT7fF+H3MX/
	5kevQVFuEkphZge5C3wtYaYeK5Blc1851oFDKd/grvH/H6xA+0zhZUKNPV4kEXImjA6X1i5n0uo
	FF2Shkz4+jp6IEnK6yVc0RIdVnxA1KDqDGhfwGxA2DVeuaS/5D3Sbc7C1EjWr1KxFfw8G10jG/2
	Cv4L+tKM0vrakjiaQYwwbdRNUuRgPpANMq3IMq4V3vGSVKA==
X-Received: by 2002:a05:690c:4c0f:b0:793:8ce1:6596 with SMTP id
 00721157ae682-79439a838ccmr2344707b3.64.1769102574120; Thu, 22 Jan 2026
 09:22:54 -0800 (PST)
MIME-Version: 1.0
References: <92b1fbe3da82c19ed2ca7a617077f6055a74f7e3.camel@bootlin.com> <6C7BC2F4-364D-41C1-87CB-755547FE281E@arm.com>
In-Reply-To: <6C7BC2F4-364D-41C1-87CB-755547FE281E@arm.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 22 Jan 2026 09:22:27 -0800
X-Gm-Features: AZwV_QiMhBfbzAC6c-PVotQBgz4HJE8iChE1OwVCCyypu2qpd4-sMz8XAVhAXb4
Message-ID: <CAMKF1sq=OEHMM97DiKsdBTnCdSCbsfzTLiADfyUb0=RbVBVYeA@mail.gmail.com>
Subject: Re: [yocto] [RFC] Moving OP-TEE support from meta-arm to oe-core
To: yocto@lists.yoctoproject.org, ross.burton@arm.com
Cc: "thomas.perrot@bootlin.com" <thomas.perrot@bootlin.com>, 
	"nylon.chen@sifive.com" <nylon.chen@sifive.com>, "peter.lin@sifive.com" <peter.lin@sifive.com>, 
	"meta-arm@lists.yoctoproject.org" <meta-arm@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000080717d0648fd4a61"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jan 2026 17:23:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66180

--00000000000080717d0648fd4a61
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 22, 2026 at 9:05=E2=80=AFAM Ross Burton via lists.yoctoproject.=
org
<ross.burton=3Darm.com@lists.yoctoproject.org> wrote:

> On 22 Jan 2026, at 09:33, Thomas Perrot via lists.yoctoproject.org
> <thomas.perrot=3Dbootlin.com@lists.yoctoproject.org> wrote:
> >
> > Hi,
> >
> > Currently, OP-TEE support is maintained in the meta-arm layer. However,
> > OP-TEE is now being adopted by non-ARM platforms as well, notably RISC-
> > V.
> >
> > Given this broader adoption, would it make sense to move the OP-TEE
> > recipes from meta-arm to oe-core?
> >
> > I'd like to hear the community's thoughts on this.
>
> Copying in the meta-arm list.
>
> My immediate thought on this is =E2=80=9Cwould the riscv machines actuall=
y use the
> same recipes=E2=80=9D or is there enough forking and vendor branches happ=
ening that
> whilst in theory everyone is using OP-TEE, they=E2=80=99re not all using =
the _same_
> optee.
>
> I=E2=80=99m not against moving genuinely shared recipes somewhere common,=
 but I do
> think verifying this will actually happen is important.
>
> meta-arm tends to have several versions of optee at once for good reason=
=E2=80=A6
> (currently one, but about to be two)
>
>
I think its a good idea, but Ross's point is good too. If optee is forked
for every architecture that can not be a good thing. However, if we can get
qemuarm64 and qemuriscv64 based machines use an upstream version reliably,
we might be able to even help upstream to keep things sane
atleast for emulated machine architecture, similar to u-boot.


> Ross
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#66179):
> https://lists.yoctoproject.org/g/yocto/message/66179
> Mute This Topic: https://lists.yoctoproject.org/mt/117397331/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000080717d0648fd4a61
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 22,=
 2026 at 9:05=E2=80=AFAM Ross Burton via <a href=3D"http://lists.yoctoproje=
ct.org">lists.yoctoproject.org</a> &lt;ross.burton=3D<a href=3D"mailto:arm.=
com@lists.yoctoproject.org">arm.com@lists.yoctoproject.org</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 22 Jan 2026, a=
t 09:33, Thomas Perrot via <a href=3D"http://lists.yoctoproject.org" rel=3D=
"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> &lt;thomas.perrot=
=3D<a href=3D"mailto:bootlin.com@lists.yoctoproject.org" target=3D"_blank">=
bootlin.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt; <br>
&gt; Hi,<br>
&gt; <br>
&gt; Currently, OP-TEE support is maintained in the meta-arm layer. However=
,<br>
&gt; OP-TEE is now being adopted by non-ARM platforms as well, notably RISC=
-<br>
&gt; V.<br>
&gt; <br>
&gt; Given this broader adoption, would it make sense to move the OP-TEE<br=
>
&gt; recipes from meta-arm to oe-core?<br>
&gt; <br>
&gt; I&#39;d like to hear the community&#39;s thoughts on this.<br>
<br>
Copying in the meta-arm list.<br>
<br>
My immediate thought on this is =E2=80=9Cwould the riscv machines actually =
use the same recipes=E2=80=9D or is there enough forking and vendor branche=
s happening that whilst in theory everyone is using OP-TEE, they=E2=80=99re=
 not all using the _same_ optee.<br>
<br>
I=E2=80=99m not against moving genuinely shared recipes somewhere common, b=
ut I do think verifying this will actually happen is important.<br>
<br>
meta-arm tends to have several versions of optee at once for good reason=E2=
=80=A6 (currently one, but about to be two)<br>
<br></blockquote><div><br></div><div>I think its=C2=A0a good idea, but Ross=
&#39;s point is good too. If optee is forked for every architecture that ca=
n not be a good thing. However, if we can get</div><div>qemuarm64 and qemur=
iscv64 based machines use an upstream version reliably, we might be able to=
 even help upstream to keep things sane</div><div>atleast for emulated=C2=
=A0machine=C2=A0architecture, similar to u-boot.</div><div>=C2=A0</div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">
Ross<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#66179): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66179" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66179</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/117397331/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/117397331/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000080717d0648fd4a61--

