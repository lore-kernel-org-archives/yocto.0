Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97009C02196
	for <webhook@archiver.kernel.org>; Thu,  6 Feb 2025 04:51:42 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web11.32922.1738817498765762008
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Feb 2025 20:51:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dUBi4/wJ;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ab7483b9bf7so72031366b.3
        for <yocto@lists.yoctoproject.org>; Wed, 05 Feb 2025 20:51:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738817497; x=1739422297; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SGvWdAmk4SBiCmil0ru8WG27TCNCp5Dp0WRQ+q175Vg=;
        b=dUBi4/wJnlocxCz7+qAVGuxF0XWC0q9M40RyZ5jah2gCSYlACwXHtc11My7qDzBDxs
         1mCL7MFAUMOgQBAtvxEVR4AgpCs+DzIT3ns1KsZrHpRIMt/qvwJirYzXTLiN5m83UH1a
         /Fh0lc2awTQhybQZ8wh55Pm3mWlhm1cjfXTtyf3fTcwMfQNR75c8Koi8qYQpKHTrb3JQ
         3WaCpeYwNjrDoF1zaClTAdFZYaqdZc2Fi2pfTn8XHehkeBgTvu9aCnozFoKfl+AgqCc1
         vO4Tzk4pytQKMsHXuX2sCoK1w1pqEXB/aJ70od2nOU3HwlJ39M3hSQEC9cvZrVCGQ8Sr
         RPEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738817497; x=1739422297;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SGvWdAmk4SBiCmil0ru8WG27TCNCp5Dp0WRQ+q175Vg=;
        b=GYPe88nJg8osp2OrjAJp31ciIwYeFtytqIQiiTN5cwChGj8idHVOyBZbc6tMRlN2EP
         o7jqmmldKlaSkvlrAAMbRDmKRCpK91YALNqQApkPmbDUlWwyDz4BqfM6Q8SXm6+stU49
         maoJKhUXHP5SfgwWOs3e/EYXphKeoP5PUp5+g60w63HBz2necI+gFwzhvvvUF89iXaMy
         3rVGivkmPROCrkmsRixGWWxKbFljgpZ/hHerQD+n3c6odGLR5cfqrzotR+Qqy1FTGq16
         2AMqy256G0+a8atnfVvp6yx16Kx6JltF4UxfLOc06tBM8hThuHMody0htLaii/oScRkk
         2gaw==
X-Gm-Message-State: AOJu0YwYfeW+G/UOfw6cNFYVArI2u9QZfPi5nk7x+a5tkJSimbFBs4q3
	1J3q6AH5sl8cKc7c7zyA/+apiNNNi6F3KS2E5kBIoDv0ZXLZ6xZebWfPjCEyj2qylHAoeFbG5Zi
	Iaq77qDBEAJMlmh5dYNcvEa+TGFyn8dKk
X-Gm-Gg: ASbGncuEFUtbBMdB+luQ7WlY1NXRED+v4b495m2JyJakhaXGejjyuqOjWxYq+Mjs+0f
	WU12plbq4Lz83jDzqciGC6oS59rKLPuqAIsb+PNZFmgUr3FwgXwS5+LeOjQtZBUUmVbU8KA==
X-Google-Smtp-Source: AGHT+IHGRaWtRF/I5T/qdlURhGas3Zta3fzFl5J5Dz5EtOuzbndKhkO3UVaeHCtLf+mFimaI7HIMxuo3nsHRWh636is=
X-Received: by 2002:a17:907:3d8e:b0:ab3:875f:a246 with SMTP id
 a640c23a62f3a-ab75e21dd12mr547278966b.7.1738817496649; Wed, 05 Feb 2025
 20:51:36 -0800 (PST)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Thu, 6 Feb 2025 10:21:25 +0530
X-Gm-Features: AWEUYZmnSCwoTgxiCemY2Ps0ISCWhOjYSpTEgk_4MTXE99asiRUgrY7K-UGgsuE
Message-ID: <CAPJWBngfbf3h-ARD1O441VMG5PZtrfcGNDN-QGmgi7TYySw2mw@mail.gmail.com>
Subject: Upgrading node version from 16 to 20 in yocto kirkstone
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000379443062d71ff90"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Feb 2025 04:51:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64718

--000000000000379443062d71ff90
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi guys,
I wanted to update the node version from 16 to 20 in yocto kirkstone. For
this I have moved the node20 recipes from yocto scarthgap and ran it. Only
first error I got was with the icu recipe version and it moved the latest
from scarthgap and resolved the issue.
I got the error in do_comple
*"switch =E2=80=98-msign-return-address=3Dall=E2=80=99 is no longer support=
ed" *
for which I tried searching online to fix using a patch but its not
working.

For now my questions are:
1. Is it possible to upgrade to newer versions of packages not officially
supported by the particular yocto release version? Has anyone tried it
earlier?
2. Also if you understand the above error and have a fix for it, please let
me know.I will share the logs soon.

Regards,
Hassan

--000000000000379443062d71ff90
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<br><div>I wanted to update the node version from =
16 to 20 in yocto kirkstone. For this I have moved the node20 recipes from =
yocto scarthgap and ran it. Only first error I got was with the icu recipe =
version and it moved the latest from scarthgap and resolved the issue.=C2=
=A0</div><div>I got the error in do_comple=C2=A0</div><div><b>&quot;switch =
=E2=80=98-msign-return-address=3Dall=E2=80=99 is no longer supported&quot;=
=C2=A0</b></div><div>for which I tried searching online to fix using a patc=
h but=C2=A0its not working.=C2=A0</div><div><br></div><div>For now my quest=
ions are:=C2=A0</div><div>1. Is it possible to upgrade to newer versions of=
 packages not officially supported by the particular yocto release version?=
 Has anyone tried=C2=A0it earlier?</div><div>2. Also if you understand the =
above error and have a fix for it, please let me know.I will share=C2=A0the=
 logs soon.</div><div><br></div><div>Regards,</div><div>Hassan</div></div>

--000000000000379443062d71ff90--

