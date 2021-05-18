Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web12.7757.1621340986303031644
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 May 2021 05:29:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BeTAsVsx;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: zmuda.w@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 131so11327476ljj.3
        for <yocto@lists.yoctoproject.org>; Tue, 18 May 2021 05:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=13/9VWtmXN+lgJhKHtGaPlHJt2s7sczCHNUgHSL0PjQ=;
        b=BeTAsVsxKxdlrgIKYWkx8I+eDZUli/zoPbV2Hv7TRtb8tagxH/qU98iwQ4TGQKruzk
         8/McOpk1JL/0cxmhZaOo6W27PKm0DuLY61TGSN5anqDkF0ElCWI69jTbi58BoSQ+3YdM
         +mvZHV/AdFOkJpneJz0Ue1NHuxZ4cN17CEVr1f0s1bEEk2IUb41s0id8D/JPhqYPoKzp
         JSA3f7Q4cwnRBoWgXqfo2SfV6/KmRYaAVkBnqJJCfHJmRvCZa1C/WvShZbL4TfQC3+8e
         ZYpc4rRXLZl/07sno6Jyw/QHynYVW4GyfCPtHdoNz5qR9g94p2yZiLftPonpkxLtmvfT
         CWsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=13/9VWtmXN+lgJhKHtGaPlHJt2s7sczCHNUgHSL0PjQ=;
        b=Vj97bVt03x5dYxmz3gYLy+1n6xOFnefAF6FfG8rz6IgpkGCRYywZRoSk+8Te5o7xCK
         SxJ454X2vjavcTdsFI3enNfA+UvLwiEgWnCbIOEsdsAOK0S/XG1/v3AaBrII+8Ee82VN
         oZL1YuKWnE34radzOmektyndsNqHJcN6cwJbykA+GYSEjMyapN3feckOdq/20lQ2s7CW
         n2ryyr243laPzL3cmUEegI1czPTnR2qM86NWoJ5EQPKYmyPPH6WfgDOFKEdREaZy+6BO
         lmJTqonNZrlcWxRb+lcNb8qLqoHZbJv21lebFEloScf9HaUclmwDxWo4YKojDWJTstne
         nhSg==
X-Gm-Message-State: AOAM533ehlF6+0CGwx/vRNm2Cak/iHRvidB2avj/Lrn3DjxOiljh758u
	rHnC6RgR6YjlkYApxGA9LeAeNIYcYkkksg==
X-Google-Smtp-Source: ABdhPJyiVNTIOaeov27Hq1t0LvaPwdOsORKFqLEvZDEE1PkxaddepeZYiWwO98HGGE6+sY7YIuOn7w==
X-Received: by 2002:a2e:9b51:: with SMTP id o17mr3838852ljj.320.1621340984179;
        Tue, 18 May 2021 05:29:44 -0700 (PDT)
Return-Path: <zmuda.w@gmail.com>
Received: from p1.lab ([2a02:a319:8239:4400:4a1:dc07:cf12:9f1f])
        by smtp.gmail.com with ESMTPSA id h13sm3203964lji.102.2021.05.18.05.29.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 05:29:43 -0700 (PDT)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH 0/2] Update Zephyr version to 2.6.0-rc1
Date: Tue, 18 May 2021 14:29:25 +0200
Message-Id: <20210518122927.2554655-1-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

2.6.0-rc1 has been released 9 days ago and contains a vast number
of improvements. Release notes available here:
  https://github.com/zephyrproject-rtos/zephyr/releases/tag/v2.6.0-rc1

I'm sending this patch set on behalf of the original author
Zbigniew Bodek <zbigniew.bodek@huawei.com>

Zbigniew Bodek (2):
  zephyr-kernel-src-2.6.0-rc1.inc: Add support for zephyr kernel version
    2.6.0-rc1
  zephyr-kernel-src.inc: set default preferred version to 2.6.0-rc1

 .../zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc      | 10 ++++++++++
 recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc     |  2 +-
 2 files changed, 11 insertions(+), 1 deletion(-)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc

-- 
2.25.1

