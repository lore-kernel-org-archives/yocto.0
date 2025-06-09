Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D4C5C5B552
	for <webhook@archiver.kernel.org>; Mon,  9 Jun 2025 16:29:17 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.63888.1749486550158516654
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Jun 2025 09:29:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=sKZNU26x;
 spf=pass (domain: smile.fr, ip: 209.85.221.47, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3a4fd1ba177so3033559f8f.0
        for <yocto@lists.yoctoproject.org>; Mon, 09 Jun 2025 09:29:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1749486548; x=1750091348; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NP0Vg6603/rwRxlGy52wwYrUjYXYM49rArNXRBobxdo=;
        b=sKZNU26xMGJyJVgU+8z8BOVhNwFFdNjLnVrFkFu8hJOAdbatOWM6MDnSyTyRFfkX/H
         9QaIWUAFli/TUf6uLAAWlsAWj6DTEIk1pkjbVgzFgSf0bQPaeSPJBNRzWKCMWBTIlzIE
         euj4V18PAIk7V+pCAYL80IyElYIJxkCzgwGSk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749486548; x=1750091348;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NP0Vg6603/rwRxlGy52wwYrUjYXYM49rArNXRBobxdo=;
        b=YZMkNEmjvS4QBAKLTIvyB1pYDK9Xg+bRPHhN+BI/JF/qfgxq+nFqYwpoqR1iGu/M8A
         JJ1NPQcaBjgom+G44DstocRVV36301p2Njw8AmFBcDurCr0elSAELmEFxXFqn36Y/1cK
         Zz/Y2ADEgTjPSi8/oO+VpPojNfH4umpad7M/lPq6mSy1h+OnAaVaog/KVjXB2qIKOsSC
         BuygTM6mgz6owWwz4NMvnehrmrn4F1r0tK9J6CWYhNbql+JmjSNeTCVK7gaPxhCEtBVE
         ynryJsc7sPjMYj3CA4zYPQ8xQWK4x1gyman4BCh8A6yda+hZYSKNrwLvNAXYTOvtwrt4
         CuiA==
X-Gm-Message-State: AOJu0Ywk2Cg2ODyfF1eRihzkUzQ4Z8uz3gSgStdAfAheGq9HAk1fPxLt
	12as8TV5x9YncZHgnfXPn12bWlpogOzcpuBzuV5kDLM+3DCeiTK7dMuH1HSdeZnd39Pq1Vd4Amx
	qHj7cM2E1hMCwrQDXNwPhVIhGDrY6mBFGNQSICPZbwqGidTL8zSvy5FZCOg==
X-Gm-Gg: ASbGncu/+gPZdYABq+96/tISZeP4Y69I7L+orDX/BfMU/HLjK3WjLNtJKt1gDQMWZ8h
	eipGQLL2yLPU5z8KcxSw5G2XwbAkXJE03IAcVu9RM63NZ3fG1FqoOF6vl8A1R/S0if2uUwEFh+X
	/WaT+rCQefPGkw13gMsCzLq97X/F0tUbDcg394rZX4YjJ6Db9f1J6FEtXSYO5V18023+VnQyJEc
	Zggog==
X-Google-Smtp-Source: AGHT+IEV9vsNL4GLL+q7yEO92Pv9lnHy2djqQatp+sbmc9mKW7rIRfaQ3kabPGtj3BVqF3j+EaCBdh9kbqhu2Zr0vYY=
X-Received: by 2002:a5d:484c:0:b0:3a5:2915:ed68 with SMTP id
 ffacd0b85a97d-3a551412640mr122350f8f.28.1749486548366; Mon, 09 Jun 2025
 09:29:08 -0700 (PDT)
MIME-Version: 1.0
References: <DdRX.1749485096351227940.SVlR@lists.yoctoproject.org>
In-Reply-To: <DdRX.1749485096351227940.SVlR@lists.yoctoproject.org>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Mon, 9 Jun 2025 18:28:42 +0200
X-Gm-Features: AX0GCFsXmVbbtgBlJvuXwugfUhHXpykB72T44M5qaymTIB9UU79FeJQeRc6vN5Y
Message-ID: <CAMSfU+6UF+FqN_eWFwoNAMHDCqyZBMmnaTBHmyOqjXP4jQ6-TA@mail.gmail.com>
Subject: Re: [yocto] Inherit bbclass from bb file with a certain condition
To: yocto@lists.yoctoproject.org, haimbachar2008@gmail.com
Content-Type: multipart/alternative; boundary="000000000000414f2806372614e9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Jun 2025 16:29:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65488

--000000000000414f2806372614e9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le lun. 9 juin 2025 =C3=A0 18:04, Haimbach via lists.yoctoproject.org
<haimbachar2008=3Dgmail.com@lists.yoctoproject.org> a =C3=A9crit :

> Hello community
>
> In my case, I have bbclass and bb file.
>
> I want to inherit the bbclass from the bb file when a specific condition
> is TRUE, if its FALSE i don=E2=80=99t want to inherit the class, has some=
one have
> an idea? =F0=9F=92=A1
>
> Inherit my-class from a python function isn=E2=80=99t supported, I tried =
various
> options, but nothing works properly.
>
> Appreciate your help =F0=9F=92=AA=F0=9F=8F=BB
>
>
> let me know if there is any other related information to provide.
>

Sounds like the typical use-case of inherit_defer: for example:
https://git.yoctoproject.org/poky/tree/meta/recipes-devtools/btrfs-tools/bt=
rfs-tools_6.14.bb#n46
inherit_defer ${@bb.utils.contains('PACKAGECONFIG', 'python',
'setuptools3-base', '', d)}
# inherit setuptools3-base only if PACKAGECONFIG contains python

Regards,

>
>
> Regards,
>
> Haim
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65487):
> https://lists.yoctoproject.org/g/yocto/message/65487
> Mute This Topic: https://lists.yoctoproject.org/mt/113553190/4316185
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Yoann Congal
Smile ECS

--000000000000414f2806372614e9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0lun. 9 =
juin 2025 =C3=A0=C2=A018:04, Haimbach via <a href=3D"http://lists.yoctoproj=
ect.org">lists.yoctoproject.org</a> &lt;haimbachar2008=3D<a href=3D"mailto:=
gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; =
a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div>
<p style=3D"margin:0px;font:12px &quot;system-ui&quot;"><span style=3D"font=
-family:&quot;system-ui&quot;;font-weight:normal;font-style:normal;font-siz=
e:12px">Hello community=C2=A0</span></p>
<p style=3D"margin:0px;font:12px &quot;system-ui&quot;"><span style=3D"font=
-family:&quot;system-ui&quot;;font-weight:normal;font-style:normal;font-siz=
e:12px">In my case, I have bbclass and bb file.</span></p>
<p style=3D"margin:0px;font:12px &quot;system-ui&quot;"><span style=3D"font=
-family:&quot;system-ui&quot;;font-weight:normal;font-style:normal;font-siz=
e:12px">I want to inherit the bbclass from the bb file when a specific cond=
ition is TRUE, if its FALSE i don=E2=80=99t want to inherit the class, has =
someone have an idea? =F0=9F=92=A1<span>=C2=A0</span></span></p>
<p style=3D"margin:0px;font:12px &quot;system-ui&quot;"><span style=3D"font=
-family:&quot;system-ui&quot;;font-weight:normal;font-style:normal;font-siz=
e:12px">Inherit my-class from a python function isn=E2=80=99t supported, I =
tried various options, but nothing works properly.</span></p>
<p style=3D"margin:0px;font:12px &quot;system-ui&quot;"><span style=3D"font=
-family:&quot;system-ui&quot;;font-weight:normal;font-style:normal;font-siz=
e:12px">Appreciate your help =F0=9F=92=AA=F0=9F=8F=BB</span></p>
<p style=3D"margin:0px;font:12px &quot;system-ui&quot;"><span style=3D"font=
-family:&quot;system-ui&quot;;font-weight:normal;font-style:normal;font-siz=
e:12px"><br>let me know if there is any other related information to provid=
e.</span></p></div></blockquote><div><br></div><div>Sounds like the typical=
 use-case of inherit_defer: for example:</div><div><a href=3D"https://git.y=
octoproject.org/poky/tree/meta/recipes-devtools/btrfs-tools/btrfs-tools_6.1=
4.bb#n46">https://git.yoctoproject.org/poky/tree/meta/recipes-devtools/btrf=
s-tools/btrfs-tools_6.14.bb#n46</a></div><div>inherit_defer ${@bb.utils.con=
tains(&#39;PACKAGECONFIG&#39;, &#39;python&#39;, &#39;setuptools3-base&#39;=
, &#39;&#39;, d)}</div><div># inherit=C2=A0setuptools3-base only if=C2=A0PA=
CKAGECONFIG=C2=A0contains python</div><div><br></div><div>Regards,</div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div>
<p style=3D"margin:0px;font:12px &quot;system-ui&quot;">=C2=A0</p>
<p style=3D"margin:0px;font:12px &quot;system-ui&quot;"><span style=3D"font=
-family:&quot;system-ui&quot;;font-weight:normal;font-style:normal;font-siz=
e:12px">Regards,</span></p>
<p style=3D"margin:0px;font:12px &quot;system-ui&quot;"><span style=3D"font=
-family:&quot;system-ui&quot;;font-weight:normal;font-style:normal;font-siz=
e:12px">Haim</span></p>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#65487): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/65487" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/65487</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/113553190/431=
6185" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/113553190/4316185</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:yoann.congal@smile.fr" target=3D"_blank">yoann.c=
ongal@smile.fr</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font><div><fon=
t face=3D"Raleway, regular">Smile ECS</font></div></div></div></div>

--000000000000414f2806372614e9--

