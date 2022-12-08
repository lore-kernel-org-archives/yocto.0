Return-Path: <pvgareta313@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D68EC3A5A7
	for <webhook@archiver.kernel.org>; Thu,  8 Dec 2022 07:06:53 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web10.7561.1670483207040910450
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Dec 2022 23:06:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WWBnBhXl;
 spf=pass (domain: gmail.com, ip: 209.85.167.52, mailfrom: pvgareta313@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id b13so686240lfo.3;
        Wed, 07 Dec 2022 23:06:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Cl9ZSZte1pWZfs2c06wvzF8qABn1qbS60yVu5/maIoA=;
        b=WWBnBhXlGm6UvrjjiG9cr3VIP3aq/7Krg6s4INUg2yFbYB18LwdShcLYlzhsG8lT0R
         ndvUEwORx6BCf7j4XDJh5tfGF7kILHPyn207bhfVkdXULaUinX9hIuR2edmEnCQPwnDL
         9AAImvuuLqKAaDe61nEWyA1PaU0fKI2mi2HGxqzoW1Wb/1vhTA12Frl5HkcQ/HVgAU4E
         Uz78Yq682tiL/T9lOYEVbcV2YuATJo46Hu4UhJdXPcarfLVuoCRpgcorFkWJ7lpVBz4a
         M2VLXFynp9hyqx7K2lpdCrW2ODX6SKxGehAWtmNwD3QjSapI1bvd1ts6IFG1u+zFT8Cf
         3rxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Cl9ZSZte1pWZfs2c06wvzF8qABn1qbS60yVu5/maIoA=;
        b=lla3udzJ6xpPR/jr8v24dDZV8FG1a7uqhR2ce/CT2KOGCEZSyfi85r5Q5Onot7fIkG
         13Bv2EIuQkWKgm30W+WB8sel/sfoClyjQV26B3yFlhOsaQHe2g5iCPcBT6tTuHICz2T2
         +c5T3NqbGyVCDSHP2Mww3Zkiz7krNdypRcZZHKXZgGuVBsBX4lpJBvjrFegYXFHzxCeu
         LR/FedsBF13JBwMpRzkE7eRiRAkcK5e1GB8DqEtltNCRpFdzNJ5jddAcx4abmqzEfKGW
         f5/0Xr7ZUfLYed4dzbER6t08beqTnXlRFt/Cl5XaWjpnWmDB8wYfcrU8DCGEcXTbb3YM
         qe0w==
X-Gm-Message-State: ANoB5pnzNjA/Lk3qiJuYI/djOd5szda/SSJfcoTX8eavy0s1j7FsSH/T
	mhAT5iM2ZNo+DAWVGz8oz/0hzQM0JspIO2wAza5tIAvpqXJj+7LN
X-Google-Smtp-Source: AA0mqf6O7Pcvagzs6B+ggzCw+TdqFmsJ+9nlXOqSYvASUCQPNZgaziimv+tCuHxDg5S3WWRb7Lw5qEZz3b4I7RBj/Jg=
X-Received: by 2002:a05:6512:2985:b0:49a:d9ae:3038 with SMTP id
 du5-20020a056512298500b0049ad9ae3038mr25549801lfb.44.1670483203792; Wed, 07
 Dec 2022 23:06:43 -0800 (PST)
MIME-Version: 1.0
From: Pravin Gareta <pvgareta313@gmail.com>
Date: Thu, 8 Dec 2022 12:36:32 +0530
Message-ID: <CAK7XZUARh56oC2j-n9QhGeFXb3kB4D6aBrbd6cRbOE8pV-ceRg@mail.gmail.com>
Subject: [Kirkstone] Help in fetching packages from premirror
To: yocto@lists.yoctoproject.org, yocto+owner@lists.yoctoproject.org, 
	yocto+help@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f721ac05ef4bada3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Dec 2022 07:06:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58754

--000000000000f721ac05ef4bada3
Content-Type: text/plain; charset="UTF-8"

Hello Guys,

We have actually got the vendor release which is using "Kirkstone" and Our
base layers are "thud". So we migrated our base layers to kirkstone
compatible.
After that we triggered the build and facing issue for fetching the
premirror path.

Actually we have uploaded our packages into perforce repo and we are
downloading the packages from perforce only.

Previously with thud it is working fine but after kirkstone migration we
are facing issues to fetch our packages from perforce.

Please find the error log.
  File
"/data/home/Gareta/VW_ConMod_gclient/sources/craton2-yocto-build/poky/bitbake/lib/bb/fetch2/perforce.py",
line 84, in Perforce.urldata_init(ud=<bb.fetch2.FetchData object at
0x7fc6fa0647c0>, d=<bb.data_smart.DataSmart object at 0x7fc6f6035610>):
             if delim != -1:
    >            (ud.user, ud.pswd) = path.split('@')[0].split(':')
                 ud.path = path.split('@')[1]
ValueError: too many values to unpack (expected 2)

ERROR: Command execution failed: Traceback (most recent call last):
  File
"/data/home/Gareta/VW_ConMod_gclient/sources/craton2-yocto-build/poky/bitbake/lib/bb/command.py",
line 126, in runAsyncCommand
    commandmethod(self.cmds_async, self, options)
  File
"/data/home/Gareta/VW_ConMod_gclient/sources/craton2-yocto-build/poky/bitbake/lib/bb/command.py",
line 607, in buildTargets
    command.cooker.buildTargets(pkgs_to_build, task)
  File
"/data/home/Gareta/VW_ConMod_gclient/sources/craton2-yocto-build/poky/bitbake/lib/bb/cooker.py",
line 1579, in buildTargets
    bb.event.fire(bb.event.BuildStarted(buildname, ntargets),
self.databuilder.mcdata[mc])
  File
"/data/home/Gareta/VW_ConMod_gclient/sources/craton2-yocto-build/poky/bitbake/lib/bb/event.py",
line 216, in fire
    fire_class_handlers(event, d)
  File
"/data/home/Gareta/VW_ConMod_gclient/sources/craton2-yocto-build/poky/bitbake/lib/bb/event.py",
line 123, in fire_class_handlers
    execute_handler(name, handler, event, d)
  File
"/data/home/Gareta/VW_ConMod_gclient/sources/craton2-yocto-build/poky/bitbake/lib/bb/event.py",
line 93, in execute_handler
    ret = handler(event)
  File
"/data/home/Gareta/VW_ConMod_gclient/sources/craton2-yocto-build/poky/../poky/meta/classes/uninative.bbclass",
line 72, in defaultuninative_event_fetchloader
    fetcher.download()
  File
"/data/home/Gareta/VW_ConMod_gclient/sources/craton2-yocto-build/poky/bitbake/lib/bb/fetch2/__init__.py",
line 1736, in download
    done = m.try_mirrors(self, ud, self.d, mirrors)
  File
"/data/home/Gareta/VW_ConMod_gclient/sources/craton2-yocto-build/poky/bitbake/lib/bb/fetch2/__init__.py",
line 1602, in try_mirrors
    return bool(try_mirrors(fetch, d, urldata, mirrors, check))
  File
"/data/home/Gareta/VW_ConMod_gclient/sources/craton2-yocto-build/poky/bitbake/lib/bb/fetch2/__init__.py",
line 1125, in try_mirrors
    uris, uds = build_mirroruris(origud, mirrors, ld)
  File
"/data/home/Gareta/VW_ConMod_gclient/sources/craton2-yocto-build/poky/bitbake/lib/bb/fetch2/__init__.py",
line 996, in build_mirroruris
    adduri(origud, uris, uds, mirrors, origud.mirrortarballs or [None])
  File
"/data/home/Gareta/VW_ConMod_gclient/sources/craton2-yocto-build/poky/bitbake/lib/bb/fetch2/__init__.py",
line 979, in adduri
    newud = FetchData(newuri, ld)
  File
"/data/home/Gareta/VW_ConMod_gclient/sources/craton2-yocto-build/poky/bitbake/lib/bb/fetch2/__init__.py",
line 1317, in __init__
    self.method.urldata_init(self, d)
  File
"/data/home/Gareta/VW_ConMod_gclient/sources/craton2-yocto-build/poky/bitbake/lib/bb/fetch2/perforce.py",
line 84, in urldata_init
    (ud.user, ud.pswd) = path.split('@')[0].split(':')
ValueError: too many values to unpack (expected 2)

Can you guys help me to resolve this issue?

Regards,
Pravin

--000000000000f721ac05ef4bada3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Guys,<div><br></div><div>We have actually got the ve=
ndor release which is using &quot;Kirkstone&quot; and Our base layers are &=
quot;thud&quot;. So we migrated our base layers to kirkstone compatible.</d=
iv><div>After that we triggered the build and facing issue for fetching the=
 premirror path.</div><div><br></div><div>Actually we have uploaded our pac=
kages into perforce repo and we are downloading=C2=A0the packages from perf=
orce only.</div><div><br></div><div>Previously with thud it is working fine=
 but after kirkstone migration we are facing issues to fetch=C2=A0our packa=
ges from perforce.</div><div><br></div><div>Please find the error log.</div=
><div>=C2=A0 File &quot;/data/home/Gareta/VW_ConMod_gclient/sources/craton2=
-yocto-build/poky/bitbake/lib/bb/fetch2/perforce.py&quot;, line 84, in Perf=
orce.urldata_init(ud=3D&lt;bb.fetch2.FetchData object at 0x7fc6fa0647c0&gt;=
, d=3D&lt;bb.data_smart.DataSmart object at 0x7fc6f6035610&gt;):<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if delim !=3D -1:<br>=C2=A0 =C2=A0=
 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(ud.user, ud.pswd) =3D path.=
split(&#39;@&#39;)[0].split(&#39;:&#39;)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ud.path =3D path.split(&#39;@&#39;)[1]<br>Va=
lueError: too many values to unpack (expected 2)<br><br>ERROR: Command exec=
ution failed: Traceback (most recent call last):<br>=C2=A0 File &quot;/data=
/home/Gareta/VW_ConMod_gclient/sources/craton2-yocto-build/poky/bitbake/lib=
/bb/command.py&quot;, line 126, in runAsyncCommand<br>=C2=A0 =C2=A0 command=
method(self.cmds_async, self, options)<br>=C2=A0 File &quot;/data/home/Gare=
ta/VW_ConMod_gclient/sources/craton2-yocto-build/poky/bitbake/lib/bb/comman=
d.py&quot;, line 607, in buildTargets<br>=C2=A0 =C2=A0 command.cooker.build=
Targets(pkgs_to_build, task)<br>=C2=A0 File &quot;/data/home/Gareta/VW_ConM=
od_gclient/sources/craton2-yocto-build/poky/bitbake/lib/bb/cooker.py&quot;,=
 line 1579, in buildTargets<br>=C2=A0 =C2=A0 bb.event.fire(bb.event.BuildSt=
arted(buildname, ntargets), self.databuilder.mcdata[mc])<br>=C2=A0 File &qu=
ot;/data/home/Gareta/VW_ConMod_gclient/sources/craton2-yocto-build/poky/bit=
bake/lib/bb/event.py&quot;, line 216, in fire<br>=C2=A0 =C2=A0 fire_class_h=
andlers(event, d)<br>=C2=A0 File &quot;/data/home/Gareta/VW_ConMod_gclient/=
sources/craton2-yocto-build/poky/bitbake/lib/bb/event.py&quot;, line 123, i=
n fire_class_handlers<br>=C2=A0 =C2=A0 execute_handler(name, handler, event=
, d)<br>=C2=A0 File &quot;/data/home/Gareta/VW_ConMod_gclient/sources/crato=
n2-yocto-build/poky/bitbake/lib/bb/event.py&quot;, line 93, in execute_hand=
ler<br>=C2=A0 =C2=A0 ret =3D handler(event)<br>=C2=A0 File &quot;/data/home=
/Gareta/VW_ConMod_gclient/sources/craton2-yocto-build/poky/../poky/meta/cla=
sses/uninative.bbclass&quot;, line 72, in defaultuninative_event_fetchloade=
r<br>=C2=A0 =C2=A0 fetcher.download()<br>=C2=A0 File &quot;/data/home/Garet=
a/VW_ConMod_gclient/sources/craton2-yocto-build/poky/bitbake/lib/bb/fetch2/=
__init__.py&quot;, line 1736, in download<br>=C2=A0 =C2=A0 done =3D m.try_m=
irrors(self, ud, self.d, mirrors)<br>=C2=A0 File &quot;/data/home/Gareta/VW=
_ConMod_gclient/sources/craton2-yocto-build/poky/bitbake/lib/bb/fetch2/__in=
it__.py&quot;, line 1602, in try_mirrors<br>=C2=A0 =C2=A0 return bool(try_m=
irrors(fetch, d, urldata, mirrors, check))<br>=C2=A0 File &quot;/data/home/=
Gareta/VW_ConMod_gclient/sources/craton2-yocto-build/poky/bitbake/lib/bb/fe=
tch2/__init__.py&quot;, line 1125, in try_mirrors<br>=C2=A0 =C2=A0 uris, ud=
s =3D build_mirroruris(origud, mirrors, ld)<br>=C2=A0 File &quot;/data/home=
/Gareta/VW_ConMod_gclient/sources/craton2-yocto-build/poky/bitbake/lib/bb/f=
etch2/__init__.py&quot;, line 996, in build_mirroruris<br>=C2=A0 =C2=A0 add=
uri(origud, uris, uds, mirrors, origud.mirrortarballs or [None])<br>=C2=A0 =
File &quot;/data/home/Gareta/VW_ConMod_gclient/sources/craton2-yocto-build/=
poky/bitbake/lib/bb/fetch2/__init__.py&quot;, line 979, in adduri<br>=C2=A0=
 =C2=A0 newud =3D FetchData(newuri, ld)<br>=C2=A0 File &quot;/data/home/Gar=
eta/VW_ConMod_gclient/sources/craton2-yocto-build/poky/bitbake/lib/bb/fetch=
2/__init__.py&quot;, line 1317, in __init__<br>=C2=A0 =C2=A0 self.method.ur=
ldata_init(self, d)<br>=C2=A0 File &quot;/data/home/Gareta/VW_ConMod_gclien=
t/sources/craton2-yocto-build/poky/bitbake/lib/bb/fetch2/perforce.py&quot;,=
 line 84, in urldata_init<br>=C2=A0 =C2=A0 (ud.user, ud.pswd) =3D path.spli=
t(&#39;@&#39;)[0].split(&#39;:&#39;)<br>ValueError: too many values to unpa=
ck (expected 2)<br><br></div><div>Can you guys help me to resolve this issu=
e?</div><div><br></div><div>Regards,</div><div>Pravin</div></div>

--000000000000f721ac05ef4bada3--

