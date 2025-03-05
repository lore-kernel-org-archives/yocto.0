Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41E73C282E5
	for <webhook@archiver.kernel.org>; Wed,  5 Mar 2025 14:38:44 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.14480.1741185516815881754
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Mar 2025 06:38:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WsSQt90g;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-390f69e71c8so662881f8f.0
        for <yocto@lists.yoctoproject.org>; Wed, 05 Mar 2025 06:38:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1741185514; x=1741790314; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=p1CTmvU9SydFZ04nvTL3sVHzP0KeFOtaLHp/dN/Ha48=;
        b=WsSQt90gMvrYAYXW7NrmY0mjpgjp5njW/4uc3sYMObGbLODzonAWiXtk+D6rLtdXtX
         0mKptHQBLGdbInou+7kDbS/yp02di8r1gs4W9gJJT31E42va8pn+/EN3oE5LPUvkroxT
         qgjzkJToTPPb3uobBfxwIz8Q28NmUTT65U5x8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741185514; x=1741790314;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p1CTmvU9SydFZ04nvTL3sVHzP0KeFOtaLHp/dN/Ha48=;
        b=vZAS8++6T1HW2qsTcDsTs1LchjxANHlBpMpux8smdUM5uB/x3wtX9gkHqgFpbdGYMs
         HjSk3mxMmKPqhvsn3Ew/HGnZDiZ+VPkHtv53HvBB4bhUQrvdZCFsekeg/h4ArkblZWba
         hWHQtG9aJC7RdXG4p8APs4E4X5Alg+basaE3dSPfAf6xix3JNZ2FXfr0Uf77XXjpYwzD
         8WWazst9yfKF0PxKTWQsO6esCXgGBTQiG5TGzdxal5ukzDoIKaogRfjohM/tZ9TzXyU4
         sbkLLWahe4qWZ2/817kVza39LHjy86Jl4C15Z1Mi+AtAW9QQZfVDF/rHyVo9/aNssaOR
         /ihw==
X-Gm-Message-State: AOJu0Yw1j4xyG2J2WnF20AbXJyqMi1UBfWUiRbxP7UIG+1ACm0FgD9cI
	gU1e9c9Cd/PumhJY/Fs6kw4Eq3LFM9UB3nD4Vll1JF1FE3MjDDNewVf1qJ1tIA3oe8xj3u21XIM
	h
X-Gm-Gg: ASbGnctbuu1r6+Gq4BNyh047aehLLWyOnTJM2m9Yhe808eP55UbjxMo2rYynkn50oqE
	N/v3yk8yYFJLK9g5XgusUrYinmV6/5pDKGVaRP5qZZcKhtExGbpH0QjUZliTAVK9QMcxxqF0UTk
	wYHYCRpkcBxGpUdSD1EHWD+IDrVlsMlptBRhy1XgtyYPuCI00IOwsslxzzvqqzAW84up1GCnezj
	/gq8C6UexwyeT5FK/YNxIuhI1W+ejhG8K1aMR59bWF+BH3iwQMAH9qnEuo+ZgKjLa/1ByDtYu/k
	aHcGMaRMzYfWWgx0jviVwz4T6a4JUpzORF2g3S0rkpG3ST3jQGwtUy70CPTyVWkylSZjTVXJUQ=
	=
X-Google-Smtp-Source: AGHT+IECT5ZN+nwlj/NvKQ1YcNQxMx6zyImYVzDnTiHFoN17OD0rx3MBFAEDTFOuVFEPv0hqjPxriQ==
X-Received: by 2002:a05:6000:4591:b0:391:2884:9dfa with SMTP id ffacd0b85a97d-3912884ae19mr136914f8f.13.1741185514422;
        Wed, 05 Mar 2025 06:38:34 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:939e:c44d:2366:e8da])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47b7d69sm21656302f8f.60.2025.03.05.06.38.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Mar 2025 06:38:33 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] [PATCH 1/2] config: Drop distro specific reproducible targets
Date: Wed,  5 Mar 2025 14:38:31 +0000
Message-ID: <20250305143832.2119244-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Mar 2025 14:38:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64920

We don't use/need these any more.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.py | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/config.py b/config.py
index 87244b3d..429fa763 100644
--- a/config.py
+++ b/config.py
@@ -133,7 +133,6 @@ trigger_builders_wait_perf = ["buildperf-debian11", "buildperf-alma8"]
 
 # Builders which are individually triggered
 builders_others = [
-    "reproducible-ubuntu", "reproducible-debian", "reproducible-fedora", "reproducible-centos",
     "meta-oe", "meta-virt", "meta-clang", "meta-exein",
     "bringup", "bringup-fast", "buildtools-docs",
     "qemuarm-armhost",
@@ -221,11 +220,6 @@ builder_to_workers = {
     "oe-selftest-opensuse": workers_opensuse,
     "oe-selftest-centos": workers_centos,
     "oe-selftest-armhost": workers_arm,
-    "reproducible-ubuntu": workers_ubuntu,
-    "reproducible-debian": workers_debian,
-    "reproducible-fedora": workers_fedora,
-    "reproducible-opensuse": workers_opensuse,
-    "reproducible-centos": workers_centos,
     "meta-mingw": workers_wine,
     "buildperf-debian11": ["perf-debian12-vk"],
     "buildperf-alma8": ["perf-alma8-vk"],

