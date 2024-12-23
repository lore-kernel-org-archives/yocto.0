Return-Path: <bbergquist@epc-instore.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24C93E7718B
	for <webhook@archiver.kernel.org>; Mon, 23 Dec 2024 16:04:55 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web10.16120.1734969893140231731
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Dec 2024 08:04:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@epc-instore.com header.s=google header.b=esyb3cxf;
 spf=permerror, err=too many SPF records (domain: epc-instore.com, ip: 209.85.219.54, mailfrom: bbergquist@epc-instore.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6d896be3992so24591416d6.1
        for <yocto@lists.yoctoproject.org>; Mon, 23 Dec 2024 08:04:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=epc-instore.com; s=google; t=1734969892; x=1735574692; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:date:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=X0Zt72Yb92teNtf8IlK9jVC3ukur+MFkzq1X0VP8apY=;
        b=esyb3cxfrkeZSfNjWR92W9WtUpsaqPWnogOTSBk9ldGzS8/dGnBetdybo7yKzReiQE
         KDKw3jUJkAk9yPzjDGmpRHKtniRtXz8TXFKIyFxgAXOW1Oy1jWy7wJYLNMurbk+vMJEy
         dQwSo7oLC1N9jjxkDRa6s9ELZRTN9d8fgAwFjHseliJAy+d6jekJwofSbNoWkGWxLdmU
         4BFygXpSHUmFxMu8jZDMZk8R+/s8DF3zwSLRQpJyOqvwgNel6gcEEPkOu7fkPDNWJxLK
         m1kDAUE8dLTaEFIHtp/vZWBhPpLl6DuRKtkJowC5tnZQ4jn2eCuegeq7xNRdhCiKYr5b
         OzrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734969892; x=1735574692;
        h=mime-version:user-agent:content-transfer-encoding:date:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X0Zt72Yb92teNtf8IlK9jVC3ukur+MFkzq1X0VP8apY=;
        b=DtXW9KXqFOZMccs8+jCRIjjbuCed51mJTFo5CId95mgrFXDRNjK1lQKtncoaeaIKB5
         bI1l1RVfT6dunVd4XciqmVXk/ka+x/c9boxj6UByMr7crkYIe1QUvGrGtozwVyw46n4h
         i/YXQc/znrTueaIQRm1LQxvbOtRU9bBl/+RBbPflOw8KleUVNQ1hWARggzE0YOmIGzLA
         YhmnhfG1LPGvUislOxu0uuDoRJ2wCltCujgfYnMGwDSM+3sZ+dokuUFIiCGBKV2rJ6cF
         5B6Ofze2U/IVk5uOebSonEA0GZVyblnjDl1LnaRtZZ0/h5ThcA7c3uc2qZEBtpetBSl8
         ifkg==
X-Gm-Message-State: AOJu0Yywdqiqdnme4EYbboIoGHLvLBXv4H2AnmT5NenpJlJm1lGdReoA
	/Gy5sbDNZsm/UWsJNdLH5eOybWx4B1F42jelBMaDDrccw5yUm+I2QGUQTb/FgUpnjIb76qZio1R
	z5tA=
X-Gm-Gg: ASbGncvSM0WVgglM8IRslxS5tCNNIVh9WsSVZbNkRK2m4C2ZLZsRGOGJForhssK0k4k
	7SzwYcGmdcgsYhi+ebXGltYDOh11ApfmxkJlsLNmw5RCQ41WMyfAvr1EUUo8RT3qCvXOQ4TsDc0
	go1NHQGbK3o+rdr5k6IalqCzDb8rianeFRD6cXdOAMmoy/2INIJqoOHUrdtldgyNmtk8Lfv6KS8
	omHvgjbm4JhX2KPZlEvImCqD+NEa65LdeEur/Pu4ERK4xl6e26SAFCq4d2DreYH6sYBaA==
X-Google-Smtp-Source: AGHT+IGogXeR1cHMe91aGd8Hi1Em6E4yCTrKD5BWBddkgGo2KKyBc//cPQNtEnKnVgF8eabe4mjxyQ==
X-Received: by 2002:ad4:5948:0:b0:6d8:9e64:c9d3 with SMTP id 6a1803df08f44-6dd23397295mr209400766d6.30.1734969891561;
        Mon, 23 Dec 2024 08:04:51 -0800 (PST)
Received: from [192.168.4.114] ([32.221.58.186])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6dd1810d4ecsm44636416d6.31.2024.12.23.08.04.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Dec 2024 08:04:51 -0800 (PST)
Message-ID: <3f497fbd6441b7245af3b579d9e7c9e7a1a40f5f.camel@epc-instore.com>
Subject: How can I handle multiple native recipes installing the same files
 when trying to build the extensible sdk?
From: bbergquist@epc-instore.com
To: yocto@lists.yoctoproject.org
Date: Mon, 23 Dec 2024 11:04:50 -0500
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu2 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Dec 2024 16:04:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64479

I am using Kirkstone and unfortunately I have some things that need
python 2.7 and some that need 3.x.  I have my build working fine but
when I try to build the ESDK, there is an error indicating that python-
docutils-native and python3-docutils-native install some of their
scripts into ${D}${STAGING_DIR_NATIVE}/usr/bin which happen to have the
same name.

What is the best way of handling this?


Thanks in advance for any guidance or suggestions!

Brett Bergquist

