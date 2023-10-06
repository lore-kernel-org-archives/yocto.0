Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81A6AE92715
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 10:47:18 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web10.9796.1696589234981774510
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Oct 2023 03:47:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=Bog8yQvn;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.53, mailfrom: jester@theyoctojester.info)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-53b32dca0bfso815347a12.0
        for <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 03:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1696589233; x=1697194033; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ngfKxBEXoiskTwAdGBX656fsvQqERPyEa/RZcYySVYI=;
        b=Bog8yQvnyPVRe3djZXK0YaG3VV0hfLE0t/kKvhmirt2an80Euo+DQyDVaCw4KOOjZX
         4OrUkhjNKkUpIKQTC8NBvHE7fSx3DtfnB4StBtBWtYjaxlrOLl4rLtpKblndAjpuPDze
         eX0FhjHCPkkpFI+N0xR8dgA6wbsiq1oQ0J9hsT/bw9B5ZikKNqqOOKMQyT7QOi00Vw+q
         78G38U5dbQ2i5C4eazFxtd/QuntdtjEbrVH2ax3DdTate1A5+DJ5Az5GifIv91iLcdGy
         PT4KSF7lpihSwGLztAGEtgj+eMnKvNEm60UzgpjaFtlwxxcBKXkENH4Qeil+TMm0Fh0U
         5t/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696589233; x=1697194033;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ngfKxBEXoiskTwAdGBX656fsvQqERPyEa/RZcYySVYI=;
        b=f28a3UMk9G+Dkc0WR7PiurmhI3uwUp+h/UDEfLjNO/USa6m07lvH6LzHbxx2HXdrPY
         y7rN3ynjKJL45meNtnBTn6pClT2KI8Ex930j36NZCpX/3cc65/zlhbUKyNPsy2NKm1FX
         G6XPAeRcHWIU1GPsdbw+7Ju4GFgVvpzsupv8Z7QDIsG75QAmV3dg91vbdwQ0pHTnSAQO
         P4Wmut4uyNO+g09mBeejOaizCEiO74JJ5VSH/bh6sWkYpnrgoRQD6zsFYE96xDzYwQLZ
         DLBm7WXfWpQJGEH3omYdvSKFPzJS5QAvUpZRtk1cDzIxHeeP73LZowsVaBX6IOxna0+V
         HfHA==
X-Gm-Message-State: AOJu0YxrMlRy2bfrYd0tq0nZh3opqjKZHSKnN+RKj813w81izwtCO4MG
	rFDawytiqcoUYqUTK5Ai2WjOAXfRR3KjXJ3iXTuWFg==
X-Google-Smtp-Source: AGHT+IEsXoUdU8CdKHtI2KDPbfDAiwBrCqKg8QzN2IpjCqvzxfl/P1ghQjSpqYADz+g8LbYAP8vr9tk2p+2drBDHrO0=
X-Received: by 2002:a05:6402:1e8e:b0:533:5d3d:7efe with SMTP id
 f14-20020a0564021e8e00b005335d3d7efemr3189656edf.6.1696589232690; Fri, 06 Oct
 2023 03:47:12 -0700 (PDT)
MIME-Version: 1.0
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Fri, 6 Oct 2023 12:46:46 +0200
Message-ID: <CAEt6Nwo_atjLsw7xn-CD0yB2u-wmoL7gPD-M=Wo8H30wnTAyyA@mail.gmail.com>
Subject: Yocto Project Summit 2023.11 registrations are open now!
To: openembedded-devel@lists.openembedded.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008b899f060709f69d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 10:47:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61258

--0000000000008b899f060709f69d
Content-Type: text/plain; charset="UTF-8"

Registration are open now! Join us for the Yocto Project Summit 2023.11 to
not only hear about the latest and greatest, but also challenges and
solutions from the whole community.

https://summit.yoctoproject.org/yocto-project-summit-2023-11/

Josef,
on behalf of the organization committee

--0000000000008b899f060709f69d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Registration are open now! Join us for the Yocto Project S=
ummit 2023.11 to not only hear about the latest and greatest, but also chal=
lenges and solutions from the whole community.<br><div><br></div><div><a hr=
ef=3D"https://summit.yoctoproject.org/yocto-project-summit-2023-11/">https:=
//summit.yoctoproject.org/yocto-project-summit-2023-11/</a><br></div><div><=
br></div><div>Josef,</div><div>on behalf of the organization committee</div=
></div>

--0000000000008b899f060709f69d--

