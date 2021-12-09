Return-Path: <mail@oripessach.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0103C433F5
	for <webhook@archiver.kernel.org>; Thu,  9 Dec 2021 15:59:24 +0000 (UTC)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com
 [209.85.222.51])
 by mx.groups.io with SMTP id smtpd.web10.13381.1639065563303647774
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Dec 2021 07:59:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@oripessach-com.20210112.gappssmtp.com header.s=20210112
 header.b=pub1nMIz;
 spf=none, err=permanent DNS error (domain: oripessach.com, ip: 209.85.222.51,
 mailfrom: mail@oripessach.com)
Received: by mail-ua1-f51.google.com with SMTP id l24so11632983uak.2
        for <yocto@lists.yoctoproject.org>;
 Thu, 09 Dec 2021 07:59:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oripessach-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=eI/8XUfzIydITtRbKXitn3OemOh8ISaiaBpHdUGv03I=;
        b=pub1nMIzy3fyrEjQNKMhS1F2XGJhXcGTMsbidsAR+FngSZqrYXzVFccRWu1hQ2ncPg
         htKMFugGqfecwC5eOPPqZOAai0lqQtds/BClAg5TvRQwjcdF41n/D0pYgnSqUKJ6H9nc
         epZCLFVZEKZ6+1pAEHVlzBI71qcuK0IfzXKzONB+LRetls7BxnGzirt0O2SJKjYmfKtX
         Uo+3bLF6lK7Svo907G46dhvoYXFV2V/8GWAzkkVwJpTxbGn2nIC/AkgT4acy1jv/y4QC
         FmLV1OQCtfDAc99AZ/cDxRMxhhuHsx91srxwzkE8PtvahbFWWICXBsjmqaTQOnyWJe2P
         8D4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=eI/8XUfzIydITtRbKXitn3OemOh8ISaiaBpHdUGv03I=;
        b=SoDD2NhdZS2MUWhRu2058MC2mO6NRuIFi20/M4eLnYm1h4Od6Bwgvnw1fAdOsihYU6
         5guhSV6WU8BO4jIQRgBHJ/C4nBdblzTPojAgqlw3Gcg8KujfECgSWeH3X9NkIZLB7Yb5
         AGRB1XetlLfRR+2SvUYRWXQ5TCsOO+T/asWL/w4tFEmujM0u4jTz4Vt0TaldmOdISgd9
         e7kuHOUVB9CoXG9QDXtLSgG2GzKwp9SHSfZYJVMuD+VkNna2kAQTi7Bkq0FK1q+K6G85
         qmWitrGVPz3b0cc4omWTOvaWMEcQNB/On69vz/JE8Flxfdfu3cow+tOfKREKw3rJUUeV
         IfiQ==
X-Gm-Message-State: AOAM531b0ZJ7JgOn+S9fOD1K8eAgeWB5JdUenSazmDZN+AnD8BETATxF
	XCEqlU/2pfn0/Fl6jXTWx2mQ8cN1BC+rIIFtNNpu4MV09I+0R/Ao
X-Google-Smtp-Source: 
 ABdhPJxHzXCtVVjPEqG1l17h5y+u2FKmQleWxxyngb8BMZsI583mMd+8/Fy5Od5vU/EtvRQ6t6Zbq93+JTsxfUV0rUk=
X-Received: by 2002:a67:62c4:: with SMTP id w187mr8845044vsb.70.1639065562130;
 Thu, 09 Dec 2021 07:59:22 -0800 (PST)
MIME-Version: 1.0
From: Ori Pessach <mail@oripessach.com>
Date: Thu, 9 Dec 2021 08:58:56 -0700
Message-ID: 
 <CAJekvNQ7Fq8hp2CAfBaAyGnuOSVuaUU6mv3N4AoeY=Rut_5tBw@mail.gmail.com>
Subject: honister - errors while patching net-snmp 5.9
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000098438205d2b8b04e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Dec 2021 15:59:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55535

--00000000000098438205d2b8b04e
Content-Type: text/plain; charset="UTF-8"

With the latest honister code I'm getting this error:

ERROR: net-snmp-5.9.1-r0 do_patch: Applying patch
'0001-snmplib-keytools.c-Don-t-check-for-return-from-EVP_M.patch' on target
directory
'/media/ori/Linux-Backup/poky-intel/build/tmp/work/corei7-64-poky-linux/net-snmp/5.9.1-r0/net-snmp-5.9.1'
Command Error: 'quilt --quiltrc
/media/ori/Linux-Backup/poky-intel/build/tmp/work/corei7-64-poky-linux/net-snmp/5.9.1-r0/recipe-sysroot-native/etc/quiltrc
push' exited with 0  Output:
stdout: Applying patch
0001-snmplib-keytools.c-Don-t-check-for-return-from-EVP_M.patch
patching file snmplib/keytools.c
Hunk #1 FAILED at 186.
1 out of 1 hunk FAILED -- rejects in file snmplib/keytools.c
Patch 0001-snmplib-keytools.c-Don-t-check-for-return-from-EVP_M.patch does
not apply (enforce with -f)

Removing that patch from the recipe lets the build continue.

Ori Pessach

--00000000000098438205d2b8b04e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>With the latest honister code I&#39;m getting this er=
ror:</div><div><br></div><div>ERROR: net-snmp-5.9.1-r0 do_patch: Applying p=
atch &#39;0001-snmplib-keytools.c-Don-t-check-for-return-from-EVP_M.patch&#=
39; on target directory &#39;/media/ori/Linux-Backup/poky-intel/build/tmp/w=
ork/corei7-64-poky-linux/net-snmp/5.9.1-r0/net-snmp-5.9.1&#39;</div>Command=
 Error: &#39;quilt --quiltrc /media/ori/Linux-Backup/poky-intel/build/tmp/w=
ork/corei7-64-poky-linux/net-snmp/5.9.1-r0/recipe-sysroot-native/etc/quiltr=
c push&#39; exited with 0 =C2=A0Output:<br>stdout: Applying patch 0001-snmp=
lib-keytools.c-Don-t-check-for-return-from-EVP_M.patch<br>patching file snm=
plib/keytools.c<br>Hunk #1 FAILED at 186.<br>1 out of 1 hunk FAILED -- reje=
cts in file snmplib/keytools.c<br><div>Patch 0001-snmplib-keytools.c-Don-t-=
check-for-return-from-EVP_M.patch does not apply (enforce with -f)</div><di=
v><br></div><div>Removing that patch from the recipe lets the build continu=
e.</div><div><br></div><div>Ori Pessach<br></div></div>

--00000000000098438205d2b8b04e--

