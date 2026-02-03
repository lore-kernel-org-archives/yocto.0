Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20CDCE83070
	for <webhook@archiver.kernel.org>; Tue,  3 Feb 2026 09:29:24 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.12843.1770110959597153339
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Feb 2026 01:29:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=suNddeuD;
 spf=pass (domain: smile.fr, ip: 209.85.221.41, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-43596062728so319730f8f.1
        for <yocto@lists.yoctoproject.org>; Tue, 03 Feb 2026 01:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1770110958; x=1770715758; darn=lists.yoctoproject.org;
        h=to:cc:from:subject:message-id:date:content-transfer-encoding
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sePFLlSMIPP5z/McgmoSG+wmEMKg4iIiCeKYLduJNGc=;
        b=suNddeuDbU2TDbQEWmriKDWFFvfQZvSBr2Mn9tfzqsC7oJsoo6y1GNiyZE9V7MG9KR
         0LrcMDIib0OE4Tm+NE4tf/oW91LYVEJcta8R8IIH240XQs/oijfvWAYXI7dzXo2on9fy
         kFJZOf3i/JfTmHRe4sHfOtX71i8hJ5EEH8tCc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770110958; x=1770715758;
        h=to:cc:from:subject:message-id:date:content-transfer-encoding
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sePFLlSMIPP5z/McgmoSG+wmEMKg4iIiCeKYLduJNGc=;
        b=F4Euv2VLRNZPH1iniF6sfhTst9BU3p/zRUaPA2LBomVcNfeukv4YaRg+nlm7OaNNz/
         xgEbWizztqq1SB5f7Gv7S4Kh7m/LxmhhWsdWTc4Qyy4ueV7sSLvglOfauiT4z1igyYXL
         e18TeTXO2ms8+ypDjuoyE0QJNTg4phJm+1J8kIMsFscfe56g6yDLzSsyI17S5GbPU6Xg
         hxJCw1E+3GLm09zWJHhTqbc0c7voyTD/tfqyZAPKsRK2JfnsXs6Tr94L1uuevXV5u135
         T9xJWr7slWN1K5Q/xi5CKq5YbuU5/Dv83PGyK6wYGuSAVQg+j2k9hzmWKY/VU3KS1K6h
         p/MQ==
X-Gm-Message-State: AOJu0Ywg0I7G7F4AIJxabXyPGWkzqCkPBPVP3FLG+u8VfdIGtVk405vu
	GIbZ5Ev1B35nY6IVY5dezNIEiyPuevv8BqBdAcPWj8NeW7AcAl7H+AgO+uhmTTdmrWU=
X-Gm-Gg: AZuq6aJqSB9jfHSzzqq3fGpm4q0lA7Z4UiIPZceA3ScZQBz8G8cHzz+fExIzofGnfGq
	krayJf6CHFqNmsRH8Af8MQVbbRk32JnInO4KH1ell1H/9nr+mIG/BpMKw8ck1MmKdkQuZ2TH0Ym
	xmXplz1pO27ZwNDwv/aGdZsKe4R/Mz9iPJdLbVMzWsJV8Jbo+fZcehGNqbAz8ytBurLlyvH1KnC
	eTTFTDYO9Iqckrw/ukbP5izTJnifeRSNPNSwceT+rezDcEnAO+fozzfHX6BWdAh9cSjwZANy6WV
	/4Kqu6HEQbTcXI/M34eMgBvIwBAqI6NSQjaNDuE+tX/7XNxGBbGWGGiXmt/EYhG4HHI5//9GYvK
	qlzl65HHHuje2FDFr3V1UhTgbSABPlxf5gDOoxGkjVnMVUSQ2fYRL0PN/NAFsKWeIY0XgEe19Ma
	sLaPDJ/PX+CvQIXRFXXTqszjdZvdQLWf4q67DvPT8fZfA1sP5IllBhwECPOKfGZ8dc7MpbNyW6z
	vDveJueMlrn5Q==
X-Received: by 2002:a05:6000:1862:b0:431:66a:cbda with SMTP id ffacd0b85a97d-436112d9017mr4301908f8f.0.1770110957887;
        Tue, 03 Feb 2026 01:29:17 -0800 (PST)
Received: from localhost (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e131cefdsm51555928f8f.23.2026.02.03.01.29.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 01:29:17 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 03 Feb 2026 10:29:17 +0100
Message-Id: <DG57YRQ7R76H.1FVPAEO7JT8Y6@smile.fr>
Subject: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails on
 master
From: "Yoann Congal" <yoann.congal@smile.fr>
Cc: "Yocto ML" <yocto@lists.yoctoproject.org>
To: "Yogesh Tyagi" <yogesh.tyagi@intel.com>
X-Mailer: aerc 0.20.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Feb 2026 09:29:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66209

Hello,

meta-intel/master seems currently broken: intel-media-driver_26.1.0.bb:do_c=
ompile fails with:
ninja: fatal: posix_spawn: Argument list too long

This happens on master and also on whinlatter.

We can see this on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41
* master: https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41/buil=
ds/2967
* whinlatter: https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41/=
builds/2966

Regards,

--=20
Yoann Congal

