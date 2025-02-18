Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B36B8C021A9
	for <webhook@archiver.kernel.org>; Tue, 18 Feb 2025 08:44:09 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web10.15302.1739868240115979989
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Feb 2025 00:44:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CBxS+RjI;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6e41e18137bso42509896d6.1
        for <yocto@lists.yoctoproject.org>; Tue, 18 Feb 2025 00:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739868239; x=1740473039; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jbn03OzCiKz9JVc+8T6evueHogc4lIQrOsrkf3gKxjc=;
        b=CBxS+RjINnkS3xW2A6H/BcX0yH0ir3mAQR1NPOz5lxy2iy3DGGoo1FdU3qNnlTD5kx
         HZkfajuEPyf420u1GkIbAQWue/ihQIAde2kWjpoYn88OSAHQmoPaAvZvNBTAWiGRCEc1
         87GUCylmFzmmBI4rjA7fv2s1miW3p9GKaTq/FUP7weWrz1O4xVXRADSNkBOX4E8nmw5B
         c7tYlSZ8wRDuuFDsbPOIQaZxpHu1/jTipXgGjK9idYl/IwaYBAB/3T6nkkwQ5MImofRh
         bou3mcq0fI9R02TS4WkNqrV4hsSJp2NC1dVt/S2ZgbJyeOJ/FMagy3FW5Knqbf6RIgoj
         BTmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739868239; x=1740473039;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jbn03OzCiKz9JVc+8T6evueHogc4lIQrOsrkf3gKxjc=;
        b=pTrkQz4KRA+86A9ffB4Dt7LZDvzWVny7BYcMrM2bjWr+IRxQyD5QmMCCj+n4+HrVTx
         rZG0UED11/qB5z8yQcPTWPohXH3vjn+9tH8AuS+iw+uswowgPZvriPjRjMYIVttzgJZd
         4MFKOcrnWWqdYeVgn7Sh9cWQknR5KdIqivmFKAvF8EItoiNbYEGOQzzJI/YwxsQbc4fw
         R6a4rnvlKT6TksYfRkRiMYX9tTMsAxQgrVXhb/ZTBlq5UNbxi2PLQsE9lmePpQVTtRCG
         w3SQ5TbDxe55OWzYKN6djbCWJ5tevK5g7+DRcH1wn5DyAbwcJ+MH2j6meWU19jTcM62i
         6cxA==
X-Gm-Message-State: AOJu0YztSNM8hBxWZ6hEHEIbUUrFTzHQV/mI2SY2wyLwUvu7SWjTcmjS
	MykrZCswTjwSPjTmiP4coogILoECx181Yk/tJZiGTRJnlkP/2G2uaQN3PEE3RqeXB6p+BDS9Tf+
	HH+9274yGDmLKoYWY0vtDuwEugqg=
X-Gm-Gg: ASbGncth+oJIzoZxmTpfaioXyKNFgreRuEqSkgEWiRV/DFHGMdHJ/Ag0e+FLkmEjydF
	hzMDyBuSNnNLzkNZpvx9t38ZxD3xLHvRNWr4tnaW/9gejk923TYzNGjoYR+tdoRooUPfcwAjkMQ
	hMzxYj/F8cen0RNOJrYt+pmF5CngafCzA=
X-Google-Smtp-Source: AGHT+IElmt03loH4Lq9Nfcd4/3C+37XWYHHLnRS5SIAfHZU/0p6xVI7gwjmQTjYGPG0co6s+8rHc+3wobhhPAxEwC70=
X-Received: by 2002:ad4:5fcd:0:b0:6e6:6c7f:110a with SMTP id
 6a1803df08f44-6e66cd0b603mr179552096d6.39.1739868239142; Tue, 18 Feb 2025
 00:43:59 -0800 (PST)
MIME-Version: 1.0
References: <G6nL.1739859144253797070.NrZ2@lists.yoctoproject.org>
 <CANNYZj_q0O9VOJk_x=qs-qkSM5CmTBRpdFOdQhj1EvgYKxg5ag@mail.gmail.com> <CAP2OjcjZDdv5VQTsGvSHo1268Wao0n=OLxkSk2brqSSAv-RWKQ@mail.gmail.com>
In-Reply-To: <CAP2OjcjZDdv5VQTsGvSHo1268Wao0n=OLxkSk2brqSSAv-RWKQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 18 Feb 2025 09:43:46 +0100
X-Gm-Features: AWEUYZmkp-7dLV4JKfvRgJrqlhUtedn4josUf2ju3aU1fVm9JKP3BeGDb5GJ1m4
Message-ID: <CANNYZj_k_CAUYXiACehUZ4V3ycpH5LdCGVtKh1Vfy1MMNy4r2g@mail.gmail.com>
Subject: Re: [yocto] Any pointers to reduce samba-python3 package in Yocto
 scarthgap (300% more than samba )
To: Ashish Mishra <ashishm@mvista.com>
Cc: yocto@lists.yoctoproject.org, emailaddress.ashish@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Feb 2025 08:44:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64835

I guess you should not install samba package (that pulls in everything
else) and inspect what you actually need on target. packages-split/ is
a good place to see what goes where.

It's also possible that samba recipe isn't splitting things into
packages correctly, you can experiment with changing the recipe.

Alex

On Tue, 18 Feb 2025 at 09:34, Ashish Mishra <ashishm@mvista.com> wrote:
>
> Hi Alex ,
>
>  When Investigated further the package created by samba recipe generated =
below :
>
>  ~/release/fips/mv-fx-series-yocto-5.0/project/tmp/work/cortexa8hf-neon-m=
vdistro-linux-gnueabi/samba/4.19.8/packages-split/samba-python3/usr/lib/pyt=
hon3.12/site-packages/samba (master) : du -sh dcerpc/ tests/ emulate/ samba=
3/
> 13M     dcerpc/
> 5.4M    tests/
> 128K    emulate/
> 360K    samba3/
>
>  ~/release/fips/mv-fx-series-yocto-5.0/project/tmp/work/cortexa8hf-neon-m=
vdistro-linux-gnueabi/samba/4.19.8/packages-split/samba-python3/usr/lib/pyt=
hon3.12/site-packages/samba (master) :
>  ~/release/fips/mv-fx-series-yocto-5.0/project/tmp/work/cortexa8hf-neon-m=
vdistro-linux-gnueabi/samba/4.19.8/packages-split/samba-python3/usr/lib/pyt=
hon3.12/site-packages/samba (master) : ls
> auth.so         dnsserver.py         gp             mdb_util.py          =
          ntacls.py           samba3       trust_utils.py
> auth_util.py    domain_update.py     gpo.so         messaging.so         =
          ntstatus.so         samdb.py     upgradehelpers.py
> colour.py       drs_utils.py         gp_parse       ms_display_specifiers=
.py       param.so            schema.py    upgrade.py
> common.py       dsdb_dns.so          graph.py       ms_forest_updates_mar=
kdown.py  policies.py         sd_utils.py  uptodateness.py
> compression.so  dsdb.so              hostconfig.py  ms_schema_markdown.py=
          policy.so           security.so  werror.so
> credentials.so  emulate              idmap.py       ms_schema.py         =
          posix_eadb.so       sites.py     xattr_native.so
> crypto.so       forest_update.py     __init__.py    ndr.py               =
          provision           smbconf.so   xattr.py
> dbchecker.py    functional_level.py  join.py        netbios.so           =
          registry.so         subnets.py   xattr_tdb.so
> dcerpc          gensec.so            kcc            netcmd               =
          remove_dc.py        subunit
> descriptor.py   getopt.py            _ldb.so        net_s3.so            =
          reparse_symlink.so  tdb_util.py
> dnsresolver.py  _glue.so             logger.py      net.so               =
          safe_tarfile.py     tests
>
>
> Same thing i validated from QEMU-arm:
>  ~/release/fips/mv-fx-series-yocto-5.0/qemu-project/tmp/work/cortexa15t2h=
f-neon-mvdistro-linux-gnueabi/samba/4.19.8/packages-split/samba-python3/usr=
/lib/python3.12 (master) : du -sh site-packages/
> 20M site-packages/
>
> It seems the smba is generating this heavy package .
>
> Any pointers where can i look further for samba-python3 tweaking more
>
> Thanks ,
> Ashish
>
>
>
>
>
> On Tue, Feb 18, 2025 at 1:59=E2=80=AFPM Alexander Kanavin via lists.yocto=
project.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.org> wrote:
>>
>> On Tue, 18 Feb 2025 at 07:12, emailaddress.ashish via
>> lists.yoctoproject.org
>> <emailaddress.ashish=3Dgmail.com@lists.yoctoproject.org> wrote:
>> >
>> > Hi Members ,
>> >
>> > I am trying to reduce the RFS size for Yocto Scarthgap
>> > We have added samba package in RFS .
>> >
>> > The RDEPENDS of samba is   samba-python3 which is taking around 300% m=
ore space than samba itself
>> > 21231   KiB    samba-python3
>> > 6468     KiB    samba
>> >
>> > samba-python-3 as RDEPENDS of samba :
>> > https://git.openembedded.org/meta-openembedded/tree/meta-networking/re=
cipes-connectivity/samba/samba_4.19.8.bb?h=3Dscarthgap#n213
>> >
>> > Can members please point to some pointers as to how can we reduce the =
size of samba-python3.
>> > Since its an RDEPENDS ,  IMAGE_INSTALL:remove =3D " samba-python3 " , =
package is not effective.
>>
>> It's a bit strange that a package with python modules is this big. You
>> need to check what's in it, and if something makes it bigger by
>> packaging mistake.
>>
>> Otherwise, don't install samba, which is a catch-all package for
>> everything. Install specific packages only.
>>
>> Alex
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#64833): https://lists.yoctoproject.org/g/yocto/messa=
ge/64833
>> Mute This Topic: https://lists.yoctoproject.org/mt/111246769/4806067
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ashishm@mvist=
a.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>

