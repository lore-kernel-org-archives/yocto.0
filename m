Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29386CDB482
	for <webhook@archiver.kernel.org>; Thu, 19 Oct 2023 08:34:39 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web10.23085.1697704473892808826
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Oct 2023 01:34:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=TEjcq9Hm;
 spf=pass (domain: smile.fr, ip: 209.85.208.43, mailfrom: yoann.congal@smile.fr)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-53e855d7dacso8341934a12.0
        for <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 01:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1697704472; x=1698309272; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8KmhbKADwvunVtBpz96SmsT0oEu2dHt6ow3o/Oc5/cc=;
        b=TEjcq9HmYG+XDuxlQQACotPySc+7LQDYsZkzxZRLhOwV+6vDSJGD2edK0DzhdUlIdN
         5m1yqQ2BPaD4sJPDw+mJCV5nKrLRd/A/wyhS9Bt3fpBCfb5Bb+5mZ+tvb+m5kCVm2Ro5
         k1/AZMiGcHrQrUrIUQh7jSFJBbej9jKunECGhbMEsNTkfrVplJ01bRx3KuVKuAp2TRl5
         i3DrEpGe/BuBfxkuQgJdgN4yLlKiz2QAOxcbuCSnNVTCCVWvYR6y8WICIJpKSPy32BK9
         dEHbgmS9XygF6aPLWnMKS3JYPGZr6dO94FXhDFFY94XjNvHceNvhtGCiNAWAWlbZKrb9
         BlbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697704472; x=1698309272;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8KmhbKADwvunVtBpz96SmsT0oEu2dHt6ow3o/Oc5/cc=;
        b=c8hr/FngLLWhvnkqIfUmzA+Wf0g2I9uPL+pfTBs4GACk/T0pD0ny2V+BpvpmXqw8IU
         GPzATaEOwGfIK1mF25a+hW0WhdQR6lp4LAESySrzKivW3RKtooP/NdSuBW4cayOrKDhc
         MtznsgLjIqXhReyfGuYeCY92kNi5iHv112/UtZqMUKkdHJmhfHqky7CLh6JynN4ifQf/
         1x91E7N/UkzGxuU6onf1yFAIKWRGTnzEtHaN2qHftQfTCRbrtv999BRBSw695jjdbgbd
         Mrk2onczqFW8EHNmK/m8CiQnQsve4VANcbYITsGu7Pb5msrsh2zXOwIx0u7Q/aXDblM3
         zDJQ==
X-Gm-Message-State: AOJu0Yy6dHuPMs9ztLRdIf1LORCpaRDFjkbQuJ5ezhPCQlL5+a/ePlZl
	Ax6JCZ6MDdi4xU04lYzfQIShGvkJFx+KfVw+My79Gw==
X-Google-Smtp-Source: AGHT+IHDWOvun32ql3H208b6fI0KuQasWI1SE28RPFyrQ0hAbo1t4Yd+KMMktwoDVeKLn/hvSFL4GDDkrywrBdQK8Pg=
X-Received: by 2002:a17:907:2ce3:b0:9be:cdca:dadb with SMTP id
 hz3-20020a1709072ce300b009becdcadadbmr1318555ejc.69.1697704472090; Thu, 19
 Oct 2023 01:34:32 -0700 (PDT)
MIME-Version: 1.0
References: <20231018222818.550730-1-yoann.congal@smile.fr> <CANPvuRnnVYKoXohbV7S19cFhor5Okowm7HDw-NHaWurk7=mY3Q@mail.gmail.com>
In-Reply-To: <CANPvuRnnVYKoXohbV7S19cFhor5Okowm7HDw-NHaWurk7=mY3Q@mail.gmail.com>
From: Yoann CONGAL <yoann.congal@smile.fr>
Date: Thu, 19 Oct 2023 10:34:05 +0200
Message-ID: <CAMSfU+48c_FjBiP7ub3+1A8muef2xgKxS-1gwe3CA-RCdLSEtw@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json: add a
 workaround for the "autobuilderlog.json" error
To: Jose Quaresma <quaresma.jose@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 08:34:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61407

Le jeu. 19 oct. 2023 =C3=A0 01:22, Jose Quaresma <quaresma.jose@gmail.com> =
a =C3=A9crit :
> Hi Yoann,

Hi!

> I have found the same for BBLAYERS that was fixed [1] expanding any relat=
ive path that could exist.
> Maybe it would be better to also expand BB_LOGCONFIG when the newbuilddir=
 argument is present.
>
> [1] https://git.yoctoproject.org/poky/commit/id=3Df5f465ff5777eb99941db3d=
da84e65d4699d97f7

OOOooohh That is interesting, Thanks!

For reference, I've had to fix the URL:
https://git.yoctoproject.org/poky/commit/?id=3Df5f465ff5777eb99941db3dda84e=
65d4699d97f7

And thank you for updating the bug :)

> Jose
>
> Yoann Congal <yoann.congal@smile.fr> escreveu no dia quarta, 18/10/2023 =
=C3=A0(s) 23:28:
>>
>> For the reproducible-meta-oe builder, workaround the bug #15241 [1], by
>> passing BB_LOGCONFIG through "readlink -f" to avoid relative reference
>> to the main build dir.
>>
>> Also, switch from BBPATH to BUILDDIR to reference the main build dir.
>>
>> [1]: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15241
>>
>> Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
>> ---
>>  config.json | 20 ++++++++++----------
>>  1 file changed, 10 insertions(+), 10 deletions(-)
>>
>> diff --git a/config.json b/config.json
>> index c01a453..84da67b 100644
>> --- a/config.json
>> +++ b/config.json
>> @@ -303,7 +303,7 @@
>>              ],
>>              "step1" : {
>>                  "shortname" : "Repro meta-oe/meta-filesystems",
>> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_=
SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-filesyste=
ms/ DISPLAY=3D:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-filesystem=
s -r reproducible"],
>> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_=
SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-filesyste=
ms/ DISPLAY=3D:1 BB_LOGCONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest --=
newbuilddir $BUILDDIR/build-st-meta-filesystems -r reproducible"],
>>                  "ADDLAYER" : [
>>                      "${BUILDDIR}/../meta-openembedded/meta-oe",
>>                      "${BUILDDIR}/../meta-openembedded/meta-python",
>> @@ -323,7 +323,7 @@
>>              },
>>              "step2" : {
>>                  "shortname" : "Repro meta-oe/meta-gnome",
>> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_=
SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-gnome/ DI=
SPLAY=3D:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-gnome -r reprodu=
cible"],
>> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_=
SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-gnome/ DI=
SPLAY=3D:1 BB_LOGCONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest --newbui=
lddir $BUILDDIR/build-st-meta-gnome -r reproducible"],
>>                  "ADDLAYER" : [
>>                      "${BUILDDIR}/../meta-openembedded/meta-oe",
>>                      "${BUILDDIR}/../meta-openembedded/meta-python",
>> @@ -343,14 +343,14 @@
>>              },
>>              "step3" : {
>>                  "shortname" : "Repro meta-oe/meta-initramfs",
>> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_=
SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-initramfs=
/ DISPLAY=3D:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-initramfs -r=
 reproducible"],
>> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_=
SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-initramfs=
/ DISPLAY=3D:1 BB_LOGCONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest --ne=
wbuilddir $BUILDDIR/build-st-meta-initramfs -r reproducible"],
>>                  "ADDLAYER" : [
>>                      "${BUILDDIR}/../meta-openembedded/meta-initramfs"
>>                  ]
>>              },
>>              "step4" : {
>>                  "shortname" : "Repro meta-oe/meta-multimedia",
>> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_=
SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-multimedi=
a/ DISPLAY=3D:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-multimedia =
-r reproducible"],
>> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_=
SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-multimedi=
a/ DISPLAY=3D:1 BB_LOGCONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest --n=
ewbuilddir $BUILDDIR/build-st-meta-multimedia -r reproducible"],
>>                  "ADDLAYER" : [
>>                      "${BUILDDIR}/../meta-openembedded/meta-oe",
>>                      "${BUILDDIR}/../meta-openembedded/meta-python",
>> @@ -367,7 +367,7 @@
>>              },
>>              "step5" : {
>>                  "shortname" : "Repro meta-oe/meta-networking",
>> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_=
SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-networkin=
g/ DISPLAY=3D:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-networking =
-r reproducible"],
>> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_=
SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-networkin=
g/ DISPLAY=3D:1 BB_LOGCONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest --n=
ewbuilddir $BUILDDIR/build-st-meta-networking -r reproducible"],
>>                  "ADDLAYER" : [
>>                      "${BUILDDIR}/../meta-openembedded/meta-oe",
>>                      "${BUILDDIR}/../meta-openembedded/meta-networking"
>> @@ -382,7 +382,7 @@
>>              },
>>              "step6" : {
>>                  "shortname" : "Repro meta-oe/meta-oe",
>> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_=
SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-oe/ DISPL=
AY=3D:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-oe -r reproducible"=
],
>> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_=
SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-oe/ DISPL=
AY=3D:1 BB_LOGCONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuildd=
ir $BUILDDIR/build-st-meta-oe -r reproducible"],
>>                  "ADDLAYER" : [
>>                      "${BUILDDIR}/../meta-openembedded/meta-oe"
>>                  ],
>> @@ -393,7 +393,7 @@
>>              },
>>              "step7" : {
>>                  "shortname" : "Repro meta-oe/meta-perl",
>> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_=
SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-perl/ DIS=
PLAY=3D:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-perl -r reproduci=
ble"],
>> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_=
SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-perl/ DIS=
PLAY=3D:1 BB_LOGCONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuil=
ddir $BUILDDIR/build-st-meta-perl -r reproducible"],
>>                  "ADDLAYER" : [
>>                      "${BUILDDIR}/../meta-openembedded/meta-oe",
>>                      "${BUILDDIR}/../meta-openembedded/meta-perl"
>> @@ -408,7 +408,7 @@
>>              },
>>              "step8" : {
>>                  "shortname" : "Repro meta-oe/meta-python",
>> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_=
SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-python/ D=
ISPLAY=3D:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-python -r repro=
ducible"],
>> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_=
SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-python/ D=
ISPLAY=3D:1 BB_LOGCONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest --newbu=
ilddir $BUILDDIR/build-st-meta-python -r reproducible"],
>>                  "ADDLAYER" : [
>>                      "${BUILDDIR}/../meta-openembedded/meta-oe",
>>                      "${BUILDDIR}/../meta-openembedded/meta-python"
>> @@ -419,7 +419,7 @@
>>              },
>>              "step9" : {
>>                  "shortname" : "Repro meta-oe/meta-webserver",
>> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_=
SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-webserver=
/ DISPLAY=3D:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-webserver -r=
 reproducible"],
>> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_=
SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-webserver=
/ DISPLAY=3D:1 BB_LOGCONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest --ne=
wbuilddir $BUILDDIR/build-st-meta-webserver -r reproducible"],
>>                  "ADDLAYER" : [
>>                      "${BUILDDIR}/../meta-openembedded/meta-oe",
>>                      "${BUILDDIR}/../meta-openembedded/meta-webserver"
>> @@ -433,7 +433,7 @@
>>              },
>>              "step10" : {
>>                  "shortname" : "Repro meta-oe/meta-xfce",
>> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_=
SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-xfce/ DIS=
PLAY=3D:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-xfce -r reproduci=
ble"],
>> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_=
SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-xfce/ DIS=
PLAY=3D:1 BB_LOGCONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuil=
ddir $BUILDDIR/build-st-meta-xfce -r reproducible"],
>>                  "ADDLAYER" : [
>>                      "${BUILDDIR}/../meta-openembedded/meta-oe",
>>                      "${BUILDDIR}/../meta-openembedded/meta-python",
>> --
>> 2.30.2
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#61405): https://lists.yoctoproject.org/g/yocto/messa=
ge/61405
>> Mute This Topic: https://lists.yoctoproject.org/mt/102049703/5052612
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [quaresma.jose=
@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>
>
> --
> Best regards,
>
> Jos=C3=A9 Quaresma



--=20
Yoann Congal
Smile ECS - Tech expert

