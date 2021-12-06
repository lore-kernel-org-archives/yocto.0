Return-Path: <mail@oripessach.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13F69C433EF
	for <webhook@archiver.kernel.org>; Mon,  6 Dec 2021 02:53:49 +0000 (UTC)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com
 [209.85.222.48])
 by mx.groups.io with SMTP id smtpd.web08.46378.1638759228155868418
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Dec 2021 18:53:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@oripessach-com.20210112.gappssmtp.com header.s=20210112
 header.b=MGmqvprt;
 spf=none, err=permanent DNS error (domain: oripessach.com, ip: 209.85.222.48,
 mailfrom: mail@oripessach.com)
Received: by mail-ua1-f48.google.com with SMTP id r15so16902600uao.3
        for <yocto@lists.yoctoproject.org>;
 Sun, 05 Dec 2021 18:53:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oripessach-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=R+Hb5oV5EYj0i4re5fiQa+DPDznDzuMf0gwVQRX4yos=;
        b=MGmqvprtiQU9j49qZKPlaroin9v1Q2z+x+7rN4GLGO6R4nKlKF3QdtY0pCDBp3XUaX
         yUJDnwMKjQUCnwx7cH1yRDTlz35QaGSTq2AH2Hg2kSQvnyiGaOhd52NqvRVreOX6FnzD
         JN2unNABWoWKnAaH4TnhNKa02d3cT6SJZri9X7nefvXkkuM7Fbem2u15//Dpwec06DE6
         YPas1AgEQsKh0rJjGqRtZ1TETuYaNm+v7JUtBTnEIM8PQAQ/dobVYrKmVjbUM2jVyfmw
         22pzE4tY/rYw//WMk6dJhTlyTfAWlkkos3sO8N77X2aITiFTH9V7ga0Q3ZOgCQHLrf7b
         QR0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=R+Hb5oV5EYj0i4re5fiQa+DPDznDzuMf0gwVQRX4yos=;
        b=PkVZCKo4YJGoxNmMwEjz1SAt4Zaa0fNIbwiH14gBksmUnDt8pYRHuX/BJcxo2r+4As
         oymQ6aYLnTuDQdrwdD844mUl3Z2CwLTxEZRdT+9+m/uECi1b8fzAw0WKD7/o/OxZi0kA
         a3DnJEgVZL9yn0caL9BbXzRkIFxavaWD+5shD81Ysz/Zd4cvZILqQXrhiyjoVJ/q8TDA
         WA261WyByV1O2wFEHKu5My1HETpaNfL5M0dI1azlPv+/YfACObZL1AqARQKgGd4NOZL0
         M94UunUMWjPFSI0sjl/HwvcwuCnv/xlS5svM6E4FhrBzfNJbmNk2qJ1MIujvceyQF/4P
         JD7g==
X-Gm-Message-State: AOAM530JfJgeaOj0RiI7iWQ5JCmHh1oPMFf5O1B/wXhdGSJmJwk9CSbM
	onByFSoUgpA0AY4FjC0rPlQSnGLPJ3ZG2lEtJd7ktVM8G2X5Pg==
X-Google-Smtp-Source: 
 ABdhPJykLHTpbecq9qx01XNklpaEomTBfe6ODcCzDZ7wuSsgfEKEFIxKhEGIkm8TYEdjAC7yyjLHJcTjELqooVGGuPs=
X-Received: by 2002:a05:6102:55a5:: with SMTP id
 dc37mr34220225vsb.62.1638759227086;
 Sun, 05 Dec 2021 18:53:47 -0800 (PST)
MIME-Version: 1.0
From: Ori Pessach <mail@oripessach.com>
Date: Sun, 5 Dec 2021 19:53:21 -0700
Message-ID: 
 <CAJekvNRBn=4Cu0Ufq_Qu_hB-SND_jCc9SLzbrMMbPHP4op5cYg@mail.gmail.com>
Subject: meta-intel with a Celeron 6305E
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009a76bf05d2715db8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Dec 2021 02:53:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55482

--0000000000009a76bf05d2715db8
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm trying to run an existing image (based on Gatesgarth) on a Celeron
6305E NUC. The application running on this image is a media player which
uses Gstreamer for decoding and displaying video.

Performance on this CPU is inadequate (probably due to lack of acceleration
support for decoding and display), and I've been trying to figure out how
to fix that. I tried pulling different tags of the meta-intel BSP layer,
with no success.

So I guess my question is this - Is this processor fully supported by
meta-intel, and if so, when was support added for this generation of
CPU/GPU and how can I get that to work with my image?

Thanks,

Ori Pessach

--0000000000009a76bf05d2715db8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I&#39;m trying to run an existin=
g image (based on Gatesgarth) on a Celeron 6305E NUC. The application runni=
ng on this image is a media player which uses Gstreamer for decoding and di=
splaying video.</div><div><br></div><div>Performance on this CPU is inadequ=
ate (probably due to lack of acceleration support for decoding and display)=
, and I&#39;ve been trying to figure out how to fix that. I tried pulling d=
ifferent tags of the meta-intel BSP layer, with no success.=C2=A0</div><div=
><br></div><div>So I guess my question is this - Is this processor fully su=
pported by meta-intel, and if so, when was support added for this generatio=
n of CPU/GPU and how can I get that to work with my image?</div><div><br></=
div><div>Thanks,</div><div><br></div><div>Ori Pessach</div></div>

--0000000000009a76bf05d2715db8--

