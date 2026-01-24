Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE001D715EA
	for <webhook@archiver.kernel.org>; Sat, 24 Jan 2026 13:23:45 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.18434.1769261023064253027
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 Jan 2026 05:23:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@slashdevslashnull-org.20230601.gappssmtp.com header.s=20230601 header.b=Po7TVEkl;
 spf=softfail (domain: slashdevslashnull.org, ip: 209.85.218.51, mailfrom: jdowd@slashdevslashnull.org)
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b883c8dfb00so626969566b.1
        for <yocto@lists.yoctoproject.org>; Sat, 24 Jan 2026 05:23:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769261021; cv=none;
        d=google.com; s=arc-20240605;
        b=kuAoD4E4Svt3PjD4FrwTN10zOntpGHPP5MkyjyYPmjABCoc/nzaZUtCCHbFfcOFObM
         YIIO+gAqRgS7fJp+scB83YEl0FZjUl8rT/sAo7ImduTp60zJtU1KuehqrlNDQoSfU9V5
         AnX06QeOhGPKjT0lBCZuX9jKNn4uoh7EaPcBSvpsB4UqxU4D9SXCXt4YOAIgGsI7Bx10
         cbqmNra7LmqBRr+9yfSHWYq5h+sEbVL+Nxak03xxOBtT86cJdMCWvdX6Vi+3rhjK2s7j
         EvKikl1LbQdwpSTkxkG20TflEsA84BGY5opp4WcEsmlfJ2do2BWu/5Sunzri2ux9d1sO
         Ok7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=xXwEzj3/D/PUgOg9TKjr4HLkgdO/5e85Qt0O6be8Ptk=;
        fh=cTyP0KvRd8EnMkZzOXY2+icq/PBDQ9y0SUWUO5poQcI=;
        b=EWeaYn1+CGnfLJft5sgP+mX0EkDh37NVoLKsql3p5q+E9LFhj8Y39GGj+QToavH3kS
         Em7ftPEiQcvj5LUjouygmDtuKCEy6U2brcn1HUOu3Sl3yJeDH1J4qPo9NuyAuBUwXH/x
         SWCHBJ72u4cZlV9G0tDYLFBy45CaC7TWYCCPoa7Q1d+1BEnam9fGuiuWvFIZ+RHznmSa
         TFckACnaXTjjL4bgEAiS506V7yM0XxSE0G5qQXy2cDP2wpayjymR6KiHvGWZVG/osLBZ
         iPoSL/1dfMjfWp/5Jo5uAYETbxzyBP5R6JktwUrkHxoqeClgbmmK2RfBKnwIPBk6/biQ
         yPeQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=slashdevslashnull-org.20230601.gappssmtp.com; s=20230601; t=1769261021; x=1769865821; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xXwEzj3/D/PUgOg9TKjr4HLkgdO/5e85Qt0O6be8Ptk=;
        b=Po7TVEklOfbfQus+uvnbRL6wBcOJlXmrTWx1pABhWZiNjpaAevuf2apMlwB/n5YSK2
         TYnALMT119t0h7XKB6p4IH0WVRp0kS/X2tEuA2H1x5CafmSlE7kSX3SPnhXEBFBnOzZI
         Rctm7Dft4m9k6dde3U+xs+LzSWCUsJgBWhI2de8MEUDYl2rFvGwfLA5Imv2QKK0Skjji
         mK0Y0PfDiD8Vg8QyxU7wDW0DBvQLC6DDbUyrnBDXFYAInIjTXTW4O6qT/bVG5xDdinPQ
         Og6XWz0CEXF2i8nP+hFgq2qHkLCVaGSlozbzLHo61s1ikpT34JA8sG11bZAUor/RORKS
         TAlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769261021; x=1769865821;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xXwEzj3/D/PUgOg9TKjr4HLkgdO/5e85Qt0O6be8Ptk=;
        b=o/6zBX4xlsCfcRPbGXPpL2i2G6S5DW/P8pzjcdoQdMAXA8+Okj/tSRUPNyUfo9yTVM
         ys5MWXj/S1V7PtYsl8grcsgKta6en3NKAyJTc5BSSES8BwvOGIkOI/ejy7LD9HKTuXjo
         Yt248m6aeXPe70IfsKfoULgAsi5yzHqQPfA+c7c3S1CzKfYJRWC5Lx2nXK0mL1GZZnqL
         U/AqOPxeGekjyzbdEJfOI/gaUI2+gZQ1JHCtu32uJyiJtgVQIIMmupDpdgtpt7+wjAbs
         4izwR70i/FIb3pddlJxcBFamcIr0IPFVWKCmrddNS8bk7Nyfv2B8vjceGeZUpi3wvMU+
         orLA==
X-Gm-Message-State: AOJu0YxIk8ifoWrHKfmpYO1w2itKiZS7yTe2r+RB9QQQ6A1Hd7xwG926
	MP2qIsyg2xX7grX+Z6l/HjvXF3m0T3S5CDyHPlAZ329VY3148c0hsWZ+sUZvtXk5HGhsI4BpKFn
	uCb/Ke2Tk6NmN06zLj6rb72AcwVJU7z/1Kb6vmvs3pNI+YqC/BdX1XdQ=
X-Gm-Gg: AZuq6aJCIqbV3y81CcIL//VS79jjbvdXRIEdvB9rYQrwcdpjQUy8t2bbkFMPbBcrNKr
	ka8vjaMJLoLZ94bsnrfPtU4nE/t3+ISjC13BFf8NwoUufPbdetEXMSLr9DxOpT30IpAKzAEGl3d
	/YpsRYZDCXXAWNlxHRW+BNPr+KPgK89XBfofaWpJxqsZo+kTWveCkkZkCrQ5leHOt/xM1AY6ay9
	tURv1YyZiV033wBUj/RYMT11Rg7Q4YVoj6Eu9LRxXihA9zl0orqRVKy0IGzIoBRQM0L7j3f
X-Received: by 2002:a17:906:478c:b0:b88:8782:fead with SMTP id
 a640c23a62f3a-b8887830954mr198113166b.47.1769261020523; Sat, 24 Jan 2026
 05:23:40 -0800 (PST)
MIME-Version: 1.0
References: <92b1fbe3da82c19ed2ca7a617077f6055a74f7e3.camel@bootlin.com>
In-Reply-To: <92b1fbe3da82c19ed2ca7a617077f6055a74f7e3.camel@bootlin.com>
From: John Dowd <jdowd@slashdevslashnull.org>
Date: Sat, 24 Jan 2026 08:23:29 -0500
X-Gm-Features: AZwV_QjHYzrasW9JVdfNJrhra2uRWD6HC3OLku9Y8hrew3MCLgcgXlytuOarlqQ
Message-ID: <CAHPfuSnk21hPk8b42VNaO9ZFtiUA8LZ_HcsyRE3i61XJVkYYeQ@mail.gmail.com>
Subject: Re: [yocto] [RFC] Moving OP-TEE support from meta-arm to oe-core
To: yocto@lists.yoctoproject.org, thomas.perrot@bootlin.com
Content-Type: multipart/alternative; boundary="000000000000a4bf570649222e7d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 24 Jan 2026 13:23:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66184

--000000000000a4bf570649222e7d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I had thought that OP-TEE can only work on ARM processors since it relies
on the TrustZone h/w. For intel/AMD you have TPM and for something like
powerpc you have CAAM.

Cheers!!

On Thu, Jan 22, 2026 at 4:33=E2=80=AFAM Thomas Perrot via lists.yoctoprojec=
t.org
<thomas.perrot=3Dbootlin.com@lists.yoctoproject.org> wrote:

> Hi,
>
> Currently, OP-TEE support is maintained in the meta-arm layer. However,
> OP-TEE is now being adopted by non-ARM platforms as well, notably RISC-
> V.
>
> Given this broader adoption, would it make sense to move the OP-TEE
> recipes from meta-arm to oe-core?
>
> I'd like to hear the community's thoughts on this.
>
> Kind regards,
> Thomas Perrot
> --
> Thomas Perrot, Bootlin
> Embedded Linux and kernel engineering
> https://bootlin.com
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66178):
> https://lists.yoctoproject.org/g/yocto/message/66178
> Mute This Topic: https://lists.yoctoproject.org/mt/117397331/9366835
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jdowd@slashdevslashnull.org]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
"To err is human, to forgive is not company policy."

John Dowd
Contract - Software Developer
Cell: (613)316-7884

--000000000000a4bf570649222e7d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I had thought that OP-TEE can only work on ARM processors =
since it relies on the TrustZone h/w. For intel/AMD you have TPM and for so=
mething like powerpc you have CAAM.<div><br></div><div>Cheers!!</div></div>=
<br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Jan 22, 2026 at 4:33=E2=80=AFAM Thomas Perrot via <=
a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;tho=
mas.perrot=3D<a href=3D"mailto:bootlin.com@lists.yoctoproject.org">bootlin.=
com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">Hi,<br>
<br>
Currently, OP-TEE support is maintained in the meta-arm layer. However,<br>
OP-TEE is now being adopted by non-ARM platforms as well, notably RISC-<br>
V.<br>
<br>
Given this broader adoption, would it make sense to move the OP-TEE<br>
recipes from meta-arm to oe-core?<br>
<br>
I&#39;d like to hear the community&#39;s thoughts on this.<br>
<br>
Kind regards,<br>
Thomas Perrot<br>
-- <br>
Thomas Perrot, Bootlin<br>
Embedded Linux and kernel engineering<br>
<a href=3D"https://bootlin.com" rel=3D"noreferrer" target=3D"_blank">https:=
//bootlin.com</a><br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#66178): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66178" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66178</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/117397331/936=
6835" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/117397331/9366835</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jdowd@slashdevslashnull.org" target=3D"_blank">j=
dowd@slashdevslashnull.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature"><div dir=3D"ltr">&quot;To err is human, to forgive is not company=
 policy.&quot;<div><br></div><div>John Dowd</div><div>Contract - Software D=
eveloper</div><div>Cell: (613)316-7884</div></div></div>

--000000000000a4bf570649222e7d--

