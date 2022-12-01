Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8638BC43217
	for <webhook@archiver.kernel.org>; Thu,  1 Dec 2022 11:18:21 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.40383.1669893492201439045
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Dec 2022 03:18:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=pMxJKEpa;
 spf=pass (domain: gmail.com, ip: 209.85.221.53, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id m14so2148795wrh.7
        for <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 03:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xiHW1NmyGNQLDglNsUCvYcffMaCk8hnUqjuvDNMK3Yk=;
        b=pMxJKEpa/kyIbTprE7jcdKoVAqiqIQKGavzOdJpju+6p669XCTgacUAc0TGuCeIGI5
         5xM+tDjDCAmeJzjfvAUzAbIrbnxKHJp1YfEJYdIX/CIJnITQevIR38FblDytgUg3cjWQ
         do+AWAyyh7Qscx21yEw9P3vl8juGK5f89a8sHY8377HHEJQKqL/fXswBRDlbuu4p8TO/
         b/meLJXKReFkliPUYbNzMIFsobF6OXl2iB71bSxFHqdlcSGGTnmtSzM49+8Wu7QRtDph
         eoiPpqjLKL2h923+Fmcchfh59Y1Ea7K9bqkXNlj/Dc2Pv26f9Je1IpUgWeRqt0kLegsj
         FFoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xiHW1NmyGNQLDglNsUCvYcffMaCk8hnUqjuvDNMK3Yk=;
        b=S4mJWT9omUMN4b5dXl6x+g7rDoFdg3UEtZDHvuEWWEli0Bw2urcjyUrv3KZw3lkIq9
         vqROB2YIVA26LuUDH8+CtIhp/F0+WOUb3se/G/aovwqvBQwt6DHERCxUIPZZo1Lr+UaJ
         SZL1aDFaT8Dp3lSEZE3HTQq6u/abqbYllGqBXjNbvKoD63Ozay3Waz19sV/e+Qn2i8cC
         46edHiz0J6o6OnMT1LhiRIrg24Hmc48l8SkLJxJHp0G2z6yNGBGnPREn2Yr2OYhRIQnC
         VAORunY5IeJoYBHkaCp+aDNJVPaCRaCsx65ML+03S0yrRCv69KmKBn3Z6kbT1Cpsy1Qg
         4Csw==
X-Gm-Message-State: ANoB5pkUbY8/LysaKiNnfomSCWUIBU9cHaSlNLTa+DQE+pl0uLzh0gzI
	lYOVX71LN/yqJBdLLyiTt7kVxXCtxi+HsqntLms=
X-Google-Smtp-Source: AA0mqf6fr6/w5bvIerHcFVhR609kahyOqdLZkv4iCEDQtcnjaK/YLX1eJNN514hrcLSbSxmloftghWlHqhikF6aa/Ck=
X-Received: by 2002:a05:6000:70a:b0:242:22b0:4280 with SMTP id
 bs10-20020a056000070a00b0024222b04280mr7408131wrb.548.1669893490538; Thu, 01
 Dec 2022 03:18:10 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LyT_nRAAK8WHPQwGDRjiQfaHHNUKPCfW=PJJ83FuWK1=w@mail.gmail.com>
 <9D944DA0-C890-4E71-A82A-3E30892E8684@arm.com>
In-Reply-To: <9D944DA0-C890-4E71-A82A-3E30892E8684@arm.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 1 Dec 2022 12:17:58 +0100
Message-ID: <CA+chaQcbVjpF79hRgQYE=RSBCr4-4=+2XYv+TviUdZuOMbkTxw@mail.gmail.com>
Subject: Re: [yocto] LAYERSERIES_COMPAT_ variable in the layer's recipe
To: Ross Burton <ross.burton@arm.com>
Cc: "zoran.stojsavljevic@gmail.com" <zoran.stojsavljevic@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000050fdcb05eec26072"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 11:18:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58700

--00000000000050fdcb05eec26072
Content-Type: text/plain; charset="UTF-8"

On Thu, Dec 1, 2022 at 12:09 PM Ross Burton <ross.burton@arm.com> wrote:

> On 1 Dec 2022, at 04:27, Zoran via lists.yoctoproject.org
> <zoran.stojsavljevic=gmail.com@lists.yoctoproject.org> wrote:
> > I do not understand why we need to explicitly name releases for such
> > simple generic layers?!
>
> The compatibility is because over time things change: override syntax has
> changed, classes get added or removed, functionality may appear in
> bitbake.  Sometimes the breakage is subtle, and a layer may parse and
> appear to build fine, but be broken.
>
> Your meta-socketcan layer is broken in honister onwards despite claiming
> compatibility, for example.
>

And here is another example why nobody should be using meta-socketcan:
https://github.com/ZoranStojsavljevic/meta-socketcan/commit/cefd86cd1def9ad2e63be527f8ce36a076d7e17c#

You cannot change the declared LICENSE of the components, just because you
wish them to use the same license as the layer metadata, especially when
those components clearly declare different LICENSE in the source code, e.g.:
https://github.com/linux-can/socketcand/commit/a7ab9878d11ac187b92dcf48b6331c228f4f4b92

Using COMMON_LICENSE_DIR in LIC_FILES_CHKSUM is another anti-pattern which
just disables whole purpose of LIC_FILES_CHKSUM and this is acceptable only
for "pure-metadata" recipes like packagegroups or image recipes.

--00000000000050fdcb05eec26072
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Dec 1, 2022 at 12:09 PM Ross Burt=
on &lt;<a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a>&gt; w=
rote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">On 1 Dec 2022, at 04:27, Zoran via <a href=3D"http://lists=
.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.=
org</a> &lt;zoran.stojsavljevic=3D<a href=3D"mailto:gmail.com@lists.yoctopr=
oject.org" target=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote=
:<br>
&gt; I do not understand why we need to explicitly name releases for such<b=
r>
&gt; simple generic layers?!<br>
<br>
The compatibility is because over time things change: override syntax has c=
hanged, classes get added or removed, functionality may appear in bitbake.=
=C2=A0 Sometimes the breakage is subtle, and a layer may parse and appear t=
o build fine, but be broken.<br>
<br>
Your meta-socketcan layer is broken in honister onwards despite claiming co=
mpatibility, for example.<br></blockquote><div><br></div><div>And here is a=
nother example why nobody should be using meta-socketcan:</div><div><a href=
=3D"https://github.com/ZoranStojsavljevic/meta-socketcan/commit/cefd86cd1de=
f9ad2e63be527f8ce36a076d7e17c#">https://github.com/ZoranStojsavljevic/meta-=
socketcan/commit/cefd86cd1def9ad2e63be527f8ce36a076d7e17c#</a></div><div><b=
r></div><div>You cannot change the declared LICENSE of the components, just=
 because you wish them to use the same license as the layer metadata, espec=
ially when those components clearly declare different LICENSE in the source=
 code, e.g.:</div><div><a href=3D"https://github.com/linux-can/socketcand/c=
ommit/a7ab9878d11ac187b92dcf48b6331c228f4f4b92">https://github.com/linux-ca=
n/socketcand/commit/a7ab9878d11ac187b92dcf48b6331c228f4f4b92</a></div><div>=
<br></div><div>Using COMMON_LICENSE_DIR in LIC_FILES_CHKSUM is another anti=
-pattern which just disables whole purpose of=C2=A0LIC_FILES_CHKSUM and thi=
s is acceptable only for &quot;pure-metadata&quot; recipes like packagegrou=
ps or image recipes.</div></div></div>

--00000000000050fdcb05eec26072--

