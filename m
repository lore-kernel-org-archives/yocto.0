Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
 by mx.groups.io with SMTP id smtpd.web10.2504.1585679168707347495
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Mar 2020 11:26:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oYw2wQtF;
 spf=pass (domain: gmail.com, ip: 209.85.210.50, mailfrom: geissonator@gmail.com)
Received: by mail-ot1-f50.google.com with SMTP id m2so8364603otr.1
        for <yocto@lists.yoctoproject.org>; Tue, 31 Mar 2020 11:26:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :to;
        bh=/UYWNJb+dBuYwk28gHErfJHS5B/8wneHeUxXE4FFu84=;
        b=oYw2wQtFdG9EBuJfT9aRL+Bq/ORumvmExz8QufKa3BQiPnJjSROw1asWQeFhl0lXh7
         TeT4vYo4IIiJfkHNV45k4oyM5KudX6+Nyu1wsznrLPgtWnq0714YPQaY0JrHRLPX7dbG
         NmQCBNPY2weXABzmDtKslcoBK+hK5fl+17SerPGassX4hHRzLrMD4BIISFqBCCB7pJH0
         8pDacYEsbInjdWd6rBoBnvVBSaTzj0ZtVIGAsq5j+I+x/llacMd4NKCQtQj8Vmx6eTDK
         somQwK6YJAMYqHsH+RFRgOnXQMOFwmetWxWCYgfgdYwl1axPlmpYyAnZZvN+qlkqkp8E
         iOpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:to;
        bh=/UYWNJb+dBuYwk28gHErfJHS5B/8wneHeUxXE4FFu84=;
        b=FYeyswPlEx/9i5HYnz7AFs0ZvuQIndrYhj8EJ2voM9AhWxKJ7bi7S/mVDmbQYXhKva
         RUasPFAT2FaOd16xa18/LxK6/9EbTHOzNT9hWATcUpEZsKs1TabP+ACIFwHwEOCkJRur
         /PGvkAR51tSHXPkSn+pMayhGcg52T86uDoG6+wbNsxqzs1q3TP7wY54kSEhpwzYZJcPC
         zyOuFU3ZY41gitv/K1f9AHfKYUMKW9nQiZjYSkx/BD5IRWijhV4qJncplZZxf7Prh3OZ
         CYVGcSDA67pAwEWMpvzWpGG8YldBa51X4B4/TSd0hQWICKl69KCTZouGClD13l+SjshC
         pD5A==
X-Gm-Message-State: ANhLgQ3GmS2n9ji/RK+GPqV0HHAfah7qbMzH94Y/o3pho4p0b5r/h9qo
	GRT7URVtoU9V6yvIM3bi5IGJnffrs70=
X-Google-Smtp-Source: ADFU+vuEugOpIvOiVUTy6+VCZCwY+xxHdU+uHcQ1vT/73jsdsHoCtUn20LtbAsd1lJbnYNLzjeQN5A==
X-Received: by 2002:a05:6830:231b:: with SMTP id u27mr14567599ote.111.1585679167783;
        Tue, 31 Mar 2020 11:26:07 -0700 (PDT)
Return-Path: <geissonator@gmail.com>
Received: from andrews-mbp-2.attlocal.net ([2600:1700:19e0:3310:298f:5627:e1a2:6a29])
        by smtp.gmail.com with ESMTPSA id v15sm2593509ook.37.2020.03.31.11.26.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2020 11:26:07 -0700 (PDT)
From: geissonator@gmail.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: boost monthly download limits
Message-Id: <76CA873A-5C59-4578-BCFB-61E21B116DE2@gmail.com>
Date: Tue, 31 Mar 2020 13:26:06 -0500
To: yocto@lists.yoctoproject.org
X-Mailer: Apple Mail (2.3608.80.23.2.2)
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Greetings,

Recently, the OpenBMC project started to hit
https://github.com/boostorg/boost/issues/299#issuecomment-593064251. =
Basically
the site that hosts the boost packages has a monthly download limit and =
once
hit, starts to fail.

There was a commit last year,
=
https://github.com/openembedded/openembedded-core/commit/810aded01fc2ae2c2=
7c2573135c20947453e50c6
which moved from using sourceforge to dl.bintray.com. I don't see a =
reason in
the commit message but I suspect it was because sourceforge for some =
reason did
not mirror 1.71.0. They have 1.70.0 and 1.72.0 but not 1.71.0. I opened
=
https://sourceforge.net/p/boost/discussion/23622/thread/4fe1cce13b/?limit=3D=
25#7d3e
to try and understand why this was.

Given the download limitations of dl.bintray.com, does it make sense to =
try
and move back to sourceforge? Someone also had recommended we just grab
from github (i.e. =
https://github.com/boostorg/boost/archive/boost-1.71.0.tar.gz)

This issue will reset on the first of the month but could come back and =
bite
us again in the future. Anyone else hit this or looking into it?

Andrew=
