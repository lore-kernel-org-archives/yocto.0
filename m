Return-Path: <karthik.poduval@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3DC64C55187
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:45 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web12.7395.1648863892802326562
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Apr 2022 18:44:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nicS/NYf;
 spf=pass (domain: gmail.com, ip: 209.85.167.45,
 mailfrom: karthik.poduval@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id z12so7859390lfu.10
        for <yocto@lists.yoctoproject.org>;
 Fri, 01 Apr 2022 18:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=/OTjDJvgZzoRaE3aLPSUn+4UJgbWH2OTUI75+rFgPI0=;
        b=nicS/NYfMpve1crNOuMMzhwXbGYhmrzF0bBnuLqMZKt+GLVJ0aHpFYCPrpyZJLJAC1
         vMPRVHCUqbfzAAonPG2pyRPqhdKnNfgZdgegLTGFkjRnpYS7FxO8nB3NEG6feFLzpzMg
         GQ6sq1b3jAy9XRWV/UdMhjRtlcFdLHYXN7rgPm7wBdqtBFZC0CYzhDMmrFo39/ZyV4tM
         okwp2yTjAlizgSY0bRlZ1ZImpyw/qFEPPNTMTsRxipShKhOdgj1B7EasrwOYhVNdPs/x
         IshUXGW90JJoQI976jZjwvetAoPXSj4VW0mvEZUBIllr3lnTXPKZnZi3LOkjRGxOuKbz
         0I0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=/OTjDJvgZzoRaE3aLPSUn+4UJgbWH2OTUI75+rFgPI0=;
        b=d1ZYbPu3fvMp4PGONEWBjYM5Yj4SbWWfrI1FLdVpsiw0mOGLFnYTDFxTobZ8H7Fuvl
         3k+GkFL6J2EC9yutivw2t2kJ8w28WlOFiCpdV5IPrq10gViHDxXq4fvNetWCQZhFtec5
         dAKuQjBv0V4lxO9W9I5+d0lucsCeoWlluRgAPjT94sEWu3NyYgaPBDrXzBCcTMN2NK9C
         J3RrkCgE3oq8k6mBEtGbttB0l92Bzz22CxjH3y1tTtvaPhBpaTLUZsgyIumbWp6n5jGN
         DXjqJX8a5AUm//CW+Ij6AG/Jp2+eXWuU9HqiXa7MunQJFao9NZ4aE0d/OBOFc1CMLeiX
         1xeg==
X-Gm-Message-State: AOAM530mS3zhsc/nkpRBl+9dNHhsa91xfPMTFkCHCNa9tgjKYKogN5QX
	SV/klYWoQF/8C2L4ITNk3tehPLT1EGWEqMSb8h8WB19Z
X-Google-Smtp-Source: 
 ABdhPJz6iKJrsbFlrSyk5j8/CwIf570J2spP+FemMvXJUT0PlmEx0bhPOjs/5uWiTuOL91xYTqP19JveS5vfFnFzvWo=
X-Received: by 2002:a19:ee08:0:b0:44a:acce:7af with SMTP id
 g8-20020a19ee08000000b0044aacce07afmr15404222lfb.402.1648863890274; Fri, 01
 Apr 2022 18:44:50 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAFP0Ok-2Gb7H8AE5WvK5VBn1U8KGfb5NS-hp7hcueHRu3OwT+Q@mail.gmail.com>
In-Reply-To: 
 <CAFP0Ok-2Gb7H8AE5WvK5VBn1U8KGfb5NS-hp7hcueHRu3OwT+Q@mail.gmail.com>
From: Karthik Poduval <karthik.poduval@gmail.com>
Date: Fri, 1 Apr 2022 18:44:42 -0700
Message-ID: 
 <CAFP0Ok8AqLmoR+2vnUjbNOADjbRNhYwjYrWt0RV=_nTRx2W-zw@mail.gmail.com>
Subject: Re: [yocto 3.1] adding custom testsdk script in own layer
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000767deb05dba20acf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56619

--000000000000767deb05dba20acf
Content-Type: text/plain; charset="UTF-8"

Ping. Still need help on this one, experts kindly advise.

On Tue, Mar 29, 2022, 4:34 PM Karthik Poduval <karthik.poduval@gmail.com>
wrote:

> Hi All,
>
> We were trying to add a custom sdktest script as shown in example
> https://docs.yoctoproject.org/test-manual/intro.html#testsdk.
>
> The script gets invoked when placed in meta/lib/oeqa/sdk/cases/mysdktest.py
>
> However when placed under.
> <my layer>/lib/oeqa/sdk/cases/mysdktest.py
> It does not get invoked when running
> bitbake <my image> -c testsdk
>
> The testimage scripts do work when placed under
> <my layer>/lib/oeqa/runtime/cases/
> as they are controlled by the TEST_SUITES variable.
>
> Kindly advise on how to proceed.
>
> --
> Regards,
> Karthik Poduval
>
>

--000000000000767deb05dba20acf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Ping. Still need help on this one, experts kindly advise.=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Tue, Mar 29, 2022, 4:34 PM Karthik Poduval &lt;<a href=3D"mailto:karthik=
.poduval@gmail.com">karthik.poduval@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><div dir=3D"ltr">Hi All,<br><br>We were trying to=
 add a custom sdktest script as shown in example <a href=3D"https://docs.yo=
ctoproject.org/test-manual/intro.html#testsdk" target=3D"_blank" rel=3D"nor=
eferrer">https://docs.yoctoproject.org/test-manual/intro.html#testsdk</a>.<=
br><br>The script gets invoked when placed in meta/lib/oeqa/sdk/cases/mysdk=
test.py<br><br>However when placed under.<br>&lt;my layer&gt;/lib/oeqa/sdk/=
cases/mysdktest.py<br>It does not get invoked when running=C2=A0<div>bitbak=
e &lt;my image&gt; -c testsdk<br><div><br></div><div>The testimage scripts =
do work when placed under=C2=A0<div>&lt;my layer&gt;/lib/oeqa/runtime/cases=
/=C2=A0</div><div>as they are controlled by the TEST_SUITES variable.<div><=
br></div><div>Kindly advise on how to=C2=A0proceed.<br><br>-- <br>Regards,<=
br>Karthik Poduval</div></div></div></div><div><br></div></div>
</blockquote></div>

--000000000000767deb05dba20acf--

