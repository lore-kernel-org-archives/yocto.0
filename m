Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AA66D5E38A
	for <webhook@archiver.kernel.org>; Sat,  9 Nov 2024 23:37:39 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web11.27545.1731195453687199891
 for <yocto@lists.yoctoproject.org>;
 Sat, 09 Nov 2024 15:37:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=e/7r/IkV;
 spf=softfail (domain: sakoman.com, ip: 209.85.219.171, mailfrom: steve@sakoman.com)
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-e291f1d659aso3190146276.3
        for <yocto@lists.yoctoproject.org>; Sat, 09 Nov 2024 15:37:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1731195453; x=1731800253; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5SemG+5Xwavn0beIJN9a7tSo0laQGfetBx8Jdeb6qcM=;
        b=e/7r/IkVM90wydT2TZH4UtpToauMjCwuqGLy2VxMY17NoUO2dqJ8vjOXJly1Z+J81e
         /eo0XA0pf0qV69X7YwR3UjSlrU9BmgpfWjKGjw+CgAvmG6z58RbfqmlMS0wt9A3b7Ujs
         +VNEOs+E09jBztDNMoafXwyzVSf9PBkfxPfaHsEe2X11jIoBEpluKrKliGkGpnfih3Vw
         WgyWXJc3fkeD8nM+NzEnPwL7pudQ+kU6TpGruT+odFxV9DcsGa9RlRWAAgqimqmGbneX
         jL4QtSDAh8iVxRmkY1MtfIRP7hTJZ3nL/azd+VMCss37B7fXpkJuTYcNsEI4JhQHvHL0
         5kDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731195453; x=1731800253;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5SemG+5Xwavn0beIJN9a7tSo0laQGfetBx8Jdeb6qcM=;
        b=Wz+K1ynwKSUb6Ylu82bqs2cay2nEkmI6OSSm9kwh/8nTHSmii1qWozXqQnpWr3p/o6
         quwpK2rmlqfMxaG4Zwl3zKpEw/MpCJkukoxR5iRFMTF08R8Li5KVdQCo7A91JeHjvOP2
         1tmsNuJiBzW17KcB3tB35IQa41o6dC6zDNaiMgF5ghsEal2vmfzYpAYTuEc04uXI9r6z
         fpCAI7Qdpom0cNrfze5zJouZSqLVwHJGDZw35lr278HEr9iBfWiy23pD2siafWfQh3Mx
         ShZJcrhDJ3CP23GrWDFLslyjoUYGCi/y+KdkzeUrKxF5w6NVmlyw4A9Nlp2HYeUm/45R
         ex3w==
X-Gm-Message-State: AOJu0YwhMAxH2iNdjUaOQRRLkzWLojYBUOmSzzfBbRyU0ntzAlwbFOeA
	7KKgTqwP6NjeXvViGRwi4DHjIuysQz0dtu9/nec+VvhyX2CwCqDkkbsGT6wDHroF+UTWdUlDRV5
	92ZNifkyG2pWZCFs8SQ/9JWfmQNi/1dY8DHFF0Ugmy0E8Hhyd8Ec=
X-Google-Smtp-Source: AGHT+IGf9rNLlP2+H42xpMx5Dp0OWMhIH3To9mF5ZtdCHSb2dx3rCbXE5oeGAnpx+YwLOP2/ic2EkY1V6+6OmGtwfHM=
X-Received: by 2002:a05:6902:b14:b0:e20:16b9:ad68 with SMTP id
 3f1490d57ef6-e337f8e44bbmr6297244276.45.1731195452714; Sat, 09 Nov 2024
 15:37:32 -0800 (PST)
MIME-Version: 1.0
From: Steve Sakoman <steve@sakoman.com>
Date: Sat, 9 Nov 2024 15:37:22 -0800
Message-ID: <CAOSpxdb36OYVZ=GYOAoXbEodDSgWfPHJjnJfA+DJR-jJWE-67w@mail.gmail.com>
Subject: QA notification for completed autobuilder build (yocto-5.0.5.rc1)
To: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 09 Nov 2024 23:37:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64241

A build flagged for QA (yocto-5.0.5.rc1) was completed on the
autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.0.5.rc1


Build URL: https://valkyrie.yoctoproject.org/#/builders/29/builds/414

Build hash information:

bitbake: 377eba2361850adfb8ce7e761ef9c76be287f88c
meta-agl: 9662ef604cd0c10336c2eb20e57d88627ec30811
meta-arm: 7088279c0ab00c7dabefdd4544951b4746b48476
meta-aws: 671382ea83e2db038be50d628b689c64605d8be8
meta-clang: 9fbfa9db33131abdf3870a94f00199eb53e276e5
meta-intel: db4f44628642244c9880771d29fe0ce6531a406f
meta-mingw: acbba477893ef87388effc4679b7f40ee49fc852
meta-openembedded: 2e3126c9c16bb3df0560f6b3896d01539a3bfad7
meta-virtualization: ee27999aa1e0f863f140d079c2659ea15c895cd5
oecore: a051a066da2874b95680d0353dfa18c1d56b2670
poky: dce4163d42f7036ea216b52b9135968d51bec4c1



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org

