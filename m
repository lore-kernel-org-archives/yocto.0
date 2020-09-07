Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web10.6457.1599511837831574212
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:50:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gjwW7+eD;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id o5so16913181wrn.13
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NXHywDTm1NHJRFv+3ofw+1NHLda4G4tDMEafSP/y84Q=;
        b=gjwW7+eDWEDKPgaR+8KffpOxcy+aS/QdVn5UQhKVWr4Dlh+ED/KJ05hkikXcN5pWAi
         SIFqE8/GnM+zHAbGHE0IOJH7lScKTSxCy/jn+g8VaIII8K77/My03RoLbyCp6MAKzKu6
         prxAZMXVcCm5FHKP3Ur1U+H4TRHG+Fb/W86ys=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NXHywDTm1NHJRFv+3ofw+1NHLda4G4tDMEafSP/y84Q=;
        b=ivWSOmQxErMul1R9ZA2raAmmiX/1Y0h4hhd4xqPmeDGZ1jf4yfWSxWGonsZMEujZYj
         NIxDEyVzwybGNyaotiBijiT+WCF7X4Ee2IscjcLy0ZFdeSQi4XE3FDQzdJ9D+XHlpmrm
         1Xx2xaCW8wv+33fmMSYwsDMDMXr0qGPcy22OOZmlq40ziKirGwadS8vTlCAkyF9JH2I+
         cPaGgmlDNW86Z/SB/XTczkxkkYfjvY953D+3RyYU2IM4cprSYPgWqLKfWq8HAaCOTPK4
         qqtCRv31mfZCDOV22tMtziVDTAYFDUArdXZGG/4f+/sDEisofA0u/xuwHH5IbtmX9YW/
         VGkA==
X-Gm-Message-State: AOAM530bfCNQewCRAsSsSMVOV2CR3kVRhPUNXzyMTkTwheFU9eSHk2ry
	+JdntoFPDckQ8uh8tFKdJ9J9Gli9sms13A==
X-Google-Smtp-Source: ABdhPJymPaHtdiPQXhuZqRxHFI1xD0ftZFffPr8rqOM4hNgWo2PS+6MPmU5qN6IRLPefNvLoHWynWw==
X-Received: by 2002:a5d:44cc:: with SMTP id z12mr14806237wrr.189.1599511835873;
        Mon, 07 Sep 2020 13:50:35 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:35 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 00/32] Update zeus to match master/dunfell
Date: Mon,  7 Sep 2020 21:50:02 +0100
Message-Id: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The helper code for zeus is way behind master/dunfell and is becomming 
unmaintainable. This series brings it much more closely into line
with the other codebases, adding many fixes and the buildtools tarball
capabilities.

Michael Halstead (1):
  scripts/send-qa-email: Update to dedicated push capable domain

Richard Purdie (27):
  run-config: Preface log output with auto.conf settings to aid
    debugging
  run-config: Add support for wrapping builds in a buildtools tarball
  config.json: Enable buildtools for centos7 workers (as a test for now)
  config.json: Disable buildtools tarball on centos7 as its missing
    crypt.h
  scripts/run-config: Fix buildtools path
  send-qa-email: Limit results clone to shallow depth to avoid timeouts
  scripts/run-config: Handle multiple builds racing with lockfile for
    buildtools
  scripts/run-config: Handle quoting issues in buildtools environment
    files
  scripts/run-config: Add support for local filesystem buildtools urls
  scripts/run-config: Ensure racing for the lockfile doesn't traceback
  run-config: Fix lockfile loop handling
  config.json: Update to 3.1M3 for buildtools tarball and apply to
    centos7/debian8
  config.json: Apply buildtools tarball to centos7 perf worker too
  scripts/run-config: Add extra debug about buildtools to show when
    active
  scripts/run-config: Share buildtools setup code with
    shared-repo-unpack
  config.json: Use new buildtools tarball
  config.json: Update to new buildtools tarball
  config.json: ltp QB_MEM parameter was being lost, fix this
  config.json: Use buildtools from 3.2 M1 to fix bugs in openssl
    reporting
  scripts/publish-artefacts: Convert md5sum to sha256sum
  build-perf/send-qa-email: Fallback to master as a comparision branch
  send-qa-email: Fix stable branch test result history issues
  config.json: Update buildtools config
  config.json: Build buildtools-extended-tarball for x86_64 and aarch64
  scripts/utils: Add more logging for fetchgitrepo
  scripts/utils: Ensuring new logging is flushed from buffers
  scripts/utils: Ensure buildtools tarball hash matches any supplied
    value

Steve Sakoman (2):
  scripts/utils.py: Fix confusing naming of getcomparisonbranch() return
    value
  scripts/send-qa-email: fix bug in git push logic for yocto-testresults

Tummalapalli, Vineela (1):
  publish-artefacts: Improve sha256 checksum handling

Vineela (1):
  scripts/utils.py: Convert md5sum to sha256sum for layer tarballs

 config.json                     | 19 +++++--
 scripts/build-perf-test-wrapper |  3 ++
 scripts/publish-artefacts       | 94 +++++++++++++++++----------------
 scripts/run-config              | 10 ++++
 scripts/send-qa-email           | 18 +++++--
 scripts/shared-repo-unpack      |  2 +
 scripts/utils.py                | 94 +++++++++++++++++++++++++++++++--
 7 files changed, 185 insertions(+), 55 deletions(-)

-- 
2.25.1

