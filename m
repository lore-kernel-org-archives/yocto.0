Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web11.6303.1626442071091122634
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Jul 2021 06:27:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@holoplot-com.20150623.gappssmtp.com header.s=20150623 header.b=KatowJk6;
 spf=pass (domain: holoplot.com, ip: 209.85.221.45, mailfrom: morgan.hill@holoplot.com)
Received: by mail-wr1-f45.google.com with SMTP id f17so12117737wrt.6
        for <yocto@lists.yoctoproject.org>; Fri, 16 Jul 2021 06:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=holoplot-com.20150623.gappssmtp.com; s=20150623;
        h=message-id:subject:from:to:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=c0rFUBvcY4YvuoT/G7a5mnfZlRaE5FPHaRKV/TFKB7Y=;
        b=KatowJk6idW3iy82VJWjcZ107YYyQalNA70qwttQyNUssZX1CQw8gxJ2aBX7ZSv6wA
         X4NMduDsPwArUL7izSSeZtFwhwlsIcxkDdR7RJJKVpOLvrM3ISufp8wESN4jmJgHX/AG
         bwS2DDLIP1bRLtba7lUVb1IUQBn9Kq5mPWyD0FfeTH96e3ORcoSW7ntk25ZSn5mO2fWl
         r256D4c1BoC/yPG5M7bVbYLc0cHpBicv4cHA/tuLaw0BBKfqjMPIKhswCNiT3oZtKnVT
         KpeDKaq+kLgciA/3EXf45ItlLVwKhAzyPyABWvEwI7S7bRokih/2T++aPw9RdqrdhOJg
         jFgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=c0rFUBvcY4YvuoT/G7a5mnfZlRaE5FPHaRKV/TFKB7Y=;
        b=NCWxN5wW0Ql27mzjnzHMpxk7l1IHQvDj1zH6rS6tc7MyS2E75fhaK0MqX0bz4apKI0
         0T+kTe5LaKO0itk1E39HuX52T8vBY95LGJ6fIYimJlkQK0Pjb1yU8HHYSsDVbujZrWlI
         i1FM2h+8E/c4+RDIbefmNypgUqV/gNwmctV14TdgehYxYX3BqDIbGFsMMgOvDygsvDir
         /zvmAx9XekPmrt48mSmdWd04whCVJj3UAL6bD45/CMQneSrTbIHVQj50fAi0J0DAnick
         4LsXrJfhg7U2NoNUTqscVXH/c5cge4KT2I3Elzs4OOSsM4QK14ZFZMOUAo1JpS/+zvAH
         MbFQ==
X-Gm-Message-State: AOAM530N6MxbRXObaEOH5l/rghAxBaal8haI0AskH4oir9GILjB+ZChs
	AVrglPWHGMiQIfaN6zaUEjI68g2g3//LFsdIMVu1KUGkmVCY+mPhL+9eu8Ryifd2AUtQxH02Mwo
	HLI0uDghyglaxEYoN2WTNkTYTKSps
X-Google-Smtp-Source: ABdhPJy6PrmyPaLCWRXZwNUU+igrgixIEueteKrFJLtBUAWy8XXRk3CQAqDAe2c7Rp1DX0vNgtuaBw==
X-Received: by 2002:a5d:59ae:: with SMTP id p14mr7130829wrr.148.1626442069425;
        Fri, 16 Jul 2021 06:27:49 -0700 (PDT)
Return-Path: <morgan.hill@holoplot.com>
Received: from HQ-00111.holoplot.net ([176.126.217.202])
        by smtp.gmail.com with ESMTPSA id m187sm10213387wmm.16.2021.07.16.06.27.48
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jul 2021 06:27:49 -0700 (PDT)
Message-ID: <0f67bc35cce2e023af80b03cc41e4d2f7b04f9b9.camel@holoplot.com>
Subject: Building PostgreSQL extensions
From: morgan.hill@holoplot.com
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Date: Fri, 16 Jul 2021 15:27:47 +0200
User-Agent: Evolution 3.40.2 (3.40.2-1.fc34) 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

We are currently trying to create a recipe for TimescaleDB and are
running into issues with the cmake build system that relies on
`pg_config` for configuration. We managed to get `pg_config` into the
recipes build environement by following this thread about building
PostGIS
https://stackoverflow.com/questions/51496061/using-files-generated-by-other=
-recipes-in-yocto
however it doesn't return any useful values.

We would be very interested to know if anyone has successfully built a
postgresql extension and could share how you did it or point us to a
recipe we can take inspiration from.

In any case we would like to publish this recipe to a public layer once
we figure it out.

Best regards,

Morgan


--=20
=20
<http://holoplot.com/?utm_source=3Demail&utm_medium=3Dsg&utm_campaign=3DHol=
oplot_Signature+>

*
*

* <https://hubs.li/H0MXsmV0>
*

*
*

*HOLOPLOT GmbH - Headquarters*



Ringbahnstr. 12 (10-14) / A2

12099 Berlin, Germany

+49 (0) 30 40745812




*HOLOPLOT GmbH - Manufacturing*


Alboinstr. 17-23 / Hall 12

12103=20
Berlin, Germany

+49 (0) 30 959988740


www.holoplot.com=20
<https://holoplot.com/>



Follow us on=20
<https://www.facebook.com/OriginalHOLOPLOT/?utm_source=3Demail&utm_medium=
=3Dsg&utm_campaign=3DHoloplot_Signature+>=20
LinkedIn=20
<https://www.linkedin.com/company/holoplot-gmbh?utm_source=3Demail&utm_medi=
um=3Dsg&utm_campaign=3DHoloplot_Signature+>.=20




Roman Sick =E2=80=93 CEO | HRB183974B, Register Court Charlottenburg, Germa=
ny |=20
EU Tax-Registration No. DE277000701 This e-mail contains confidential=20
and/or privileged information. If you are not the intended recipient (or=20
have received this e-mail in error) please notify the sender immediately=20
and destroy this e-mail. Any unauthorized copying, disclosure or=20
distribution of the information in this e-mail is strictly forbidden.
