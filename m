Return-Path: <ashishm@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAFBC02198
	for <webhook@archiver.kernel.org>; Tue, 18 Feb 2025 08:34:39 +0000 (UTC)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
 by mx.groups.io with SMTP id smtpd.web11.15288.1739867678495586640
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Feb 2025 00:34:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=e/VZmcM0;
 spf=pass (domain: mvista.com, ip: 209.85.210.43, mailfrom: ashishm@mvista.com)
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-72722d2717aso589633a34.2
        for <yocto@lists.yoctoproject.org>; Tue, 18 Feb 2025 00:34:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1739867677; x=1740472477; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HHgSeot1Smkr21aLRA696i2FRE0gfAEX9GKbuAZJdNQ=;
        b=e/VZmcM0gstrd9l5lohTcHM7wafY48Me7c/LRpunSBYrWFjKvKoE0bqfyxsUVTOVfy
         X7xuhfDf4ExC+sQFELsL10HYJO3MctqHO1JhEPr3rJpaLFEPwwg+iVRxxr9x/L9vi7Dl
         r/MsvX9EVGRtFvjMICirpwnx55DhNTYD9fZoU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739867677; x=1740472477;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HHgSeot1Smkr21aLRA696i2FRE0gfAEX9GKbuAZJdNQ=;
        b=jr9sBO4jAM+Eak54cR3m4FSLznipXyeyIVWBorePXhh6Z560DQf+N3QFImGLqfD7cx
         IImC4N8B4inH0vZgPf2h97WUnC/L+nLBKPjKIDG22BIUdy1xBOWexlEeiaH8lSy1bPG0
         ZMlcuj/fHb1h4PMioIkUyGS1adBduKN+gTg4sLWaoQ3UuUrrd5BdoW7oNrMyWqPdIfR1
         fRsqEhzOoZNk/z5TA5g8hiUOba5eB7W1GjTX6tWN/dSQI2BJzhaXxOcGQRmc8SDjCgIH
         LEoMcIGg3aL0YXE3OIiMsvk26KbornTdQjR1kL7+IWBno+v8nSccVnUAYrXDEvjg0RJo
         wW+A==
X-Gm-Message-State: AOJu0YxKkVq9LA21xsV3ef7oesVg88+s+DtwwVKmKrkp3ktBurEiCuLV
	zOteVnZu7Lg934oFzfOCXEakuFCO6/GCSsfP5PElFj7vgLBP4syV+NQvQnNbRAn/RZqApKIgYTC
	JRZKFU4+faB5v406FT46i5uaKSrwaxhmQCcyZF1mvW+bO5LdkzRw=
X-Gm-Gg: ASbGncvZ+S+QtCWIm51gsb8huSlbO+dLxBVyb5VYup/P9PL5FIy8pYEXaIxLiqK0SU0
	VKNRqQUlMfsi7Y+bpHQSV7RjGesZXhg+ZT1znhYip4hMoOFB4jaB5LNIVrs3i+EPZQpFex1bLw6
	9XKnwP7SXy90KtYTgRxkCgLltUjsfx
X-Google-Smtp-Source: AGHT+IEr1Q9krS5dL+nuiOaFTXi1yb4SEXBvVebSefFkDrHW1ACgnHmmJPDa8jsCqbz/4YftKYnyFfb5JPnqCQOxhtw=
X-Received: by 2002:a05:6830:270b:b0:727:2fa8:c0eb with SMTP id
 46e09a7af769-7272fa8c5acmr1889444a34.21.1739867677331; Tue, 18 Feb 2025
 00:34:37 -0800 (PST)
MIME-Version: 1.0
References: <G6nL.1739859144253797070.NrZ2@lists.yoctoproject.org> <CANNYZj_q0O9VOJk_x=qs-qkSM5CmTBRpdFOdQhj1EvgYKxg5ag@mail.gmail.com>
In-Reply-To: <CANNYZj_q0O9VOJk_x=qs-qkSM5CmTBRpdFOdQhj1EvgYKxg5ag@mail.gmail.com>
From: Ashish Mishra <ashishm@mvista.com>
Date: Tue, 18 Feb 2025 14:04:25 +0530
X-Gm-Features: AWEUYZnMzPxWFdCbC-9-p6siV-bIOkgpSvf7TyJ8lu_BXT-x4kK9OzPVlx-LWxU
Message-ID: <CAP2OjcjZDdv5VQTsGvSHo1268Wao0n=OLxkSk2brqSSAv-RWKQ@mail.gmail.com>
Subject: Re: [yocto] Any pointers to reduce samba-python3 package in Yocto
 scarthgap (300% more than samba )
To: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com
Cc: emailaddress.ashish@gmail.com
Content-Type: multipart/alternative; boundary="000000000000dd2cbf062e66822f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Feb 2025 08:34:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64834

--000000000000dd2cbf062e66822f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex ,

 When Investigated further the package created by samba recipe generated
below :

 ~/release/fips/mv-fx-series-yocto-5.0/project/tmp/work/cortexa8hf-neon-mvd=
istro-linux-gnueabi/samba/4.19.8/packages-split/samba-python3/usr/lib/pytho=
n3.12/site-packages/samba
(master) : du -sh dcerpc/ tests/ emulate/ samba3/
*13M*     dcerpc/
*5.4M*    tests/
128K    emulate/
360K    samba3/

 ~/release/fips/mv-fx-series-yocto-5.0/project/tmp/work/cortexa8hf-neon-mvd=
istro-linux-gnueabi/samba/4.19.8/packages-split/samba-python3/usr/lib/pytho=
n3.12/site-packages/samba
(master) :
 ~/release/fips/mv-fx-series-yocto-5.0/project/tmp/work/cortexa8hf-neon-mvd=
istro-linux-gnueabi/samba/4.19.8/packages-split/samba-python3/usr/lib/pytho=
n3.12/site-packages/samba
(master) : ls
auth.so         dnsserver.py         gp             mdb_util.py
       ntacls.py           samba3       trust_utils.py
auth_util.py    domain_update.py     gpo.so         messaging.so
        ntstatus.so         samdb.py     upgradehelpers.py
colour.py       drs_utils.py         gp_parse
ms_display_specifiers.py       param.so            schema.py    upgrade.py
common.py       dsdb_dns.so          graph.py
ms_forest_updates_markdown.py  policies.py         sd_utils.py
 uptodateness.py
compression.so  dsdb.so              hostconfig.py  ms_schema_markdown.py
       policy.so           security.so  werror.so
credentials.so  emulate              idmap.py       ms_schema.py
        posix_eadb.so       sites.py     xattr_native.so
crypto.so       forest_update.py     __init__.py    ndr.py
        provision           smbconf.so   xattr.py
dbchecker.py    functional_level.py  join.py        netbios.so
        registry.so         subnets.py   xattr_tdb.so
dcerpc          gensec.so            kcc            netcmd
        remove_dc.py        subunit
descriptor.py   getopt.py            _ldb.so        net_s3.so
       reparse_symlink.so  tdb_util.py
dnsresolver.py  _glue.so             logger.py      net.so
        safe_tarfile.py     tests


Same thing i validated from QEMU-arm:
 ~/release/fips/mv-fx-series-yocto-5.0/qemu-project/tmp/work/cortexa15t2hf-=
neon-mvdistro-linux-gnueabi/samba/4.19.8/packages-split/samba-python3/usr/l=
ib/python3.12
(master) : du -sh site-packages/
20M site-packages/

It seems the smba is generating this heavy package .

Any pointers where can i look further for samba-python3 tweaking more

Thanks ,
Ashish





On Tue, Feb 18, 2025 at 1:59=E2=80=AFPM Alexander Kanavin via lists.yoctopr=
oject.org
<alex.kanavin=3Dgmail.com@lists.yoctoproject.org> wrote:

> On Tue, 18 Feb 2025 at 07:12, emailaddress.ashish via
> lists.yoctoproject.org
> <emailaddress.ashish=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Hi Members ,
> >
> > I am trying to reduce the RFS size for Yocto Scarthgap
> > We have added samba package in RFS .
> >
> > The RDEPENDS of samba is   samba-python3 which is taking around 300%
> more space than samba itself
> > 21231   KiB    samba-python3
> > 6468     KiB    samba
> >
> > samba-python-3 as RDEPENDS of samba :
> >
> https://git.openembedded.org/meta-openembedded/tree/meta-networking/recip=
es-connectivity/samba/samba_4.19.8.bb?h=3Dscarthgap#n213
> >
> > Can members please point to some pointers as to how can we reduce the
> size of samba-python3.
> > Since its an RDEPENDS ,  IMAGE_INSTALL:remove =3D " samba-python3 " ,
> package is not effective.
>
> It's a bit strange that a package with python modules is this big. You
> need to check what's in it, and if something makes it bigger by
> packaging mistake.
>
> Otherwise, don't install samba, which is a catch-all package for
> everything. Install specific packages only.
>
> Alex
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64833):
> https://lists.yoctoproject.org/g/yocto/message/64833
> Mute This Topic: https://lists.yoctoproject.org/mt/111246769/4806067
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ashishm@mvista.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000dd2cbf062e66822f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Alex ,=C2=A0<div><br><div>=C2=A0When Investigated furth=
er the package created by samba recipe generated below :</div><div><br>=C2=
=A0~/release/fips/mv-fx-series-yocto-5.0/project/tmp/work/cortexa8hf-neon-m=
vdistro-linux-gnueabi/samba/4.19.8/packages-split/samba-python3/usr/lib/pyt=
hon3.12/site-packages/samba (master) : du -sh dcerpc/ tests/ emulate/ samba=
3/<br><b>13M</b>=C2=A0 =C2=A0 =C2=A0dcerpc/<br><b>5.4M</b>=C2=A0 =C2=A0 tes=
ts/<br>128K=C2=A0 =C2=A0 emulate/<br>360K=C2=A0 =C2=A0 samba3/<br><br>=C2=
=A0~/release/fips/mv-fx-series-yocto-5.0/project/tmp/work/cortexa8hf-neon-m=
vdistro-linux-gnueabi/samba/4.19.8/packages-split/samba-python3/usr/lib/pyt=
hon3.12/site-packages/samba (master) :<br>=C2=A0~/release/fips/mv-fx-series=
-yocto-5.0/project/tmp/work/cortexa8hf-neon-mvdistro-linux-gnueabi/samba/4.=
19.8/packages-split/samba-python3/usr/lib/python3.12/site-packages/samba (m=
aster) : ls<br>auth.so =C2=A0 =C2=A0 =C2=A0 =C2=A0 dnsserver.py =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 gp =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mdb_util.py =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ntacls=
.py =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 samba3 =C2=A0 =C2=A0 =C2=A0 trust_ut=
ils.py<br>auth_util.py =C2=A0 =C2=A0domain_update.py =C2=A0 =C2=A0 gpo.so =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 messaging.so =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ntstatus.so =C2=A0 =C2=A0 =C2=A0 =C2=A0 samdb.=
py =C2=A0 =C2=A0 upgradehelpers.py<br>colour.py =C2=A0 =C2=A0 =C2=A0 drs_ut=
ils.py =C2=A0 =C2=A0 =C2=A0 =C2=A0 gp_parse =C2=A0 =C2=A0 =C2=A0 ms_display=
_specifiers.py =C2=A0 =C2=A0 =C2=A0 param.so =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0schema.py =C2=A0 =C2=A0upgrade.py<br>common.py =C2=A0 =C2=A0 =
=C2=A0 dsdb_dns.so =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0graph.py =C2=A0 =C2=A0=
 =C2=A0 ms_forest_updates_markdown.py =C2=A0policies.py =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 sd_utils.py =C2=A0uptodateness.py<br>compression.so =C2=A0dsdb.s=
o =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hostconfig.py =C2=A0ms_sc=
hema_markdown.py =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0policy.so =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 security.so =C2=A0werror.so<br>credentials.so =C2=A0em=
ulate =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0idmap.py =C2=A0 =C2=
=A0 =C2=A0 ms_schema.py =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 posix_eadb.so =C2=A0 =C2=A0 =C2=A0 sites.py =C2=A0 =C2=A0 xat=
tr_native.so<br>crypto.so =C2=A0 =C2=A0 =C2=A0 forest_update.py =C2=A0 =C2=
=A0 __init__.py =C2=A0 =C2=A0ndr.py =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 provision =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 smbconf.so =C2=A0 xattr.py<br>dbchecker.py =C2=A0 =C2=A0f=
unctional_level.py =C2=A0join.py =C2=A0 =C2=A0 =C2=A0 =C2=A0netbios.so =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 registry=
.so =C2=A0 =C2=A0 =C2=A0 =C2=A0 subnets.py =C2=A0 xattr_tdb.so<br>dcerpc =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gensec.so =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0kcc =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netcmd =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 remo=
ve_dc.py =C2=A0 =C2=A0 =C2=A0 =C2=A0subunit<br>descriptor.py =C2=A0 getopt.=
py =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_ldb.so =C2=A0 =C2=A0 =C2=A0 =
=C2=A0net_s3.so =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0reparse_symlink.so =C2=A0tdb_util.py<br>dnsresolver.py =C2=
=A0_glue.so =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 logger.py =C2=A0 =C2=
=A0 =C2=A0net.so =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 safe_tarfile.py =C2=A0 =C2=A0 tests<br><br><br>=
Same thing i validated from QEMU-arm:<br>=C2=A0~/release/fips/mv-fx-series-=
yocto-5.0/qemu-project/tmp/work/cortexa15t2hf-neon-mvdistro-linux-gnueabi/s=
amba/4.19.8/packages-split/samba-python3/usr/lib/python3.12 (master) : du -=
sh site-packages/<br>20M site-packages/<br>=C2=A0</div></div><div>It seems =
the smba is generating this heavy package .</div><div><br></div><div>Any po=
inters where can i look further for samba-python3 tweaking more=C2=A0</div>=
<div><br></div><div>Thanks ,</div><div>Ashish=C2=A0</div><div><br></div><di=
v><br></div><div><br></div><div><br></div></div><br><div class=3D"gmail_quo=
te gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb=
 18, 2025 at 1:59=E2=80=AFPM Alexander Kanavin via <a href=3D"http://lists.=
yoctoproject.org">lists.yoctoproject.org</a> &lt;alex.kanavin=3D<a href=3D"=
mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On=
 Tue, 18 Feb 2025 at 07:12, emailaddress.ashish via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a><br>
&lt;emailaddress.ashish=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.or=
g" target=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Members ,<br>
&gt;<br>
&gt; I am trying to reduce the RFS size for Yocto Scarthgap<br>
&gt; We have added samba package in RFS .<br>
&gt;<br>
&gt; The RDEPENDS of samba is=C2=A0 =C2=A0samba-python3 which is taking aro=
und 300% more space than samba itself<br>
&gt; 21231=C2=A0 =C2=A0KiB=C2=A0 =C2=A0 samba-python3<br>
&gt; 6468=C2=A0 =C2=A0 =C2=A0KiB=C2=A0 =C2=A0 samba<br>
&gt;<br>
&gt; samba-python-3 as RDEPENDS of samba :<br>
&gt; <a href=3D"https://git.openembedded.org/meta-openembedded/tree/meta-ne=
tworking/recipes-connectivity/samba/samba_4.19.8.bb?h=3Dscarthgap#n213" rel=
=3D"noreferrer" target=3D"_blank">https://git.openembedded.org/meta-openemb=
edded/tree/meta-networking/recipes-connectivity/samba/samba_4.19.8.bb?h=3Ds=
carthgap#n213</a><br>
&gt;<br>
&gt; Can members please point to some pointers as to how can we reduce the =
size of samba-python3.<br>
&gt; Since its an RDEPENDS ,=C2=A0 IMAGE_INSTALL:remove =3D &quot; samba-py=
thon3 &quot; , package is not effective.<br>
<br>
It&#39;s a bit strange that a package with python modules is this big. You<=
br>
need to check what&#39;s in it, and if something makes it bigger by<br>
packaging mistake.<br>
<br>
Otherwise, don&#39;t install samba, which is a catch-all package for<br>
everything. Install specific packages only.<br>
<br>
Alex<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64833): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64833" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64833</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/111246769/480=
6067" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/111246769/4806067</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ashishm@mvista.com" target=3D"_blank">ashishm@mv=
ista.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000dd2cbf062e66822f--

