Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36FB0C27C6E
	for <webhook@archiver.kernel.org>; Fri, 14 Jun 2024 06:37:47 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web11.5553.1718347065869625377
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jun 2024 23:37:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PJckNw9Z;
 spf=pass (domain: gmail.com, ip: 209.85.208.169, mailfrom: marek.belisko@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2eadaac1d28so17662731fa.3
        for <yocto@lists.yoctoproject.org>; Thu, 13 Jun 2024 23:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718347063; x=1718951863; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=boN1vO2h442lIe+5Sh8tRUkL/VxtNMzEPNUtZo87iWs=;
        b=PJckNw9ZCHbkUnutwvnxlqk4DeFeTH4vMuJP+ORm40M2LGrKU2fNiwvDSZ6aAtRVPw
         XPuO6t+SJphTQw6XTkZJWXe3O+qdLaEVBnLD8UXSVdDEAxc3ELei03dguWdoq5AxiuXS
         srw6ZFREPPAQOcvNsLWDVSKYNEfWgcnSfrH1MbjkniGW8Ct6EfS7fknciFhJCZgLzX7j
         QM3OJngF8LPYm/LMh3+B8iLQ45fylvGope1AdyAjrwnuqCFx2TYTsj+IF8HEx4uf6MfE
         A0/75nZbL4yFqbNHHdR7gDd0puEHVDc0uFrkbRJS8AZtYS2X56ulUClQjtTu1B3KM0kA
         SE1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718347063; x=1718951863;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=boN1vO2h442lIe+5Sh8tRUkL/VxtNMzEPNUtZo87iWs=;
        b=nCLPaUp7DLIoAYIyCXhrqyNrzXPlmuN+6MwXWw3tpXr0WU8RF5B9KuKu321Ns7DDkY
         +dKujxLtxLXz4bezNfWAESKfsCcwc0Znzt8icLjV/BTJ0awxFX2PvL86K3ymKDmYc81W
         HNgkvE5ROsaIhMtMk13jQGWcw5WYxBN3Tar4c9NPcP90eB0Bftg9aov2uwKSJHnj9KKy
         zjALi0MXYChm/1vkWaUWk3dMK7Gq85kNtQ02OLWoU+CLps/9fuv2/C+n3oYroxEuwV5B
         +HuNJjNPC0dZx/8MwxDlGEq1FrYRM1rRgSPtF4UVT4hLAEsInrwO194IA/YXeTTTpG1a
         1azw==
X-Gm-Message-State: AOJu0YyonlC93lQP3M5kFzCVToWvtD8//9pYMZBFIH7jUcCSZB5Ivt+g
	9gcLw9RT1uEO7I/x/92FX+Uf+kjINQi8qEGlQ1fR9cDRIcR5kP+QNCVjUJ+ZjXr0aUNP0uYmnPq
	FACzQ8iINIv/22gh/3SBZupeQe+Psm94n4UY=
X-Google-Smtp-Source: AGHT+IGRI0YEEM29r7+U2orBhE65q0xw5CPZ06cv4TcYgabPXBYZhCBBLTwEgNabFC7v1Imd9Bv+eha68OfhgzQwn9g=
X-Received: by 2002:a2e:9f44:0:b0:2ea:853f:18e4 with SMTP id
 38308e7fff4ca-2ec0e46d968mr12641511fa.13.1718347063038; Thu, 13 Jun 2024
 23:37:43 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Fri, 14 Jun 2024 08:37:31 +0200
Message-ID: <CAAfyv358wG_nii0otoSLGQVXT-BzQK4ey2o1YEx6=m4-jqX3fg@mail.gmail.com>
Subject: glib-2.0 compialtion issue in scarthgap
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004b1ac9061ad3daaa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jun 2024 06:37:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63343

--0000000000004b1ac9061ad3daaa
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm using latest scarthgap release and I'm facing issue with building
glib-2.0 with following problem (build for arm64):

Run-time dependency iconv found: YES
| Looking for a fallback subproject for the dependency libpcre2-8 because:
| Use of fallback dependencies is forced.
| Automatic wrap-based subproject downloading is disabled
| Subproject  pcre2 is buildable: NO (disabling)
| Dependency libpcre2-8 from subproject pcre2 found: NO (subproject failed
to configure)
| Looking for a fallback subproject for the dependency libpcre2-8 because:
| Use of fallback dependencies is forced.
|
| ../glib-2.78.6/meson.build:2107:2: ERROR: Subproject "subprojects/pcre2"
required but not found.

Any ideas or suggestions?

Thanks and regards,

marek
-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--0000000000004b1ac9061ad3daaa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m using latest scarthgap rele=
ase and I&#39;m facing issue with building glib-2.0 with following problem =
(build for arm64):</div><div><br></div><div>Run-time dependency iconv found=
: YES<br>| Looking for a fallback subproject for the dependency libpcre2-8 =
because:<br>| Use of fallback dependencies is forced.<br>| Automatic wrap-b=
ased subproject downloading is disabled<br>| Subproject =C2=A0pcre2 is buil=
dable: NO (disabling)<br>| Dependency libpcre2-8 from subproject pcre2 foun=
d: NO (subproject failed to configure)<br>| Looking for a fallback subproje=
ct for the dependency libpcre2-8 because:<br>| Use of fallback dependencies=
 is forced.<br>| <br>| ../glib-2.78.6/meson.build:2107:2: ERROR: Subproject=
 &quot;subprojects/pcre2&quot; required but not found.<br><div><br></div><d=
iv>Any ideas or=C2=A0suggestions?</div><div><br></div><div>Thanks and=C2=A0=
regards,</div><div><br></div><div>marek</div><span class=3D"gmail_signature=
_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature" data-smar=
tmail=3D"gmail_signature">as simple and primitive as possible<br>----------=
---------------------------------------<br>Marek Belisko - OPEN-NANDRA<br>F=
reelance Developer<br><br>Ruska Nova Ves 219 | Presov, 08005 Slovak Republi=
c<br>Tel: +421 915 052 184<br>skype: marekwhite<br>twitter: #opennandra<br>=
web: <a href=3D"http://open-nandra.com" target=3D"_blank">http://open-nandr=
a.com</a></div></div></div>

--0000000000004b1ac9061ad3daaa--

