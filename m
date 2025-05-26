Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55C83C54FB3
	for <webhook@archiver.kernel.org>; Mon, 26 May 2025 17:34:33 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web11.33992.1748280871861079705
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 May 2025 10:34:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UdryFpe6;
 spf=pass (domain: gmail.com, ip: 209.85.216.43, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-3081f72c271so1804937a91.0
        for <yocto@lists.yoctoproject.org>; Mon, 26 May 2025 10:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748280871; x=1748885671; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L33gTrS1WDiTOzQ7+y3xUmtANr+qQpy5e1VHNmpS7ik=;
        b=UdryFpe66OWe/Uhv4ttfPj/S6N6fOG/xx0S69sPkgeAzAEQJkeCdPkdsUpeRnA3s3b
         OPcWOB/KOgW5i1bfqMEsbAlfhwxy2PNdngq0B0NXazM8AX5IHHZAeMJnpadTg5uoVqKs
         YqfUg+Jbd6EciGWJtvEceMjRCVntkOquQp5bC3LYXkbfHJCld6WzcxfMRgcU4kdRIxiX
         u/W34lTFJVJebLQhgMhL9MfXK6FbkOL9/QBI7phAyyo6rjeBue44ym8VjpnR86hQhhOf
         xwH9h9eZTTDs52+2DHAg/wAs4AOO0+bQEMc1GFRfUSIoURNXOTPv7bJ7EALt3nZJIPUW
         gDgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748280871; x=1748885671;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L33gTrS1WDiTOzQ7+y3xUmtANr+qQpy5e1VHNmpS7ik=;
        b=Xe429hRUseJk8KJv+jITA1blug6EcXolT5bJuyrzP69/IkZmRhA6p+TAMht756QFlt
         7d8ct7Ua0JWINK+tB+3yDaonkdF0jksApFNgXD+RbR5cnie+bc8bgSH9i616SFyPhXS9
         CHlyXY3fU+ueSLSQ2SdY4lcAJwtMuyryVFMzA5lcsYM+keQFJJsoxwkY/GnIL9GqX1I+
         LWX1a+QZfLIIdhdQIbTEj/d+hU8CZC63BOS2el+xh/kIem7Fbjq49Vuc8fqR9NjaBiCq
         NX42lcdk+/Ea3c3XaxzfXa2iT3F681iB5ADEw4wqtkeZqqjZf6TtjVhoQXpefSOEml2g
         9+uw==
X-Gm-Message-State: AOJu0Yz2smgeHbR3d1InHvgTRgP5REgC+rBZDesrNDOdTh3aa5q0z5kC
	voCBQqZId4e177SHDtwv4HKt+OOzVjrB8wSlhnallxqPqlrXaHEhCoNBRzhm5ehfrkygNomZwWg
	RSAHoNitufmfdN1NttR5uDnn+7sMcVSGgDN9E
X-Gm-Gg: ASbGnctjBdv9v6dafBogHEnpaIpTUdcTUSsHbu9kmAV8fRUkGgU+dLN5yrTRpWx9KnJ
	E0JvBX1CZ8nRo1Ct2d29t7CWQrtECWJRO51+9JPe8CnA5laoo2+5Oif8IgPhLnPqsnosu3utQRk
	/dxPEQ5RWxqFc7GhTyoZCy5nOfWEf3C7ZGp5A=
X-Google-Smtp-Source: AGHT+IEKLqugODJn4wz2leIvTFUE2ZgTGEd29zlyAim8q2l87y4w1nv6xVVUKUqWb3/P+TVRgkAIMRO4ee8NWSrPiCE=
X-Received: by 2002:a17:90b:5110:b0:311:9c9a:58e5 with SMTP id
 98e67ed59e1d1-3119c9a5d30mr2221096a91.24.1748280870771; Mon, 26 May 2025
 10:34:30 -0700 (PDT)
MIME-Version: 1.0
References: <CA+KcR8ARBUj8PTcvA=rx-yob=WHYcS2gUnGX2aROOjy6bZGqWw@mail.gmail.com>
In-Reply-To: <CA+KcR8ARBUj8PTcvA=rx-yob=WHYcS2gUnGX2aROOjy6bZGqWw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Mon, 26 May 2025 13:34:19 -0400
X-Gm-Features: AX0GCFt4VHVG_vtSUSWZq8VTMqkCopATczmGUlE7t1jpBAqbWTnp8CLCEr2eL6w
Message-ID: <CADkTA4OCP8CDd68K2_k037Lq7v2QX-JbHVm-pE8+pXjJfMpj1Q@mail.gmail.com>
Subject: Re: [yocto] Default KCONFIG_MODE for in-tree defconfig
To: yocto@lists.yoctoproject.org, csanchezdll@gmail.com
Content-Type: multipart/alternative; boundary="0000000000004520b706360d5cf4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 May 2025 17:34:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65424

--0000000000004520b706360d5cf4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 26, 2025 at 3:49=E2=80=AFAM Carlos S=C3=A1nchez de La Lama via
lists.yoctoproject.org <csanchezdll=3Dgmail.com@lists.yoctoproject.org> wro=
te:

> Hi all,
>
> According to the documentation
> (https://docs.yoctoproject.org/ref-manual/variables.html#term-KCONFIG_MOD=
E
> ),
> KCONFIG_MODE defaults to "alldefconfig"  when KBUILD_DEFCONFIG is
> given, pointing to an in-tree defconfig.
>
> However, I am creating a custom recipe (inheriting
> kernel-yocto.bbclass trough linux-yocto.inc) and I was getting a build
> with an unexpected config.I have tracked it down to "allnoconfig"
> being used, and I have managed to get a correct build by adding an
> explicit "KCONFIG_MODE =3D alldefconfig" to my recipe.
>
> I think the problem comes from the combination of the logic in
> do_kernel_configme() (which selects the config_flags to "-n" when
> ${UNPACKDIR}/defconfig is used, theoretically meaning a custom
> defconfig coming from meta-data was placed there) with that of
> do_kernel_metadata() (which copies an in-tree defconfig given in
> KBUILD_DEFCONFIG into ${UNPACKDIR}/defconfig, so that is going to be
> present *always*, even if an in-tree defconfig is being used).
>
> Is this something I am misunderstanding? Otherwise, I think the
> documentation should be adjusted. I can send a patch, I just want to
> check I am not missing anything before doing.

The docs could be updated, but that default cannot be changed due
to the amount of years (10+) and the fact that any "guessing" at the
format of the defconfig is just that. Users are encouraged to set their
Own KCONFIG_MODE since they know what their configuration is.

In theory, I could enhance the checks to see if the defconfig is in
The SRC_URI and only then set allnoconfig as the default, but I'm
Reluctant to make it any more complex, since there's always side
Effects and breakages with someone's Kconfig when I change the
Logic.

Bruce


>
> Thanks,
>
> Carlos
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65421):
> https://lists.yoctoproject.org/g/yocto/message/65421
> Mute This Topic: https://lists.yoctoproject.org/mt/113305718/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> bruce.ashfield@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--0000000000004520b706360d5cf4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote gmail_quote_con=
tainer"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 26, 2025 at 3:49=
=E2=80=AFAM Carlos S=C3=A1nchez de La Lama via <a href=3D"http://lists.yoct=
oproject.org">lists.yoctoproject.org</a> &lt;csanchezdll=3D<a href=3D"mailt=
o:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi all,=
<br>
<br>
According to the documentation<br>
(<a href=3D"https://docs.yoctoproject.org/ref-manual/variables.html#term-KC=
ONFIG_MODE" rel=3D"noreferrer" target=3D"_blank">https://docs.yoctoproject.=
org/ref-manual/variables.html#term-KCONFIG_MODE</a>),<br>
KCONFIG_MODE defaults to &quot;alldefconfig&quot;=C2=A0 when KBUILD_DEFCONF=
IG is<br>
given, pointing to an in-tree defconfig.<br>
<br>
However, I am creating a custom recipe (inheriting<br>
kernel-yocto.bbclass trough linux-yocto.inc) and I was getting a build<br>
with an unexpected config.I have tracked it down to &quot;allnoconfig&quot;=
<br>
being used, and I have managed to get a correct build by adding an<br>
explicit &quot;KCONFIG_MODE =3D alldefconfig&quot; to my recipe.<br>
<br>
I think the problem comes from the combination of the logic in<br>
do_kernel_configme() (which selects the config_flags to &quot;-n&quot; when=
<br>
${UNPACKDIR}/defconfig is used, theoretically meaning a custom<br>
defconfig coming from meta-data was placed there) with that of<br>
do_kernel_metadata() (which copies an in-tree defconfig given in<br>
KBUILD_DEFCONFIG into ${UNPACKDIR}/defconfig, so that is going to be<br>
present *always*, even if an in-tree defconfig is being used).<br>
<br>
Is this something I am misunderstanding? Otherwise, I think the<br>
documentation should be adjusted. I can send a patch, I just want to<br>
check I am not missing anything before doing.<span class=3D"gmail_default" =
style=3D"font-size:small"></span></blockquote><div><span class=3D"gmail_def=
ault" style=3D"font-size:small"></span></div><div class=3D"gmail_default" s=
tyle=3D"font-size:small">The docs could be updated, but that default cannot=
 be changed due</div><div class=3D"gmail_default" style=3D"font-size:small"=
>to the amount of years (10+) and the fact that any &quot;guessing&quot; at=
 the</div><div class=3D"gmail_default" style=3D"font-size:small">format of =
the defconfig is just that. Users are encouraged to set their</div><div cla=
ss=3D"gmail_default" style=3D"font-size:small">Own KCONFIG_MODE since they =
know what their configuration is.</div><div class=3D"gmail_default" style=
=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-s=
ize:small">In theory, I could enhance the checks to see if the defconfig is=
 in</div><div class=3D"gmail_default" style=3D"font-size:small">The SRC_URI=
 and only then set allnoconfig as the default, but I&#39;m</div><div class=
=3D"gmail_default" style=3D"font-size:small">Reluctant to make it any more =
complex, since there&#39;s always side</div><div class=3D"gmail_default" st=
yle=3D"font-size:small">Effects and breakages with someone&#39;s Kconfig wh=
en I change the</div><div class=3D"gmail_default" style=3D"font-size:small"=
>Logic.</div><div class=3D"gmail_default" style=3D"font-size:small"><br></d=
iv><div class=3D"gmail_default" style=3D"font-size:small">Bruce</div><div c=
lass=3D"gmail_default" style=3D"font-size:small"><br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><br>
<br>
Thanks,<br>
<br>
Carlos<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#65421): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/65421" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/65421</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/113305718/105=
0810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/113305718/1050810</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruc=
e.ashfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature">- Thou shalt not follow the NULL pointer, for chaos and madness a=
wait thee at its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star T=
rek II<br><br></div></div>

--0000000000004520b706360d5cf4--

