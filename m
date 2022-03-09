Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A46C433EF
	for <webhook@archiver.kernel.org>; Wed,  9 Mar 2022 23:49:31 +0000 (UTC)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com
 [209.85.221.176])
 by mx.groups.io with SMTP id smtpd.web11.3869.1646869766312442917
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Mar 2022 15:49:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=RZtj500q;
 spf=pass (domain: gmail.com, ip: 209.85.221.176,
 mailfrom: joel.winarske@gmail.com)
Received: by mail-vk1-f176.google.com with SMTP id s195so2135110vkb.10
        for <yocto@lists.yoctoproject.org>;
 Wed, 09 Mar 2022 15:49:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Kn4pn1n55i1bSC0IaZI6+SOFhTeD3XXNu9BVJHhSMDI=;
        b=RZtj500qd4EsTES6Ilt4w/THlrDcrv+6u5YLNmUIinFamtH6dk/pAF/aG1m9d+Zpt9
         MIjEPsmkMqgLdk7zVh4SlTWTSsD5FwDnv9PoigAyLJ17QCeah3mz3wh/st2E+nOqSDlT
         xyIpqMj6eqq6qLtddwTD9Ma7q+TsW2RlcJUhKILkm6hk0AueuFnwGT8qHYWNCDPzPg56
         1Ltv5Z+nHMsFEaelsqKAHmnUgMLqomOdAsZRXGr7QxOgIddELDzrmIVZJY7vsLPIdKoi
         BkmhM+4xuT55eTPms1ETZnv873gDvWnfWxZv6r3v/rnefpjcsiyMCSI2tZfzuWZ1aXXa
         oCNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Kn4pn1n55i1bSC0IaZI6+SOFhTeD3XXNu9BVJHhSMDI=;
        b=WSaUrtZGp++RjEe3DGrTpkIlPCYoH42eV2oz7B4P5Qjc0b4SD5NYK2EMgS3VuiOHvm
         lPKwjb2w1JrpL2vzP8yoLZx+SMNUWI/IolI4PcLyMR5HoH61eL/k77fSqpG6CP979W04
         7YTXi/Tl9lx/8pNaZUJ1+lQ0azh3Ah7M1OGZFCI7w5Dw0jduk83O3ICdCTbuWK7+G53A
         ijNwNZpL5epTR941A0aWT5mpJvWwIu9O94pZUmbxt/Fc6d2tUpYhdmKitvF7rpaQ06uO
         E7d7bSWCDK0esRuEAMopP9ntghvK9+Njh+gW8utAj6lcDal6+ggeyNwjF/2oSq+uPnLT
         kxbg==
X-Gm-Message-State: AOAM531NagCCuArAddPP8lAhHKPcMxnj9RH7f6BzgAPl82ODR4tSFZOy
	7cryIkBpFLooRTe0xTK8yN3l1H70JZAf2cxsEJg=
X-Google-Smtp-Source: 
 ABdhPJyG+Npyp6eOTMiGKZ9xJFKoHAp66cpge8189Fs7ssQsgBrRKyaMH1M3r3BIWhK5JM7ZVm4zh+BLe0V6us1x5ew=
X-Received: by 2002:a05:6122:7ca:b0:337:b6b6:760a with SMTP id
 l10-20020a05612207ca00b00337b6b6760amr1065265vkr.0.1646869765270; Wed, 09 Mar
 2022 15:49:25 -0800 (PST)
MIME-Version: 1.0
References: 
 <CABKMkPKrjB5Wb9MOb74qzeqx7brs9Em3dmk1h5Zxm1CKKJmYkw@mail.gmail.com>
 <CAMKF1srTpBs-cZOqbLbFxOpkowxjH9-Q9NgYoMX3eXiAoUo6fg@mail.gmail.com>
 <16AB446BCC6816D9.20530@lists.yoctoproject.org>
In-Reply-To: <16AB446BCC6816D9.20530@lists.yoctoproject.org>
From: Joel Winarske <joel.winarske@gmail.com>
Date: Wed, 9 Mar 2022 15:49:14 -0800
Message-ID: 
 <CABKMkP+iBKJJ+pVX6sLDUHG8E2Tx+xi+v2OW97y1si2+VXUsCw@mail.gmail.com>
Subject: Re: [yocto] Google GN support
To: Joel Winarske <joel.winarske@gmail.com>
Cc: Khem Raj <raj.khem@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000059b26c05d9d1bff8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Mar 2022 23:49:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56413

--00000000000059b26c05d9d1bff8
Content-Type: text/plain; charset="UTF-8"

I had to revisit this for Google Flutter LTS support as upstream (Google
Flutter team) wasn't interested in providing tar.xz releases.

We have two working solutions for Flutter gclient as of today.

1. gclient fetcher.  This fetches the project using gclient and archives
the whole source tree.  I call it the gclient snapshot solution.  Downside
is initial fetch time due to archive time, but subsequent build times are
good.  So only really useful if you don't switch versions often.

2. Pre-process project using python script and add cipd fetcher support to
layer.  This script creates an inc file that gets included by a recipe.
Initial fetch time is about 2.5x build time, with similar build times to
gclient fetcher; ~3 minutes, some sub 3 minutes.  The current approach
before this method average build times were ~6 minutes.  So this approach
improves build time, and provides LTS.  It factors out the use of
gclient/depot_tools in the fetch process.

gclient_bitbake.py.  The script generates a do_run_hooks task using gn
conditionals.
*
https://github.com/meta-flutter/meta-flutter/blob/jw/lts/scripts/gclient_bitbake.py

script output
*
https://github.com/meta-flutter/meta-flutter/blob/jw/lts/conf/include/flutter-engine_2.10.3.inc

cipd:// fetcher impl:
*
https://github.com/meta-flutter/meta-flutter/blob/jw/lts/classes/cipd.bbclass
* https://github.com/meta-flutter/meta-flutter/blob/jw/lts/lib/cipd.py

It currently only works out of the box for the flutter project, but I did
use it to create a recipe for luci-go -> cipd.
*
https://github.com/meta-flutter/meta-flutter/blob/jw/lts/recipes-devtools/luci-go/luci-go-native_git.bb

I mocked up changes to support the v8 project; see gaps for generic
support.  It does require dynamically compiling python code to manage
conditionals, and needs a bit more work.  After which python_bitbake.py
should work for any gclient based project.

gs:// fetcher (Google Storage) support is also planned.  So in cases which
download google storage artifacts in hook, it would allow moving that to
SRC_URI as gs:// element for LTS scenario.

If anyone finds this useful/interesting or they want to collaborate on
improvements let me know.

I do think cipd:// fetcher support would be a good addition to oe-core.


Joel

On Tue, Oct 5, 2021 at 3:55 PM Joel Winarske via lists.yoctoproject.org
<joel.winarske=gmail.com@lists.yoctoproject.org> wrote:

>
> > look at meta-browser/meta-chromium as well.
>
> The download archive (tar.xz) approach may be the easiest solution.  Then
> one would just need to make a versioned recipe for each LTS.
>
> Thanks Khem!
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54974):
> https://lists.yoctoproject.org/g/yocto/message/54974
> Mute This Topic: https://lists.yoctoproject.org/mt/86105559/2167248
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> joel.winarske@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000059b26c05d9d1bff8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I had to revisit this for Google Flutter LTS support as up=
stream (Google Flutter team) wasn&#39;t interested in providing tar.xz rele=
ases.<div><br></div><div>We have two working solutions for Flutter gclient =
as of today.</div><div><br></div><div>1. gclient fetcher.=C2=A0 This fetche=
s the project using gclient and archives the whole source tree.=C2=A0 I cal=
l it the gclient snapshot solution.=C2=A0 Downside is initial fetch time du=
e to archive time, but subsequent build times are good.=C2=A0 So only reall=
y useful if you don&#39;t switch versions often.</div><div><br></div><div>2=
. Pre-process project using python=C2=A0script and add cipd fetcher support=
 to layer.=C2=A0 This script creates an inc file that gets included by a re=
cipe.=C2=A0 Initial fetch time is about 2.5x build time, with similar build=
 times to gclient fetcher; ~3 minutes, some sub 3 minutes.=C2=A0 The curren=
t approach before this method average build times were ~6 minutes.=C2=A0 So=
 this approach improves build time, and provides LTS.=C2=A0 It factors out =
the use of gclient/depot_tools in the fetch process.</div><div><br></div><d=
iv>gclient_bitbake.py.=C2=A0 The=C2=A0script generates a do_run_hooks task =
using gn conditionals.</div><div></div><div>* <a href=3D"https://github.com=
/meta-flutter/meta-flutter/blob/jw/lts/scripts/gclient_bitbake.py">https://=
github.com/meta-flutter/meta-flutter/blob/jw/lts/scripts/gclient_bitbake.py=
</a></div><div><br></div><div>script output</div><div>* <a href=3D"https://=
github.com/meta-flutter/meta-flutter/blob/jw/lts/conf/include/flutter-engin=
e_2.10.3.inc">https://github.com/meta-flutter/meta-flutter/blob/jw/lts/conf=
/include/flutter-engine_2.10.3.inc</a></div><div><br></div><div>cipd:// fet=
cher impl:</div><div>* <a href=3D"https://github.com/meta-flutter/meta-flut=
ter/blob/jw/lts/classes/cipd.bbclass">https://github.com/meta-flutter/meta-=
flutter/blob/jw/lts/classes/cipd.bbclass</a><br>* <a href=3D"https://github=
.com/meta-flutter/meta-flutter/blob/jw/lts/lib/cipd.py">https://github.com/=
meta-flutter/meta-flutter/blob/jw/lts/lib/cipd.py</a><br></div><div><br></d=
iv><div>It currently only works out of the box for the flutter project,=C2=
=A0but I did use it to create a recipe for luci-go -&gt; cipd.</div><div>* =
<a href=3D"https://github.com/meta-flutter/meta-flutter/blob/jw/lts/recipes=
-devtools/luci-go/luci-go-native_git.bb">https://github.com/meta-flutter/me=
ta-flutter/blob/jw/lts/recipes-devtools/luci-go/luci-go-native_git.bb</a></=
div><div><br></div><div>I mocked up changes to support the v8 project; see =
gaps for generic support.=C2=A0 It does require dynamically compiling pytho=
n code to manage conditionals, and needs a bit more work.=C2=A0 After which=
 python_bitbake.py should work for any gclient based project.</div><div><br=
></div><div>gs:// fetcher (Google Storage) support is also planned.=C2=A0 S=
o in cases which download google storage artifacts in hook, it would allow =
moving that to SRC_URI as gs:// element for LTS scenario.</div><div><br></d=
iv><div>If anyone finds this=C2=A0useful/interesting=C2=A0or they want to c=
ollaborate on improvements let me know.<br></div><div><br></div><div>I do t=
hink cipd:// fetcher support would be a good addition to oe-core.</div><div=
><br></div><div><br></div><div>Joel</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 5, 2021 at 3:55 PM Joe=
l Winarske via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject=
.org</a> &lt;joel.winarske=3D<a href=3D"mailto:gmail.com@lists.yoctoproject=
.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1=
px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div dir=3D"ltr"><br><div><span></span>&gt; look at m=
eta-browser/meta-chromium as well.</div><div><br></div><div><div>The downlo=
ad archive (tar.xz) approach may be the easiest solution.=C2=A0 Then one wo=
uld just need to make a versioned recipe for each LTS.<br></div></div><br><=
/div>Thanks Khem!</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#54974): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/54974" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/54974</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86105559/2167=
248" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/86105559/2167248</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:joel.winarske@gmail.com" target=3D"_blank">joel.=
winarske@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000059b26c05d9d1bff8--

