Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web12.6527.1594081867379000058
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Jul 2020 17:31:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=D1Pnd1Xi;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.42, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f42.google.com with SMTP id l6so14410294pjq.1
        for <yocto@lists.yoctoproject.org>; Mon, 06 Jul 2020 17:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id;
        bh=rX9ph63bin7jEw8CbjqYoBJjvvdHwqscE9OIKhH8Upo=;
        b=D1Pnd1XionoQ7SUOfON3b32QleJyMS6GhsS7rAb2R6RHI+ulTZytxDZK/smwcj8VO5
         acTuP06o7wijio3perJ20GRCYcBEIieFstIm1bK9+6smmEYcwnFAmNvw389pkH9Zjjcj
         AnpUsslYPqtec411Af+BarczgxuAGFJYKcZBvETpn0vUQsB738QCvOkUmsQ6uo6sZurr
         MV3gf0EYEuF/WAkHYXRETdHVhZCSX3dXFflezT+lOLQU2gYVNie+9bbAsVfmjhAdPOXv
         2RJckg6NMSonvpvYJ+zYgxyraXr+SiBcU+LjNTZ300AhwDqmEHmTuQpaehMxO0KDi8c4
         cJUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=rX9ph63bin7jEw8CbjqYoBJjvvdHwqscE9OIKhH8Upo=;
        b=GfEGpOKn2u0jakLt9bvaKyBOkcI+SwTx9JVzgMK3hGd76xvaoRk6KQct1YPe2xQI/K
         K7BSxcjEw6JIAXrjdN+zjbwOsSMZATXztljWzXQvT2JtQUti5EX8h5Yb1NKi23hY4YA3
         /GajF9HWDWQW9wHORBVtaAClAe09GsiNBJwpRD6LiLhhDs9/fWDrEvMPEmZRO6ft4Mue
         DlIUT1jrRxnwZ4cmme/CQc9iBnP2R6lpAEcQh+ry0gJPpZJ4z3C7OMV+6BrY0JVnECLL
         hZokPrX1K6+6A+JcqwGZZx1cC8i+OsjNZ+KRFOiVlAFvHOvHyIo/9nRB3ylmZpN+Gpef
         TNtg==
X-Gm-Message-State: AOAM533sxXU5kCVe/N+y+hMaUacqObfHKafFQvTu+zN6T0VOQGHfTCiJ
	Jlo3FYrBpmVrk6xpAT35wuS17Trb9zKlhg==
X-Google-Smtp-Source: ABdhPJxk2ZOJtDSeZ+2Si12cVD/ScJtZ7jilOWcHFWBch1xjPvu/dv2nKsxLQipPrvzE5D6w84nJ8w==
X-Received: by 2002:a17:902:bd08:: with SMTP id p8mr33738019pls.154.1594081866202;
        Mon, 06 Jul 2020 17:31:06 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id a17sm543121pjh.31.2020.07.06.17.31.04
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2020 17:31:05 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 0/6] Pull request (cover letter only)
Date: Mon,  6 Jul 2020 14:30:52 -1000
Message-Id: <cover.1594081794.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1

The following changes since commit 2e8b103c4fb3b6aa07c271e716d057d71b7fa543:

  config.json: add steve@sakoman.com to QA email list (2020-06-10 18:23:06 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/yocto-autobuilder-helper contrib/sakoman
  http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder-helper/log/?h=contrib/sakoman

Richard Purdie (3):
  config.json: Ensure trigger-build and trigger-build-posttrigger match
    layer setup
  config.json: Use buildtools from 3.2 M1 to fix bugs in openssl
    reporting
  scripts/publish-artefacts: Convert md5sum to sha256sum

Ross Burton (1):
  config.json: generate the buildtools tarballs for aarch64

Tummalapalli, Vineela (1):
  publish-artefacts: Improve sha256 checksum handling

Vineela (1):
  scripts/utils.py: Convert md5sum to sha256sum for layer tarballs

 config.json               |  5 ++-
 scripts/publish-artefacts | 94 ++++++++++++++++++++-------------------
 scripts/utils.py          |  2 +-
 3 files changed, 53 insertions(+), 48 deletions(-)

-- 
2.17.1

