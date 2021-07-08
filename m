Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
 by mx.groups.io with SMTP id smtpd.web11.5603.1625704239135119304
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jul 2021 17:30:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=TZrUIpyU;
 spf=softfail (domain: sakoman.com, ip: 209.85.167.177, mailfrom: steve@sakoman.com)
Received: by mail-oi1-f177.google.com with SMTP id t3so5697741oic.5
        for <yocto@lists.yoctoproject.org>; Wed, 07 Jul 2021 17:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dbBJsSQUfnGhGit8gG4uLYbOjWwOk5WThj3XU95NCmM=;
        b=TZrUIpyUCm777V+mYcrOXhmmIbyEx+mVR7p/yqlL/C2SCkpV8cygovC6yBQwUlE+NN
         qrnUBg5smtVMNrMvytmS0sKT51BNitHtooeSpy/ILWQAUtF0B02ElJXvnSu9DuDg4+HU
         U17MuK2u4poa5lwVnv8YM+8Nrke92f1kXOLuDRXLAXE+Ic8RJ1dQN/GdzjR2Rvc4R1Mf
         fWGOkLqpT+i0bMyO/YX8x8G08WUNRw7gPc3i4oJxn2LPFd7WKhn9SGBXNq6sNx7ViLq8
         qV5VkVRF6ZZp3LDdx2E8gYB0zc+wZTDlI3Ul4l5TZT3We1bGNYtVAdqk+xp1zEfE6r3h
         f55w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dbBJsSQUfnGhGit8gG4uLYbOjWwOk5WThj3XU95NCmM=;
        b=ceR7pNwwbB0W/C3vHRqNBmycv6RZfoxY4wpd3Rvqar+BOEkqrnL+5cbRjVl7Uyg9DY
         N4vDyjXHv26ensoTVcR8BltTcjAPm8OEuQq83fPYQkTnN4FX7mh2+xavkYNsuoOoJyWR
         43+m8Knplf1FQaXRKteQDCpd1MJv7fMNXuSgbPNoEl4JdxEg9XQnj36kpJvWNPsuNLjR
         f2W9ZnoKFBpUt45A8YuOXLjMhourpzz6dSGKnGfQuauRfSJEZx+SP/6hDucNzeNxOJ7/
         aoA0G2z0P5/KrWaKTu/sAG9oKxA5B4oZpBfd9KkhqucnWh5byXhN/hkV52xzKF8g/wEC
         aWSg==
X-Gm-Message-State: AOAM5317sSKBTJVLooAYS3HvcI05rCRVCg4McdmYHsYvoVENMVPoivpb
	3Eq5OXMd4TY5d+PU15iIVquXxJsrMieR/Uwu
X-Google-Smtp-Source: ABdhPJz41FzHjD1xwYJAdoa90yzd6IDYkwOWHgyrpNKgqfYSbNS2j59/all8wsVg6PldsP53/EZ7kg==
X-Received: by 2002:aca:ac56:: with SMTP id v83mr16682130oie.178.1625704237996;
        Wed, 07 Jul 2021 17:30:37 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com ([172.243.4.16])
        by smtp.gmail.com with ESMTPSA id t5sm163106otk.39.2021.07.07.17.30.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jul 2021 17:30:37 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 0/1] Pull request (cover letter only)
Date: Wed,  7 Jul 2021 14:28:15 -1000
Message-Id: <cover.1625703934.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following changes since commit 1e5c23dea6d989f0e5c30ebac2c95a17e78ffdf9:

  config.json: Add check-layer-nightly with only meta-intel at this point (2021-06-02 12:33:34 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/yocto-autobuilder-helper contrib/sakoman
  http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder-helper/log/?h=contrib/sakoman

Richard Purdie (1):
  config.json: Switch to newer buildtools-extended-tarball

 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.25.1

